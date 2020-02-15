import 'dart:async';
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:glfw_dart/glfw3.dart';

class JoystickButtonEvent {
  final int joystickId;
  final int button;
  const JoystickButtonEvent(this.joystickId, this.button);

  @override
  String toString() =>
      'JoystickButtonEvent(joystick: $joystickId, button: $button)';
}

class JoystickAxisEvent {
  final int joystickId;
  final int axis;
  final double value;
  const JoystickAxisEvent(this.joystickId, this.axis, this.value);

  @override
  String toString() =>
      'JoystickAxisEvent(joystick: $joystickId, axis: $axis, value: $value)';
}

class JoystickEvent {
  final String name;
  final int id;
  const JoystickEvent(this.id, this.name);

  @override
  String toString() => 'JoystickEvent(id: $id, name: $name)';
}

class Joystick {
  final int LAST = 15;

  final StreamController<JoystickButtonEvent> _buttonDownController =
      StreamController<JoystickButtonEvent>(sync: true);
  final StreamController<JoystickButtonEvent> _buttonUpController =
      StreamController<JoystickButtonEvent>(sync: true);
  final StreamController<JoystickEvent> _connectedController =
      StreamController<JoystickEvent>(sync: true);
  final StreamController<JoystickEvent> _disconnectedController =
      StreamController<JoystickEvent>(sync: true);
  final StreamController<JoystickAxisEvent> _axisMoveController =
      StreamController<JoystickAxisEvent>(sync: true);

  final List<List<bool>> _buttons = List<List<bool>>.filled(16, null);
  final List<List<double>> _axis = List<List<double>>.filled(16, null);
  final List<bool> _joysticks = List<bool>.filled(16, false);
  final List<String> _names = List<String>.filled(16, null);

  void eventsPolled() {
    for (int jid = 0; jid <= LAST; jid++) {
      bool connected = (glfw.joystickPresent(jid) == GLFW_TRUE);
      if (connected && !_joysticks[jid]) {
        _names[jid] = Utf8.fromUtf8(glfw.getJoystickName(jid));
        _connectedController.add(JoystickEvent(jid, _names[jid]));
        Pointer<Int32> count = allocate(count: sizeOf<Int32>());
        glfw.getJoystickButtons(jid, count);
        _buttons[jid] = List<bool>.filled(count.value, false);
        glfw.getJoystickAxes(jid, count);
        _axis[jid] = List<double>.filled(count.value, 0.0);
        free(count);
      } else if (!connected && _joysticks[jid]) {
        _disconnectedController.add(JoystickEvent(jid, _names[jid]));
        _names[jid] = null;
        _buttons[jid] = null;
        _axis[jid] = null;
      }
      _joysticks[jid] = connected;

      if (connected) {
        Pointer<Int32> count = allocate(count: sizeOf<Int32>());
        Pointer<Uint8> buttonsPtr = glfw.getJoystickButtons(jid, count);
        for (int i = 0; i < _buttons[jid].length; i++) {
          // Up
          if (_buttons[jid][i] &&
              (buttonsPtr.elementAt(i).value == GLFW_RELEASE)) {
            _buttonUpController.add(JoystickButtonEvent(jid, i));
          }
          // Down
          if (!_buttons[jid][i] &&
              (buttonsPtr.elementAt(i).value == GLFW_PRESS)) {
            _buttonDownController.add(JoystickButtonEvent(jid, i));
          }
          _buttons[jid][i] = (buttonsPtr.elementAt(i).value == GLFW_PRESS);
        }

        Pointer<Float> axisPtr = glfw.getJoystickAxes(jid, count);
        for (int i = 0; i < _axis[jid].length; i++) {
          double value = axisPtr.elementAt(i).value;
          _axisMoveController.add(JoystickAxisEvent(jid, i, value));
          _axis[jid][i] = value;
        }
        free(count);
      }
    }
  }

  Stream<JoystickButtonEvent> get onButtonUp => _buttonUpController.stream;
  Stream<JoystickButtonEvent> get onButtonDown => _buttonDownController.stream;
  Stream<JoystickEvent> get onConnect => _connectedController.stream;
  Stream<JoystickEvent> get onDisconnect => _disconnectedController.stream;
  Stream<JoystickAxisEvent> get onAxisMove => _axisMoveController.stream;

  bool isButtonPressed(int joystick, int button) {
    if (joystick < 0 || joystick > LAST) {
      throw InvalidJoystickIdException();
    }
    return _buttons[joystick][button];
  }

  int buttonsCount(int joystick) {
    if (joystick < 0 || joystick > LAST) {
      throw InvalidJoystickIdException();
    }
    return _buttons[joystick].length;
  }

  double axisPosition(int joystick, int axle) {
    if (joystick < 0 || joystick > LAST) {
      throw InvalidJoystickIdException();
    }
    return _axis[joystick][axle];
  }

  int axisCount(int joystick) {
    if (joystick < 0 || joystick > LAST) {
      throw InvalidJoystickIdException();
    }
    return _axis[joystick].length;
  }

  String getName(int joystick) {
    if (joystick < 0 || joystick > LAST) {
      throw InvalidJoystickIdException();
    }
    return _names[joystick];
  }
}

class InvalidJoystickIdException implements Exception {
  @override
  String toString() => 'Invalid joystick ID: ID must be a number from 0 to 15.';
}
