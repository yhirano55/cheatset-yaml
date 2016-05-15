# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cheatset/yaml/version'

Gem::Specification.new do |spec|
  spec.name        = 'cheatset-yaml'
  spec.version     = Cheatset::YAML::VERSION
  spec.authors     = ['Yoshiyuki Hirano']
  spec.description = %q{Generate cheatsheet for Dash with YAML}
  spec.summary     = spec.description
  spec.homepage    = 'https://github.com/yhirano55/cheatset-yaml'
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'thor'
  spec.add_dependency 'cheatset'
end
