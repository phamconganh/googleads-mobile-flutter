import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_mediation_test_suite/google_mediation_test_suite_method_channel.dart';

void main() {
  MethodChannelGoogleMediationTestSuite platform = MethodChannelGoogleMediationTestSuite();
  const MethodChannel channel = MethodChannel('google_mediation_test_suite');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('present', () async {
    expect(await platform.present(), true);
  });
}
