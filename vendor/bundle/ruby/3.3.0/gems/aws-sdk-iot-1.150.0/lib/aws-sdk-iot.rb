# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iot)

# This module provides support for AWS IoT. This module is available in the
# `aws-sdk-iot` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t = Aws::IoT::Client.new
#     resp = io_t.accept_certificate_transfer(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoT::Errors::ServiceError
#       # rescues all AWS IoT API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoT
  autoload :Types, 'aws-sdk-iot/types'
  autoload :ClientApi, 'aws-sdk-iot/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iot/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iot/client'
  autoload :Errors, 'aws-sdk-iot/errors'
  autoload :Resource, 'aws-sdk-iot/resource'
  autoload :EndpointParameters, 'aws-sdk-iot/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iot/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iot/endpoints'

  GEM_VERSION = '1.150.0'

end

require_relative 'aws-sdk-iot/customizations'
