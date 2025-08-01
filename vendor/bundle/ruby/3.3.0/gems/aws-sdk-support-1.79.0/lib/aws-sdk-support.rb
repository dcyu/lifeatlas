# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:support)

# This module provides support for AWS Support. This module is available in the
# `aws-sdk-support` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     support = Aws::Support::Client.new
#     resp = support.add_attachments_to_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Support are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Support::Errors::ServiceError
#       # rescues all AWS Support API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Support
  autoload :Types, 'aws-sdk-support/types'
  autoload :ClientApi, 'aws-sdk-support/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-support/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-support/client'
  autoload :Errors, 'aws-sdk-support/errors'
  autoload :Resource, 'aws-sdk-support/resource'
  autoload :EndpointParameters, 'aws-sdk-support/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-support/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-support/endpoints'

  GEM_VERSION = '1.79.0'

end

require_relative 'aws-sdk-support/customizations'
