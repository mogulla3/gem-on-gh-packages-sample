=begin
#Swagger Petstore

#abcdefghijklmn

The version of the OpenAPI document: 1.0.0
Contact: apiteam@swagger.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

# Common files
require 'sample-client/api_client'
require 'sample-client/api_error'
require 'sample-client/version'
require 'sample-client/configuration'

# Models
require 'sample-client/models/error'
require 'sample-client/models/new_pet'
require 'sample-client/models/pet'
require 'sample-client/models/pet_all_of'

# APIs
require 'sample-client/api/default_api'

module SampleClient
  class << self
    # Customize default settings for the SDK using block.
    #   SampleClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
