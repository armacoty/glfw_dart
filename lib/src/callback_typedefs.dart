import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'structures.dart';

typedef GLFWglproc = Void Function();
typedef GLFWerrorfun = Void Function(Int32, Pointer<Utf8>);
typedef GLFWwindowposfun = Void Function(Pointer<GLFWwindow>, Int32, Int32);
typedef GLFWwindowsizefun = Void Function(Pointer<GLFWwindow>, Int32, Int32);
typedef GLFWwindowclosefun = Void Function(Pointer<GLFWwindow>);
typedef GLFWwindowrefreshfun = Void Function(Pointer<GLFWwindow>);
typedef GLFWwindowfocusfun = Void Function(Pointer<GLFWwindow>, Int32);
typedef GLFWwindowiconifyfun = Void Function(Pointer<GLFWwindow>, Int32);
typedef GLFWframebuffersizefun = Void Function(
    Pointer<GLFWwindow>, Int32, Int32);
typedef GLFWmousebuttonfun = Void Function(
    Pointer<GLFWwindow>, Int32, Int32, Int32);
typedef GLFWcursorposfun = Void Function(Pointer<GLFWwindow>, Double, Double);
typedef GLFWcursorenterfun = Void Function(Pointer<GLFWwindow>, Int32);
typedef GLFWscrollfun = Void Function(Pointer<GLFWwindow>, Double);
typedef GLFWkeyfun = Void Function(
    Pointer<GLFWwindow>, Int32, Int32, Int32, Int32);
typedef GLFWcharfun = Void Function(Pointer<GLFWwindow>, Uint32);
typedef GLFWcharmodsfun = Void Function(Pointer<GLFWwindow>, Uint32, Int32);
typedef GLFWdropfun = Void Function(Pointer<GLFWwindow>, Int32, Pointer<Utf8>);
typedef GLFWmonitorfun = Void Function(Pointer<GLFWwindow>, Int32);
typedef GLFWjoystickfun = Void Function(Int32, Int32);
