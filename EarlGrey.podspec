
Pod::Spec.new do |spec|
  spec.name             = "EarlGrey"
  spec.version          = "1.1.0"
  spec.license          = { :type => "Apache 2.0, CC-BY 4.0", :file => "EarlGrey/LICENSE" }
  spec.homepage         = 'http://google.github.io/EarlGrey'
  spec.author           = "test"
  spec.platform         = :ios, '8.0'
  spec.requires_arc     = true
  spec.summary          = "test."
  spec.source           = { :http => "file://#{`pwd`.strip}/EarlGrey.zip"}
  spec.frameworks       = 'CoreData', 'CoreFoundation', 'CoreGraphics', 'Foundation', 'IOKit', 'QuartzCore', 'UIKit', 'XCTest'
  spec.vendored_framework     = "EarlGrey/EarlGrey.framework"
  spec.preserve_path = 'EarlGrey/CHANGELOG.md', 'EarlGrey/README.md', 'EarlGrey/LICENSE'
  spec.pod_target_xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PLATFORM_DIR)/Developer/Library/Frameworks','ENABLE_BITCODE' => 'NO', 'OTHER_CFLAGS' => '-fobjc-arc-exceptions' }
end
