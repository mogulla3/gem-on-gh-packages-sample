# SampleClient::DefaultApi

All URIs are relative to *https://petstore.swagger.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_pet**](DefaultApi.md#add_pet) | **POST** /pets |  |
| [**delete_pet**](DefaultApi.md#delete_pet) | **DELETE** /pets/{id} |  |
| [**find_pet_by_id**](DefaultApi.md#find_pet_by_id) | **GET** /pets/{id} |  |
| [**find_pets**](DefaultApi.md#find_pets) | **GET** /pets |  |


## add_pet

> <Pet> add_pet(new_pet)



Creates a new pet in the store. Duplicates are allowed

### Examples

```ruby
require 'time'
require 'sample-client'

api_instance = SampleClient::DefaultApi.new
new_pet = SampleClient::NewPet.new({name: 'name_example'}) # NewPet | Pet to add to the store

begin
  
  result = api_instance.add_pet(new_pet)
  p result
rescue SampleClient::ApiError => e
  puts "Error when calling DefaultApi->add_pet: #{e}"
end
```

#### Using the add_pet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pet>, Integer, Hash)> add_pet_with_http_info(new_pet)

```ruby
begin
  
  data, status_code, headers = api_instance.add_pet_with_http_info(new_pet)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pet>
rescue SampleClient::ApiError => e
  puts "Error when calling DefaultApi->add_pet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **new_pet** | [**NewPet**](NewPet.md) | Pet to add to the store |  |

### Return type

[**Pet**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pet

> delete_pet(id)



deletes a single pet based on the ID supplied

### Examples

```ruby
require 'time'
require 'sample-client'

api_instance = SampleClient::DefaultApi.new
id = 789 # Integer | ID of pet to delete

begin
  
  api_instance.delete_pet(id)
rescue SampleClient::ApiError => e
  puts "Error when calling DefaultApi->delete_pet: #{e}"
end
```

#### Using the delete_pet_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pet_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_pet_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SampleClient::ApiError => e
  puts "Error when calling DefaultApi->delete_pet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of pet to delete |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_pet_by_id

> <Pet> find_pet_by_id(id)



Returns a user based on a single ID, if the user does not have access to the pet

### Examples

```ruby
require 'time'
require 'sample-client'

api_instance = SampleClient::DefaultApi.new
id = 789 # Integer | ID of pet to fetch

begin
  
  result = api_instance.find_pet_by_id(id)
  p result
rescue SampleClient::ApiError => e
  puts "Error when calling DefaultApi->find_pet_by_id: #{e}"
end
```

#### Using the find_pet_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pet>, Integer, Hash)> find_pet_by_id_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.find_pet_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pet>
rescue SampleClient::ApiError => e
  puts "Error when calling DefaultApi->find_pet_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of pet to fetch |  |

### Return type

[**Pet**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_pets

> <Array<Pet>> find_pets(opts)



Returns all pets from the system that the user has access to

### Examples

```ruby
require 'time'
require 'sample-client'

api_instance = SampleClient::DefaultApi.new
opts = {
  tags: ['inner_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | maximum number of results to return
}

begin
  
  result = api_instance.find_pets(opts)
  p result
rescue SampleClient::ApiError => e
  puts "Error when calling DefaultApi->find_pets: #{e}"
end
```

#### Using the find_pets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Pet>>, Integer, Hash)> find_pets_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.find_pets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Pet>>
rescue SampleClient::ApiError => e
  puts "Error when calling DefaultApi->find_pets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | [**Array&lt;String&gt;**](String.md) | tags to filter by | [optional] |
| **limit** | **Integer** | maximum number of results to return | [optional] |

### Return type

[**Array&lt;Pet&gt;**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

