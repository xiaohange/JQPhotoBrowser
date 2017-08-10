Pod::Spec.new do |s|
s.name         = "JQPhotoBrowser"
s.version      = "1.0.2"
s.summary      = "A copy of WeChat's picture browser."
s.homepage     = "https://github.com/xiaohange/JQPhotoBrowser"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "韩俊强" => "532167805@qq.com" }
s.platform     = :ios, "7.0"
s.ios.deployment_target = "7.0"
s.source       = { :git => "https://github.com/xiaohange/JQPhotoBrowser.git", :tag => s.version.to_s }
s.source_files  = "JQPhotoBrowser/**/*.{h,m}"
s.public_header_files = "JQPhotoBrowser/**/*.h"
s.dependency   "SDWebImage"
s.requires_arc = true
end

