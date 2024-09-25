Pod::Spec.new do |s|
  s.name             = 'hyperpay_sdk'
  s.version          = '5.1.0'
  s.summary          = 'A new Flutter project.'
  s.description      = 'DESC A new Flutter project.DESC'
  s.homepage         = 'https://pub.dev/packages/hyperpay_plugin'
  s.license          = { :file => 'LICENSE' }
  s.author           = { 'houzifaKroom' => 'houzifaKroom@gmail.com' }
  s.source           = { :path => '.' }

  s.preserve_paths = 'OPPWAMobile.xcframework', 'ipworks3ds_sdk.xcframework'
  s.vendored_frameworks = 'OPPWAMobile.xcframework', 'ipworks3ds_sdk.xcframework'

  # Enforce Swift 5.10 version
  s.xcconfig = {
    'SWIFT_VERSION' => '6.0',
    'OTHER_LDFLAGS' => '-framework OPPWAMobile -framework ipworks3ds_sdk'
  }
  
  # Mark as a static framework
  s.static_framework = true
end
