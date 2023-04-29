.PHONY: generate-client
generate-client:
	rm -rf client/ruby/{docs,lib}
	docker container run --rm -v "${PWD}:/local" openapitools/openapi-generator-cli:v6.5.0 generate -i /local/openapi3.yaml -g ruby -o /local/client/ -c /local/client/config.yaml
