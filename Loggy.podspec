Pod::Spec.new do |s|
  s.name          = "Loggy"
  s.version       = "1.0"
  
  s.summary       = "An attempt at providing a more Swift-like os_log."
  s.description   = <<~END
    LogExperiment: An attempt at providing a more Swift-like os_log.
  END
  s.homepage      = "https://github.com/zwaldowski/LogExperiment"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = "Zachary Waldowski"
  
  s.ios.deployment_target = "11.0"
  s.osx.deployment_target = "10.12"
  
  s.source        = { :git => "https://github.com/zwaldowski/LogExperiment.git", :tag => "#{s.version}" }
  s.source_files  = "Loggy/**/*.{swift,m,c,h}"
  
  s.swift_version = "4.0"
end
