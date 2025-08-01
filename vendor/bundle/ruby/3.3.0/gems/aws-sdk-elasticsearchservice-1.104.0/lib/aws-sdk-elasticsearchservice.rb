# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:elasticsearchservice)

# This module provides support for Amazon Elasticsearch Service. This module is available in the
# `aws-sdk-elasticsearchservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elasticsearch_service = Aws::ElasticsearchService::Client.new
#     resp = elasticsearch_service.accept_inbound_cross_cluster_search_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elasticsearch Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ElasticsearchService::Errors::ServiceError
#       # rescues all Amazon Elasticsearch Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ElasticsearchService
  autoload :Types, 'aws-sdk-elasticsearchservice/types'
  autoload :ClientApi, 'aws-sdk-elasticsearchservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-elasticsearchservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-elasticsearchservice/client'
  autoload :Errors, 'aws-sdk-elasticsearchservice/errors'
  autoload :Resource, 'aws-sdk-elasticsearchservice/resource'
  autoload :EndpointParameters, 'aws-sdk-elasticsearchservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-elasticsearchservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-elasticsearchservice/endpoints'

  GEM_VERSION = '1.104.0'

end

require_relative 'aws-sdk-elasticsearchservice/customizations'
