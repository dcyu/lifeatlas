# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:databasemigrationservice)

# This module provides support for AWS Database Migration Service. This module is available in the
# `aws-sdk-databasemigrationservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     database_migration_service = Aws::DatabaseMigrationService::Client.new
#     resp = database_migration_service.add_tags_to_resource(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Database Migration Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DatabaseMigrationService::Errors::ServiceError
#       # rescues all AWS Database Migration Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DatabaseMigrationService
  autoload :Types, 'aws-sdk-databasemigrationservice/types'
  autoload :ClientApi, 'aws-sdk-databasemigrationservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-databasemigrationservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-databasemigrationservice/client'
  autoload :Errors, 'aws-sdk-databasemigrationservice/errors'
  autoload :Waiters, 'aws-sdk-databasemigrationservice/waiters'
  autoload :Resource, 'aws-sdk-databasemigrationservice/resource'
  autoload :EndpointParameters, 'aws-sdk-databasemigrationservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-databasemigrationservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-databasemigrationservice/endpoints'

  GEM_VERSION = '1.125.0'

end

require_relative 'aws-sdk-databasemigrationservice/customizations'
