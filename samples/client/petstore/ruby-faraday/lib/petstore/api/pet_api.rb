=begin
#OpenAPI Petstore

#This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-PITS-4

=end

require 'cgi'

module Petstore
  class PetApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a new pet to the store
    # @param pet [Pet] Pet object that needs to be added to the store
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_pet(pet, opts = {})
      add_pet_with_http_info(pet, opts)
      nil
    end

    # Add a new pet to the store
    # @param pet [Pet] Pet object that needs to be added to the store
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_pet_with_http_info(pet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PetApi.add_pet ...'
      end
      # verify the required parameter 'pet' is set
      if @api_client.config.client_side_validation && pet.nil?
        fail ArgumentError, "Missing the required parameter 'pet' when calling PetApi.add_pet"
      end
      # resource path
      local_var_path = '/pet'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(pet)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['petstore_auth']

      new_options = opts.merge(
        :operation => :"PetApi.add_pet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PetApi#add_pet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a pet
    # @param pet_id [Integer] Pet id to delete
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key 
    # @return [nil]
    def delete_pet(pet_id, opts = {})
      delete_pet_with_http_info(pet_id, opts)
      nil
    end

    # Deletes a pet
    # @param pet_id [Integer] Pet id to delete
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_pet_with_http_info(pet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PetApi.delete_pet ...'
      end
      # verify the required parameter 'pet_id' is set
      if @api_client.config.client_side_validation && pet_id.nil?
        fail ArgumentError, "Missing the required parameter 'pet_id' when calling PetApi.delete_pet"
      end
      # resource path
      local_var_path = '/pet/{petId}'.sub('{' + 'petId' + '}', CGI.escape(pet_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'api_key'] = opts[:'api_key'] if !opts[:'api_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['petstore_auth']

      new_options = opts.merge(
        :operation => :"PetApi.delete_pet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PetApi#delete_pet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finds Pets by status
    # Multiple status values can be provided with comma separated strings
    # @param status [Array<String>] Status values that need to be considered for filter
    # @param [Hash] opts the optional parameters
    # @return [Array<Pet>]
    def find_pets_by_status(status, opts = {})
      data, _status_code, _headers = find_pets_by_status_with_http_info(status, opts)
      data
    end

    # Finds Pets by status
    # Multiple status values can be provided with comma separated strings
    # @param status [Array<String>] Status values that need to be considered for filter
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Pet>, Integer, Hash)>] Array<Pet> data, response status code and response headers
    def find_pets_by_status_with_http_info(status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PetApi.find_pets_by_status ...'
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling PetApi.find_pets_by_status"
      end
      # resource path
      local_var_path = '/pet/findByStatus'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = @api_client.build_collection_param(status, :csv)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Pet>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['petstore_auth']

      new_options = opts.merge(
        :operation => :"PetApi.find_pets_by_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PetApi#find_pets_by_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finds Pets by tags
    # Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
    # @param tags [Array<String>] Tags to filter by
    # @param [Hash] opts the optional parameters
    # @return [Array<Pet>]
    def find_pets_by_tags(tags, opts = {})
      data, _status_code, _headers = find_pets_by_tags_with_http_info(tags, opts)
      data
    end

    # Finds Pets by tags
    # Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
    # @param tags [Array<String>] Tags to filter by
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Pet>, Integer, Hash)>] Array<Pet> data, response status code and response headers
    def find_pets_by_tags_with_http_info(tags, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PetApi.find_pets_by_tags ...'
      end
      # verify the required parameter 'tags' is set
      if @api_client.config.client_side_validation && tags.nil?
        fail ArgumentError, "Missing the required parameter 'tags' when calling PetApi.find_pets_by_tags"
      end
      # resource path
      local_var_path = '/pet/findByTags'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tags'] = @api_client.build_collection_param(tags, :csv)

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Pet>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['petstore_auth']

      new_options = opts.merge(
        :operation => :"PetApi.find_pets_by_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PetApi#find_pets_by_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find pet by ID
    # Returns a single pet
    # @param pet_id [Integer] ID of pet to return
    # @param [Hash] opts the optional parameters
    # @return [Pet]
    def get_pet_by_id(pet_id, opts = {})
      data, _status_code, _headers = get_pet_by_id_with_http_info(pet_id, opts)
      data
    end

    # Find pet by ID
    # Returns a single pet
    # @param pet_id [Integer] ID of pet to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(Pet, Integer, Hash)>] Pet data, response status code and response headers
    def get_pet_by_id_with_http_info(pet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PetApi.get_pet_by_id ...'
      end
      # verify the required parameter 'pet_id' is set
      if @api_client.config.client_side_validation && pet_id.nil?
        fail ArgumentError, "Missing the required parameter 'pet_id' when calling PetApi.get_pet_by_id"
      end
      # resource path
      local_var_path = '/pet/{petId}'.sub('{' + 'petId' + '}', CGI.escape(pet_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Pet'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"PetApi.get_pet_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PetApi#get_pet_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing pet
    # @param pet [Pet] Pet object that needs to be added to the store
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_pet(pet, opts = {})
      update_pet_with_http_info(pet, opts)
      nil
    end

    # Update an existing pet
    # @param pet [Pet] Pet object that needs to be added to the store
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_pet_with_http_info(pet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PetApi.update_pet ...'
      end
      # verify the required parameter 'pet' is set
      if @api_client.config.client_side_validation && pet.nil?
        fail ArgumentError, "Missing the required parameter 'pet' when calling PetApi.update_pet"
      end
      # resource path
      local_var_path = '/pet'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(pet)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['petstore_auth']

      new_options = opts.merge(
        :operation => :"PetApi.update_pet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PetApi#update_pet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a pet in the store with form data
    # @param pet_id [Integer] ID of pet that needs to be updated
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Updated name of the pet
    # @option opts [String] :status Updated status of the pet
    # @return [nil]
    def update_pet_with_form(pet_id, opts = {})
      update_pet_with_form_with_http_info(pet_id, opts)
      nil
    end

    # Updates a pet in the store with form data
    # @param pet_id [Integer] ID of pet that needs to be updated
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Updated name of the pet
    # @option opts [String] :status Updated status of the pet
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_pet_with_form_with_http_info(pet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PetApi.update_pet_with_form ...'
      end
      # verify the required parameter 'pet_id' is set
      if @api_client.config.client_side_validation && pet_id.nil?
        fail ArgumentError, "Missing the required parameter 'pet_id' when calling PetApi.update_pet_with_form"
      end
      # resource path
      local_var_path = '/pet/{petId}'.sub('{' + 'petId' + '}', CGI.escape(pet_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['name'] = opts[:'name'] if !opts[:'name'].nil?
      form_params['status'] = opts[:'status'] if !opts[:'status'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['petstore_auth']

      new_options = opts.merge(
        :operation => :"PetApi.update_pet_with_form",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PetApi#update_pet_with_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # uploads an image
    # @param pet_id [Integer] ID of pet to update
    # @param [Hash] opts the optional parameters
    # @option opts [String] :additional_metadata Additional data to pass to server
    # @option opts [File] :file file to upload
    # @return [ApiResponse]
    def upload_file(pet_id, opts = {})
      data, _status_code, _headers = upload_file_with_http_info(pet_id, opts)
      data
    end

    # uploads an image
    # @param pet_id [Integer] ID of pet to update
    # @param [Hash] opts the optional parameters
    # @option opts [String] :additional_metadata Additional data to pass to server
    # @option opts [File] :file file to upload
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def upload_file_with_http_info(pet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PetApi.upload_file ...'
      end
      # verify the required parameter 'pet_id' is set
      if @api_client.config.client_side_validation && pet_id.nil?
        fail ArgumentError, "Missing the required parameter 'pet_id' when calling PetApi.upload_file"
      end
      # resource path
      local_var_path = '/pet/{petId}/uploadImage'.sub('{' + 'petId' + '}', CGI.escape(pet_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['additionalMetadata'] = opts[:'additional_metadata'] if !opts[:'additional_metadata'].nil?
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['petstore_auth']

      new_options = opts.merge(
        :operation => :"PetApi.upload_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PetApi#upload_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # uploads an image (required)
    # @param pet_id [Integer] ID of pet to update
    # @param required_file [File] file to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :additional_metadata Additional data to pass to server
    # @return [ApiResponse]
    def upload_file_with_required_file(pet_id, required_file, opts = {})
      data, _status_code, _headers = upload_file_with_required_file_with_http_info(pet_id, required_file, opts)
      data
    end

    # uploads an image (required)
    # @param pet_id [Integer] ID of pet to update
    # @param required_file [File] file to upload
    # @param [Hash] opts the optional parameters
    # @option opts [String] :additional_metadata Additional data to pass to server
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def upload_file_with_required_file_with_http_info(pet_id, required_file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PetApi.upload_file_with_required_file ...'
      end
      # verify the required parameter 'pet_id' is set
      if @api_client.config.client_side_validation && pet_id.nil?
        fail ArgumentError, "Missing the required parameter 'pet_id' when calling PetApi.upload_file_with_required_file"
      end
      # verify the required parameter 'required_file' is set
      if @api_client.config.client_side_validation && required_file.nil?
        fail ArgumentError, "Missing the required parameter 'required_file' when calling PetApi.upload_file_with_required_file"
      end
      # resource path
      local_var_path = '/fake/{petId}/uploadImageWithRequiredFile'.sub('{' + 'petId' + '}', CGI.escape(pet_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['requiredFile'] = required_file
      form_params['additionalMetadata'] = opts[:'additional_metadata'] if !opts[:'additional_metadata'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['petstore_auth']

      new_options = opts.merge(
        :operation => :"PetApi.upload_file_with_required_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PetApi#upload_file_with_required_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
