# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'netguru_theme/version'

Gem::Specification.new do |spec|
  spec.name          = "netguru_theme"
  spec.version       = NetguruTheme::VERSION
  spec.authors       = ["Mateusz Czajka"]
  spec.email         = ["mat.czajka@gmail.com"]
  spec.summary       = "Netguru Bootstrap Theme"
  spec.description   = "Netguru Bootstrap Theme"
  spec.homepage      = "https://github.com/netguru/netguru_theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('sass', '~> 3.3')
  spec.add_dependency('bourbon', '~> 4.0')
  spec.add_dependency('bootstrap-sass', '~> 3.3.0')

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
