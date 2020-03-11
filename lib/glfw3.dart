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

import 'src/functions.dart';

export 'src/callback_typedefs.dart';
export 'src/constants.dart';
export 'src/functions.dart';
export 'src/structures.dart';

/// Global object of a class of binders of a dynamic library GLFW3
///
/// Can be initialised manually. Example: `glfw = Glfw(customPath: "<path-to-glfw3-library-file>");`
Glfw glfw = Glfw();
