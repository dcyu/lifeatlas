# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplacecommerceanalytics)

# This module provides support for AWS Marketplace Commerce Analytics. This module is available in the
# `aws-sdk-marketplacecommerceanalytics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_commerce_analytics = Aws::MarketplaceCommerceAnalytics::Client.new
#     resp = marketplace_commerce_analytics.generate_data_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Marketplace Commerce Analytics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceCommerceAnalytics::Errors::ServiceError
#       # rescues all AWS Marketplace Commerce Analytics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceCommerceAnalytics
  autoload :Types, 'aws-sdk-marketplacecommerceanalytics/types'
  autoload :ClientApi, 'aws-sdk-marketplacecommerceanalytics/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-marketplacecommerceanalytics/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-marketplacecommerceanalytics/client'
  autoload :Errors, 'aws-sdk-marketplacecommerceanalytics/errors'
  autoload :Resource, 'aws-sdk-marketplacecommerceanalytics/resource'
  autoload :EndpointParameters, 'aws-sdk-marketplacecommerceanalytics/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-marketplacecommerceanalytics/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-marketplacecommerceanalytics/endpoints'

  GEM_VERSION = '1.76.0'

end

require_relative 'aws-sdk-marketplacecommerceanalytics/customizations'
