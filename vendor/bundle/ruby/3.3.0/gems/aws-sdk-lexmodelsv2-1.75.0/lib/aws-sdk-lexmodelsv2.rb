# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lexmodelsv2)

# This module provides support for Amazon Lex Model Building V2. This module is available in the
# `aws-sdk-lexmodelsv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lex_models_v2 = Aws::LexModelsV2::Client.new
#     resp = lex_models_v2.batch_create_custom_vocabulary_item(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Lex Model Building V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LexModelsV2::Errors::ServiceError
#       # rescues all Amazon Lex Model Building V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LexModelsV2
  autoload :Types, 'aws-sdk-lexmodelsv2/types'
  autoload :ClientApi, 'aws-sdk-lexmodelsv2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lexmodelsv2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lexmodelsv2/client'
  autoload :Errors, 'aws-sdk-lexmodelsv2/errors'
  autoload :Waiters, 'aws-sdk-lexmodelsv2/waiters'
  autoload :Resource, 'aws-sdk-lexmodelsv2/resource'
  autoload :EndpointParameters, 'aws-sdk-lexmodelsv2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lexmodelsv2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lexmodelsv2/endpoints'

  GEM_VERSION = '1.75.0'

end

require_relative 'aws-sdk-lexmodelsv2/customizations'
