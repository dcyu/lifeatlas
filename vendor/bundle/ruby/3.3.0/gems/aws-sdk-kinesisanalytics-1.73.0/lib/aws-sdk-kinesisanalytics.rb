# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisanalytics)

# This module provides support for Amazon Kinesis Analytics. This module is available in the
# `aws-sdk-kinesisanalytics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kinesis_analytics = Aws::KinesisAnalytics::Client.new
#     resp = kinesis_analytics.add_application_cloud_watch_logging_option(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis Analytics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KinesisAnalytics::Errors::ServiceError
#       # rescues all Amazon Kinesis Analytics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KinesisAnalytics
  autoload :Types, 'aws-sdk-kinesisanalytics/types'
  autoload :ClientApi, 'aws-sdk-kinesisanalytics/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kinesisanalytics/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kinesisanalytics/client'
  autoload :Errors, 'aws-sdk-kinesisanalytics/errors'
  autoload :Resource, 'aws-sdk-kinesisanalytics/resource'
  autoload :EndpointParameters, 'aws-sdk-kinesisanalytics/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kinesisanalytics/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kinesisanalytics/endpoints'

  GEM_VERSION = '1.73.0'

end

require_relative 'aws-sdk-kinesisanalytics/customizations'
