import 'google_mediation_test_suite_platform_interface.dart';

class GoogleMediationTestSuite {
  GoogleMediationTestSuite._();

  static final GoogleMediationTestSuite _instance =
      GoogleMediationTestSuite._();

  static GoogleMediationTestSuite get instance => _instance;

  Future<bool> present() {
    return GoogleMediationTestSuitePlatform.instance.present();
  }
}
