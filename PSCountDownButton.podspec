Pod::Spec.new do |s|

  s.name         = "PSCountDownButton"
  s.version      = "1.0.0"
  s.summary      = "button for countdown"
  s.description  = <<-DESC
                    a drop-in button for countdown.
                   DESC
  s.homepage     = "https://github.com/DeveloperPans/PSCountDownButton"
  s.license      = "MIT"
  s.author             = { "Pan" => "developerpans@163.com" }
  s.social_media_url = 'http://shengpan.net'
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source       = { :git => "https://github.com/DeveloperPans/PSCountDownButton.git", :tag => s.version.to_s }
  s.source_files = 'PSCountDownButton/*.{h,m}'
  s.dependency 'PSWeakProxy'
end
