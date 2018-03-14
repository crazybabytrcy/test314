#
# Be sure to run `pod lib lint test314.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'test314'
  s.version          = '0.1.1'
  s.summary          = 'test314.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'test314.test314.test314.test314.'

  s.homepage         = 'https://github.com/xuebing.li/test314'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xuebing.li' => 'xuebing.li@china.zhaogang.com' }
  s.source           = { :git => 'https://github.com/crazybabytrcy/test314.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.source_files = 'test314/Classes/**/*'
  
  s.subspec 'Base' do |b|
      b.source_files = 'test314/Classes/Base/**/*'
  end
  
  s.subspec 'Category' do |c|
      c.source_files = 'test314/Classes/Category/**/*'
  end
  
  s.subspec 'NetWork' do |n|
      n.source_files = 'test314/Classes/NetWork/**/*'
      n.dependency 'AFNetworking'
  end
  
  s.subspec 'Tool' do |t|
      t.source_files = 'test314/Classes/Tool/**/*'
  end

  #s.source_files = 'test314/Classes/**/*'
  
  # s.resource_bundles = {
  #   'test314' => ['test314/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
