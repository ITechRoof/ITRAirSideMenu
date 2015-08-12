#
# Be sure to run `pod lib lint ITRAirSideMenu.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ITRAirSideMenu"
  s.version          = "0.1.0"
  s.summary          = "A short description of ITRAirSideMenu."

  s.homepage         = "https://github.com/ITechRoof/ITRAirSideMenu"
  s.license          = 'MIT'
  s.author           = { "kirthi" => "kirthi.shalom@gmail.com" }
  s.source           = { :git => "https://github.com/ITechRoof/ITRAirSideMenu.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ITRAirSideMenu' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
