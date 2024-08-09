Pod::Spec.new do |spec|
  	spec.name         = "JYScreen"
  	spec.version      = "1.0.0"
  	spec.summary      = "一个用于屏幕比例缩放的扩展"
  	spec.homepage     = "https://github.com/JYYQLin/JYScreen"
  	spec.license      = { :type => "MIT", :file => "LICENSE" }
  	spec.author       = { "JYYQLin" => "No mailBox" }
  	spec.platform     = :ios, "13.0"
  	spec.source       = { :git => "https://github.com/JYYQLin/JYScreen.git", :tag => "#{spec.version}" }
  	spec.source_files  = "JYScreen/*.{h,m,swift}"
	spec.swift_versions = ['5.0']
end
