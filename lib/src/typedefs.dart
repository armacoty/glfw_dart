import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'structures.dart';
import 'callback_typedefs.dart';

typedef TglfwInit_Native = Int32 Function();
typedef TglfwInit_Func = int Function();
typedef TglfwTerminate_Native = Void Function();
typedef TglfwTerminate_Func = void Function();
typedef TglfwGetVersion_Native = Void Function(
    Pointer<Int32>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetVersion_Func = void Function(
    Pointer<Int32>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetVersionString_Native = Pointer<Utf8> Function();
typedef TglfwGetVersionString_Func = Pointer<Utf8> Function();
typedef TglfwSetErrorCallback_Native = Pointer<NativeFunction<GLFWerrorfun>>
    Function(Pointer<NativeFunction<GLFWerrorfun>>);
typedef TglfwSetErrorCallback_Func = Pointer<NativeFunction<GLFWerrorfun>>
    Function(Pointer<NativeFunction<GLFWerrorfun>>);
typedef TglfwGetMonitors_Native = Pointer<Pointer<GLFWmonitor>> Function(
    Pointer<Int32>);
typedef TglfwGetMonitors_Func = Pointer<Pointer<GLFWmonitor>> Function(
    Pointer<Int32>);
typedef TglfwGetPrimaryMonitor_Native = Pointer<GLFWmonitor> Function();
typedef TglfwGetPrimaryMonitor_Func = Pointer<GLFWmonitor> Function();
typedef TglfwGetMonitorPos_Native = Void Function(
    Pointer<GLFWmonitor>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetMonitorPos_Func = void Function(
    Pointer<GLFWmonitor>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetMonitorPhysicalSize_Native = Void Function(
    Pointer<GLFWmonitor>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetMonitorPhysicalSize_Func = void Function(
    Pointer<GLFWmonitor>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetMonitorName_Native = Pointer<Utf8> Function(
    Pointer<GLFWmonitor>);
typedef TglfwGetMonitorName_Func = Pointer<Utf8> Function(Pointer<GLFWmonitor>);
typedef TglfwSetMonitorCallback_Native = Pointer<NativeFunction<GLFWmonitorfun>>
    Function(Pointer<NativeFunction<GLFWmonitorfun>>);
typedef TglfwSetMonitorCallback_Func = Pointer<NativeFunction<GLFWmonitorfun>>
    Function(Pointer<NativeFunction<GLFWmonitorfun>>);
typedef TglfwGetVideoModes_Native = Pointer<GLFWvidmode> Function(
    Pointer<GLFWmonitor>, Pointer<Int32>);
typedef TglfwGetVideoModes_Func = Pointer<GLFWvidmode> Function(
    Pointer<GLFWmonitor>, Pointer<Int32>);
typedef TglfwGetVideoMode_Native = Pointer<GLFWvidmode> Function(
    Pointer<GLFWmonitor>);
typedef TglfwGetVideoMode_Func = Pointer<GLFWvidmode> Function(
    Pointer<GLFWmonitor>);
typedef TglfwSetGamma_Native = Void Function(Pointer<GLFWmonitor>, Float);
typedef TglfwSetGamma_Func = void Function(Pointer<GLFWmonitor>, double);
typedef TglfwGetGammaRamp_Native = Pointer<GLFWgammaramp> Function(
    Pointer<GLFWmonitor>);
typedef TglfwGetGammaRamp_Func = Pointer<GLFWgammaramp> Function(
    Pointer<GLFWmonitor>);
typedef TglfwSetGammaRamp_Native = Void Function(
    Pointer<GLFWmonitor>, Pointer<GLFWgammaramp>);
typedef TglfwSetGammaRamp_Func = void Function(
    Pointer<GLFWmonitor>, Pointer<GLFWgammaramp>);
typedef TglfwDefaultWindowHints_Native = Void Function();
typedef TglfwDefaultWindowHints_Func = void Function();
typedef TglfwWindowHint_Native = Void Function(Int32, Int32);
typedef TglfwWindowHint_Func = void Function(int, int);
typedef TglfwCreateWindow_Native = Pointer<GLFWwindow> Function(
    Int32, Int32, Pointer<Utf8>, Pointer<GLFWmonitor>, Pointer<GLFWwindow>);
typedef TglfwCreateWindow_Func = Pointer<GLFWwindow> Function(
    int, int, Pointer<Utf8>, Pointer<GLFWmonitor>, Pointer<GLFWwindow>);
typedef TglfwDestroyWindow_Native = Void Function(Pointer<GLFWwindow>);
typedef TglfwDestroyWindow_Func = void Function(Pointer<GLFWwindow>);
typedef TglfwWindowShouldClose_Native = Int32 Function(Pointer<GLFWwindow>);
typedef TglfwWindowShouldClose_Func = int Function(Pointer<GLFWwindow>);
typedef TglfwSetWindowShouldClose_Native = Void Function(
    Pointer<GLFWwindow>, Int32);
typedef TglfwSetWindowShouldClose_Func = void Function(
    Pointer<GLFWwindow>, int);
typedef TglfwSetWindowTitle_Native = Void Function(
    Pointer<GLFWwindow>, Pointer<Utf8>);
typedef TglfwSetWindowTitle_Func = void Function(
    Pointer<GLFWwindow>, Pointer<Utf8>);
typedef TglfwSetWindowIcon_Native = Void Function(
    Pointer<GLFWwindow>, Int32, Pointer<GLFWimage>);
typedef TglfwSetWindowIcon_Func = void Function(
    Pointer<GLFWwindow>, int, Pointer<GLFWimage>);
typedef TglfwGetWindowPos_Native = Void Function(
    Pointer<GLFWwindow>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetWindowPos_Func = void Function(
    Pointer<GLFWwindow>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwSetWindowPos_Native = Void Function(
    Pointer<GLFWwindow>, Int32, Int32);
typedef TglfwSetWindowPos_Func = void Function(Pointer<GLFWwindow>, int, int);
typedef TglfwGetWindowSize_Native = Void Function(
    Pointer<GLFWwindow>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetWindowSize_Func = void Function(
    Pointer<GLFWwindow>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwSetWindowSizeLimits_Native = Void Function(
    Pointer<GLFWwindow>, Int32, Int32, Int32, Int32);
typedef TglfwSetWindowSizeLimits_Func = void Function(
    Pointer<GLFWwindow>, int, int, int, int);
typedef TglfwSetWindowAspectRatio_Native = Void Function(
    Pointer<GLFWwindow>, Int32, Int32);
typedef TglfwSetWindowAspectRatio_Func = void Function(
    Pointer<GLFWwindow>, int, int);
typedef TglfwSetWindowSize_Native = Void Function(
    Pointer<GLFWwindow>, Int32, Int32);
typedef TglfwSetWindowSize_Func = void Function(Pointer<GLFWwindow>, int, int);
typedef TglfwGetFramebufferSize_Native = Void Function(
    Pointer<GLFWwindow>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetFramebufferSize_Func = void Function(
    Pointer<GLFWwindow>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetWindowFrameSize_Native = Void Function(Pointer<GLFWwindow>,
    Pointer<Int32>, Pointer<Int32>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwGetWindowFrameSize_Func = void Function(Pointer<GLFWwindow>,
    Pointer<Int32>, Pointer<Int32>, Pointer<Int32>, Pointer<Int32>);
typedef TglfwIconifyWindow_Native = Void Function(Pointer<GLFWwindow>);
typedef TglfwIconifyWindow_Func = void Function(Pointer<GLFWwindow>);
typedef TglfwRestoreWindow_Native = Void Function(Pointer<GLFWwindow>);
typedef TglfwRestoreWindow_Func = void Function(Pointer<GLFWwindow>);
typedef TglfwMaximizeWindow_Native = Void Function(Pointer<GLFWwindow>);
typedef TglfwMaximizeWindow_Func = void Function(Pointer<GLFWwindow>);
typedef TglfwShowWindow_Native = Void Function(Pointer<GLFWwindow>);
typedef TglfwShowWindow_Func = void Function(Pointer<GLFWwindow>);
typedef TglfwHideWindow_Native = Void Function(Pointer<GLFWwindow>);
typedef TglfwHideWindow_Func = void Function(Pointer<GLFWwindow>);
typedef TglfwFocusWindow_Native = Void Function(Pointer<GLFWwindow>);
typedef TglfwFocusWindow_Func = void Function(Pointer<GLFWwindow>);
typedef TglfwGetWindowMonitor_Native = Pointer<GLFWmonitor> Function(
    Pointer<GLFWwindow>);
typedef TglfwGetWindowMonitor_Func = Pointer<GLFWmonitor> Function(
    Pointer<GLFWwindow>);
typedef TglfwSetWindowMonitor_Native = Void Function(Pointer<GLFWwindow>,
    Pointer<GLFWmonitor>, Int32, Int32, Int32, Int32, Int32);
typedef TglfwSetWindowMonitor_Func = void Function(
    Pointer<GLFWwindow>, Pointer<GLFWmonitor>, int, int, int, int, int);
typedef TglfwGetWindowAttrib_Native = Int32 Function(
    Pointer<GLFWwindow>, Int32);
typedef TglfwGetWindowAttrib_Func = int Function(Pointer<GLFWwindow>, int);
typedef TglfwSetWindowUserPointer_Native = Void Function(
    Pointer<GLFWwindow>, Pointer<Void>);
typedef TglfwSetWindowUserPointer_Func = void Function(
    Pointer<GLFWwindow>, Pointer<Void>);
typedef TglfwGetWindowUserPointer_Native = Pointer<Void> Function(
    Pointer<GLFWwindow>);
typedef TglfwGetWindowUserPointer_Func = Pointer<Void> Function(
    Pointer<GLFWwindow>);
typedef TglfwSetWindowPosCallback_Native
    = Pointer<NativeFunction<GLFWwindowposfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowposfun>>);
typedef TglfwSetWindowPosCallback_Func
    = Pointer<NativeFunction<GLFWwindowposfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowposfun>>);
typedef TglfwSetWindowSizeCallback_Native
    = Pointer<NativeFunction<GLFWwindowsizefun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowsizefun>>);
typedef TglfwSetWindowSizeCallback_Func
    = Pointer<NativeFunction<GLFWwindowsizefun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowsizefun>>);
typedef TglfwSetWindowCloseCallback_Native
    = Pointer<NativeFunction<GLFWwindowclosefun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowclosefun>>);
typedef TglfwSetWindowCloseCallback_Func
    = Pointer<NativeFunction<GLFWwindowclosefun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowclosefun>>);
typedef TglfwSetWindowRefreshCallback_Native
    = Pointer<NativeFunction<GLFWwindowrefreshfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowrefreshfun>>);
typedef TglfwSetWindowRefreshCallback_Func
    = Pointer<NativeFunction<GLFWwindowrefreshfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowrefreshfun>>);
typedef TglfwSetWindowFocusCallback_Native
    = Pointer<NativeFunction<GLFWwindowfocusfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowfocusfun>>);
typedef TglfwSetWindowFocusCallback_Func
    = Pointer<NativeFunction<GLFWwindowfocusfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowfocusfun>>);
typedef TglfwSetWindowIconifyCallback_Native
    = Pointer<NativeFunction<GLFWwindowiconifyfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowiconifyfun>>);
typedef TglfwSetWindowIconifyCallback_Func
    = Pointer<NativeFunction<GLFWwindowiconifyfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWwindowiconifyfun>>);
typedef TglfwSetFramebufferSizeCallback_Native
    = Pointer<NativeFunction<GLFWframebuffersizefun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWframebuffersizefun>>);
typedef TglfwSetFramebufferSizeCallback_Func
    = Pointer<NativeFunction<GLFWframebuffersizefun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWframebuffersizefun>>);
typedef TglfwPollEvents_Native = Void Function();
typedef TglfwPollEvents_Func = void Function();
typedef TglfwWaitEvents_Native = Void Function();
typedef TglfwWaitEvents_Func = void Function();
typedef TglfwWaitEventsTimeout_Native = Void Function(Double);
typedef TglfwWaitEventsTimeout_Func = void Function(double);
typedef TglfwPostEmptyEvent_Native = Void Function();
typedef TglfwPostEmptyEvent_Func = void Function();
typedef TglfwGetInputMode_Native = Int32 Function(Pointer<GLFWwindow>, Int32);
typedef TglfwGetInputMode_Func = int Function(Pointer<GLFWwindow>, int);
typedef TglfwSetInputMode_Native = Void Function(
    Pointer<GLFWwindow>, Int32, Int32);
typedef TglfwSetInputMode_Func = void Function(Pointer<GLFWwindow>, int, int);
typedef TglfwGetKeyName_Native = Pointer<Utf8> Function(Int32, Int32);
typedef TglfwGetKeyName_Func = Pointer<Utf8> Function(int, int);
typedef TglfwGetKey_Native = Int32 Function(Pointer<GLFWwindow>, Int32);
typedef TglfwGetKey_Func = int Function(Pointer<GLFWwindow>, int);
typedef TglfwGetMouseButton_Native = Int32 Function(Pointer<GLFWwindow>, Int32);
typedef TglfwGetMouseButton_Func = int Function(Pointer<GLFWwindow>, int);
typedef TglfwGetCursorPos_Native = Void Function(
    Pointer<GLFWwindow>, Pointer<Double>, Pointer<Double>);
typedef TglfwGetCursorPos_Func = void Function(
    Pointer<GLFWwindow>, Pointer<Double>, Pointer<Double>);
typedef TglfwSetCursorPos_Native = Void Function(
    Pointer<GLFWwindow>, Double, Double);
typedef TglfwSetCursorPos_Func = void Function(
    Pointer<GLFWwindow>, double, double);
typedef TglfwCreateCursor_Native = Pointer<GLFWcursor> Function(
    Pointer<GLFWimage>, Int32, Int32);
typedef TglfwCreateCursor_Func = Pointer<GLFWcursor> Function(
    Pointer<GLFWimage>, int, int);
typedef TglfwCreateStandardCursor_Native = Pointer<GLFWcursor> Function(Int32);
typedef TglfwCreateStandardCursor_Func = Pointer<GLFWcursor> Function(int);
typedef TglfwDestroyCursor_Native = Void Function(Pointer<GLFWcursor>);
typedef TglfwDestroyCursor_Func = void Function(Pointer<GLFWcursor>);
typedef TglfwSetCursor_Native = Void Function(
    Pointer<GLFWwindow>, Pointer<GLFWcursor>);
typedef TglfwSetCursor_Func = void Function(
    Pointer<GLFWwindow>, Pointer<GLFWcursor>);
typedef TglfwSetKeyCallback_Native = Pointer<NativeFunction<GLFWkeyfun>>
    Function(Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWkeyfun>>);
typedef TglfwSetKeyCallback_Func = Pointer<NativeFunction<GLFWkeyfun>> Function(
    Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWkeyfun>>);
typedef TglfwSetCharCallback_Native = Pointer<NativeFunction<GLFWcharfun>>
    Function(Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWcharfun>>);
typedef TglfwSetCharCallback_Func = Pointer<NativeFunction<GLFWcharfun>>
    Function(Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWcharfun>>);
typedef TglfwSetCharModsCallback_Native
    = Pointer<NativeFunction<GLFWcharmodsfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWcharmodsfun>>);
typedef TglfwSetCharModsCallback_Func = Pointer<NativeFunction<GLFWcharmodsfun>>
    Function(Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWcharmodsfun>>);
typedef TglfwSetMouseButtonCallback_Native
    = Pointer<NativeFunction<GLFWmousebuttonfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWmousebuttonfun>>);
typedef TglfwSetMouseButtonCallback_Func
    = Pointer<NativeFunction<GLFWmousebuttonfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWmousebuttonfun>>);
typedef TglfwSetCursorPosCallback_Native
    = Pointer<NativeFunction<GLFWcursorposfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWcursorposfun>>);
typedef TglfwSetCursorPosCallback_Func
    = Pointer<NativeFunction<GLFWcursorposfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWcursorposfun>>);
typedef TglfwSetCursorEnterCallback_Native
    = Pointer<NativeFunction<GLFWcursorenterfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWcursorenterfun>>);
typedef TglfwSetCursorEnterCallback_Func
    = Pointer<NativeFunction<GLFWcursorenterfun>> Function(
        Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWcursorenterfun>>);
typedef TglfwSetScrollCallback_Native = Pointer<NativeFunction<GLFWscrollfun>>
    Function(Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWscrollfun>>);
typedef TglfwSetScrollCallback_Func = Pointer<NativeFunction<GLFWscrollfun>>
    Function(Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWscrollfun>>);
typedef TglfwSetDropCallback_Native = Pointer<NativeFunction<GLFWdropfun>>
    Function(Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWdropfun>>);
typedef TglfwSetDropCallback_Func = Pointer<NativeFunction<GLFWdropfun>>
    Function(Pointer<GLFWwindow>, Pointer<NativeFunction<GLFWdropfun>>);
typedef TglfwJoystickPresent_Native = Int32 Function(Int32);
typedef TglfwJoystickPresent_Func = int Function(int);
typedef TglfwGetJoystickAxes_Native = Pointer<Float> Function(
    Int32, Pointer<Int32>);
typedef TglfwGetJoystickAxes_Func = Pointer<Float> Function(
    int, Pointer<Int32>);
typedef TglfwGetJoystickButtons_Native = Pointer<Uint8> Function(
    Int32, Pointer<Int32>);
typedef TglfwGetJoystickButtons_Func = Pointer<Uint8> Function(
    int, Pointer<Int32>);
typedef TglfwGetJoystickName_Native = Pointer<Utf8> Function(Int32);
typedef TglfwGetJoystickName_Func = Pointer<Utf8> Function(int);
typedef TglfwSetJoystickCallback_Native
    = Pointer<NativeFunction<GLFWjoystickfun>> Function(
        Pointer<NativeFunction<GLFWjoystickfun>>);
typedef TglfwSetJoystickCallback_Func = Pointer<NativeFunction<GLFWjoystickfun>>
    Function(Pointer<NativeFunction<GLFWjoystickfun>>);
typedef TglfwSetClipboardString_Native = Void Function(
    Pointer<GLFWwindow>, Pointer<Utf8>);
typedef TglfwSetClipboardString_Func = void Function(
    Pointer<GLFWwindow>, Pointer<Utf8>);
typedef TglfwGetClipboardString_Native = Pointer<Utf8> Function(
    Pointer<GLFWwindow>);
typedef TglfwGetClipboardString_Func = Pointer<Utf8> Function(
    Pointer<GLFWwindow>);
typedef TglfwGetTime_Native = Double Function();
typedef TglfwGetTime_Func = double Function();
typedef TglfwSetTime_Native = Void Function(Double);
typedef TglfwSetTime_Func = void Function(double);
typedef TglfwGetTimerValue_Native = Uint64 Function();
typedef TglfwGetTimerValue_Func = int Function();
typedef TglfwGetTimerFrequency_Native = Uint64 Function();
typedef TglfwGetTimerFrequency_Func = int Function();
typedef TglfwMakeContextCurrent_Native = Void Function(Pointer<GLFWwindow>);
typedef TglfwMakeContextCurrent_Func = void Function(Pointer<GLFWwindow>);
typedef TglfwGetCurrentContext_Native = Pointer<GLFWwindow> Function();
typedef TglfwGetCurrentContext_Func = Pointer<GLFWwindow> Function();
typedef TglfwSwapBuffers_Native = Void Function(Pointer<GLFWwindow>);
typedef TglfwSwapBuffers_Func = void Function(Pointer<GLFWwindow>);
typedef TglfwSwapInterval_Native = Void Function(Int32);
typedef TglfwSwapInterval_Func = void Function(int);
