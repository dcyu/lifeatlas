# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:medialive)

# This module provides support for AWS Elemental MediaLive. This module is available in the
# `aws-sdk-medialive` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_live = Aws::MediaLive::Client.new
#     resp = media_live.accept_input_device_transfer(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental MediaLive are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaLive::Errors::ServiceError
#       # rescues all AWS Elemental MediaLive API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaLive
  autoload :Types, 'aws-sdk-medialive/types'
  autoload :ClientApi, 'aws-sdk-medialive/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-medialive/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-medialive/client'
  autoload :Errors, 'aws-sdk-medialive/errors'
  autoload :Waiters, 'aws-sdk-medialive/waiters'
  autoload :Resource, 'aws-sdk-medialive/resource'
  autoload :EndpointParameters, 'aws-sdk-medialive/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-medialive/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-medialive/endpoints'

  GEM_VERSION = '1.156.0'

end

require_relative 'aws-sdk-medialive/customizations'
