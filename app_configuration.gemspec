# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'app_configuration/version'

Gem::Specification.new do |gem|
  gem.name          = "app_configuration"
  gem.version       = AppConfiguration::VERSION
  gem.authors       = ["Guido Marucci Blas"]
  gem.email         = ["guidomb@gmail.com"]
  gem.description   = %q{A gem to handle ruby application configurations using both YAML config files or environmental variables}
  gem.summary       = %q{A gem to handle ruby application configurations}
  gem.homepage      = "http://github.com/guidomb/app_configuration"

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
  gem.add_runtime_dependency "thor", '~> 0.18.1'
  gem.add_runtime_dependency 'pry'
  gem.add_runtime_dependency 'pry-nav'
  gem.add_runtime_dependency 'pry-stack_explorer'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
