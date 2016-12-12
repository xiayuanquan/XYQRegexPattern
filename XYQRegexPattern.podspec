#
#  Be sure to run `pod spec lint XYQRegexPattern.podsepc.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "XYQRegexPattern"
  s.version      = "1.0.0"
  s.summary      = "A Library for iOS to use for Regex Pattern."
  s.homepage     = "https://github.com/xiayuanquan/XYQRegexPattern"
  s.license      = "MIT"
  s.author       = { "夏远全" => "13718037163@163.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/xiayuanquan/XYQRegexPattern.git", :tag => s.version}
  s.source_files = "XYQRegexPattern/*.{h,m}"
  s.requires_arc = true
  
end
