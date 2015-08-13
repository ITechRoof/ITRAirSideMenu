Pod::Spec.new do |s|

  s.name         = 'ITRAirSideMenu'
  s.version      = '0.0.1'
  s.summary      = 'Navigation similar to Flipkart drawer navigation'
  s.homepage     = 'https://github.com/ITechRoof/ITRAirSideMenu'
  
  s.license      = { :type => 'MIT', :file => 'FILE_LICENSE' }

  s.author       = { 'Kiruthika' => 'kirthi.shalom@gmail.com' }
  s.platform     = :ios, '7.0'
  s.source       = { :git => 'https://github.com/ITechRoof/ITRAirSideMenu.git', :tag => '0.0.1' }
  s.source_files = 'Classes/*.{h,m}'
  s.frameworks   = 'UIKit'
  s.requires_arc = true

end
