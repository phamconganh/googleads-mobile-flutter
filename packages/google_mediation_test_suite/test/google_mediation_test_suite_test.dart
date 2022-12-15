import 'package:flutter_test/flutter_test.dart';
import 'package:google_mediation_test_suite/google_mediation_test_suite.dart';
import 'package:google_mediation_test_suite/google_mediation_test_suite_platform_interface.dart';
import 'package:google_mediation_test_suite/google_mediation_test_suite_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGoogleMediationTestSuitePlatform
    with MockPlatformInterfaceMixin
    implements GoogleMediationTestSuitePlatform {

  @override
  Future<bool> present() => Future.value(true);
}

void main() {
  final GoogleMediationTestSuitePlatform initialPlatform = GoogleMediationTestSuitePlatform.instance;

  test('$MethodChannelGoogleMediationTestSuite is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGoogleMediationTestSuite>());
  });

  test('present', () async {
    GoogleMediationTestSuite googleMediationTestSuitePlugin = GoogleMediationTestSuite.instance;
    MockGoogleMediationTestSuitePlatform fakePlatform = MockGoogleMediationTestSuitePlatform();
    GoogleMediationTestSuitePlatform.instance = fakePlatform;

    expect(await googleMediationTestSuitePlugin.present(), true);
  });
}
