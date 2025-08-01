# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:connectcampaignservice)

# This module provides support for AmazonConnectCampaignService. This module is available in the
# `aws-sdk-connectcampaignservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect_campaign_service = Aws::ConnectCampaignService::Client.new
#     resp = connect_campaign_service.create_campaign(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmazonConnectCampaignService are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConnectCampaignService::Errors::ServiceError
#       # rescues all AmazonConnectCampaignService API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConnectCampaignService
  autoload :Types, 'aws-sdk-connectcampaignservice/types'
  autoload :ClientApi, 'aws-sdk-connectcampaignservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-connectcampaignservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-connectcampaignservice/client'
  autoload :Errors, 'aws-sdk-connectcampaignservice/errors'
  autoload :Resource, 'aws-sdk-connectcampaignservice/resource'
  autoload :EndpointParameters, 'aws-sdk-connectcampaignservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-connectcampaignservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-connectcampaignservice/endpoints'

  GEM_VERSION = '1.35.0'

end

require_relative 'aws-sdk-connectcampaignservice/customizations'
