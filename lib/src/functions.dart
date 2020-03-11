import 'typedefs.dart';
import 'dart:ffi';
import 'dart:io';

/// Class of binders of a dynamic library GLFW3
/// It takes the path to the dynamic library GLFW3 as an argument `customPath`.
/// If `customPath` is `null` and platform is linux it will open the file `/usr/lib/x86_64-linux-gnu/libglfw.so`.
///
/// Example:
///
/// ```
/// glfw = Glfw(customPath: Platform.isWindows ? "lib\\glfw3.dll" : null);
/// ```
class Glfw {
  TglfwInit_Func init;
  TglfwTerminate_Func terminate;
  TglfwGetVersion_Func getVersion;
  TglfwGetVersionString_Func getVersionString;
  TglfwSetErrorCallback_Func setErrorCallback;
  TglfwGetMonitors_Func getMonitors;
  TglfwGetPrimaryMonitor_Func getPrimaryMonitor;
  TglfwGetMonitorPos_Func getMonitorPos;
  TglfwGetMonitorPhysicalSize_Func getMonitorPhysicalSize;
  TglfwGetMonitorName_Func getMonitorName;
  TglfwSetMonitorCallback_Func setMonitorCallback;
  TglfwGetVideoModes_Func getVideoModes;
  TglfwGetVideoMode_Func getVideoMode;
  TglfwSetGamma_Func setGamma;
  TglfwGetGammaRamp_Func getGammaRamp;
  TglfwSetGammaRamp_Func setGammaRamp;
  TglfwDefaultWindowHints_Func defaultWindowHints;
  TglfwWindowHint_Func windowHint;
  TglfwCreateWindow_Func createWindow;
  TglfwDestroyWindow_Func destroyWindow;
  TglfwWindowShouldClose_Func windowShouldClose;
  TglfwSetWindowShouldClose_Func setWindowShouldClose;
  TglfwSetWindowTitle_Func setWindowTitle;
  TglfwSetWindowIcon_Func setWindowIcon;
  TglfwGetWindowPos_Func getWindowPos;
  TglfwSetWindowPos_Func setWindowPos;
  TglfwGetWindowSize_Func getWindowSize;
  TglfwSetWindowSizeLimits_Func setWindowSizeLimits;
  TglfwSetWindowAspectRatio_Func setWindowAspectRatio;
  TglfwSetWindowSize_Func setWindowSize;
  TglfwGetFramebufferSize_Func getFramebufferSize;
  TglfwGetWindowFrameSize_Func getWindowFrameSize;
  TglfwIconifyWindow_Func iconifyWindow;
  TglfwRestoreWindow_Func restoreWindow;
  TglfwMaximizeWindow_Func maximizeWindow;
  TglfwShowWindow_Func showWindow;
  TglfwHideWindow_Func hideWindow;
  TglfwFocusWindow_Func focusWindow;
  TglfwGetWindowMonitor_Func getWindowMonitor;
  TglfwSetWindowMonitor_Func setWindowMonitor;
  TglfwGetWindowAttrib_Func getWindowAttrib;
  TglfwSetWindowUserPointer_Func setWindowUserPointer;
  TglfwGetWindowUserPointer_Func getWindowUserPointer;
  TglfwSetWindowPosCallback_Func setWindowPosCallback;
  TglfwSetWindowSizeCallback_Func setWindowSizeCallback;
  TglfwSetWindowCloseCallback_Func setWindowCloseCallback;
  TglfwSetWindowRefreshCallback_Func setWindowRefreshCallback;
  TglfwSetWindowFocusCallback_Func setWindowFocusCallback;
  TglfwSetWindowIconifyCallback_Func setWindowIconifyCallback;
  TglfwSetFramebufferSizeCallback_Func setFramebufferSizeCallback;
  TglfwPollEvents_Func pollEvents;
  TglfwWaitEvents_Func waitEvents;
  TglfwWaitEventsTimeout_Func waitEventsTimeout;
  TglfwPostEmptyEvent_Func postEmptyEvent;
  TglfwGetInputMode_Func getInputMode;
  TglfwSetInputMode_Func setInputMode;
  TglfwGetKeyName_Func getKeyName;
  TglfwGetKey_Func getKey;
  TglfwGetMouseButton_Func getMouseButton;
  TglfwGetCursorPos_Func getCursorPos;
  TglfwSetCursorPos_Func setCursorPos;
  TglfwCreateCursor_Func createCursor;
  TglfwCreateStandardCursor_Func createStandardCursor;
  TglfwDestroyCursor_Func destroyCursor;
  TglfwSetCursor_Func setCursor;
  TglfwSetKeyCallback_Func setKeyCallback;
  TglfwSetCharCallback_Func setCharCallback;
  TglfwSetCharModsCallback_Func setCharModsCallback;
  TglfwSetMouseButtonCallback_Func setMouseButtonCallback;
  TglfwSetCursorPosCallback_Func setCursorPosCallback;
  TglfwSetCursorEnterCallback_Func setCursorEnterCallback;
  TglfwSetScrollCallback_Func setScrollCallback;
  TglfwSetDropCallback_Func setDropCallback;
  TglfwJoystickPresent_Func joystickPresent;
  TglfwGetJoystickAxes_Func getJoystickAxes;
  TglfwGetJoystickButtons_Func getJoystickButtons;
  TglfwGetJoystickName_Func getJoystickName;
  TglfwSetJoystickCallback_Func setJoystickCallback;
  TglfwSetClipboardString_Func setClipboardString;
  TglfwGetClipboardString_Func getClipboardString;
  TglfwGetTime_Func getTime;
  TglfwSetTime_Func setTime;
  TglfwGetTimerValue_Func getTimerValue;
  TglfwGetTimerFrequency_Func getTimerFrequency;
  TglfwMakeContextCurrent_Func makeContextCurrent;
  TglfwGetCurrentContext_Func getCurrentContext;
  TglfwSwapBuffers_Func swapBuffers;
  TglfwSwapInterval_Func swapInterval;

  Glfw({String customPath}) {
    String path;
    if (customPath != null) {
      path = customPath;
    } else {
      if (Platform.isLinux) path = '/usr/lib/x86_64-linux-gnu/libglfw.so';
      if (Platform.isWindows) {
        const winPath = 'glfw3.dll';
        var dllFile = File(winPath);
        if (dllFile.existsSync()) {
          path = winPath;
        } else {
          // The glfw3.dll path for windows is not specified.
          throw Exception('Could not find the ./glfw3.dll');
        }
      }
    }
    if (path == null) {
      throw Exception(
          'Platform is not currently supported. (platform = ${Platform.operatingSystemVersion})');
    }
    final dylib = DynamicLibrary.open(path);

    this.init =
        dylib.lookup<NativeFunction<TglfwInit_Native>>('glfwInit').asFunction();
    this.terminate = dylib
        .lookup<NativeFunction<TglfwTerminate_Native>>('glfwTerminate')
        .asFunction();
    this.getVersion = dylib
        .lookup<NativeFunction<TglfwGetVersion_Native>>('glfwGetVersion')
        .asFunction();
    this.getVersionString = dylib
        .lookup<NativeFunction<TglfwGetVersionString_Native>>(
            'glfwGetVersionString')
        .asFunction();
    this.setErrorCallback = dylib
        .lookup<NativeFunction<TglfwSetErrorCallback_Native>>(
            'glfwSetErrorCallback')
        .asFunction();
    this.getMonitors = dylib
        .lookup<NativeFunction<TglfwGetMonitors_Native>>('glfwGetMonitors')
        .asFunction();
    this.getPrimaryMonitor = dylib
        .lookup<NativeFunction<TglfwGetPrimaryMonitor_Native>>(
            'glfwGetPrimaryMonitor')
        .asFunction();
    this.getMonitorPos = dylib
        .lookup<NativeFunction<TglfwGetMonitorPos_Native>>('glfwGetMonitorPos')
        .asFunction();
    this.getMonitorPhysicalSize = dylib
        .lookup<NativeFunction<TglfwGetMonitorPhysicalSize_Native>>(
            'glfwGetMonitorPhysicalSize')
        .asFunction();
    this.getMonitorName = dylib
        .lookup<NativeFunction<TglfwGetMonitorName_Native>>(
            'glfwGetMonitorName')
        .asFunction();
    this.setMonitorCallback = dylib
        .lookup<NativeFunction<TglfwSetMonitorCallback_Native>>(
            'glfwSetMonitorCallback')
        .asFunction();
    this.getVideoModes = dylib
        .lookup<NativeFunction<TglfwGetVideoModes_Native>>('glfwGetVideoModes')
        .asFunction();
    this.getVideoMode = dylib
        .lookup<NativeFunction<TglfwGetVideoMode_Native>>('glfwGetVideoMode')
        .asFunction();
    this.setGamma = dylib
        .lookup<NativeFunction<TglfwSetGamma_Native>>('glfwSetGamma')
        .asFunction();
    this.getGammaRamp = dylib
        .lookup<NativeFunction<TglfwGetGammaRamp_Native>>('glfwGetGammaRamp')
        .asFunction();
    this.setGammaRamp = dylib
        .lookup<NativeFunction<TglfwSetGammaRamp_Native>>('glfwSetGammaRamp')
        .asFunction();
    this.defaultWindowHints = dylib
        .lookup<NativeFunction<TglfwDefaultWindowHints_Native>>(
            'glfwDefaultWindowHints')
        .asFunction();
    this.windowHint = dylib
        .lookup<NativeFunction<TglfwWindowHint_Native>>('glfwWindowHint')
        .asFunction();
    this.createWindow = dylib
        .lookup<NativeFunction<TglfwCreateWindow_Native>>('glfwCreateWindow')
        .asFunction();
    this.destroyWindow = dylib
        .lookup<NativeFunction<TglfwDestroyWindow_Native>>('glfwDestroyWindow')
        .asFunction();
    this.windowShouldClose = dylib
        .lookup<NativeFunction<TglfwWindowShouldClose_Native>>(
            'glfwWindowShouldClose')
        .asFunction();
    this.setWindowShouldClose = dylib
        .lookup<NativeFunction<TglfwSetWindowShouldClose_Native>>(
            'glfwSetWindowShouldClose')
        .asFunction();
    this.setWindowTitle = dylib
        .lookup<NativeFunction<TglfwSetWindowTitle_Native>>(
            'glfwSetWindowTitle')
        .asFunction();
    this.setWindowIcon = dylib
        .lookup<NativeFunction<TglfwSetWindowIcon_Native>>('glfwSetWindowIcon')
        .asFunction();
    this.getWindowPos = dylib
        .lookup<NativeFunction<TglfwGetWindowPos_Native>>('glfwGetWindowPos')
        .asFunction();
    this.setWindowPos = dylib
        .lookup<NativeFunction<TglfwSetWindowPos_Native>>('glfwSetWindowPos')
        .asFunction();
    this.getWindowSize = dylib
        .lookup<NativeFunction<TglfwGetWindowSize_Native>>('glfwGetWindowSize')
        .asFunction();
    this.setWindowSizeLimits = dylib
        .lookup<NativeFunction<TglfwSetWindowSizeLimits_Native>>(
            'glfwSetWindowSizeLimits')
        .asFunction();
    this.setWindowAspectRatio = dylib
        .lookup<NativeFunction<TglfwSetWindowAspectRatio_Native>>(
            'glfwSetWindowAspectRatio')
        .asFunction();
    this.setWindowSize = dylib
        .lookup<NativeFunction<TglfwSetWindowSize_Native>>('glfwSetWindowSize')
        .asFunction();
    this.getFramebufferSize = dylib
        .lookup<NativeFunction<TglfwGetFramebufferSize_Native>>(
            'glfwGetFramebufferSize')
        .asFunction();
    this.getWindowFrameSize = dylib
        .lookup<NativeFunction<TglfwGetWindowFrameSize_Native>>(
            'glfwGetWindowFrameSize')
        .asFunction();
    this.iconifyWindow = dylib
        .lookup<NativeFunction<TglfwIconifyWindow_Native>>('glfwIconifyWindow')
        .asFunction();
    this.restoreWindow = dylib
        .lookup<NativeFunction<TglfwRestoreWindow_Native>>('glfwRestoreWindow')
        .asFunction();
    this.maximizeWindow = dylib
        .lookup<NativeFunction<TglfwMaximizeWindow_Native>>(
            'glfwMaximizeWindow')
        .asFunction();
    this.showWindow = dylib
        .lookup<NativeFunction<TglfwShowWindow_Native>>('glfwShowWindow')
        .asFunction();
    this.hideWindow = dylib
        .lookup<NativeFunction<TglfwHideWindow_Native>>('glfwHideWindow')
        .asFunction();
    this.focusWindow = dylib
        .lookup<NativeFunction<TglfwFocusWindow_Native>>('glfwFocusWindow')
        .asFunction();
    this.getWindowMonitor = dylib
        .lookup<NativeFunction<TglfwGetWindowMonitor_Native>>(
            'glfwGetWindowMonitor')
        .asFunction();
    this.setWindowMonitor = dylib
        .lookup<NativeFunction<TglfwSetWindowMonitor_Native>>(
            'glfwSetWindowMonitor')
        .asFunction();
    this.getWindowAttrib = dylib
        .lookup<NativeFunction<TglfwGetWindowAttrib_Native>>(
            'glfwGetWindowAttrib')
        .asFunction();
    this.setWindowUserPointer = dylib
        .lookup<NativeFunction<TglfwSetWindowUserPointer_Native>>(
            'glfwSetWindowUserPointer')
        .asFunction();
    this.getWindowUserPointer = dylib
        .lookup<NativeFunction<TglfwGetWindowUserPointer_Native>>(
            'glfwGetWindowUserPointer')
        .asFunction();
    this.setWindowPosCallback = dylib
        .lookup<NativeFunction<TglfwSetWindowPosCallback_Native>>(
            'glfwSetWindowPosCallback')
        .asFunction();
    this.setWindowSizeCallback = dylib
        .lookup<NativeFunction<TglfwSetWindowSizeCallback_Native>>(
            'glfwSetWindowSizeCallback')
        .asFunction();
    this.setWindowCloseCallback = dylib
        .lookup<NativeFunction<TglfwSetWindowCloseCallback_Native>>(
            'glfwSetWindowCloseCallback')
        .asFunction();
    this.setWindowRefreshCallback = dylib
        .lookup<NativeFunction<TglfwSetWindowRefreshCallback_Native>>(
            'glfwSetWindowRefreshCallback')
        .asFunction();
    this.setWindowFocusCallback = dylib
        .lookup<NativeFunction<TglfwSetWindowFocusCallback_Native>>(
            'glfwSetWindowFocusCallback')
        .asFunction();
    this.setWindowIconifyCallback = dylib
        .lookup<NativeFunction<TglfwSetWindowIconifyCallback_Native>>(
            'glfwSetWindowIconifyCallback')
        .asFunction();
    this.setFramebufferSizeCallback = dylib
        .lookup<NativeFunction<TglfwSetFramebufferSizeCallback_Native>>(
            'glfwSetFramebufferSizeCallback')
        .asFunction();
    this.pollEvents = dylib
        .lookup<NativeFunction<TglfwPollEvents_Native>>('glfwPollEvents')
        .asFunction();
    this.waitEvents = dylib
        .lookup<NativeFunction<TglfwWaitEvents_Native>>('glfwWaitEvents')
        .asFunction();
    this.waitEventsTimeout = dylib
        .lookup<NativeFunction<TglfwWaitEventsTimeout_Native>>(
            'glfwWaitEventsTimeout')
        .asFunction();
    this.postEmptyEvent = dylib
        .lookup<NativeFunction<TglfwPostEmptyEvent_Native>>(
            'glfwPostEmptyEvent')
        .asFunction();
    this.getInputMode = dylib
        .lookup<NativeFunction<TglfwGetInputMode_Native>>('glfwGetInputMode')
        .asFunction();
    this.setInputMode = dylib
        .lookup<NativeFunction<TglfwSetInputMode_Native>>('glfwSetInputMode')
        .asFunction();
    this.getKeyName = dylib
        .lookup<NativeFunction<TglfwGetKeyName_Native>>('glfwGetKeyName')
        .asFunction();
    this.getKey = dylib
        .lookup<NativeFunction<TglfwGetKey_Native>>('glfwGetKey')
        .asFunction();
    this.getMouseButton = dylib
        .lookup<NativeFunction<TglfwGetMouseButton_Native>>(
            'glfwGetMouseButton')
        .asFunction();
    this.getCursorPos = dylib
        .lookup<NativeFunction<TglfwGetCursorPos_Native>>('glfwGetCursorPos')
        .asFunction();
    this.setCursorPos = dylib
        .lookup<NativeFunction<TglfwSetCursorPos_Native>>('glfwSetCursorPos')
        .asFunction();
    this.createCursor = dylib
        .lookup<NativeFunction<TglfwCreateCursor_Native>>('glfwCreateCursor')
        .asFunction();
    this.createStandardCursor = dylib
        .lookup<NativeFunction<TglfwCreateStandardCursor_Native>>(
            'glfwCreateStandardCursor')
        .asFunction();
    this.destroyCursor = dylib
        .lookup<NativeFunction<TglfwDestroyCursor_Native>>('glfwDestroyCursor')
        .asFunction();
    this.setCursor = dylib
        .lookup<NativeFunction<TglfwSetCursor_Native>>('glfwSetCursor')
        .asFunction();
    this.setKeyCallback = dylib
        .lookup<NativeFunction<TglfwSetKeyCallback_Native>>(
            'glfwSetKeyCallback')
        .asFunction();
    this.setCharCallback = dylib
        .lookup<NativeFunction<TglfwSetCharCallback_Native>>(
            'glfwSetCharCallback')
        .asFunction();
    this.setCharModsCallback = dylib
        .lookup<NativeFunction<TglfwSetCharModsCallback_Native>>(
            'glfwSetCharModsCallback')
        .asFunction();
    this.setMouseButtonCallback = dylib
        .lookup<NativeFunction<TglfwSetMouseButtonCallback_Native>>(
            'glfwSetMouseButtonCallback')
        .asFunction();
    this.setCursorPosCallback = dylib
        .lookup<NativeFunction<TglfwSetCursorPosCallback_Native>>(
            'glfwSetCursorPosCallback')
        .asFunction();
    this.setCursorEnterCallback = dylib
        .lookup<NativeFunction<TglfwSetCursorEnterCallback_Native>>(
            'glfwSetCursorEnterCallback')
        .asFunction();
    this.setScrollCallback = dylib
        .lookup<NativeFunction<TglfwSetScrollCallback_Native>>(
            'glfwSetScrollCallback')
        .asFunction();
    this.setDropCallback = dylib
        .lookup<NativeFunction<TglfwSetDropCallback_Native>>(
            'glfwSetDropCallback')
        .asFunction();
    this.joystickPresent = dylib
        .lookup<NativeFunction<TglfwJoystickPresent_Native>>(
            'glfwJoystickPresent')
        .asFunction();
    this.getJoystickAxes = dylib
        .lookup<NativeFunction<TglfwGetJoystickAxes_Native>>(
            'glfwGetJoystickAxes')
        .asFunction();
    this.getJoystickButtons = dylib
        .lookup<NativeFunction<TglfwGetJoystickButtons_Native>>(
            'glfwGetJoystickButtons')
        .asFunction();
    this.getJoystickName = dylib
        .lookup<NativeFunction<TglfwGetJoystickName_Native>>(
            'glfwGetJoystickName')
        .asFunction();
    this.setJoystickCallback = dylib
        .lookup<NativeFunction<TglfwSetJoystickCallback_Native>>(
            'glfwSetJoystickCallback')
        .asFunction();
    this.setClipboardString = dylib
        .lookup<NativeFunction<TglfwSetClipboardString_Native>>(
            'glfwSetClipboardString')
        .asFunction();
    this.getClipboardString = dylib
        .lookup<NativeFunction<TglfwGetClipboardString_Native>>(
            'glfwGetClipboardString')
        .asFunction();
    this.getTime = dylib
        .lookup<NativeFunction<TglfwGetTime_Native>>('glfwGetTime')
        .asFunction();
    this.setTime = dylib
        .lookup<NativeFunction<TglfwSetTime_Native>>('glfwSetTime')
        .asFunction();
    this.getTimerValue = dylib
        .lookup<NativeFunction<TglfwGetTimerValue_Native>>('glfwGetTimerValue')
        .asFunction();
    this.getTimerFrequency = dylib
        .lookup<NativeFunction<TglfwGetTimerFrequency_Native>>(
            'glfwGetTimerFrequency')
        .asFunction();
    this.makeContextCurrent = dylib
        .lookup<NativeFunction<TglfwMakeContextCurrent_Native>>(
            'glfwMakeContextCurrent')
        .asFunction();
    this.getCurrentContext = dylib
        .lookup<NativeFunction<TglfwGetCurrentContext_Native>>(
            'glfwGetCurrentContext')
        .asFunction();
    this.swapBuffers = dylib
        .lookup<NativeFunction<TglfwSwapBuffers_Native>>('glfwSwapBuffers')
        .asFunction();
    this.swapInterval = dylib
        .lookup<NativeFunction<TglfwSwapInterval_Native>>('glfwSwapInterval')
        .asFunction();
  }
}
