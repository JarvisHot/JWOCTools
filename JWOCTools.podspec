

Pod::Spec.new do |spec|


  spec.name         = "JWOCTools"
  spec.version      = "0.0.2"
  spec.summary      = "OC develop tools."
  s.requires_arc = true
 

  spec.homepage     = "https://github.com/JarvisHot/JWOCTools"
  
  spec.license      = { :type => "MIT", :file => "LICENSE"}
  
  spec.author             = { "jarvis🚴" => "objectclass@163.com" }
  

  spec.source       = { :git => "https://github.com/JarvisHot/JWOCTools.git", :tag => "0.0.1" }


  spec.source_files  = "JWOCTools", "JWOCTools/**/*.{h,m}"
  s.ios.deployment_target = '9.0'

end
