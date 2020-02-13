/// Bindings for glfw3 library
///
/// To use, import `package:glfw_dart/glfw3.dart`.
///
/// Docs for glfw: [glfw.org/docs/latest/](https://www.glfw.org/docs/latest/)
///
/// But it is worth considering the specifics of the FFI.
/// Docs for FFI:
/// * [api.dart.dev/stable/2.7.1/dart-ffi/dart-ffi-library.html](https://api.dart.dev/stable/2.7.1/dart-ffi/dart-ffi-library.html)
/// * [pub.dev/packages/ffi](https://pub.dev/packages/ffi)
library glfw3;

import 'src/bind/functions.dart';

export 'src/bind/callback_typedefs.dart';
export 'src/bind/constants.dart';
export 'src/bind/functions.dart';
export 'src/bind/structures.dart';

/// Global object of a class of binders of a dynamic library GLFW3
///
/// Can be initialised manually. Example: `glfw = Glfw(customPath: "<path-to-glfw3-library-file>");`
Glfw glfw = Glfw();
