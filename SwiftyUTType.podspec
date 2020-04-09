#
# Be sure to run `pod lib lint SwiftyUTType.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyUTType'
  s.version          = '1.0.3'
  s.summary          = 'Lightweight framework for working with uniform type identifiers.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Lightweight framework for working with uniform type identifiers as a structured data type.
                        DESC

  s.homepage         = 'https://github.com/NoodleOfDeath/SwiftyUTType'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'NoodleOfDeath' => 'git@noodleofdeath.com' }
  s.source           = { :git => 'https://github.com/NoodleOfDeath/SwiftyUTType.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"
  s.swift_version = '5.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }

  s.source_files = 'SwiftyUTType/Classes/**/*{h,m,swift}'

  # s.resource_bundles = {
  #   'SwiftyUTType' => ['SwiftyUTType/Assets/*.png']
  # }

  # s.public_header_files = 'SwiftyUTType/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'Foundation'
  s.frameworks = 'CoreServices'
end
