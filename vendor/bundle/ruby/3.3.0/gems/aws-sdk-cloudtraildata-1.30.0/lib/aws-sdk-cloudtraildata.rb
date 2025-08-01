# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudtraildata)

# This module provides support for AWS CloudTrail Data Service. This module is available in the
# `aws-sdk-cloudtraildata` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_trail_data = Aws::CloudTrailData::Client.new
#     resp = cloud_trail_data.put_audit_events(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CloudTrail Data Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudTrailData::Errors::ServiceError
#       # rescues all AWS CloudTrail Data Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudTrailData
  autoload :Types, 'aws-sdk-cloudtraildata/types'
  autoload :ClientApi, 'aws-sdk-cloudtraildata/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudtraildata/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudtraildata/client'
  autoload :Errors, 'aws-sdk-cloudtraildata/errors'
  autoload :Resource, 'aws-sdk-cloudtraildata/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudtraildata/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudtraildata/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudtraildata/endpoints'

  GEM_VERSION = '1.30.0'

end

require_relative 'aws-sdk-cloudtraildata/customizations'
