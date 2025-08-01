# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotfleetwise)

# This module provides support for AWS IoT FleetWise. This module is available in the
# `aws-sdk-iotfleetwise` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_fleet_wise = Aws::IoTFleetWise::Client.new
#     resp = io_t_fleet_wise.associate_vehicle_fleet(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT FleetWise are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTFleetWise::Errors::ServiceError
#       # rescues all AWS IoT FleetWise API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTFleetWise
  autoload :Types, 'aws-sdk-iotfleetwise/types'
  autoload :ClientApi, 'aws-sdk-iotfleetwise/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotfleetwise/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotfleetwise/client'
  autoload :Errors, 'aws-sdk-iotfleetwise/errors'
  autoload :Waiters, 'aws-sdk-iotfleetwise/waiters'
  autoload :Resource, 'aws-sdk-iotfleetwise/resource'
  autoload :EndpointParameters, 'aws-sdk-iotfleetwise/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotfleetwise/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotfleetwise/endpoints'

  GEM_VERSION = '1.50.0'

end

require_relative 'aws-sdk-iotfleetwise/customizations'
