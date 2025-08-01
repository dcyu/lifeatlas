# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotevents)

# This module provides support for AWS IoT Events. This module is available in the
# `aws-sdk-iotevents` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_events = Aws::IoTEvents::Client.new
#     resp = io_t_events.create_alarm_model(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Events are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTEvents::Errors::ServiceError
#       # rescues all AWS IoT Events API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTEvents
  autoload :Types, 'aws-sdk-iotevents/types'
  autoload :ClientApi, 'aws-sdk-iotevents/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotevents/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotevents/client'
  autoload :Errors, 'aws-sdk-iotevents/errors'
  autoload :Resource, 'aws-sdk-iotevents/resource'
  autoload :EndpointParameters, 'aws-sdk-iotevents/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotevents/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotevents/endpoints'

  GEM_VERSION = '1.68.0'

end

require_relative 'aws-sdk-iotevents/customizations'
