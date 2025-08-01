# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:devicefarm)

# This module provides support for AWS Device Farm. This module is available in the
# `aws-sdk-devicefarm` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     device_farm = Aws::DeviceFarm::Client.new
#     resp = device_farm.create_device_pool(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Device Farm are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DeviceFarm::Errors::ServiceError
#       # rescues all AWS Device Farm API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DeviceFarm
  autoload :Types, 'aws-sdk-devicefarm/types'
  autoload :ClientApi, 'aws-sdk-devicefarm/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-devicefarm/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-devicefarm/client'
  autoload :Errors, 'aws-sdk-devicefarm/errors'
  autoload :Resource, 'aws-sdk-devicefarm/resource'
  autoload :EndpointParameters, 'aws-sdk-devicefarm/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-devicefarm/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-devicefarm/endpoints'

  GEM_VERSION = '1.90.0'

end

require_relative 'aws-sdk-devicefarm/customizations'
