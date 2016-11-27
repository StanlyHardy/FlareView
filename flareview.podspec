Pod::Spec.new do |s|
s.name             = "flareview"
s.version          = "0.0.1"
s.summary          = "Spice up your UIView"
s.description      = "Add Flares around your UIView"
s.homepage         = "https://github.com/StanlyHardy/FlareView"
s.license          = 'MIT'
s.author           = { "StanlyMoses" => "stanlyhardy@yahoo.com" }
s.source           = { :git => "https://github.com/StanlyHardy/FlareView.git", :tag => s.version.to_s }
s.platform     = :ios, '8.0'
s.requires_arc = true

# If more than one source file: https://guides.cocoapods.org/syntax/podspec.html#source_files
s.source_files = 'FlareView.c' 

end