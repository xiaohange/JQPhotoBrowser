Pod::Spec.new do |s|
  s.name         = 'JQPhotoBrowser'
  s.summary      = 'A simple photo browser'
  s.version      = '1.0.0'
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "韩俊强" => "532167805@qq.com" }
  s.homepage     = 'https://github.com/xiaohange/JQPhotoBrowser'
  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.source       = { :git => 'https://github.com/xiaohange/JQPhotoBrowser.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'JQPhotoBrowser/**/*.{h,m}'
  s.public_header_files = 'JQPhotoBrowser/**/*.{h}'


  s.frameworks = 'Foundation','UIKit'
  s.dependency 'SDWebImage'

end
