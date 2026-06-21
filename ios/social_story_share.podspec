#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint social_story_share.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'social_story_share'
  s.version          = '0.0.1'
  s.summary          = 'Share an image to Instagram Stories with a tappable link sticker via the multi-item iOS pasteboard / Android Intent extras.'
  s.description      = <<-DESC
Flutter plugin for sharing an image to Instagram and Facebook Stories with a
tappable link sticker. On iOS it uses the multi-item UIPasteboard sticker
payload and the Stories deep links; on Android it uses Intent extras.
                       DESC
  s.homepage         = 'https://github.com/KQED/social-story-share'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'KQED' => 'mobile@kqed.org' }
  s.source           = { :path => '.' }
  s.source_files = 'social_story_share/Sources/social_story_share/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  s.resource_bundles = {'social_story_share_privacy' => ['social_story_share/Sources/social_story_share/PrivacyInfo.xcprivacy']}
end
