import 'dart:ffi';

class GLFWmonitor extends Struct {}

class GLFWwindow extends Struct {}

class GLFWcursor extends Struct {}

class GLFWvidmode extends Struct {
  @Int32()
  int width;
  @Int32()
  int height;
  @Int32()
  int redBits;
  @Int32()
  int greenBits;
  @Int32()
  int blueBits;
  @Int32()
  int refreshRate;
}

class GLFWgammaramp extends Struct {
  Pointer<Int16> red;
  Pointer<Int16> green;
  Pointer<Int16> blue;
  @Uint32()
  int size;
}

class GLFWimage extends Struct {
  @Int32()
  int width;
  @Int32()
  int height;
  Pointer<Uint8> pixels;
}
