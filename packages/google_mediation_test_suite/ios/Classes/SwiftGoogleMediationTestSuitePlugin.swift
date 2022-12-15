import Flutter
import UIKit
import GoogleMobileAdsMediationTestSuite

public class SwiftGoogleMediationTestSuitePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "plugins.flutter.io/google_mediation_test_suite", binaryMessenger: registrar.messenger())
    let instance = SwiftGoogleMediationTestSuitePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method == "present" ) {
      let viewController: UIViewController =
        (UIApplication.shared.delegate?.window??.rootViewController)!;
      GoogleMobileAdsMediationTestSuite.present(on: viewController, delegate: nil)
      return result(true)
    }
    else {
      result(FlutterMethodNotImplemented)
      return
    }
  }
}
