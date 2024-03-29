# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_scrabble/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_scrabble"
  spec.version       = RubyScrabble::VERSION
  spec.authors       = ["Brandon Weaver"]
  spec.email         = ["keystonelemur@gmail.com"]
  spec.summary       = 'A Ruby variant of Scrabble'
  spec.description   = 'A Ruby variant of Scrabble with solver capabilities'
  spec.homepage      = "https://www.github.com/baweaver/ruby_scrabble"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
