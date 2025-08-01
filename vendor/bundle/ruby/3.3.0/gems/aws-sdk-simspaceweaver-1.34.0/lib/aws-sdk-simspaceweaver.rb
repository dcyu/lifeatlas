# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:simspaceweaver)

# This module provides support for AWS SimSpace Weaver. This module is available in the
# `aws-sdk-simspaceweaver` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sim_space_weaver = Aws::SimSpaceWeaver::Client.new
#     resp = sim_space_weaver.create_snapshot(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS SimSpace Weaver are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SimSpaceWeaver::Errors::ServiceError
#       # rescues all AWS SimSpace Weaver API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SimSpaceWeaver
  autoload :Types, 'aws-sdk-simspaceweaver/types'
  autoload :ClientApi, 'aws-sdk-simspaceweaver/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-simspaceweaver/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-simspaceweaver/client'
  autoload :Errors, 'aws-sdk-simspaceweaver/errors'
  autoload :Resource, 'aws-sdk-simspaceweaver/resource'
  autoload :EndpointParameters, 'aws-sdk-simspaceweaver/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-simspaceweaver/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-simspaceweaver/endpoints'

  GEM_VERSION = '1.34.0'

end

require_relative 'aws-sdk-simspaceweaver/customizations'
