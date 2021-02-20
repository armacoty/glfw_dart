import 'dart:ffi';

class GLFWmonitor extends Opaque {}

class GLFWwindow extends Opaque {}

class GLFWcursor extends Opaque {}

class GLFWvidmode extends Struct {
  @Int32()
  external int width;
  @Int32()
  external int height;
  @Int32()
  external int redBits;
  @Int32()
  external int greenBits;
  @Int32()
  external int blueBits;
  @Int32()
  external int refreshRate;
}

class GLFWgammaramp extends Struct {
  external Pointer<Int16> red;
  external Pointer<Int16> green;
  external Pointer<Int16> blue;
  @Uint32()
  external int size;
}

class GLFWimage extends Struct {
  @Int32()
  external int width;
  @Int32()
  external int height;
  external Pointer<Uint8> pixels;
}

typedef GLFWvkproc = Void Function();
