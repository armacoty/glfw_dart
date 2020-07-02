# GLFW Dart

[dart:ffi](https://dart.dev/guides/libraries/c-interop) bindings for [GLFW library](https://www.glfw.org/)

## Install

Add this to `pubspec.yaml`:

```yaml
dependencies:
  glfw_dart: ^0.2.0
```

Import it:

```dart
import 'package:glfw_dart/glfw3.dart';
```

__Notice #1: `.\glfw3.dll` or `/usr/lib/x86_64-linux-gnu/libglfw.so` will be automatically opened.__

For manual GLFW initialization:

```dart
import 'package:glfw_dart/glfw_dart.dart';
//...
final Glfw glfw = Glfw(customPath: '<path-to-glfw3.dll-file>', vulkan: true);
//...
void main(){
  glfw.init();
  //...
}
```

__Notice #2: It is recommended to specify the path to `glfw3.dll`:__

```dart
glfw = Glfw(customPath: Platform.isWindows ? "lib\\glfw3.dll" : null);
```

__If `customPath` is `null` dynamic library will be automatically opened (see notice 1)__

## Alternatives

* glfw by gitlab@ext [https://pub.dev/packages/glfw](https://pub.dev/packages/glfw) (gitlab: [https://gitlab.com/ext/dart-glfw](https://gitlab.com/ext/dart-glfw))
* google/dart-glfw [https://github.com/google/dart-glfw](https://github.com/google/dart-glfw)

## Need to do

* High level api (with streams, objects)

## See also

[gl_dart](https://github.com/armacoty/gl_dart)
