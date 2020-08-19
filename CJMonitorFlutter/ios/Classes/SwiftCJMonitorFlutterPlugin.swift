import Flutter
import UIKit
import CJMonitor

public class SwiftCJMonitorFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "CJMonitorFlutter", binaryMessenger: registrar.messenger())
    let instance = SwiftCJMonitorFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if ("getPlatformVersion" == call.method) {
        result("iOS " + UIDevice.current.systemVersion)
    } else if ("showLogSuspendWindow" == call.method) {
        CJLogSuspendWindow.show(withFrame: CGRect(x:10, y:200, width:100, height:100))
        print("正在显示Log窗口")
        result("显示LogSuspendWindow后的回传给Flutter的信息");
    } else {
        result(FlutterMethodNotImplemented);
    }
  }
}
