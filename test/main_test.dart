import 'package:ffi/ffi.dart';
import 'package:glfw_dart/glfw3.dart';
import 'package:test/test.dart';

void main() {
  test('glfw init', () {
    var code = glfw.init();
    expect(code, equals(GLFW_TRUE));
    if (code == GLFW_TRUE) glfw.terminate();
  });

  test('glfw version', () {
    glfw.init();
    var version = glfw.getVersionString().toDartString();
    expect(version, contains('3.2')); // Ubuntu bionic
    glfw.terminate();
  });
}
