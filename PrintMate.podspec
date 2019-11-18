#
# Be sure to run `pod lib lint PrintMate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PrintMate'
  s.version          = '1.0.0'
  s.summary          = 'Swiftly debug using PrintMate.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Swiftly debug using PrintMate.

PrintMate prints valuable information to the console to assist with swift debugging.

                       DESC

  s.homepage         = 'https://github.com/shawnynicole/PrintMate'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shawnynicole' => '21274059+shawnynicole@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/shawnynicole/PrintMate.git', :tag => "Release/#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_version = '5.0'

  s.source_files = 'PrintMate/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PrintMate' => ['PrintMate/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
