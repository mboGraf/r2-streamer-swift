Pod::Spec.new do |s|

  s.name         = "R2Streamer"
  s.version      = "1.0.7"
  s.summary      = "R2 Streamer"
  s.homepage     = "http://readium.github.io"
  s.license      = "BSD 3-Clause License"
  s.author       = { "Aferdita Muriqi" => "aferdita.muriqi@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/mboGraf/r2-streamer-swift.git", :branch => "develop" }
  s.resource     = "r2-streamer-swift/fonts/*"
  s.source_files  = ["r2-streamer-swift/**/*.{m,h,swift}", "Sources/**/*.{m,h,swift}"]
  s.exclude_files = ["**/Info*.plist","**/Carthage/*"]
  s.xcconfig            = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/R2Streamer/**"' ,
  'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  s.swift_version  = "4.2"

  s.libraries =  'z'

  s.dependency 'R2Shared'
  s.dependency 'Fuzi'
  s.dependency 'CryptoSwift'
  s.dependency 'GCDWebServer'
  s.dependency 'Minizip'

end
