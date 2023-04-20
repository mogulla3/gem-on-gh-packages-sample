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



Returns all pets from the system that the user has access to Nam sed condimentum est. Maecenas tempor sagittis sapien, nec rhoncus sem sagittis sit amet. Aenean at gravida augue, ac iaculis sem. Curabitur odio lorem, ornare eget elementum nec, cursus id lectus. Duis mi turpis, pulvinar ac eros ac, tincidunt varius justo. In hac habitasse platea dictumst. Integer at adipiscing ante, a sagittis ligula. Aenean pharetra tempor ante molestie imperdiet. Vivamus id aliquam diam. Cras quis velit non tortor eleifend sagittis. Praesent at enim pharetra urna volutpat venenatis eget eget mauris. In eleifend fermentum facilisis. Praesent enim enim, gravida ac sodales sed, placerat id erat. Suspendisse lacus dolor, consectetur non augue vel, vehicula interdum libero. Morbi euismod sagittis libero sed lacinia.  Sed tempus felis lobortis leo pulvinar rutrum. Nam mattis velit nisl, eu condimentum ligula luctus nec. Phasellus semper velit eget aliquet faucibus. In a mattis elit. Phasellus vel urna viverra, condimentum lorem id, rhoncus nibh. Ut pellentesque posuere elementum. Sed a varius odio. Morbi rhoncus ligula libero, vel eleifend nunc tristique vitae. Fusce et sem dui. Aenean nec scelerisque tortor. Fusce malesuada accumsan magna vel tempus. Quisque mollis felis eu dolor tristique, sit amet auctor felis gravida. Sed libero lorem, molestie sed nisl in, accumsan tempor nisi. Fusce sollicitudin massa ut lacinia mattis. Sed vel eleifend lorem. Pellentesque vitae felis pretium, pulvinar elit eu, euismod sapien. 

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

