#
# Be sure to run `pod lib lint RKSocket.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RKSocket'
  s.version          = '0.1.1'
  s.summary          = 'rokid 基础socket库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/chzy/RKSocket'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chzy' => 'yang.chunzhi@hotmail.com' }
  s.source           = { :git => 'git@gitlab.rokid-inc.com:xr_app_platform/ios/basic/rksocket.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.swift_version = '5.0'
  # s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5' }
  s.ios.deployment_target = '9.0'
  s.source_files = 'RKSocket/Classes/**/*'
  s.dependency 'SocketRocket', '~> 0.6.0'
  # s.resource_bundles = {
  #   'RKSocket' => ['RKSocket/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
