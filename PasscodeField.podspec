#
# Be sure to run `pod lib lint PasscodeField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PasscodeField'
  s.version          = '0.1.1'
  s.summary          = "Like an iOS passcode entry view."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    PasscodeField is an easy to use and confiure custom view that is perfect for
    displaying results of a secure entry field like a PIN or password. It is inspired by the
    iOS passcode screen that is used for unlocking devices. It is both IBDesignable and IBInspectable
    which makes it simple to use and configure for your own project.
                       DESC

  s.homepage         = 'https://github.com/tomomura/PasscodeField'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'famtom0518' => 'am.n04a@gmail.com' }
  s.source           = { :git => 'https://github.com/tomomura/PasscodeField.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/famtom0518'

  s.ios.deployment_target = '9.0'

  s.source_files = 'PasscodeField/Classes/**/*'
  s.frameworks = 'UIKit'
end
