#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_admob_app_open.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_admob_app_open'
  s.version          = '0.0.1'
  s.summary          = 'Admob App Open ads for flutter'
  s.description      = <<-DESC
Admob App Open ads for flutter
                       DESC
  s.homepage         = 'https://ivoca.io'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Google-Mobile-Ads-SDK','8.5.0'
  s.ios.deployment_target = '8.0'
  s.static_framework = true
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
