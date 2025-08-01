# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:apigatewayv2)

# This module provides support for AmazonApiGatewayV2. This module is available in the
# `aws-sdk-apigatewayv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     api_gateway_v2 = Aws::ApiGatewayV2::Client.new
#     resp = api_gateway_v2.create_api(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmazonApiGatewayV2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ApiGatewayV2::Errors::ServiceError
#       # rescues all AmazonApiGatewayV2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ApiGatewayV2
  autoload :Types, 'aws-sdk-apigatewayv2/types'
  autoload :ClientApi, 'aws-sdk-apigatewayv2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-apigatewayv2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-apigatewayv2/client'
  autoload :Errors, 'aws-sdk-apigatewayv2/errors'
  autoload :Resource, 'aws-sdk-apigatewayv2/resource'
  autoload :EndpointParameters, 'aws-sdk-apigatewayv2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-apigatewayv2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-apigatewayv2/endpoints'

  GEM_VERSION = '1.79.0'

end

require_relative 'aws-sdk-apigatewayv2/customizations'
