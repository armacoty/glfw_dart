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
    var version = Utf8.fromUtf8(glfw.getVersionString());
    expect(version, contains('3.2.1')); // Ubuntu bionic
    glfw.terminate();
  });
}
