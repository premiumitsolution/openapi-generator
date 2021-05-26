# -*- encoding: utf-8 -*-

=begin
#OpenAPI Extension with dynamic servers

#This specification shows how to use dynamic servers.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-PITS-3

=end

$:.push File.expand_path("../lib", __FILE__)
require "dynamic_servers/version"

Gem::Specification.new do |s|
  s.name        = "dynamic_servers"
  s.version     = DynamicServers::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = [""]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "OpenAPI Extension with dynamic servers Ruby Gem"
  s.description = "This specification shows how to use dynamic servers."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
