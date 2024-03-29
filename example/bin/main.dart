/*
From https://www.glfw.org/documentation.html
 */

import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'package:glfw_dart/glfw3.dart';
import 'package:gl_dart/gl.dart';

void main(List<String> args) {
  if (Platform.isWindows) glfw = Glfw(customPath: "third-party/glfw3.dll");

  /* Initialize the library */
  if (glfw.init() == GLFW_FALSE) exit(-1);

  /* Create a windowed mode window and its OpenGL context */
  var window =
      glfw.createWindow(600, 400, 'Window'.toNativeUtf8(), nullptr, nullptr);
  if (window == nullptr) {
    glfw.terminate();
    exit(-1);
  }

  /* Make the window's context current */
  glfw.makeContextCurrent(window);

  /* Loop until the user closes the window */
  while (glfw.windowShouldClose(window) == GLFW_FALSE) {
    /* Render here */
    gl.clear(GL_COLOR_BUFFER_BIT);

    /* Swap front and back buffers */
    glfw.swapBuffers(window);

    /* Poll for and process events */
    glfw.pollEvents();
  }

  glfw.terminate();
}
