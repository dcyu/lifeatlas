# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sns)

# This module provides support for Amazon Simple Notification Service. This module is available in the
# `aws-sdk-sns` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sns = Aws::SNS::Client.new
#     resp = sns.add_permission(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Simple Notification Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SNS::Errors::ServiceError
#       # rescues all Amazon Simple Notification Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SNS
  autoload :Types, 'aws-sdk-sns/types'
  autoload :ClientApi, 'aws-sdk-sns/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sns/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sns/client'
  autoload :Errors, 'aws-sdk-sns/errors'
  autoload :Resource, 'aws-sdk-sns/resource'
  autoload :EndpointParameters, 'aws-sdk-sns/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sns/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sns/endpoints'
  autoload :PlatformApplication, 'aws-sdk-sns/platform_application'
  autoload :PlatformEndpoint, 'aws-sdk-sns/platform_endpoint'
  autoload :Subscription, 'aws-sdk-sns/subscription'
  autoload :Topic, 'aws-sdk-sns/topic'

  GEM_VERSION = '1.101.0'

end

require_relative 'aws-sdk-sns/customizations'
