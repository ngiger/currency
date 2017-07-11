# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'currency/version'

Gem::Specification.new do |spec|
  spec.name        = "ycurrency"
  spec.version     = Currency::VERSION
  spec.author      = "Masaomi Hatakeyama, Zeno R.R. Davatz, Niklaus Giger"
  spec.email       = "mhatakeyama@ywesee.com, zdavatz@ywesee.com, ngiger@ywesee.com"
  spec.description = "Simple local DRb-service for Currency-Conversion."
  spec.summary     = "browser based orders of medical drugs"
  spec.homepage    = "https://github.com/zdavatz/currency"
  spec.license       = "GPL-v2"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "flexmock"
  spec.add_development_dependency "rspec"
end

