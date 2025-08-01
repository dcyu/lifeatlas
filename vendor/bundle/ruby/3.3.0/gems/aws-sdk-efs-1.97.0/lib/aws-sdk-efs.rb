# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:efs)

# This module provides support for Amazon Elastic File System. This module is available in the
# `aws-sdk-efs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     efs = Aws::EFS::Client.new
#     resp = efs.create_access_point(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic File System are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EFS::Errors::ServiceError
#       # rescues all Amazon Elastic File System API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EFS
  autoload :Types, 'aws-sdk-efs/types'
  autoload :ClientApi, 'aws-sdk-efs/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-efs/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-efs/client'
  autoload :Errors, 'aws-sdk-efs/errors'
  autoload :Resource, 'aws-sdk-efs/resource'
  autoload :EndpointParameters, 'aws-sdk-efs/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-efs/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-efs/endpoints'

  GEM_VERSION = '1.97.0'

end

require_relative 'aws-sdk-efs/customizations'
