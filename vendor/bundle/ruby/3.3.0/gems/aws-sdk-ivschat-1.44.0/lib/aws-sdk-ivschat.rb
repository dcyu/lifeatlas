# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ivschat)

# This module provides support for Amazon Interactive Video Service Chat. This module is available in the
# `aws-sdk-ivschat` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ivschat = Aws::Ivschat::Client.new
#     resp = ivschat.create_chat_token(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Interactive Video Service Chat are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Ivschat::Errors::ServiceError
#       # rescues all Amazon Interactive Video Service Chat API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Ivschat
  autoload :Types, 'aws-sdk-ivschat/types'
  autoload :ClientApi, 'aws-sdk-ivschat/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ivschat/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ivschat/client'
  autoload :Errors, 'aws-sdk-ivschat/errors'
  autoload :Waiters, 'aws-sdk-ivschat/waiters'
  autoload :Resource, 'aws-sdk-ivschat/resource'
  autoload :EndpointParameters, 'aws-sdk-ivschat/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ivschat/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ivschat/endpoints'

  GEM_VERSION = '1.44.0'

end

require_relative 'aws-sdk-ivschat/customizations'
