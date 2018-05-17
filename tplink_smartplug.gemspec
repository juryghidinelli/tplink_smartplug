# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tplink_smartplug/version'

Gem::Specification.new do |spec|
  spec.name          = "tplink_smartplug"
  spec.version       = TplinkSmartplug::VERSION
  spec.authors       = ["Jury Ghidinelli"]
  spec.email         = ["juryghidinelli@gmail.com"]
  spec.summary       = %q{Connect to TP-Link HS100 and HS110 WiFi Smart Plugs}
  spec.description   = %q{From an idea of https://github.com/softScheck/tplink-smartplug, this is a ruby
port of that work to control TP-Link Smart Home protocol to control TP-Link HS100 and HS110 WiFi Smart Plugs}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
