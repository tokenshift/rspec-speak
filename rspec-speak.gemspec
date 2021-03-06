# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rspec-speak"
  spec.version       = "1.0"
  spec.authors       = ["Nathan Clark"]
  spec.email         = ["Nathan.Clark@tokenshift.com"]
  spec.summary       = %q{Listen to your tests.}
  spec.description   = %q{No, really. Listen.}
  spec.homepage      = "https://github.com/tokenshift/rspec-speak"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
