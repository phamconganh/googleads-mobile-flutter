import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'google_mediation_test_suite_platform_interface.dart';

/// An implementation of [GoogleMediationTestSuitePlatform] that uses method channels.
class MethodChannelGoogleMediationTestSuite extends GoogleMediationTestSuitePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugins.flutter.io/google_mediation_test_suite');

  @override
  Future<bool> present() async {
    try {
      return await methodChannel.invokeMethod('present');
    } on PlatformException catch (e) {
      debugPrint(e.message);
    }
    return false;
  }
}
