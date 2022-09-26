#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_zxing.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_zxing'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'

  # telling linker to include opencv2 framework
  s.xcconfig = { 
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++20',
  }

  # including C++ library
  s.library = 'c++'

  # # Set as a static lib
  # s.static_framework = true

  # module_map is needed so this module can be used as a framework
  s.module_map = 'flutter_zxing.modulemap'
end
