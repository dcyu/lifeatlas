# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:workspaces)

# This module provides support for Amazon WorkSpaces. This module is available in the
# `aws-sdk-workspaces` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     work_spaces = Aws::WorkSpaces::Client.new
#     resp = work_spaces.accept_account_link_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon WorkSpaces are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WorkSpaces::Errors::ServiceError
#       # rescues all Amazon WorkSpaces API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WorkSpaces
  autoload :Types, 'aws-sdk-workspaces/types'
  autoload :ClientApi, 'aws-sdk-workspaces/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-workspaces/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-workspaces/client'
  autoload :Errors, 'aws-sdk-workspaces/errors'
  autoload :Resource, 'aws-sdk-workspaces/resource'
  autoload :EndpointParameters, 'aws-sdk-workspaces/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-workspaces/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-workspaces/endpoints'

  GEM_VERSION = '1.140.0'

end

require_relative 'aws-sdk-workspaces/customizations'
