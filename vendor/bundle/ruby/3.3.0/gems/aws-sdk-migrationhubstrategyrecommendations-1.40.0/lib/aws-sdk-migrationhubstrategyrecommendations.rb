# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:migrationhubstrategyrecommendations)

# This module provides support for Migration Hub Strategy Recommendations. This module is available in the
# `aws-sdk-migrationhubstrategyrecommendations` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     migration_hub_strategy_recommendations = Aws::MigrationHubStrategyRecommendations::Client.new
#     resp = migration_hub_strategy_recommendations.get_application_component_details(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Migration Hub Strategy Recommendations are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MigrationHubStrategyRecommendations::Errors::ServiceError
#       # rescues all Migration Hub Strategy Recommendations API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MigrationHubStrategyRecommendations
  autoload :Types, 'aws-sdk-migrationhubstrategyrecommendations/types'
  autoload :ClientApi, 'aws-sdk-migrationhubstrategyrecommendations/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-migrationhubstrategyrecommendations/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-migrationhubstrategyrecommendations/client'
  autoload :Errors, 'aws-sdk-migrationhubstrategyrecommendations/errors'
  autoload :Resource, 'aws-sdk-migrationhubstrategyrecommendations/resource'
  autoload :EndpointParameters, 'aws-sdk-migrationhubstrategyrecommendations/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-migrationhubstrategyrecommendations/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-migrationhubstrategyrecommendations/endpoints'

  GEM_VERSION = '1.40.0'

end

require_relative 'aws-sdk-migrationhubstrategyrecommendations/customizations'
