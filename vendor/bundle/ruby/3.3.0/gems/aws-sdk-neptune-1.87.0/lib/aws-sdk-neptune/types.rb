# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Neptune
  module Types

    # @!attribute [rw] db_cluster_identifier
    #   The name of the DB cluster to associate the IAM role with.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   Neptune DB cluster, for example
    #   `arn:aws:iam::123456789012:role/NeptuneAccessRole`.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature for the Neptune DB cluster that the IAM role
    #   is to be associated with. For the list of supported feature names,
    #   see DBEngineVersion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AddRoleToDBClusterMessage AWS API Documentation
    #
    class AddRoleToDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :role_arn,
      :feature_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the event notification subscription you want to add a
    #   source identifier to.
    #   @return [String]
    #
    # @!attribute [rw] source_identifier
    #   The identifier of the event source to be added.
    #
    #   Constraints:
    #
    #   * If the source type is a DB instance, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a
    #     `DBParameterGroupName` must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` must
    #     be supplied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AddSourceIdentifierToSubscriptionMessage AWS API Documentation
    #
    class AddSourceIdentifierToSubscriptionMessage < Struct.new(
      :subscription_name,
      :source_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Contains the results of a successful invocation of the
    #   DescribeEventSubscriptions action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AddSourceIdentifierToSubscriptionResult AWS API Documentation
    #
    class AddSourceIdentifierToSubscriptionResult < Struct.new(
      :event_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The Amazon Neptune resource that the tags are added to. This value
    #   is an Amazon Resource Name (ARN). For information about creating an
    #   ARN, see [ Constructing an Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Amazon Neptune resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AddTagsToResourceMessage AWS API Documentation
    #
    class AddTagsToResourceMessage < Struct.new(
      :resource_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The Amazon Resource Name (ARN) of the resource that the pending
    #   maintenance action applies to. For information about creating an
    #   ARN, see [ Constructing an Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] apply_action
    #   The pending maintenance action to apply to this resource.
    #
    #   Valid values: `system-update`, `db-upgrade`
    #   @return [String]
    #
    # @!attribute [rw] opt_in_type
    #   A value that specifies the type of opt-in request, or undoes an
    #   opt-in request. An opt-in request of type `immediate` can't be
    #   undone.
    #
    #   Valid values:
    #
    #   * `immediate` - Apply the maintenance action immediately.
    #
    #   * `next-maintenance` - Apply the maintenance action during the next
    #     maintenance window for the resource.
    #
    #   * `undo-opt-in` - Cancel any existing `next-maintenance` opt-in
    #     requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ApplyPendingMaintenanceActionMessage AWS API Documentation
    #
    class ApplyPendingMaintenanceActionMessage < Struct.new(
      :resource_identifier,
      :apply_action,
      :opt_in_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_pending_maintenance_actions
    #   Describes the pending maintenance actions for a resource.
    #   @return [Types::ResourcePendingMaintenanceActions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ApplyPendingMaintenanceActionResult AWS API Documentation
    #
    class ApplyPendingMaintenanceActionResult < Struct.new(
      :resource_pending_maintenance_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specified CIDRIP or EC2 security group is not authorized for the
    # specified DB security group.
    #
    # Neptune may not also be authorized via IAM to perform necessary
    # actions on your behalf.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AuthorizationNotFoundFault AWS API Documentation
    #
    class AuthorizationNotFoundFault < Aws::EmptyStructure; end

    # Specifies an Availability Zone.
    #
    # @!attribute [rw] name
    #   The name of the availability zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # *CertificateIdentifier* does not refer to an existing certificate.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CertificateNotFoundFault AWS API Documentation
    #
    class CertificateNotFoundFault < Aws::EmptyStructure; end

    # Specifies a character set.
    #
    # @!attribute [rw] character_set_name
    #   The name of the character set.
    #   @return [String]
    #
    # @!attribute [rw] character_set_description
    #   The description of the character set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CharacterSet AWS API Documentation
    #
    class CharacterSet < Struct.new(
      :character_set_name,
      :character_set_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration setting for the log types to be enabled for export
    # to CloudWatch Logs for a specific DB instance or DB cluster.
    #
    # The `EnableLogTypes` and `DisableLogTypes` arrays determine which logs
    # will be exported (or not exported) to CloudWatch Logs.
    #
    # Valid log types are: `audit` (to publish audit logs) and `slowquery`
    # (to publish slow-query logs). See [Publishing Neptune logs to Amazon
    # CloudWatch logs][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/cloudwatch-logs.html
    #
    # @!attribute [rw] enable_log_types
    #   The list of log types to enable.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_log_types
    #   The list of log types to disable.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CloudwatchLogsExportConfiguration AWS API Documentation
    #
    class CloudwatchLogsExportConfiguration < Struct.new(
      :enable_log_types,
      :disable_log_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type is used as a response element in the `ModifyDBCluster`
    # operation and contains changes that will be applied during the next
    # maintenance window.
    #
    # @!attribute [rw] pending_cloudwatch_logs_exports
    #   This `PendingCloudwatchLogsExports` structure specifies pending
    #   changes to which CloudWatch logs are enabled and which are disabled.
    #   @return [Types::PendingCloudwatchLogsExports]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DBClusterIdentifier value for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   A value that indicates whether mapping of Amazon Web Services
    #   Identity and Access Management (IAM) accounts to database accounts
    #   is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The database engine version.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automatic DB snapshots are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_type
    #   The pending change in storage type for the DB cluster.   Valid
    #   Values:
    #
    #   * <b> <code>standard</code> </b>   –   ( *the default* ) Configures
    #     cost-effective database storage for applications with moderate to
    #     small I/O usage.
    #
    #   * <b> <code>iopt1</code> </b>   –   Enables [I/O-Optimized
    #     storage][1] that's designed to meet the needs of I/O-intensive
    #     graph workloads that require predictable pricing with low I/O
    #     latency and consistent I/O throughput.
    #
    #     Neptune I/O-Optimized storage is only available starting with
    #     engine release 1.3.0.0.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/storage-types.html#provisioned-iops-storage
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The allocated storage size in gibibytes (GiB) for database engines.
    #   For Neptune, `AllocatedStorage` always returns 1, because Neptune DB
    #   cluster storage size isn't fixed, but instead automatically adjusts
    #   as needed.
    #   @return [Integer]
    #
    # @!attribute [rw] iops
    #   The Provisioned IOPS (I/O operations per second) value. This setting
    #   is only for Multi-AZ DB clusters.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ClusterPendingModifiedValues AWS API Documentation
    #
    class ClusterPendingModifiedValues < Struct.new(
      :pending_cloudwatch_logs_exports,
      :db_cluster_identifier,
      :iam_database_authentication_enabled,
      :engine_version,
      :backup_retention_period,
      :storage_type,
      :allocated_storage,
      :iops)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_db_cluster_parameter_group_identifier
    #   The identifier or Amazon Resource Name (ARN) for the source DB
    #   cluster parameter group. For information about creating an ARN, see
    #   [ Constructing an Amazon Resource Name (ARN)][1].
    #
    #   Constraints:
    #
    #   * Must specify a valid DB cluster parameter group.
    #
    #   * If the source DB cluster parameter group is in the same Amazon
    #     Region as the copy, specify a valid DB parameter group identifier,
    #     for example `my-db-cluster-param-group`, or a valid ARN.
    #
    #   * If the source DB parameter group is in a different Amazon Region
    #     than the copy, specify a valid DB cluster parameter group ARN, for
    #     example
    #     `arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_parameter_group_identifier
    #   The identifier for the copied DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster-param-group1`
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_parameter_group_description
    #   A description for the copied DB cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the copied DB cluster parameter group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBClusterParameterGroupMessage AWS API Documentation
    #
    class CopyDBClusterParameterGroupMessage < Struct.new(
      :source_db_cluster_parameter_group_identifier,
      :target_db_cluster_parameter_group_identifier,
      :target_db_cluster_parameter_group_description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group
    #   Contains the details of an Amazon Neptune DB cluster parameter
    #   group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusterParameterGroups action.
    #   @return [Types::DBClusterParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBClusterParameterGroupResult AWS API Documentation
    #
    class CopyDBClusterParameterGroupResult < Struct.new(
      :db_cluster_parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot to copy. This parameter is
    #   not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must specify a valid system snapshot in the "available" state.
    #
    #   * Specify a valid DB snapshot identifier.
    #
    #   Example: `my-cluster-snapshot1`
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_snapshot_identifier
    #   The identifier of the new DB cluster snapshot to create from the
    #   source DB cluster snapshot. This parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-snapshot2`
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Amazon KMS key ID for an encrypted DB cluster snapshot.
    #   The KMS key ID is the Amazon Resource Name (ARN), KMS key
    #   identifier, or the KMS key alias for the KMS encryption key.
    #
    #   If you copy an encrypted DB cluster snapshot from your Amazon
    #   account, you can specify a value for `KmsKeyId` to encrypt the copy
    #   with a new KMS encryption key. If you don't specify a value for
    #   `KmsKeyId`, then the copy of the DB cluster snapshot is encrypted
    #   with the same KMS key as the source DB cluster snapshot.
    #
    #   If you copy an encrypted DB cluster snapshot that is shared from
    #   another Amazon account, then you must specify a value for
    #   `KmsKeyId`.
    #
    #   KMS encryption keys are specific to the Amazon Region that they are
    #   created in, and you can't use encryption keys from one Amazon
    #   Region in another Amazon Region.
    #
    #   You cannot encrypt an unencrypted DB cluster snapshot when you copy
    #   it. If you try to copy an unencrypted DB cluster snapshot and
    #   specify a value for the KmsKeyId parameter, an error is returned.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   Not currently supported.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags
    #   True to copy all tags from the source DB cluster snapshot to the
    #   target DB cluster snapshot, and otherwise false. The default is
    #   false.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the new DB cluster snapshot copy.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBClusterSnapshotMessage AWS API Documentation
    #
    class CopyDBClusterSnapshotMessage < Struct.new(
      :source_db_cluster_snapshot_identifier,
      :target_db_cluster_snapshot_identifier,
      :kms_key_id,
      :pre_signed_url,
      :copy_tags,
      :tags,
      :source_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Contains the details for an Amazon Neptune DB cluster snapshot
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusterSnapshots action.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBClusterSnapshotResult AWS API Documentation
    #
    class CopyDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_db_parameter_group_identifier
    #   The identifier or ARN for the source DB parameter group. For
    #   information about creating an ARN, see [ Constructing an Amazon
    #   Resource Name (ARN)][1].
    #
    #   Constraints:
    #
    #   * Must specify a valid DB parameter group.
    #
    #   * Must specify a valid DB parameter group identifier, for example
    #     `my-db-param-group`, or a valid ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] target_db_parameter_group_identifier
    #   The identifier for the copied DB parameter group.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank.
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-db-parameter-group`
    #   @return [String]
    #
    # @!attribute [rw] target_db_parameter_group_description
    #   A description for the copied DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the copied DB parameter group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBParameterGroupMessage AWS API Documentation
    #
    class CopyDBParameterGroupMessage < Struct.new(
      :source_db_parameter_group_identifier,
      :target_db_parameter_group_identifier,
      :target_db_parameter_group_description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group
    #   Contains the details of an Amazon Neptune DB parameter group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBParameterGroups action.
    #   @return [Types::DBParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CopyDBParameterGroupResult AWS API Documentation
    #
    class CopyDBParameterGroupResult < Struct.new(
      :db_parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the DB cluster associated with the
    #   endpoint. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier to use for the new endpoint. This parameter is stored
    #   as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the endpoint. One of: `READER`, `WRITER`, `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] static_members
    #   List of DB instance identifiers that are part of the custom endpoint
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_members
    #   List of DB instance identifiers that aren't part of the custom
    #   endpoint group. All other eligible instances are reachable through
    #   the custom endpoint. Only relevant if the list of static members is
    #   empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Amazon Neptune resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterEndpointMessage AWS API Documentation
    #
    class CreateDBClusterEndpointMessage < Struct.new(
      :db_cluster_identifier,
      :db_cluster_endpoint_identifier,
      :endpoint_type,
      :static_members,
      :excluded_members,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type represents the information you need to connect to an
    # Amazon Neptune DB cluster. This data type is used as a response
    # element in the following actions:
    #
    # * `CreateDBClusterEndpoint`
    #
    # * `DescribeDBClusterEndpoints`
    #
    # * `ModifyDBClusterEndpoint`
    #
    # * `DeleteDBClusterEndpoint`
    #
    # For the data structure that represents Amazon Neptune DB instance
    # endpoints, see `Endpoint`.
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier associated with the endpoint. This parameter is
    #   stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the DB cluster associated with the
    #   endpoint. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoint_resource_identifier
    #   A unique system-generated identifier for an endpoint. It remains the
    #   same for the whole life of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The DNS address of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint. One of: `creating`, `available`,
    #   `deleting`, `inactive`, `modifying`. The `inactive` state applies to
    #   an endpoint that cannot be used for a certain kind of cluster, such
    #   as a `writer` endpoint for a read-only secondary cluster in a global
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the endpoint. One of: `READER`, `WRITER`, `CUSTOM`.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_type
    #   The type associated with a custom endpoint. One of: `READER`,
    #   `WRITER`, `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] static_members
    #   List of DB instance identifiers that are part of the custom endpoint
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_members
    #   List of DB instance identifiers that aren't part of the custom
    #   endpoint group. All other eligible instances are reachable through
    #   the custom endpoint. Only relevant if the list of static members is
    #   empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_endpoint_arn
    #   The Amazon Resource Name (ARN) for the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterEndpointOutput AWS API Documentation
    #
    class CreateDBClusterEndpointOutput < Struct.new(
      :db_cluster_endpoint_identifier,
      :db_cluster_identifier,
      :db_cluster_endpoint_resource_identifier,
      :endpoint,
      :status,
      :endpoint_type,
      :custom_endpoint_type,
      :static_members,
      :excluded_members,
      :db_cluster_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zones
    #   A list of EC2 Availability Zones that instances in the DB cluster
    #   can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. You
    #   must specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] character_set_name
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   *If set to `true`, tags are copied to any snapshot of the DB cluster
    #   that is created.*
    #   @return [Boolean]
    #
    # @!attribute [rw] database_name
    #   The name for your database of up to 64 alpha-numeric characters. If
    #   you do not provide a name, Amazon Neptune will not create a database
    #   in the DB cluster you are creating.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1`
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster. If this argument is omitted, the default is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A DB subnet group to associate with this DB cluster.
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this DB cluster.
    #
    #   Valid Values: `neptune`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use for the new DB
    #   cluster.
    #
    #   Example: `1.2.1.0`
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the instances in the DB cluster accept
    #   connections.
    #
    #   Default: `8182`
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Region. To see the time blocks
    #   available, see [Neptune Maintenance Window][1] in the *Amazon
    #   Neptune User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-maintaining.html#manage-console-maintaining-window
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Region, occurring on a random day of
    #   the week. To see the time blocks available, see [Neptune Maintenance
    #   Window][1] in the *Amazon Neptune User Guide.*
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-maintaining.html#manage-console-maintaining-window
    #   @return [String]
    #
    # @!attribute [rw] replication_source_identifier
    #   The Amazon Resource Name (ARN) of the source DB instance or DB
    #   cluster if this DB cluster is created as a Read Replica.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the new DB cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon KMS key identifier for an encrypted DB cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB cluster with the same
    #   Amazon account that owns the KMS encryption key used to encrypt the
    #   new DB cluster, then you can use the KMS key alias instead of the
    #   ARN for the KMS encryption key.
    #
    #   If an encryption key is not specified in `KmsKeyId`:
    #
    #   * If `ReplicationSourceIdentifier` identifies an encrypted source,
    #     then Amazon Neptune will use the encryption key used to encrypt
    #     the source. Otherwise, Amazon Neptune will use your default
    #     encryption key.
    #
    #   * If the `StorageEncrypted` parameter is true and
    #     `ReplicationSourceIdentifier` is not specified, then Amazon
    #     Neptune will use your default encryption key.
    #
    #   Amazon KMS creates the default encryption key for your Amazon
    #   account. Your Amazon account has a different default encryption key
    #   for each Amazon Region.
    #
    #   If you create a Read Replica of an encrypted DB cluster in another
    #   Amazon Region, you must set `KmsKeyId` to a KMS key ID that is valid
    #   in the destination Amazon Region. This key is used to encrypt the
    #   Read Replica in that Amazon Region.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   This parameter is not currently supported.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   If set to `true`, enables Amazon Identity and Access Management
    #   (IAM) authentication for the entire DB cluster (this cannot be set
    #   at an instance level).
    #
    #   Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   A list of the log types that this DB cluster should export to
    #   CloudWatch Logs. Valid log types are: `audit` (to publish audit
    #   logs) and `slowquery` (to publish slow-query logs). See [Publishing
    #   Neptune logs to Amazon CloudWatch logs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/cloudwatch-logs.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   Contains the scaling configuration of a Neptune Serverless DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Neptune Serverless][1] in
    #   the *Amazon Neptune User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html
    #   @return [Types::ServerlessV2ScalingConfiguration]
    #
    # @!attribute [rw] global_cluster_identifier
    #   The ID of the Neptune global database to which this new DB cluster
    #   should be added.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The storage type for the new DB cluster.
    #
    #   Valid Values:
    #
    #   * <b> <code>standard</code> </b>   –   ( *the default* ) Configures
    #     cost-effective database storage for applications with moderate to
    #     small I/O usage. When set to `standard`, the storage type is not
    #     returned in the response.
    #
    #   * <b> <code>iopt1</code> </b>   –   Enables [I/O-Optimized
    #     storage][1] that's designed to meet the needs of I/O-intensive
    #     graph workloads that require predictable pricing with low I/O
    #     latency and consistent I/O throughput.
    #
    #     Neptune I/O-Optimized storage is only available starting with
    #     engine release 1.3.0.0.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/storage-types.html#provisioned-iops-storage
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterMessage AWS API Documentation
    #
    class CreateDBClusterMessage < Struct.new(
      :availability_zones,
      :backup_retention_period,
      :character_set_name,
      :copy_tags_to_snapshot,
      :database_name,
      :db_cluster_identifier,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :db_subnet_group_name,
      :engine,
      :engine_version,
      :port,
      :master_username,
      :master_user_password,
      :option_group_name,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :replication_source_identifier,
      :tags,
      :storage_encrypted,
      :kms_key_id,
      :pre_signed_url,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :deletion_protection,
      :serverless_v2_scaling_configuration,
      :global_cluster_identifier,
      :storage_type,
      :source_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DBClusterParameterGroup.
    #
    #   ^
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The DB cluster parameter group family name. A DB cluster parameter
    #   group can be associated with one and only one DB cluster parameter
    #   group family, and can be applied only to a DB cluster running a
    #   database engine and engine version compatible with that DB cluster
    #   parameter group family.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the DB cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the new DB cluster parameter group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterParameterGroupMessage AWS API Documentation
    #
    class CreateDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group
    #   Contains the details of an Amazon Neptune DB cluster parameter
    #   group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusterParameterGroups action.
    #   @return [Types::DBClusterParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterParameterGroupResult AWS API Documentation
    #
    class CreateDBClusterParameterGroupResult < Struct.new(
      :db_cluster_parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Neptune DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterResult AWS API Documentation
    #
    class CreateDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot. This parameter is stored
    #   as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster1-snapshot1`
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the DB cluster to create a snapshot for. This
    #   parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #
    #   Example: `my-cluster1`
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the DB cluster snapshot.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterSnapshotMessage AWS API Documentation
    #
    class CreateDBClusterSnapshotMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Contains the details for an Amazon Neptune DB cluster snapshot
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusterSnapshots action.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBClusterSnapshotResult AWS API Documentation
    #
    class CreateDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_name
    #   Not supported.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Not supported by Neptune.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all
    #   Amazon Regions.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this instance.
    #
    #   Valid Values: `neptune`
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] db_security_groups
    #   A list of DB security groups to associate with this DB instance.
    #
    #   Default: The default DB security group for the database engine.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB
    #   instance.
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster. For more information, see
    #   CreateDBCluster.
    #
    #   Default: The default EC2 VPC security group for the DB subnet
    #   group's VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The EC2 Availability Zone that the DB instance is created in
    #
    #   Default: A random, system-chosen Availability Zone in the
    #   endpoint's Amazon Region.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The AvailabilityZone parameter can't be specified if
    #   the MultiAZ parameter is set to `true`. The specified Availability
    #   Zone must be in the same Amazon Region as the current endpoint.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    #   If there is no DB subnet group, then it is a non-VPC DB instance.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The time range each week during which system maintenance can occur,
    #   in Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Region, occurring on a random day of
    #   the week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB
    #   instance. If this argument is omitted, the default DBParameterGroup
    #   for the specified engine is used.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained.
    #
    #   Not applicable. The retention period for automated backups is
    #   managed by the DB cluster. For more information, see
    #   CreateDBCluster.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35
    #
    #   * Cannot be set to 0 if the DB instance is a source to Read Replicas
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created.
    #
    #   Not applicable. The daily time range for creating automated backups
    #   is managed by the DB cluster. For more information, see
    #   CreateDBCluster.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the database accepts connections.
    #
    #   Not applicable. The port is managed by the DB cluster. For more
    #   information, see CreateDBCluster.
    #
    #   Default: `8182`
    #
    #   Type: Integer
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment. You can't
    #   set the AvailabilityZone parameter if the MultiAZ parameter is set
    #   to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use. Currently, setting
    #   this parameter has no effect.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor engine upgrades are applied automatically to
    #   the DB instance during the maintenance window.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   License model information for this DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The amount of Provisioned IOPS (input/output operations per second)
    #   to be initially allocated for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] character_set_name
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   This flag should no longer be used.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the new instance.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the DB cluster that the instance will belong to.
    #
    #   For information on creating a DB cluster, see CreateDBCluster.
    #
    #   Type: String
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Not applicable. In Neptune the storage type is managed at the DB
    #   Cluster level.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #
    #   Not applicable. The encryption for DB instances is managed by the DB
    #   cluster. For more information, see CreateDBCluster.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon KMS key identifier for an encrypted DB instance.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a DB instance with the same
    #   Amazon account that owns the KMS encryption key used to encrypt the
    #   new DB instance, then you can use the KMS key alias instead of the
    #   ARN for the KM encryption key.
    #
    #   Not applicable. The KMS key identifier is managed by the DB cluster.
    #   For more information, see CreateDBCluster.
    #
    #   If the `StorageEncrypted` parameter is true, and you do not specify
    #   a value for the `KmsKeyId` parameter, then Amazon Neptune will use
    #   your default encryption key. Amazon KMS creates the default
    #   encryption key for your Amazon account. Your Amazon account has a
    #   different default encryption key for each Amazon Region.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Specify the Active Directory Domain to create the instance in.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance, and otherwise false. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits Neptune to send enhanced
    #   monitoring metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you
    #   must supply a `MonitoringRoleArn` value.
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which an Read Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #   @return [Integer]
    #
    # @!attribute [rw] timezone
    #   The time zone of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   Not supported by Neptune (ignored).
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_insights
    #   *(Not supported by Neptune)*
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB instance has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   See [Deleting a DB Instance][1].
    #
    #   DB instances in a DB cluster can be deleted even when deletion
    #   protection is enabled in their parent DB cluster.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBInstanceMessage AWS API Documentation
    #
    class CreateDBInstanceMessage < Struct.new(
      :db_name,
      :db_instance_identifier,
      :allocated_storage,
      :db_instance_class,
      :engine,
      :master_username,
      :master_user_password,
      :db_security_groups,
      :vpc_security_group_ids,
      :availability_zone,
      :db_subnet_group_name,
      :preferred_maintenance_window,
      :db_parameter_group_name,
      :backup_retention_period,
      :preferred_backup_window,
      :port,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :license_model,
      :iops,
      :option_group_name,
      :character_set_name,
      :publicly_accessible,
      :tags,
      :db_cluster_identifier,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :storage_encrypted,
      :kms_key_id,
      :domain,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :monitoring_role_arn,
      :domain_iam_role_name,
      :promotion_tier,
      :timezone,
      :enable_iam_database_authentication,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :enable_cloudwatch_logs_exports,
      :deletion_protection)
      SENSITIVE = [:tde_credential_password]
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon Neptune DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBInstanceResult AWS API Documentation
    #
    class CreateDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The DB parameter group family name. A DB parameter group can be
    #   associated with one and only one DB parameter group family, and can
    #   be applied only to a DB instance running a database engine and
    #   engine version compatible with that DB parameter group family.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the new DB parameter group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBParameterGroupMessage AWS API Documentation
    #
    class CreateDBParameterGroupMessage < Struct.new(
      :db_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group
    #   Contains the details of an Amazon Neptune DB parameter group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBParameterGroups action.
    #   @return [Types::DBParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBParameterGroupResult AWS API Documentation
    #
    class CreateDBParameterGroupResult < Struct.new(
      :db_parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group_name
    #   The name for the DB subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 letters, numbers,
    #   periods, underscores, spaces, or hyphens. Must not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   The description for the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The EC2 Subnet IDs for the DB subnet group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the new DB subnet group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBSubnetGroupMessage AWS API Documentation
    #
    class CreateDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group
    #   Contains the details of an Amazon Neptune DB subnet group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSubnetGroups action.
    #   @return [Types::DBSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateDBSubnetGroupResult AWS API Documentation
    #
    class CreateDBSubnetGroupResult < Struct.new(
      :db_subnet_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the subscription.
    #
    #   Constraints: The name must be less than 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. The ARN is created by Amazon SNS when you create a
    #   topic and subscribe to it.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of source that is generating the events. For example, if
    #   you want to be notified of events generated by a DB instance, you
    #   would set this parameter to db-instance. if this value is not
    #   specified, all events are returned.
    #
    #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group`
    #   \| `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot`
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a SourceType that you want to
    #   subscribe to. You can see a list of the categories for a given
    #   SourceType by using the **DescribeEventCategories** action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_ids
    #   The list of identifiers of the event sources for which events are
    #   returned. If not specified, then all sources are included in the
    #   response. An identifier must begin with a letter and must contain
    #   only ASCII letters, digits, and hyphens; it can't end with a hyphen
    #   or contain two consecutive hyphens.
    #
    #   Constraints:
    #
    #   * If SourceIds are supplied, SourceType must also be provided.
    #
    #   * If the source type is a DB instance, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a
    #     `DBParameterGroupName` must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` must
    #     be supplied.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   A Boolean value; set to **true** to activate the subscription, set
    #   to **false** to create the subscription but not active it.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to be applied to the new event subscription.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateEventSubscriptionMessage AWS API Documentation
    #
    class CreateEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :source_ids,
      :enabled,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Contains the results of a successful invocation of the
    #   DescribeEventSubscriptions action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateEventSubscriptionResult AWS API Documentation
    #
    class CreateEventSubscriptionResult < Struct.new(
      :event_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster_identifier
    #   The cluster identifier of the new global database cluster.
    #   @return [String]
    #
    # @!attribute [rw] source_db_cluster_identifier
    #   (*Optional*) The Amazon Resource Name (ARN) of an existing Neptune
    #   DB cluster to use as the primary cluster of the new global database.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used in the global database.
    #
    #   Valid values: `neptune`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The Neptune engine version to be used by the global database.
    #
    #   Valid values: `1.2.0.0` or above.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   The deletion protection setting for the new global database. The
    #   global database can't be deleted when deletion protection is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_encrypted
    #   The storage encryption setting for the new global database cluster.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateGlobalClusterMessage AWS API Documentation
    #
    class CreateGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :source_db_cluster_identifier,
      :engine,
      :engine_version,
      :deletion_protection,
      :storage_encrypted)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   Contains the details of an Amazon Neptune global database.
    #
    #   This data type is used as a response element for the
    #   CreateGlobalCluster, DescribeGlobalClusters, ModifyGlobalCluster,
    #   DeleteGlobalCluster, FailoverGlobalCluster, and
    #   RemoveFromGlobalCluster actions.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/CreateGlobalClusterResult AWS API Documentation
    #
    class CreateGlobalClusterResult < Struct.new(
      :global_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an Amazon Neptune DB cluster.
    #
    # This data type is used as a response element in the
    # DescribeDBClusters.
    #
    # @!attribute [rw] allocated_storage
    #   `AllocatedStorage` always returns 1, because Neptune DB cluster
    #   storage size is not fixed, but instead automatically adjusts as
    #   needed.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of EC2 Availability Zones that instances in the DB
    #   cluster can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the number of days for which automatic DB snapshots are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] character_set_name
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Contains the name of the initial database of this DB cluster that
    #   was provided at create time, if one was specified when the DB
    #   cluster was created. This same name is returned for the life of the
    #   DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Contains a user-supplied DB cluster identifier. This identifier is
    #   the unique key that identifies a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group
    #   Specifies the name of the DB cluster parameter group for the DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Specifies information on the subnet group associated with the DB
    #   cluster, including the name, description, and subnets in the subnet
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the current state of this DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   Specifies the progress of the operation as a percentage.
    #   @return [String]
    #
    # @!attribute [rw] earliest_restorable_time
    #   Specifies the earliest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] endpoint
    #   Specifies the connection endpoint for the primary instance of the DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] reader_endpoint
    #   The reader endpoint for the DB cluster. The reader endpoint for a DB
    #   cluster load-balances connections across the Read Replicas that are
    #   available in a DB cluster. As clients request new connections to the
    #   reader endpoint, Neptune distributes the connection requests among
    #   the Read Replicas in the DB cluster. This functionality can help
    #   balance your read workload across multiple Read Replicas in your DB
    #   cluster.
    #
    #   If a failover occurs, and the Read Replica that you are connected to
    #   is promoted to be the primary instance, your connection is dropped.
    #   To continue sending your read workload to other Read Replicas in the
    #   cluster, you can then reconnect to the reader endpoint.
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the DB cluster has instances in multiple
    #   Availability Zones.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to be used for this DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] latest_restorable_time
    #   Specifies the latest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] port
    #   Specifies the port that the database engine is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_option_group_memberships
    #   Not supported by Neptune.
    #   @return [Array<Types::DBClusterOptionGroupStatus>]
    #
    # @!attribute [rw] preferred_backup_window
    #   Specifies the daily time range during which automated backups are
    #   created if automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which system maintenance can
    #   occur, in Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] replication_source_identifier
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_identifiers
    #   Contains one or more identifiers of the Read Replicas associated
    #   with this DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_members
    #   Provides the list of instances that make up the DB cluster.
    #   @return [Array<Types::DBClusterMember>]
    #
    # @!attribute [rw] vpc_security_groups
    #   Provides a list of VPC security groups that the DB cluster belongs
    #   to.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the ID that Amazon Route 53 assigns when you create a
    #   hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is true, the Amazon KMS key identifier for the
    #   encrypted DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_resource_id
    #   The Amazon Region-unique, immutable identifier for the DB cluster.
    #   This identifier is found in Amazon CloudTrail log entries whenever
    #   the Amazon KMS key for the DB cluster is accessed.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_arn
    #   The Amazon Resource Name (ARN) for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] associated_roles
    #   Provides a list of the Amazon Identity and Access Management (IAM)
    #   roles that are associated with the DB cluster. IAM roles that are
    #   associated with a DB cluster grant permission for the DB cluster to
    #   access other Amazon services on your behalf.
    #   @return [Array<Types::DBClusterRole>]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of Amazon Identity and Access Management (IAM)
    #   accounts to database accounts is enabled, and otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] clone_group_id
    #   Identifies the clone group to which the DB cluster is associated.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   Specifies the time when the DB cluster was created, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   *If set to `true`, tags are copied to any snapshot of the DB cluster
    #   that is created.*
    #   @return [Boolean]
    #
    # @!attribute [rw] enabled_cloudwatch_logs_exports
    #   A list of the log types that this DB cluster is configured to export
    #   to CloudWatch Logs. Valid log types are: `audit` (to publish audit
    #   logs to CloudWatch) and slowquery (to publish slow-query logs to
    #   CloudWatch). See [Publishing Neptune logs to Amazon CloudWatch
    #   logs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/cloudwatch-logs.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] pending_modified_values
    #   This data type is used as a response element in the
    #   `ModifyDBCluster` operation and contains changes that will be
    #   applied during the next maintenance window.
    #   @return [Types::ClusterPendingModifiedValues]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether or not the DB cluster has deletion protection
    #   enabled. The database can't be deleted when deletion protection is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] cross_account_clone
    #   If set to `true`, the DB cluster can be cloned across accounts.
    #   @return [Boolean]
    #
    # @!attribute [rw] automatic_restart_time
    #   Time at which the DB cluster will be automatically restarted.
    #   @return [Time]
    #
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   Shows the scaling configuration for a Neptune Serverless DB cluster.
    #
    #   For more information, see [Using Amazon Neptune Serverless][1] in
    #   the *Amazon Neptune User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html
    #   @return [Types::ServerlessV2ScalingConfigurationInfo]
    #
    # @!attribute [rw] global_cluster_identifier
    #   Contains a user-supplied global database cluster identifier. This
    #   identifier is the unique key that identifies a global database.
    #   @return [String]
    #
    # @!attribute [rw] io_optimized_next_allowed_modification_time
    #   The next time you can modify the DB cluster to use the `iopt1`
    #   storage type.
    #   @return [Time]
    #
    # @!attribute [rw] storage_type
    #   The storage type used by the DB cluster.
    #
    #   Valid Values:
    #
    #   * <b> <code>standard</code> </b>   –   ( *the default* ) Provides
    #     cost-effective database storage for applications with moderate to
    #     small I/O usage.
    #
    #   * <b> <code>iopt1</code> </b>   –   Enables [I/O-Optimized
    #     storage][1] that's designed to meet the needs of I/O-intensive
    #     graph workloads that require predictable pricing with low I/O
    #     latency and consistent I/O throughput.
    #
    #     Neptune I/O-Optimized storage is only available starting with
    #     engine release 1.3.0.0.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/storage-types.html#provisioned-iops-storage
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBCluster AWS API Documentation
    #
    class DBCluster < Struct.new(
      :allocated_storage,
      :availability_zones,
      :backup_retention_period,
      :character_set_name,
      :database_name,
      :db_cluster_identifier,
      :db_cluster_parameter_group,
      :db_subnet_group,
      :status,
      :percent_progress,
      :earliest_restorable_time,
      :endpoint,
      :reader_endpoint,
      :multi_az,
      :engine,
      :engine_version,
      :latest_restorable_time,
      :port,
      :master_username,
      :db_cluster_option_group_memberships,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :replication_source_identifier,
      :read_replica_identifiers,
      :db_cluster_members,
      :vpc_security_groups,
      :hosted_zone_id,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_resource_id,
      :db_cluster_arn,
      :associated_roles,
      :iam_database_authentication_enabled,
      :clone_group_id,
      :cluster_create_time,
      :copy_tags_to_snapshot,
      :enabled_cloudwatch_logs_exports,
      :pending_modified_values,
      :deletion_protection,
      :cross_account_clone,
      :automatic_restart_time,
      :serverless_v2_scaling_configuration,
      :global_cluster_identifier,
      :io_optimized_next_allowed_modification_time,
      :storage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # User already has a DB cluster with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterAlreadyExistsFault AWS API Documentation
    #
    class DBClusterAlreadyExistsFault < Aws::EmptyStructure; end

    # This data type represents the information you need to connect to an
    # Amazon Neptune DB cluster. This data type is used as a response
    # element in the following actions:
    #
    # * `CreateDBClusterEndpoint`
    #
    # * `DescribeDBClusterEndpoints`
    #
    # * `ModifyDBClusterEndpoint`
    #
    # * `DeleteDBClusterEndpoint`
    #
    # For the data structure that represents Amazon Neptune DB instance
    # endpoints, see `Endpoint`.
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier associated with the endpoint. This parameter is
    #   stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the DB cluster associated with the
    #   endpoint. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoint_resource_identifier
    #   A unique system-generated identifier for an endpoint. It remains the
    #   same for the whole life of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The DNS address of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint. One of: `creating`, `available`,
    #   `deleting`, `inactive`, `modifying`. The `inactive` state applies to
    #   an endpoint that cannot be used for a certain kind of cluster, such
    #   as a `writer` endpoint for a read-only secondary cluster in a global
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the endpoint. One of: `READER`, `WRITER`, `CUSTOM`.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_type
    #   The type associated with a custom endpoint. One of: `READER`,
    #   `WRITER`, `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] static_members
    #   List of DB instance identifiers that are part of the custom endpoint
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_members
    #   List of DB instance identifiers that aren't part of the custom
    #   endpoint group. All other eligible instances are reachable through
    #   the custom endpoint. Only relevant if the list of static members is
    #   empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_endpoint_arn
    #   The Amazon Resource Name (ARN) for the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterEndpoint AWS API Documentation
    #
    class DBClusterEndpoint < Struct.new(
      :db_cluster_endpoint_identifier,
      :db_cluster_identifier,
      :db_cluster_endpoint_resource_identifier,
      :endpoint,
      :status,
      :endpoint_type,
      :custom_endpoint_type,
      :static_members,
      :excluded_members,
      :db_cluster_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified custom endpoint cannot be created because it already
    # exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterEndpointAlreadyExistsFault AWS API Documentation
    #
    class DBClusterEndpointAlreadyExistsFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   n optional pagination token provided by a previous
    #   `DescribeDBClusterEndpoints` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoints
    #   Contains the details of the endpoints associated with the cluster
    #   and matching any filter conditions.
    #   @return [Array<Types::DBClusterEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterEndpointMessage AWS API Documentation
    #
    class DBClusterEndpointMessage < Struct.new(
      :marker,
      :db_cluster_endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified custom endpoint doesn't exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterEndpointNotFoundFault AWS API Documentation
    #
    class DBClusterEndpointNotFoundFault < Aws::EmptyStructure; end

    # The cluster already has the maximum number of custom endpoints.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterEndpointQuotaExceededFault AWS API Documentation
    #
    class DBClusterEndpointQuotaExceededFault < Aws::EmptyStructure; end

    # Contains information about an instance that is part of a DB cluster.
    #
    # @!attribute [rw] db_instance_identifier
    #   Specifies the instance identifier for this member of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] is_cluster_writer
    #   Value that is `true` if the cluster member is the primary instance
    #   for the DB cluster and `false` otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_cluster_parameter_group_status
    #   Specifies the status of the DB cluster parameter group for this
    #   member of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which a Read Replica is promoted
    #   to the primary instance after a failure of the existing primary
    #   instance.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterMember AWS API Documentation
    #
    class DBClusterMember < Struct.new(
      :db_instance_identifier,
      :is_cluster_writer,
      :db_cluster_parameter_group_status,
      :promotion_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A pagination token that can be used in a subsequent
    #   DescribeDBClusters request.
    #   @return [String]
    #
    # @!attribute [rw] db_clusters
    #   Contains a list of DB clusters for the user.
    #   @return [Array<Types::DBCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterMessage AWS API Documentation
    #
    class DBClusterMessage < Struct.new(
      :marker,
      :db_clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # *DBClusterIdentifier* does not refer to an existing DB cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterNotFoundFault AWS API Documentation
    #
    class DBClusterNotFoundFault < Aws::EmptyStructure; end

    # Not supported by Neptune.
    #
    # @!attribute [rw] db_cluster_option_group_name
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterOptionGroupStatus AWS API Documentation
    #
    class DBClusterOptionGroupStatus < Struct.new(
      :db_cluster_option_group_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an Amazon Neptune DB cluster parameter group.
    #
    # This data type is used as a response element in the
    # DescribeDBClusterParameterGroups action.
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   Provides the name of the DB cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   Provides the name of the DB parameter group family that this DB
    #   cluster parameter group is compatible with.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides the customer-specified description for this DB cluster
    #   parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_arn
    #   The Amazon Resource Name (ARN) for the DB cluster parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterParameterGroup AWS API Documentation
    #
    class DBClusterParameterGroup < Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :db_cluster_parameter_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameters
    #   Provides a list of parameters for the DB cluster parameter group.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeDBClusterParameters request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords` .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterParameterGroupDetails AWS API Documentation
    #
    class DBClusterParameterGroupDetails < Struct.new(
      :parameters,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters or numbers.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterParameterGroupNameMessage AWS API Documentation
    #
    class DBClusterParameterGroupNameMessage < Struct.new(
      :db_cluster_parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # *DBClusterParameterGroupName* does not refer to an existing DB Cluster
    # parameter group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterParameterGroupNotFoundFault AWS API Documentation
    #
    class DBClusterParameterGroupNotFoundFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterParameterGroups` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_groups
    #   A list of DB cluster parameter groups.
    #   @return [Array<Types::DBClusterParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterParameterGroupsMessage AWS API Documentation
    #
    class DBClusterParameterGroupsMessage < Struct.new(
      :marker,
      :db_cluster_parameter_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # User attempted to create a new DB cluster and the user has already
    # reached the maximum allowed DB cluster quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterQuotaExceededFault AWS API Documentation
    #
    class DBClusterQuotaExceededFault < Aws::EmptyStructure; end

    # Describes an Amazon Identity and Access Management (IAM) role that is
    # associated with a DB cluster.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that is associated
    #   with the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the state of association between the IAM role and the DB
    #   cluster. The Status property returns one of the following values:
    #
    #   * `ACTIVE` - the IAM role ARN is associated with the DB cluster and
    #     can be used to access other Amazon services on your behalf.
    #
    #   * `PENDING` - the IAM role ARN is being associated with the DB
    #     cluster.
    #
    #   * `INVALID` - the IAM role ARN is associated with the DB cluster,
    #     but the DB cluster is unable to assume the IAM role in order to
    #     access other Amazon services on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature associated with the Amazon Identity and
    #   Access Management (IAM) role. For the list of supported feature
    #   names, see DescribeDBEngineVersions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterRole AWS API Documentation
    #
    class DBClusterRole < Struct.new(
      :role_arn,
      :status,
      :feature_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified IAM role Amazon Resource Name (ARN) is already
    # associated with the specified DB cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterRoleAlreadyExistsFault AWS API Documentation
    #
    class DBClusterRoleAlreadyExistsFault < Aws::EmptyStructure; end

    # The specified IAM role Amazon Resource Name (ARN) is not associated
    # with the specified DB cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterRoleNotFoundFault AWS API Documentation
    #
    class DBClusterRoleNotFoundFault < Aws::EmptyStructure; end

    # You have exceeded the maximum number of IAM roles that can be
    # associated with the specified DB cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterRoleQuotaExceededFault AWS API Documentation
    #
    class DBClusterRoleQuotaExceededFault < Aws::EmptyStructure; end

    # Contains the details for an Amazon Neptune DB cluster snapshot
    #
    # This data type is used as a response element in the
    # DescribeDBClusterSnapshots action.
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of EC2 Availability Zones that instances in the DB
    #   cluster snapshot can be restored in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   Specifies the identifier for a DB cluster snapshot. Must match the
    #   identifier of an existing snapshot.
    #
    #   After you restore a DB cluster using a
    #   `DBClusterSnapshotIdentifier`, you must specify the same
    #   `DBClusterSnapshotIdentifier` for any future updates to the DB
    #   cluster. When you specify this property for an update, the DB
    #   cluster is not restored from the snapshot again, and the data in the
    #   database is not changed.
    #
    #   However, if you don't specify the `DBClusterSnapshotIdentifier`, an
    #   empty DB cluster is created, and the original DB cluster is deleted.
    #   If you specify a property that is different from the previous
    #   snapshot restore property, the DB cluster is restored from the
    #   snapshot specified by the `DBClusterSnapshotIdentifier`, and the
    #   original DB cluster is deleted.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Specifies the DB cluster identifier of the DB cluster that this DB
    #   cluster snapshot was created from.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   Provides the time when the snapshot was taken, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] engine
    #   Specifies the name of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Specifies the allocated storage size in gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Specifies the status of this DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the DB cluster was listening on at the time
    #   of the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   Provides the VPC ID associated with the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   Specifies the time when the DB cluster was created, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] master_username
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Provides the version of the database engine for this DB cluster
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   Provides the license model information for this DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   Provides the type of the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   Specifies the percentage of the estimated data that has been
    #   transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB cluster snapshot is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is true, the Amazon KMS key identifier for the
    #   encrypted DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_arn
    #   The Amazon Resource Name (ARN) for the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_db_cluster_snapshot_arn
    #   If the DB cluster snapshot was copied from a source DB cluster
    #   snapshot, the Amazon Resource Name (ARN) for the source DB cluster
    #   snapshot, otherwise, a null value.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of Amazon Identity and Access Management (IAM)
    #   accounts to database accounts is enabled, and otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_type
    #   The storage type associated with the DB cluster snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterSnapshot AWS API Documentation
    #
    class DBClusterSnapshot < Struct.new(
      :availability_zones,
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :vpc_id,
      :cluster_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :percent_progress,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_snapshot_arn,
      :source_db_cluster_snapshot_arn,
      :iam_database_authentication_enabled,
      :storage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # User already has a DB cluster snapshot with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterSnapshotAlreadyExistsFault AWS API Documentation
    #
    class DBClusterSnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # Contains the name and values of a manual DB cluster snapshot
    # attribute.
    #
    # Manual DB cluster snapshot attributes are used to authorize other
    # Amazon accounts to restore a manual DB cluster snapshot. For more
    # information, see the ModifyDBClusterSnapshotAttribute API action.
    #
    # @!attribute [rw] attribute_name
    #   The name of the manual DB cluster snapshot attribute.
    #
    #   The attribute named `restore` refers to the list of Amazon accounts
    #   that have permission to copy or restore the manual DB cluster
    #   snapshot. For more information, see the
    #   ModifyDBClusterSnapshotAttribute API action.
    #   @return [String]
    #
    # @!attribute [rw] attribute_values
    #   The value(s) for the manual DB cluster snapshot attribute.
    #
    #   If the `AttributeName` field is set to `restore`, then this element
    #   returns a list of IDs of the Amazon accounts that are authorized to
    #   copy or restore the manual DB cluster snapshot. If a value of `all`
    #   is in the list, then the manual DB cluster snapshot is public and
    #   available for any Amazon account to copy or restore.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterSnapshotAttribute AWS API Documentation
    #
    class DBClusterSnapshotAttribute < Struct.new(
      :attribute_name,
      :attribute_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of a successful call to the
    # DescribeDBClusterSnapshotAttributes API action.
    #
    # Manual DB cluster snapshot attributes are used to authorize other
    # Amazon accounts to copy or restore a manual DB cluster snapshot. For
    # more information, see the ModifyDBClusterSnapshotAttribute API action.
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the manual DB cluster snapshot that the attributes
    #   apply to.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_attributes
    #   The list of attributes and values for the manual DB cluster
    #   snapshot.
    #   @return [Array<Types::DBClusterSnapshotAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterSnapshotAttributesResult AWS API Documentation
    #
    class DBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_snapshot_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeDBClusterSnapshots request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshots
    #   Provides a list of DB cluster snapshots for the user.
    #   @return [Array<Types::DBClusterSnapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterSnapshotMessage AWS API Documentation
    #
    class DBClusterSnapshotMessage < Struct.new(
      :marker,
      :db_cluster_snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # *DBClusterSnapshotIdentifier* does not refer to an existing DB cluster
    # snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBClusterSnapshotNotFoundFault AWS API Documentation
    #
    class DBClusterSnapshotNotFoundFault < Aws::EmptyStructure; end

    # This data type is used as a response element in the action
    # DescribeDBEngineVersions.
    #
    # @!attribute [rw] engine
    #   The name of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of the DB parameter group family for the database engine.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_description
    #   The description of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_version_description
    #   The description of the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] default_character_set
    #   *(Not supported by Neptune)*
    #   @return [Types::CharacterSet]
    #
    # @!attribute [rw] supported_character_sets
    #   *(Not supported by Neptune)*
    #   @return [Array<Types::CharacterSet>]
    #
    # @!attribute [rw] valid_upgrade_target
    #   A list of engine versions that this database engine version can be
    #   upgraded to.
    #   @return [Array<Types::UpgradeTarget>]
    #
    # @!attribute [rw] supported_timezones
    #   A list of the time zones supported by this engine for the `Timezone`
    #   parameter of the `CreateDBInstance` action.
    #   @return [Array<Types::Timezone>]
    #
    # @!attribute [rw] exportable_log_types
    #   The types of logs that the database engine has available for export
    #   to CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supports_log_exports_to_cloudwatch_logs
    #   A value that indicates whether the engine version supports exporting
    #   the log types specified by ExportableLogTypes to CloudWatch Logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_read_replica
    #   Indicates whether the database engine version supports read
    #   replicas.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_global_databases
    #   A value that indicates whether you can use Aurora global databases
    #   with a specific DB engine version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBEngineVersion AWS API Documentation
    #
    class DBEngineVersion < Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :db_engine_description,
      :db_engine_version_description,
      :default_character_set,
      :supported_character_sets,
      :valid_upgrade_target,
      :supported_timezones,
      :exportable_log_types,
      :supports_log_exports_to_cloudwatch_logs,
      :supports_read_replica,
      :supports_global_databases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_versions
    #   A list of `DBEngineVersion` elements.
    #   @return [Array<Types::DBEngineVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBEngineVersionMessage AWS API Documentation
    #
    class DBEngineVersionMessage < Struct.new(
      :marker,
      :db_engine_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an Amazon Neptune DB instance.
    #
    # This data type is used as a response element in the
    # DescribeDBInstances action.
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains a user-supplied database identifier. This identifier is the
    #   unique key that identifies a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   Contains the name of the compute and memory capacity class of the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to be used for this DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_status
    #   Specifies the current state of this database.
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The database name.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   Specifies the connection endpoint.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] allocated_storage
    #   Not supported by Neptune.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_create_time
    #   Provides the date and time the DB instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] preferred_backup_window
    #   Specifies the daily time range during which automated backups are
    #   created if automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the number of days for which automatic DB snapshots are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] db_security_groups
    #   Provides List of DB security group elements containing only
    #   `DBSecurityGroup.Name` and `DBSecurityGroup.Status` subelements.
    #   @return [Array<Types::DBSecurityGroupMembership>]
    #
    # @!attribute [rw] vpc_security_groups
    #   Provides a list of VPC security group elements that the DB instance
    #   belongs to.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] db_parameter_groups
    #   Provides the list of DB parameter groups applied to this DB
    #   instance.
    #   @return [Array<Types::DBParameterGroupStatus>]
    #
    # @!attribute [rw] availability_zone
    #   Specifies the name of the Availability Zone the DB instance is
    #   located in.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Specifies information on the subnet group associated with the DB
    #   instance, including the name, description, and subnets in the subnet
    #   group.
    #   @return [Types::DBSubnetGroup]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which system maintenance can
    #   occur, in Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   Specifies that changes to the DB instance are pending. This element
    #   is only included when changes are pending. Specific changes are
    #   identified by subelements.
    #   @return [Types::PendingModifiedValues]
    #
    # @!attribute [rw] latest_restorable_time
    #   Specifies the latest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor version patches are applied automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_replica_source_db_instance_identifier
    #   Contains the identifier of the source DB instance if this DB
    #   instance is a Read Replica.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_db_instance_identifiers
    #   Contains one or more identifiers of the Read Replicas associated
    #   with this DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] read_replica_db_cluster_identifiers
    #   Contains one or more identifiers of DB clusters that are Read
    #   Replicas of this DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_model
    #   License model information for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Specifies the Provisioned IOPS (I/O operations per second) value.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_memberships
    #   *(Not supported by Neptune)*
    #   @return [Array<Types::OptionGroupMembership>]
    #
    # @!attribute [rw] character_set_name
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   If present, specifies the name of the secondary Availability Zone
    #   for a DB instance with multi-AZ support.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   This flag should no longer be used.
    #   @return [Boolean]
    #
    # @!attribute [rw] status_infos
    #   The status of a Read Replica. If the instance is not a Read Replica,
    #   this is blank.
    #   @return [Array<Types::DBInstanceStatusInfo>]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type associated with the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which the instance is associated for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_port
    #   Specifies the port that the DB instance listens on. If the DB
    #   instance is part of a DB cluster, this can be a different port than
    #   the DB cluster port.
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_identifier
    #   If the DB instance is a member of a DB cluster, contains the name of
    #   the DB cluster that the DB instance is a member of.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Not supported: The encryption for DB instances is managed by the DB
    #   cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   Not supported: The encryption for DB instances is managed by the DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] dbi_resource_id
    #   The Amazon Region-unique, immutable identifier for the DB instance.
    #   This identifier is found in Amazon CloudTrail log entries whenever
    #   the Amazon KMS key for the DB instance is accessed.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The identifier of the CA certificate for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] domain_memberships
    #   Not supported
    #   @return [Array<Types::DomainMembership>]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Specifies whether tags are copied from the DB instance to snapshots
    #   of the DB instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] enhanced_monitoring_resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log
    #   stream that receives the Enhanced Monitoring metrics data for the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits Neptune to send Enhanced
    #   Monitoring metrics to Amazon CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which a Read Replica is promoted
    #   to the primary instance after a failure of the existing primary
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_arn
    #   The Amazon Resource Name (ARN) for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   Not supported.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if Amazon Identity and Access Management (IAM) authentication
    #   is enabled, and otherwise false.
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_enabled
    #   *(Not supported by Neptune)*
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] enabled_cloudwatch_logs_exports
    #   A list of log types that this DB instance is configured to export to
    #   CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether or not the DB instance has deletion protection
    #   enabled. The instance can't be deleted when deletion protection is
    #   enabled. See [Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBInstance AWS API Documentation
    #
    class DBInstance < Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :engine,
      :db_instance_status,
      :master_username,
      :db_name,
      :endpoint,
      :allocated_storage,
      :instance_create_time,
      :preferred_backup_window,
      :backup_retention_period,
      :db_security_groups,
      :vpc_security_groups,
      :db_parameter_groups,
      :availability_zone,
      :db_subnet_group,
      :preferred_maintenance_window,
      :pending_modified_values,
      :latest_restorable_time,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :read_replica_source_db_instance_identifier,
      :read_replica_db_instance_identifiers,
      :read_replica_db_cluster_identifiers,
      :license_model,
      :iops,
      :option_group_memberships,
      :character_set_name,
      :secondary_availability_zone,
      :publicly_accessible,
      :status_infos,
      :storage_type,
      :tde_credential_arn,
      :db_instance_port,
      :db_cluster_identifier,
      :storage_encrypted,
      :kms_key_id,
      :dbi_resource_id,
      :ca_certificate_identifier,
      :domain_memberships,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :enhanced_monitoring_resource_arn,
      :monitoring_role_arn,
      :promotion_tier,
      :db_instance_arn,
      :timezone,
      :iam_database_authentication_enabled,
      :performance_insights_enabled,
      :performance_insights_kms_key_id,
      :enabled_cloudwatch_logs_exports,
      :deletion_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # User already has a DB instance with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBInstanceAlreadyExistsFault AWS API Documentation
    #
    class DBInstanceAlreadyExistsFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @!attribute [rw] db_instances
    #   A list of DBInstance instances.
    #   @return [Array<Types::DBInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBInstanceMessage AWS API Documentation
    #
    class DBInstanceMessage < Struct.new(
      :marker,
      :db_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # *DBInstanceIdentifier* does not refer to an existing DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBInstanceNotFoundFault AWS API Documentation
    #
    class DBInstanceNotFoundFault < Aws::EmptyStructure; end

    # Provides a list of status information for a DB instance.
    #
    # @!attribute [rw] status_type
    #   This value is currently "read replication."
    #   @return [String]
    #
    # @!attribute [rw] normal
    #   Boolean value that is true if the instance is operating normally, or
    #   false if the instance is in an error state.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Status of the DB instance. For a StatusType of read replica, the
    #   values can be replicating, error, stopped, or terminated.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Details of the error if there is an error for the instance. If the
    #   instance is not in an error state, this value is blank.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBInstanceStatusInfo AWS API Documentation
    #
    class DBInstanceStatusInfo < Struct.new(
      :status_type,
      :normal,
      :status,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an Amazon Neptune DB parameter group.
    #
    # This data type is used as a response element in the
    # DescribeDBParameterGroups action.
    #
    # @!attribute [rw] db_parameter_group_name
    #   Provides the name of the DB parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   Provides the name of the DB parameter group family that this DB
    #   parameter group is compatible with.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides the customer-specified description for this DB parameter
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_arn
    #   The Amazon Resource Name (ARN) for the DB parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBParameterGroup AWS API Documentation
    #
    class DBParameterGroup < Struct.new(
      :db_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :db_parameter_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A DB parameter group with the same name exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBParameterGroupAlreadyExistsFault AWS API Documentation
    #
    class DBParameterGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # @!attribute [rw] parameters
    #   A list of Parameter values.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBParameterGroupDetails AWS API Documentation
    #
    class DBParameterGroupDetails < Struct.new(
      :parameters,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group_name
    #   Provides the name of the DB parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBParameterGroupNameMessage AWS API Documentation
    #
    class DBParameterGroupNameMessage < Struct.new(
      :db_parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # *DBParameterGroupName* does not refer to an existing DB parameter
    # group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBParameterGroupNotFoundFault AWS API Documentation
    #
    class DBParameterGroupNotFoundFault < Aws::EmptyStructure; end

    # Request would result in user exceeding the allowed number of DB
    # parameter groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBParameterGroupQuotaExceededFault AWS API Documentation
    #
    class DBParameterGroupQuotaExceededFault < Aws::EmptyStructure; end

    # The status of the DB parameter group.
    #
    # This data type is used as a response element in the following actions:
    #
    # * CreateDBInstance
    #
    # * DeleteDBInstance
    #
    # * ModifyDBInstance
    #
    # * RebootDBInstance
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DP parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of parameter updates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBParameterGroupStatus AWS API Documentation
    #
    class DBParameterGroupStatus < Struct.new(
      :db_parameter_group_name,
      :parameter_apply_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_groups
    #   A list of DBParameterGroup instances.
    #   @return [Array<Types::DBParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBParameterGroupsMessage AWS API Documentation
    #
    class DBParameterGroupsMessage < Struct.new(
      :marker,
      :db_parameter_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies membership in a designated DB security group.
    #
    # @!attribute [rw] db_security_group_name
    #   The name of the DB security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSecurityGroupMembership AWS API Documentation
    #
    class DBSecurityGroupMembership < Struct.new(
      :db_security_group_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # *DBSecurityGroupName* does not refer to an existing DB security group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSecurityGroupNotFoundFault AWS API Documentation
    #
    class DBSecurityGroupNotFoundFault < Aws::EmptyStructure; end

    # *DBSnapshotIdentifier* is already used by an existing snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSnapshotAlreadyExistsFault AWS API Documentation
    #
    class DBSnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # *DBSnapshotIdentifier* does not refer to an existing DB snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSnapshotNotFoundFault AWS API Documentation
    #
    class DBSnapshotNotFoundFault < Aws::EmptyStructure; end

    # Contains the details of an Amazon Neptune DB subnet group.
    #
    # This data type is used as a response element in the
    # DescribeDBSubnetGroups action.
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   Provides the description of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides the VpcId of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_status
    #   Provides the status of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   Contains a list of Subnet elements.
    #   @return [Array<Types::Subnet>]
    #
    # @!attribute [rw] db_subnet_group_arn
    #   The Amazon Resource Name (ARN) for the DB subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSubnetGroup AWS API Documentation
    #
    class DBSubnetGroup < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :db_subnet_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # *DBSubnetGroupName* is already used by an existing DB subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSubnetGroupAlreadyExistsFault AWS API Documentation
    #
    class DBSubnetGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # Subnets in the DB subnet group should cover at least two Availability
    # Zones unless there is only one Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSubnetGroupDoesNotCoverEnoughAZs AWS API Documentation
    #
    class DBSubnetGroupDoesNotCoverEnoughAZs < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_groups
    #   A list of DBSubnetGroup instances.
    #   @return [Array<Types::DBSubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSubnetGroupMessage AWS API Documentation
    #
    class DBSubnetGroupMessage < Struct.new(
      :marker,
      :db_subnet_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # *DBSubnetGroupName* does not refer to an existing DB subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSubnetGroupNotFoundFault AWS API Documentation
    #
    class DBSubnetGroupNotFoundFault < Aws::EmptyStructure; end

    # Request would result in user exceeding the allowed number of DB subnet
    # groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSubnetGroupQuotaExceededFault AWS API Documentation
    #
    class DBSubnetGroupQuotaExceededFault < Aws::EmptyStructure; end

    # Request would result in user exceeding the allowed number of subnets
    # in a DB subnet groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBSubnetQuotaExceededFault AWS API Documentation
    #
    class DBSubnetQuotaExceededFault < Aws::EmptyStructure; end

    # The DB upgrade failed because a resource the DB depends on could not
    # be modified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DBUpgradeDependencyFailureFault AWS API Documentation
    #
    class DBUpgradeDependencyFailureFault < Aws::EmptyStructure; end

    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier associated with the custom endpoint. This parameter
    #   is stored as a lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterEndpointMessage AWS API Documentation
    #
    class DeleteDBClusterEndpointMessage < Struct.new(
      :db_cluster_endpoint_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type represents the information you need to connect to an
    # Amazon Neptune DB cluster. This data type is used as a response
    # element in the following actions:
    #
    # * `CreateDBClusterEndpoint`
    #
    # * `DescribeDBClusterEndpoints`
    #
    # * `ModifyDBClusterEndpoint`
    #
    # * `DeleteDBClusterEndpoint`
    #
    # For the data structure that represents Amazon RDS DB instance
    # endpoints, see `Endpoint`.
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier associated with the endpoint. This parameter is
    #   stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the DB cluster associated with the
    #   endpoint. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoint_resource_identifier
    #   A unique system-generated identifier for an endpoint. It remains the
    #   same for the whole life of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The DNS address of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint. One of: `creating`, `available`,
    #   `deleting`, `inactive`, `modifying`. The `inactive` state applies to
    #   an endpoint that cannot be used for a certain kind of cluster, such
    #   as a `writer` endpoint for a read-only secondary cluster in a global
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the endpoint. One of: `READER`, `WRITER`, `CUSTOM`.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_type
    #   The type associated with a custom endpoint. One of: `READER`,
    #   `WRITER`, `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] static_members
    #   List of DB instance identifiers that are part of the custom endpoint
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_members
    #   List of DB instance identifiers that aren't part of the custom
    #   endpoint group. All other eligible instances are reachable through
    #   the custom endpoint. Only relevant if the list of static members is
    #   empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_endpoint_arn
    #   The Amazon Resource Name (ARN) for the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterEndpointOutput AWS API Documentation
    #
    class DeleteDBClusterEndpointOutput < Struct.new(
      :db_cluster_endpoint_identifier,
      :db_cluster_identifier,
      :db_cluster_endpoint_resource_identifier,
      :endpoint,
      :status,
      :endpoint_type,
      :custom_endpoint_type,
      :static_members,
      :excluded_members,
      :db_cluster_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier for the DB cluster to be deleted. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match an existing DBClusterIdentifier.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] skip_final_snapshot
    #   Determines whether a final DB cluster snapshot is created before the
    #   DB cluster is deleted. If `true` is specified, no DB cluster
    #   snapshot is created. If `false` is specified, a DB cluster snapshot
    #   is created before the DB cluster is deleted.
    #
    #   <note markdown="1"> You must specify a `FinalDBSnapshotIdentifier` parameter if
    #   `SkipFinalSnapshot` is `false`.
    #
    #    </note>
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] final_db_snapshot_identifier
    #   The DB cluster snapshot identifier of the new DB cluster snapshot
    #   created when `SkipFinalSnapshot` is set to `false`.
    #
    #   <note markdown="1"> Specifying this parameter and also setting the `SkipFinalShapshot`
    #   parameter to true results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterMessage AWS API Documentation
    #
    class DeleteDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :skip_final_snapshot,
      :final_db_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing DB cluster parameter group.
    #
    #   * You can't delete a default DB cluster parameter group.
    #
    #   * Cannot be associated with any DB clusters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterParameterGroupMessage AWS API Documentation
    #
    class DeleteDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Neptune DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterResult AWS API Documentation
    #
    class DeleteDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot to delete.
    #
    #   Constraints: Must be the name of an existing DB cluster snapshot in
    #   the `available` state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterSnapshotMessage AWS API Documentation
    #
    class DeleteDBClusterSnapshotMessage < Struct.new(
      :db_cluster_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Contains the details for an Amazon Neptune DB cluster snapshot
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusterSnapshots action.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBClusterSnapshotResult AWS API Documentation
    #
    class DeleteDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier for the DB instance to be deleted. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DB instance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] skip_final_snapshot
    #   Determines whether a final DB snapshot is created before the DB
    #   instance is deleted. If `true` is specified, no DBSnapshot is
    #   created. If `false` is specified, a DB snapshot is created before
    #   the DB instance is deleted.
    #
    #   Note that when a DB instance is in a failure state and has a status
    #   of 'failed', 'incompatible-restore', or
    #   'incompatible-network', it can only be deleted when the
    #   SkipFinalSnapshot parameter is set to "true".
    #
    #   Specify `true` when deleting a Read Replica.
    #
    #   <note markdown="1"> The FinalDBSnapshotIdentifier parameter must be specified if
    #   SkipFinalSnapshot is `false`.
    #
    #    </note>
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] final_db_snapshot_identifier
    #   The DBSnapshotIdentifier of the new DBSnapshot created when
    #   SkipFinalSnapshot is set to `false`.
    #
    #   <note markdown="1"> Specifying this parameter and also setting the SkipFinalShapshot
    #   parameter to true results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters or numbers.
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   * Cannot be specified when deleting a Read Replica.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBInstanceMessage AWS API Documentation
    #
    class DeleteDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :skip_final_snapshot,
      :final_db_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon Neptune DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBInstanceResult AWS API Documentation
    #
    class DeleteDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing DB parameter group
    #
    #   * You can't delete a default DB parameter group
    #
    #   * Cannot be associated with any DB instances
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBParameterGroupMessage AWS API Documentation
    #
    class DeleteDBParameterGroupMessage < Struct.new(
      :db_parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group_name
    #   The name of the database subnet group to delete.
    #
    #   <note markdown="1"> You can't delete the default subnet group.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteDBSubnetGroupMessage AWS API Documentation
    #
    class DeleteDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the event notification subscription you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteEventSubscriptionMessage AWS API Documentation
    #
    class DeleteEventSubscriptionMessage < Struct.new(
      :subscription_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Contains the results of a successful invocation of the
    #   DescribeEventSubscriptions action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteEventSubscriptionResult AWS API Documentation
    #
    class DeleteEventSubscriptionResult < Struct.new(
      :event_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster_identifier
    #   The cluster identifier of the global database cluster being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteGlobalClusterMessage AWS API Documentation
    #
    class DeleteGlobalClusterMessage < Struct.new(
      :global_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   Contains the details of an Amazon Neptune global database.
    #
    #   This data type is used as a response element for the
    #   CreateGlobalCluster, DescribeGlobalClusters, ModifyGlobalCluster,
    #   DeleteGlobalCluster, FailoverGlobalCluster, and
    #   RemoveFromGlobalCluster actions.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DeleteGlobalClusterResult AWS API Documentation
    #
    class DeleteGlobalClusterResult < Struct.new(
      :global_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the DB cluster associated with the
    #   endpoint. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier of the endpoint to describe. This parameter is stored
    #   as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A set of name-value pairs that define which endpoints to include in
    #   the output. The filters are specified as name-value pairs, in the
    #   format
    #   `Name=endpoint_type,Values=endpoint_type1,endpoint_type2,...`.
    #   `Name` can be one of: `db-cluster-endpoint-type`,
    #   `db-cluster-endpoint-custom-type`, `db-cluster-endpoint-id`,
    #   `db-cluster-endpoint-status`. `Values` for the `
    #   db-cluster-endpoint-type` filter can be one or more of: `reader`,
    #   `writer`, `custom`. `Values` for the
    #   `db-cluster-endpoint-custom-type` filter can be one or more of:
    #   `reader`, `any`. `Values` for the `db-cluster-endpoint-status`
    #   filter can be one or more of: `available`, `creating`, `deleting`,
    #   `inactive`, `modifying`.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so you can
    #   retrieve the remaining results.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterEndpoints` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterEndpointsMessage AWS API Documentation
    #
    class DescribeDBClusterEndpointsMessage < Struct.new(
      :db_cluster_identifier,
      :db_cluster_endpoint_identifier,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of a specific DB cluster parameter group to return details
    #   for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterParameterGroups` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterParameterGroupsMessage AWS API Documentation
    #
    class DescribeDBClusterParameterGroupsMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of a specific DB cluster parameter group to return
    #   parameter details for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source
    #   A value that indicates to return only parameters for a specific
    #   source. Parameter sources can be `engine`, `service`, or `customer`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterParameters` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterParametersMessage AWS API Documentation
    #
    class DescribeDBClusterParametersMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :source,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier for the DB cluster snapshot to describe the
    #   attributes for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterSnapshotAttributesMessage AWS API Documentation
    #
    class DescribeDBClusterSnapshotAttributesMessage < Struct.new(
      :db_cluster_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_attributes_result
    #   Contains the results of a successful call to the
    #   DescribeDBClusterSnapshotAttributes API action.
    #
    #   Manual DB cluster snapshot attributes are used to authorize other
    #   Amazon accounts to copy or restore a manual DB cluster snapshot. For
    #   more information, see the ModifyDBClusterSnapshotAttribute API
    #   action.
    #   @return [Types::DBClusterSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterSnapshotAttributesResult AWS API Documentation
    #
    class DescribeDBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_attributes_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The ID of the DB cluster to retrieve the list of DB cluster
    #   snapshots for. This parameter can't be used in conjunction with the
    #   `DBClusterSnapshotIdentifier` parameter. This parameter is not
    #   case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBCluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   A specific DB cluster snapshot identifier to describe. This
    #   parameter can't be used in conjunction with the
    #   `DBClusterIdentifier` parameter. This value is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing
    #     DBClusterSnapshot.
    #
    #   * If this identifier is for an automated snapshot, the
    #     `SnapshotType` parameter must also be specified.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of DB cluster snapshots to be returned. You can specify one
    #   of the following values:
    #
    #   * `automated` - Return all DB cluster snapshots that have been
    #     automatically taken by Amazon Neptune for my Amazon account.
    #
    #   * `manual` - Return all DB cluster snapshots that have been taken by
    #     my Amazon account.
    #
    #   * `shared` - Return all manual DB cluster snapshots that have been
    #     shared to my Amazon account.
    #
    #   * `public` - Return all DB cluster snapshots that have been marked
    #     as public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated
    #   and manual DB cluster snapshots are returned. You can include shared
    #   DB cluster snapshots with these results by setting the
    #   `IncludeShared` parameter to `true`. You can include public DB
    #   cluster snapshots with these results by setting the `IncludePublic`
    #   parameter to `true`.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The
    #   `IncludePublic` parameter doesn't apply when `SnapshotType` is set
    #   to `shared`. The `IncludeShared` parameter doesn't apply when
    #   `SnapshotType` is set to `public`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBClusterSnapshots` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] include_shared
    #   True to include shared manual DB cluster snapshots from other Amazon
    #   accounts that this Amazon account has been given permission to copy
    #   or restore, and otherwise false. The default is `false`.
    #
    #   You can give an Amazon account permission to restore a manual DB
    #   cluster snapshot from another Amazon account by the
    #   ModifyDBClusterSnapshotAttribute API action.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_public
    #   True to include manual DB cluster snapshots that are public and can
    #   be copied or restored by any Amazon account, and otherwise false.
    #   The default is `false`. The default is false.
    #
    #   You can share a manual DB cluster snapshot as public by using the
    #   ModifyDBClusterSnapshotAttribute API action.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClusterSnapshotsMessage AWS API Documentation
    #
    class DescribeDBClusterSnapshotsMessage < Struct.new(
      :db_cluster_identifier,
      :db_cluster_snapshot_identifier,
      :snapshot_type,
      :filters,
      :max_records,
      :marker,
      :include_shared,
      :include_public)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The user-supplied DB cluster identifier. If this parameter is
    #   specified, information from only the specific DB cluster is
    #   returned. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match an existing DBClusterIdentifier.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more DB clusters to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB clusters identified by these ARNs.
    #
    #   * `engine` - Accepts an engine name (such as `neptune`), and
    #     restricts the results list to DB clusters created by that engine.
    #
    #   For example, to invoke this API from the Amazon CLI and filter so
    #   that only Neptune DB clusters are returned, you could use the
    #   following command:
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeDBClusters request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBClustersMessage AWS API Documentation
    #
    class DescribeDBClustersMessage < Struct.new(
      :db_cluster_identifier,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine
    #   The database engine to return.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version to return.
    #
    #   Example: `5.1.49`
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of a specific DB parameter group family to return details
    #   for.
    #
    #   Constraints:
    #
    #   * If supplied, must match an existing DBParameterGroupFamily.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   than the `MaxRecords` value is available, a pagination token called
    #   a marker is included in the response so that the following results
    #   can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] default_only
    #   Indicates that only the default version of the specified engine or
    #   engine and major version combination is returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] list_supported_character_sets
    #   If this parameter is specified and the requested engine supports the
    #   `CharacterSetName` parameter for `CreateDBInstance`, the response
    #   includes a list of supported character sets for each engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] list_supported_timezones
    #   If this parameter is specified and the requested engine supports the
    #   `TimeZone` parameter for `CreateDBInstance`, the response includes a
    #   list of supported time zones for each engine version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBEngineVersionsMessage AWS API Documentation
    #
    class DescribeDBEngineVersionsMessage < Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker,
      :default_only,
      :list_supported_character_sets,
      :list_supported_timezones)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The user-supplied instance identifier. If this parameter is
    #   specified, information from only the specific DB instance is
    #   returned. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more DB instances to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     information about the DB instances associated with the DB clusters
    #     identified by these ARNs.
    #
    #   * `engine` - Accepts an engine name (such as `neptune`), and
    #     restricts the results list to DB instances created by that engine.
    #
    #   For example, to invoke this API from the Amazon CLI and filter so
    #   that only Neptune DB instances are returned, you could use the
    #   following command:
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBInstances` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBInstancesMessage AWS API Documentation
    #
    class DescribeDBInstancesMessage < Struct.new(
      :db_instance_identifier,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group_name
    #   The name of a specific DB parameter group to return details for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBParameterGroups` request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBParameterGroupsMessage AWS API Documentation
    #
    class DescribeDBParameterGroupsMessage < Struct.new(
      :db_parameter_group_name,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group_name
    #   The name of a specific DB parameter group to return details for.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DBParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The parameter types to return.
    #
    #   Default: All parameter types returned
    #
    #   Valid Values: `user | system | engine-default`
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeDBParameters` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBParametersMessage AWS API Documentation
    #
    class DescribeDBParametersMessage < Struct.new(
      :db_parameter_group_name,
      :source,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group_name
    #   The name of the DB subnet group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeDBSubnetGroups request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeDBSubnetGroupsMessage AWS API Documentation
    #
    class DescribeDBSubnetGroupsMessage < Struct.new(
      :db_subnet_group_name,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group_family
    #   The name of the DB cluster parameter group family to return engine
    #   parameter information for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeEngineDefaultClusterParameters` request. If this parameter
    #   is specified, the response includes only records beyond the marker,
    #   up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEngineDefaultClusterParametersMessage AWS API Documentation
    #
    class DescribeEngineDefaultClusterParametersMessage < Struct.new(
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_defaults
    #   Contains the result of a successful invocation of the
    #   DescribeEngineDefaultParameters action.
    #   @return [Types::EngineDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEngineDefaultClusterParametersResult AWS API Documentation
    #
    class DescribeEngineDefaultClusterParametersResult < Struct.new(
      :engine_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group_family
    #   The name of the DB parameter group family.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeEngineDefaultParameters` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEngineDefaultParametersMessage AWS API Documentation
    #
    class DescribeEngineDefaultParametersMessage < Struct.new(
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_defaults
    #   Contains the result of a successful invocation of the
    #   DescribeEngineDefaultParameters action.
    #   @return [Types::EngineDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEngineDefaultParametersResult AWS API Documentation
    #
    class DescribeEngineDefaultParametersResult < Struct.new(
      :engine_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_type
    #   The type of source that is generating the events.
    #
    #   Valid values: db-instance \| db-parameter-group \| db-security-group
    #   \| db-snapshot
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEventCategoriesMessage AWS API Documentation
    #
    class DescribeEventCategoriesMessage < Struct.new(
      :source_type,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the event notification subscription you want to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeOrderableDBInstanceOptions request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEventSubscriptionsMessage AWS API Documentation
    #
    class DescribeEventSubscriptionsMessage < Struct.new(
      :subscription_name,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_identifier
    #   The identifier of the event source for which events are returned. If
    #   not specified, then all sources are included in the response.
    #
    #   Constraints:
    #
    #   * If SourceIdentifier is supplied, SourceType must also be provided.
    #
    #   * If the source type is `DBInstance`, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is `DBSecurityGroup`, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is `DBParameterGroup`, a `DBParameterGroupName`
    #     must be supplied.
    #
    #   * If the source type is `DBSnapshot`, a `DBSnapshotIdentifier` must
    #     be supplied.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The event source to retrieve events for. If no value is specified,
    #   all events are returned.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The number of minutes to retrieve events for.
    #
    #   Default: 60
    #   @return [Integer]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories that trigger notifications for a event
    #   notification subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous DescribeEvents
    #   request. If this parameter is specified, the response includes only
    #   records beyond the marker, up to the value specified by
    #   `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeEventsMessage AWS API Documentation
    #
    class DescribeEventsMessage < Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :event_categories,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster_identifier
    #   The user-supplied DB cluster identifier. If this parameter is
    #   specified, only information about the specified DB cluster is
    #   returned. This parameter is not case-sensitive.
    #
    #   Constraints: If supplied, must match an existing DB cluster
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   marker token is included in the response that you can use to
    #   retrieve the remaining results.
    #
    #   Default: `100`
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   (*Optional*) A pagination token returned by a previous call to
    #   `DescribeGlobalClusters`. If this parameter is specified, the
    #   response will only include records beyond the marker, up to the
    #   number specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeGlobalClustersMessage AWS API Documentation
    #
    class DescribeGlobalClustersMessage < Struct.new(
      :global_cluster_identifier,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine
    #   The name of the engine to retrieve DB instance options for.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version filter value. Specify this parameter to show only
    #   the available offerings matching the specified engine version.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The DB instance class filter value. Specify this parameter to show
    #   only the available offerings matching the specified DB instance
    #   class.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model filter value. Specify this parameter to show only
    #   the available offerings matching the specified license model.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   The VPC filter value. Specify this parameter to show only the
    #   available VPC or non-VPC offerings.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeOrderableDBInstanceOptions request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeOrderableDBInstanceOptionsMessage AWS API Documentation
    #
    class DescribeOrderableDBInstanceOptionsMessage < Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :vpc,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The ARN of a resource to return pending maintenance actions for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more resources to return pending
    #   maintenance actions for.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     pending maintenance actions for the DB clusters identified by
    #     these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     ARNs. The results list will only include pending maintenance
    #     actions for the DB instances identified by these ARNs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribePendingMaintenanceActions` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to a number of records specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribePendingMaintenanceActionsMessage AWS API Documentation
    #
    class DescribePendingMaintenanceActionsMessage < Struct.new(
      :resource_identifier,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The customer identifier or the ARN of your DB instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeValidDBInstanceModificationsMessage AWS API Documentation
    #
    class DescribeValidDBInstanceModificationsMessage < Struct.new(
      :db_instance_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] valid_db_instance_modifications_message
    #   Information about valid modifications that you can make to your DB
    #   instance. Contains the result of a successful call to the
    #   DescribeValidDBInstanceModifications action. You can use this
    #   information when you call ModifyDBInstance.
    #   @return [Types::ValidDBInstanceModificationsMessage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DescribeValidDBInstanceModificationsResult AWS API Documentation
    #
    class DescribeValidDBInstanceModificationsResult < Struct.new(
      :valid_db_instance_modifications_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Active Directory Domain membership record associated with a DB
    # instance.
    #
    # @!attribute [rw] domain
    #   The identifier of the Active Directory Domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB instance's Active Directory Domain membership,
    #   such as joined, pending-join, failed etc).
    #   @return [String]
    #
    # @!attribute [rw] fqdn
    #   The fully qualified domain name of the Active Directory Domain.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_name
    #   The name of the IAM role to be used when making API calls to the
    #   Directory Service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DomainMembership AWS API Documentation
    #
    class DomainMembership < Struct.new(
      :domain,
      :status,
      :fqdn,
      :iam_role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # *Domain* does not refer to an existing Active Directory Domain.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DomainNotFoundFault AWS API Documentation
    #
    class DomainNotFoundFault < Aws::EmptyStructure; end

    # A range of double values.
    #
    # @!attribute [rw] from
    #   The minimum value in the range.
    #   @return [Float]
    #
    # @!attribute [rw] to
    #   The maximum value in the range.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/DoubleRange AWS API Documentation
    #
    class DoubleRange < Struct.new(
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a connection endpoint.
    #
    # For the data structure that represents Amazon Neptune DB cluster
    # endpoints, see `DBClusterEndpoint`.
    #
    # @!attribute [rw] address
    #   Specifies the DNS address of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the database engine is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the ID that Amazon Route 53 assigns when you create a
    #   hosted zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :port,
      :hosted_zone_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # DescribeEngineDefaultParameters action.
    #
    # @!attribute [rw] db_parameter_group_family
    #   Specifies the name of the DB parameter group family that the engine
    #   default parameters apply to.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous EngineDefaults
    #   request. If this parameter is specified, the response includes only
    #   records beyond the marker, up to the value specified by `MaxRecords`
    #   .
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Contains a list of engine default parameters.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/EngineDefaults AWS API Documentation
    #
    class EngineDefaults < Struct.new(
      :db_parameter_group_family,
      :marker,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type is used as a response element in the DescribeEvents
    # action.
    #
    # @!attribute [rw] source_identifier
    #   Provides the identifier for the source of the event.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Specifies the source type for this event.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Provides the text of this event.
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   Specifies the category for the event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] date
    #   Specifies the date and time of the event.
    #   @return [Time]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) for the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/Event AWS API Documentation
    #
    class Event < Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :event_categories,
      :date,
      :source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of a successful invocation of the
    # DescribeEventCategories action.
    #
    # @!attribute [rw] source_type
    #   The source type that the returned categories belong to
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   The event categories for the specified source type
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/EventCategoriesMap AWS API Documentation
    #
    class EventCategoriesMap < Struct.new(
      :source_type,
      :event_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_categories_map_list
    #   A list of EventCategoriesMap data types.
    #   @return [Array<Types::EventCategoriesMap>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/EventCategoriesMessage AWS API Documentation
    #
    class EventCategoriesMessage < Struct.new(
      :event_categories_map_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of a successful invocation of the
    # DescribeEventSubscriptions action.
    #
    # @!attribute [rw] customer_aws_id
    #   The Amazon customer account associated with the event notification
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] cust_subscription_id
    #   The event notification subscription Id.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The topic ARN of the event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the event notification subscription.
    #
    #   Constraints:
    #
    #   Can be one of the following: creating \| modifying \| deleting \|
    #   active \| no-permission \| topic-not-exist
    #
    #   The status "no-permission" indicates that Neptune no longer has
    #   permission to post to the SNS topic. The status "topic-not-exist"
    #   indicates that the topic was deleted after the subscription was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] subscription_creation_time
    #   The time the event notification subscription was created.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source type for the event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] source_ids_list
    #   A list of source IDs for the event notification subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_categories_list
    #   A list of event categories for the event notification subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   A Boolean value indicating if the subscription is enabled. True
    #   indicates the subscription is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] event_subscription_arn
    #   The Amazon Resource Name (ARN) for the event subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/EventSubscription AWS API Documentation
    #
    class EventSubscription < Struct.new(
      :customer_aws_id,
      :cust_subscription_id,
      :sns_topic_arn,
      :status,
      :subscription_creation_time,
      :source_type,
      :source_ids_list,
      :event_categories_list,
      :enabled,
      :event_subscription_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the number of events you can subscribe to.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/EventSubscriptionQuotaExceededFault AWS API Documentation
    #
    class EventSubscriptionQuotaExceededFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   DescribeOrderableDBInstanceOptions request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] event_subscriptions_list
    #   A list of EventSubscriptions data types.
    #   @return [Array<Types::EventSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/EventSubscriptionsMessage AWS API Documentation
    #
    class EventSubscriptionsMessage < Struct.new(
      :marker,
      :event_subscriptions_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous Events request.
    #   If this parameter is specified, the response includes only records
    #   beyond the marker, up to the value specified by `MaxRecords` .
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A list of Event instances.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/EventsMessage AWS API Documentation
    #
    class EventsMessage < Struct.new(
      :marker,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   A DB cluster identifier to force a failover for. This parameter is
    #   not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] target_db_instance_identifier
    #   The name of the instance to promote to the primary instance.
    #
    #   You must specify the instance identifier for an Read Replica in the
    #   DB cluster. For example, `mydbcluster-replica1`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/FailoverDBClusterMessage AWS API Documentation
    #
    class FailoverDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :target_db_instance_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Neptune DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/FailoverDBClusterResult AWS API Documentation
    #
    class FailoverDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster_identifier
    #   Identifier of the Neptune global database that should be failed
    #   over. The identifier is the unique key assigned by the user when the
    #   Neptune global database was created. In other words, it's the name
    #   of the global database that you want to fail over.
    #
    #   Constraints: Must match the identifier of an existing Neptune global
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_identifier
    #   The Amazon Resource Name (ARN) of the secondary Neptune DB cluster
    #   that you want to promote to primary for the global database.
    #   @return [String]
    #
    # @!attribute [rw] allow_data_loss
    #   Specifies whether to allow data loss for this global database
    #   cluster operation. Allowing data loss triggers a global failover
    #   operation.
    #
    #   If you don't specify `AllowDataLoss`, the global database cluster
    #   operation defaults to a switchover.
    #
    #   Constraints:Can't be specified together with the `Switchover`
    #   parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] switchover
    #   Specifies whether to switch over this global database cluster.
    #
    #   Constraints:Can't be specified together with the `AllowDataLoss`
    #   parameter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/FailoverGlobalClusterMessage AWS API Documentation
    #
    class FailoverGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :target_db_cluster_identifier,
      :allow_data_loss,
      :switchover)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   Contains the details of an Amazon Neptune global database.
    #
    #   This data type is used as a response element for the
    #   CreateGlobalCluster, DescribeGlobalClusters, ModifyGlobalCluster,
    #   DeleteGlobalCluster, FailoverGlobalCluster, and
    #   RemoveFromGlobalCluster actions.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/FailoverGlobalClusterResult AWS API Documentation
    #
    class FailoverGlobalClusterResult < Struct.new(
      :global_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the state of scheduled or in-process operations on a global
    # cluster (Neptune global database). This data type is empty unless a
    # switchover or failover operation is scheduled or is in progress on the
    # Neptune global database.
    #
    # @!attribute [rw] status
    #   The current status of the global cluster. Possible values are as
    #   follows:
    #
    #   * pending – The service received a request to switch over or fail
    #     over the global cluster. The global cluster's primary DB cluster
    #     and the specified secondary DB cluster are being verified before
    #     the operation starts.
    #
    #   * failing-over – Neptune is promoting the chosen secondary Neptune
    #     DB cluster to become the new primary DB cluster to fail over the
    #     global cluster.
    #
    #   * cancelling – The request to switch over or fail over the global
    #     cluster was cancelled and the primary Neptune DB cluster and the
    #     selected secondary Neptune DB cluster are returning to their
    #     previous states.
    #
    #   * switching-over – This status covers the range of Neptune internal
    #     operations that take place during the switchover process, such as
    #     demoting the primary Neptune DB cluster, promoting the secondary
    #     Neptune DB cluster, and synchronizing replicas.
    #   @return [String]
    #
    # @!attribute [rw] from_db_cluster_arn
    #   The Amazon Resource Name (ARN) of the Neptune DB cluster that is
    #   currently being demoted, and which is associated with this state.
    #   @return [String]
    #
    # @!attribute [rw] to_db_cluster_arn
    #   The Amazon Resource Name (ARN) of the Neptune DB cluster that is
    #   currently being promoted, and which is associated with this state.
    #   @return [String]
    #
    # @!attribute [rw] is_data_loss_allowed
    #   Indicates whether the operation is a global switchover or a global
    #   failover. If data loss is allowed, then the operation is a global
    #   failover. Otherwise, it's a switchover.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/FailoverState AWS API Documentation
    #
    class FailoverState < Struct.new(
      :status,
      :from_db_cluster_arn,
      :to_db_cluster_arn,
      :is_data_loss_allowed)
      SENSITIVE = []
      include Aws::Structure
    end

    # This type is not currently supported.
    #
    # @!attribute [rw] name
    #   This parameter is not currently supported.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   This parameter is not currently supported.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an Amazon Neptune global database.
    #
    # This data type is used as a response element for the
    # CreateGlobalCluster, DescribeGlobalClusters, ModifyGlobalCluster,
    # DeleteGlobalCluster, FailoverGlobalCluster, and
    # RemoveFromGlobalCluster actions.
    #
    # @!attribute [rw] global_cluster_identifier
    #   Contains a user-supplied global database cluster identifier. This
    #   identifier is the unique key that identifies a global database.
    #   @return [String]
    #
    # @!attribute [rw] global_cluster_resource_id
    #   An immutable identifier for the global database that is unique
    #   within in all regions. This identifier is found in CloudTrail log
    #   entries whenever the KMS key for the DB cluster is accessed.
    #   @return [String]
    #
    # @!attribute [rw] global_cluster_arn
    #   The Amazon Resource Name (ARN) for the global database.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the current state of this global database.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The Neptune database engine used by the global database
    #   (`"neptune"`).
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The Neptune engine version used by the global database.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   The storage encryption setting for the global database.
    #   @return [Boolean]
    #
    # @!attribute [rw] deletion_protection
    #   The deletion protection setting for the global database.
    #   @return [Boolean]
    #
    # @!attribute [rw] global_cluster_members
    #   A list of cluster ARNs and instance ARNs for all the DB clusters
    #   that are part of the global database.
    #   @return [Array<Types::GlobalClusterMember>]
    #
    # @!attribute [rw] failover_state
    #   A data object containing all properties for the current state of an
    #   in-process or pending switchover or failover process for this global
    #   cluster (Neptune global database). This object is empty unless the
    #   `SwitchoverGlobalCluster` or `FailoverGlobalCluster` operation was
    #   called on this global cluster.
    #   @return [Types::FailoverState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/GlobalCluster AWS API Documentation
    #
    class GlobalCluster < Struct.new(
      :global_cluster_identifier,
      :global_cluster_resource_id,
      :global_cluster_arn,
      :status,
      :engine,
      :engine_version,
      :storage_encrypted,
      :deletion_protection,
      :global_cluster_members,
      :failover_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `GlobalClusterIdentifier` already exists. Choose a new global
    # database identifier (unique name) to create a new global database
    # cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/GlobalClusterAlreadyExistsFault AWS API Documentation
    #
    class GlobalClusterAlreadyExistsFault < Aws::EmptyStructure; end

    # A data structure with information about any primary and secondary
    # clusters associated with an Neptune global database.
    #
    # @!attribute [rw] db_cluster_arn
    #   The Amazon Resource Name (ARN) for each Neptune cluster.
    #   @return [String]
    #
    # @!attribute [rw] readers
    #   The Amazon Resource Name (ARN) for each read-only secondary cluster
    #   associated with the Neptune global database.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_writer
    #   Specifies whether the Neptune cluster is the primary cluster (that
    #   is, has read-write capability) for the Neptune global database with
    #   which it is associated.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/GlobalClusterMember AWS API Documentation
    #
    class GlobalClusterMember < Struct.new(
      :db_cluster_arn,
      :readers,
      :is_writer)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `GlobalClusterIdentifier` doesn't refer to an existing global
    # database cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/GlobalClusterNotFoundFault AWS API Documentation
    #
    class GlobalClusterNotFoundFault < Aws::EmptyStructure; end

    # The number of global database clusters for this account is already at
    # the maximum allowed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/GlobalClusterQuotaExceededFault AWS API Documentation
    #
    class GlobalClusterQuotaExceededFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   A pagination token. If this parameter is returned in the response,
    #   more records are available, which can be retrieved by one or more
    #   additional calls to `DescribeGlobalClusters`.
    #   @return [String]
    #
    # @!attribute [rw] global_clusters
    #   The list of global clusters and instances returned by this request.
    #   @return [Array<Types::GlobalCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/GlobalClustersMessage AWS API Documentation
    #
    class GlobalClustersMessage < Struct.new(
      :marker,
      :global_clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request would result in user exceeding the allowed number of DB
    # instances.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InstanceQuotaExceededFault AWS API Documentation
    #
    class InstanceQuotaExceededFault < Aws::EmptyStructure; end

    # The DB cluster does not have enough capacity for the current
    # operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InsufficientDBClusterCapacityFault AWS API Documentation
    #
    class InsufficientDBClusterCapacityFault < Aws::EmptyStructure; end

    # Specified DB instance class is not available in the specified
    # Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InsufficientDBInstanceCapacityFault AWS API Documentation
    #
    class InsufficientDBInstanceCapacityFault < Aws::EmptyStructure; end

    # There is insufficient storage available for the current action. You
    # may be able to resolve this error by updating your subnet group to use
    # different Availability Zones that have more storage available.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InsufficientStorageClusterCapacityFault AWS API Documentation
    #
    class InsufficientStorageClusterCapacityFault < Aws::EmptyStructure; end

    # The requested operation cannot be performed on the endpoint while the
    # endpoint is in this state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidDBClusterEndpointStateFault AWS API Documentation
    #
    class InvalidDBClusterEndpointStateFault < Aws::EmptyStructure; end

    # The supplied value is not a valid DB cluster snapshot state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidDBClusterSnapshotStateFault AWS API Documentation
    #
    class InvalidDBClusterSnapshotStateFault < Aws::EmptyStructure; end

    # The DB cluster is not in a valid state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidDBClusterStateFault AWS API Documentation
    #
    class InvalidDBClusterStateFault < Aws::EmptyStructure; end

    # The specified DB instance is not in the *available* state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidDBInstanceStateFault AWS API Documentation
    #
    class InvalidDBInstanceStateFault < Aws::EmptyStructure; end

    # The DB parameter group is in use or is in an invalid state. If you are
    # attempting to delete the parameter group, you cannot delete it when
    # the parameter group is in this state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidDBParameterGroupStateFault AWS API Documentation
    #
    class InvalidDBParameterGroupStateFault < Aws::EmptyStructure; end

    # The state of the DB security group does not allow deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidDBSecurityGroupStateFault AWS API Documentation
    #
    class InvalidDBSecurityGroupStateFault < Aws::EmptyStructure; end

    # The state of the DB snapshot does not allow deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidDBSnapshotStateFault AWS API Documentation
    #
    class InvalidDBSnapshotStateFault < Aws::EmptyStructure; end

    # The DB subnet group cannot be deleted because it is in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidDBSubnetGroupStateFault AWS API Documentation
    #
    class InvalidDBSubnetGroupStateFault < Aws::EmptyStructure; end

    # The DB subnet is not in the *available* state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidDBSubnetStateFault AWS API Documentation
    #
    class InvalidDBSubnetStateFault < Aws::EmptyStructure; end

    # The event subscription is in an invalid state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidEventSubscriptionStateFault AWS API Documentation
    #
    class InvalidEventSubscriptionStateFault < Aws::EmptyStructure; end

    # The global cluster is in an invalid state and can't perform the
    # requested operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidGlobalClusterStateFault AWS API Documentation
    #
    class InvalidGlobalClusterStateFault < Aws::EmptyStructure; end

    # Cannot restore from vpc backup to non-vpc DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidRestoreFault AWS API Documentation
    #
    class InvalidRestoreFault < Aws::EmptyStructure; end

    # The requested subnet is invalid, or multiple subnets were requested
    # that are not all in a common VPC.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidSubnet AWS API Documentation
    #
    class InvalidSubnet < Aws::EmptyStructure; end

    # DB subnet group does not cover all Availability Zones after it is
    # created because users' change.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/InvalidVPCNetworkStateFault AWS API Documentation
    #
    class InvalidVPCNetworkStateFault < Aws::EmptyStructure; end

    # Error accessing KMS key.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/KMSKeyNotAccessibleFault AWS API Documentation
    #
    class KMSKeyNotAccessibleFault < Aws::EmptyStructure; end

    # @!attribute [rw] resource_name
    #   The Amazon Neptune resource with tags to be listed. This value is an
    #   Amazon Resource Name (ARN). For information about creating an ARN,
    #   see [ Constructing an Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ListTagsForResourceMessage AWS API Documentation
    #
    class ListTagsForResourceMessage < Struct.new(
      :resource_name,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier of the endpoint to modify. This parameter is stored
    #   as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the endpoint. One of: `READER`, `WRITER`, `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] static_members
    #   List of DB instance identifiers that are part of the custom endpoint
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_members
    #   List of DB instance identifiers that aren't part of the custom
    #   endpoint group. All other eligible instances are reachable through
    #   the custom endpoint. Only relevant if the list of static members is
    #   empty.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterEndpointMessage AWS API Documentation
    #
    class ModifyDBClusterEndpointMessage < Struct.new(
      :db_cluster_endpoint_identifier,
      :endpoint_type,
      :static_members,
      :excluded_members)
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type represents the information you need to connect to an
    # Amazon Neptune DB cluster. This data type is used as a response
    # element in the following actions:
    #
    # * `CreateDBClusterEndpoint`
    #
    # * `DescribeDBClusterEndpoints`
    #
    # * `ModifyDBClusterEndpoint`
    #
    # * `DeleteDBClusterEndpoint`
    #
    # For the data structure that represents Amazon RDS DB instance
    # endpoints, see `Endpoint`.
    #
    # @!attribute [rw] db_cluster_endpoint_identifier
    #   The identifier associated with the endpoint. This parameter is
    #   stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the DB cluster associated with the
    #   endpoint. This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_endpoint_resource_identifier
    #   A unique system-generated identifier for an endpoint. It remains the
    #   same for the whole life of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The DNS address of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the endpoint. One of: `creating`, `available`,
    #   `deleting`, `inactive`, `modifying`. The `inactive` state applies to
    #   an endpoint that cannot be used for a certain kind of cluster, such
    #   as a `writer` endpoint for a read-only secondary cluster in a global
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the endpoint. One of: `READER`, `WRITER`, `CUSTOM`.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoint_type
    #   The type associated with a custom endpoint. One of: `READER`,
    #   `WRITER`, `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] static_members
    #   List of DB instance identifiers that are part of the custom endpoint
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] excluded_members
    #   List of DB instance identifiers that aren't part of the custom
    #   endpoint group. All other eligible instances are reachable through
    #   the custom endpoint. Only relevant if the list of static members is
    #   empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_endpoint_arn
    #   The Amazon Resource Name (ARN) for the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterEndpointOutput AWS API Documentation
    #
    class ModifyDBClusterEndpointOutput < Struct.new(
      :db_cluster_endpoint_identifier,
      :db_cluster_identifier,
      :db_cluster_endpoint_resource_identifier,
      :endpoint,
      :status,
      :endpoint_type,
      :custom_endpoint_type,
      :static_members,
      :excluded_members,
      :db_cluster_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier for the cluster being modified. This
    #   parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] new_db_cluster_identifier
    #   The new DB cluster identifier for the DB cluster when renaming a DB
    #   cluster. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * The first character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster2`
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   A value that specifies whether the modifications in this request and
    #   any pending modifications are asynchronously applied as soon as
    #   possible, regardless of the `PreferredMaintenanceWindow` setting for
    #   the DB cluster. If this parameter is set to `false`, changes to the
    #   DB cluster are applied during the next maintenance window.
    #
    #   The `ApplyImmediately` parameter only affects
    #   `NewDBClusterIdentifier` values. If you set the `ApplyImmediately`
    #   parameter value to false, then changes to `NewDBClusterIdentifier`
    #   values are applied during the next maintenance window. All other
    #   changes are applied immediately, regardless of the value of the
    #   `ApplyImmediately` parameter.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. You
    #   must specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to use for the DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups that the DB cluster will belong to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] port
    #   The port number on which the DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   *Not supported by Neptune.*
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Region.
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Region, occurring on a random day of
    #   the week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of Amazon Identity and Access Management
    #   (IAM) accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to CloudWatch Logs for a specific DB cluster. See [Using the CLI to
    #   publish Neptune audit logs to CloudWatch Logs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/cloudwatch-logs.html#cloudwatch-logs-cli
    #   @return [Types::CloudwatchLogsExportConfiguration]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter results in an outage. The change is
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to true.
    #
    #   For a list of valid engine versions, see [Engine Releases for Amazon
    #   Neptune][1], or call DescribeDBEngineVersions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/engine-releases.html
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   A value that indicates whether upgrades between different major
    #   versions are allowed.
    #
    #   Constraints: You must set the allow-major-version-upgrade flag when
    #   providing an `EngineVersion` parameter that uses a different major
    #   version than the DB cluster's current version.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_instance_parameter_group_name
    #   The name of the DB parameter group to apply to all instances of the
    #   DB cluster.
    #
    #   <note markdown="1"> When you apply a parameter group using
    #   `DBInstanceParameterGroupName`, parameter changes aren't applied
    #   during the next maintenance window but instead are applied
    #   immediately.
    #
    #    </note>
    #
    #   Default: The existing name setting
    #
    #   Constraints:
    #
    #   * The DB parameter group must be in the same DB parameter group
    #     family as the target DB cluster version.
    #
    #   * The `DBInstanceParameterGroupName` parameter is only valid in
    #     combination with the `AllowMajorVersionUpgrade` parameter.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   *If set to `true`, tags are copied to any snapshot of the DB cluster
    #   that is created.*
    #   @return [Boolean]
    #
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   Contains the scaling configuration of a Neptune Serverless DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Neptune Serverless][1] in
    #   the *Amazon Neptune User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html
    #   @return [Types::ServerlessV2ScalingConfiguration]
    #
    # @!attribute [rw] storage_type
    #   The storage type to associate with the DB cluster.
    #
    #   Valid Values:
    #
    #   * <b> <code>standard</code> </b>   –   ( *the default* ) Configures
    #     cost-effective database storage for applications with moderate to
    #     small I/O usage.
    #
    #   * <b> <code>iopt1</code> </b>   –   Enables [I/O-Optimized
    #     storage][1] that's designed to meet the needs of I/O-intensive
    #     graph workloads that require predictable pricing with low I/O
    #     latency and consistent I/O throughput.
    #
    #     Neptune I/O-Optimized storage is only available starting with
    #     engine release 1.3.0.0.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/storage-types.html#provisioned-iops-storage
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterMessage AWS API Documentation
    #
    class ModifyDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :new_db_cluster_identifier,
      :apply_immediately,
      :backup_retention_period,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :port,
      :master_user_password,
      :option_group_name,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :enable_iam_database_authentication,
      :cloudwatch_logs_export_configuration,
      :engine_version,
      :allow_major_version_upgrade,
      :db_instance_parameter_group_name,
      :deletion_protection,
      :copy_tags_to_snapshot,
      :serverless_v2_scaling_configuration,
      :storage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to modify.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters in the DB cluster parameter group to modify.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterParameterGroupMessage AWS API Documentation
    #
    class ModifyDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Neptune DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterResult AWS API Documentation
    #
    class ModifyDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier for the DB cluster snapshot to modify the attributes
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the DB cluster snapshot attribute to modify.
    #
    #   To manage authorization for other Amazon accounts to copy or restore
    #   a manual DB cluster snapshot, set this value to `restore`.
    #   @return [String]
    #
    # @!attribute [rw] values_to_add
    #   A list of DB cluster snapshot attributes to add to the attribute
    #   specified by `AttributeName`.
    #
    #   To authorize other Amazon accounts to copy or restore a manual DB
    #   cluster snapshot, set this list to include one or more Amazon
    #   account IDs, or `all` to make the manual DB cluster snapshot
    #   restorable by any Amazon account. Do not add the `all` value for any
    #   manual DB cluster snapshots that contain private information that
    #   you don't want available to all Amazon accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] values_to_remove
    #   A list of DB cluster snapshot attributes to remove from the
    #   attribute specified by `AttributeName`.
    #
    #   To remove authorization for other Amazon accounts to copy or restore
    #   a manual DB cluster snapshot, set this list to include one or more
    #   Amazon account identifiers, or `all` to remove authorization for any
    #   Amazon account to copy or restore the DB cluster snapshot. If you
    #   specify `all`, an Amazon account whose account ID is explicitly
    #   added to the `restore` attribute can still copy or restore a manual
    #   DB cluster snapshot.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterSnapshotAttributeMessage AWS API Documentation
    #
    class ModifyDBClusterSnapshotAttributeMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      :attribute_name,
      :values_to_add,
      :values_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_attributes_result
    #   Contains the results of a successful call to the
    #   DescribeDBClusterSnapshotAttributes API action.
    #
    #   Manual DB cluster snapshot attributes are used to authorize other
    #   Amazon accounts to copy or restore a manual DB cluster snapshot. For
    #   more information, see the ModifyDBClusterSnapshotAttribute API
    #   action.
    #   @return [Types::DBClusterSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBClusterSnapshotAttributeResult AWS API Documentation
    #
    class ModifyDBClusterSnapshotAttributeResult < Struct.new(
      :db_cluster_snapshot_attributes_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier. This value is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Not supported by Neptune.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_class
    #   The new compute and memory capacity of the DB instance, for example,
    #   `db.m4.large`. Not all DB instance classes are available in all
    #   Amazon Regions.
    #
    #   If you modify the DB instance class, an outage occurs during the
    #   change. The change is applied during the next maintenance window,
    #   unless `ApplyImmediately` is specified as `true` for this request.
    #
    #   Default: Uses existing setting
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The new DB subnet group for the DB instance. You can use this
    #   parameter to move your DB instance to a different VPC.
    #
    #   Changing the subnet group causes an outage during the change. The
    #   change is applied during the next maintenance window, unless you
    #   specify `true` for the `ApplyImmediately` parameter.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetGroup`
    #   @return [String]
    #
    # @!attribute [rw] db_security_groups
    #   A list of DB security groups to authorize on this DB instance.
    #   Changing this setting doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing DBSecurityGroups.
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to authorize on this DB instance.
    #   This change is asynchronously applied as soon as possible.
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster. For more information, see
    #   ModifyDBCluster.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing VpcSecurityGroupIds.
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] apply_immediately
    #   Specifies whether the modifications in this request and any pending
    #   modifications are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the DB
    #   instance.
    #
    #   If this parameter is set to `false`, changes to the DB instance are
    #   applied during the next maintenance window. Some parameter changes
    #   can cause an outage and are applied on the next call to
    #   RebootDBInstance, or the next failure reboot.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] master_user_password
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group to apply to the DB instance.
    #   Changing this setting doesn't result in an outage. The parameter
    #   group name itself is changed immediately, but the actual parameter
    #   changes are not applied until you reboot the instance without
    #   failover. The db instance will NOT be rebooted automatically and the
    #   parameter changes will NOT be applied during the next maintenance
    #   window.
    #
    #   Default: Uses existing setting
    #
    #   Constraints: The DB parameter group must be in the same DB parameter
    #   group family as this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   Not applicable. The retention period for automated backups is
    #   managed by the DB cluster. For more information, see
    #   ModifyDBCluster.
    #
    #   Default: Uses existing setting
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled.
    #
    #   Not applicable. The daily time range for creating automated backups
    #   is managed by the DB cluster. For more information, see
    #   ModifyDBCluster.
    #
    #   Constraints:
    #
    #   * Must be in the format hh24:mi-hh24:mi
    #
    #   * Must be in Universal Time Coordinated (UTC)
    #
    #   * Must not conflict with the preferred maintenance window
    #
    #   * Must be at least 30 minutes
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, which might result in an outage. Changing this parameter
    #   doesn't result in an outage, except in the following situation, and
    #   the change is asynchronously applied as soon as possible. If there
    #   are pending actions that cause a reboot, and the maintenance window
    #   is changed to include the current time, then changing this parameter
    #   will cause a reboot of the DB instance. If moving this window to the
    #   current time, there must be at least 30 minutes between the current
    #   time and end of the window to ensure pending changes are applied.
    #
    #   Default: Uses existing setting
    #
    #   Format: ddd:hh24:mi-ddd:hh24:mi
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Must be at least 30 minutes
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment. Changing this
    #   parameter doesn't result in an outage and the change is applied
    #   during the next maintenance window unless the `ApplyImmediately`
    #   parameter is set to `true` for this request.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to upgrade to. Currently,
    #   setting this parameter has no effect. To upgrade your database
    #   engine to the most recent release, use the
    #   ApplyPendingMaintenanceAction API.
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   Indicates that major version upgrades are allowed. Changing this
    #   parameter doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to
    #   the DB instance during the maintenance window. Changing this
    #   parameter doesn't result in an outage except in the following case
    #   and the change is asynchronously applied as soon as possible. An
    #   outage will result if this parameter is set to `true` during the
    #   maintenance window, and a newer minor version is available, and
    #   Neptune has enabled auto patching for that engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] license_model
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The new Provisioned IOPS (I/O operations per second) value for the
    #   instance.
    #
    #   Changing this setting doesn't result in an outage and the change is
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to `true` for this request.
    #
    #   Default: Uses existing setting
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] new_db_instance_identifier
    #   The new DB instance identifier for the DB instance when renaming a
    #   DB instance. When you change the DB instance identifier, an instance
    #   reboot will occur immediately if you set `Apply Immediately` to
    #   true, or will occur during the next maintenance window if `Apply
    #   Immediately` to false. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Not applicable. In Neptune the storage type is managed at the DB
    #   Cluster level.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   Indicates the certificate that needs to be associated with the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Not supported.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   True to copy all tags from the DB instance to snapshots of the DB
    #   instance, and otherwise false. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    #   @return [Integer]
    #
    # @!attribute [rw] db_port_number
    #   The port number on which the database accepts connections.
    #
    #   The value of the `DBPortNumber` parameter must not match any of the
    #   port values specified for options in the option group for the DB
    #   instance.
    #
    #   Your database will restart when you change the `DBPortNumber` value
    #   regardless of the value of the `ApplyImmediately` parameter.
    #
    #   Default: `8182`
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   This flag should no longer be used.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits Neptune to send enhanced
    #   monitoring metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you
    #   must supply a `MonitoringRoleArn` value.
    #   @return [String]
    #
    # @!attribute [rw] domain_iam_role_name
    #   Not supported
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which a Read Replica is promoted
    #   to the primary instance after a failure of the existing primary
    #   instance.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #   @return [Integer]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of Amazon Identity and Access Management
    #   (IAM) accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following
    #   database engines
    #
    #   Not applicable. Mapping Amazon IAM accounts to database accounts is
    #   managed by the DB cluster. For more information, see
    #   ModifyDBCluster.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_insights
    #   *(Not supported by Neptune)*
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to CloudWatch Logs for a specific DB instance or DB cluster.
    #   @return [Types::CloudwatchLogsExportConfiguration]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB instance has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   See [Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBInstanceMessage AWS API Documentation
    #
    class ModifyDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :allocated_storage,
      :db_instance_class,
      :db_subnet_group_name,
      :db_security_groups,
      :vpc_security_group_ids,
      :apply_immediately,
      :master_user_password,
      :db_parameter_group_name,
      :backup_retention_period,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :multi_az,
      :engine_version,
      :allow_major_version_upgrade,
      :auto_minor_version_upgrade,
      :license_model,
      :iops,
      :option_group_name,
      :new_db_instance_identifier,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :ca_certificate_identifier,
      :domain,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :db_port_number,
      :publicly_accessible,
      :monitoring_role_arn,
      :domain_iam_role_name,
      :promotion_tier,
      :enable_iam_database_authentication,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :cloudwatch_logs_export_configuration,
      :deletion_protection)
      SENSITIVE = [:tde_credential_password]
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon Neptune DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBInstanceResult AWS API Documentation
    #
    class ModifyDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DBParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   An array of parameter names, values, and the apply method for the
    #   parameter update. At least one parameter name, value, and apply
    #   method must be supplied; subsequent arguments are optional. A
    #   maximum of 20 parameters can be modified in a single request.
    #
    #   Valid Values (for the application method): `immediate |
    #   pending-reboot`
    #
    #   <note markdown="1"> You can use the immediate value with dynamic parameters only. You
    #   can use the pending-reboot value for both dynamic and static
    #   parameters, and changes are applied when you reboot the DB instance
    #   without failover.
    #
    #    </note>
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBParameterGroupMessage AWS API Documentation
    #
    class ModifyDBParameterGroupMessage < Struct.new(
      :db_parameter_group_name,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group_name
    #   The name for the DB subnet group. This value is stored as a
    #   lowercase string. You can't modify the default subnet group.
    #
    #   Constraints: Must match the name of an existing DBSubnetGroup. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   The description for the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The EC2 subnet IDs for the DB subnet group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBSubnetGroupMessage AWS API Documentation
    #
    class ModifyDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group
    #   Contains the details of an Amazon Neptune DB subnet group.
    #
    #   This data type is used as a response element in the
    #   DescribeDBSubnetGroups action.
    #   @return [Types::DBSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyDBSubnetGroupResult AWS API Documentation
    #
    class ModifyDBSubnetGroupResult < Struct.new(
      :db_subnet_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. The ARN is created by Amazon SNS when you create a
    #   topic and subscribe to it.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of source that is generating the events. For example, if
    #   you want to be notified of events generated by a DB instance, you
    #   would set this parameter to db-instance. if this value is not
    #   specified, all events are returned.
    #
    #   Valid values: db-instance \| db-parameter-group \| db-security-group
    #   \| db-snapshot
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a SourceType that you want to
    #   subscribe to. You can see a list of the categories for a given
    #   SourceType by using the **DescribeEventCategories** action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   A Boolean value; set to **true** to activate the subscription.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyEventSubscriptionMessage AWS API Documentation
    #
    class ModifyEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Contains the results of a successful invocation of the
    #   DescribeEventSubscriptions action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyEventSubscriptionResult AWS API Documentation
    #
    class ModifyEventSubscriptionResult < Struct.new(
      :event_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster_identifier
    #   The DB cluster identifier for the global cluster being modified.
    #   This parameter is not case-sensitive.
    #
    #   Constraints: Must match the identifier of an existing global
    #   database cluster.
    #   @return [String]
    #
    # @!attribute [rw] new_global_cluster_identifier
    #   A new cluster identifier to assign to the global database. This
    #   value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster2`
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether the global database has deletion protection
    #   enabled. The global database cannot be deleted when deletion
    #   protection is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter will result in an outage. The
    #   change is applied during the next maintenance window unless
    #   `ApplyImmediately` is enabled.
    #
    #   To list all of the available Neptune engine versions, use the
    #   following command:
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   A value that indicates whether major version upgrades are allowed.
    #
    #   Constraints: You must allow major version upgrades if you specify a
    #   value for the `EngineVersion` parameter that is a different major
    #   version than the DB cluster's current version.
    #
    #   If you upgrade the major version of a global database, the cluster
    #   and DB instance parameter groups are set to the default parameter
    #   groups for the new version, so you will need to apply any custom
    #   parameter groups after completing the upgrade.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyGlobalClusterMessage AWS API Documentation
    #
    class ModifyGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :new_global_cluster_identifier,
      :deletion_protection,
      :engine_version,
      :allow_major_version_upgrade)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   Contains the details of an Amazon Neptune global database.
    #
    #   This data type is used as a response element for the
    #   CreateGlobalCluster, DescribeGlobalClusters, ModifyGlobalCluster,
    #   DeleteGlobalCluster, FailoverGlobalCluster, and
    #   RemoveFromGlobalCluster actions.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ModifyGlobalClusterResult AWS API Documentation
    #
    class ModifyGlobalClusterResult < Struct.new(
      :global_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Not supported by Neptune.
    #
    # @!attribute [rw] option_group_name
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/OptionGroupMembership AWS API Documentation
    #
    class OptionGroupMembership < Struct.new(
      :option_group_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The designated option group could not be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/OptionGroupNotFoundFault AWS API Documentation
    #
    class OptionGroupNotFoundFault < Aws::EmptyStructure; end

    # Contains a list of available options for a DB instance.
    #
    # This data type is used as a response element in the
    # DescribeOrderableDBInstanceOptions action.
    #
    # @!attribute [rw] engine
    #   The engine type of a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version of a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The DB instance class for a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model for a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones for a DB instance.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] multi_az_capable
    #   Indicates whether a DB instance is Multi-AZ capable.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_replica_capable
    #   Indicates whether a DB instance can have a Read Replica.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc
    #   Indicates whether a DB instance is in a VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_storage_encryption
    #   Indicates whether a DB instance supports encrypted storage.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_type
    #   Not applicable. In Neptune the storage type is managed at the DB
    #   Cluster level.
    #   @return [String]
    #
    # @!attribute [rw] supports_iops
    #   Indicates whether a DB instance supports provisioned IOPS.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_enhanced_monitoring
    #   Indicates whether a DB instance supports Enhanced Monitoring at
    #   intervals from 1 to 60 seconds.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_iam_database_authentication
    #   Indicates whether a DB instance supports IAM database
    #   authentication.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_performance_insights
    #   *(Not supported by Neptune)*
    #   @return [Boolean]
    #
    # @!attribute [rw] min_storage_size
    #   Minimum storage size for a DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] max_storage_size
    #   Maximum storage size for a DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] min_iops_per_db_instance
    #   Minimum total provisioned IOPS for a DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] max_iops_per_db_instance
    #   Maximum total provisioned IOPS for a DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] min_iops_per_gib
    #   Minimum provisioned IOPS per GiB for a DB instance.
    #   @return [Float]
    #
    # @!attribute [rw] max_iops_per_gib
    #   Maximum provisioned IOPS per GiB for a DB instance.
    #   @return [Float]
    #
    # @!attribute [rw] supports_global_databases
    #   A value that indicates whether you can use Neptune global databases
    #   with a specific combination of other DB engine attributes.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/OrderableDBInstanceOption AWS API Documentation
    #
    class OrderableDBInstanceOption < Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :availability_zones,
      :multi_az_capable,
      :read_replica_capable,
      :vpc,
      :supports_storage_encryption,
      :storage_type,
      :supports_iops,
      :supports_enhanced_monitoring,
      :supports_iam_database_authentication,
      :supports_performance_insights,
      :min_storage_size,
      :max_storage_size,
      :min_iops_per_db_instance,
      :max_iops_per_db_instance,
      :min_iops_per_gib,
      :max_iops_per_gib,
      :supports_global_databases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] orderable_db_instance_options
    #   An OrderableDBInstanceOption structure containing information about
    #   orderable options for the DB instance.
    #   @return [Array<Types::OrderableDBInstanceOption>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   OrderableDBInstanceOptions request. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords` .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/OrderableDBInstanceOptionsMessage AWS API Documentation
    #
    class OrderableDBInstanceOptionsMessage < Struct.new(
      :orderable_db_instance_options,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a parameter.
    #
    # @!attribute [rw] parameter_name
    #   Specifies the name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   Specifies the value of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides a description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Indicates the source of the parameter value.
    #   @return [String]
    #
    # @!attribute [rw] apply_type
    #   Specifies the engine specific parameters type.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   Specifies the valid data type for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   Specifies the valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   Indicates whether (`true`) or not (`false`) the parameter can be
    #   modified. Some parameters have security or operational implications
    #   that prevent them from being changed.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_engine_version
    #   The earliest engine version to which the parameter can apply.
    #   @return [String]
    #
    # @!attribute [rw] apply_method
    #   Indicates when to apply parameter updates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :parameter_name,
      :parameter_value,
      :description,
      :source,
      :apply_type,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :minimum_engine_version,
      :apply_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of the log types whose configuration is still pending. In other
    # words, these log types are in the process of being activated or
    # deactivated.
    #
    # Valid log types are: `audit` (to publish audit logs) and `slowquery`
    # (to publish slow-query logs). See [Publishing Neptune logs to Amazon
    # CloudWatch logs][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/cloudwatch-logs.html
    #
    # @!attribute [rw] log_types_to_enable
    #   Log types that are in the process of being deactivated. After they
    #   are deactivated, these log types aren't exported to CloudWatch
    #   Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_types_to_disable
    #   Log types that are in the process of being enabled. After they are
    #   enabled, these log types are exported to CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/PendingCloudwatchLogsExports AWS API Documentation
    #
    class PendingCloudwatchLogsExports < Struct.new(
      :log_types_to_enable,
      :log_types_to_disable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a pending maintenance action for a
    # resource.
    #
    # @!attribute [rw] action
    #   The type of pending maintenance action that is available for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] auto_applied_after_date
    #   The date of the maintenance window when the action is applied. The
    #   maintenance action is applied to the resource during its first
    #   maintenance window after this date. If this date is specified, any
    #   `next-maintenance` opt-in requests are ignored.
    #   @return [Time]
    #
    # @!attribute [rw] forced_apply_date
    #   The date when the maintenance action is automatically applied. The
    #   maintenance action is applied to the resource on this date
    #   regardless of the maintenance window for the resource. If this date
    #   is specified, any `immediate` opt-in requests are ignored.
    #   @return [Time]
    #
    # @!attribute [rw] opt_in_status
    #   Indicates the type of opt-in request that has been received for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] current_apply_date
    #   The effective date when the pending maintenance action is applied to
    #   the resource. This date takes into account opt-in requests received
    #   from the ApplyPendingMaintenanceAction API, the
    #   `AutoAppliedAfterDate`, and the `ForcedApplyDate`. This value is
    #   blank if an opt-in request has not been received and nothing has
    #   been specified as `AutoAppliedAfterDate` or `ForcedApplyDate`.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description providing more detail about the maintenance action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/PendingMaintenanceAction AWS API Documentation
    #
    class PendingMaintenanceAction < Struct.new(
      :action,
      :auto_applied_after_date,
      :forced_apply_date,
      :opt_in_status,
      :current_apply_date,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pending_maintenance_actions
    #   A list of the pending maintenance actions for the resource.
    #   @return [Array<Types::ResourcePendingMaintenanceActions>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribePendingMaintenanceActions` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to a number of records specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/PendingMaintenanceActionsMessage AWS API Documentation
    #
    class PendingMaintenanceActionsMessage < Struct.new(
      :pending_maintenance_actions,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type is used as a response element in the ModifyDBInstance
    # action.
    #
    # @!attribute [rw] db_instance_class
    #   Contains the new `DBInstanceClass` for the DB instance that will be
    #   applied or is currently being applied.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Contains the new `AllocatedStorage` size for the DB instance that
    #   will be applied or is currently being applied.
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the pending port for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the pending number of days for which automated backups are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Indicates that the Single-AZ DB instance is to change to a Multi-AZ
    #   deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   Not supported by Neptune.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Specifies the new Provisioned IOPS value for the DB instance that
    #   will be applied or is currently being applied.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains the new `DBInstanceIdentifier` for the DB instance that
    #   will be applied or is currently being applied.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Not applicable. In Neptune the storage type is managed at the DB
    #   Cluster level.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   Specifies the identifier of the CA certificate for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The new DB subnet group for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] pending_cloudwatch_logs_exports
    #   This `PendingCloudwatchLogsExports` structure specifies pending
    #   changes to which CloudWatch logs are enabled and which are disabled.
    #   @return [Types::PendingCloudwatchLogsExports]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/PendingModifiedValues AWS API Documentation
    #
    class PendingModifiedValues < Struct.new(
      :db_instance_class,
      :allocated_storage,
      :master_user_password,
      :port,
      :backup_retention_period,
      :multi_az,
      :engine_version,
      :license_model,
      :iops,
      :db_instance_identifier,
      :storage_type,
      :ca_certificate_identifier,
      :db_subnet_group_name,
      :pending_cloudwatch_logs_exports)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   Not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/PromoteReadReplicaDBClusterMessage AWS API Documentation
    #
    class PromoteReadReplicaDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Neptune DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/PromoteReadReplicaDBClusterResult AWS API Documentation
    #
    class PromoteReadReplicaDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provisioned IOPS not available in the specified Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ProvisionedIopsNotAvailableInAZFault AWS API Documentation
    #
    class ProvisionedIopsNotAvailableInAZFault < Aws::EmptyStructure; end

    # A range of integer values.
    #
    # @!attribute [rw] from
    #   The minimum value in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The maximum value in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] step
    #   The step value for the range. For example, if you have a range of
    #   5,000 to 10,000, with a step value of 1,000, the valid values start
    #   at 5,000 and step up by 1,000. Even though 7,500 is within the
    #   range, it isn't a valid value for the range. The valid values are
    #   5,000, 6,000, 7,000, 8,000...
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/Range AWS API Documentation
    #
    class Range < Struct.new(
      :from,
      :to,
      :step)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBInstance.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] force_failover
    #   When `true`, the reboot is conducted through a MultiAZ failover.
    #
    #   Constraint: You can't specify `true` if the instance is not
    #   configured for MultiAZ.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RebootDBInstanceMessage AWS API Documentation
    #
    class RebootDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :force_failover)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Contains the details of an Amazon Neptune DB instance.
    #
    #   This data type is used as a response element in the
    #   DescribeDBInstances action.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RebootDBInstanceResult AWS API Documentation
    #
    class RebootDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster_identifier
    #   The identifier of the Neptune global database from which to detach
    #   the specified Neptune DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The Amazon Resource Name (ARN) identifying the cluster to be
    #   detached from the Neptune global database cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveFromGlobalClusterMessage AWS API Documentation
    #
    class RemoveFromGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   Contains the details of an Amazon Neptune global database.
    #
    #   This data type is used as a response element for the
    #   CreateGlobalCluster, DescribeGlobalClusters, ModifyGlobalCluster,
    #   DeleteGlobalCluster, FailoverGlobalCluster, and
    #   RemoveFromGlobalCluster actions.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveFromGlobalClusterResult AWS API Documentation
    #
    class RemoveFromGlobalClusterResult < Struct.new(
      :global_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The name of the DB cluster to disassociate the IAM role from.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to disassociate from
    #   the DB cluster, for example
    #   `arn:aws:iam::123456789012:role/NeptuneAccessRole`.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature for the DB cluster that the IAM role is to
    #   be disassociated from. For the list of supported feature names, see
    #   DescribeDBEngineVersions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveRoleFromDBClusterMessage AWS API Documentation
    #
    class RemoveRoleFromDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :role_arn,
      :feature_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the event notification subscription you want to remove a
    #   source identifier from.
    #   @return [String]
    #
    # @!attribute [rw] source_identifier
    #   The source identifier to be removed from the subscription, such as
    #   the **DB instance identifier** for a DB instance or the name of a
    #   security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveSourceIdentifierFromSubscriptionMessage AWS API Documentation
    #
    class RemoveSourceIdentifierFromSubscriptionMessage < Struct.new(
      :subscription_name,
      :source_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Contains the results of a successful invocation of the
    #   DescribeEventSubscriptions action.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveSourceIdentifierFromSubscriptionResult AWS API Documentation
    #
    class RemoveSourceIdentifierFromSubscriptionResult < Struct.new(
      :event_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The Amazon Neptune resource that the tags are removed from. This
    #   value is an Amazon Resource Name (ARN). For information about
    #   creating an ARN, see [ Constructing an Amazon Resource Name
    #   (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key (name) of the tag to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RemoveTagsFromResourceMessage AWS API Documentation
    #
    class RemoveTagsFromResourceMessage < Struct.new(
      :resource_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to reset.
    #   @return [String]
    #
    # @!attribute [rw] reset_all_parameters
    #   A value that is set to `true` to reset all parameters in the DB
    #   cluster parameter group to their default values, and `false`
    #   otherwise. You can't use this parameter if there is a list of
    #   parameter names specified for the `Parameters` parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   A list of parameter names in the DB cluster parameter group to reset
    #   to the default values. You can't use this parameter if the
    #   `ResetAllParameters` parameter is set to `true`.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ResetDBClusterParameterGroupMessage AWS API Documentation
    #
    class ResetDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :reset_all_parameters,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_parameter_group_name
    #   The name of the DB parameter group.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DBParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] reset_all_parameters
    #   Specifies whether (`true`) or not (`false`) to reset all parameters
    #   in the DB parameter group to default values.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   To reset the entire DB parameter group, specify the
    #   `DBParameterGroup` name and `ResetAllParameters` parameters. To
    #   reset specific parameters, provide a list of the following:
    #   `ParameterName` and `ApplyMethod`. A maximum of 20 parameters can be
    #   modified in a single request.
    #
    #   Valid Values (for Apply method): `pending-reboot`
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ResetDBParameterGroupMessage AWS API Documentation
    #
    class ResetDBParameterGroupMessage < Struct.new(
      :db_parameter_group_name,
      :reset_all_parameters,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource ID was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ResourceNotFoundFault AWS API Documentation
    #
    class ResourceNotFoundFault < Aws::EmptyStructure; end

    # Describes the pending maintenance actions for a resource.
    #
    # @!attribute [rw] resource_identifier
    #   The ARN of the resource that has pending maintenance actions.
    #   @return [String]
    #
    # @!attribute [rw] pending_maintenance_action_details
    #   A list that provides details about the pending maintenance actions
    #   for the resource.
    #   @return [Array<Types::PendingMaintenanceAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ResourcePendingMaintenanceActions AWS API Documentation
    #
    class ResourcePendingMaintenanceActions < Struct.new(
      :resource_identifier,
      :pending_maintenance_action_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zones
    #   Provides the list of EC2 Availability Zones that instances in the
    #   restored DB cluster can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the DB cluster to create from the DB snapshot or DB
    #   cluster snapshot. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    #   @return [String]
    #
    # @!attribute [rw] snapshot_identifier
    #   The identifier for the DB snapshot or DB cluster snapshot to restore
    #   from.
    #
    #   You can use either the name or the Amazon Resource Name (ARN) to
    #   specify a DB cluster snapshot. However, you can use only the ARN to
    #   specify a DB snapshot.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing Snapshot.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for the new DB cluster.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine to use for the new DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the DB subnet group to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Not supported.
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster will belong
    #   to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the restored DB cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon KMS key identifier to use when restoring an encrypted DB
    #   cluster from a DB snapshot or DB cluster snapshot.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are restoring a DB cluster with the same
    #   Amazon account that owns the KMS encryption key used to encrypt the
    #   new DB cluster, then you can use the KMS key alias instead of the
    #   ARN for the KMS encryption key.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following will occur:
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier`
    #     is encrypted, then the restored DB cluster is encrypted using the
    #     KMS key that was used to encrypt the DB snapshot or DB cluster
    #     snapshot.
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier`
    #     is not encrypted, then the restored DB cluster is not encrypted.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of Amazon Identity and Access Management
    #   (IAM) accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to Amazon
    #   CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with the new
    #   DB cluster.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   *If set to `true`, tags are copied to any snapshot of the restored
    #   DB cluster that is created.*
    #   @return [Boolean]
    #
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   Contains the scaling configuration of a Neptune Serverless DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Neptune Serverless][1] in
    #   the *Amazon Neptune User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html
    #   @return [Types::ServerlessV2ScalingConfiguration]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB cluster.
    #
    #   Valid values: `standard`, `iopt1`
    #
    #   Default: `standard`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RestoreDBClusterFromSnapshotMessage AWS API Documentation
    #
    class RestoreDBClusterFromSnapshotMessage < Struct.new(
      :availability_zones,
      :db_cluster_identifier,
      :snapshot_identifier,
      :engine,
      :engine_version,
      :port,
      :db_subnet_group_name,
      :database_name,
      :option_group_name,
      :vpc_security_group_ids,
      :tags,
      :kms_key_id,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :db_cluster_parameter_group_name,
      :deletion_protection,
      :copy_tags_to_snapshot,
      :serverless_v2_scaling_configuration,
      :storage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Neptune DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RestoreDBClusterFromSnapshotResult AWS API Documentation
    #
    class RestoreDBClusterFromSnapshotResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The name of the new DB cluster to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @!attribute [rw] restore_type
    #   The type of restore to be performed. You can specify one of the
    #   following values:
    #
    #   * `full-copy` - The new DB cluster is restored as a full copy of the
    #     source DB cluster.
    #
    #   * `copy-on-write` - The new DB cluster is restored as a clone of the
    #     source DB cluster.
    #
    #   If you don't specify a `RestoreType` value, then the new DB cluster
    #   is restored as a full copy of the source DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] source_db_cluster_identifier
    #   The identifier of the source DB cluster from which to restore.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing DBCluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] restore_to_time
    #   The date and time to restore the DB cluster to.
    #
    #   Valid Values: Value must be a time in Universal Coordinated Time
    #   (UTC) format
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the DB instance
    #
    #   * Must be specified if `UseLatestRestorableTime` parameter is not
    #     provided
    #
    #   * Cannot be specified if `UseLatestRestorableTime` parameter is true
    #
    #   * Cannot be specified if `RestoreType` parameter is `copy-on-write`
    #
    #   Example: `2015-03-07T23:45:00Z`
    #   @return [Time]
    #
    # @!attribute [rw] use_latest_restorable_time
    #   A value that is set to `true` to restore the DB cluster to the
    #   latest restorable backup time, and `false` otherwise.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if `RestoreToTime` parameter is
    #   provided.
    #   @return [Boolean]
    #
    # @!attribute [rw] port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The DB subnet group name to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] option_group_name
    #   *(Not supported by Neptune)*
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be applied to the restored DB cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon KMS key identifier to use when restoring an encrypted DB
    #   cluster from an encrypted DB cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are restoring a DB cluster with the same
    #   Amazon account that owns the KMS encryption key used to encrypt the
    #   new DB cluster, then you can use the KMS key alias instead of the
    #   ARN for the KMS encryption key.
    #
    #   You can restore to a new DB cluster and encrypt the new DB cluster
    #   with a KMS key that is different than the KMS key used to encrypt
    #   the source DB cluster. The new DB cluster is encrypted with the KMS
    #   key identified by the `KmsKeyId` parameter.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following will occur:
    #
    #   * If the DB cluster is encrypted, then the restored DB cluster is
    #     encrypted using the KMS key that was used to encrypt the source DB
    #     cluster.
    #
    #   * If the DB cluster is not encrypted, then the restored DB cluster
    #     is not encrypted.
    #
    #   If `DBClusterIdentifier` refers to a DB cluster that is not
    #   encrypted, then the restore request is rejected.
    #   @return [String]
    #
    # @!attribute [rw] enable_iam_database_authentication
    #   True to enable mapping of Amazon Identity and Access Management
    #   (IAM) accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to
    #   CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with the new
    #   DB cluster.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing
    #     DBClusterParameterGroup.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the DB cluster has deletion
    #   protection enabled. The database can't be deleted when deletion
    #   protection is enabled. By default, deletion protection is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] serverless_v2_scaling_configuration
    #   Contains the scaling configuration of a Neptune Serverless DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Neptune Serverless][1] in
    #   the *Amazon Neptune User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html
    #   @return [Types::ServerlessV2ScalingConfiguration]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB cluster.
    #
    #   Valid values: `standard`, `iopt1`
    #
    #   Default: `standard`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RestoreDBClusterToPointInTimeMessage AWS API Documentation
    #
    class RestoreDBClusterToPointInTimeMessage < Struct.new(
      :db_cluster_identifier,
      :restore_type,
      :source_db_cluster_identifier,
      :restore_to_time,
      :use_latest_restorable_time,
      :port,
      :db_subnet_group_name,
      :option_group_name,
      :vpc_security_group_ids,
      :tags,
      :kms_key_id,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :db_cluster_parameter_group_name,
      :deletion_protection,
      :serverless_v2_scaling_configuration,
      :storage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Neptune DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/RestoreDBClusterToPointInTimeResult AWS API Documentation
    #
    class RestoreDBClusterToPointInTimeResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SNS topic is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SNSInvalidTopicFault AWS API Documentation
    #
    class SNSInvalidTopicFault < Aws::EmptyStructure; end

    # There is no SNS authorization.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SNSNoAuthorizationFault AWS API Documentation
    #
    class SNSNoAuthorizationFault < Aws::EmptyStructure; end

    # The ARN of the SNS topic could not be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SNSTopicArnNotFoundFault AWS API Documentation
    #
    class SNSTopicArnNotFoundFault < Aws::EmptyStructure; end

    # Contains the scaling configuration of a Neptune Serverless DB cluster.
    #
    # For more information, see [Using Amazon Neptune Serverless][1] in the
    # *Amazon Neptune User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html
    #
    # @!attribute [rw] min_capacity
    #   The minimum number of Neptune capacity units (NCUs) for a DB
    #   instance in a Neptune Serverless cluster. You can specify NCU values
    #   in half-step increments, such as 8, 8.5, 9, and so on.
    #   @return [Float]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of Neptune capacity units (NCUs) for a DB
    #   instance in a Neptune Serverless cluster. You can specify NCU values
    #   in half-step increments, such as 40, 40.5, 41, and so on.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ServerlessV2ScalingConfiguration AWS API Documentation
    #
    class ServerlessV2ScalingConfiguration < Struct.new(
      :min_capacity,
      :max_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Shows the scaling configuration for a Neptune Serverless DB cluster.
    #
    # For more information, see [Using Amazon Neptune Serverless][1] in the
    # *Amazon Neptune User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html
    #
    # @!attribute [rw] min_capacity
    #   The minimum number of Neptune capacity units (NCUs) for a DB
    #   instance in a Neptune Serverless cluster. You can specify NCU values
    #   in half-step increments, such as 8, 8.5, 9, and so on.
    #   @return [Float]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of Neptune capacity units (NCUs) for a DB
    #   instance in a Neptune Serverless cluster. You can specify NCU values
    #   in half-step increments, such as 40, 40.5, 41, and so on.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ServerlessV2ScalingConfigurationInfo AWS API Documentation
    #
    class ServerlessV2ScalingConfigurationInfo < Struct.new(
      :min_capacity,
      :max_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the maximum number of accounts that you can share a
    # manual DB snapshot with.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SharedSnapshotQuotaExceededFault AWS API Documentation
    #
    class SharedSnapshotQuotaExceededFault < Aws::EmptyStructure; end

    # Request would result in user exceeding the allowed number of DB
    # snapshots.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SnapshotQuotaExceededFault AWS API Documentation
    #
    class SnapshotQuotaExceededFault < Aws::EmptyStructure; end

    # The source could not be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SourceNotFoundFault AWS API Documentation
    #
    class SourceNotFoundFault < Aws::EmptyStructure; end

    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the Neptune DB cluster to be started.
    #   This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/StartDBClusterMessage AWS API Documentation
    #
    class StartDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Neptune DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/StartDBClusterResult AWS API Documentation
    #
    class StartDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier of the Neptune DB cluster to be stopped.
    #   This parameter is stored as a lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/StopDBClusterMessage AWS API Documentation
    #
    class StopDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Contains the details of an Amazon Neptune DB cluster.
    #
    #   This data type is used as a response element in the
    #   DescribeDBClusters.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/StopDBClusterResult AWS API Documentation
    #
    class StopDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request would result in user exceeding the allowed amount of storage
    # available across all DB instances.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/StorageQuotaExceededFault AWS API Documentation
    #
    class StorageQuotaExceededFault < Aws::EmptyStructure; end

    # *StorageType* specified cannot be associated with the DB Instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/StorageTypeNotSupportedFault AWS API Documentation
    #
    class StorageTypeNotSupportedFault < Aws::EmptyStructure; end

    # Specifies a subnet.
    #
    # This data type is used as a response element in the
    # DescribeDBSubnetGroups action.
    #
    # @!attribute [rw] subnet_identifier
    #   Specifies the identifier of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   Specifies the EC2 Availability Zone that the subnet is in.
    #   @return [Types::AvailabilityZone]
    #
    # @!attribute [rw] subnet_status
    #   Specifies the status of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The DB subnet is already in use in the Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SubnetAlreadyInUse AWS API Documentation
    #
    class SubnetAlreadyInUse < Aws::EmptyStructure; end

    # This subscription already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SubscriptionAlreadyExistFault AWS API Documentation
    #
    class SubscriptionAlreadyExistFault < Aws::EmptyStructure; end

    # The designated subscription category could not be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SubscriptionCategoryNotFoundFault AWS API Documentation
    #
    class SubscriptionCategoryNotFoundFault < Aws::EmptyStructure; end

    # The designated subscription could not be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SubscriptionNotFoundFault AWS API Documentation
    #
    class SubscriptionNotFoundFault < Aws::EmptyStructure; end

    # @!attribute [rw] global_cluster_identifier
    #   The identifier of the global database cluster to switch over. This
    #   parameter isn't case-sensitive.
    #
    #   Constraints: Must match the identifier of an existing global
    #   database cluster.
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_identifier
    #   The Amazon Resource Name (ARN) of the secondary Neptune DB cluster
    #   that you want to promote to primary for the global database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SwitchoverGlobalClusterMessage AWS API Documentation
    #
    class SwitchoverGlobalClusterMessage < Struct.new(
      :global_cluster_identifier,
      :target_db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_cluster
    #   Contains the details of an Amazon Neptune global database.
    #
    #   This data type is used as a response element for the
    #   CreateGlobalCluster, DescribeGlobalClusters, ModifyGlobalCluster,
    #   DeleteGlobalCluster, FailoverGlobalCluster, and
    #   RemoveFromGlobalCluster actions.
    #   @return [Types::GlobalCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/SwitchoverGlobalClusterResult AWS API Documentation
    #
    class SwitchoverGlobalClusterResult < Struct.new(
      :global_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata assigned to an Amazon Neptune resource consisting of a
    # key-value pair.
    #
    # @!attribute [rw] key
    #   A key is the required name of the tag. The string value can be from
    #   1 to 128 Unicode characters in length and can't be prefixed with
    #   `aws:` or `rds:`. The string can only contain the set of Unicode
    #   letters, digits, white-space, '\_', '.', '/', '=', '+',
    #   '-' (Java regex:
    #   "^(\[\\\\p\{L}\\\\p\{Z}\\\\p\{N}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value is the optional value of the tag. The string value can be
    #   from 1 to 256 Unicode characters in length and can't be prefixed
    #   with `aws:` or `rds:`. The string can only contain the set of
    #   Unicode letters, digits, white-space, '\_', '.', '/', '=',
    #   '+', '-' (Java regex:
    #   "^(\[\\\\p\{L}\\\\p\{Z}\\\\p\{N}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   List of tags returned by the ListTagsForResource operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/TagListMessage AWS API Documentation
    #
    class TagListMessage < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time zone associated with a DBInstance.
    #
    # @!attribute [rw] timezone_name
    #   The name of the time zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/Timezone AWS API Documentation
    #
    class Timezone < Struct.new(
      :timezone_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The version of the database engine that a DB instance can be upgraded
    # to.
    #
    # @!attribute [rw] engine
    #   The name of the upgrade target database engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the upgrade target database engine.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The version of the database engine that a DB instance can be
    #   upgraded to.
    #   @return [String]
    #
    # @!attribute [rw] auto_upgrade
    #   A value that indicates whether the target version is applied to any
    #   source DB instances that have AutoMinorVersionUpgrade set to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_major_version_upgrade
    #   A value that indicates whether a database engine is upgraded to a
    #   major version.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_global_databases
    #   A value that indicates whether you can use Neptune global databases
    #   with the target engine version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/UpgradeTarget AWS API Documentation
    #
    class UpgradeTarget < Struct.new(
      :engine,
      :engine_version,
      :description,
      :auto_upgrade,
      :is_major_version_upgrade,
      :supports_global_databases)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about valid modifications that you can make to your DB
    # instance. Contains the result of a successful call to the
    # DescribeValidDBInstanceModifications action. You can use this
    # information when you call ModifyDBInstance.
    #
    # @!attribute [rw] storage
    #   Valid storage options for your DB instance.
    #   @return [Array<Types::ValidStorageOptions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ValidDBInstanceModificationsMessage AWS API Documentation
    #
    class ValidDBInstanceModificationsMessage < Struct.new(
      :storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Not applicable. In Neptune the storage type is managed at the DB
    # Cluster level.
    #
    # @!attribute [rw] storage_type
    #   Not applicable. In Neptune the storage type is managed at the DB
    #   Cluster level.
    #   @return [String]
    #
    # @!attribute [rw] storage_size
    #   Not applicable. In Neptune the storage type is managed at the DB
    #   Cluster level.
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] provisioned_iops
    #   Not applicable. In Neptune the storage type is managed at the DB
    #   Cluster level.
    #   @return [Array<Types::Range>]
    #
    # @!attribute [rw] iops_to_storage_ratio
    #   Not applicable. In Neptune the storage type is managed at the DB
    #   Cluster level.
    #   @return [Array<Types::DoubleRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/ValidStorageOptions AWS API Documentation
    #
    class ValidStorageOptions < Struct.new(
      :storage_type,
      :storage_size,
      :provisioned_iops,
      :iops_to_storage_ratio)
      SENSITIVE = []
      include Aws::Structure
    end

    # This data type is used as a response element for queries on VPC
    # security group membership.
    #
    # @!attribute [rw] vpc_security_group_id
    #   The name of the VPC security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-2014-10-31/VpcSecurityGroupMembership AWS API Documentation
    #
    class VpcSecurityGroupMembership < Struct.new(
      :vpc_security_group_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

