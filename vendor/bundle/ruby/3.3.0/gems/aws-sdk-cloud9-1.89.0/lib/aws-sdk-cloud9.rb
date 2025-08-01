# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloud9)

# This module provides support for AWS Cloud9. This module is available in the
# `aws-sdk-cloud9` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_9 = Aws::Cloud9::Client.new
#     resp = cloud_9.create_environment_ec2(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Cloud9 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Cloud9::Errors::ServiceError
#       # rescues all AWS Cloud9 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Cloud9
  autoload :Types, 'aws-sdk-cloud9/types'
  autoload :ClientApi, 'aws-sdk-cloud9/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloud9/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloud9/client'
  autoload :Errors, 'aws-sdk-cloud9/errors'
  autoload :Resource, 'aws-sdk-cloud9/resource'
  autoload :EndpointParameters, 'aws-sdk-cloud9/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloud9/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloud9/endpoints'

  GEM_VERSION = '1.89.0'

end

require_relative 'aws-sdk-cloud9/customizations'
