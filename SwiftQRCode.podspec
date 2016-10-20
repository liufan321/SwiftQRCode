Pod::Spec.new do |s|
  s.name         = "SwiftQRCode"
  s.version      = "3.0.2"
  s.summary      = "Simple QRCode detector and generator in Swift"
  s.homepage     = "https://github.com/liufan321/QRCode"
  s.license      = "MIT"
  s.author       = { "Fan Liu" => "liufan321@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/liufan321/SwiftQRCode.git", :tag => s.version }
  s.source_files  = "QRCode/Source/*.swift"
  s.framework  = "AVFoundation"
  s.requires_arc = true
end
