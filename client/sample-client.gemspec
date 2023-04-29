# -*- encoding: utf-8 -*-

=begin
#Swagger Petstore

#abcdefghijkl

The version of the OpenAPI document: 1.0.0
Contact: apiteam@swagger.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "sample-client/version"

Gem::Specification.new do |s|
  s.name        = "sample-client"
  s.version     = SampleClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["mogulla3"]
  s.email       = ["mogulla3@example.com"]
  s.homepage    = "https://github.com/mogulla3/gem-on-gh-packages-sample"
  s.summary     = "Swagger Petstore Ruby Gem"
  s.description = "abcdefghijkl"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"

  s.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/mogulla3"
  s.metadata["github_repo"] = "ssh://github.com/mogulla3/gem-on-gh-packages-sample"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
