Pod::Spec.new do |s|

  s.name         = 'ITRAirSideMenu'
  s.version      = '1.0.2'
  s.summary      = 'Navigation similar to Flipkart drawer navigation'
  s.homepage     = 'https://github.com/ITechRoof/ITRAirSideMenu'
  
  s.license      = { :type => 'MIT', :file => 'FILE_LICENSE' }

  s.author       = { 'Kiruthika' => 'kirthi.shalom@gmail.com' }
  s.platform     = :ios, '7.0'
  s.source       = { :git => 'https://github.com/ITechRoof/ITRAirSideMenu.git', :tag => s.version.to_s }
  s.source_files = 'classes/*.{h,m}'
  s.frameworks   = 'UIKit'
  s.requires_arc = true

end
