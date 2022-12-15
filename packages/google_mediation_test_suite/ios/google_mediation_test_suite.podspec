#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint google_mediation_test_suite.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'google_mediation_test_suite'
  s.version          = '0.0.1'
  s.summary          = 'Flutter plugin for Google Mobile Ads mediation test suite.'
  s.description      = <<-DESC
Flutter plugin for Google Mobile Ads mediation test suite.
                       DESC
  s.homepage         = 'https://github.com/googleads/googleads-mobile-flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Flutter Team' => 'flutter-dev@googlegroups.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'GoogleMobileAdsMediationTestSuite'
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.static_framework = true
  s.swift_version = '5.0'
end
