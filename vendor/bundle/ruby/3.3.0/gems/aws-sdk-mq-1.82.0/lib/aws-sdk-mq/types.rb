# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MQ
  module Types

    # Action required for a broker.
    #
    # @!attribute [rw] action_required_code
    #   The code you can use to find instructions on the action required to
    #   resolve your broker issue.
    #   @return [String]
    #
    # @!attribute [rw] action_required_info
    #   Information about the action required to resolve your broker issue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ActionRequired AWS API Documentation
    #
    class ActionRequired < Struct.new(
      :action_required_code,
      :action_required_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Name of the availability zone.
    #
    # @!attribute [rw] name
    #   Id for the availability zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] error_attribute
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :error_attribute,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Types of broker engines.
    #
    # @!attribute [rw] engine_type
    #   The broker's engine type.
    #   @return [String]
    #
    # @!attribute [rw] engine_versions
    #   The list of engine versions.
    #   @return [Array<Types::EngineVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/BrokerEngineType AWS API Documentation
    #
    class BrokerEngineType < Struct.new(
      :engine_type,
      :engine_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a list of broker engine type.
    #
    # @!attribute [rw] broker_engine_types
    #   List of available engine types and versions.
    #   @return [Array<Types::BrokerEngineType>]
    #
    # @!attribute [rw] max_results
    #   Required. The maximum number of engine types that can be returned
    #   per page (20 by default). This value must be an integer from 5 to
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that specifies the next page of results Amazon MQ should
    #   return. To request the first page, leave nextToken empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/BrokerEngineTypeOutput AWS API Documentation
    #
    class BrokerEngineTypeOutput < Struct.new(
      :broker_engine_types,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about all brokers.
    #
    # @!attribute [rw] console_url
    #   The brokers web console URL.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The broker's wire-level protocol endpoints.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the Elastic Network Interface (ENI) attached to
    #   the broker. Does not apply to RabbitMQ brokers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/BrokerInstance AWS API Documentation
    #
    class BrokerInstance < Struct.new(
      :console_url,
      :endpoints,
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Option for host instance type.
    #
    # @!attribute [rw] availability_zones
    #   The list of available az.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] engine_type
    #   The broker's engine type.
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   The broker's instance type.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The broker's storage type.
    #   @return [String]
    #
    # @!attribute [rw] supported_deployment_modes
    #   The list of supported deployment modes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supported_engine_versions
    #   The list of supported engine versions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/BrokerInstanceOption AWS API Documentation
    #
    class BrokerInstanceOption < Struct.new(
      :availability_zones,
      :engine_type,
      :host_instance_type,
      :storage_type,
      :supported_deployment_modes,
      :supported_engine_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a list of broker instance options.
    #
    # @!attribute [rw] broker_instance_options
    #   List of available broker instance options.
    #   @return [Array<Types::BrokerInstanceOption>]
    #
    # @!attribute [rw] max_results
    #   Required. The maximum number of instance options that can be
    #   returned per page (20 by default). This value must be an integer
    #   from 5 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that specifies the next page of results Amazon MQ should
    #   return. To request the first page, leave nextToken empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/BrokerInstanceOptionsOutput AWS API Documentation
    #
    class BrokerInstanceOptionsOutput < Struct.new(
      :broker_instance_options,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about all brokers.
    #
    # @!attribute [rw] broker_arn
    #   The broker's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] broker_id
    #   The unique ID that Amazon MQ generates for the broker.
    #   @return [String]
    #
    # @!attribute [rw] broker_name
    #   The broker's name. This value is unique in your Amazon Web Services
    #   account, 1-50 characters long, and containing only letters, numbers,
    #   dashes, and underscores, and must not contain white spaces,
    #   brackets, wildcard characters, or special characters.
    #   @return [String]
    #
    # @!attribute [rw] broker_state
    #   The broker's status.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The time when the broker was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_mode
    #   The broker's deployment mode.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   The type of broker engine.
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   The broker's instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/BrokerSummary AWS API Documentation
    #
    class BrokerSummary < Struct.new(
      :broker_arn,
      :broker_id,
      :broker_name,
      :broker_state,
      :created,
      :deployment_mode,
      :engine_type,
      :host_instance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about all configurations.
    #
    # @!attribute [rw] arn
    #   Required. The ARN of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy associated with the
    #   configuration. The default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   Required. The date and time of the configuration revision.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Required. The description of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   Required. The type of broker engine. Currently, Amazon MQ supports
    #   ACTIVEMQ and RABBITMQ.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The broker engine version. Defaults to the latest available version
    #   for the specified broker engine type. For a list of supported engine
    #   versions, see the [ActiveMQ version management][1] and the [RabbitMQ
    #   version management][2] sections in the Amazon MQ Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html
    #   [2]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Required. The unique ID that Amazon MQ generates for the
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   Required. The latest revision of the configuration.
    #   @return [Types::ConfigurationRevision]
    #
    # @!attribute [rw] name
    #   Required. The name of the configuration. This value can contain only
    #   alphanumeric characters, dashes, periods, underscores, and tildes (-
    #   . \_ ~). This value must be 1-150 characters long.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of all tags associated with this configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/Configuration AWS API Documentation
    #
    class Configuration < Struct.new(
      :arn,
      :authentication_strategy,
      :created,
      :description,
      :engine_type,
      :engine_version,
      :id,
      :latest_revision,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of information about the configuration.
    #
    # @!attribute [rw] id
    #   Required. The unique ID that Amazon MQ generates for the
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision number of the configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ConfigurationId AWS API Documentation
    #
    class ConfigurationId < Struct.new(
      :id,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the specified configuration revision.
    #
    # @!attribute [rw] created
    #   Required. The date and time of the configuration revision.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the configuration revision.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   Required. The revision number of the configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ConfigurationRevision AWS API Documentation
    #
    class ConfigurationRevision < Struct.new(
      :created,
      :description,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Broker configuration information
    #
    # @!attribute [rw] current
    #   The broker's current configuration.
    #   @return [Types::ConfigurationId]
    #
    # @!attribute [rw] history
    #   The history of configurations applied to the broker.
    #   @return [Array<Types::ConfigurationId>]
    #
    # @!attribute [rw] pending
    #   The broker's pending configuration.
    #   @return [Types::ConfigurationId]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/Configurations AWS API Documentation
    #
    class Configurations < Struct.new(
      :current,
      :history,
      :pending)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] error_attribute
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :error_attribute,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a broker.
    #
    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Enables automatic upgrades to new patch versions for brokers as new
    #   versions are released and supported by Amazon MQ. Automatic upgrades
    #   occur during the scheduled maintenance window or after a manual
    #   broker reboot. Set to true by default, if no value is specified.
    #
    #   <note markdown="1">Must be set to true for ActiveMQ brokers version 5.18 and above and
    #   for RabbitMQ brokers version 3.13 and above.
    #
    #   </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] broker_name
    #   Required. The broker's name. This value must be unique in your
    #   Amazon Web Services account, 1-50 characters long, must contain only
    #   letters, numbers, dashes, and underscores, and must not contain
    #   white spaces, brackets, wildcard characters, or special characters.
    #
    #   Do not add personally identifiable information (PII) or other
    #   confidential or sensitive information in broker names. Broker names
    #   are accessible to other Amazon Web Services services, including
    #   CloudWatch Logs. Broker names are not intended to be used for
    #   private or sensitive data.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   A list of information about the configuration.
    #   @return [Types::ConfigurationId]
    #
    # @!attribute [rw] creator_request_id
    #   The unique ID that the requester receives for the created broker.
    #   Amazon MQ passes your ID with the API action.
    #
    #   <note markdown="1">We recommend using a Universally Unique Identifier (UUID) for the
    #   creatorRequestId. You may omit the creatorRequestId if your
    #   application doesn't require idempotency.
    #
    #   </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] deployment_mode
    #   Required. The broker's deployment mode.
    #   @return [String]
    #
    # @!attribute [rw] data_replication_mode
    #   Defines whether this broker is a part of a data replication pair.
    #   @return [String]
    #
    # @!attribute [rw] data_replication_primary_broker_arn
    #   The Amazon Resource Name (ARN) of the primary broker that is used to
    #   replicate data from in a data replication pair, and is applied to
    #   the replica broker. Must be set when dataReplicationMode is set to
    #   CRDR.
    #   @return [String]
    #
    # @!attribute [rw] encryption_options
    #   Encryption options for the broker.
    #   @return [Types::EncryptionOptions]
    #
    # @!attribute [rw] engine_type
    #   Required. The type of broker engine. Currently, Amazon MQ supports
    #   ACTIVEMQ and RABBITMQ.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The broker engine version. Defaults to the latest available version
    #   for the specified broker engine type. For more information, see the
    #   [ActiveMQ version management][1] and the [RabbitMQ version
    #   management][2] sections in the Amazon MQ Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html
    #   [2]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   Required. The broker's instance type.
    #   @return [String]
    #
    # @!attribute [rw] ldap_server_metadata
    #   Optional. The metadata of the LDAP server used to authenticate and
    #   authorize connections to the broker. Does not apply to RabbitMQ
    #   brokers.
    #   @return [Types::LdapServerMetadataInput]
    #
    # @!attribute [rw] logs
    #   Enables Amazon CloudWatch logging for brokers.
    #   @return [Types::Logs]
    #
    # @!attribute [rw] maintenance_window_start_time
    #   The parameters that determine the WeeklyStartTime.
    #   @return [Types::WeeklyStartTime]
    #
    # @!attribute [rw] publicly_accessible
    #   Enables connections from applications outside of the VPC that hosts
    #   the broker's subnets. Set to false by default, if no value is
    #   provided.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_groups
    #   The list of rules (1 minimum, 125 maximum) that authorize
    #   connections to brokers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_type
    #   The broker's storage type.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The list of groups that define which subnets and IP ranges the
    #   broker can use from different Availability Zones. If you specify
    #   more than one subnet, the subnets must be in different Availability
    #   Zones. Amazon MQ will not be able to create VPC endpoints for your
    #   broker with multiple subnets in the same Availability Zone. A
    #   SINGLE\_INSTANCE deployment requires one subnet (for example, the
    #   default subnet). An ACTIVE\_STANDBY\_MULTI\_AZ Amazon MQ for
    #   ActiveMQ deployment requires two subnets. A CLUSTER\_MULTI\_AZ
    #   Amazon MQ for RabbitMQ deployment has no subnet requirements when
    #   deployed with public accessibility. Deployment without public
    #   accessibility requires at least one subnet.
    #
    #   If you specify subnets in a [shared VPC][1] for a RabbitMQ broker,
    #   the associated VPC to which the specified subnets belong must be
    #   owned by your Amazon Web Services account. Amazon MQ will not be
    #   able to create VPC endpoints in VPCs that are not owned by your
    #   Amazon Web Services account.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Create tags when creating the broker.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] users
    #   The list of broker users (persons or applications) who can access
    #   queues and topics. For Amazon MQ for RabbitMQ brokers, one and only
    #   one administrative user is accepted and created when a broker is
    #   first provisioned. All subsequent broker users are created by making
    #   RabbitMQ API calls directly to brokers or via the RabbitMQ web
    #   console.
    #   @return [Array<Types::User>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateBrokerInput AWS API Documentation
    #
    class CreateBrokerInput < Struct.new(
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_name,
      :configuration,
      :creator_request_id,
      :deployment_mode,
      :data_replication_mode,
      :data_replication_primary_broker_arn,
      :encryption_options,
      :engine_type,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :publicly_accessible,
      :security_groups,
      :storage_type,
      :subnet_ids,
      :tags,
      :users)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the created broker.
    #
    # @!attribute [rw] broker_arn
    #   The broker's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] broker_id
    #   The unique ID that Amazon MQ generates for the broker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateBrokerOutput AWS API Documentation
    #
    class CreateBrokerOutput < Struct.new(
      :broker_arn,
      :broker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   @return [Boolean]
    #
    # @!attribute [rw] broker_name
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   A list of information about the configuration.
    #   @return [Types::ConfigurationId]
    #
    # @!attribute [rw] creator_request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] deployment_mode
    #   The broker's deployment mode.
    #   @return [String]
    #
    # @!attribute [rw] encryption_options
    #   Encryption options for the broker.
    #   @return [Types::EncryptionOptions]
    #
    # @!attribute [rw] engine_type
    #   The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   @return [String]
    #
    # @!attribute [rw] ldap_server_metadata
    #   Optional. The metadata of the LDAP server used to authenticate and
    #   authorize connections to the broker.
    #
    #   Does not apply to RabbitMQ brokers.
    #   @return [Types::LdapServerMetadataInput]
    #
    # @!attribute [rw] logs
    #   The list of information about logs to be enabled for the specified
    #   broker.
    #   @return [Types::Logs]
    #
    # @!attribute [rw] maintenance_window_start_time
    #   The scheduled time period relative to UTC during which Amazon MQ
    #   begins to apply pending updates or patches to the broker.
    #   @return [Types::WeeklyStartTime]
    #
    # @!attribute [rw] publicly_accessible
    #   @return [Boolean]
    #
    # @!attribute [rw] security_groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_type
    #   The broker's storage type.
    #
    #   EFS is not supported for RabbitMQ engine type.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] users
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] data_replication_mode
    #   Specifies whether a broker is a part of a data replication pair.
    #   @return [String]
    #
    # @!attribute [rw] data_replication_primary_broker_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateBrokerRequest AWS API Documentation
    #
    class CreateBrokerRequest < Struct.new(
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_name,
      :configuration,
      :creator_request_id,
      :deployment_mode,
      :encryption_options,
      :engine_type,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :publicly_accessible,
      :security_groups,
      :storage_type,
      :subnet_ids,
      :tags,
      :users,
      :data_replication_mode,
      :data_replication_primary_broker_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_arn
    #   @return [String]
    #
    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateBrokerResponse AWS API Documentation
    #
    class CreateBrokerResponse < Struct.new(
      :broker_arn,
      :broker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a new configuration for the specified configuration name.
    # Amazon MQ uses the default configuration (the engine type and
    # version).
    #
    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy associated with the
    #   configuration. The default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   Required. The type of broker engine. Currently, Amazon MQ supports
    #   ACTIVEMQ and RABBITMQ.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The broker engine version. Defaults to the latest available version
    #   for the specified broker engine type. For more information, see the
    #   [ActiveMQ version management][1] and the [RabbitMQ version
    #   management][2] sections in the Amazon MQ Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html
    #   [2]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Required. The name of the configuration. This value can contain only
    #   alphanumeric characters, dashes, periods, underscores, and tildes (-
    #   . \_ ~). This value must be 1-150 characters long.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Create tags when creating the configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateConfigurationInput AWS API Documentation
    #
    class CreateConfigurationInput < Struct.new(
      :authentication_strategy,
      :engine_type,
      :engine_version,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the created configuration.
    #
    # @!attribute [rw] arn
    #   Required. The Amazon Resource Name (ARN) of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy associated with the
    #   configuration. The default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   Required. The date and time of the configuration.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   Required. The unique ID that Amazon MQ generates for the
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision of the configuration.
    #   @return [Types::ConfigurationRevision]
    #
    # @!attribute [rw] name
    #   Required. The name of the configuration. This value can contain only
    #   alphanumeric characters, dashes, periods, underscores, and tildes (-
    #   . \_ ~). This value must be 1-150 characters long.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateConfigurationOutput AWS API Documentation
    #
    class CreateConfigurationOutput < Struct.new(
      :arn,
      :authentication_strategy,
      :created,
      :id,
      :latest_revision,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateConfigurationRequest AWS API Documentation
    #
    class CreateConfigurationRequest < Struct.new(
      :authentication_strategy,
      :engine_type,
      :engine_version,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   Returns information about the specified configuration revision.
    #   @return [Types::ConfigurationRevision]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateConfigurationResponse AWS API Documentation
    #
    class CreateConfigurationResponse < Struct.new(
      :arn,
      :authentication_strategy,
      :created,
      :id,
      :latest_revision,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateTagsRequest AWS API Documentation
    #
    class CreateTagsRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a new ActiveMQ user.
    #
    # @!attribute [rw] console_access
    #   Enables access to the ActiveMQ Web Console for the ActiveMQ user.
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   The list of groups (20 maximum) to which the ActiveMQ user belongs.
    #   This value can contain only alphanumeric characters, dashes,
    #   periods, underscores, and tildes (- . \_ ~). This value must be
    #   2-100 characters long.
    #   @return [Array<String>]
    #
    # @!attribute [rw] password
    #   Required. The password of the user. This value must be at least 12
    #   characters long, must contain at least 4 unique characters, and must
    #   not contain commas, colons, or equal signs (,:=).
    #   @return [String]
    #
    # @!attribute [rw] replication_user
    #   Defines if this user is intended for CRDR replication purposes.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateUserInput AWS API Documentation
    #
    class CreateUserInput < Struct.new(
      :console_access,
      :groups,
      :password,
      :replication_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] console_access
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] password
    #   @return [String]
    #
    # @!attribute [rw] username
    #   @return [String]
    #
    # @!attribute [rw] replication_user
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :broker_id,
      :console_access,
      :groups,
      :password,
      :username,
      :replication_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Aws::EmptyStructure; end

    # Specifies a broker in a data replication pair.
    #
    # @!attribute [rw] broker_id
    #   Required. The unique broker id generated by Amazon MQ.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Required. The region of the broker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DataReplicationCounterpart AWS API Documentation
    #
    class DataReplicationCounterpart < Struct.new(
      :broker_id,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The replication details of the data replication-enabled broker. Only
    # returned if dataReplicationMode or pendingDataReplicationMode is set
    # to CRDR.
    #
    # @!attribute [rw] data_replication_counterpart
    #   Describes the replica/primary broker. Only returned if this broker
    #   is currently set as a primary or replica in the broker's
    #   dataReplicationRole property.
    #   @return [Types::DataReplicationCounterpart]
    #
    # @!attribute [rw] data_replication_role
    #   Defines the role of this broker in a data replication pair. When a
    #   replica broker is promoted to primary, this role is interchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DataReplicationMetadataOutput AWS API Documentation
    #
    class DataReplicationMetadataOutput < Struct.new(
      :data_replication_counterpart,
      :data_replication_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the deleted broker.
    #
    # @!attribute [rw] broker_id
    #   The unique ID that Amazon MQ generates for the broker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteBrokerOutput AWS API Documentation
    #
    class DeleteBrokerOutput < Struct.new(
      :broker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteBrokerRequest AWS API Documentation
    #
    class DeleteBrokerRequest < Struct.new(
      :broker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteBrokerResponse AWS API Documentation
    #
    class DeleteBrokerResponse < Struct.new(
      :broker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the deleted configuration.
    #
    # @!attribute [rw] configuration_id
    #   The unique ID that Amazon MQ generates for the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteConfigurationOutput AWS API Documentation
    #
    class DeleteConfigurationOutput < Struct.new(
      :configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteConfigurationRequest AWS API Documentation
    #
    class DeleteConfigurationRequest < Struct.new(
      :configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteConfigurationResponse AWS API Documentation
    #
    class DeleteConfigurationResponse < Struct.new(
      :configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteTagsRequest AWS API Documentation
    #
    class DeleteTagsRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] username
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :broker_id,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteUserResponse AWS API Documentation
    #
    class DeleteUserResponse < Aws::EmptyStructure; end

    # @!attribute [rw] engine_type
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBrokerEngineTypesRequest AWS API Documentation
    #
    class DescribeBrokerEngineTypesRequest < Struct.new(
      :engine_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_engine_types
    #   @return [Array<Types::BrokerEngineType>]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBrokerEngineTypesResponse AWS API Documentation
    #
    class DescribeBrokerEngineTypesResponse < Struct.new(
      :broker_engine_types,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_type
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBrokerInstanceOptionsRequest AWS API Documentation
    #
    class DescribeBrokerInstanceOptionsRequest < Struct.new(
      :engine_type,
      :host_instance_type,
      :max_results,
      :next_token,
      :storage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_instance_options
    #   @return [Array<Types::BrokerInstanceOption>]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBrokerInstanceOptionsResponse AWS API Documentation
    #
    class DescribeBrokerInstanceOptionsResponse < Struct.new(
      :broker_instance_options,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the specified broker.
    #
    # @!attribute [rw] actions_required
    #   Actions required for a broker.
    #   @return [Array<Types::ActionRequired>]
    #
    # @!attribute [rw] authentication_strategy
    #   The authentication strategy used to secure the broker. The default
    #   is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Enables automatic upgrades to new patch versions for brokers as new
    #   versions are released and supported by Amazon MQ. Automatic upgrades
    #   occur during the scheduled maintenance window or after a manual
    #   broker reboot.
    #   @return [Boolean]
    #
    # @!attribute [rw] broker_arn
    #   The broker's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] broker_id
    #   The unique ID that Amazon MQ generates for the broker.
    #   @return [String]
    #
    # @!attribute [rw] broker_instances
    #   A list of information about allocated brokers.
    #   @return [Array<Types::BrokerInstance>]
    #
    # @!attribute [rw] broker_name
    #   The broker's name. This value must be unique in your Amazon Web
    #   Services account account, 1-50 characters long, must contain only
    #   letters, numbers, dashes, and underscores, and must not contain
    #   white spaces, brackets, wildcard characters, or special characters.
    #   @return [String]
    #
    # @!attribute [rw] broker_state
    #   The broker's status.
    #   @return [String]
    #
    # @!attribute [rw] configurations
    #   The list of all revisions for the specified configuration.
    #   @return [Types::Configurations]
    #
    # @!attribute [rw] created
    #   The time when the broker was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_mode
    #   The broker's deployment mode.
    #   @return [String]
    #
    # @!attribute [rw] data_replication_metadata
    #   The replication details of the data replication-enabled broker. Only
    #   returned if dataReplicationMode is set to CRDR.
    #   @return [Types::DataReplicationMetadataOutput]
    #
    # @!attribute [rw] data_replication_mode
    #   Describes whether this broker is a part of a data replication pair.
    #   @return [String]
    #
    # @!attribute [rw] encryption_options
    #   Encryption options for the broker.
    #   @return [Types::EncryptionOptions]
    #
    # @!attribute [rw] engine_type
    #   The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ
    #   and RABBITMQ.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The broker engine version. For more information, see the [ActiveMQ
    #   version management][1] and the [RabbitMQ version management][2]
    #   sections in the Amazon MQ Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html
    #   [2]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   The broker's instance type.
    #   @return [String]
    #
    # @!attribute [rw] ldap_server_metadata
    #   The metadata of the LDAP server used to authenticate and authorize
    #   connections to the broker.
    #   @return [Types::LdapServerMetadataOutput]
    #
    # @!attribute [rw] logs
    #   The list of information about logs currently enabled and pending to
    #   be deployed for the specified broker.
    #   @return [Types::LogsSummary]
    #
    # @!attribute [rw] maintenance_window_start_time
    #   The parameters that determine the WeeklyStartTime.
    #   @return [Types::WeeklyStartTime]
    #
    # @!attribute [rw] pending_authentication_strategy
    #   The authentication strategy that will be applied when the broker is
    #   rebooted. The default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] pending_data_replication_metadata
    #   The pending replication details of the data replication-enabled
    #   broker. Only returned if pendingDataReplicationMode is set to CRDR.
    #   @return [Types::DataReplicationMetadataOutput]
    #
    # @!attribute [rw] pending_data_replication_mode
    #   Describes whether this broker will be a part of a data replication
    #   pair after reboot.
    #   @return [String]
    #
    # @!attribute [rw] pending_engine_version
    #   The broker engine version to upgrade to. For more information, see
    #   the [ActiveMQ version management][1] and the [RabbitMQ version
    #   management][2] sections in the Amazon MQ Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html
    #   [2]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html
    #   @return [String]
    #
    # @!attribute [rw] pending_host_instance_type
    #   The broker's host instance type to upgrade to. For a list of
    #   supported instance types, see [Broker instance types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types
    #   @return [String]
    #
    # @!attribute [rw] pending_ldap_server_metadata
    #   The metadata of the LDAP server that will be used to authenticate
    #   and authorize connections to the broker after it is rebooted.
    #   @return [Types::LdapServerMetadataOutput]
    #
    # @!attribute [rw] pending_security_groups
    #   The list of pending security groups to authorize connections to
    #   brokers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publicly_accessible
    #   Enables connections from applications outside of the VPC that hosts
    #   the broker's subnets.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_groups
    #   The list of rules (1 minimum, 125 maximum) that authorize
    #   connections to brokers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_type
    #   The broker's storage type.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The list of groups that define which subnets and IP ranges the
    #   broker can use from different Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The list of all tags associated with this broker.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] users
    #   The list of all broker usernames for the specified broker.
    #   @return [Array<Types::UserSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBrokerOutput AWS API Documentation
    #
    class DescribeBrokerOutput < Struct.new(
      :actions_required,
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_arn,
      :broker_id,
      :broker_instances,
      :broker_name,
      :broker_state,
      :configurations,
      :created,
      :deployment_mode,
      :data_replication_metadata,
      :data_replication_mode,
      :encryption_options,
      :engine_type,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :pending_authentication_strategy,
      :pending_data_replication_metadata,
      :pending_data_replication_mode,
      :pending_engine_version,
      :pending_host_instance_type,
      :pending_ldap_server_metadata,
      :pending_security_groups,
      :publicly_accessible,
      :security_groups,
      :storage_type,
      :subnet_ids,
      :tags,
      :users)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBrokerRequest AWS API Documentation
    #
    class DescribeBrokerRequest < Struct.new(
      :broker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] actions_required
    #   @return [Array<Types::ActionRequired>]
    #
    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   @return [Boolean]
    #
    # @!attribute [rw] broker_arn
    #   @return [String]
    #
    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] broker_instances
    #   @return [Array<Types::BrokerInstance>]
    #
    # @!attribute [rw] broker_name
    #   @return [String]
    #
    # @!attribute [rw] broker_state
    #   The broker's status.
    #   @return [String]
    #
    # @!attribute [rw] configurations
    #   Broker configuration information
    #   @return [Types::Configurations]
    #
    # @!attribute [rw] created
    #   @return [Time]
    #
    # @!attribute [rw] deployment_mode
    #   The broker's deployment mode.
    #   @return [String]
    #
    # @!attribute [rw] encryption_options
    #   Encryption options for the broker.
    #   @return [Types::EncryptionOptions]
    #
    # @!attribute [rw] engine_type
    #   The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   @return [String]
    #
    # @!attribute [rw] ldap_server_metadata
    #   Optional. The metadata of the LDAP server used to authenticate and
    #   authorize connections to the broker.
    #   @return [Types::LdapServerMetadataOutput]
    #
    # @!attribute [rw] logs
    #   The list of information about logs currently enabled and pending to
    #   be deployed for the specified broker.
    #   @return [Types::LogsSummary]
    #
    # @!attribute [rw] maintenance_window_start_time
    #   The scheduled time period relative to UTC during which Amazon MQ
    #   begins to apply pending updates or patches to the broker.
    #   @return [Types::WeeklyStartTime]
    #
    # @!attribute [rw] pending_authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] pending_engine_version
    #   @return [String]
    #
    # @!attribute [rw] pending_host_instance_type
    #   @return [String]
    #
    # @!attribute [rw] pending_ldap_server_metadata
    #   Optional. The metadata of the LDAP server used to authenticate and
    #   authorize connections to the broker.
    #   @return [Types::LdapServerMetadataOutput]
    #
    # @!attribute [rw] pending_security_groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] publicly_accessible
    #   @return [Boolean]
    #
    # @!attribute [rw] security_groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_type
    #   The broker's storage type.
    #
    #   EFS is not supported for RabbitMQ engine type.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] users
    #   @return [Array<Types::UserSummary>]
    #
    # @!attribute [rw] data_replication_metadata
    #   The replication details of the data replication-enabled broker. Only
    #   returned if dataReplicationMode or pendingDataReplicationMode is set
    #   to CRDR.
    #   @return [Types::DataReplicationMetadataOutput]
    #
    # @!attribute [rw] data_replication_mode
    #   Specifies whether a broker is a part of a data replication pair.
    #   @return [String]
    #
    # @!attribute [rw] pending_data_replication_metadata
    #   The replication details of the data replication-enabled broker. Only
    #   returned if dataReplicationMode or pendingDataReplicationMode is set
    #   to CRDR.
    #   @return [Types::DataReplicationMetadataOutput]
    #
    # @!attribute [rw] pending_data_replication_mode
    #   Specifies whether a broker is a part of a data replication pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBrokerResponse AWS API Documentation
    #
    class DescribeBrokerResponse < Struct.new(
      :actions_required,
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_arn,
      :broker_id,
      :broker_instances,
      :broker_name,
      :broker_state,
      :configurations,
      :created,
      :deployment_mode,
      :encryption_options,
      :engine_type,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :pending_authentication_strategy,
      :pending_engine_version,
      :pending_host_instance_type,
      :pending_ldap_server_metadata,
      :pending_security_groups,
      :publicly_accessible,
      :security_groups,
      :storage_type,
      :subnet_ids,
      :tags,
      :users,
      :data_replication_metadata,
      :data_replication_mode,
      :pending_data_replication_metadata,
      :pending_data_replication_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfigurationRequest AWS API Documentation
    #
    class DescribeConfigurationRequest < Struct.new(
      :configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   @return [String]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   Returns information about the specified configuration revision.
    #   @return [Types::ConfigurationRevision]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfigurationResponse AWS API Documentation
    #
    class DescribeConfigurationResponse < Struct.new(
      :arn,
      :authentication_strategy,
      :created,
      :description,
      :engine_type,
      :engine_version,
      :id,
      :latest_revision,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the specified configuration revision for the specified
    # configuration.
    #
    # @!attribute [rw] configuration_id
    #   Required. The unique ID that Amazon MQ generates for the
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   Required. The date and time of the configuration.
    #   @return [Time]
    #
    # @!attribute [rw] data
    #   Amazon MQ for ActiveMQ: the base64-encoded XML configuration. Amazon
    #   MQ for RabbitMQ: base64-encoded Cuttlefish.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfigurationRevisionOutput AWS API Documentation
    #
    class DescribeConfigurationRevisionOutput < Struct.new(
      :configuration_id,
      :created,
      :data,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_id
    #   @return [String]
    #
    # @!attribute [rw] configuration_revision
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfigurationRevisionRequest AWS API Documentation
    #
    class DescribeConfigurationRevisionRequest < Struct.new(
      :configuration_id,
      :configuration_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_id
    #   @return [String]
    #
    # @!attribute [rw] created
    #   @return [Time]
    #
    # @!attribute [rw] data
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfigurationRevisionResponse AWS API Documentation
    #
    class DescribeConfigurationRevisionResponse < Struct.new(
      :configuration_id,
      :created,
      :data,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an ActiveMQ user.
    #
    # @!attribute [rw] broker_id
    #   Required. The unique ID that Amazon MQ generates for the broker.
    #   @return [String]
    #
    # @!attribute [rw] console_access
    #   Enables access to the the ActiveMQ Web Console for the ActiveMQ
    #   user.
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   The list of groups (20 maximum) to which the ActiveMQ user belongs.
    #   This value can contain only alphanumeric characters, dashes,
    #   periods, underscores, and tildes (- . \_ ~). This value must be
    #   2-100 characters long.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pending
    #   The status of the changes pending for the ActiveMQ user.
    #   @return [Types::UserPendingChanges]
    #
    # @!attribute [rw] replication_user
    #   Describes whether the user is intended for data replication
    #   @return [Boolean]
    #
    # @!attribute [rw] username
    #   Required. The username of the ActiveMQ user. This value can contain
    #   only alphanumeric characters, dashes, periods, underscores, and
    #   tildes (- . \_ ~). This value must be 2-100 characters long.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeUserOutput AWS API Documentation
    #
    class DescribeUserOutput < Struct.new(
      :broker_id,
      :console_access,
      :groups,
      :pending,
      :replication_user,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] username
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeUserRequest AWS API Documentation
    #
    class DescribeUserRequest < Struct.new(
      :broker_id,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] console_access
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] pending
    #   Returns information about the status of the changes pending for the
    #   ActiveMQ user.
    #   @return [Types::UserPendingChanges]
    #
    # @!attribute [rw] username
    #   @return [String]
    #
    # @!attribute [rw] replication_user
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeUserResponse AWS API Documentation
    #
    class DescribeUserResponse < Struct.new(
      :broker_id,
      :console_access,
      :groups,
      :pending,
      :username,
      :replication_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encryption options for the broker.
    #
    # @!attribute [rw] kms_key_id
    #   The customer master key (CMK) to use for the A KMS (KMS). This key
    #   is used to encrypt your data at rest. If not provided, Amazon MQ
    #   will use a default CMK to encrypt your data.
    #   @return [String]
    #
    # @!attribute [rw] use_aws_owned_key
    #   Enables the use of an Amazon Web Services owned CMK using KMS (KMS).
    #   Set to true by default, if no value is provided, for example, for
    #   RabbitMQ brokers.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/EncryptionOptions AWS API Documentation
    #
    class EncryptionOptions < Struct.new(
      :kms_key_id,
      :use_aws_owned_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Id of the engine version.
    #
    # @!attribute [rw] name
    #   Id for the version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/EngineVersion AWS API Documentation
    #
    class EngineVersion < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] error_attribute
    #   The attribute which caused the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The explanation of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/Error AWS API Documentation
    #
    class Error < Struct.new(
      :error_attribute,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] error_attribute
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :error_attribute,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] error_attribute
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :error_attribute,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional. The metadata of the LDAP server used to authenticate and
    # authorize connections to the broker.
    #
    # Does not apply to RabbitMQ brokers.
    #
    # @!attribute [rw] hosts
    #   Specifies the location of the LDAP server such as Directory Service
    #   for Microsoft Active Directory. Optional failover server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_base
    #   The distinguished name of the node in the directory information tree
    #   (DIT) to search for roles or groups. For example, ou=group, ou=corp,
    #   dc=corp, dc=example, dc=com.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   Specifies the LDAP attribute that identifies the group name
    #   attribute in the object returned from the group membership query.
    #   @return [String]
    #
    # @!attribute [rw] role_search_matching
    #   The LDAP search filter used to find roles within the roleBase. The
    #   distinguished name of the user matched by userSearchMatching is
    #   substituted into the \{0} placeholder in the search filter. The
    #   client's username is substituted into the \{1} placeholder. For
    #   example, if you set this option to (member=uid=\{1})for the user
    #   janedoe, the search filter becomes (member=uid=janedoe) after string
    #   substitution. It matches all role entries that have a member
    #   attribute equal to uid=janedoe under the subtree selected by the
    #   roleBase.
    #   @return [String]
    #
    # @!attribute [rw] role_search_subtree
    #   The directory search scope for the role. If set to true, scope is to
    #   search the entire subtree.
    #   @return [Boolean]
    #
    # @!attribute [rw] service_account_password
    #   Service account password. A service account is an account in your
    #   LDAP server that has access to initiate a connection. For example,
    #   cn=admin,dc=corp, dc=example, dc=com.
    #   @return [String]
    #
    # @!attribute [rw] service_account_username
    #   Service account username. A service account is an account in your
    #   LDAP server that has access to initiate a connection. For example,
    #   cn=admin,dc=corp, dc=example, dc=com.
    #   @return [String]
    #
    # @!attribute [rw] user_base
    #   Select a particular subtree of the directory information tree (DIT)
    #   to search for user entries. The subtree is specified by a DN, which
    #   specifies the base node of the subtree. For example, by setting this
    #   option to ou=Users,ou=corp, dc=corp, dc=example, dc=com, the search
    #   for user entries is restricted to the subtree beneath ou=Users,
    #   ou=corp, dc=corp, dc=example, dc=com.
    #   @return [String]
    #
    # @!attribute [rw] user_role_name
    #   Specifies the name of the LDAP attribute for the user group
    #   membership.
    #   @return [String]
    #
    # @!attribute [rw] user_search_matching
    #   The LDAP search filter used to find users within the userBase. The
    #   client's username is substituted into the \{0} placeholder in the
    #   search filter. For example, if this option is set to (uid=\{0}) and
    #   the received username is janedoe, the search filter becomes
    #   (uid=janedoe) after string substitution. It will result in matching
    #   an entry like uid=janedoe, ou=Users,ou=corp, dc=corp, dc=example,
    #   dc=com.
    #   @return [String]
    #
    # @!attribute [rw] user_search_subtree
    #   The directory search scope for the user. If set to true, scope is to
    #   search the entire subtree.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/LdapServerMetadataInput AWS API Documentation
    #
    class LdapServerMetadataInput < Struct.new(
      :hosts,
      :role_base,
      :role_name,
      :role_search_matching,
      :role_search_subtree,
      :service_account_password,
      :service_account_username,
      :user_base,
      :user_role_name,
      :user_search_matching,
      :user_search_subtree)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional. The metadata of the LDAP server used to authenticate and
    # authorize connections to the broker.
    #
    # @!attribute [rw] hosts
    #   Specifies the location of the LDAP server such as Directory Service
    #   for Microsoft Active Directory. Optional failover server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_base
    #   The distinguished name of the node in the directory information tree
    #   (DIT) to search for roles or groups. For example, ou=group, ou=corp,
    #   dc=corp, dc=example, dc=com.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   Specifies the LDAP attribute that identifies the group name
    #   attribute in the object returned from the group membership query.
    #   @return [String]
    #
    # @!attribute [rw] role_search_matching
    #   The LDAP search filter used to find roles within the roleBase. The
    #   distinguished name of the user matched by userSearchMatching is
    #   substituted into the \{0} placeholder in the search filter. The
    #   client's username is substituted into the \{1} placeholder. For
    #   example, if you set this option to (member=uid=\{1})for the user
    #   janedoe, the search filter becomes (member=uid=janedoe) after string
    #   substitution. It matches all role entries that have a member
    #   attribute equal to uid=janedoe under the subtree selected by the
    #   roleBase.
    #   @return [String]
    #
    # @!attribute [rw] role_search_subtree
    #   The directory search scope for the role. If set to true, scope is to
    #   search the entire subtree.
    #   @return [Boolean]
    #
    # @!attribute [rw] service_account_username
    #   Service account username. A service account is an account in your
    #   LDAP server that has access to initiate a connection. For example,
    #   cn=admin,dc=corp, dc=example, dc=com.
    #   @return [String]
    #
    # @!attribute [rw] user_base
    #   Select a particular subtree of the directory information tree (DIT)
    #   to search for user entries. The subtree is specified by a DN, which
    #   specifies the base node of the subtree. For example, by setting this
    #   option to ou=Users,ou=corp, dc=corp, dc=example, dc=com, the search
    #   for user entries is restricted to the subtree beneath ou=Users,
    #   ou=corp, dc=corp, dc=example, dc=com.
    #   @return [String]
    #
    # @!attribute [rw] user_role_name
    #   Specifies the name of the LDAP attribute for the user group
    #   membership.
    #   @return [String]
    #
    # @!attribute [rw] user_search_matching
    #   The LDAP search filter used to find users within the userBase. The
    #   client's username is substituted into the \{0} placeholder in the
    #   search filter. For example, if this option is set to (uid=\{0}) and
    #   the received username is janedoe, the search filter becomes
    #   (uid=janedoe) after string substitution. It will result in matching
    #   an entry like uid=janedoe, ou=Users,ou=corp, dc=corp, dc=example,
    #   dc=com.
    #   @return [String]
    #
    # @!attribute [rw] user_search_subtree
    #   The directory search scope for the user. If set to true, scope is to
    #   search the entire subtree.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/LdapServerMetadataOutput AWS API Documentation
    #
    class LdapServerMetadataOutput < Struct.new(
      :hosts,
      :role_base,
      :role_name,
      :role_search_matching,
      :role_search_subtree,
      :service_account_username,
      :user_base,
      :user_role_name,
      :user_search_matching,
      :user_search_subtree)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of information about all brokers.
    #
    # @!attribute [rw] broker_summaries
    #   A list of information about all brokers.
    #   @return [Array<Types::BrokerSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that specifies the next page of results Amazon MQ should
    #   return. To request the first page, leave nextToken empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListBrokersOutput AWS API Documentation
    #
    class ListBrokersOutput < Struct.new(
      :broker_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListBrokersRequest AWS API Documentation
    #
    class ListBrokersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_summaries
    #   @return [Array<Types::BrokerSummary>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListBrokersResponse AWS API Documentation
    #
    class ListBrokersResponse < Struct.new(
      :broker_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a list of all revisions for the specified configuration.
    #
    # @!attribute [rw] configuration_id
    #   The unique ID that Amazon MQ generates for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of configuration revisions that can be returned
    #   per page (20 by default). This value must be an integer from 5 to
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that specifies the next page of results Amazon MQ should
    #   return. To request the first page, leave nextToken empty.
    #   @return [String]
    #
    # @!attribute [rw] revisions
    #   The list of all revisions for the specified configuration.
    #   @return [Array<Types::ConfigurationRevision>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurationRevisionsOutput AWS API Documentation
    #
    class ListConfigurationRevisionsOutput < Struct.new(
      :configuration_id,
      :max_results,
      :next_token,
      :revisions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurationRevisionsRequest AWS API Documentation
    #
    class ListConfigurationRevisionsRequest < Struct.new(
      :configuration_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] revisions
    #   @return [Array<Types::ConfigurationRevision>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurationRevisionsResponse AWS API Documentation
    #
    class ListConfigurationRevisionsResponse < Struct.new(
      :configuration_id,
      :max_results,
      :next_token,
      :revisions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a list of all configurations.
    #
    # @!attribute [rw] configurations
    #   The list of all revisions for the specified configuration.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of configurations that Amazon MQ can return per
    #   page (20 by default). This value must be an integer from 5 to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that specifies the next page of results Amazon MQ should
    #   return. To request the first page, leave nextToken empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurationsOutput AWS API Documentation
    #
    class ListConfigurationsOutput < Struct.new(
      :configurations,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurationsRequest AWS API Documentation
    #
    class ListConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configurations
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurationsResponse AWS API Documentation
    #
    class ListConfigurationsResponse < Struct.new(
      :configurations,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a list of all ActiveMQ users.
    #
    # @!attribute [rw] broker_id
    #   Required. The unique ID that Amazon MQ generates for the broker.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Required. The maximum number of ActiveMQ users that can be returned
    #   per page (20 by default). This value must be an integer from 5 to
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that specifies the next page of results Amazon MQ should
    #   return. To request the first page, leave nextToken empty.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   Required. The list of all ActiveMQ usernames for the specified
    #   broker. Does not apply to RabbitMQ brokers.
    #   @return [Array<Types::UserSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListUsersOutput AWS API Documentation
    #
    class ListUsersOutput < Struct.new(
      :broker_id,
      :max_results,
      :next_token,
      :users)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :broker_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] users
    #   @return [Array<Types::UserSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :broker_id,
      :max_results,
      :next_token,
      :users)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of information about logs to be enabled for the specified
    # broker.
    #
    # @!attribute [rw] audit
    #   Enables audit logging. Every user management action made using JMX
    #   or the ActiveMQ Web Console is logged. Does not apply to RabbitMQ
    #   brokers.
    #   @return [Boolean]
    #
    # @!attribute [rw] general
    #   Enables general logging.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/Logs AWS API Documentation
    #
    class Logs < Struct.new(
      :audit,
      :general)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of information about logs currently enabled and pending to be
    # deployed for the specified broker.
    #
    # @!attribute [rw] audit
    #   Enables audit logging. Every user management action made using JMX
    #   or the ActiveMQ Web Console is logged.
    #   @return [Boolean]
    #
    # @!attribute [rw] audit_log_group
    #   The location of the CloudWatch Logs log group where audit logs are
    #   sent.
    #   @return [String]
    #
    # @!attribute [rw] general
    #   Enables general logging.
    #   @return [Boolean]
    #
    # @!attribute [rw] general_log_group
    #   The location of the CloudWatch Logs log group where general logs are
    #   sent.
    #   @return [String]
    #
    # @!attribute [rw] pending
    #   The list of information about logs pending to be deployed for the
    #   specified broker.
    #   @return [Types::PendingLogs]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/LogsSummary AWS API Documentation
    #
    class LogsSummary < Struct.new(
      :audit,
      :audit_log_group,
      :general,
      :general_log_group,
      :pending)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] error_attribute
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :error_attribute,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of information about logs to be enabled for the specified
    # broker.
    #
    # @!attribute [rw] audit
    #   Enables audit logging. Every user management action made using JMX
    #   or the ActiveMQ Web Console is logged.
    #   @return [Boolean]
    #
    # @!attribute [rw] general
    #   Enables general logging.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/PendingLogs AWS API Documentation
    #
    class PendingLogs < Struct.new(
      :audit,
      :general)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a Promote request with the properties specified.
    #
    # @!attribute [rw] mode
    #   The Promote mode requested. Note: Valid values for the parameter are
    #   SWITCHOVER, FAILOVER.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/PromoteInput AWS API Documentation
    #
    class PromoteInput < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the updated broker.
    #
    # @!attribute [rw] broker_id
    #   The unique ID that Amazon MQ generates for the broker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/PromoteOutput AWS API Documentation
    #
    class PromoteOutput < Struct.new(
      :broker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The Promote mode requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/PromoteRequest AWS API Documentation
    #
    class PromoteRequest < Struct.new(
      :broker_id,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/PromoteResponse AWS API Documentation
    #
    class PromoteResponse < Struct.new(
      :broker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/RebootBrokerRequest AWS API Documentation
    #
    class RebootBrokerRequest < Struct.new(
      :broker_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/RebootBrokerResponse AWS API Documentation
    #
    class RebootBrokerResponse < Aws::EmptyStructure; end

    # Returns information about the configuration element or attribute that
    # was sanitized in the configuration.
    #
    # @!attribute [rw] attribute_name
    #   The name of the configuration attribute that has been sanitized.
    #   @return [String]
    #
    # @!attribute [rw] element_name
    #   The name of the configuration element that has been sanitized.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for which the configuration elements or attributes were
    #   sanitized.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/SanitizationWarning AWS API Documentation
    #
    class SanitizationWarning < Struct.new(
      :attribute_name,
      :element_name,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map of the key-value pairs for the resource tag.
    #
    # @!attribute [rw] tags
    #   The key-value pair for the resource tag.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/Tags AWS API Documentation
    #
    class Tags < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an error.
    #
    # @!attribute [rw] error_attribute
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :error_attribute,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates the broker using the specified properties.
    #
    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Enables automatic upgrades to new patch versions for brokers as new
    #   versions are released and supported by Amazon MQ. Automatic upgrades
    #   occur during the scheduled maintenance window or after a manual
    #   broker reboot.
    #
    #   <note markdown="1">Must be set to true for ActiveMQ brokers version 5.18 and above and
    #   for RabbitMQ brokers version 3.13 and above.
    #
    #   </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] configuration
    #   A list of information about the configuration.
    #   @return [Types::ConfigurationId]
    #
    # @!attribute [rw] data_replication_mode
    #   Defines whether this broker is a part of a data replication pair.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The broker engine version. For more information, see the [ActiveMQ
    #   version management][1] and the [RabbitMQ version management][2]
    #   sections in the Amazon MQ Developer Guide.
    #
    #   <note markdown="1">When upgrading to ActiveMQ version 5.18 and above or RabbitMQ
    #   version 3.13 and above, you must have autoMinorVersionUpgrade set to
    #   true for the broker.
    #
    #   </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html
    #   [2]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   The broker's host instance type to upgrade to. For a list of
    #   supported instance types, see [Broker instance types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types
    #   @return [String]
    #
    # @!attribute [rw] ldap_server_metadata
    #   Optional. The metadata of the LDAP server used to authenticate and
    #   authorize connections to the broker. Does not apply to RabbitMQ
    #   brokers.
    #   @return [Types::LdapServerMetadataInput]
    #
    # @!attribute [rw] logs
    #   Enables Amazon CloudWatch logging for brokers.
    #   @return [Types::Logs]
    #
    # @!attribute [rw] maintenance_window_start_time
    #   The parameters that determine the WeeklyStartTime.
    #   @return [Types::WeeklyStartTime]
    #
    # @!attribute [rw] security_groups
    #   The list of security groups (1 minimum, 5 maximum) that authorizes
    #   connections to brokers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateBrokerInput AWS API Documentation
    #
    class UpdateBrokerInput < Struct.new(
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :configuration,
      :data_replication_mode,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the updated broker.
    #
    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Enables automatic upgrades to new patch versions for brokers as new
    #   versions are released and supported by Amazon MQ. Automatic upgrades
    #   occur during the scheduled maintenance window or after a manual
    #   broker reboot.
    #   @return [Boolean]
    #
    # @!attribute [rw] broker_id
    #   Required. The unique ID that Amazon MQ generates for the broker.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The ID of the updated configuration.
    #   @return [Types::ConfigurationId]
    #
    # @!attribute [rw] data_replication_metadata
    #   The replication details of the data replication-enabled broker. Only
    #   returned if dataReplicationMode is set to CRDR.
    #   @return [Types::DataReplicationMetadataOutput]
    #
    # @!attribute [rw] data_replication_mode
    #   Describes whether this broker is a part of a data replication pair.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The broker engine version to upgrade to. For more information, see
    #   the [ActiveMQ version management][1] and the [RabbitMQ version
    #   management][2] sections in the Amazon MQ Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html
    #   [2]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   The broker's host instance type to upgrade to. For a list of
    #   supported instance types, see [Broker instance types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types
    #   @return [String]
    #
    # @!attribute [rw] ldap_server_metadata
    #   Optional. The metadata of the LDAP server used to authenticate and
    #   authorize connections to the broker. Does not apply to RabbitMQ
    #   brokers.
    #   @return [Types::LdapServerMetadataOutput]
    #
    # @!attribute [rw] logs
    #   The list of information about logs to be enabled for the specified
    #   broker.
    #   @return [Types::Logs]
    #
    # @!attribute [rw] maintenance_window_start_time
    #   The parameters that determine the WeeklyStartTime.
    #   @return [Types::WeeklyStartTime]
    #
    # @!attribute [rw] pending_data_replication_metadata
    #   The pending replication details of the data replication-enabled
    #   broker. Only returned if pendingDataReplicationMode is set to CRDR.
    #   @return [Types::DataReplicationMetadataOutput]
    #
    # @!attribute [rw] pending_data_replication_mode
    #   Describes whether this broker will be a part of a data replication
    #   pair after reboot.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The list of security groups (1 minimum, 5 maximum) that authorizes
    #   connections to brokers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateBrokerOutput AWS API Documentation
    #
    class UpdateBrokerOutput < Struct.new(
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_id,
      :configuration,
      :data_replication_metadata,
      :data_replication_mode,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :pending_data_replication_metadata,
      :pending_data_replication_mode,
      :security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   @return [Boolean]
    #
    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   A list of information about the configuration.
    #   @return [Types::ConfigurationId]
    #
    # @!attribute [rw] engine_version
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   @return [String]
    #
    # @!attribute [rw] ldap_server_metadata
    #   Optional. The metadata of the LDAP server used to authenticate and
    #   authorize connections to the broker.
    #
    #   Does not apply to RabbitMQ brokers.
    #   @return [Types::LdapServerMetadataInput]
    #
    # @!attribute [rw] logs
    #   The list of information about logs to be enabled for the specified
    #   broker.
    #   @return [Types::Logs]
    #
    # @!attribute [rw] maintenance_window_start_time
    #   The scheduled time period relative to UTC during which Amazon MQ
    #   begins to apply pending updates or patches to the broker.
    #   @return [Types::WeeklyStartTime]
    #
    # @!attribute [rw] security_groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_replication_mode
    #   Specifies whether a broker is a part of a data replication pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateBrokerRequest AWS API Documentation
    #
    class UpdateBrokerRequest < Struct.new(
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_id,
      :configuration,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :security_groups,
      :data_replication_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   @return [Boolean]
    #
    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   A list of information about the configuration.
    #   @return [Types::ConfigurationId]
    #
    # @!attribute [rw] engine_version
    #   @return [String]
    #
    # @!attribute [rw] host_instance_type
    #   @return [String]
    #
    # @!attribute [rw] ldap_server_metadata
    #   Optional. The metadata of the LDAP server used to authenticate and
    #   authorize connections to the broker.
    #   @return [Types::LdapServerMetadataOutput]
    #
    # @!attribute [rw] logs
    #   The list of information about logs to be enabled for the specified
    #   broker.
    #   @return [Types::Logs]
    #
    # @!attribute [rw] maintenance_window_start_time
    #   The scheduled time period relative to UTC during which Amazon MQ
    #   begins to apply pending updates or patches to the broker.
    #   @return [Types::WeeklyStartTime]
    #
    # @!attribute [rw] security_groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_replication_metadata
    #   The replication details of the data replication-enabled broker. Only
    #   returned if dataReplicationMode or pendingDataReplicationMode is set
    #   to CRDR.
    #   @return [Types::DataReplicationMetadataOutput]
    #
    # @!attribute [rw] data_replication_mode
    #   Specifies whether a broker is a part of a data replication pair.
    #   @return [String]
    #
    # @!attribute [rw] pending_data_replication_metadata
    #   The replication details of the data replication-enabled broker. Only
    #   returned if dataReplicationMode or pendingDataReplicationMode is set
    #   to CRDR.
    #   @return [Types::DataReplicationMetadataOutput]
    #
    # @!attribute [rw] pending_data_replication_mode
    #   Specifies whether a broker is a part of a data replication pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateBrokerResponse AWS API Documentation
    #
    class UpdateBrokerResponse < Struct.new(
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_id,
      :configuration,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :security_groups,
      :data_replication_metadata,
      :data_replication_mode,
      :pending_data_replication_metadata,
      :pending_data_replication_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates the specified configuration.
    #
    # @!attribute [rw] data
    #   Amazon MQ for Active MQ: The base64-encoded XML configuration.
    #   Amazon MQ for RabbitMQ: the base64-encoded Cuttlefish configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateConfigurationInput AWS API Documentation
    #
    class UpdateConfigurationInput < Struct.new(
      :data,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the updated configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   Required. The date and time of the configuration.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The unique ID that Amazon MQ generates for the configuration.
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   The latest revision of the configuration.
    #   @return [Types::ConfigurationRevision]
    #
    # @!attribute [rw] name
    #   The name of the configuration. This value can contain only
    #   alphanumeric characters, dashes, periods, underscores, and tildes (-
    #   . \_ ~). This value must be 1-150 characters long.
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   The list of the first 20 warnings about the configuration elements
    #   or attributes that were sanitized.
    #   @return [Array<Types::SanitizationWarning>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateConfigurationOutput AWS API Documentation
    #
    class UpdateConfigurationOutput < Struct.new(
      :arn,
      :created,
      :id,
      :latest_revision,
      :name,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_id
    #   @return [String]
    #
    # @!attribute [rw] data
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateConfigurationRequest AWS API Documentation
    #
    class UpdateConfigurationRequest < Struct.new(
      :configuration_id,
      :data,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   @return [String]
    #
    # @!attribute [rw] latest_revision
    #   Returns information about the specified configuration revision.
    #   @return [Types::ConfigurationRevision]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   @return [Array<Types::SanitizationWarning>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateConfigurationResponse AWS API Documentation
    #
    class UpdateConfigurationResponse < Struct.new(
      :arn,
      :created,
      :id,
      :latest_revision,
      :name,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates the information for an ActiveMQ user.
    #
    # @!attribute [rw] console_access
    #   Enables access to the the ActiveMQ Web Console for the ActiveMQ
    #   user.
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   The list of groups (20 maximum) to which the ActiveMQ user belongs.
    #   This value can contain only alphanumeric characters, dashes,
    #   periods, underscores, and tildes (- . \_ ~). This value must be
    #   2-100 characters long.
    #   @return [Array<String>]
    #
    # @!attribute [rw] password
    #   The password of the user. This value must be at least 12 characters
    #   long, must contain at least 4 unique characters, and must not
    #   contain commas, colons, or equal signs (,:=).
    #   @return [String]
    #
    # @!attribute [rw] replication_user
    #   Defines whether the user is intended for data replication.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateUserInput AWS API Documentation
    #
    class UpdateUserInput < Struct.new(
      :console_access,
      :groups,
      :password,
      :replication_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] broker_id
    #   @return [String]
    #
    # @!attribute [rw] console_access
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   @return [Array<String>]
    #
    # @!attribute [rw] password
    #   @return [String]
    #
    # @!attribute [rw] username
    #   @return [String]
    #
    # @!attribute [rw] replication_user
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :broker_id,
      :console_access,
      :groups,
      :password,
      :username,
      :replication_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Aws::EmptyStructure; end

    # A user associated with the broker. For Amazon MQ for RabbitMQ brokers,
    # one and only one administrative user is accepted and created when a
    # broker is first provisioned. All subsequent broker users are created
    # by making RabbitMQ API calls directly to brokers or via the RabbitMQ
    # web console.
    #
    # @!attribute [rw] console_access
    #   Enables access to the ActiveMQ Web Console for the ActiveMQ user.
    #   Does not apply to RabbitMQ brokers.
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   The list of groups (20 maximum) to which the ActiveMQ user belongs.
    #   This value can contain only alphanumeric characters, dashes,
    #   periods, underscores, and tildes (- . \_ ~). This value must be
    #   2-100 characters long. Does not apply to RabbitMQ brokers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] password
    #   Required. The password of the user. This value must be at least 12
    #   characters long, must contain at least 4 unique characters, and must
    #   not contain commas, colons, or equal signs (,:=).
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username of the broker user. The following restrictions apply to
    #   broker usernames:
    #
    #   * For Amazon MQ for ActiveMQ brokers, this value can contain only
    #     alphanumeric characters, dashes, periods, underscores, and tildes
    #     (- . \_ ~). This value must be 2-100 characters long.
    #
    #   * para>For Amazon MQ for RabbitMQ brokers, this value can contain
    #     only alphanumeric characters, dashes, periods, underscores (- .
    #     \_). This value must not contain a tilde (~) character. Amazon MQ
    #     prohibts using guest as a valid usename. This value must be 2-100
    #     characters long.
    #
    #     </para>
    #
    #   Do not add personally identifiable information (PII) or other
    #   confidential or sensitive information in broker usernames. Broker
    #   usernames are accessible to other Amazon Web Services services,
    #   including CloudWatch Logs. Broker usernames are not intended to be
    #   used for private or sensitive data.
    #   @return [String]
    #
    # @!attribute [rw] replication_user
    #   Defines if this user is intended for CRDR replication purposes.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/User AWS API Documentation
    #
    class User < Struct.new(
      :console_access,
      :groups,
      :password,
      :username,
      :replication_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the status of the changes pending for the
    # ActiveMQ user.
    #
    # @!attribute [rw] console_access
    #   Enables access to the the ActiveMQ Web Console for the ActiveMQ
    #   user.
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   The list of groups (20 maximum) to which the ActiveMQ user belongs.
    #   This value can contain only alphanumeric characters, dashes,
    #   periods, underscores, and tildes (- . \_ ~). This value must be
    #   2-100 characters long.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pending_change
    #   Required. The type of change pending for the ActiveMQ user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UserPendingChanges AWS API Documentation
    #
    class UserPendingChanges < Struct.new(
      :console_access,
      :groups,
      :pending_change)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns a list of all broker users. Does not apply to RabbitMQ
    # brokers.
    #
    # @!attribute [rw] pending_change
    #   The type of change pending for the broker user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Required. The username of the broker user. This value can contain
    #   only alphanumeric characters, dashes, periods, underscores, and
    #   tildes (- . \_ ~). This value must be 2-100 characters long.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UserSummary AWS API Documentation
    #
    class UserSummary < Struct.new(
      :pending_change,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scheduled time period relative to UTC during which Amazon MQ
    # begins to apply pending updates or patches to the broker.
    #
    # @!attribute [rw] day_of_week
    #   Required. The day of the week.
    #   @return [String]
    #
    # @!attribute [rw] time_of_day
    #   Required. The time, in 24-hour format.
    #   @return [String]
    #
    # @!attribute [rw] time_zone
    #   The time zone, UTC by default, in either the Country/City format, or
    #   the UTC offset format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/WeeklyStartTime AWS API Documentation
    #
    class WeeklyStartTime < Struct.new(
      :day_of_week,
      :time_of_day,
      :time_zone)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

