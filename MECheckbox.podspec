#
# Be sure to run `pod lib lint MECheckbox.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MECheckbox"
  s.version          = "0.1.6"
  s.summary          = "MECheckbox - simple checkbox for UIKit"
  s.description      = "UIKit implementation of classic web checkbox via custom images"
  s.homepage         = "https://github.com/SoundBlaster/MECheckbox"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "SoundBlaster" => "egor-git@egormerkushev.ru" }
  s.source           = { :git => "https://github.com/SoundBlaster/MECheckbox.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/egormerkushev'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.{h,m}'
  s.resource_bundles = {
    'MECheckbox' => ['Pod/Assets/*.png']
  }

end
