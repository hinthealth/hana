# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hana'

Gem::Specification.new do |spec|
  spec.name          = "hana"
  spec.version       = Hana::VERSION
  spec.authors       = ["Aaron Patterson"]
  spec.email         = ["aaron@tenderlovemaking.com"]
  spec.summary       = %q{Implementation of JSON Patch and JSON Pointer RFC.}
  spec.homepage      = "http://github.com/tenderlove/hana"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "minitest", "~> 5.0"
end
