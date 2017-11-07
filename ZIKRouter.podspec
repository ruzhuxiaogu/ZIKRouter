Pod::Spec.new do |s|

  s.name         = "ZIKRouter"
  s.version      = "0.8.0"
  s.summary      = "Type safe iOS router for discovering modules and injecting dependencies with protocol in both Swift and Objective-C."
  s.description  = <<-DESC
                Type safe iOS router for discovering modules and injecting dependencies with protocol in both Swift and Objective-C, designed for VIPER. The view router can perform all navigation types in UIKit through one method. The service router can discover service with protocol.
                   DESC
  s.homepage         = "https://github.com/Zuikyo/ZIKRouter"
  s.license      = "MIT"
  s.author       = { "Zuikyo" => "zuilongzhizhu@gmail.com" }

  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/Zuikyo/ZIKRouter.git", :tag => "#{s.version}" }

  s.source_files  = "ZIKRouter/*.{h,m}","ZIKRouter/**/*.{h,m}"
  s.public_header_files = "ZIKRouter/*.h",
                          "ZIKRouter/Router/*.h",
                          "ZIKRouter/ViewRouter/*.h",
                          "ZIKRouter/ServiceRouter/*.h",
                          "ZIKRouter/Adapter/*.h",
                          "ZIKRouter/Utilities/*.h",
                          "ZIKRouter/Extensions/*.h",
                          "ZIKRouter/Framework/*.h"
  s.preserve_path = 'ZIKRouter/Framework/module.modulemap'
  s.module_map = 'ZIKRouter/Framework/module.modulemap'

  s.frameworks = "Foundation", "UIKit"
  s.requires_arc = true

end
