# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mapstylr/version'

Gem::Specification.new do |spec|
  spec.name          = "mapstylr"
  spec.version       = Mapstylr::VERSION
  spec.authors       = ["Korab Hoxha"]
  spec.email         = ["korab@mozaix.net"]
  spec.description   = %q{Write a longer description or delete this line.}
  spec.summary       = %q{Create, store and publish unique google map styles}
  spec.homepage      = "https://github.com/korabh/mapstylr"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
