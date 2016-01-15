# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pipe_exec/version'

Gem::Specification.new do |spec|
  spec.name          = "pipe_exec"
  spec.version       = PipeExec::VERSION
  spec.authors       = ["hSATAC"]
  spec.email         = ["hsatac@gmail.com"]
  spec.summary       = %q{A simple pipe exec helper.}
  spec.description   = %q{A simple pipe exec helper.}
  spec.homepage      = "https://github.com/hSATAC/pipe_exec"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
