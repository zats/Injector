#
#  Be sure to run `pod spec lint Injector.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "Injector"
  s.version      = "0.2"
  s.summary      = "Naive dependancy injection for Swift"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author       = { "Sash Zats" => "sash@zats.io" }
  s.social_media_url   = "http://twitter.com/zats"
  s.homepage     = "https://github.com/zats/Injector"
  s.source       = { :git => "https://github.com/zats/Injector.git", :tag => "#{s.version}" }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.requires_arc = true
  s.source_files = "Sources/**/*.{swift,h}"
end
