# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trump/version'

Gem::Specification.new do |spec|
  spec.name          = "Gem-Info"
  spec.version       = GemInfo::VERSION
  spec.authors       = ["Jelle Vandebeeck","Senthil Nayagam"]
  spec.email         = ["jelle@fousa.be","senthil@railsfactory.com"]
  spec.description   = %q{Add a gem to the Gemfile with more info in comments.}
  spec.summary       = %q{Add a gem to the Gemfile with more info in comments.}
  spec.homepage      = "https://github.com/senthilnayagam/gem-info"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'thor', '0.18.1'
  spec.add_dependency "json_pure", "~> 1.8.0"
  spec.add_dependency "curl_wrapper", "~> 0.0.3"
  spec.add_dependency "clipboard", "~> 1.0.5"
end
