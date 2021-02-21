import 'dart:ffi';
import 'dart:io';

import 'typedefs.dart';

/// Class of binders of a dynamic library GLFW3
/// It takes the path to the dynamic library GLFW3 as an argument `customPath`.
/// If `customPath` is `null` and platform is linux it will open the file `/usr/lib/x86_64-linux-gnu/libglfw.so`.
///
/// Example:
///
/// ```
/// glfw = Glfw(customPath: Platform.isWindows ? "lib\\glfw3.dll" : null, vulkan: false);
/// ```
class Glfw {
  late TglfwInit_Func init;
  late TglfwTerminate_Func terminate;
  late TglfwGetVersion_Func getVersion;
  late TglfwGetVersionString_Func getVersionString;
  late TglfwSetErrorCallback_Func setErrorCallback;
  late TglfwGetMonitors_Func getMonitors;
  late TglfwGetPrimaryMonitor_Func getPrimaryMonitor;
  late TglfwGetMonitorPos_Func getMonitorPos;
  late TglfwGetMonitorPhysicalSize_Func getMonitorPhysicalSize;
  late TglfwGetMonitorName_Func getMonitorName;
  late TglfwSetMonitorCallback_Func setMonitorCallback;
  late TglfwGetVideoModes_Func getVideoModes;
  late TglfwGetVideoMode_Func getVideoMode;
  late TglfwSetGamma_Func setGamma;
  late TglfwGetGammaRamp_Func getGammaRamp;
  late TglfwSetGammaRamp_Func setGammaRamp;
  late TglfwDefaultWindowHints_Func defaultWindowHints;
  late TglfwWindowHint_Func windowHint;
  late TglfwCreateWindow_Func createWindow;
  late TglfwDestroyWindow_Func destroyWindow;
  late TglfwWindowShouldClose_Func windowShouldClose;
  late TglfwSetWindowShouldClose_Func setWindowShouldClose;
  late TglfwSetWindowTitle_Func setWindowTitle;
  late TglfwSetWindowIcon_Func setWindowIcon;
  late TglfwGetWindowPos_Func getWindowPos;
  late TglfwSetWindowPos_Func setWindowPos;
  late TglfwGetWindowSize_Func getWindowSize;
  late TglfwSetWindowSizeLimits_Func setWindowSizeLimits;
  late TglfwSetWindowAspectRatio_Func setWindowAspectRatio;
  late TglfwSetWindowSize_Func setWindowSize;
  late TglfwGetFramebufferSize_Func getFramebufferSize;
  late TglfwGetWindowFrameSize_Func getWindowFrameSize;
  late TglfwIconifyWindow_Func iconifyWindow;
  late TglfwRestoreWindow_Func restoreWindow;
  late TglfwMaximizeWindow_Func maximizeWindow;
  late TglfwShowWindow_Func showWindow;
  late TglfwHideWindow_Func hideWindow;
  late TglfwFocusWindow_Func focusWindow;
  late TglfwGetWindowMonitor_Func getWindowMonitor;
  late TglfwSetWindowMonitor_Func setWindowMonitor;
  late TglfwGetWindowAttrib_Func getWindowAttrib;
  late TglfwSetWindowUserPointer_Func setWindowUserPointer;
  late TglfwGetWindowUserPointer_Func getWindowUserPointer;
  late TglfwSetWindowPosCallback_Func setWindowPosCallback;
  late TglfwSetWindowSizeCallback_Func setWindowSizeCallback;
  late TglfwSetWindowCloseCallback_Func setWindowCloseCallback;
  late TglfwSetWindowRefreshCallback_Func setWindowRefreshCallback;
  late TglfwSetWindowFocusCallback_Func setWindowFocusCallback;
  late TglfwSetWindowIconifyCallback_Func setWindowIconifyCallback;
  late TglfwSetFramebufferSizeCallback_Func setFramebufferSizeCallback;
  late TglfwPollEvents_Func pollEvents;
  late TglfwWaitEvents_Func waitEvents;
  late TglfwWaitEventsTimeout_Func waitEventsTimeout;
  late TglfwPostEmptyEvent_Func postEmptyEvent;
  late TglfwGetInputMode_Func getInputMode;
  late TglfwSetInputMode_Func setInputMode;
  late TglfwGetKeyName_Func getKeyName;
  late TglfwGetKey_Func getKey;
  late TglfwGetMouseButton_Func getMouseButton;
  late TglfwGetCursorPos_Func getCursorPos;
  late TglfwSetCursorPos_Func setCursorPos;
  late TglfwCreateCursor_Func createCursor;
  late TglfwCreateStandardCursor_Func createStandardCursor;
  late TglfwDestroyCursor_Func destroyCursor;
  late TglfwSetCursor_Func setCursor;
  late TglfwSetKeyCallback_Func setKeyCallback;
  late TglfwSetCharCallback_Func setCharCallback;
  late TglfwSetCharModsCallback_Func setCharModsCallback;
  late TglfwSetMouseButtonCallback_Func setMouseButtonCallback;
  late TglfwSetCursorPosCallback_Func setCursorPosCallback;
  late TglfwSetCursorEnterCallback_Func setCursorEnterCallback;
  late TglfwSetScrollCallback_Func setScrollCallback;
  late TglfwSetDropCallback_Func setDropCallback;
  late TglfwJoystickPresent_Func joystickPresent;
  late TglfwGetJoystickAxes_Func getJoystickAxes;
  late TglfwGetJoystickButtons_Func getJoystickButtons;
  late TglfwGetJoystickName_Func getJoystickName;
  late TglfwSetJoystickCallback_Func setJoystickCallback;
  late TglfwSetClipboardString_Func setClipboardString;
  late TglfwGetClipboardString_Func getClipboardString;
  late TglfwGetTime_Func getTime;
  late TglfwSetTime_Func setTime;
  late TglfwGetTimerValue_Func getTimerValue;
  late TglfwGetTimerFrequency_Func getTimerFrequency;
  late TglfwMakeContextCurrent_Func makeContextCurrent;
  late TglfwGetCurrentContext_Func getCurrentContext;
  late TglfwSwapBuffers_Func swapBuffers;
  late TglfwSwapInterval_Func swapInterval;

//vulkan
  late TglfwVulkanSupported_Func vulkanSupported;
  late TglfwGetRequiredInstanceExtensions_Func getRequiredInstanceExtensions;
  late TglfwGetInstanceProcAddress_Func getInstanceProcAddress;
  late TglfwGetPhysicalDevicePresentationSupport_Func
      getPhysicalDevicePresentationSupport;
  late TglfwCreateWindowSurface_Func createWindowSurface;

  Glfw({String? customPath, bool vulkan = false}) {
    String? path;
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

    if (vulkan) {
      this.vulkanSupported = dylib
          .lookup<NativeFunction<TglfwVulkanSupported_Native>>(
              'glfwVulkanSupported')
          .asFunction();
      this.getRequiredInstanceExtensions = dylib
          .lookup<NativeFunction<TglfwGetRequiredInstanceExtensions_Native>>(
              'glfwGetRequiredInstanceExtensions')
          .asFunction();
      this.getInstanceProcAddress =
          dylib.lookup<NativeFunction<TglfwGetInstanceProcAddress_Native>>(
              'glfwGetInstanceProcAddress') as TglfwGetInstanceProcAddress_Func;
      this.getPhysicalDevicePresentationSupport = dylib.lookup<
                  NativeFunction<
                      TglfwGetPhysicalDevicePresentationSupport_Native>>(
              'glfwGetPhysicalDevicePresentationSupport')
          as TglfwGetPhysicalDevicePresentationSupport_Func;
      this.createWindowSurface =
          dylib.lookup<NativeFunction<TglfwCreateWindowSurface_Native>>(
              'glfwCreateWindowSurface') as TglfwCreateWindowSurface_Func;
    }
  }
}
