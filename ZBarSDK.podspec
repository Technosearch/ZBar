Pod::Spec.new do |s|

  s.name         = "ZBarSDK"
  s.version      = "1.3.2"
  s.summary      = "ZBarSDK for iOS."
  s.description  = "ZBarSDK is a library for iOS which is open source software suite for reading bar codes from various sources, such as video streams, image files and raw intensity sensors"
  s.homepage     = "https://github.com/Technosearch/ZBar"
  s.license      = "MIT"
  s.author             = { "Aakash" => "guptaaakash52@gmail.com" }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/Technosearch/ZBar.git"}
  s.source_files  = "include/zbar.h","zbar/**/*.h", "iphone/*.h", "iphone/include/**/*.h", "zbar/{config,decoder,error,image,img_scanner,refcnt,scanner,symbol}.c","zbar/decoder/{codabar,code39,code93,code128,databar,ean,i25,qr_finder}.c",
    "zbar/qrcode/*.c", "iphone/*.m"
    
  s.public_header_files =  "iphone/**/**/*.h", "include/*.h"
  s.resources  = "iphone/res/{zbar-*.png,zbar-help.html}"
  s.frameworks = "AVFoundation", "CoreGraphics" , "CoreMedia", "CoreVideo", "QuartzCore"
  s.library = "iconv"
  s.xcconfig = { "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphoneos*][arch=*]" => "ZBarReaderViewImpl_Simulator.m",
  "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphonesimulator*][arch=*]" => "ZBarReaderViewImpl_Capture.m ZBarCaptureReader.m",
  "GCC_PREPROCESSOR_DEFINITIONS" => "NDEBUG=1"}
  s.prefix_header_file = "iphone/include/prefix.pch"
  s.compiler_flags = "-w"
  s.requires_arc = false
  
end

