# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:health)

# This module provides support for AWS Health APIs and Notifications. This module is available in the
# `aws-sdk-health` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     health = Aws::Health::Client.new
#     resp = health.describe_affected_accounts_for_organization(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Health APIs and Notifications are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Health::Errors::ServiceError
#       # rescues all AWS Health APIs and Notifications API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Health
  autoload :Types, 'aws-sdk-health/types'
  autoload :ClientApi, 'aws-sdk-health/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-health/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-health/client'
  autoload :Errors, 'aws-sdk-health/errors'
  autoload :Resource, 'aws-sdk-health/resource'
  autoload :EndpointParameters, 'aws-sdk-health/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-health/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-health/endpoints'

  GEM_VERSION = '1.82.0'

end

require_relative 'aws-sdk-health/customizations'
