# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:macie2)

# This module provides support for Amazon Macie 2. This module is available in the
# `aws-sdk-macie2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     macie_2 = Aws::Macie2::Client.new
#     resp = macie_2.accept_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Macie 2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Macie2::Errors::ServiceError
#       # rescues all Amazon Macie 2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Macie2
  autoload :Types, 'aws-sdk-macie2/types'
  autoload :ClientApi, 'aws-sdk-macie2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-macie2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-macie2/client'
  autoload :Errors, 'aws-sdk-macie2/errors'
  autoload :Waiters, 'aws-sdk-macie2/waiters'
  autoload :Resource, 'aws-sdk-macie2/resource'
  autoload :EndpointParameters, 'aws-sdk-macie2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-macie2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-macie2/endpoints'

  GEM_VERSION = '1.88.0'

end

require_relative 'aws-sdk-macie2/customizations'
