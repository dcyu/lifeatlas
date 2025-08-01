# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:budgets)

# This module provides support for AWS Budgets. This module is available in the
# `aws-sdk-budgets` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     budgets = Aws::Budgets::Client.new
#     resp = budgets.create_budget(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Budgets are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Budgets::Errors::ServiceError
#       # rescues all AWS Budgets API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Budgets
  autoload :Types, 'aws-sdk-budgets/types'
  autoload :ClientApi, 'aws-sdk-budgets/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-budgets/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-budgets/client'
  autoload :Errors, 'aws-sdk-budgets/errors'
  autoload :Resource, 'aws-sdk-budgets/resource'
  autoload :EndpointParameters, 'aws-sdk-budgets/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-budgets/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-budgets/endpoints'

  GEM_VERSION = '1.88.0'

end

require_relative 'aws-sdk-budgets/customizations'
