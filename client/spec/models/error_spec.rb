=begin
#Swagger Petstore

#A sample API that uses a petstore as an example to demonstrate features in the OpenAPI 3.0 specification

The version of the OpenAPI document: 1.0.0
Contact: apiteam@swagger.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SampleClient::Error
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe SampleClient::Error do
  let(:instance) { SampleClient::Error.new }

  describe 'test an instance of Error' do
    it 'should create an instance of Error' do
      expect(instance).to be_instance_of(SampleClient::Error)
    end
  end
  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
