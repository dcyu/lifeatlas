# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:chimesdkvoice)

# This module provides support for Amazon Chime SDK Voice. This module is available in the
# `aws-sdk-chimesdkvoice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     chime_sdk_voice = Aws::ChimeSDKVoice::Client.new
#     resp = chime_sdk_voice.associate_phone_numbers_with_voice_connector(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Chime SDK Voice are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ChimeSDKVoice::Errors::ServiceError
#       # rescues all Amazon Chime SDK Voice API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ChimeSDKVoice
  autoload :Types, 'aws-sdk-chimesdkvoice/types'
  autoload :ClientApi, 'aws-sdk-chimesdkvoice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-chimesdkvoice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-chimesdkvoice/client'
  autoload :Errors, 'aws-sdk-chimesdkvoice/errors'
  autoload :Resource, 'aws-sdk-chimesdkvoice/resource'
  autoload :EndpointParameters, 'aws-sdk-chimesdkvoice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-chimesdkvoice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-chimesdkvoice/endpoints'

  GEM_VERSION = '1.42.0'

end

require_relative 'aws-sdk-chimesdkvoice/customizations'
