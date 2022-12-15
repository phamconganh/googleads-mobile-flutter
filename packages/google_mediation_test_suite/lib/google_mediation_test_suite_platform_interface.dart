import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'google_mediation_test_suite_method_channel.dart';

abstract class GoogleMediationTestSuitePlatform extends PlatformInterface {
  /// Constructs a GoogleMediationTestSuitePlatform.
  GoogleMediationTestSuitePlatform() : super(token: _token);

  static final Object _token = Object();

  static GoogleMediationTestSuitePlatform _instance = MethodChannelGoogleMediationTestSuite();

  /// The default instance of [GoogleMediationTestSuitePlatform] to use.
  ///
  /// Defaults to [MethodChannelGoogleMediationTestSuite].
  static GoogleMediationTestSuitePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GoogleMediationTestSuitePlatform] when
  /// they register themselves.
  static set instance(GoogleMediationTestSuitePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> present() {
    throw UnimplementedError('present() has not been implemented.');
  }
}
