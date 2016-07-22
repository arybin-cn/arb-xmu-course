# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arb/xmu/course/version'

Gem::Specification.new do |spec|
  spec.name          = "arb-xmu-course"
  spec.version       = Arb::Xmu::Course::VERSION
  spec.authors       = ["arybin"]
  spec.email         = ["arybin@163.com"]

  spec.summary       = %q{XMU Course}
  spec.description   = %q{XMU Course}
  spec.homepage      = 'https://github.com/arybin-cn/arb-xmu-course'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = 'arb-xmu-course'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
