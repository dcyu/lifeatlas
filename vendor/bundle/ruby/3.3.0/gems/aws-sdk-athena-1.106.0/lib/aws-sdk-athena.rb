# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:athena)

# This module provides support for Amazon Athena. This module is available in the
# `aws-sdk-athena` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     athena = Aws::Athena::Client.new
#     resp = athena.batch_get_named_query(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Athena are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Athena::Errors::ServiceError
#       # rescues all Amazon Athena API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Athena
  autoload :Types, 'aws-sdk-athena/types'
  autoload :ClientApi, 'aws-sdk-athena/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-athena/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-athena/client'
  autoload :Errors, 'aws-sdk-athena/errors'
  autoload :Resource, 'aws-sdk-athena/resource'
  autoload :EndpointParameters, 'aws-sdk-athena/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-athena/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-athena/endpoints'

  GEM_VERSION = '1.106.0'

end

require_relative 'aws-sdk-athena/customizations'
