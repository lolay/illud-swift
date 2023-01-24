Pod::Spec.new do |s|
  s.name = 'LolayIllud'
  s.version = '5.0'
  s.license = {:type => 'Apache License, Version 2.0', :file => 'LICENSE'}
  s.summary = 'Lolay localization tools'
  s.homepage = 'https://github.com/lolay/illud-swift'
  s.authors = { 'Lolay, Inc.' => 'info@lolay.com' }
  s.source = { :git => 'https://github.com/lolay/illud-swift.git', :tag => s.version }
  s.swift_version = "5.0"
  s.module_name = "LolayIllud"
  s.ios.deployment_target = '16.0'
  s.source_files = 'LolayIllud/*.swift'
end
