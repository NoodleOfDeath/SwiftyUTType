Pod::Spec.new do |s|

  s.name             = 'SwiftyUTType'
  s.version          = '1.0.3'
  s.summary          = 'Lightweight framework for working with uniform type identifiers.'

  s.description      = <<-DESC
                       Lightweight framework for working with uniform type identifiers as a structured data type.
                       DESC

  s.homepage         = 'https://github.com/NoodleOfDeath/SwiftyUTType'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'NoodleOfDeath' => 'git@noodleofdeath.com' }
  s.source           = { :git => 'https://github.com/NoodleOfDeath/SwiftyUTType.git', :tag => s.version.to_s }

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"
  s.swift_version = '5.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }

  s.source_files = 'SwiftyUTType/Classes/**/*{h,m,swift}'

  s.frameworks = 'CoreServices'

end
