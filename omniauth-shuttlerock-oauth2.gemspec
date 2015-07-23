# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'omniauth', 'shuttlerock_oauth2', 'version'), __FILE__)

Gem::Specification.new do |s|
  s.name        = "omniauth-shuttlerock-oauth2"
  s.version     = OmniAuth::ShuttlerockOauth2::VERSION
  s.authors     = ['Alexey Vokhmin', 'Dave Perrett', 'Oleg Dashevskii']
  s.email       = ['avokhmin@gmail.com', 'dave@recurser.com', 'be9@be9.ru']
  s.homepage    = "https://github.com/Shuttlerock/omniauth-shuttlerock-oauth2"
  s.summary     = %q{OmniAuth strategy for Shuttlerock.}
  s.description = %q{OmniAuth strategy for Shuttlerock.}

  s.rubyforge_project = "omniauth-shuttlerock-oauth2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'multi_json'
  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.3.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
