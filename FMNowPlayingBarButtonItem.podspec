#
# Be sure to run `pod lib lint FMNowPlayingBarButtonItem.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "FMNowPlayingBarButtonItem"
  s.version          = "0.1.0"
  s.summary          = "A Now Playing navigation bar button that emulates the one found in the Music app."
  s.description      = <<-DESC
                       A Now Playing navigation bar button that emulates the one found in the Music app. Designed for both iOS 6 and 7.
                       DESC
  s.homepage         = "https://github.com/formal-method/FMNowPlayingBarButtonItem"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Kyle Shank" => "kyle@formalmethod.net" }
  s.source           = { :git => "https://github.com/formal-method/FMNowPlayingBarButtonItem.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/formal_method'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resources = 'Pod/Assets/*.png'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
