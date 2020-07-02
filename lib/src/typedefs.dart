import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'structures.dart';
import 'callback_typedefs.dart';

typedef TglfwInit_Native = Int32 Function();
typedef TglfwInit_Func = int Function();
typedef TglfwTerminate_Native = Void Function();
typedef TglfwTerminate_Func = void Function();
typedef TglfwGetVersion_Native = Void Function(
    Pointer<Int32> major, Pointer<Int32> minor, Pointer<Int32> rev);
typedef TglfwGetVersion_Func = void Function(
    Pointer<Int32> major, Pointer<Int32> minor, Pointer<Int32> rev);
typedef TglfwGetVersionString_Native = Pointer<Utf8> Function();
typedef TglfwGetVersionString_Func = Pointer<Utf8> Function();
typedef TglfwSetErrorCallback_Native = Pointer<NativeFunction<GLFWerrorfun>>
    Function(Pointer<NativeFunction<GLFWerrorfun>> cbfun);
typedef TglfwSetErrorCallback_Func = Pointer<NativeFunction<GLFWerrorfun>>
    Function(Pointer<NativeFunction<GLFWerrorfun>> cbfun);
typedef TglfwGetMonitors_Native = Pointer<Pointer<GLFWmonitor>> Function(
    Pointer<Int32> count);
typedef TglfwGetMonitors_Func = Pointer<Pointer<GLFWmonitor>> Function(
    Pointer<Int32> count);
typedef TglfwGetPrimaryMonitor_Native = Pointer<GLFWmonitor> Function();
typedef TglfwGetPrimaryMonitor_Func = Pointer<GLFWmonitor> Function();
typedef TglfwGetMonitorPos_Native = Void Function(
    Pointer<GLFWmonitor> monitor, Pointer<Int32> xpos, Pointer<Int32> ypos);
typedef TglfwGetMonitorPos_Func = void Function(
    Pointer<GLFWmonitor> monitor, Pointer<Int32> xpos, Pointer<Int32> ypos);
typedef TglfwGetMonitorPhysicalSize_Native = Void Function(
    Pointer<GLFWmonitor> monitor,
    Pointer<Int32> widthMM,
    Pointer<Int32> heightMM);
typedef TglfwGetMonitorPhysicalSize_Func = void Function(
    Pointer<GLFWmonitor> monitor,
    Pointer<Int32> widthMM,
    Pointer<Int32> heightMM);
typedef TglfwGetMonitorName_Native = Pointer<Utf8> Function(
    Pointer<GLFWmonitor> monitor);
typedef TglfwGetMonitorName_Func = Pointer<Utf8> Function(
    Pointer<GLFWmonitor> monitor);
typedef TglfwSetMonitorCallback_Native = Pointer<NativeFunction<GLFWmonitorfun>>
    Function(Pointer<NativeFunction<GLFWmonitorfun>> cbfun);
typedef TglfwSetMonitorCallback_Func = Pointer<NativeFunction<GLFWmonitorfun>>
    Function(Pointer<NativeFunction<GLFWmonitorfun>> cbfun);
typedef TglfwGetVideoModes_Native = Pointer<GLFWvidmode> Function(
    Pointer<GLFWmonitor> monitor, Pointer<Int32> count);
typedef TglfwGetVideoModes_Func = Pointer<GLFWvidmode> Function(
    Pointer<GLFWmonitor> monitor, Pointer<Int32> count);
typedef TglfwGetVideoMode_Native = Pointer<GLFWvidmode> Function(
    Pointer<GLFWmonitor> monitor);
typedef TglfwGetVideoMode_Func = Pointer<GLFWvidmode> Function(
    Pointer<GLFWmonitor> monitor);
typedef TglfwSetGamma_Native = Void Function(
    Pointer<GLFWmonitor> monitor, Float gamma);
typedef TglfwSetGamma_Func = void Function(
    Pointer<GLFWmonitor> monitor, double gamma);
typedef TglfwGetGammaRamp_Native = Pointer<GLFWgammaramp> Function(
    Pointer<GLFWmonitor> monitor);
typedef TglfwGetGammaRamp_Func = Pointer<GLFWgammaramp> Function(
    Pointer<GLFWmonitor> monitor);
typedef TglfwSetGammaRamp_Native = Void Function(
    Pointer<GLFWmonitor> monitor, Pointer<GLFWgammaramp> ramp);
typedef TglfwSetGammaRamp_Func = void Function(
    Pointer<GLFWmonitor> monitor, Pointer<GLFWgammaramp> ramp);
typedef TglfwDefaultWindowHints_Native = Void Function();
typedef TglfwDefaultWindowHints_Func = void Function();
typedef TglfwWindowHint_Native = Void Function(Int32 hint, Int32 value);
typedef TglfwWindowHint_Func = void Function(int hint, int value);
typedef TglfwCreateWindow_Native = Pointer<GLFWwindow> Function(
    Int32 width,
    Int32 height,
    Pointer<Utf8> title,
    Pointer<GLFWmonitor> monitor,
    Pointer<GLFWwindow> share);
typedef TglfwCreateWindow_Func = Pointer<GLFWwindow> Function(
    int width,
    int height,
    Pointer<Utf8> title,
    Pointer<GLFWmonitor> monitor,
    Pointer<GLFWwindow> share);
typedef TglfwDestroyWindow_Native = Void Function(Pointer<GLFWwindow> window);
typedef TglfwDestroyWindow_Func = void Function(Pointer<GLFWwindow> window);
typedef TglfwWindowShouldClose_Native = Int32 Function(
    Pointer<GLFWwindow> window);
typedef TglfwWindowShouldClose_Func = int Function(Pointer<GLFWwindow> window);
typedef TglfwSetWindowShouldClose_Native = Void Function(
    Pointer<GLFWwindow> window, Int32 value);
typedef TglfwSetWindowShouldClose_Func = void Function(
    Pointer<GLFWwindow> window, int value);
typedef TglfwSetWindowTitle_Native = Void Function(
    Pointer<GLFWwindow> window, Pointer<Utf8> title);
typedef TglfwSetWindowTitle_Func = void Function(
    Pointer<GLFWwindow> window, Pointer<Utf8> title);
typedef TglfwSetWindowIcon_Native = Void Function(
    Pointer<GLFWwindow> window, Int32 count, Pointer<GLFWimage> images);
typedef TglfwSetWindowIcon_Func = void Function(
    Pointer<GLFWwindow> window, int count, Pointer<GLFWimage> images);
typedef TglfwGetWindowPos_Native = Void Function(
    Pointer<GLFWwindow> window, Pointer<Int32> xpos, Pointer<Int32> ypos);
typedef TglfwGetWindowPos_Func = void Function(
    Pointer<GLFWwindow> window, Pointer<Int32> xpos, Pointer<Int32> ypos);
typedef TglfwSetWindowPos_Native = Void Function(
    Pointer<GLFWwindow> window, Int32 xpos, Int32 ypos);
typedef TglfwSetWindowPos_Func = void Function(
    Pointer<GLFWwindow> window, int xpos, int ypos);
typedef TglfwGetWindowSize_Native = Void Function(
    Pointer<GLFWwindow> window, Pointer<Int32> width, Pointer<Int32> height);
typedef TglfwGetWindowSize_Func = void Function(
    Pointer<GLFWwindow> window, Pointer<Int32> width, Pointer<Int32> height);
typedef TglfwSetWindowSizeLimits_Native = Void Function(
    Pointer<GLFWwindow> window,
    Int32 minwidth,
    Int32 minheight,
    Int32 maxwidth,
    Int32 maxheight);
typedef TglfwSetWindowSizeLimits_Func = void Function(
    Pointer<GLFWwindow> window,
    int minwidth,
    int minheight,
    int maxwidth,
    int maxheight);
typedef TglfwSetWindowAspectRatio_Native = Void Function(
    Pointer<GLFWwindow> window, Int32 numer, Int32 denom);
typedef TglfwSetWindowAspectRatio_Func = void Function(
    Pointer<GLFWwindow> window, int numer, int denom);
typedef TglfwSetWindowSize_Native = Void Function(
    Pointer<GLFWwindow> window, Int32 width, Int32 height);
typedef TglfwSetWindowSize_Func = void Function(
    Pointer<GLFWwindow> window, int width, int height);
typedef TglfwGetFramebufferSize_Native = Void Function(
    Pointer<GLFWwindow> window, Pointer<Int32> width, Pointer<Int32> height);
typedef TglfwGetFramebufferSize_Func = void Function(
    Pointer<GLFWwindow> window, Pointer<Int32> width, Pointer<Int32> height);
typedef TglfwGetWindowFrameSize_Native = Void Function(
    Pointer<GLFWwindow> window,
    Pointer<Int32> left,
    Pointer<Int32> top,
    Pointer<Int32> right,
    Pointer<Int32> bottom);
typedef TglfwGetWindowFrameSize_Func = void Function(
    Pointer<GLFWwindow> window,
    Pointer<Int32> left,
    Pointer<Int32> top,
    Pointer<Int32> right,
    Pointer<Int32> bottom);
typedef TglfwIconifyWindow_Native = Void Function(Pointer<GLFWwindow> window);
typedef TglfwIconifyWindow_Func = void Function(Pointer<GLFWwindow> window);
typedef TglfwRestoreWindow_Native = Void Function(Pointer<GLFWwindow> window);
typedef TglfwRestoreWindow_Func = void Function(Pointer<GLFWwindow> window);
typedef TglfwMaximizeWindow_Native = Void Function(Pointer<GLFWwindow> window);
typedef TglfwMaximizeWindow_Func = void Function(Pointer<GLFWwindow> window);
typedef TglfwShowWindow_Native = Void Function(Pointer<GLFWwindow> window);
typedef TglfwShowWindow_Func = void Function(Pointer<GLFWwindow> window);
typedef TglfwHideWindow_Native = Void Function(Pointer<GLFWwindow> window);
typedef TglfwHideWindow_Func = void Function(Pointer<GLFWwindow> window);
typedef TglfwFocusWindow_Native = Void Function(Pointer<GLFWwindow> window);
typedef TglfwFocusWindow_Func = void Function(Pointer<GLFWwindow> window);
typedef TglfwGetWindowMonitor_Native = Pointer<GLFWmonitor> Function(
    Pointer<GLFWwindow> window);
typedef TglfwGetWindowMonitor_Func = Pointer<GLFWmonitor> Function(
    Pointer<GLFWwindow> window);
typedef TglfwSetWindowMonitor_Native = Void Function(
    Pointer<GLFWwindow> window,
    Pointer<GLFWmonitor> monitor,
    Int32 xpos,
    Int32 ypos,
    Int32 width,
    Int32 height,
    Int32 refreshRate);
typedef TglfwSetWindowMonitor_Func = void Function(
    Pointer<GLFWwindow> window,
    Pointer<GLFWmonitor> monitor,
    int xpos,
    int ypos,
    int width,
    int height,
    int refreshRate);
typedef TglfwGetWindowAttrib_Native = Int32 Function(
    Pointer<GLFWwindow> window, Int32 attrib);
typedef TglfwGetWindowAttrib_Func = int Function(
    Pointer<GLFWwindow> window, int attrib);
typedef TglfwSetWindowUserPointer_Native = Void Function(
    Pointer<GLFWwindow> window, Pointer<Void> pointer);
typedef TglfwSetWindowUserPointer_Func = void Function(
    Pointer<GLFWwindow> window, Pointer<Void> pointer);
typedef TglfwGetWindowUserPointer_Native = Pointer<Void> Function(
    Pointer<GLFWwindow> window);
typedef TglfwGetWindowUserPointer_Func = Pointer<Void> Function(
    Pointer<GLFWwindow> window);
typedef TglfwSetWindowPosCallback_Native
    = Pointer<NativeFunction<GLFWwindowposfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowposfun>> cbfun);
typedef TglfwSetWindowPosCallback_Func
    = Pointer<NativeFunction<GLFWwindowposfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowposfun>> cbfun);
typedef TglfwSetWindowSizeCallback_Native
    = Pointer<NativeFunction<GLFWwindowsizefun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowsizefun>> cbfun);
typedef TglfwSetWindowSizeCallback_Func
    = Pointer<NativeFunction<GLFWwindowsizefun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowsizefun>> cbfun);
typedef TglfwSetWindowCloseCallback_Native
    = Pointer<NativeFunction<GLFWwindowclosefun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowclosefun>> cbfun);
typedef TglfwSetWindowCloseCallback_Func
    = Pointer<NativeFunction<GLFWwindowclosefun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowclosefun>> cbfun);
typedef TglfwSetWindowRefreshCallback_Native
    = Pointer<NativeFunction<GLFWwindowrefreshfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowrefreshfun>> cbfun);
typedef TglfwSetWindowRefreshCallback_Func
    = Pointer<NativeFunction<GLFWwindowrefreshfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowrefreshfun>> cbfun);
typedef TglfwSetWindowFocusCallback_Native
    = Pointer<NativeFunction<GLFWwindowfocusfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowfocusfun>> cbfun);
typedef TglfwSetWindowFocusCallback_Func
    = Pointer<NativeFunction<GLFWwindowfocusfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowfocusfun>> cbfun);
typedef TglfwSetWindowIconifyCallback_Native
    = Pointer<NativeFunction<GLFWwindowiconifyfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowiconifyfun>> cbfun);
typedef TglfwSetWindowIconifyCallback_Func
    = Pointer<NativeFunction<GLFWwindowiconifyfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWwindowiconifyfun>> cbfun);
typedef TglfwSetFramebufferSizeCallback_Native
    = Pointer<NativeFunction<GLFWframebuffersizefun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWframebuffersizefun>> cbfun);
typedef TglfwSetFramebufferSizeCallback_Func
    = Pointer<NativeFunction<GLFWframebuffersizefun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWframebuffersizefun>> cbfun);
typedef TglfwPollEvents_Native = Void Function();
typedef TglfwPollEvents_Func = void Function();
typedef TglfwWaitEvents_Native = Void Function();
typedef TglfwWaitEvents_Func = void Function();
typedef TglfwWaitEventsTimeout_Native = Void Function(Double timeout);
typedef TglfwWaitEventsTimeout_Func = void Function(double timeout);
typedef TglfwPostEmptyEvent_Native = Void Function();
typedef TglfwPostEmptyEvent_Func = void Function();
typedef TglfwGetInputMode_Native = Int32 Function(
    Pointer<GLFWwindow> window, Int32 mode);
typedef TglfwGetInputMode_Func = int Function(
    Pointer<GLFWwindow> window, int mode);
typedef TglfwSetInputMode_Native = Void Function(
    Pointer<GLFWwindow> window, Int32 mode, Int32 value);
typedef TglfwSetInputMode_Func = void Function(
    Pointer<GLFWwindow> window, int mode, int value);
typedef TglfwGetKeyName_Native = Pointer<Utf8> Function(
    Int32 key, Int32 scancode);
typedef TglfwGetKeyName_Func = Pointer<Utf8> Function(int key, int scancode);
typedef TglfwGetKey_Native = Int32 Function(
    Pointer<GLFWwindow> window, Int32 key);
typedef TglfwGetKey_Func = int Function(Pointer<GLFWwindow> window, int key);
typedef TglfwGetMouseButton_Native = Int32 Function(
    Pointer<GLFWwindow> window, Int32 button);
typedef TglfwGetMouseButton_Func = int Function(
    Pointer<GLFWwindow> window, int button);
typedef TglfwGetCursorPos_Native = Void Function(
    Pointer<GLFWwindow> window, Pointer<Double> xpos, Pointer<Double> ypos);
typedef TglfwGetCursorPos_Func = void Function(
    Pointer<GLFWwindow> window, Pointer<Double> xpos, Pointer<Double> ypos);
typedef TglfwSetCursorPos_Native = Void Function(
    Pointer<GLFWwindow> window, Double xpos, Double ypos);
typedef TglfwSetCursorPos_Func = void Function(
    Pointer<GLFWwindow> window, double xpos, double ypos);
typedef TglfwCreateCursor_Native = Pointer<GLFWcursor> Function(
    Pointer<GLFWimage> image, Int32 xhot, Int32 yhot);
typedef TglfwCreateCursor_Func = Pointer<GLFWcursor> Function(
    Pointer<GLFWimage> image, int xhot, int yhot);
typedef TglfwCreateStandardCursor_Native = Pointer<GLFWcursor> Function(
    Int32 shape);
typedef TglfwCreateStandardCursor_Func = Pointer<GLFWcursor> Function(
    int shape);
typedef TglfwDestroyCursor_Native = Void Function(Pointer<GLFWcursor> cursor);
typedef TglfwDestroyCursor_Func = void Function(Pointer<GLFWcursor> cursor);
typedef TglfwSetCursor_Native = Void Function(
    Pointer<GLFWwindow> window, Pointer<GLFWcursor> cursor);
typedef TglfwSetCursor_Func = void Function(
    Pointer<GLFWwindow> window, Pointer<GLFWcursor> cursor);
typedef TglfwSetKeyCallback_Native
    = Pointer<NativeFunction<GLFWkeyfun>> Function(
        Pointer<GLFWwindow> window, Pointer<NativeFunction<GLFWkeyfun>> cbfun);
typedef TglfwSetKeyCallback_Func = Pointer<NativeFunction<GLFWkeyfun>> Function(
    Pointer<GLFWwindow> window, Pointer<NativeFunction<GLFWkeyfun>> cbfun);
typedef TglfwSetCharCallback_Native
    = Pointer<NativeFunction<GLFWcharfun>> Function(
        Pointer<GLFWwindow> window, Pointer<NativeFunction<GLFWcharfun>> cbfun);
typedef TglfwSetCharCallback_Func
    = Pointer<NativeFunction<GLFWcharfun>> Function(
        Pointer<GLFWwindow> window, Pointer<NativeFunction<GLFWcharfun>> cbfun);
typedef TglfwSetCharModsCallback_Native
    = Pointer<NativeFunction<GLFWcharmodsfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWcharmodsfun>> cbfun);
typedef TglfwSetCharModsCallback_Func
    = Pointer<NativeFunction<GLFWcharmodsfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWcharmodsfun>> cbfun);
typedef TglfwSetMouseButtonCallback_Native
    = Pointer<NativeFunction<GLFWmousebuttonfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWmousebuttonfun>> cbfun);
typedef TglfwSetMouseButtonCallback_Func
    = Pointer<NativeFunction<GLFWmousebuttonfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWmousebuttonfun>> cbfun);
typedef TglfwSetCursorPosCallback_Native
    = Pointer<NativeFunction<GLFWcursorposfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWcursorposfun>> cbfun);
typedef TglfwSetCursorPosCallback_Func
    = Pointer<NativeFunction<GLFWcursorposfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWcursorposfun>> cbfun);
typedef TglfwSetCursorEnterCallback_Native
    = Pointer<NativeFunction<GLFWcursorenterfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWcursorenterfun>> cbfun);
typedef TglfwSetCursorEnterCallback_Func
    = Pointer<NativeFunction<GLFWcursorenterfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWcursorenterfun>> cbfun);
typedef TglfwSetScrollCallback_Native
    = Pointer<NativeFunction<GLFWscrollfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWscrollfun>> cbfun);
typedef TglfwSetScrollCallback_Func
    = Pointer<NativeFunction<GLFWscrollfun>> Function(
        Pointer<GLFWwindow> window,
        Pointer<NativeFunction<GLFWscrollfun>> cbfun);
typedef TglfwSetDropCallback_Native
    = Pointer<NativeFunction<GLFWdropfun>> Function(
        Pointer<GLFWwindow> window, Pointer<NativeFunction<GLFWdropfun>> cbfun);
typedef TglfwSetDropCallback_Func
    = Pointer<NativeFunction<GLFWdropfun>> Function(
        Pointer<GLFWwindow> window, Pointer<NativeFunction<GLFWdropfun>> cbfun);
typedef TglfwJoystickPresent_Native = Int32 Function(Int32 joy);
typedef TglfwJoystickPresent_Func = int Function(int joy);
typedef TglfwGetJoystickAxes_Native = Pointer<Float> Function(
    Int32 joy, Pointer<Int32> count);
typedef TglfwGetJoystickAxes_Func = Pointer<Float> Function(
    int joy, Pointer<Int32> count);
typedef TglfwGetJoystickButtons_Native = Pointer<Uint8> Function(
    Int32 joy, Pointer<Int32> count);
typedef TglfwGetJoystickButtons_Func = Pointer<Uint8> Function(
    int joy, Pointer<Int32> count);
typedef TglfwGetJoystickName_Native = Pointer<Utf8> Function(Int32 joy);
typedef TglfwGetJoystickName_Func = Pointer<Utf8> Function(int joy);
typedef TglfwSetJoystickCallback_Native
    = Pointer<NativeFunction<GLFWjoystickfun>> Function(
        Pointer<NativeFunction<GLFWjoystickfun>> cbfun);
typedef TglfwSetJoystickCallback_Func = Pointer<NativeFunction<GLFWjoystickfun>>
    Function(Pointer<NativeFunction<GLFWjoystickfun>> cbfun);
typedef TglfwSetClipboardString_Native = Void Function(
    Pointer<GLFWwindow> window, Pointer<Utf8> string);
typedef TglfwSetClipboardString_Func = void Function(
    Pointer<GLFWwindow> window, Pointer<Utf8> string);
typedef TglfwGetClipboardString_Native = Pointer<Utf8> Function(
    Pointer<GLFWwindow> window);
typedef TglfwGetClipboardString_Func = Pointer<Utf8> Function(
    Pointer<GLFWwindow> window);
typedef TglfwGetTime_Native = Double Function();
typedef TglfwGetTime_Func = double Function();
typedef TglfwSetTime_Native = Void Function(Double time);
typedef TglfwSetTime_Func = void Function(double time);
typedef TglfwGetTimerValue_Native = Uint64 Function();
typedef TglfwGetTimerValue_Func = int Function();
typedef TglfwGetTimerFrequency_Native = Uint64 Function();
typedef TglfwGetTimerFrequency_Func = int Function();
typedef TglfwMakeContextCurrent_Native = Void Function(
    Pointer<GLFWwindow> window);
typedef TglfwMakeContextCurrent_Func = void Function(
    Pointer<GLFWwindow> window);
typedef TglfwGetCurrentContext_Native = Pointer<GLFWwindow> Function();
typedef TglfwGetCurrentContext_Func = Pointer<GLFWwindow> Function();
typedef TglfwSwapBuffers_Native = Void Function(Pointer<GLFWwindow> window);
typedef TglfwSwapBuffers_Func = void Function(Pointer<GLFWwindow> window);
typedef TglfwSwapInterval_Native = Void Function(Int32 interval);
typedef TglfwSwapInterval_Func = void Function(int interval);

typedef TglfwVulkanSupported_Native = Int32 Function();
typedef TglfwVulkanSupported_Func = int Function();
typedef TglfwGetRequiredInstanceExtensions_Native = Pointer<Pointer<Utf8>>
    Function(Pointer<Uint32>);
typedef TglfwGetRequiredInstanceExtensions_Func = Pointer<Pointer<Utf8>>
    Function(Pointer<Uint32>);
typedef TglfwGetInstanceProcAddress_Native = Pointer<NativeFunction<GLFWvkproc>>
    Function(Pointer<Struct>, Pointer<Utf8>);
typedef TglfwGetInstanceProcAddress_Func = Pointer<NativeFunction<GLFWvkproc>>
    Function(Pointer<Struct>, Pointer<Utf8>);
typedef TglfwGetPhysicalDevicePresentationSupport_Native = Int32 Function(
    Pointer<Struct>, Pointer<Struct>, Uint32);
typedef TglfwGetPhysicalDevicePresentationSupport_Func = int Function(
    Pointer<Struct>, Pointer<Struct>, int);
typedef TglfwCreateWindowSurface_Native = Int32 Function(
    Pointer<Struct>, Pointer<GLFWwindow>, Pointer<Struct>, Pointer<Struct>);
typedef TglfwCreateWindowSurface_Func = int Function(
    Pointer<Struct>, Pointer<GLFWwindow>, Pointer<Struct>, Pointer<Struct>);
