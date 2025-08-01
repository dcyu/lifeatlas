# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pinpointsmsvoicev2)

# This module provides support for Amazon Pinpoint SMS Voice V2. This module is available in the
# `aws-sdk-pinpointsmsvoicev2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pinpoint_sms_voice_v2 = Aws::PinpointSMSVoiceV2::Client.new
#     resp = pinpoint_sms_voice_v2.associate_origination_identity(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Pinpoint SMS Voice V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PinpointSMSVoiceV2::Errors::ServiceError
#       # rescues all Amazon Pinpoint SMS Voice V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PinpointSMSVoiceV2
  autoload :Types, 'aws-sdk-pinpointsmsvoicev2/types'
  autoload :ClientApi, 'aws-sdk-pinpointsmsvoicev2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pinpointsmsvoicev2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pinpointsmsvoicev2/client'
  autoload :Errors, 'aws-sdk-pinpointsmsvoicev2/errors'
  autoload :Waiters, 'aws-sdk-pinpointsmsvoicev2/waiters'
  autoload :Resource, 'aws-sdk-pinpointsmsvoicev2/resource'
  autoload :EndpointParameters, 'aws-sdk-pinpointsmsvoicev2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pinpointsmsvoicev2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pinpointsmsvoicev2/endpoints'

  GEM_VERSION = '1.39.0'

end

require_relative 'aws-sdk-pinpointsmsvoicev2/customizations'
