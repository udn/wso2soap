# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wso2soap/version'

Gem::Specification.new do |spec|
  spec.name          = "wso2soap"
  spec.version       = Wso2soap::VERSION
  spec.authors       = ["Burhanudin Hakim"]
  spec.email         = ["udnpico@gmail.com"]
  spec.summary       = %q{Ruby Helper for wso2 SOAP Client}
  spec.description   = %q{Ruby Helper for wso2 SOAP Client}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
