# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ducksboard_reporter/mysql/version"

Gem::Specification.new do |spec|
  spec.name          = "ducksboard_reporter_mysql"
  spec.version       = DucksboardReporter::Reporters::MySql::VERSION
  spec.authors       = ["prosac"]
  spec.email         = ["jo@mediaparadise.net"]
  spec.summary       = %q{Reports mysql values to ducksboard}
  spec.description   = %q{Reports mysql values to ducksboard}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "ducksboard_reporter", "~> 0.1.6"
end
