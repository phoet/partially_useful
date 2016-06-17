# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'partially_useful/version'

Gem::Specification.new do |spec|
  spec.name          = "partially_useful"
  spec.version       = PartiallyUseful::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["phoet"]
  spec.email         = ["phoetmail@googlemail.com"]
  spec.homepage      = "https://github.com/phoet/partially_useful"
  spec.license       = "extended beerware license"
  spec.summary = spec.description = "Helps finding partials in large html pages"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'railties', '>= 4.1', '< 5.1'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
