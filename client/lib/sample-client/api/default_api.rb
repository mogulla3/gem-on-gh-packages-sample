=begin
#Swagger Petstore

#A sample API that uses a petstore as an example to demonstrate features in the OpenAPI 3.0 specification

The version of the OpenAPI document: 1.0.0
Contact: apiteam@swagger.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0

=end

require 'cgi'

module SampleClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new pet in the store. Duplicates are allowed
    # @param new_pet [NewPet] Pet to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Pet]
    def add_pet(new_pet, opts = {})
      data, _status_code, _headers = add_pet_with_http_info(new_pet, opts)
      data
    end

    # Creates a new pet in the store. Duplicates are allowed
    # @param new_pet [NewPet] Pet to add to the store
    # @param [Hash] opts the optional parameters
    # @return [Array<(Pet, Integer, Hash)>] Pet data, response status code and response headers
    def add_pet_with_http_info(new_pet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.add_pet ...'
      end
      # verify the required parameter 'new_pet' is set
      if @api_client.config.client_side_validation && new_pet.nil?
        fail ArgumentError, "Missing the required parameter 'new_pet' when calling DefaultApi.add_pet"
      end
      # resource path
      local_var_path = '/pets'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(new_pet)

      # return_type
      return_type = opts[:debug_return_type] || 'Pet'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DefaultApi.add_pet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#add_pet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # deletes a single pet based on the ID supplied
    # @param id [Integer] ID of pet to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_pet(id, opts = {})
      delete_pet_with_http_info(id, opts)
      nil
    end

    # deletes a single pet based on the ID supplied
    # @param id [Integer] ID of pet to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_pet_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.delete_pet ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DefaultApi.delete_pet"
      end
      # resource path
      local_var_path = '/pets/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DefaultApi.delete_pet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#delete_pet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a user based on a single ID, if the user does not have access to the pet
    # @param id [Integer] ID of pet to fetch
    # @param [Hash] opts the optional parameters
    # @return [Pet]
    def find_pet_by_id(id, opts = {})
      data, _status_code, _headers = find_pet_by_id_with_http_info(id, opts)
      data
    end

    # Returns a user based on a single ID, if the user does not have access to the pet
    # @param id [Integer] ID of pet to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(Pet, Integer, Hash)>] Pet data, response status code and response headers
    def find_pet_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.find_pet_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DefaultApi.find_pet_by_id"
      end
      # resource path
      local_var_path = '/pets/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Pet'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DefaultApi.find_pet_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#find_pet_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns all pets from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit maximum number of results to return
    # @return [Array<Pet>]
    def find_pets(opts = {})
      data, _status_code, _headers = find_pets_with_http_info(opts)
      data
    end

    # Returns all pets from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit maximum number of results to return
    # @return [Array<(Array<Pet>, Integer, Hash)>] Array<Pet> data, response status code and response headers
    def find_pets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.find_pets ...'
      end
      # resource path
      local_var_path = '/pets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tags'] = @api_client.build_collection_param(opts[:'tags'], :multi) if !opts[:'tags'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Pet>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DefaultApi.find_pets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#find_pets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
