#
# Be sure to run `pod lib lint XyWidget.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XyWidget'
  s.version          = '1.2.5'
  s.summary          = '项目辅助类'
  
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/TAEYANGXU/XyWidget'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TAEYANGXU' => 'albert_xyz@163.com' }
  s.source           = { :git => 'https://github.com/TAEYANGXU/XyWidget.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  # s.source_files = 'XyWidget/Classes/**/*'
  
    s.subspec 'ViewExtension' do |viewExtension|
      viewExtension.source_files = 'XyWidget/Classes/ViewExtension/**/*'
      viewExtension.public_header_files = 'XyWidget/Classes/ViewExtension/**/*.h'
      viewExtension.dependency  'XyWidget/Const'
  end
  
  s.subspec 'Custom' do |custom|
      custom.source_files = 'XyWidget/Classes/Custom/**/*'
      custom.public_header_files = 'XyWidget/Classes/Custom/**/*.h'
  end
  
  s.subspec 'Const' do |const|
      const.source_files = 'XyWidget/Classes/Const/**/*'
      const.public_header_files = 'XyWidget/Classes/Const/**/*.h'
      # const.dependency  'XyWidget/ViewExtension'
  end
  
  s.subspec 'Categorys' do |categorys|
      categorys.source_files = 'XyWidget/Classes/Categorys/**/*'
      categorys.public_header_files = 'XyWidget/Classes/Categorys/**/*.h'
      categorys.dependency 'YYText'
  end
  
  s.subspec 'Tools' do |tools|
      tools.source_files = 'XyWidget/Classes/Tools/**/*'
      tools.public_header_files = 'XyWidget/Classes/Tools/**/*.h'
  end

  
  
  # s.resource_bundles = {
  #   'XyWidget' => ['XyWidget/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.frameworks = 'UIKit'
  s.dependency 'YYText'
  
end
