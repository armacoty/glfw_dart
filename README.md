# GLFW Dart

[dart:ffi](https://dart.dev/guides/libraries/c-interop) bindings for [GLFW library](https://www.glfw.org/)

## Install

Add this to `pubspec.yaml`:

```
dependencies:
  glfw_dart:
    git: https://github.com/armacoty/glfw_dart.git
```

Import it:

```
import "package:glfw_dart/glfw3.dart";
```

__Notice #1: `.\glfw3.dll` or `/usr/lib/x86_64-linux-gnu/libglfw.so` will be automatically opened.__

For manual GLFW initialization:

```
import "package:glfw_dart/glfw3.dart";
//...
void main(){
  glfw = Glfw(
    customPath: "<path-to-glfw3.dll-file>"
  );
  //...
}
```

__Notice #2: It is recommended to specify the path to `glfw3.dll`:__

Example:
```
import "dart:io";
import "package:glfw_dart/glfw3.dart";
void main(){
  glfw = Glfw(customPath: Platform.isWindows ? "lib\\glfw3.dll" : null);
  //...
}
```

## Alternatives

* glfw by gitlab@ext [https://pub.dev/packages/glfw](https://pub.dev/packages/glfw) (gitlab: [https://gitlab.com/ext/dart-glfw](https://gitlab.com/ext/dart-glfw))
* google/dart-glfw [https://github.com/google/dart-glfw](https://github.com/google/dart-glfw)

## Need to do

* Vulkan support
* High level api (with streams, objects)

## See also

[gl_dart](https://github.com/armacoty/gl_dart)
