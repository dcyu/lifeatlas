# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElastiCache
  module Types

    # The customer has exceeded the allowed rate of API calls.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/APICallRateForCustomerExceededFault AWS API Documentation
    #
    class APICallRateForCustomerExceededFault < Aws::EmptyStructure; end

    # Represents the input of an AddTagsToResource operation.
    #
    # @!attribute [rw] resource_name
    #   The Amazon Resource Name (ARN) of the resource to which the tags are
    #   to be added, for example
    #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
    #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
    #   ElastiCache resources are *cluster* and *snapshot*.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and Amazon Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AddTagsToResourceMessage AWS API Documentation
    #
    class AddTagsToResourceMessage < Struct.new(
      :resource_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the allowed node types you can use to modify your cluster
    # or replication group.
    #
    # @!attribute [rw] scale_up_modifications
    #   A string list, each element of which specifies a cache node type
    #   which you can use to scale your cluster or replication group.
    #
    #   When scaling up a Valkey or Redis OSS cluster or replication group
    #   using `ModifyCacheCluster` or `ModifyReplicationGroup`, use a value
    #   from this list for the `CacheNodeType` parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scale_down_modifications
    #   A string list, each element of which specifies a cache node type
    #   which you can use to scale your cluster or replication group. When
    #   scaling down a Valkey or Redis OSS cluster or replication group
    #   using ModifyCacheCluster or ModifyReplicationGroup, use a value from
    #   this list for the CacheNodeType parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AllowedNodeTypeModificationsMessage AWS API Documentation
    #
    class AllowedNodeTypeModificationsMessage < Struct.new(
      :scale_up_modifications,
      :scale_down_modifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether the user requires a password to authenticate.
    #
    # @!attribute [rw] type
    #   Indicates whether the user requires a password to authenticate.
    #   @return [String]
    #
    # @!attribute [rw] password_count
    #   The number of passwords belonging to the user. The maximum is two.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Authentication AWS API Documentation
    #
    class Authentication < Struct.new(
      :type,
      :password_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the authentication mode to use.
    #
    # @!attribute [rw] type
    #   Specifies the authentication type. Possible options are IAM
    #   authentication, password and no password.
    #   @return [String]
    #
    # @!attribute [rw] passwords
    #   Specifies the passwords to use for authentication if `Type` is set
    #   to `password`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthenticationMode AWS API Documentation
    #
    class AuthenticationMode < Struct.new(
      :type,
      :passwords)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified Amazon EC2 security group is already authorized for the
    # specified cache security group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthorizationAlreadyExistsFault AWS API Documentation
    #
    class AuthorizationAlreadyExistsFault < Aws::EmptyStructure; end

    # The specified Amazon EC2 security group is not authorized for the
    # specified cache security group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthorizationNotFoundFault AWS API Documentation
    #
    class AuthorizationNotFoundFault < Aws::EmptyStructure; end

    # Represents the input of an AuthorizeCacheSecurityGroupIngress
    # operation.
    #
    # @!attribute [rw] cache_security_group_name
    #   The cache security group that allows network ingress.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   The Amazon EC2 security group to be authorized for ingress to the
    #   cache security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   The Amazon account number of the Amazon EC2 security group owner.
    #   Note that this is not the same thing as an Amazon access key ID -
    #   you must provide a valid Amazon account number for this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthorizeCacheSecurityGroupIngressMessage AWS API Documentation
    #
    class AuthorizeCacheSecurityGroupIngressMessage < Struct.new(
      :cache_security_group_name,
      :ec2_security_group_name,
      :ec2_security_group_owner_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_security_group
    #   Represents the output of one of the following operations:
    #
    #   * `AuthorizeCacheSecurityGroupIngress`
    #
    #   * `CreateCacheSecurityGroup`
    #
    #   * `RevokeCacheSecurityGroupIngress`
    #   @return [Types::CacheSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthorizeCacheSecurityGroupIngressResult AWS API Documentation
    #
    class AuthorizeCacheSecurityGroupIngressResult < Struct.new(
      :cache_security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Availability Zone in which the cluster is launched.
    #
    # @!attribute [rw] name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group_ids
    #   The replication group IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] cache_cluster_ids
    #   The cache cluster IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/BatchApplyUpdateActionMessage AWS API Documentation
    #
    class BatchApplyUpdateActionMessage < Struct.new(
      :replication_group_ids,
      :cache_cluster_ids,
      :service_update_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group_ids
    #   The replication group IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] cache_cluster_ids
    #   The cache cluster IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/BatchStopUpdateActionMessage AWS API Documentation
    #
    class BatchStopUpdateActionMessage < Struct.new(
      :replication_group_ids,
      :cache_cluster_ids,
      :service_update_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all of the attributes of a specific cluster.
    #
    # @!attribute [rw] cache_cluster_id
    #   The user-supplied identifier of the cluster. This identifier is a
    #   unique key that identifies a cluster.
    #   @return [String]
    #
    # @!attribute [rw] configuration_endpoint
    #   Represents a Memcached cluster endpoint which can be used by an
    #   application to connect to any node in the cluster. The configuration
    #   endpoint will always have `.cfg` in it.
    #
    #   Example: `mem-3.9dvc4r.cfg.usw2.cache.amazonaws.com:11211`
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] client_download_landing_page
    #   The URL of the web page where you can download the latest
    #   ElastiCache client library.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The name of the compute and memory capacity node type for the
    #   cluster.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **M7g node types**: `cache.m7g.large`, `cache.m7g.xlarge`,
    #       `cache.m7g.2xlarge`, `cache.m7g.4xlarge`, `cache.m7g.8xlarge`,
    #       `cache.m7g.12xlarge`, `cache.m7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **M6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.m6g.large`, `cache.m6g.xlarge`, `cache.m6g.2xlarge`,
    #       `cache.m6g.4xlarge`, `cache.m6g.8xlarge`, `cache.m6g.12xlarge`,
    #       `cache.m6g.16xlarge`
    #
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T4g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and Memcached engine version 1.5.16 onward):
    #       `cache.t4g.micro`, `cache.t4g.small`, `cache.t4g.medium`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R7g node types**: `cache.r7g.large`, `cache.r7g.xlarge`,
    #       `cache.r7g.2xlarge`, `cache.r7g.4xlarge`, `cache.r7g.8xlarge`,
    #       `cache.r7g.12xlarge`, `cache.r7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **R6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.r6g.large`, `cache.r6g.xlarge`, `cache.r6g.2xlarge`,
    #       `cache.r6g.4xlarge`, `cache.r6g.8xlarge`, `cache.r6g.12xlarge`,
    #       `cache.r6g.16xlarge`
    #
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Valkey or Redis OSS append-only files (AOF) are not supported for
    #     T1 or T2 instances.
    #
    #   * Valkey or Redis OSS Multi-AZ with automatic failover is not
    #     supported on T1 instances.
    #
    #   * The configuration variables `appendonly` and `appendfsync` are not
    #     supported on Valkey, or on Redis OSS version 2.8.22 and later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the cache engine (`memcached` or `redis`) to be used for
    #   this cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the cache engine that is used in this cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_status
    #   The current state of this cluster, one of the following values:
    #   `available`, `creating`, `deleted`, `deleting`,
    #   `incompatible-network`, `modifying`, `rebooting cluster nodes`,
    #   `restore-failed`, or `snapshotting`.
    #   @return [String]
    #
    # @!attribute [rw] num_cache_nodes
    #   The number of cache nodes in the cluster.
    #
    #   For clusters running Valkey or Redis OSS, this value must be 1. For
    #   clusters running Memcached, this value must be between 1 and 40.
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_availability_zone
    #   The name of the Availability Zone in which the cluster is located or
    #   "Multiple" if the cache nodes are located in different
    #   Availability Zones.
    #   @return [String]
    #
    # @!attribute [rw] preferred_outpost_arn
    #   The outpost ARN in which the cache cluster is created.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_create_time
    #   The date and time when the cluster was created.
    #   @return [Time]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   A group of settings that are applied to the cluster in the future,
    #   or that are currently being applied.
    #   @return [Types::PendingModifiedValues]
    #
    # @!attribute [rw] notification_configuration
    #   Describes a notification topic and its status. Notification topics
    #   are used for publishing ElastiCache events to subscribers using
    #   Amazon Simple Notification Service (SNS).
    #   @return [Types::NotificationConfiguration]
    #
    # @!attribute [rw] cache_security_groups
    #   A list of cache security group elements, composed of name and status
    #   sub-elements.
    #   @return [Array<Types::CacheSecurityGroupMembership>]
    #
    # @!attribute [rw] cache_parameter_group
    #   Status of the cache parameter group.
    #   @return [Types::CacheParameterGroupStatus]
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group associated with the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_nodes
    #   A list of cache nodes that are members of the cluster.
    #   @return [Array<Types::CacheNode>]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #    If you are running Valkey or Redis OSS engine version 6.0 or later,
    #   set this parameter to yes if you want to opt-in to the next auto
    #   minor version upgrade campaign. This parameter is disabled for
    #   previous versions. 
    #   @return [Boolean]
    #
    # @!attribute [rw] security_groups
    #   A list of VPC Security Groups associated with the cluster.
    #   @return [Array<Types::SecurityGroupMembership>]
    #
    # @!attribute [rw] replication_group_id
    #   The replication group to which this cluster belongs. If this field
    #   is empty, the cluster is not associated with any replication group.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic cluster
    #   snapshots before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    #   If the value of SnapshotRetentionLimit is set to zero (0), backups
    #   are turned off.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of your cluster.
    #
    #   Example: `05:00-09:00`
    #   @return [String]
    #
    # @!attribute [rw] auth_token_enabled
    #   A flag that enables using an `AuthToken` (password) when issuing
    #   Valkey or Redis OSS commands.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] auth_token_last_modified_date
    #   The date the auth token was last modified
    #   @return [Time]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to `true`.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using Redis OSS version `3.2.6`, `4.x` or later.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] at_rest_encryption_enabled
    #   A flag that enables encryption at-rest when set to `true`.
    #
    #   You cannot modify the value of `AtRestEncryptionEnabled` after the
    #   cluster is created. To enable at-rest encryption on a cluster you
    #   must set `AtRestEncryptionEnabled` to `true` when you create a
    #   cluster.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using Redis OSS version `3.2.6`, `4.x` or later.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the cache cluster.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_log_delivery_enabled
    #   A boolean value indicating whether log delivery is enabled for the
    #   replication group.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_delivery_configurations
    #   Returns the destination, format and type of the logs.
    #   @return [Array<Types::LogDeliveryConfiguration>]
    #
    # @!attribute [rw] network_type
    #   Must be either `ipv4` \| `ipv6` \| `dual_stack`. IPv6 is supported
    #   for workloads using Valkey 7.2 and above, Redis OSS engine version
    #   6.2 7.1 or Memcached engine version 1.6.6 and above on all instances
    #   built on the [Nitro system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [String]
    #
    # @!attribute [rw] ip_discovery
    #   The network type associated with the cluster, either `ipv4` \|
    #   `ipv6`. IPv6 is supported for workloads using Valkey 7.2 and above,
    #   Redis OSS engine version 6.2 to 7.1 or Memcached engine version
    #   1.6.6 and above on all instances built on the [Nitro system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption_mode
    #   A setting that allows you to migrate your clients to use in-transit
    #   encryption, with no downtime.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheCluster AWS API Documentation
    #
    class CacheCluster < Struct.new(
      :cache_cluster_id,
      :configuration_endpoint,
      :client_download_landing_page,
      :cache_node_type,
      :engine,
      :engine_version,
      :cache_cluster_status,
      :num_cache_nodes,
      :preferred_availability_zone,
      :preferred_outpost_arn,
      :cache_cluster_create_time,
      :preferred_maintenance_window,
      :pending_modified_values,
      :notification_configuration,
      :cache_security_groups,
      :cache_parameter_group,
      :cache_subnet_group_name,
      :cache_nodes,
      :auto_minor_version_upgrade,
      :security_groups,
      :replication_group_id,
      :snapshot_retention_limit,
      :snapshot_window,
      :auth_token_enabled,
      :auth_token_last_modified_date,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :arn,
      :replication_group_log_delivery_enabled,
      :log_delivery_configurations,
      :network_type,
      :ip_discovery,
      :transit_encryption_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # You already have a cluster with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheClusterAlreadyExistsFault AWS API Documentation
    #
    class CacheClusterAlreadyExistsFault < Aws::EmptyStructure; end

    # Represents the output of a `DescribeCacheClusters` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] cache_clusters
    #   A list of clusters. Each item in the list contains detailed
    #   information about one cluster.
    #   @return [Array<Types::CacheCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheClusterMessage AWS API Documentation
    #
    class CacheClusterMessage < Struct.new(
      :marker,
      :cache_clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested cluster ID does not refer to an existing cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheClusterNotFoundFault AWS API Documentation
    #
    class CacheClusterNotFoundFault < Aws::EmptyStructure; end

    # Provides all of the details about a particular cache engine version.
    #
    # @!attribute [rw] engine
    #   The name of the cache engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the cache engine.
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_family
    #   The name of the cache parameter group family associated with this
    #   cache engine.
    #
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `memcached1.6`
    #   \| `redis2.6` \| `redis2.8` \| `redis3.2` \| `redis4.0` \|
    #   `redis5.0` \| `redis6.x` \| `redis7`
    #   @return [String]
    #
    # @!attribute [rw] cache_engine_description
    #   The description of the cache engine.
    #   @return [String]
    #
    # @!attribute [rw] cache_engine_version_description
    #   The description of the cache engine version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheEngineVersion AWS API Documentation
    #
    class CacheEngineVersion < Struct.new(
      :engine,
      :engine_version,
      :cache_parameter_group_family,
      :cache_engine_description,
      :cache_engine_version_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a DescribeCacheEngineVersions operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] cache_engine_versions
    #   A list of cache engine version details. Each element in the list
    #   contains detailed information about one cache engine version.
    #   @return [Array<Types::CacheEngineVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheEngineVersionMessage AWS API Documentation
    #
    class CacheEngineVersionMessage < Struct.new(
      :marker,
      :cache_engine_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an individual cache node within a cluster. Each cache node
    # runs its own instance of the cluster's protocol-compliant caching
    # software - either Memcached, Valkey or Redis OSS.
    #
    # The following node types are supported by ElastiCache. Generally
    # speaking, the current generation types provide more memory and
    # computational power at lower cost when compared to their equivalent
    # previous generation counterparts.
    #
    # * General purpose:
    #
    #   * Current generation:
    #
    #     **M7g node types**: `cache.m7g.large`, `cache.m7g.xlarge`,
    #     `cache.m7g.2xlarge`, `cache.m7g.4xlarge`, `cache.m7g.8xlarge`,
    #     `cache.m7g.12xlarge`, `cache.m7g.16xlarge`
    #
    #     <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #      </note>
    #
    #     **M6g node types** (available only for Redis OSS engine version
    #     5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #     `cache.m6g.large`, `cache.m6g.xlarge`, `cache.m6g.2xlarge`,
    #     `cache.m6g.4xlarge`, `cache.m6g.8xlarge`, `cache.m6g.12xlarge`,
    #     `cache.m6g.16xlarge`
    #
    #     **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #     `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #     `cache.m5.24xlarge`
    #
    #     **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #     `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     **T4g node types** (available only for Redis OSS engine version
    #     5.0.6 onward and Memcached engine version 1.5.16 onward):
    #     `cache.t4g.micro`, `cache.t4g.small`, `cache.t4g.medium`
    #
    #     **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #     `cache.t3.medium`
    #
    #     **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #     `cache.t2.medium`
    #
    #   * Previous generation: (not recommended. Existing clusters are still
    #     supported but creation of new clusters is not supported for these
    #     types.)
    #
    #     **T1 node types:** `cache.t1.micro`
    #
    #     **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #     `cache.m1.large`, `cache.m1.xlarge`
    #
    #     **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #     `cache.m3.xlarge`, `cache.m3.2xlarge`
    # * Compute optimized:
    #
    #   * Previous generation: (not recommended. Existing clusters are still
    #     supported but creation of new clusters is not supported for these
    #     types.)
    #
    #     **C1 node types:** `cache.c1.xlarge`
    # * Memory optimized:
    #
    #   * Current generation:
    #
    #     **R7g node types**: `cache.r7g.large`, `cache.r7g.xlarge`,
    #     `cache.r7g.2xlarge`, `cache.r7g.4xlarge`, `cache.r7g.8xlarge`,
    #     `cache.r7g.12xlarge`, `cache.r7g.16xlarge`
    #
    #     <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #      </note>
    #
    #     **R6g node types** (available only for Redis OSS engine version
    #     5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #     `cache.r6g.large`, `cache.r6g.xlarge`, `cache.r6g.2xlarge`,
    #     `cache.r6g.4xlarge`, `cache.r6g.8xlarge`, `cache.r6g.12xlarge`,
    #     `cache.r6g.16xlarge`
    #
    #     **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #     `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #     `cache.r5.24xlarge`
    #
    #     **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #     `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #     `cache.r4.16xlarge`
    #
    #   * Previous generation: (not recommended. Existing clusters are still
    #     supported but creation of new clusters is not supported for these
    #     types.)
    #
    #     **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #     `cache.m2.4xlarge`
    #
    #     **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #     `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    # **Additional node type info**
    #
    # * All current generation instance types are created in Amazon VPC by
    #   default.
    #
    # * Valkey or Redis OSS append-only files (AOF) are not supported for T1
    #   or T2 instances.
    #
    # * Valkey or Redis OSS Multi-AZ with automatic failover is not
    #   supported on T1 instances.
    #
    # * The configuration variables `appendonly` and `appendfsync` are not
    #   supported on Valkey, or on Redis OSS version 2.8.22 and later.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion
    #
    # @!attribute [rw] cache_node_id
    #   The cache node identifier. A node ID is a numeric identifier (0001,
    #   0002, etc.). The combination of cluster ID and node ID uniquely
    #   identifies every cache node used in a customer's Amazon account.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_status
    #   The current state of this cache node, one of the following values:
    #   `available`, `creating`, `rebooting`, or `deleting`.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_create_time
    #   The date and time when the cache node was created.
    #   @return [Time]
    #
    # @!attribute [rw] endpoint
    #   The hostname for connecting to this cache node.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] parameter_group_status
    #   The status of the parameter group applied to this cache node.
    #   @return [String]
    #
    # @!attribute [rw] source_cache_node_id
    #   The ID of the primary node to which this read replica node is
    #   synchronized. If this field is empty, this node is not associated
    #   with a primary cluster.
    #   @return [String]
    #
    # @!attribute [rw] customer_availability_zone
    #   The Availability Zone where this node was created and now resides.
    #   @return [String]
    #
    # @!attribute [rw] customer_outpost_arn
    #   The customer outpost ARN of the cache node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheNode AWS API Documentation
    #
    class CacheNode < Struct.new(
      :cache_node_id,
      :cache_node_status,
      :cache_node_create_time,
      :endpoint,
      :parameter_group_status,
      :source_cache_node_id,
      :customer_availability_zone,
      :customer_outpost_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter that has a different value for each cache node type it is
    # applied to. For example, in a Valkey or Redis OSS cluster, a
    # `cache.m1.large` cache node type would have a larger `maxmemory` value
    # than a `cache.m1.small` type.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the parameter value.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The valid data type for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   The valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   Indicates whether (`true`) or not (`false`) the parameter can be
    #   modified. Some parameters have security or operational implications
    #   that prevent them from being changed.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_engine_version
    #   The earliest cache engine version to which the parameter can apply.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type_specific_values
    #   A list of cache node types and their corresponding values for this
    #   parameter.
    #   @return [Array<Types::CacheNodeTypeSpecificValue>]
    #
    # @!attribute [rw] change_type
    #   Indicates whether a change to the parameter is applied immediately
    #   or requires a reboot for the change to be applied. You can force a
    #   reboot or wait until the next maintenance window's reboot. For more
    #   information, see [Rebooting a Cluster][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.Rebooting.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheNodeTypeSpecificParameter AWS API Documentation
    #
    class CacheNodeTypeSpecificParameter < Struct.new(
      :parameter_name,
      :description,
      :source,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :minimum_engine_version,
      :cache_node_type_specific_values,
      :change_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A value that applies only to a certain cache node type.
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type for which this value applies.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the cache node type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheNodeTypeSpecificValue AWS API Documentation
    #
    class CacheNodeTypeSpecificValue < Struct.new(
      :cache_node_type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the service update on the cache node
    #
    # @!attribute [rw] cache_node_id
    #   The node ID of the cache cluster
    #   @return [String]
    #
    # @!attribute [rw] node_update_status
    #   The update status of the node
    #   @return [String]
    #
    # @!attribute [rw] node_deletion_date
    #   The deletion date of the node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_start_date
    #   The start date of the update for a node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_end_date
    #   The end date of the update for a node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_initiated_by
    #   Reflects whether the update was initiated by the customer or
    #   automatically applied
    #   @return [String]
    #
    # @!attribute [rw] node_update_initiated_date
    #   The date when the update is triggered
    #   @return [Time]
    #
    # @!attribute [rw] node_update_status_modified_date
    #   The date when the NodeUpdateStatus was last modified&gt;
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheNodeUpdateStatus AWS API Documentation
    #
    class CacheNodeUpdateStatus < Struct.new(
      :cache_node_id,
      :node_update_status,
      :node_deletion_date,
      :node_update_start_date,
      :node_update_end_date,
      :node_update_initiated_by,
      :node_update_initiated_date,
      :node_update_status_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateCacheParameterGroup` operation.
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group.
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_family
    #   The name of the cache parameter group family that this cache
    #   parameter group is compatible with.
    #
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `memcached1.6`
    #   \| `redis2.6` \| `redis2.8` \| `redis3.2` \| `redis4.0` \|
    #   `redis5.0` \| `redis6.x` \| `redis7`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for this cache parameter group.
    #   @return [String]
    #
    # @!attribute [rw] is_global
    #   Indicates whether the parameter group is associated with a Global
    #   datastore
    #   @return [Boolean]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the cache parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroup AWS API Documentation
    #
    class CacheParameterGroup < Struct.new(
      :cache_parameter_group_name,
      :cache_parameter_group_family,
      :description,
      :is_global,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cache parameter group with the requested name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupAlreadyExistsFault AWS API Documentation
    #
    class CacheParameterGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # Represents the output of a `DescribeCacheParameters` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of Parameter instances.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] cache_node_type_specific_parameters
    #   A list of parameters specific to a particular cache node type. Each
    #   element in the list contains detailed information about one
    #   parameter.
    #   @return [Array<Types::CacheNodeTypeSpecificParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupDetails AWS API Documentation
    #
    class CacheParameterGroupDetails < Struct.new(
      :marker,
      :parameters,
      :cache_node_type_specific_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of one of the following operations:
    #
    # * `ModifyCacheParameterGroup`
    #
    # * `ResetCacheParameterGroup`
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupNameMessage AWS API Documentation
    #
    class CacheParameterGroupNameMessage < Struct.new(
      :cache_parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested cache parameter group name does not refer to an existing
    # cache parameter group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupNotFoundFault AWS API Documentation
    #
    class CacheParameterGroupNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the maximum
    # number of cache security groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupQuotaExceededFault AWS API Documentation
    #
    class CacheParameterGroupQuotaExceededFault < Aws::EmptyStructure; end

    # Status of the cache parameter group.
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of parameter updates.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_ids_to_reboot
    #   A list of the cache node IDs which need to be rebooted for parameter
    #   changes to be applied. A node ID is a numeric identifier (0001,
    #   0002, etc.).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupStatus AWS API Documentation
    #
    class CacheParameterGroupStatus < Struct.new(
      :cache_parameter_group_name,
      :parameter_apply_status,
      :cache_node_ids_to_reboot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeCacheParameterGroups` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_groups
    #   A list of cache parameter groups. Each element in the list contains
    #   detailed information about one cache parameter group.
    #   @return [Array<Types::CacheParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupsMessage AWS API Documentation
    #
    class CacheParameterGroupsMessage < Struct.new(
      :marker,
      :cache_parameter_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of one of the following operations:
    #
    # * `AuthorizeCacheSecurityGroupIngress`
    #
    # * `CreateCacheSecurityGroup`
    #
    # * `RevokeCacheSecurityGroupIngress`
    #
    # @!attribute [rw] owner_id
    #   The Amazon account ID of the cache security group owner.
    #   @return [String]
    #
    # @!attribute [rw] cache_security_group_name
    #   The name of the cache security group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the cache security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_groups
    #   A list of Amazon EC2 security groups that are associated with this
    #   cache security group.
    #   @return [Array<Types::EC2SecurityGroup>]
    #
    # @!attribute [rw] arn
    #   The ARN of the cache security group,
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroup AWS API Documentation
    #
    class CacheSecurityGroup < Struct.new(
      :owner_id,
      :cache_security_group_name,
      :description,
      :ec2_security_groups,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cache security group with the specified name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroupAlreadyExistsFault AWS API Documentation
    #
    class CacheSecurityGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # Represents a cluster's status within a particular cache security
    # group.
    #
    # @!attribute [rw] cache_security_group_name
    #   The name of the cache security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The membership status in the cache security group. The status
    #   changes when a cache security group is modified, or when the cache
    #   security groups assigned to a cluster are modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroupMembership AWS API Documentation
    #
    class CacheSecurityGroupMembership < Struct.new(
      :cache_security_group_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeCacheSecurityGroups` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] cache_security_groups
    #   A list of cache security groups. Each element in the list contains
    #   detailed information about one group.
    #   @return [Array<Types::CacheSecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroupMessage AWS API Documentation
    #
    class CacheSecurityGroupMessage < Struct.new(
      :marker,
      :cache_security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested cache security group name does not refer to an existing
    # cache security group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroupNotFoundFault AWS API Documentation
    #
    class CacheSecurityGroupNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of cache security groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroupQuotaExceededFault AWS API Documentation
    #
    class CacheSecurityGroupQuotaExceededFault < Aws::EmptyStructure; end

    # Represents the output of one of the following operations:
    #
    # * `CreateCacheSubnetGroup`
    #
    # * `ModifyCacheSubnetGroup`
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group.
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_description
    #   The description of the cache subnet group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The Amazon Virtual Private Cloud identifier (VPC ID) of the cache
    #   subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of subnets associated with the cache subnet group.
    #   @return [Array<Types::Subnet>]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the cache subnet group.
    #   @return [String]
    #
    # @!attribute [rw] supported_network_types
    #   Either `ipv4` \| `ipv6` \| `dual_stack`. IPv6 is supported for
    #   workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #   to 7.1 or Memcached engine version 1.6.6 and above on all instances
    #   built on the [Nitro system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroup AWS API Documentation
    #
    class CacheSubnetGroup < Struct.new(
      :cache_subnet_group_name,
      :cache_subnet_group_description,
      :vpc_id,
      :subnets,
      :arn,
      :supported_network_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested cache subnet group name is already in use by an existing
    # cache subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroupAlreadyExistsFault AWS API Documentation
    #
    class CacheSubnetGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # The requested cache subnet group is currently in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroupInUse AWS API Documentation
    #
    class CacheSubnetGroupInUse < Aws::EmptyStructure; end

    # Represents the output of a `DescribeCacheSubnetGroups` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_groups
    #   A list of cache subnet groups. Each element in the list contains
    #   detailed information about one group.
    #   @return [Array<Types::CacheSubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroupMessage AWS API Documentation
    #
    class CacheSubnetGroupMessage < Struct.new(
      :marker,
      :cache_subnet_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested cache subnet group name does not refer to an existing
    # cache subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroupNotFoundFault AWS API Documentation
    #
    class CacheSubnetGroupNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of cache subnet groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroupQuotaExceededFault AWS API Documentation
    #
    class CacheSubnetGroupQuotaExceededFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of subnets in a cache subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetQuotaExceededFault AWS API Documentation
    #
    class CacheSubnetQuotaExceededFault < Aws::EmptyStructure; end

    # The usage limits for storage and ElastiCache Processing Units for the
    # cache.
    #
    # @!attribute [rw] data_storage
    #   The maximum data storage limit in the cache, expressed in Gigabytes.
    #   @return [Types::DataStorage]
    #
    # @!attribute [rw] ecpu_per_second
    #   The configuration for the number of ElastiCache Processing Units
    #   (ECPU) the cache can consume per second.
    #   @return [Types::ECPUPerSecond]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheUsageLimits AWS API Documentation
    #
    class CacheUsageLimits < Struct.new(
      :data_storage,
      :ecpu_per_second)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details of the CloudWatch Logs destination.
    #
    # @!attribute [rw] log_group
    #   The name of the CloudWatch Logs log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CloudWatchLogsDestinationDetails AWS API Documentation
    #
    class CloudWatchLogsDestinationDetails < Struct.new(
      :log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request cannot be processed because it would exceed the allowed
    # number of clusters per customer.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ClusterQuotaForCustomerExceededFault AWS API Documentation
    #
    class ClusterQuotaForCustomerExceededFault < Aws::EmptyStructure; end

    # @!attribute [rw] replication_group_id
    #   The ID of the replication group to which data is being migrated.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Forces the migration to stop without ensuring that data is in sync.
    #   It is recommended to use this option only to abort the migration and
    #   not recommended when application wants to continue migration to
    #   ElastiCache.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CompleteMigrationMessage AWS API Documentation
    #
    class CompleteMigrationMessage < Struct.new(
      :replication_group_id,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Valkey or Redis OSS
    #   replication group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CompleteMigrationResponse AWS API Documentation
    #
    class CompleteMigrationResponse < Struct.new(
      :replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Node group (shard) configuration options when adding or removing
    # replicas. Each node group (shard) configuration has the following
    # members: NodeGroupId, NewReplicaCount, and PreferredAvailabilityZones.
    #
    # @!attribute [rw] node_group_id
    #   The 4-digit id for the node group you are configuring. For Valkey or
    #   Redis OSS (cluster mode disabled) replication groups, the node group
    #   id is always 0001. To find a Valkey or Redis OSS (cluster mode
    #   enabled)'s node group's (shard's) id, see [Finding a Shard's
    #   Id][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/shard-find-id.html
    #   @return [String]
    #
    # @!attribute [rw] new_replica_count
    #   The number of replicas you want in this node group at the end of
    #   this operation. The maximum value for `NewReplicaCount` is 5. The
    #   minimum value depends upon the type of Valkey or Redis OSS
    #   replication group you are working with.
    #
    #   The minimum number of replicas in a shard or replication group is:
    #
    #   * Valkey or Redis OSS (cluster mode disabled)
    #
    #     * If Multi-AZ: 1
    #
    #     * If Multi-AZ: 0
    #   * Valkey or Redis OSS (cluster mode enabled): 0 (though you will not
    #     be able to failover to a replica if your primary node fails)
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_availability_zones
    #   A list of `PreferredAvailabilityZone` strings that specify which
    #   availability zones the replication group's nodes are to be in. The
    #   nummber of `PreferredAvailabilityZone` values must equal the value
    #   of `NewReplicaCount` plus 1 to account for the primary node. If this
    #   member of `ReplicaConfiguration` is omitted, ElastiCache selects the
    #   availability zone for each of the replicas.
    #   @return [Array<String>]
    #
    # @!attribute [rw] preferred_outpost_arns
    #   The outpost ARNs in which the cache cluster is created.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ConfigureShard AWS API Documentation
    #
    class ConfigureShard < Struct.new(
      :node_group_id,
      :new_replica_count,
      :preferred_availability_zones,
      :preferred_outpost_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_serverless_cache_snapshot_name
    #   The identifier of the existing serverless cache’s snapshot to be
    #   copied. Available for Valkey, Redis OSS and Serverless Memcached
    #   only.
    #   @return [String]
    #
    # @!attribute [rw] target_serverless_cache_snapshot_name
    #   The identifier for the snapshot to be created. Available for Valkey,
    #   Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the KMS key used to encrypt the target snapshot.
    #   Available for Valkey, Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to the target snapshot resource. A tag is
    #   a key-value pair. Available for Valkey, Redis OSS and Serverless
    #   Memcached only. Default: NULL
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CopyServerlessCacheSnapshotRequest AWS API Documentation
    #
    class CopyServerlessCacheSnapshotRequest < Struct.new(
      :source_serverless_cache_snapshot_name,
      :target_serverless_cache_snapshot_name,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_snapshot
    #   The response for the attempt to copy the serverless cache snapshot.
    #   Available for Valkey, Redis OSS and Serverless Memcached only.
    #   @return [Types::ServerlessCacheSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CopyServerlessCacheSnapshotResponse AWS API Documentation
    #
    class CopyServerlessCacheSnapshotResponse < Struct.new(
      :serverless_cache_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CopySnapshotMessage` operation.
    #
    # @!attribute [rw] source_snapshot_name
    #   The name of an existing snapshot from which to make a copy.
    #   @return [String]
    #
    # @!attribute [rw] target_snapshot_name
    #   A name for the snapshot copy. ElastiCache does not permit
    #   overwriting a snapshot, therefore this name must be unique within
    #   its context - ElastiCache or an Amazon S3 bucket if exporting.
    #   @return [String]
    #
    # @!attribute [rw] target_bucket
    #   The Amazon S3 bucket to which the snapshot is exported. This
    #   parameter is used only when exporting a snapshot for external
    #   access.
    #
    #   When using this parameter to export a snapshot, be sure Amazon
    #   ElastiCache has the needed permissions to this S3 bucket. For more
    #   information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
    #   Bucket][1] in the *Amazon ElastiCache User Guide*.
    #
    #   For more information, see [Exporting a Snapshot][2] in the *Amazon
    #   ElastiCache User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access
    #   [2]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the target snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CopySnapshotMessage AWS API Documentation
    #
    class CopySnapshotMessage < Struct.new(
      :source_snapshot_name,
      :target_snapshot_name,
      :target_bucket,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Represents a copy of an entire Valkey or Redis OSS cluster as of the
    #   time when the snapshot was taken.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CopySnapshotResult AWS API Documentation
    #
    class CopySnapshotResult < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a CreateCacheCluster operation.
    #
    # @!attribute [rw] cache_cluster_id
    #   The node group (shard) identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   **Constraints:**
    #
    #   * A name must contain from 1 to 50 alphanumeric characters or
    #     hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * A name cannot end with a hyphen or contain two consecutive
    #     hyphens.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_id
    #   The ID of the replication group to which this cluster should belong.
    #   If this parameter is specified, the cluster is added to the
    #   specified replication group as a read replica; otherwise, the
    #   cluster is a standalone primary that is not part of any replication
    #   group.
    #
    #   If the specified replication group is Multi-AZ enabled and the
    #   Availability Zone is not specified, the cluster is created in
    #   Availability Zones that provide the best spread of read replicas
    #   across Availability Zones.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   Specifies whether the nodes in this Memcached cluster are created in
    #   a single Availability Zone or created across multiple Availability
    #   Zones in the cluster's region.
    #
    #   This parameter is only supported for Memcached clusters.
    #
    #   If the `AZMode` and `PreferredAvailabilityZones` are not specified,
    #   ElastiCache assumes `single-az` mode.
    #   @return [String]
    #
    # @!attribute [rw] preferred_availability_zone
    #   The EC2 Availability Zone in which the cluster is created.
    #
    #   All nodes belonging to this cluster are placed in the preferred
    #   Availability Zone. If you want to create your nodes across multiple
    #   Availability Zones, use `PreferredAvailabilityZones`.
    #
    #   Default: System chosen Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] preferred_availability_zones
    #   A list of the Availability Zones in which cache nodes are created.
    #   The order of the zones in the list is not important.
    #
    #   This option is only supported on Memcached.
    #
    #   <note markdown="1"> If you are creating your cluster in an Amazon VPC (recommended) you
    #   can only locate nodes in Availability Zones that are associated with
    #   the subnets in the selected subnet group.
    #
    #    The number of Availability Zones listed must equal the value of
    #   `NumCacheNodes`.
    #
    #    </note>
    #
    #   If you want all the nodes in the same Availability Zone, use
    #   `PreferredAvailabilityZone` instead, or repeat the Availability Zone
    #   multiple times in the list.
    #
    #   Default: System chosen Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] num_cache_nodes
    #   The initial number of cache nodes that the cluster has.
    #
    #   For clusters running Valkey or Redis OSS, this value must be 1. For
    #   clusters running Memcached, this value must be between 1 and 40.
    #
    #   If you need more than 40 nodes for your Memcached cluster, please
    #   fill out the ElastiCache Limit Increase Request form at
    #   [http://aws.amazon.com/contact-us/elasticache-node-limit-request/][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/contact-us/elasticache-node-limit-request/
    #   @return [Integer]
    #
    # @!attribute [rw] cache_node_type
    #   The compute and memory capacity of the nodes in the node group
    #   (shard).
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **M7g node types**: `cache.m7g.large`, `cache.m7g.xlarge`,
    #       `cache.m7g.2xlarge`, `cache.m7g.4xlarge`, `cache.m7g.8xlarge`,
    #       `cache.m7g.12xlarge`, `cache.m7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **M6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.m6g.large`, `cache.m6g.xlarge`, `cache.m6g.2xlarge`,
    #       `cache.m6g.4xlarge`, `cache.m6g.8xlarge`, `cache.m6g.12xlarge`,
    #       `cache.m6g.16xlarge`
    #
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T4g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and Memcached engine version 1.5.16 onward):
    #       `cache.t4g.micro`, `cache.t4g.small`, `cache.t4g.medium`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R7g node types**: `cache.r7g.large`, `cache.r7g.xlarge`,
    #       `cache.r7g.2xlarge`, `cache.r7g.4xlarge`, `cache.r7g.8xlarge`,
    #       `cache.r7g.12xlarge`, `cache.r7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **R6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.r6g.large`, `cache.r6g.xlarge`, `cache.r6g.2xlarge`,
    #       `cache.r6g.4xlarge`, `cache.r6g.8xlarge`, `cache.r6g.12xlarge`,
    #       `cache.r6g.16xlarge`
    #
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Valkey or Redis OSS append-only files (AOF) are not supported for
    #     T1 or T2 instances.
    #
    #   * Valkey or Redis OSS Multi-AZ with automatic failover is not
    #     supported on T1 instances.
    #
    #   * The configuration variables `appendonly` and `appendfsync` are not
    #     supported on Valkey, or on Redis OSS version 2.8.22 and later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the cache engine to be used for this cluster.
    #
    #   Valid values for this parameter are: `memcached` \| `redis`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the cache engine to be used for this cluster.
    #   To view the supported cache engine versions, use the
    #   DescribeCacheEngineVersions operation.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
    #   to an earlier engine version. If you want to use an earlier engine
    #   version, you must delete the existing cluster or replication group
    #   and create it anew with the earlier engine version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the parameter group to associate with this cluster. If
    #   this argument is omitted, the default parameter group for the
    #   specified engine is used. You cannot use any parameter group which
    #   has `cluster-enabled='yes'` when creating a cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the subnet group to be used for the cluster.
    #
    #   Use this parameter only when you are creating a cluster in an Amazon
    #   Virtual Private Cloud (Amazon VPC).
    #
    #   If you're going to launch your cluster in an Amazon VPC, you need
    #   to create a subnet group before you start creating a cluster. For
    #   more information, see [Subnets and Subnet Groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.html
    #   @return [String]
    #
    # @!attribute [rw] cache_security_group_names
    #   A list of security group names to associate with this cluster.
    #
    #   Use this parameter only when you are creating a cluster outside of
    #   an Amazon Virtual Private Cloud (Amazon VPC).
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   One or more VPC security groups associated with the cluster.
    #
    #   Use this parameter only when you are creating a cluster in an Amazon
    #   Virtual Private Cloud (Amazon VPC).
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] snapshot_arns
    #   A single-element string list containing an Amazon Resource Name
    #   (ARN) that uniquely identifies a Valkey or Redis OSS RDB snapshot
    #   file stored in Amazon S3. The snapshot file is used to populate the
    #   node group (shard). The Amazon S3 object name in the ARN cannot
    #   contain any commas.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #
    #   Example of an Amazon S3 ARN: `arn:aws:s3:::my_bucket/snapshot1.rdb`
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_name
    #   The name of a Valkey or Redis OSS snapshot from which to restore
    #   data into the new node group (shard). The snapshot status changes to
    #   `restoring` while the new node group (shard) is being created.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which each of the cache nodes accepts
    #   connections.
    #   @return [Integer]
    #
    # @!attribute [rw] notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) topic to which notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be the same as the cluster owner.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #    If you are running Valkey 7.2 and above or Redis OSS engine version
    #   6.0 and above, set this parameter to yes to opt-in to the next auto
    #   minor version upgrade campaign. This parameter is disabled for
    #   previous versions. 
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic snapshots
    #   before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot taken today is retained
    #   for 5 days before being deleted.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #
    #   Default: 0 (i.e., automatic backups are disabled for this cache
    #   cluster).
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of your node group (shard).
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   **Reserved parameter.** The password used to access a password
    #   protected server.
    #
    #   Password constraints:
    #
    #   * Must be only printable ASCII characters.
    #
    #   * Must be at least 16 characters and no more than 128 characters in
    #     length.
    #
    #   * The only permitted printable special characters are !, &amp;, #,
    #     $, ^, &lt;, &gt;, and -. Other printable special characters cannot
    #     be used in the AUTH token.
    #
    #   For more information, see [AUTH password][1] at
    #   http://redis.io/commands/AUTH.
    #
    #
    #
    #   [1]: http://redis.io/commands/AUTH
    #   @return [String]
    #
    # @!attribute [rw] outpost_mode
    #   Specifies whether the nodes in the cluster are created in a single
    #   outpost or across multiple outposts.
    #   @return [String]
    #
    # @!attribute [rw] preferred_outpost_arn
    #   The outpost ARN in which the cache cluster is created.
    #   @return [String]
    #
    # @!attribute [rw] preferred_outpost_arns
    #   The outpost ARNs in which the cache cluster is created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_delivery_configurations
    #   Specifies the destination, format and type of the logs.
    #   @return [Array<Types::LogDeliveryConfigurationRequest>]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_type
    #   Must be either `ipv4` \| `ipv6` \| `dual_stack`. IPv6 is supported
    #   for workloads using Valkey 7.2 and above, Redis OSS engine version
    #   6.2 to 7.1 and Memcached engine version 1.6.6 and above on all
    #   instances built on the [Nitro system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [String]
    #
    # @!attribute [rw] ip_discovery
    #   The network type you choose when modifying a cluster, either `ipv4`
    #   \| `ipv6`. IPv6 is supported for workloads using Valkey 7.2 and
    #   above, Redis OSS engine version 6.2 to 7.1 and Memcached engine
    #   version 1.6.6 and above on all instances built on the [Nitro
    #   system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheClusterMessage AWS API Documentation
    #
    class CreateCacheClusterMessage < Struct.new(
      :cache_cluster_id,
      :replication_group_id,
      :az_mode,
      :preferred_availability_zone,
      :preferred_availability_zones,
      :num_cache_nodes,
      :cache_node_type,
      :engine,
      :engine_version,
      :cache_parameter_group_name,
      :cache_subnet_group_name,
      :cache_security_group_names,
      :security_group_ids,
      :tags,
      :snapshot_arns,
      :snapshot_name,
      :preferred_maintenance_window,
      :port,
      :notification_topic_arn,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :auth_token,
      :outpost_mode,
      :preferred_outpost_arn,
      :preferred_outpost_arns,
      :log_delivery_configurations,
      :transit_encryption_enabled,
      :network_type,
      :ip_discovery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_cluster
    #   Contains all of the attributes of a specific cluster.
    #   @return [Types::CacheCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheClusterResult AWS API Documentation
    #
    class CreateCacheClusterResult < Struct.new(
      :cache_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateCacheParameterGroup` operation.
    #
    # @!attribute [rw] cache_parameter_group_name
    #   A user-specified name for the cache parameter group.
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_family
    #   The name of the cache parameter group family that the cache
    #   parameter group can be used with.
    #
    #   Valid values are: `valkey8` \| `valkey7` \| `memcached1.4` \|
    #   `memcached1.5` \| `memcached1.6` \| `redis2.6` \| `redis2.8` \|
    #   `redis3.2` \| `redis4.0` \| `redis5.0` \| `redis6.x` \| `redis7`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-specified description for the cache parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheParameterGroupMessage AWS API Documentation
    #
    class CreateCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name,
      :cache_parameter_group_family,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_parameter_group
    #   Represents the output of a `CreateCacheParameterGroup` operation.
    #   @return [Types::CacheParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheParameterGroupResult AWS API Documentation
    #
    class CreateCacheParameterGroupResult < Struct.new(
      :cache_parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateCacheSecurityGroup` operation.
    #
    # @!attribute [rw] cache_security_group_name
    #   A name for the cache security group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters.
    #   Cannot be the word "Default".
    #
    #   Example: `mysecuritygroup`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the cache security group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSecurityGroupMessage AWS API Documentation
    #
    class CreateCacheSecurityGroupMessage < Struct.new(
      :cache_security_group_name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_security_group
    #   Represents the output of one of the following operations:
    #
    #   * `AuthorizeCacheSecurityGroupIngress`
    #
    #   * `CreateCacheSecurityGroup`
    #
    #   * `RevokeCacheSecurityGroupIngress`
    #   @return [Types::CacheSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSecurityGroupResult AWS API Documentation
    #
    class CreateCacheSecurityGroupResult < Struct.new(
      :cache_security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateCacheSubnetGroup` operation.
    #
    # @!attribute [rw] cache_subnet_group_name
    #   A name for the cache subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters
    #   or hyphens.
    #
    #   Example: `mysubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_description
    #   A description for the cache subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs for the cache subnet group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSubnetGroupMessage AWS API Documentation
    #
    class CreateCacheSubnetGroupMessage < Struct.new(
      :cache_subnet_group_name,
      :cache_subnet_group_description,
      :subnet_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_subnet_group
    #   Represents the output of one of the following operations:
    #
    #   * `CreateCacheSubnetGroup`
    #
    #   * `ModifyCacheSubnetGroup`
    #   @return [Types::CacheSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSubnetGroupResult AWS API Documentation
    #
    class CreateCacheSubnetGroupResult < Struct.new(
      :cache_subnet_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group_id_suffix
    #   The suffix name of a Global datastore. Amazon ElastiCache
    #   automatically applies a prefix to the Global datastore ID when it is
    #   created. Each Amazon Region has its own prefix. For instance, a
    #   Global datastore ID created in the US-West-1 region will begin with
    #   "dsdfu" along with the suffix name you provide. The suffix,
    #   combined with the auto-generated prefix, guarantees uniqueness of
    #   the Global datastore name across multiple regions.
    #
    #   For a full list of Amazon Regions and their respective Global
    #   datastore iD prefixes, see [Using the Amazon CLI with Global
    #   datastores ][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Redis-Global-Datastores-CLI.html
    #   @return [String]
    #
    # @!attribute [rw] global_replication_group_description
    #   Provides details of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] primary_replication_group_id
    #   The name of the primary cluster that accepts writes and will
    #   replicate updates to the secondary cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateGlobalReplicationGroupMessage AWS API Documentation
    #
    class CreateGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id_suffix,
      :global_replication_group_description,
      :primary_replication_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different Amazon region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateGlobalReplicationGroupResult AWS API Documentation
    #
    class CreateGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateReplicationGroup` operation.
    #
    # @!attribute [rw] replication_group_id
    #   The replication group identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * A name must contain from 1 to 40 alphanumeric characters or
    #     hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * A name cannot end with a hyphen or contain two consecutive
    #     hyphens.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_description
    #   A user-created description for the replication group.
    #   @return [String]
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] primary_cluster_id
    #   The identifier of the cluster that serves as the primary for this
    #   replication group. This cluster must already exist and have a status
    #   of `available`.
    #
    #   This parameter is not required if `NumCacheClusters`,
    #   `NumNodeGroups`, or `ReplicasPerNodeGroup` is specified.
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover_enabled
    #   Specifies whether a read-only replica is automatically promoted to
    #   read/write primary if the existing primary fails.
    #
    #   `AutomaticFailoverEnabled` must be enabled for Valkey or Redis OSS
    #   (cluster mode enabled) replication groups.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @!attribute [rw] multi_az_enabled
    #   A flag indicating if you have Multi-AZ enabled to enhance fault
    #   tolerance. For more information, see [Minimizing Downtime:
    #   Multi-AZ][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/AutoFailover.html
    #   @return [Boolean]
    #
    # @!attribute [rw] num_cache_clusters
    #   The number of clusters this replication group initially has.
    #
    #   This parameter is not used if there is more than one node group
    #   (shard). You should use `ReplicasPerNodeGroup` instead.
    #
    #   If `AutomaticFailoverEnabled` is `true`, the value of this parameter
    #   must be at least 2. If `AutomaticFailoverEnabled` is `false` you can
    #   omit this parameter (it will default to 1), or you can explicitly
    #   set it to a value between 2 and 6.
    #
    #   The maximum permitted value for `NumCacheClusters` is 6 (1 primary
    #   plus 5 replicas).
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_cache_cluster_a_zs
    #   A list of EC2 Availability Zones in which the replication group's
    #   clusters are created. The order of the Availability Zones in the
    #   list is the order in which clusters are allocated. The primary
    #   cluster is created in the first AZ in the list.
    #
    #   This parameter is not used if there is more than one node group
    #   (shard). You should use `NodeGroupConfiguration` instead.
    #
    #   <note markdown="1"> If you are creating your replication group in an Amazon VPC
    #   (recommended), you can only locate clusters in Availability Zones
    #   associated with the subnets in the selected subnet group.
    #
    #    The number of Availability Zones listed must equal the value of
    #   `NumCacheClusters`.
    #
    #    </note>
    #
    #   Default: system chosen Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] num_node_groups
    #   An optional parameter that specifies the number of node groups
    #   (shards) for this Valkey or Redis OSS (cluster mode enabled)
    #   replication group. For Valkey or Redis OSS (cluster mode disabled)
    #   either omit this parameter or set it to 1.
    #
    #   Default: 1
    #   @return [Integer]
    #
    # @!attribute [rw] replicas_per_node_group
    #   An optional parameter that specifies the number of replica nodes in
    #   each node group (shard). Valid values are 0 to 5.
    #   @return [Integer]
    #
    # @!attribute [rw] node_group_configuration
    #   A list of node group (shard) configuration options. Each node group
    #   (shard) configuration has the following members:
    #   `PrimaryAvailabilityZone`, `ReplicaAvailabilityZones`,
    #   `ReplicaCount`, and `Slots`.
    #
    #   If you're creating a Valkey or Redis OSS (cluster mode disabled) or
    #   a Valkey or Redis OSS (cluster mode enabled) replication group, you
    #   can use this parameter to individually configure each node group
    #   (shard), or you can omit this parameter. However, it is required
    #   when seeding a Valkey or Redis OSS (cluster mode enabled) cluster
    #   from a S3 rdb file. You must configure each node group (shard) using
    #   this parameter because you must specify the slots for each node
    #   group.
    #   @return [Array<Types::NodeGroupConfiguration>]
    #
    # @!attribute [rw] cache_node_type
    #   The compute and memory capacity of the nodes in the node group
    #   (shard).
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **M7g node types**: `cache.m7g.large`, `cache.m7g.xlarge`,
    #       `cache.m7g.2xlarge`, `cache.m7g.4xlarge`, `cache.m7g.8xlarge`,
    #       `cache.m7g.12xlarge`, `cache.m7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **M6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.m6g.large`, `cache.m6g.xlarge`, `cache.m6g.2xlarge`,
    #       `cache.m6g.4xlarge`, `cache.m6g.8xlarge`, `cache.m6g.12xlarge`,
    #       `cache.m6g.16xlarge`
    #
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T4g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and Memcached engine version 1.5.16 onward):
    #       `cache.t4g.micro`, `cache.t4g.small`, `cache.t4g.medium`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R7g node types**: `cache.r7g.large`, `cache.r7g.xlarge`,
    #       `cache.r7g.2xlarge`, `cache.r7g.4xlarge`, `cache.r7g.8xlarge`,
    #       `cache.r7g.12xlarge`, `cache.r7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **R6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.r6g.large`, `cache.r6g.xlarge`, `cache.r6g.2xlarge`,
    #       `cache.r6g.4xlarge`, `cache.r6g.8xlarge`, `cache.r6g.12xlarge`,
    #       `cache.r6g.16xlarge`
    #
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Valkey or Redis OSS append-only files (AOF) are not supported for
    #     T1 or T2 instances.
    #
    #   * Valkey or Redis OSS Multi-AZ with automatic failover is not
    #     supported on T1 instances.
    #
    #   * The configuration variables `appendonly` and `appendfsync` are not
    #     supported on Valkey, or on Redis OSS version 2.8.22 and later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the cache engine to be used for the clusters in this
    #   replication group. The value must be set to `valkey` or `redis`.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the cache engine to be used for the clusters
    #   in this replication group. To view the supported cache engine
    #   versions, use the `DescribeCacheEngineVersions` operation.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]) in the *ElastiCache User
    #   Guide*, but you cannot downgrade to an earlier engine version. If
    #   you want to use an earlier engine version, you must delete the
    #   existing cluster or replication group and create it anew with the
    #   earlier engine version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the parameter group to associate with this replication
    #   group. If this argument is omitted, the default cache parameter
    #   group for the specified engine is used.
    #
    #   If you are running Valkey or Redis OSS version 3.2.4 or later, only
    #   one node group (shard), and want to use a default parameter group,
    #   we recommend that you specify the parameter group by name.
    #
    #   * To create a Valkey or Redis OSS (cluster mode disabled)
    #     replication group, use `CacheParameterGroupName=default.redis3.2`.
    #
    #   * To create a Valkey or Redis OSS (cluster mode enabled) replication
    #     group, use `CacheParameterGroupName=default.redis3.2.cluster.on`.
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group to be used for the replication
    #   group.
    #
    #   If you're going to launch your cluster in an Amazon VPC, you need
    #   to create a subnet group before you start creating a cluster. For
    #   more information, see [Subnets and Subnet Groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.html
    #   @return [String]
    #
    # @!attribute [rw] cache_security_group_names
    #   A list of cache security group names to associate with this
    #   replication group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   One or more Amazon VPC security groups associated with this
    #   replication group.
    #
    #   Use this parameter only when you are creating a replication group in
    #   an Amazon Virtual Private Cloud (Amazon VPC).
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. Tags are
    #   comma-separated key,value pairs (e.g. Key=`myKey`,
    #   Value=`myKeyValue`. You can include multiple tags as shown
    #   following: Key=`myKey`, Value=`myKeyValue` Key=`mySecondKey`,
    #   Value=`mySecondKeyValue`. Tags on replication groups will be
    #   replicated to all nodes.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] snapshot_arns
    #   A list of Amazon Resource Names (ARN) that uniquely identify the
    #   Valkey or Redis OSS RDB snapshot files stored in Amazon S3. The
    #   snapshot files are used to populate the new replication group. The
    #   Amazon S3 object name in the ARN cannot contain any commas. The new
    #   replication group will have the number of node groups (console:
    #   shards) specified by the parameter *NumNodeGroups* or the number of
    #   node groups configured by *NodeGroupConfiguration* regardless of the
    #   number of ARNs specified here.
    #
    #   Example of an Amazon S3 ARN: `arn:aws:s3:::my_bucket/snapshot1.rdb`
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_name
    #   The name of a snapshot from which to restore data into the new
    #   replication group. The snapshot status changes to `restoring` while
    #   the new replication group is being created.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which each member of the replication group
    #   accepts connections.
    #   @return [Integer]
    #
    # @!attribute [rw] notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) topic to which notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be the same as the cluster owner.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #    If you are running Valkey 7.2 and above or Redis OSS engine version
    #   6.0 and above, set this parameter to yes to opt-in to the next auto
    #   minor version upgrade campaign. This parameter is disabled for
    #   previous versions. 
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic snapshots
    #   before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    #   Default: 0 (i.e., automatic backups are disabled for this cluster).
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of your node group (shard).
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   **Reserved parameter.** The password used to access a password
    #   protected server.
    #
    #   `AuthToken` can be specified only on replication groups where
    #   `TransitEncryptionEnabled` is `true`.
    #
    #   For HIPAA compliance, you must specify `TransitEncryptionEnabled` as
    #   `true`, an `AuthToken`, and a `CacheSubnetGroup`.
    #
    #   Password constraints:
    #
    #   * Must be only printable ASCII characters.
    #
    #   * Must be at least 16 characters and no more than 128 characters in
    #     length.
    #
    #   * The only permitted printable special characters are !, &amp;, #,
    #     $, ^, &lt;, &gt;, and -. Other printable special characters cannot
    #     be used in the AUTH token.
    #
    #   For more information, see [AUTH password][1] at
    #   http://redis.io/commands/AUTH.
    #
    #
    #
    #   [1]: http://redis.io/commands/AUTH
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to `true`.
    #
    #   This parameter is valid only if the `Engine` parameter is `redis`,
    #   the `EngineVersion` parameter is `3.2.6`, `4.x` or later, and the
    #   cluster is being created in an Amazon VPC.
    #
    #   If you enable in-transit encryption, you must also specify a value
    #   for `CacheSubnetGroup`.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using Redis OSS version `3.2.6`, `4.x` or later.
    #
    #   Default: `false`
    #
    #   For HIPAA compliance, you must specify `TransitEncryptionEnabled` as
    #   `true`, an `AuthToken`, and a `CacheSubnetGroup`.
    #   @return [Boolean]
    #
    # @!attribute [rw] at_rest_encryption_enabled
    #   A flag that enables encryption at rest when set to `true`.
    #
    #   You cannot modify the value of `AtRestEncryptionEnabled` after the
    #   replication group is created. To enable encryption at rest on a
    #   replication group you must set `AtRestEncryptionEnabled` to `true`
    #   when you create the replication group.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using Valkey 7.2 and later, Redis OSS version `3.2.6`, or
    #   Redis OSS `4.x` and later.
    #
    #   Default: `true` when using Valkey, `false` when using Redis OSS
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the disk in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] user_group_ids
    #   The user group to associate with the replication group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_delivery_configurations
    #   Specifies the destination, format and type of the logs.
    #   @return [Array<Types::LogDeliveryConfigurationRequest>]
    #
    # @!attribute [rw] data_tiering_enabled
    #   Enables data tiering. Data tiering is only supported for replication
    #   groups using the r6gd node type. This parameter must be set to true
    #   when using r6gd nodes. For more information, see [Data tiering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/data-tiering.html
    #   @return [Boolean]
    #
    # @!attribute [rw] network_type
    #   Must be either `ipv4` \| `ipv6` \| `dual_stack`. IPv6 is supported
    #   for workloads using Valkey 7.2 and above, Redis OSS engine version
    #   6.2 to 7.1 and Memcached engine version 1.6.6 and above on all
    #   instances built on the [Nitro system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [String]
    #
    # @!attribute [rw] ip_discovery
    #   The network type you choose when creating a replication group,
    #   either `ipv4` \| `ipv6`. IPv6 is supported for workloads using
    #   Valkey 7.2 and above, Redis OSS engine version 6.2 to 7.1 or
    #   Memcached engine version 1.6.6 and above on all instances built on
    #   the [Nitro system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption_mode
    #   A setting that allows you to migrate your clients to use in-transit
    #   encryption, with no downtime.
    #
    #   When setting `TransitEncryptionEnabled` to `true`, you can set your
    #   `TransitEncryptionMode` to `preferred` in the same request, to allow
    #   both encrypted and unencrypted connections at the same time. Once
    #   you migrate all your Valkey or Redis OSS clients to use encrypted
    #   connections you can modify the value to `required` to allow
    #   encrypted connections only.
    #
    #   Setting `TransitEncryptionMode` to `required` is a two-step process
    #   that requires you to first set the `TransitEncryptionMode` to
    #   `preferred`, after that you can set `TransitEncryptionMode` to
    #   `required`.
    #
    #   This process will not trigger the replacement of the replication
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] cluster_mode
    #   Enabled or Disabled. To modify cluster mode from Disabled to
    #   Enabled, you must first set the cluster mode to Compatible.
    #   Compatible mode allows your Valkey or Redis OSS clients to connect
    #   using both cluster mode enabled and cluster mode disabled. After you
    #   migrate all Valkey or Redis OSS clients to use cluster mode enabled,
    #   you can then complete cluster mode configuration and set the cluster
    #   mode to Enabled.
    #   @return [String]
    #
    # @!attribute [rw] serverless_cache_snapshot_name
    #   The name of the snapshot used to create a replication group.
    #   Available for Valkey, Redis OSS only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateReplicationGroupMessage AWS API Documentation
    #
    class CreateReplicationGroupMessage < Struct.new(
      :replication_group_id,
      :replication_group_description,
      :global_replication_group_id,
      :primary_cluster_id,
      :automatic_failover_enabled,
      :multi_az_enabled,
      :num_cache_clusters,
      :preferred_cache_cluster_a_zs,
      :num_node_groups,
      :replicas_per_node_group,
      :node_group_configuration,
      :cache_node_type,
      :engine,
      :engine_version,
      :cache_parameter_group_name,
      :cache_subnet_group_name,
      :cache_security_group_names,
      :security_group_ids,
      :tags,
      :snapshot_arns,
      :snapshot_name,
      :preferred_maintenance_window,
      :port,
      :notification_topic_arn,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :auth_token,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :kms_key_id,
      :user_group_ids,
      :log_delivery_configurations,
      :data_tiering_enabled,
      :network_type,
      :ip_discovery,
      :transit_encryption_mode,
      :cluster_mode,
      :serverless_cache_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Valkey or Redis OSS
    #   replication group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateReplicationGroupResult AWS API Documentation
    #
    class CreateReplicationGroupResult < Struct.new(
      :replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_name
    #   User-provided identifier for the serverless cache. This parameter is
    #   stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   User-provided description for the serverless cache. The default is
    #   NULL, i.e. if no description is provided then an empty string will
    #   be returned. The maximum length is 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the cache engine to be used for creating the serverless
    #   cache.
    #   @return [String]
    #
    # @!attribute [rw] major_engine_version
    #   The version of the cache engine that will be used to create the
    #   serverless cache.
    #   @return [String]
    #
    # @!attribute [rw] cache_usage_limits
    #   Sets the cache usage limits for storage and ElastiCache Processing
    #   Units for the cache.
    #   @return [Types::CacheUsageLimits]
    #
    # @!attribute [rw] kms_key_id
    #   ARN of the customer managed key for encrypting the data at rest. If
    #   no KMS key is provided, a default service key is used.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of the one or more VPC security groups to be associated with
    #   the serverless cache. The security group will authorize traffic
    #   access for the VPC end-point (private-link). If no other information
    #   is given this will be the VPC’s Default Security Group that is
    #   associated with the cluster VPC end-point.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_arns_to_restore
    #   The ARN(s) of the snapshot that the new serverless cache will be
    #   created from. Available for Valkey, Redis OSS and Serverless
    #   Memcached only.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The list of tags (key, value) pairs to be added to the serverless
    #   cache resource. Default is NULL.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] user_group_id
    #   The identifier of the UserGroup to be associated with the serverless
    #   cache. Available for Valkey and Redis OSS only. Default is NULL.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of the identifiers of the subnets where the VPC endpoint for
    #   the serverless cache will be deployed. All the subnetIds must belong
    #   to the same VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of snapshots that will be retained for the serverless
    #   cache that is being created. As new snapshots beyond this limit are
    #   added, the oldest snapshots will be deleted on a rolling basis.
    #   Available for Valkey, Redis OSS and Serverless Memcached only.
    #   @return [Integer]
    #
    # @!attribute [rw] daily_snapshot_time
    #   The daily time that snapshots will be created from the new
    #   serverless cache. By default this number is populated with 0, i.e.
    #   no snapshots will be created on an automatic daily basis. Available
    #   for Valkey, Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateServerlessCacheRequest AWS API Documentation
    #
    class CreateServerlessCacheRequest < Struct.new(
      :serverless_cache_name,
      :description,
      :engine,
      :major_engine_version,
      :cache_usage_limits,
      :kms_key_id,
      :security_group_ids,
      :snapshot_arns_to_restore,
      :tags,
      :user_group_id,
      :subnet_ids,
      :snapshot_retention_limit,
      :daily_snapshot_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache
    #   The response for the attempt to create the serverless cache.
    #   @return [Types::ServerlessCache]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateServerlessCacheResponse AWS API Documentation
    #
    class CreateServerlessCacheResponse < Struct.new(
      :serverless_cache)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_snapshot_name
    #   The name for the snapshot being created. Must be unique for the
    #   customer account. Available for Valkey, Redis OSS and Serverless
    #   Memcached only. Must be between 1 and 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] serverless_cache_name
    #   The name of an existing serverless cache. The snapshot is created
    #   from this cache. Available for Valkey, Redis OSS and Serverless
    #   Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the snapshot. Available for
    #   Valkey, Redis OSS and Serverless Memcached only. Default: NULL
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to the snapshot resource. A tag is a
    #   key-value pair. Available for Valkey, Redis OSS and Serverless
    #   Memcached only.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateServerlessCacheSnapshotRequest AWS API Documentation
    #
    class CreateServerlessCacheSnapshotRequest < Struct.new(
      :serverless_cache_snapshot_name,
      :serverless_cache_name,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_snapshot
    #   The state of a serverless cache snapshot at a specific point in
    #   time, to the millisecond. Available for Valkey, Redis OSS and
    #   Serverless Memcached only.
    #   @return [Types::ServerlessCacheSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateServerlessCacheSnapshotResponse AWS API Documentation
    #
    class CreateServerlessCacheSnapshotResponse < Struct.new(
      :serverless_cache_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateSnapshot` operation.
    #
    # @!attribute [rw] replication_group_id
    #   The identifier of an existing replication group. The snapshot is
    #   created from this replication group.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   The identifier of an existing cluster. The snapshot is created from
    #   this cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   A name for the snapshot being created.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateSnapshotMessage AWS API Documentation
    #
    class CreateSnapshotMessage < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :snapshot_name,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Represents a copy of an entire Valkey or Redis OSS cluster as of the
    #   time when the snapshot was taken.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateSnapshotResult AWS API Documentation
    #
    class CreateSnapshotResult < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_group_id
    #   The ID of the user group.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   Sets the engine listed in a user group. The options are valkey or
    #   redis.
    #   @return [String]
    #
    # @!attribute [rw] user_ids
    #   The list of user IDs that belong to the user group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted. Available for Valkey and Redis OSS only.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateUserGroupMessage AWS API Documentation
    #
    class CreateUserGroupMessage < Struct.new(
      :user_group_id,
      :engine,
      :user_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The username of the user.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The options are valkey or redis.
    #   @return [String]
    #
    # @!attribute [rw] passwords
    #   Passwords used for this user. You can create up to two passwords for
    #   each user.
    #   @return [Array<String>]
    #
    # @!attribute [rw] access_string
    #   Access permissions string used for this user.
    #   @return [String]
    #
    # @!attribute [rw] no_password_required
    #   Indicates a password is not required for this user.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] authentication_mode
    #   Specifies how to authenticate the user.
    #   @return [Types::AuthenticationMode]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateUserMessage AWS API Documentation
    #
    class CreateUserMessage < Struct.new(
      :user_id,
      :user_name,
      :engine,
      :passwords,
      :access_string,
      :no_password_required,
      :tags,
      :authentication_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint from which data should be migrated.
    #
    # @!attribute [rw] address
    #   The address of the node endpoint
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port of the node endpoint
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CustomerNodeEndpoint AWS API Documentation
    #
    class CustomerNodeEndpoint < Struct.new(
      :address,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data storage limit.
    #
    # @!attribute [rw] maximum
    #   The upper limit for data storage the cache is set to use.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum
    #   The lower limit for data storage the cache is set to use.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit that the storage is measured in, in GB.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DataStorage AWS API Documentation
    #
    class DataStorage < Struct.new(
      :maximum,
      :minimum,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] node_group_count
    #   The number of node groups (shards) that results from the
    #   modification of the shard configuration
    #   @return [Integer]
    #
    # @!attribute [rw] global_node_groups_to_remove
    #   If the value of NodeGroupCount is less than the current number of
    #   node groups (shards), then either NodeGroupsToRemove or
    #   NodeGroupsToRetain is required. GlobalNodeGroupsToRemove is a list
    #   of NodeGroupIds to remove from the cluster. ElastiCache will attempt
    #   to remove all node groups listed by GlobalNodeGroupsToRemove from
    #   the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] global_node_groups_to_retain
    #   If the value of NodeGroupCount is less than the current number of
    #   node groups (shards), then either NodeGroupsToRemove or
    #   NodeGroupsToRetain is required. GlobalNodeGroupsToRetain is a list
    #   of NodeGroupIds to retain from the cluster. ElastiCache will attempt
    #   to retain all node groups listed by GlobalNodeGroupsToRetain from
    #   the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] apply_immediately
    #   Indicates that the shard reconfiguration process begins immediately.
    #   At present, the only permitted value for this parameter is true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DecreaseNodeGroupsInGlobalReplicationGroupMessage AWS API Documentation
    #
    class DecreaseNodeGroupsInGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :node_group_count,
      :global_node_groups_to_remove,
      :global_node_groups_to_retain,
      :apply_immediately)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different Amazon region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DecreaseNodeGroupsInGlobalReplicationGroupResult AWS API Documentation
    #
    class DecreaseNodeGroupsInGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group_id
    #   The id of the replication group from which you want to remove
    #   replica nodes.
    #   @return [String]
    #
    # @!attribute [rw] new_replica_count
    #   The number of read replica nodes you want at the completion of this
    #   operation. For Valkey or Redis OSS (cluster mode disabled)
    #   replication groups, this is the number of replica nodes in the
    #   replication group. For Valkey or Redis OSS (cluster mode enabled)
    #   replication groups, this is the number of replica nodes in each of
    #   the replication group's node groups.
    #
    #   The minimum number of replicas in a shard or replication group is:
    #
    #   * Valkey or Redis OSS (cluster mode disabled)
    #
    #     * If Multi-AZ is enabled: 1
    #
    #     * If Multi-AZ is not enabled: 0
    #   * Valkey or Redis OSS (cluster mode enabled): 0 (though you will not
    #     be able to failover to a replica if your primary node fails)
    #   @return [Integer]
    #
    # @!attribute [rw] replica_configuration
    #   A list of `ConfigureShard` objects that can be used to configure
    #   each shard in a Valkey or Redis OSS replication group. The
    #   `ConfigureShard` has three members: `NewReplicaCount`,
    #   `NodeGroupId`, and `PreferredAvailabilityZones`.
    #   @return [Array<Types::ConfigureShard>]
    #
    # @!attribute [rw] replicas_to_remove
    #   A list of the node ids to remove from the replication group or node
    #   group (shard).
    #   @return [Array<String>]
    #
    # @!attribute [rw] apply_immediately
    #   If `True`, the number of replica nodes is decreased immediately.
    #   `ApplyImmediately=False` is not currently supported.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DecreaseReplicaCountMessage AWS API Documentation
    #
    class DecreaseReplicaCountMessage < Struct.new(
      :replication_group_id,
      :new_replica_count,
      :replica_configuration,
      :replicas_to_remove,
      :apply_immediately)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Valkey or Redis OSS
    #   replication group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DecreaseReplicaCountResult AWS API Documentation
    #
    class DecreaseReplicaCountResult < Struct.new(
      :replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default user assigned to the user group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DefaultUserAssociatedToUserGroupFault AWS API Documentation
    #
    class DefaultUserAssociatedToUserGroupFault < Aws::EmptyStructure; end

    # You must add default user to a user group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DefaultUserRequired AWS API Documentation
    #
    class DefaultUserRequired < Aws::EmptyStructure; end

    # Represents the input of a `DeleteCacheCluster` operation.
    #
    # @!attribute [rw] cache_cluster_id
    #   The cluster identifier for the cluster to be deleted. This parameter
    #   is not case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] final_snapshot_identifier
    #   The user-supplied name of a final cluster snapshot. This is the
    #   unique name that identifies the snapshot. ElastiCache creates the
    #   snapshot, and then deletes the cluster immediately afterward.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheClusterMessage AWS API Documentation
    #
    class DeleteCacheClusterMessage < Struct.new(
      :cache_cluster_id,
      :final_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_cluster
    #   Contains all of the attributes of a specific cluster.
    #   @return [Types::CacheCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheClusterResult AWS API Documentation
    #
    class DeleteCacheClusterResult < Struct.new(
      :cache_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteCacheParameterGroup` operation.
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to delete.
    #
    #   <note markdown="1"> The specified cache security group must not be associated with any
    #   clusters.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheParameterGroupMessage AWS API Documentation
    #
    class DeleteCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteCacheSecurityGroup` operation.
    #
    # @!attribute [rw] cache_security_group_name
    #   The name of the cache security group to delete.
    #
    #   <note markdown="1"> You cannot delete the default security group.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheSecurityGroupMessage AWS API Documentation
    #
    class DeleteCacheSecurityGroupMessage < Struct.new(
      :cache_security_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteCacheSubnetGroup` operation.
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group to delete.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters
    #   or hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheSubnetGroupMessage AWS API Documentation
    #
    class DeleteCacheSubnetGroupMessage < Struct.new(
      :cache_subnet_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] retain_primary_replication_group
    #   The primary replication group is retained as a standalone
    #   replication group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteGlobalReplicationGroupMessage AWS API Documentation
    #
    class DeleteGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :retain_primary_replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different Amazon region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteGlobalReplicationGroupResult AWS API Documentation
    #
    class DeleteGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteReplicationGroup` operation.
    #
    # @!attribute [rw] replication_group_id
    #   The identifier for the cluster to be deleted. This parameter is not
    #   case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] retain_primary_cluster
    #   If set to `true`, all of the read replicas are deleted, but the
    #   primary node is retained.
    #   @return [Boolean]
    #
    # @!attribute [rw] final_snapshot_identifier
    #   The name of a final node group (shard) snapshot. ElastiCache creates
    #   the snapshot from the primary node in the cluster, rather than one
    #   of the replicas; this is to ensure that it captures the freshest
    #   data. After the final snapshot is taken, the replication group is
    #   immediately deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteReplicationGroupMessage AWS API Documentation
    #
    class DeleteReplicationGroupMessage < Struct.new(
      :replication_group_id,
      :retain_primary_cluster,
      :final_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Valkey or Redis OSS
    #   replication group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteReplicationGroupResult AWS API Documentation
    #
    class DeleteReplicationGroupResult < Struct.new(
      :replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_name
    #   The identifier of the serverless cache to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] final_snapshot_name
    #   Name of the final snapshot to be taken before the serverless cache
    #   is deleted. Available for Valkey, Redis OSS and Serverless Memcached
    #   only. Default: NULL, i.e. a final snapshot is not taken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteServerlessCacheRequest AWS API Documentation
    #
    class DeleteServerlessCacheRequest < Struct.new(
      :serverless_cache_name,
      :final_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache
    #   Provides the details of the specified serverless cache that is about
    #   to be deleted.
    #   @return [Types::ServerlessCache]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteServerlessCacheResponse AWS API Documentation
    #
    class DeleteServerlessCacheResponse < Struct.new(
      :serverless_cache)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_snapshot_name
    #   Idenfitier of the snapshot to be deleted. Available for Valkey,
    #   Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteServerlessCacheSnapshotRequest AWS API Documentation
    #
    class DeleteServerlessCacheSnapshotRequest < Struct.new(
      :serverless_cache_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_snapshot
    #   The snapshot to be deleted. Available for Valkey, Redis OSS and
    #   Serverless Memcached only.
    #   @return [Types::ServerlessCacheSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteServerlessCacheSnapshotResponse AWS API Documentation
    #
    class DeleteServerlessCacheSnapshotResponse < Struct.new(
      :serverless_cache_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteSnapshot` operation.
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteSnapshotMessage AWS API Documentation
    #
    class DeleteSnapshotMessage < Struct.new(
      :snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Represents a copy of an entire Valkey or Redis OSS cluster as of the
    #   time when the snapshot was taken.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteSnapshotResult AWS API Documentation
    #
    class DeleteSnapshotResult < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_group_id
    #   The ID of the user group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteUserGroupMessage AWS API Documentation
    #
    class DeleteUserGroupMessage < Struct.new(
      :user_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The ID of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteUserMessage AWS API Documentation
    #
    class DeleteUserMessage < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheClusters` operation.
    #
    # @!attribute [rw] cache_cluster_id
    #   The user-supplied cluster identifier. If this parameter is
    #   specified, only information about that specific cluster is returned.
    #   This parameter isn't case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] show_cache_node_info
    #   An optional flag that can be included in the `DescribeCacheCluster`
    #   request to retrieve information about the individual cache nodes.
    #   @return [Boolean]
    #
    # @!attribute [rw] show_cache_clusters_not_in_replication_groups
    #   An optional flag that can be included in the `DescribeCacheCluster`
    #   request to show only nodes (API/CLI: clusters) that are not members
    #   of a replication group. In practice, this means Memcached and single
    #   node Valkey or Redis OSS clusters.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheClustersMessage AWS API Documentation
    #
    class DescribeCacheClustersMessage < Struct.new(
      :cache_cluster_id,
      :max_records,
      :marker,
      :show_cache_node_info,
      :show_cache_clusters_not_in_replication_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheEngineVersions` operation.
    #
    # @!attribute [rw] engine
    #   The cache engine to return. Valid values: `memcached` \| `redis`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The cache engine version to return.
    #
    #   Example: `1.4.14`
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_family
    #   The name of a specific cache parameter group family to return
    #   details for.
    #
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `memcached1.6`
    #   \| `redis2.6` \| `redis2.8` \| `redis3.2` \| `redis4.0` \|
    #   `redis5.0` \| `redis6.x` \| `redis6.2` \| `redis7` \| `valkey7`
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] default_only
    #   If `true`, specifies that only the default version of the specified
    #   engine or engine and major version combination is to be returned.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheEngineVersionsMessage AWS API Documentation
    #
    class DescribeCacheEngineVersionsMessage < Struct.new(
      :engine,
      :engine_version,
      :cache_parameter_group_family,
      :max_records,
      :marker,
      :default_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheParameterGroups` operation.
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of a specific cache parameter group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheParameterGroupsMessage AWS API Documentation
    #
    class DescribeCacheParameterGroupsMessage < Struct.new(
      :cache_parameter_group_name,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheParameters` operation.
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of a specific cache parameter group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The parameter types to return.
    #
    #   Valid values: `user` \| `system` \| `engine-default`
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheParametersMessage AWS API Documentation
    #
    class DescribeCacheParametersMessage < Struct.new(
      :cache_parameter_group_name,
      :source,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheSecurityGroups` operation.
    #
    # @!attribute [rw] cache_security_group_name
    #   The name of the cache security group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheSecurityGroupsMessage AWS API Documentation
    #
    class DescribeCacheSecurityGroupsMessage < Struct.new(
      :cache_security_group_name,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheSubnetGroups` operation.
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheSubnetGroupsMessage AWS API Documentation
    #
    class DescribeCacheSubnetGroupsMessage < Struct.new(
      :cache_subnet_group_name,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeEngineDefaultParameters` operation.
    #
    # @!attribute [rw] cache_parameter_group_family
    #   The name of the cache parameter group family.
    #
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `memcached1.6`
    #   \| `redis2.6` \| `redis2.8` \| `redis3.2` \| `redis4.0` \|
    #   `redis5.0` \| `redis6.x` \| `redis6.2` \| `redis7`
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeEngineDefaultParametersMessage AWS API Documentation
    #
    class DescribeEngineDefaultParametersMessage < Struct.new(
      :cache_parameter_group_family,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_defaults
    #   Represents the output of a `DescribeEngineDefaultParameters`
    #   operation.
    #   @return [Types::EngineDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeEngineDefaultParametersResult AWS API Documentation
    #
    class DescribeEngineDefaultParametersResult < Struct.new(
      :engine_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeEvents` operation.
    #
    # @!attribute [rw] source_identifier
    #   The identifier of the event source for which events are returned. If
    #   not specified, all sources are included in the response.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The event source to retrieve events for. If no value is specified,
    #   all events are returned.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format.
    #
    #   **Example:** 2017-03-30T07:03:49.555Z
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format.
    #
    #   **Example:** 2017-03-30T07:03:49.555Z
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The number of minutes worth of events to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeEventsMessage AWS API Documentation
    #
    class DescribeEventsMessage < Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] show_member_info
    #   Returns the list of members that comprise the Global datastore.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeGlobalReplicationGroupsMessage AWS API Documentation
    #
    class DescribeGlobalReplicationGroupsMessage < Struct.new(
      :global_replication_group_id,
      :max_records,
      :marker,
      :show_member_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxRecords. &gt;
    #   @return [String]
    #
    # @!attribute [rw] global_replication_groups
    #   Indicates the slot configuration and global identifier for each
    #   slice group.
    #   @return [Array<Types::GlobalReplicationGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeGlobalReplicationGroupsResult AWS API Documentation
    #
    class DescribeGlobalReplicationGroupsResult < Struct.new(
      :marker,
      :global_replication_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeReplicationGroups` operation.
    #
    # @!attribute [rw] replication_group_id
    #   The identifier for the replication group to be described. This
    #   parameter is not case sensitive.
    #
    #   If you do not specify this parameter, information about all
    #   replication groups is returned.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReplicationGroupsMessage AWS API Documentation
    #
    class DescribeReplicationGroupsMessage < Struct.new(
      :replication_group_id,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeReservedCacheNodes` operation.
    #
    # @!attribute [rw] reserved_cache_node_id
    #   The reserved cache node identifier filter value. Use this parameter
    #   to show only the reservation that matches the specified reservation
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] reserved_cache_nodes_offering_id
    #   The offering identifier filter value. Use this parameter to show
    #   only purchased reservations matching the specified offering
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type filter value. Use this parameter to show only
    #   those reservations matching the specified cache node type.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **M7g node types**: `cache.m7g.large`, `cache.m7g.xlarge`,
    #       `cache.m7g.2xlarge`, `cache.m7g.4xlarge`, `cache.m7g.8xlarge`,
    #       `cache.m7g.12xlarge`, `cache.m7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **M6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.m6g.large`, `cache.m6g.xlarge`, `cache.m6g.2xlarge`,
    #       `cache.m6g.4xlarge`, `cache.m6g.8xlarge`, `cache.m6g.12xlarge`,
    #       `cache.m6g.16xlarge`
    #
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T4g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and Memcached engine version 1.5.16 onward):
    #       `cache.t4g.micro`, `cache.t4g.small`, `cache.t4g.medium`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R7g node types**: `cache.r7g.large`, `cache.r7g.xlarge`,
    #       `cache.r7g.2xlarge`, `cache.r7g.4xlarge`, `cache.r7g.8xlarge`,
    #       `cache.r7g.12xlarge`, `cache.r7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **R6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.r6g.large`, `cache.r6g.xlarge`, `cache.r6g.2xlarge`,
    #       `cache.r6g.4xlarge`, `cache.r6g.8xlarge`, `cache.r6g.12xlarge`,
    #       `cache.r6g.16xlarge`
    #
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Valkey or Redis OSS append-only files (AOF) are not supported for
    #     T1 or T2 instances.
    #
    #   * Valkey or Redis OSS Multi-AZ with automatic failover is not
    #     supported on T1 instances.
    #
    #   * The configuration variables `appendonly` and `appendfsync` are not
    #     supported on Valkey, or on Redis OSS version 2.8.22 and later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration filter value, specified in years or seconds. Use this
    #   parameter to show only reservations for this duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The product description filter value. Use this parameter to show
    #   only those reservations matching the specified product description.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type filter value. Use this parameter to show only the
    #   available offerings matching the specified offering type.
    #
    #   Valid values: `"Light Utilization"|"Medium Utilization"|"Heavy
    #   Utilization"|"All Upfront"|"Partial Upfront"| "No Upfront"`
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReservedCacheNodesMessage AWS API Documentation
    #
    class DescribeReservedCacheNodesMessage < Struct.new(
      :reserved_cache_node_id,
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :duration,
      :product_description,
      :offering_type,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeReservedCacheNodesOfferings`
    # operation.
    #
    # @!attribute [rw] reserved_cache_nodes_offering_id
    #   The offering identifier filter value. Use this parameter to show
    #   only the available offering that matches the specified reservation
    #   identifier.
    #
    #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type filter value. Use this parameter to show only
    #   the available offerings matching the specified cache node type.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **M7g node types**: `cache.m7g.large`, `cache.m7g.xlarge`,
    #       `cache.m7g.2xlarge`, `cache.m7g.4xlarge`, `cache.m7g.8xlarge`,
    #       `cache.m7g.12xlarge`, `cache.m7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **M6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.m6g.large`, `cache.m6g.xlarge`, `cache.m6g.2xlarge`,
    #       `cache.m6g.4xlarge`, `cache.m6g.8xlarge`, `cache.m6g.12xlarge`,
    #       `cache.m6g.16xlarge`
    #
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T4g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and Memcached engine version 1.5.16 onward):
    #       `cache.t4g.micro`, `cache.t4g.small`, `cache.t4g.medium`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R7g node types**: `cache.r7g.large`, `cache.r7g.xlarge`,
    #       `cache.r7g.2xlarge`, `cache.r7g.4xlarge`, `cache.r7g.8xlarge`,
    #       `cache.r7g.12xlarge`, `cache.r7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **R6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.r6g.large`, `cache.r6g.xlarge`, `cache.r6g.2xlarge`,
    #       `cache.r6g.4xlarge`, `cache.r6g.8xlarge`, `cache.r6g.12xlarge`,
    #       `cache.r6g.16xlarge`
    #
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Valkey or Redis OSS append-only files (AOF) are not supported for
    #     T1 or T2 instances.
    #
    #   * Valkey or Redis OSS Multi-AZ with automatic failover is not
    #     supported on T1 instances.
    #
    #   * The configuration variables `appendonly` and `appendfsync` are not
    #     supported on Valkey, or on Redis OSS version 2.8.22 and later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Duration filter value, specified in years or seconds. Use this
    #   parameter to show only reservations for a given duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The product description filter value. Use this parameter to show
    #   only the available offerings matching the specified product
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type filter value. Use this parameter to show only the
    #   available offerings matching the specified offering type.
    #
    #   Valid Values: `"Light Utilization"|"Medium Utilization"|"Heavy
    #   Utilization" |"All Upfront"|"Partial Upfront"| "No Upfront"`
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReservedCacheNodesOfferingsMessage AWS API Documentation
    #
    class DescribeReservedCacheNodesOfferingsMessage < Struct.new(
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :duration,
      :product_description,
      :offering_type,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_name
    #   The identifier of serverless cache. If this parameter is specified,
    #   only snapshots associated with that specific serverless cache are
    #   described. Available for Valkey, Redis OSS and Serverless Memcached
    #   only.
    #   @return [String]
    #
    # @!attribute [rw] serverless_cache_snapshot_name
    #   The identifier of the serverless cache’s snapshot. If this parameter
    #   is specified, only this snapshot is described. Available for Valkey,
    #   Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of snapshot that is being described. Available for Valkey,
    #   Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An optional marker returned from a prior request to support
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by max-results. Available for Valkey, Redis
    #   OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified max-results value, a market is
    #   included in the response so that remaining results can be retrieved.
    #   Available for Valkey, Redis OSS and Serverless Memcached only.The
    #   default is 50. The Validation Constraints are a maximum of 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeServerlessCacheSnapshotsRequest AWS API Documentation
    #
    class DescribeServerlessCacheSnapshotsRequest < Struct.new(
      :serverless_cache_name,
      :serverless_cache_snapshot_name,
      :snapshot_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional marker returned from a prior request to support
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by max-results. Available for Valkey, Redis
    #   OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] serverless_cache_snapshots
    #   The serverless caches snapshots associated with a given description
    #   request. Available for Valkey, Redis OSS and Serverless Memcached
    #   only.
    #   @return [Array<Types::ServerlessCacheSnapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeServerlessCacheSnapshotsResponse AWS API Documentation
    #
    class DescribeServerlessCacheSnapshotsResponse < Struct.new(
      :next_token,
      :serverless_cache_snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_name
    #   The identifier for the serverless cache. If this parameter is
    #   specified, only information about that specific serverless cache is
    #   returned. Default: NULL
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records in the response. If more records exist
    #   than the specified max-records value, the next token is included in
    #   the response so that remaining results can be retrieved. The default
    #   is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional marker returned from a prior request to support
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeServerlessCachesRequest AWS API Documentation
    #
    class DescribeServerlessCachesRequest < Struct.new(
      :serverless_cache_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional marker returned from a prior request to support
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxResults.
    #   @return [String]
    #
    # @!attribute [rw] serverless_caches
    #   The serverless caches associated with a given description request.
    #   @return [Array<Types::ServerlessCache>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeServerlessCachesResponse AWS API Documentation
    #
    class DescribeServerlessCachesResponse < Struct.new(
      :next_token,
      :serverless_caches)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_status
    #   The status of the service update
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeServiceUpdatesMessage AWS API Documentation
    #
    class DescribeServiceUpdatesMessage < Struct.new(
      :service_update_name,
      :service_update_status,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeSnapshots` operation.
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   A list of snapshots. Each item in the list contains detailed
    #   information about one snapshot.
    #   @return [Array<Types::Snapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeSnapshotsListMessage AWS API Documentation
    #
    class DescribeSnapshotsListMessage < Struct.new(
      :marker,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeSnapshotsMessage` operation.
    #
    # @!attribute [rw] replication_group_id
    #   A user-supplied replication group identifier. If this parameter is
    #   specified, only snapshots associated with that specific replication
    #   group are described.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   A user-supplied cluster identifier. If this parameter is specified,
    #   only snapshots associated with that specific cluster are described.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   A user-supplied name of the snapshot. If this parameter is
    #   specified, only this snapshot are described.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_source
    #   If set to `system`, the output shows snapshots that were
    #   automatically created by ElastiCache. If set to `user` the output
    #   shows snapshots that were manually created. If omitted, the output
    #   shows both automatically and manually created snapshots.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 50
    #
    #   Constraints: minimum 20; maximum 50.
    #   @return [Integer]
    #
    # @!attribute [rw] show_node_group_config
    #   A Boolean value which if true, the node group (shard) configuration
    #   is included in the snapshot description.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeSnapshotsMessage AWS API Documentation
    #
    class DescribeSnapshotsMessage < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :snapshot_name,
      :snapshot_source,
      :marker,
      :max_records,
      :show_node_group_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] replication_group_ids
    #   The replication group IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] cache_cluster_ids
    #   The cache cluster IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine
    #   The Elasticache engine to which the update applies. Either Valkey,
    #   Redis OSS or Memcached.
    #   @return [String]
    #
    # @!attribute [rw] service_update_status
    #   The status of the service update
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_update_time_range
    #   The range of time specified to search for service updates that are
    #   in available status
    #   @return [Types::TimeRangeFilter]
    #
    # @!attribute [rw] update_action_status
    #   The status of the update action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] show_node_level_update_status
    #   Dictates whether to include node level update status in the response
    #   @return [Boolean]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeUpdateActionsMessage AWS API Documentation
    #
    class DescribeUpdateActionsMessage < Struct.new(
      :service_update_name,
      :replication_group_ids,
      :cache_cluster_ids,
      :engine,
      :service_update_status,
      :service_update_time_range,
      :update_action_status,
      :show_node_level_update_status,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_group_id
    #   The ID of the user group.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxRecords. &gt;
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeUserGroupsMessage AWS API Documentation
    #
    class DescribeUserGroupsMessage < Struct.new(
      :user_group_id,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_groups
    #   Returns a list of user groups.
    #   @return [Array<Types::UserGroup>]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxRecords.&gt;
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeUserGroupsResult AWS API Documentation
    #
    class DescribeUserGroupsResult < Struct.new(
      :user_groups,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine
    #   The engine.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filter to determine the list of User IDs to return.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxRecords. &gt;
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeUsersMessage AWS API Documentation
    #
    class DescribeUsersMessage < Struct.new(
      :engine,
      :user_id,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   A list of users.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxRecords. &gt;
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeUsersResult AWS API Documentation
    #
    class DescribeUsersResult < Struct.new(
      :users,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details of either a CloudWatch Logs destination or
    # Kinesis Data Firehose destination.
    #
    # @!attribute [rw] cloud_watch_logs_details
    #   The configuration details of the CloudWatch Logs destination.
    #   @return [Types::CloudWatchLogsDestinationDetails]
    #
    # @!attribute [rw] kinesis_firehose_details
    #   The configuration details of the Kinesis Data Firehose destination.
    #   @return [Types::KinesisFirehoseDestinationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DestinationDetails AWS API Documentation
    #
    class DestinationDetails < Struct.new(
      :cloud_watch_logs_details,
      :kinesis_firehose_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] replication_group_id
    #   The name of the secondary cluster you wish to remove from the Global
    #   datastore
    #   @return [String]
    #
    # @!attribute [rw] replication_group_region
    #   The Amazon region of secondary cluster you wish to remove from the
    #   Global datastore
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DisassociateGlobalReplicationGroupMessage AWS API Documentation
    #
    class DisassociateGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :replication_group_id,
      :replication_group_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different Amazon region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DisassociateGlobalReplicationGroupResult AWS API Documentation
    #
    class DisassociateGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user with this username already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DuplicateUserNameFault AWS API Documentation
    #
    class DuplicateUserNameFault < Aws::EmptyStructure; end

    # Provides ownership and status information for an Amazon EC2 security
    # group.
    #
    # @!attribute [rw] status
    #   The status of the Amazon EC2 security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   The name of the Amazon EC2 security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   The Amazon account ID of the Amazon EC2 security group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/EC2SecurityGroup AWS API Documentation
    #
    class EC2SecurityGroup < Struct.new(
      :status,
      :ec2_security_group_name,
      :ec2_security_group_owner_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the number of ElastiCache Processing Units
    # (ECPU) the cache can consume per second.
    #
    # @!attribute [rw] maximum
    #   The configuration for the maximum number of ECPUs the cache can
    #   consume per second.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum
    #   The configuration for the minimum number of ECPUs the cache should
    #   be able consume per second.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ECPUPerSecond AWS API Documentation
    #
    class ECPUPerSecond < Struct.new(
      :maximum,
      :minimum)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the information required for client programs to connect to
    # a cache node. This value is read-only.
    #
    # @!attribute [rw] address
    #   The DNS hostname of the cache node.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number that the cache engine is listening on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeEngineDefaultParameters`
    # operation.
    #
    # @!attribute [rw] cache_parameter_group_family
    #   Specifies the name of the cache parameter group family to which the
    #   engine default parameters apply.
    #
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `memcached1.6`
    #   \| `redis2.6` \| `redis2.8` \| `redis3.2` \| `redis4.0` \|
    #   `redis5.0` \| `redis6.0` \| `redis6.x` \| `redis7`
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Contains a list of engine default parameters.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] cache_node_type_specific_parameters
    #   A list of parameters specific to a particular cache node type. Each
    #   element in the list contains detailed information about one
    #   parameter.
    #   @return [Array<Types::CacheNodeTypeSpecificParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/EngineDefaults AWS API Documentation
    #
    class EngineDefaults < Struct.new(
      :cache_parameter_group_family,
      :marker,
      :parameters,
      :cache_node_type_specific_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single occurrence of something interesting within the
    # system. Some examples of events are creating a cluster, adding or
    # removing a cache node, or rebooting a node.
    #
    # @!attribute [rw] source_identifier
    #   The identifier for the source of the event. For example, if the
    #   event occurred at the cluster level, the identifier would be the
    #   name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Specifies the origin of this event - a cluster, a parameter group, a
    #   security group, etc.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The text of the event.
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date and time when the event occurred.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Event AWS API Documentation
    #
    class Event < Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeEvents` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A list of events. Each element in the list contains detailed
    #   information about one event.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/EventsMessage AWS API Documentation
    #
    class EventsMessage < Struct.new(
      :marker,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_snapshot_name
    #   The identifier of the serverless cache snapshot to be exported to
    #   S3. Available for Valkey and Redis OSS only.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Name of the Amazon S3 bucket to export the snapshot to. The Amazon
    #   S3 bucket must also be in same region as the snapshot. Available for
    #   Valkey and Redis OSS only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ExportServerlessCacheSnapshotRequest AWS API Documentation
    #
    class ExportServerlessCacheSnapshotRequest < Struct.new(
      :serverless_cache_snapshot_name,
      :s3_bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_snapshot
    #   The state of a serverless cache at a specific point in time, to the
    #   millisecond. Available for Valkey, Redis OSS and Serverless
    #   Memcached only.
    #   @return [Types::ServerlessCacheSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ExportServerlessCacheSnapshotResponse AWS API Documentation
    #
    class ExportServerlessCacheSnapshotResponse < Struct.new(
      :serverless_cache_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] primary_region
    #   The Amazon region of the primary cluster of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] primary_replication_group_id
    #   The name of the primary replication group
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/FailoverGlobalReplicationGroupMessage AWS API Documentation
    #
    class FailoverGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :primary_region,
      :primary_replication_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different Amazon region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/FailoverGlobalReplicationGroupResult AWS API Documentation
    #
    class FailoverGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to streamline results of a search based on the property being
    # filtered.
    #
    # @!attribute [rw] name
    #   The property being filtered. For example, UserId.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The property values to filter on. For example, "user-123".
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the slot configuration and global identifier for a slice
    # group.
    #
    # @!attribute [rw] global_node_group_id
    #   The name of the global node group
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   The keyspace for this node group
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalNodeGroup AWS API Documentation
    #
    class GlobalNodeGroup < Struct.new(
      :global_node_group_id,
      :slots)
      SENSITIVE = []
      include Aws::Structure
    end

    # Consists of a primary cluster that accepts writes and an associated
    # secondary cluster that resides in a different Amazon region. The
    # secondary cluster accepts only reads. The primary cluster
    # automatically replicates updates to the secondary cluster.
    #
    # * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #   Global datastore, which is what you use to associate a secondary
    #   cluster.
    #
    # ^
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] global_replication_group_description
    #   The optional description of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The ElastiCache engine. For Valkey or Redis OSS only.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The ElastiCache engine version.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   The replication groups that comprise the Global datastore.
    #   @return [Array<Types::GlobalReplicationGroupMember>]
    #
    # @!attribute [rw] cluster_enabled
    #   A flag that indicates whether the Global datastore is cluster
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] global_node_groups
    #   Indicates the slot configuration and global identifier for each
    #   slice group.
    #   @return [Array<Types::GlobalNodeGroup>]
    #
    # @!attribute [rw] auth_token_enabled
    #   A flag that enables using an `AuthToken` (password) when issuing
    #   Valkey or Redis OSS commands.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to true.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using Redis OSS version `3.2.6`, `4.x` or later.
    #   @return [Boolean]
    #
    # @!attribute [rw] at_rest_encryption_enabled
    #   A flag that enables encryption at rest when set to `true`.
    #
    #   You cannot modify the value of `AtRestEncryptionEnabled` after the
    #   replication group is created. To enable encryption at rest on a
    #   replication group you must set `AtRestEncryptionEnabled` to `true`
    #   when you create the replication group.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using Redis OSS version `3.2.6`, `4.x` or later.
    #   @return [Boolean]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the global replication group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalReplicationGroup AWS API Documentation
    #
    class GlobalReplicationGroup < Struct.new(
      :global_replication_group_id,
      :global_replication_group_description,
      :status,
      :cache_node_type,
      :engine,
      :engine_version,
      :members,
      :cluster_enabled,
      :global_node_groups,
      :auth_token_enabled,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Global datastore name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalReplicationGroupAlreadyExistsFault AWS API Documentation
    #
    class GlobalReplicationGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # The name of the Global datastore and role of this replication group in
    # the Global datastore.
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] global_replication_group_member_role
    #   The role of the replication group in a Global datastore. Can be
    #   primary or secondary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalReplicationGroupInfo AWS API Documentation
    #
    class GlobalReplicationGroupInfo < Struct.new(
      :global_replication_group_id,
      :global_replication_group_member_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # A member of a Global datastore. It contains the Replication Group Id,
    # the Amazon region and the role of the replication group.
    #
    # @!attribute [rw] replication_group_id
    #   The replication group id of the Global datastore member.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_region
    #   The Amazon region of the Global datastore member.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Indicates the role of the replication group, primary or secondary.
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover
    #   Indicates whether automatic failover is enabled for the replication
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the membership of the replication group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalReplicationGroupMember AWS API Documentation
    #
    class GlobalReplicationGroupMember < Struct.new(
      :replication_group_id,
      :replication_group_region,
      :role,
      :automatic_failover,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Global datastore does not exist
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalReplicationGroupNotFoundFault AWS API Documentation
    #
    class GlobalReplicationGroupNotFoundFault < Aws::EmptyStructure; end

    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] node_group_count
    #   Total number of node groups you want
    #   @return [Integer]
    #
    # @!attribute [rw] regional_configurations
    #   Describes the replication group IDs, the Amazon regions where they
    #   are stored and the shard configuration for each that comprise the
    #   Global datastore
    #   @return [Array<Types::RegionalConfiguration>]
    #
    # @!attribute [rw] apply_immediately
    #   Indicates that the process begins immediately. At present, the only
    #   permitted value for this parameter is true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/IncreaseNodeGroupsInGlobalReplicationGroupMessage AWS API Documentation
    #
    class IncreaseNodeGroupsInGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :node_group_count,
      :regional_configurations,
      :apply_immediately)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different Amazon region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/IncreaseNodeGroupsInGlobalReplicationGroupResult AWS API Documentation
    #
    class IncreaseNodeGroupsInGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group_id
    #   The id of the replication group to which you want to add replica
    #   nodes.
    #   @return [String]
    #
    # @!attribute [rw] new_replica_count
    #   The number of read replica nodes you want at the completion of this
    #   operation. For Valkey or Redis OSS (cluster mode disabled)
    #   replication groups, this is the number of replica nodes in the
    #   replication group. For Valkey or Redis OSS (cluster mode enabled)
    #   replication groups, this is the number of replica nodes in each of
    #   the replication group's node groups.
    #   @return [Integer]
    #
    # @!attribute [rw] replica_configuration
    #   A list of `ConfigureShard` objects that can be used to configure
    #   each shard in a Valkey or Redis OSS (cluster mode enabled)
    #   replication group. The `ConfigureShard` has three members:
    #   `NewReplicaCount`, `NodeGroupId`, and `PreferredAvailabilityZones`.
    #   @return [Array<Types::ConfigureShard>]
    #
    # @!attribute [rw] apply_immediately
    #   If `True`, the number of replica nodes is increased immediately.
    #   `ApplyImmediately=False` is not currently supported.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/IncreaseReplicaCountMessage AWS API Documentation
    #
    class IncreaseReplicaCountMessage < Struct.new(
      :replication_group_id,
      :new_replica_count,
      :replica_configuration,
      :apply_immediately)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Valkey or Redis OSS
    #   replication group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/IncreaseReplicaCountResult AWS API Documentation
    #
    class IncreaseReplicaCountResult < Struct.new(
      :replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested cache node type is not available in the specified
    # Availability Zone. For more information, see
    # [InsufficientCacheClusterCapacity][1] in the ElastiCache User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ErrorMessages.html#ErrorMessages.INSUFFICIENT_CACHE_CLUSTER_CAPACITY
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InsufficientCacheClusterCapacityFault AWS API Documentation
    #
    class InsufficientCacheClusterCapacityFault < Aws::EmptyStructure; end

    # The requested Amazon Resource Name (ARN) does not refer to an existing
    # resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidARNFault AWS API Documentation
    #
    class InvalidARNFault < Aws::EmptyStructure; end

    # The requested cluster is not in the `available` state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidCacheClusterStateFault AWS API Documentation
    #
    class InvalidCacheClusterStateFault < Aws::EmptyStructure; end

    # The current state of the cache parameter group does not allow the
    # requested operation to occur.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidCacheParameterGroupStateFault AWS API Documentation
    #
    class InvalidCacheParameterGroupStateFault < Aws::EmptyStructure; end

    # The current state of the cache security group does not allow deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidCacheSecurityGroupStateFault AWS API Documentation
    #
    class InvalidCacheSecurityGroupStateFault < Aws::EmptyStructure; end

    # You must enter valid credentials.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidCredentialsException AWS API Documentation
    #
    class InvalidCredentialsException < Aws::EmptyStructure; end

    # The Global datastore is not available or in primary-only state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidGlobalReplicationGroupStateFault AWS API Documentation
    #
    class InvalidGlobalReplicationGroupStateFault < Aws::EmptyStructure; end

    # The KMS key supplied is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidKMSKeyFault AWS API Documentation
    #
    class InvalidKMSKeyFault < Aws::EmptyStructure; end

    # Two or more incompatible parameters were specified.
    #
    # @!attribute [rw] message
    #   Two or more parameters that must not be used together were used
    #   together.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidParameterCombinationException AWS API Documentation
    #
    class InvalidParameterCombinationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value for a parameter is invalid.
    #
    # @!attribute [rw] message
    #   A parameter value is invalid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested replication group is not in the `available` state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidReplicationGroupStateFault AWS API Documentation
    #
    class InvalidReplicationGroupStateFault < Aws::EmptyStructure; end

    # The state of the serverless cache snapshot was not received. Available
    # for Valkey, Redis OSS and Serverless Memcached only.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidServerlessCacheSnapshotStateFault AWS API Documentation
    #
    class InvalidServerlessCacheSnapshotStateFault < Aws::EmptyStructure; end

    # The account for these credentials is not currently active.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidServerlessCacheStateFault AWS API Documentation
    #
    class InvalidServerlessCacheStateFault < Aws::EmptyStructure; end

    # The current state of the snapshot does not allow the requested
    # operation to occur.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidSnapshotStateFault AWS API Documentation
    #
    class InvalidSnapshotStateFault < Aws::EmptyStructure; end

    # An invalid subnet identifier was specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidSubnet AWS API Documentation
    #
    class InvalidSubnet < Aws::EmptyStructure; end

    # The user group is not in an active state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidUserGroupStateFault AWS API Documentation
    #
    class InvalidUserGroupStateFault < Aws::EmptyStructure; end

    # The user is not in active state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidUserStateFault AWS API Documentation
    #
    class InvalidUserStateFault < Aws::EmptyStructure; end

    # The VPC network is in an invalid state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidVPCNetworkStateFault AWS API Documentation
    #
    class InvalidVPCNetworkStateFault < Aws::EmptyStructure; end

    # The configuration details of the Kinesis Data Firehose destination.
    #
    # @!attribute [rw] delivery_stream
    #   The name of the Kinesis Data Firehose delivery stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/KinesisFirehoseDestinationDetails AWS API Documentation
    #
    class KinesisFirehoseDestinationDetails < Struct.new(
      :delivery_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters for the `ListAllowedNodeTypeModifications`
    # operation.
    #
    # @!attribute [rw] cache_cluster_id
    #   The name of the cluster you want to scale up to a larger node
    #   instanced type. ElastiCache uses the cluster id to identify the
    #   current node type of this cluster and from that to create a list of
    #   node types you can scale up to.
    #
    #   You must provide a value for either the `CacheClusterId` or the
    #   `ReplicationGroupId`.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_id
    #   The name of the replication group want to scale up to a larger node
    #   type. ElastiCache uses the replication group id to identify the
    #   current node type being used by this replication group, and from
    #   that to create a list of node types you can scale up to.
    #
    #   You must provide a value for either the `CacheClusterId` or the
    #   `ReplicationGroupId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ListAllowedNodeTypeModificationsMessage AWS API Documentation
    #
    class ListAllowedNodeTypeModificationsMessage < Struct.new(
      :cache_cluster_id,
      :replication_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters for the `ListTagsForResource` operation.
    #
    # @!attribute [rw] resource_name
    #   The Amazon Resource Name (ARN) of the resource for which you want
    #   the list of tags, for example
    #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
    #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and Amazon Web Services Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ListTagsForResourceMessage AWS API Documentation
    #
    class ListTagsForResourceMessage < Struct.new(
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the destination, format and type of the logs.
    #
    # @!attribute [rw] log_type
    #   Refers to [slow-log][1] or engine-log.
    #
    #
    #
    #   [1]: https://redis.io/commands/slowlog
    #   @return [String]
    #
    # @!attribute [rw] destination_type
    #   Returns the destination type, either `cloudwatch-logs` or
    #   `kinesis-firehose`.
    #   @return [String]
    #
    # @!attribute [rw] destination_details
    #   Configuration details of either a CloudWatch Logs destination or
    #   Kinesis Data Firehose destination.
    #   @return [Types::DestinationDetails]
    #
    # @!attribute [rw] log_format
    #   Returns the log format, either JSON or TEXT.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Returns the log delivery configuration status. Values are one of
    #   `enabling` \| `disabling` \| `modifying` \| `active` \| `error`
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Returns an error message for the log delivery configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/LogDeliveryConfiguration AWS API Documentation
    #
    class LogDeliveryConfiguration < Struct.new(
      :log_type,
      :destination_type,
      :destination_details,
      :log_format,
      :status,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the destination, format and type of the logs.
    #
    # @!attribute [rw] log_type
    #   Refers to [slow-log][1] or engine-log..
    #
    #
    #
    #   [1]: https://redis.io/commands/slowlog
    #   @return [String]
    #
    # @!attribute [rw] destination_type
    #   Specify either `cloudwatch-logs` or `kinesis-firehose` as the
    #   destination type.
    #   @return [String]
    #
    # @!attribute [rw] destination_details
    #   Configuration details of either a CloudWatch Logs destination or
    #   Kinesis Data Firehose destination.
    #   @return [Types::DestinationDetails]
    #
    # @!attribute [rw] log_format
    #   Specifies either JSON or TEXT
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specify if log delivery is enabled. Default `true`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/LogDeliveryConfigurationRequest AWS API Documentation
    #
    class LogDeliveryConfigurationRequest < Struct.new(
      :log_type,
      :destination_type,
      :destination_details,
      :log_format,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ModifyCacheCluster` operation.
    #
    # @!attribute [rw] cache_cluster_id
    #   The cluster identifier. This value is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] num_cache_nodes
    #   The number of cache nodes that the cluster should have. If the value
    #   for `NumCacheNodes` is greater than the sum of the number of current
    #   cache nodes and the number of cache nodes pending creation (which
    #   may be zero), more nodes are added. If the value is less than the
    #   number of existing cache nodes, nodes are removed. If the value is
    #   equal to the number of current cache nodes, any pending add or
    #   remove requests are canceled.
    #
    #   If you are removing cache nodes, you must use the
    #   `CacheNodeIdsToRemove` parameter to provide the IDs of the specific
    #   cache nodes to remove.
    #
    #   For clusters running Valkey or Redis OSS, this value must be 1. For
    #   clusters running Memcached, this value must be between 1 and 40.
    #
    #   <note markdown="1"> Adding or removing Memcached cache nodes can be applied immediately
    #   or as a pending operation (see `ApplyImmediately`).
    #
    #    A pending operation to modify the number of cache nodes in a cluster
    #   during its maintenance window, whether by adding or removing nodes
    #   in accordance with the scale out architecture, is not queued. The
    #   customer's latest request to add or remove nodes to the cluster
    #   overrides any previous pending operations to modify the number of
    #   cache nodes in the cluster. For example, a request to remove 2 nodes
    #   would override a previous pending operation to remove 3 nodes.
    #   Similarly, a request to add 2 nodes would override a previous
    #   pending operation to remove 3 nodes and vice versa. As Memcached
    #   cache nodes may now be provisioned in different Availability Zones
    #   with flexible cache node placement, a request to add nodes does not
    #   automatically override a previous pending operation to add nodes.
    #   The customer can modify the previous pending operation to add more
    #   nodes or explicitly cancel the pending request and retry the new
    #   request. To cancel pending operations to modify the number of cache
    #   nodes in a cluster, use the `ModifyCacheCluster` request and set
    #   `NumCacheNodes` equal to the number of cache nodes currently in the
    #   cluster.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] cache_node_ids_to_remove
    #   A list of cache node IDs to be removed. A node ID is a numeric
    #   identifier (0001, 0002, etc.). This parameter is only valid when
    #   `NumCacheNodes` is less than the existing number of cache nodes. The
    #   number of cache node IDs supplied in this parameter must match the
    #   difference between the existing number of cache nodes in the cluster
    #   or pending cache nodes, whichever is greater, and the value of
    #   `NumCacheNodes` in the request.
    #
    #   For example: If you have 3 active cache nodes, 7 pending cache
    #   nodes, and the number of cache nodes in this `ModifyCacheCluster`
    #   call is 5, you must list 2 (7 - 5) cache node IDs to remove.
    #   @return [Array<String>]
    #
    # @!attribute [rw] az_mode
    #   Specifies whether the new nodes in this Memcached cluster are all
    #   created in a single Availability Zone or created across multiple
    #   Availability Zones.
    #
    #   Valid values: `single-az` \| `cross-az`.
    #
    #   This option is only supported for Memcached clusters.
    #
    #   <note markdown="1"> You cannot specify `single-az` if the Memcached cluster already has
    #   cache nodes in different Availability Zones. If `cross-az` is
    #   specified, existing Memcached nodes remain in their current
    #   Availability Zone.
    #
    #    Only newly created nodes are located in different Availability
    #   Zones.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] new_availability_zones
    #   <note markdown="1"> This option is only supported on Memcached clusters.
    #
    #    </note>
    #
    #   The list of Availability Zones where the new Memcached cache nodes
    #   are created.
    #
    #   This parameter is only valid when `NumCacheNodes` in the request is
    #   greater than the sum of the number of active cache nodes and the
    #   number of cache nodes pending creation (which may be zero). The
    #   number of Availability Zones supplied in this list must match the
    #   cache nodes being added in this request.
    #
    #   Scenarios:
    #
    #   * **Scenario 1:** You have 3 active nodes and wish to add 2 nodes.
    #     Specify `NumCacheNodes=5` (3 + 2) and optionally specify two
    #     Availability Zones for the two new nodes.
    #
    #   * **Scenario 2:** You have 3 active nodes and 2 nodes pending
    #     creation (from the scenario 1 call) and want to add 1 more node.
    #     Specify `NumCacheNodes=6` ((3 + 2) + 1) and optionally specify an
    #     Availability Zone for the new node.
    #
    #   * **Scenario 3:** You want to cancel all pending operations. Specify
    #     `NumCacheNodes=3` to cancel all pending operations.
    #
    #   The Availability Zone placement of nodes pending creation cannot be
    #   modified. If you wish to cancel any nodes pending creation, add 0
    #   nodes by setting `NumCacheNodes` to the number of current nodes.
    #
    #   If `cross-az` is specified, existing Memcached nodes remain in their
    #   current Availability Zone. Only newly created nodes can be located
    #   in different Availability Zones. For guidance on how to move
    #   existing Memcached nodes to different Availability Zones, see the
    #   **Availability Zone Considerations** section of [Cache Node
    #   Considerations for Memcached][1].
    #
    #   **Impact of new add/remove requests upon pending requests**
    #
    #   * Scenario-1
    #
    #     * Pending Action: Delete
    #
    #     * New Request: Delete
    #
    #     * Result: The new delete, pending or immediate, replaces the
    #       pending delete.
    #   * Scenario-2
    #
    #     * Pending Action: Delete
    #
    #     * New Request: Create
    #
    #     * Result: The new create, pending or immediate, replaces the
    #       pending delete.
    #   * Scenario-3
    #
    #     * Pending Action: Create
    #
    #     * New Request: Delete
    #
    #     * Result: The new delete, pending or immediate, replaces the
    #       pending create.
    #   * Scenario-4
    #
    #     * Pending Action: Create
    #
    #     * New Request: Create
    #
    #     * Result: The new create is added to the pending create.
    #
    #       **Important:** If the new create request is **Apply Immediately
    #       - Yes**, all creates are performed immediately. If the new
    #       create request is **Apply Immediately - No**, all creates are
    #       pending.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] cache_security_group_names
    #   A list of cache security group names to authorize on this cluster.
    #   This change is asynchronously applied as soon as possible.
    #
    #   You can use this parameter only with clusters that are created
    #   outside of an Amazon Virtual Private Cloud (Amazon VPC).
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters.
    #   Must not be "Default".
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specifies the VPC Security Groups associated with the cluster.
    #
    #   This parameter can be used only with clusters that are created in an
    #   Amazon Virtual Private Cloud (Amazon VPC).
    #   @return [Array<String>]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #   @return [String]
    #
    # @!attribute [rw] notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be same as the cluster owner.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to apply to this cluster. This
    #   change is asynchronously applied as soon as possible for parameters
    #   when the `ApplyImmediately` parameter is specified as `true` for
    #   this request.
    #   @return [String]
    #
    # @!attribute [rw] notification_topic_status
    #   The status of the Amazon SNS notification topic. Notifications are
    #   sent only if the status is `active`.
    #
    #   Valid values: `active` \| `inactive`
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   If `true`, this parameter causes the modifications in this request
    #   and any pending modifications to be applied, asynchronously and as
    #   soon as possible, regardless of the `PreferredMaintenanceWindow`
    #   setting for the cluster.
    #
    #   If `false`, changes to the cluster are applied on the next
    #   maintenance reboot, or the next failure reboot, whichever occurs
    #   first.
    #
    #   If you perform a `ModifyCacheCluster` before a pending modification
    #   is applied, the pending modification is replaced by the newer
    #   modification.
    #
    #   Valid values: `true` \| `false`
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] engine
    #   The engine type used by the cache cluster. The options are valkey,
    #   memcached or redis.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The upgraded version of the cache engine to be run on the cache
    #   nodes.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
    #   to an earlier engine version. If you want to use an earlier engine
    #   version, you must delete the existing cluster and create it anew
    #   with the earlier engine version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #    If you are running Valkey 7.2 or Redis OSS engine version 6.0 or
    #   later, set this parameter to yes to opt-in to the next auto minor
    #   version upgrade campaign. This parameter is disabled for previous
    #   versions. 
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic cluster
    #   snapshots before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    #   <note markdown="1"> If the value of `SnapshotRetentionLimit` is set to zero (0), backups
    #   are turned off.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   A valid cache node type that you want to scale this cluster up to.
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   Reserved parameter. The password used to access a password protected
    #   server. This parameter must be specified with the
    #   `auth-token-update` parameter. Password constraints:
    #
    #   * Must be only printable ASCII characters
    #
    #   * Must be at least 16 characters and no more than 128 characters in
    #     length
    #
    #   * Cannot contain any of the following characters: '/', '"', or
    #     '@', '%'
    #
    #   For more information, see AUTH password at [AUTH][1].
    #
    #
    #
    #   [1]: http://redis.io/commands/AUTH
    #   @return [String]
    #
    # @!attribute [rw] auth_token_update_strategy
    #   Specifies the strategy to use to update the AUTH token. This
    #   parameter must be specified with the `auth-token` parameter.
    #   Possible values:
    #
    #   * ROTATE - default, if no update strategy is provided
    #
    #   * SET - allowed only after ROTATE
    #
    #   * DELETE - allowed only when transitioning to RBAC
    #
    #   For more information, see [Authenticating Users with AUTH][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/auth.html
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configurations
    #   Specifies the destination, format and type of the logs.
    #   @return [Array<Types::LogDeliveryConfigurationRequest>]
    #
    # @!attribute [rw] ip_discovery
    #   The network type you choose when modifying a cluster, either `ipv4`
    #   \| `ipv6`. IPv6 is supported for workloads using Valkey 7.2 and
    #   above, Redis OSS engine version 6.2 to 7.1 or Memcached engine
    #   version 1.6.6 and above on all instances built on the [Nitro
    #   system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [String]
    #
    # @!attribute [rw] scale_config
    #   Configures horizontal or vertical scaling for Memcached clusters,
    #   specifying the scaling percentage and interval.
    #   @return [Types::ScaleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheClusterMessage AWS API Documentation
    #
    class ModifyCacheClusterMessage < Struct.new(
      :cache_cluster_id,
      :num_cache_nodes,
      :cache_node_ids_to_remove,
      :az_mode,
      :new_availability_zones,
      :cache_security_group_names,
      :security_group_ids,
      :preferred_maintenance_window,
      :notification_topic_arn,
      :cache_parameter_group_name,
      :notification_topic_status,
      :apply_immediately,
      :engine,
      :engine_version,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :cache_node_type,
      :auth_token,
      :auth_token_update_strategy,
      :log_delivery_configurations,
      :ip_discovery,
      :scale_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_cluster
    #   Contains all of the attributes of a specific cluster.
    #   @return [Types::CacheCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheClusterResult AWS API Documentation
    #
    class ModifyCacheClusterResult < Struct.new(
      :cache_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ModifyCacheParameterGroup` operation.
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to modify.
    #   @return [String]
    #
    # @!attribute [rw] parameter_name_values
    #   An array of parameter names and values for the parameter update. You
    #   must supply at least one parameter name and value; subsequent
    #   arguments are optional. A maximum of 20 parameters may be modified
    #   per request.
    #   @return [Array<Types::ParameterNameValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheParameterGroupMessage AWS API Documentation
    #
    class ModifyCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name,
      :parameter_name_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ModifyCacheSubnetGroup` operation.
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name for the cache subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters
    #   or hyphens.
    #
    #   Example: `mysubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_description
    #   A description of the cache subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The EC2 subnet IDs for the cache subnet group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheSubnetGroupMessage AWS API Documentation
    #
    class ModifyCacheSubnetGroupMessage < Struct.new(
      :cache_subnet_group_name,
      :cache_subnet_group_description,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_subnet_group
    #   Represents the output of one of the following operations:
    #
    #   * `CreateCacheSubnetGroup`
    #
    #   * `ModifyCacheSubnetGroup`
    #   @return [Types::CacheSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheSubnetGroupResult AWS API Documentation
    #
    class ModifyCacheSubnetGroupResult < Struct.new(
      :cache_subnet_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   This parameter causes the modifications in this request and any
    #   pending modifications to be applied, asynchronously and as soon as
    #   possible. Modifications to Global Replication Groups cannot be
    #   requested to be applied in PreferredMaintenceWindow.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_node_type
    #   A valid cache node type that you want to scale this Global datastore
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   Modifies the engine listed in a global replication group message.
    #   The options are redis, memcached or valkey.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The upgraded version of the cache engine to be run on the clusters
    #   in the Global datastore.
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to use with the Global
    #   datastore. It must be compatible with the major engine version used
    #   by the Global datastore.
    #   @return [String]
    #
    # @!attribute [rw] global_replication_group_description
    #   A description of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover_enabled
    #   Determines whether a read replica is automatically promoted to
    #   read/write primary if the existing primary encounters a failure.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyGlobalReplicationGroupMessage AWS API Documentation
    #
    class ModifyGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :apply_immediately,
      :cache_node_type,
      :engine,
      :engine_version,
      :cache_parameter_group_name,
      :global_replication_group_description,
      :automatic_failover_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different Amazon region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyGlobalReplicationGroupResult AWS API Documentation
    #
    class ModifyGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ModifyReplicationGroups` operation.
    #
    # @!attribute [rw] replication_group_id
    #   The identifier of the replication group to modify.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_description
    #   A description for the replication group. Maximum length is 255
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] primary_cluster_id
    #   For replication groups with a single primary, if this parameter is
    #   specified, ElastiCache promotes the specified cluster in the
    #   specified replication group to the primary role. The nodes of all
    #   other clusters in the replication group are read replicas.
    #   @return [String]
    #
    # @!attribute [rw] snapshotting_cluster_id
    #   The cluster ID that is used as the daily snapshot source for the
    #   replication group. This parameter cannot be set for Valkey or Redis
    #   OSS (cluster mode enabled) replication groups.
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover_enabled
    #   Determines whether a read replica is automatically promoted to
    #   read/write primary if the existing primary encounters a failure.
    #
    #   Valid values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] multi_az_enabled
    #   A flag to indicate MultiAZ is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] node_group_id
    #   Deprecated. This parameter is not used.
    #   @return [String]
    #
    # @!attribute [rw] cache_security_group_names
    #   A list of cache security group names to authorize for the clusters
    #   in this replication group. This change is asynchronously applied as
    #   soon as possible.
    #
    #   This parameter can be used only with replication group containing
    #   clusters running outside of an Amazon Virtual Private Cloud (Amazon
    #   VPC).
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters.
    #   Must not be `Default`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specifies the VPC Security Groups associated with the clusters in
    #   the replication group.
    #
    #   This parameter can be used only with replication group containing
    #   clusters running in an Amazon Virtual Private Cloud (Amazon VPC).
    #   @return [Array<String>]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #   @return [String]
    #
    # @!attribute [rw] notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be same as the replication group
    #   owner.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to apply to all of the
    #   clusters in this replication group. This change is asynchronously
    #   applied as soon as possible for parameters when the
    #   `ApplyImmediately` parameter is specified as `true` for this
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] notification_topic_status
    #   The status of the Amazon SNS notification topic for the replication
    #   group. Notifications are sent only if the status is `active`.
    #
    #   Valid values: `active` \| `inactive`
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   If `true`, this parameter causes the modifications in this request
    #   and any pending modifications to be applied, asynchronously and as
    #   soon as possible, regardless of the `PreferredMaintenanceWindow`
    #   setting for the replication group.
    #
    #   If `false`, changes to the nodes in the replication group are
    #   applied on the next maintenance reboot, or the next failure reboot,
    #   whichever occurs first.
    #
    #   Valid values: `true` \| `false`
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] engine
    #   Modifies the engine listed in a replication group message. The
    #   options are redis, memcached or valkey.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The upgraded version of the cache engine to be run on the clusters
    #   in the replication group.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
    #   to an earlier engine version. If you want to use an earlier engine
    #   version, you must delete the existing replication group and create
    #   it anew with the earlier engine version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #    If you are running Valkey or Redis OSS engine version 6.0 or later,
    #   set this parameter to yes if you want to opt-in to the next auto
    #   minor version upgrade campaign. This parameter is disabled for
    #   previous versions. 
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic node
    #   group (shard) snapshots before deleting them. For example, if you
    #   set `SnapshotRetentionLimit` to 5, a snapshot that was taken today
    #   is retained for 5 days before being deleted.
    #
    #   **Important** If the value of SnapshotRetentionLimit is set to zero
    #   (0), backups are turned off.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of the node group (shard) specified by
    #   `SnapshottingClusterId`.
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   A valid cache node type that you want to scale this replication
    #   group to.
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   Reserved parameter. The password used to access a password protected
    #   server. This parameter must be specified with the
    #   `auth-token-update-strategy ` parameter. Password constraints:
    #
    #   * Must be only printable ASCII characters
    #
    #   * Must be at least 16 characters and no more than 128 characters in
    #     length
    #
    #   * Cannot contain any of the following characters: '/', '"', or
    #     '@', '%'
    #
    #   For more information, see AUTH password at [AUTH][1].
    #
    #
    #
    #   [1]: http://redis.io/commands/AUTH
    #   @return [String]
    #
    # @!attribute [rw] auth_token_update_strategy
    #   Specifies the strategy to use to update the AUTH token. This
    #   parameter must be specified with the `auth-token` parameter.
    #   Possible values:
    #
    #   * ROTATE - default, if no update strategy is provided
    #
    #   * SET - allowed only after ROTATE
    #
    #   * DELETE - allowed only when transitioning to RBAC
    #
    #   For more information, see [Authenticating Users with AUTH][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/auth.html
    #   @return [String]
    #
    # @!attribute [rw] user_group_ids_to_add
    #   The ID of the user group you are associating with the replication
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_group_ids_to_remove
    #   The ID of the user group to disassociate from the replication group,
    #   meaning the users in the group no longer can access the replication
    #   group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] remove_user_groups
    #   Removes the user group associated with this replication group.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_delivery_configurations
    #   Specifies the destination, format and type of the logs.
    #   @return [Array<Types::LogDeliveryConfigurationRequest>]
    #
    # @!attribute [rw] ip_discovery
    #   The network type you choose when modifying a cluster, either `ipv4`
    #   \| `ipv6`. IPv6 is supported for workloads using Valkey 7.2 and
    #   above, Redis OSS engine version 6.2 to 7.1 and Memcached engine
    #   version 1.6.6 and above on all instances built on the [Nitro
    #   system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to true. If you
    #   are enabling in-transit encryption for an existing cluster, you must
    #   also set `TransitEncryptionMode` to `preferred`.
    #   @return [Boolean]
    #
    # @!attribute [rw] transit_encryption_mode
    #   A setting that allows you to migrate your clients to use in-transit
    #   encryption, with no downtime.
    #
    #   You must set `TransitEncryptionEnabled` to `true`, for your existing
    #   cluster, and set `TransitEncryptionMode` to `preferred` in the same
    #   request to allow both encrypted and unencrypted connections at the
    #   same time. Once you migrate all your Valkey or Redis OSS clients to
    #   use encrypted connections you can set the value to `required` to
    #   allow encrypted connections only.
    #
    #   Setting `TransitEncryptionMode` to `required` is a two-step process
    #   that requires you to first set the `TransitEncryptionMode` to
    #   `preferred`, after that you can set `TransitEncryptionMode` to
    #   `required`.
    #   @return [String]
    #
    # @!attribute [rw] cluster_mode
    #   Enabled or Disabled. To modify cluster mode from Disabled to
    #   Enabled, you must first set the cluster mode to Compatible.
    #   Compatible mode allows your Valkey or Redis OSS clients to connect
    #   using both cluster mode enabled and cluster mode disabled. After you
    #   migrate all Valkey or Redis OSS clients to use cluster mode enabled,
    #   you can then complete cluster mode configuration and set the cluster
    #   mode to Enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroupMessage AWS API Documentation
    #
    class ModifyReplicationGroupMessage < Struct.new(
      :replication_group_id,
      :replication_group_description,
      :primary_cluster_id,
      :snapshotting_cluster_id,
      :automatic_failover_enabled,
      :multi_az_enabled,
      :node_group_id,
      :cache_security_group_names,
      :security_group_ids,
      :preferred_maintenance_window,
      :notification_topic_arn,
      :cache_parameter_group_name,
      :notification_topic_status,
      :apply_immediately,
      :engine,
      :engine_version,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :cache_node_type,
      :auth_token,
      :auth_token_update_strategy,
      :user_group_ids_to_add,
      :user_group_ids_to_remove,
      :remove_user_groups,
      :log_delivery_configurations,
      :ip_discovery,
      :transit_encryption_enabled,
      :transit_encryption_mode,
      :cluster_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Valkey or Redis OSS
    #   replication group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroupResult AWS API Documentation
    #
    class ModifyReplicationGroupResult < Struct.new(
      :replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input for a `ModifyReplicationGroupShardConfiguration`
    # operation.
    #
    # @!attribute [rw] replication_group_id
    #   The name of the Valkey or Redis OSS (cluster mode enabled) cluster
    #   (replication group) on which the shards are to be configured.
    #   @return [String]
    #
    # @!attribute [rw] node_group_count
    #   The number of node groups (shards) that results from the
    #   modification of the shard configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] apply_immediately
    #   Indicates that the shard reconfiguration process begins immediately.
    #   At present, the only permitted value for this parameter is `true`.
    #
    #   Value: true
    #   @return [Boolean]
    #
    # @!attribute [rw] resharding_configuration
    #   Specifies the preferred availability zones for each node group in
    #   the cluster. If the value of `NodeGroupCount` is greater than the
    #   current number of node groups (shards), you can use this parameter
    #   to specify the preferred availability zones of the cluster's
    #   shards. If you omit this parameter ElastiCache selects availability
    #   zones for you.
    #
    #   You can specify this parameter only if the value of `NodeGroupCount`
    #   is greater than the current number of node groups (shards).
    #   @return [Array<Types::ReshardingConfiguration>]
    #
    # @!attribute [rw] node_groups_to_remove
    #   If the value of `NodeGroupCount` is less than the current number of
    #   node groups (shards), then either `NodeGroupsToRemove` or
    #   `NodeGroupsToRetain` is required. `NodeGroupsToRemove` is a list of
    #   `NodeGroupId`s to remove from the cluster.
    #
    #   ElastiCache will attempt to remove all node groups listed by
    #   `NodeGroupsToRemove` from the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] node_groups_to_retain
    #   If the value of `NodeGroupCount` is less than the current number of
    #   node groups (shards), then either `NodeGroupsToRemove` or
    #   `NodeGroupsToRetain` is required. `NodeGroupsToRetain` is a list of
    #   `NodeGroupId`s to retain in the cluster.
    #
    #   ElastiCache will attempt to remove all node groups except those
    #   listed by `NodeGroupsToRetain` from the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroupShardConfigurationMessage AWS API Documentation
    #
    class ModifyReplicationGroupShardConfigurationMessage < Struct.new(
      :replication_group_id,
      :node_group_count,
      :apply_immediately,
      :resharding_configuration,
      :node_groups_to_remove,
      :node_groups_to_retain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Valkey or Redis OSS
    #   replication group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroupShardConfigurationResult AWS API Documentation
    #
    class ModifyReplicationGroupShardConfigurationResult < Struct.new(
      :replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache_name
    #   User-provided identifier for the serverless cache to be modified.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   User provided description for the serverless cache. Default = NULL,
    #   i.e. the existing description is not removed/modified. The
    #   description has a maximum length of 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] cache_usage_limits
    #   Modify the cache usage limit for the serverless cache.
    #   @return [Types::CacheUsageLimits]
    #
    # @!attribute [rw] remove_user_group
    #   The identifier of the UserGroup to be removed from association with
    #   the Valkey and Redis OSS serverless cache. Available for Valkey and
    #   Redis OSS only. Default is NULL.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_group_id
    #   The identifier of the UserGroup to be associated with the serverless
    #   cache. Available for Valkey and Redis OSS only. Default is NULL -
    #   the existing UserGroup is not removed.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The new list of VPC security groups to be associated with the
    #   serverless cache. Populating this list means the current VPC
    #   security groups will be removed. This security group is used to
    #   authorize traffic access for the VPC end-point (private-link).
    #   Default = NULL - the existing list of VPC security groups is not
    #   removed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which Elasticache retains automatic snapshots
    #   before deleting them. Available for Valkey, Redis OSS and Serverless
    #   Memcached only. Default = NULL, i.e. the existing
    #   snapshot-retention-limit will not be removed or modified. The
    #   maximum value allowed is 35 days.
    #   @return [Integer]
    #
    # @!attribute [rw] daily_snapshot_time
    #   The daily time during which Elasticache begins taking a daily
    #   snapshot of the serverless cache. Available for Valkey, Redis OSS
    #   and Serverless Memcached only. The default is NULL, i.e. the
    #   existing snapshot time configured for the cluster is not removed.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   Modifies the engine listed in a serverless cache request. The
    #   options are redis, memcached or valkey.
    #   @return [String]
    #
    # @!attribute [rw] major_engine_version
    #   Modifies the engine vesion listed in a serverless cache request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyServerlessCacheRequest AWS API Documentation
    #
    class ModifyServerlessCacheRequest < Struct.new(
      :serverless_cache_name,
      :description,
      :cache_usage_limits,
      :remove_user_group,
      :user_group_id,
      :security_group_ids,
      :snapshot_retention_limit,
      :daily_snapshot_time,
      :engine,
      :major_engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serverless_cache
    #   The response for the attempt to modify the serverless cache.
    #   @return [Types::ServerlessCache]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyServerlessCacheResponse AWS API Documentation
    #
    class ModifyServerlessCacheResponse < Struct.new(
      :serverless_cache)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_group_id
    #   The ID of the user group.
    #   @return [String]
    #
    # @!attribute [rw] user_ids_to_add
    #   The list of user IDs to add to the user group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_ids_to_remove
    #   The list of user IDs to remove from the user group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine
    #   Modifies the engine listed in a user group. The options are valkey
    #   or redis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyUserGroupMessage AWS API Documentation
    #
    class ModifyUserGroupMessage < Struct.new(
      :user_group_id,
      :user_ids_to_add,
      :user_ids_to_remove,
      :engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] access_string
    #   Access permissions string used for this user.
    #   @return [String]
    #
    # @!attribute [rw] append_access_string
    #   Adds additional user permissions to the access string.
    #   @return [String]
    #
    # @!attribute [rw] passwords
    #   The passwords belonging to the user. You are allowed up to two.
    #   @return [Array<String>]
    #
    # @!attribute [rw] no_password_required
    #   Indicates no password is required for the user.
    #   @return [Boolean]
    #
    # @!attribute [rw] authentication_mode
    #   Specifies how to authenticate the user.
    #   @return [Types::AuthenticationMode]
    #
    # @!attribute [rw] engine
    #   Modifies the engine listed for a user. The options are valkey or
    #   redis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyUserMessage AWS API Documentation
    #
    class ModifyUserMessage < Struct.new(
      :user_id,
      :access_string,
      :append_access_string,
      :passwords,
      :no_password_required,
      :authentication_mode,
      :engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation was not performed because no changes were required.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NoOperationFault AWS API Documentation
    #
    class NoOperationFault < Aws::EmptyStructure; end

    # Represents a collection of cache nodes in a replication group. One
    # node in the node group is the read/write primary node. All the other
    # nodes are read-only Replica nodes.
    #
    # @!attribute [rw] node_group_id
    #   The identifier for the node group (shard). A Valkey or Redis OSS
    #   (cluster mode disabled) replication group contains only 1 node
    #   group; therefore, the node group ID is 0001. A Valkey or Redis OSS
    #   (cluster mode enabled) replication group contains 1 to 90 node
    #   groups numbered 0001 to 0090. Optionally, the user can provide the
    #   id for a node group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of this replication group - `creating`,
    #   `available`, `modifying`, `deleting`.
    #   @return [String]
    #
    # @!attribute [rw] primary_endpoint
    #   The endpoint of the primary node in this node group (shard).
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] reader_endpoint
    #   The endpoint of the replica nodes in this node group (shard). This
    #   value is read-only.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] slots
    #   The keyspace for this node group (shard).
    #   @return [String]
    #
    # @!attribute [rw] node_group_members
    #   A list containing information about individual nodes within the node
    #   group (shard).
    #   @return [Array<Types::NodeGroupMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroup AWS API Documentation
    #
    class NodeGroup < Struct.new(
      :node_group_id,
      :status,
      :primary_endpoint,
      :reader_endpoint,
      :slots,
      :node_group_members)
      SENSITIVE = []
      include Aws::Structure
    end

    # Node group (shard) configuration options. Each node group (shard)
    # configuration has the following: `Slots`, `PrimaryAvailabilityZone`,
    # `ReplicaAvailabilityZones`, `ReplicaCount`.
    #
    # @!attribute [rw] node_group_id
    #   Either the ElastiCache supplied 4-digit id or a user supplied id for
    #   the node group these configuration values apply to.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   A string that specifies the keyspace for a particular node group.
    #   Keyspaces range from 0 to 16,383. The string is in the format
    #   `startkey-endkey`.
    #
    #   Example: `"0-3999"`
    #   @return [String]
    #
    # @!attribute [rw] replica_count
    #   The number of read replica nodes in this node group (shard).
    #   @return [Integer]
    #
    # @!attribute [rw] primary_availability_zone
    #   The Availability Zone where the primary node of this node group
    #   (shard) is launched.
    #   @return [String]
    #
    # @!attribute [rw] replica_availability_zones
    #   A list of Availability Zones to be used for the read replicas. The
    #   number of Availability Zones in this list must match the value of
    #   `ReplicaCount` or `ReplicasPerNodeGroup` if not specified.
    #   @return [Array<String>]
    #
    # @!attribute [rw] primary_outpost_arn
    #   The outpost ARN of the primary node.
    #   @return [String]
    #
    # @!attribute [rw] replica_outpost_arns
    #   The outpost ARN of the node replicas.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupConfiguration AWS API Documentation
    #
    class NodeGroupConfiguration < Struct.new(
      :node_group_id,
      :slots,
      :replica_count,
      :primary_availability_zone,
      :replica_availability_zones,
      :primary_outpost_arn,
      :replica_outpost_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single node within a node group (shard).
    #
    # @!attribute [rw] cache_cluster_id
    #   The ID of the cluster to which the node belongs.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_id
    #   The ID of the node within its cluster. A node ID is a numeric
    #   identifier (0001, 0002, etc.).
    #   @return [String]
    #
    # @!attribute [rw] read_endpoint
    #   The information required for client programs to connect to a node
    #   for read operations. The read endpoint is only applicable on Valkey
    #   or Redis OSS (cluster mode disabled) clusters.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] preferred_availability_zone
    #   The name of the Availability Zone in which the node is located.
    #   @return [String]
    #
    # @!attribute [rw] preferred_outpost_arn
    #   The outpost ARN of the node group member.
    #   @return [String]
    #
    # @!attribute [rw] current_role
    #   The role that is currently assigned to the node - `primary` or
    #   `replica`. This member is only applicable for Valkey or Redis OSS
    #   (cluster mode disabled) replication groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupMember AWS API Documentation
    #
    class NodeGroupMember < Struct.new(
      :cache_cluster_id,
      :cache_node_id,
      :read_endpoint,
      :preferred_availability_zone,
      :preferred_outpost_arn,
      :current_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the service update on the node group member
    #
    # @!attribute [rw] cache_cluster_id
    #   The cache cluster ID
    #   @return [String]
    #
    # @!attribute [rw] cache_node_id
    #   The node ID of the cache cluster
    #   @return [String]
    #
    # @!attribute [rw] node_update_status
    #   The update status of the node
    #   @return [String]
    #
    # @!attribute [rw] node_deletion_date
    #   The deletion date of the node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_start_date
    #   The start date of the update for a node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_end_date
    #   The end date of the update for a node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_initiated_by
    #   Reflects whether the update was initiated by the customer or
    #   automatically applied
    #   @return [String]
    #
    # @!attribute [rw] node_update_initiated_date
    #   The date when the update is triggered
    #   @return [Time]
    #
    # @!attribute [rw] node_update_status_modified_date
    #   The date when the NodeUpdateStatus was last modified
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupMemberUpdateStatus AWS API Documentation
    #
    class NodeGroupMemberUpdateStatus < Struct.new(
      :cache_cluster_id,
      :cache_node_id,
      :node_update_status,
      :node_deletion_date,
      :node_update_start_date,
      :node_update_end_date,
      :node_update_initiated_by,
      :node_update_initiated_date,
      :node_update_status_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The node group specified by the `NodeGroupId` parameter could not be
    # found. Please verify that the node group exists and that you spelled
    # the `NodeGroupId` value correctly.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupNotFoundFault AWS API Documentation
    #
    class NodeGroupNotFoundFault < Aws::EmptyStructure; end

    # The status of the service update on the node group
    #
    # @!attribute [rw] node_group_id
    #   The ID of the node group
    #   @return [String]
    #
    # @!attribute [rw] node_group_member_update_status
    #   The status of the service update on the node group member
    #   @return [Array<Types::NodeGroupMemberUpdateStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupUpdateStatus AWS API Documentation
    #
    class NodeGroupUpdateStatus < Struct.new(
      :node_group_id,
      :node_group_member_update_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request cannot be processed because it would exceed the maximum
    # allowed number of node groups (shards) in a single replication group.
    # The default maximum is 90
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupsPerReplicationGroupQuotaExceededFault AWS API Documentation
    #
    class NodeGroupsPerReplicationGroupQuotaExceededFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of cache nodes in a single cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeQuotaForClusterExceededFault AWS API Documentation
    #
    class NodeQuotaForClusterExceededFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of cache nodes per customer.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeQuotaForCustomerExceededFault AWS API Documentation
    #
    class NodeQuotaForCustomerExceededFault < Aws::EmptyStructure; end

    # Represents an individual cache node in a snapshot of a cluster.
    #
    # @!attribute [rw] cache_cluster_id
    #   A unique identifier for the source cluster.
    #   @return [String]
    #
    # @!attribute [rw] node_group_id
    #   A unique identifier for the source node group (shard).
    #   @return [String]
    #
    # @!attribute [rw] cache_node_id
    #   The cache node identifier for the node in the source cluster.
    #   @return [String]
    #
    # @!attribute [rw] node_group_configuration
    #   The configuration for the source node group (shard).
    #   @return [Types::NodeGroupConfiguration]
    #
    # @!attribute [rw] cache_size
    #   The size of the cache on the source cache node.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_create_time
    #   The date and time when the cache node was created in the source
    #   cluster.
    #   @return [Time]
    #
    # @!attribute [rw] snapshot_create_time
    #   The date and time when the source node's metadata and cache data
    #   set was obtained for the snapshot.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeSnapshot AWS API Documentation
    #
    class NodeSnapshot < Struct.new(
      :cache_cluster_id,
      :node_group_id,
      :cache_node_id,
      :node_group_configuration,
      :cache_size,
      :cache_node_create_time,
      :snapshot_create_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a notification topic and its status. Notification topics are
    # used for publishing ElastiCache events to subscribers using Amazon
    # Simple Notification Service (SNS).
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) that identifies the topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_status
    #   The current state of the topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :topic_arn,
      :topic_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an individual setting that controls some aspect of
    # ElastiCache behavior.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The value of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The valid data type for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   The valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   Indicates whether (`true`) or not (`false`) the parameter can be
    #   modified. Some parameters have security or operational implications
    #   that prevent them from being changed.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_engine_version
    #   The earliest cache engine version to which the parameter can apply.
    #   @return [String]
    #
    # @!attribute [rw] change_type
    #   Indicates whether a change to the parameter is applied immediately
    #   or requires a reboot for the change to be applied. You can force a
    #   reboot or wait until the next maintenance window's reboot. For more
    #   information, see [Rebooting a Cluster][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.Rebooting.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :parameter_name,
      :parameter_value,
      :description,
      :source,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :minimum_engine_version,
      :change_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a name-value pair that is used to update the value of a
    # parameter.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The value of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ParameterNameValue AWS API Documentation
    #
    class ParameterNameValue < Struct.new(
      :parameter_name,
      :parameter_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log delivery configurations being modified
    #
    # @!attribute [rw] log_type
    #   Refers to [slow-log][1] or engine-log..
    #
    #
    #
    #   [1]: https://redis.io/commands/slowlog
    #   @return [String]
    #
    # @!attribute [rw] destination_type
    #   Returns the destination type, either CloudWatch Logs or Kinesis Data
    #   Firehose.
    #   @return [String]
    #
    # @!attribute [rw] destination_details
    #   Configuration details of either a CloudWatch Logs destination or
    #   Kinesis Data Firehose destination.
    #   @return [Types::DestinationDetails]
    #
    # @!attribute [rw] log_format
    #   Returns the log format, either JSON or TEXT
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/PendingLogDeliveryConfiguration AWS API Documentation
    #
    class PendingLogDeliveryConfiguration < Struct.new(
      :log_type,
      :destination_type,
      :destination_details,
      :log_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # A group of settings that are applied to the cluster in the future, or
    # that are currently being applied.
    #
    # @!attribute [rw] num_cache_nodes
    #   The new number of cache nodes for the cluster.
    #
    #   For clusters running Valkey or Redis OSS, this value must be 1. For
    #   clusters running Memcached, this value must be between 1 and 40.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_node_ids_to_remove
    #   A list of cache node IDs that are being removed (or will be removed)
    #   from the cluster. A node ID is a 4-digit numeric identifier (0001,
    #   0002, etc.).
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine_version
    #   The new cache engine version that the cluster runs.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type that this cluster or replication group is scaled
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] auth_token_status
    #   The auth token status
    #   @return [String]
    #
    # @!attribute [rw] log_delivery_configurations
    #   The log delivery configurations being modified
    #   @return [Array<Types::PendingLogDeliveryConfiguration>]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] transit_encryption_mode
    #   A setting that allows you to migrate your clients to use in-transit
    #   encryption, with no downtime.
    #   @return [String]
    #
    # @!attribute [rw] scale_config
    #   The scaling configuration changes that are pending for the Memcached
    #   cluster.
    #   @return [Types::ScaleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/PendingModifiedValues AWS API Documentation
    #
    class PendingModifiedValues < Struct.new(
      :num_cache_nodes,
      :cache_node_ids_to_remove,
      :engine_version,
      :cache_node_type,
      :auth_token_status,
      :log_delivery_configurations,
      :transit_encryption_enabled,
      :transit_encryption_mode,
      :scale_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update action that has been processed for the corresponding apply/stop
    # request
    #
    # @!attribute [rw] replication_group_id
    #   The ID of the replication group
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   The ID of the cache cluster
    #   @return [String]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] update_action_status
    #   The status of the update action on the Valkey or Redis OSS cluster
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ProcessedUpdateAction AWS API Documentation
    #
    class ProcessedUpdateAction < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :service_update_name,
      :update_action_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `PurchaseReservedCacheNodesOffering`
    # operation.
    #
    # @!attribute [rw] reserved_cache_nodes_offering_id
    #   The ID of the reserved cache node offering to purchase.
    #
    #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
    #   @return [String]
    #
    # @!attribute [rw] reserved_cache_node_id
    #   A customer-specified identifier to track this reservation.
    #
    #   <note markdown="1"> The Reserved Cache Node ID is an unique customer-specified
    #   identifier to track this reservation. If this parameter is not
    #   specified, ElastiCache automatically generates an identifier for the
    #   reservation.
    #
    #    </note>
    #
    #   Example: myreservationID
    #   @return [String]
    #
    # @!attribute [rw] cache_node_count
    #   The number of cache node instances to reserve.
    #
    #   Default: `1`
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/PurchaseReservedCacheNodesOfferingMessage AWS API Documentation
    #
    class PurchaseReservedCacheNodesOfferingMessage < Struct.new(
      :reserved_cache_nodes_offering_id,
      :reserved_cache_node_id,
      :cache_node_count,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reserved_cache_node
    #   Represents the output of a `PurchaseReservedCacheNodesOffering`
    #   operation.
    #   @return [Types::ReservedCacheNode]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/PurchaseReservedCacheNodesOfferingResult AWS API Documentation
    #
    class PurchaseReservedCacheNodesOfferingResult < Struct.new(
      :reserved_cache_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group_id
    #   The name of the Global datastore
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   If `True`, redistribution is applied immediately.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RebalanceSlotsInGlobalReplicationGroupMessage AWS API Documentation
    #
    class RebalanceSlotsInGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :apply_immediately)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different Amazon region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RebalanceSlotsInGlobalReplicationGroupResult AWS API Documentation
    #
    class RebalanceSlotsInGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `RebootCacheCluster` operation.
    #
    # @!attribute [rw] cache_cluster_id
    #   The cluster identifier. This parameter is stored as a lowercase
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_ids_to_reboot
    #   A list of cache node IDs to reboot. A node ID is a numeric
    #   identifier (0001, 0002, etc.). To reboot an entire cluster, specify
    #   all of the cache node IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RebootCacheClusterMessage AWS API Documentation
    #
    class RebootCacheClusterMessage < Struct.new(
      :cache_cluster_id,
      :cache_node_ids_to_reboot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_cluster
    #   Contains all of the attributes of a specific cluster.
    #   @return [Types::CacheCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RebootCacheClusterResult AWS API Documentation
    #
    class RebootCacheClusterResult < Struct.new(
      :cache_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the specific price and frequency of a recurring charges for a
    # reserved cache node, or for a reserved cache node offering.
    #
    # @!attribute [rw] recurring_charge_amount
    #   The monetary amount of the recurring charge.
    #   @return [Float]
    #
    # @!attribute [rw] recurring_charge_frequency
    #   The frequency of the recurring charge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RecurringCharge AWS API Documentation
    #
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of the replication groups
    #
    # @!attribute [rw] replication_group_id
    #   The name of the secondary cluster
    #   @return [String]
    #
    # @!attribute [rw] replication_group_region
    #   The Amazon region where the cluster is stored
    #   @return [String]
    #
    # @!attribute [rw] resharding_configuration
    #   A list of `PreferredAvailabilityZones` objects that specifies the
    #   configuration of a node group in the resharded cluster.
    #   @return [Array<Types::ReshardingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RegionalConfiguration AWS API Documentation
    #
    class RegionalConfiguration < Struct.new(
      :replication_group_id,
      :replication_group_region,
      :resharding_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `RemoveTagsFromResource` operation.
    #
    # @!attribute [rw] resource_name
    #   The Amazon Resource Name (ARN) of the resource from which you want
    #   the tags removed, for example
    #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
    #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and Amazon Service Namespaces][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of `TagKeys` identifying the tags you want removed from the
    #   named resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RemoveTagsFromResourceMessage AWS API Documentation
    #
    class RemoveTagsFromResourceMessage < Struct.new(
      :resource_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all of the attributes of a specific Valkey or Redis OSS
    # replication group.
    #
    # @!attribute [rw] replication_group_id
    #   The identifier for the replication group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The user supplied description of the replication group.
    #   @return [String]
    #
    # @!attribute [rw] global_replication_group_info
    #   The name of the Global datastore and role of this replication group
    #   in the Global datastore.
    #   @return [Types::GlobalReplicationGroupInfo]
    #
    # @!attribute [rw] status
    #   The current state of this replication group - `creating`,
    #   `available`, `modifying`, `deleting`, `create-failed`,
    #   `snapshotting`.
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   A group of settings to be applied to the replication group, either
    #   immediately or during the next maintenance window.
    #   @return [Types::ReplicationGroupPendingModifiedValues]
    #
    # @!attribute [rw] member_clusters
    #   The names of all the cache clusters that are part of this
    #   replication group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] node_groups
    #   A list of node groups in this replication group. For Valkey or Redis
    #   OSS (cluster mode disabled) replication groups, this is a
    #   single-element list. For Valkey or Redis OSS (cluster mode enabled)
    #   replication groups, the list contains an entry for each node group
    #   (shard).
    #   @return [Array<Types::NodeGroup>]
    #
    # @!attribute [rw] snapshotting_cluster_id
    #   The cluster ID that is used as the daily snapshot source for the
    #   replication group.
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover
    #   Indicates the status of automatic failover for this Valkey or Redis
    #   OSS replication group.
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   A flag indicating if you have Multi-AZ enabled to enhance fault
    #   tolerance. For more information, see [Minimizing Downtime:
    #   Multi-AZ][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/AutoFailover.html
    #   @return [String]
    #
    # @!attribute [rw] configuration_endpoint
    #   The configuration endpoint for this replication group. Use the
    #   configuration endpoint to connect to this replication group.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic cluster
    #   snapshots before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    #   If the value of `SnapshotRetentionLimit` is set to zero (0), backups
    #   are turned off.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of your node group (shard).
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cluster_enabled
    #   A flag indicating whether or not this replication group is cluster
    #   enabled; i.e., whether its data can be partitioned across multiple
    #   shards (API/CLI: node groups).
    #
    #   Valid values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_node_type
    #   The name of the compute and memory capacity node type for each node
    #   in the replication group.
    #   @return [String]
    #
    # @!attribute [rw] auth_token_enabled
    #   A flag that enables using an `AuthToken` (password) when issuing
    #   Valkey or Redis OSS commands.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] auth_token_last_modified_date
    #   The date the auth token was last modified
    #   @return [Time]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to `true`.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using Redis OSS version `3.2.6`, `4.x` or later.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] at_rest_encryption_enabled
    #   A flag that enables encryption at-rest when set to `true`.
    #
    #   You cannot modify the value of `AtRestEncryptionEnabled` after the
    #   cluster is created. To enable encryption at-rest on a cluster you
    #   must set `AtRestEncryptionEnabled` to `true` when you create a
    #   cluster.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using Redis OSS version `3.2.6`, `4.x` or later.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] member_clusters_outpost_arns
    #   The outpost ARNs of the replication group's member clusters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the disk in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the replication group.
    #   @return [String]
    #
    # @!attribute [rw] user_group_ids
    #   The ID of the user group associated to the replication group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_delivery_configurations
    #   Returns the destination, format and type of the logs.
    #   @return [Array<Types::LogDeliveryConfiguration>]
    #
    # @!attribute [rw] replication_group_create_time
    #   The date and time when the cluster was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_tiering
    #   Enables data tiering. Data tiering is only supported for replication
    #   groups using the r6gd node type. This parameter must be set to true
    #   when using r6gd nodes. For more information, see [Data tiering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/data-tiering.html
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   If you are running Valkey 7.2 and above, or Redis OSS engine version
    #   6.0 and above, set this parameter to yes if you want to opt-in to
    #   the next auto minor version upgrade campaign. This parameter is
    #   disabled for previous versions.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_type
    #   Must be either `ipv4` \| `ipv6` \| `dual_stack`. IPv6 is supported
    #   for workloads using Valkey 7.2 and above, Redis OSS engine version
    #   6.2 to 7.1 or Memcached engine version 1.6.6 and above on all
    #   instances built on the [Nitro system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [String]
    #
    # @!attribute [rw] ip_discovery
    #   The network type you choose when modifying a cluster, either `ipv4`
    #   \| `ipv6`. IPv6 is supported for workloads using Valkey 7.2 and
    #   above, Redis OSS engine version 6.2 to 7.1 or Memcached engine
    #   version 1.6.6 and above on all instances built on the [Nitro
    #   system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption_mode
    #   A setting that allows you to migrate your clients to use in-transit
    #   encryption, with no downtime.
    #   @return [String]
    #
    # @!attribute [rw] cluster_mode
    #   Enabled or Disabled. To modify cluster mode from Disabled to
    #   Enabled, you must first set the cluster mode to Compatible.
    #   Compatible mode allows your Valkey or Redis OSS clients to connect
    #   using both cluster mode enabled and cluster mode disabled. After you
    #   migrate all Valkey or Redis OSS clients to use cluster mode enabled,
    #   you can then complete cluster mode configuration and set the cluster
    #   mode to Enabled.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The engine used in a replication group. The options are redis,
    #   memcached or valkey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroup AWS API Documentation
    #
    class ReplicationGroup < Struct.new(
      :replication_group_id,
      :description,
      :global_replication_group_info,
      :status,
      :pending_modified_values,
      :member_clusters,
      :node_groups,
      :snapshotting_cluster_id,
      :automatic_failover,
      :multi_az,
      :configuration_endpoint,
      :snapshot_retention_limit,
      :snapshot_window,
      :cluster_enabled,
      :cache_node_type,
      :auth_token_enabled,
      :auth_token_last_modified_date,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :member_clusters_outpost_arns,
      :kms_key_id,
      :arn,
      :user_group_ids,
      :log_delivery_configurations,
      :replication_group_create_time,
      :data_tiering,
      :auto_minor_version_upgrade,
      :network_type,
      :ip_discovery,
      :transit_encryption_mode,
      :cluster_mode,
      :engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified replication group already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupAlreadyExistsFault AWS API Documentation
    #
    class ReplicationGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # The targeted replication group is not available.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupAlreadyUnderMigrationFault AWS API Documentation
    #
    class ReplicationGroupAlreadyUnderMigrationFault < Aws::EmptyStructure; end

    # Represents the output of a `DescribeReplicationGroups` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] replication_groups
    #   A list of replication groups. Each item in the list contains
    #   detailed information about one replication group.
    #   @return [Array<Types::ReplicationGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupMessage AWS API Documentation
    #
    class ReplicationGroupMessage < Struct.new(
      :marker,
      :replication_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified replication group does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupNotFoundFault AWS API Documentation
    #
    class ReplicationGroupNotFoundFault < Aws::EmptyStructure; end

    # The designated replication group is not available for data migration.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupNotUnderMigrationFault AWS API Documentation
    #
    class ReplicationGroupNotUnderMigrationFault < Aws::EmptyStructure; end

    # The settings to be applied to the Valkey or Redis OSS replication
    # group, either immediately or during the next maintenance window.
    #
    # @!attribute [rw] primary_cluster_id
    #   The primary cluster ID that is applied immediately (if
    #   `--apply-immediately` was specified), or during the next maintenance
    #   window.
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover_status
    #   Indicates the status of automatic failover for this Valkey or Redis
    #   OSS replication group.
    #   @return [String]
    #
    # @!attribute [rw] resharding
    #   The status of an online resharding operation.
    #   @return [Types::ReshardingStatus]
    #
    # @!attribute [rw] auth_token_status
    #   The auth token status
    #   @return [String]
    #
    # @!attribute [rw] user_groups
    #   The user group being modified.
    #   @return [Types::UserGroupsUpdateStatus]
    #
    # @!attribute [rw] log_delivery_configurations
    #   The log delivery configurations being modified
    #   @return [Array<Types::PendingLogDeliveryConfiguration>]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] transit_encryption_mode
    #   A setting that allows you to migrate your clients to use in-transit
    #   encryption, with no downtime.
    #   @return [String]
    #
    # @!attribute [rw] cluster_mode
    #   Enabled or Disabled. To modify cluster mode from Disabled to
    #   Enabled, you must first set the cluster mode to Compatible.
    #   Compatible mode allows your Valkey or Redis OSS clients to connect
    #   using both cluster mode enabled and cluster mode disabled. After you
    #   migrate all Valkey or Redis OSS clients to use cluster mode enabled,
    #   you can then complete cluster mode configuration and set the cluster
    #   mode to Enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupPendingModifiedValues AWS API Documentation
    #
    class ReplicationGroupPendingModifiedValues < Struct.new(
      :primary_cluster_id,
      :automatic_failover_status,
      :resharding,
      :auth_token_status,
      :user_groups,
      :log_delivery_configurations,
      :transit_encryption_enabled,
      :transit_encryption_mode,
      :cluster_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PurchaseReservedCacheNodesOffering`
    # operation.
    #
    # @!attribute [rw] reserved_cache_node_id
    #   The unique identifier for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_cache_nodes_offering_id
    #   The offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type for the reserved cache nodes.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **M7g node types**: `cache.m7g.large`, `cache.m7g.xlarge`,
    #       `cache.m7g.2xlarge`, `cache.m7g.4xlarge`, `cache.m7g.8xlarge`,
    #       `cache.m7g.12xlarge`, `cache.m7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **M6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.m6g.large`, `cache.m6g.xlarge`, `cache.m6g.2xlarge`,
    #       `cache.m6g.4xlarge`, `cache.m6g.8xlarge`, `cache.m6g.12xlarge`,
    #       `cache.m6g.16xlarge`
    #
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T4g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and Memcached engine version 1.5.16 onward):
    #       `cache.t4g.micro`, `cache.t4g.small`, `cache.t4g.medium`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R7g node types**: `cache.r7g.large`, `cache.r7g.xlarge`,
    #       `cache.r7g.2xlarge`, `cache.r7g.4xlarge`, `cache.r7g.8xlarge`,
    #       `cache.r7g.12xlarge`, `cache.r7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **R6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.r6g.large`, `cache.r6g.xlarge`, `cache.r6g.2xlarge`,
    #       `cache.r6g.4xlarge`, `cache.r6g.8xlarge`, `cache.r6g.12xlarge`,
    #       `cache.r6g.16xlarge`
    #
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Valkey or Redis OSS append-only files (AOF) are not supported for
    #     T1 or T2 instances.
    #
    #   * Valkey or Redis OSS Multi-AZ with automatic failover is not
    #     supported on T1 instances.
    #
    #   * The configuration variables `appendonly` and `appendfsync` are not
    #     supported on Valkey, or on Redis OSS version 2.8.22 and later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the reservation started.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The duration of the reservation in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The fixed price charged for this reserved cache node.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The hourly price charged for this reserved cache node.
    #   @return [Float]
    #
    # @!attribute [rw] cache_node_count
    #   The number of cache nodes that have been reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] product_description
    #   The description of the reserved cache node.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type of this reserved cache node.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the reserved cache node.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring price charged to run this reserved cache node.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @!attribute [rw] reservation_arn
    #   The Amazon Resource Name (ARN) of the reserved cache node.
    #
    #   Example:
    #   `arn:aws:elasticache:us-east-1:123456789012:reserved-instance:ri-2017-03-27-08-33-25-582`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNode AWS API Documentation
    #
    class ReservedCacheNode < Struct.new(
      :reserved_cache_node_id,
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :cache_node_count,
      :product_description,
      :offering_type,
      :state,
      :recurring_charges,
      :reservation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You already have a reservation with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodeAlreadyExistsFault AWS API Documentation
    #
    class ReservedCacheNodeAlreadyExistsFault < Aws::EmptyStructure; end

    # Represents the output of a `DescribeReservedCacheNodes` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] reserved_cache_nodes
    #   A list of reserved cache nodes. Each element in the list contains
    #   detailed information about one node.
    #   @return [Array<Types::ReservedCacheNode>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodeMessage AWS API Documentation
    #
    class ReservedCacheNodeMessage < Struct.new(
      :marker,
      :reserved_cache_nodes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested reserved cache node was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodeNotFoundFault AWS API Documentation
    #
    class ReservedCacheNodeNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the user's
    # cache node quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodeQuotaExceededFault AWS API Documentation
    #
    class ReservedCacheNodeQuotaExceededFault < Aws::EmptyStructure; end

    # Describes all of the attributes of a reserved cache node offering.
    #
    # @!attribute [rw] reserved_cache_nodes_offering_id
    #   A unique identifier for the reserved cache node offering.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type for the reserved cache node.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **M7g node types**: `cache.m7g.large`, `cache.m7g.xlarge`,
    #       `cache.m7g.2xlarge`, `cache.m7g.4xlarge`, `cache.m7g.8xlarge`,
    #       `cache.m7g.12xlarge`, `cache.m7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **M6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.m6g.large`, `cache.m6g.xlarge`, `cache.m6g.2xlarge`,
    #       `cache.m6g.4xlarge`, `cache.m6g.8xlarge`, `cache.m6g.12xlarge`,
    #       `cache.m6g.16xlarge`
    #
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T4g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and Memcached engine version 1.5.16 onward):
    #       `cache.t4g.micro`, `cache.t4g.small`, `cache.t4g.medium`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R7g node types**: `cache.r7g.large`, `cache.r7g.xlarge`,
    #       `cache.r7g.2xlarge`, `cache.r7g.4xlarge`, `cache.r7g.8xlarge`,
    #       `cache.r7g.12xlarge`, `cache.r7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **R6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.r6g.large`, `cache.r6g.xlarge`, `cache.r6g.2xlarge`,
    #       `cache.r6g.4xlarge`, `cache.r6g.8xlarge`, `cache.r6g.12xlarge`,
    #       `cache.r6g.16xlarge`
    #
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Valkey or Redis OSS append-only files (AOF) are not supported for
    #     T1 or T2 instances.
    #
    #   * Valkey or Redis OSS Multi-AZ with automatic failover is not
    #     supported on T1 instances.
    #
    #   * The configuration variables `appendonly` and `appendfsync` are not
    #     supported on Valkey, or on Redis OSS version 2.8.22 and later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the offering. in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The fixed price charged for this offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The hourly price charged for this offering.
    #   @return [Float]
    #
    # @!attribute [rw] product_description
    #   The cache engine used by the offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring price charged to run this reserved cache node.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodesOffering AWS API Documentation
    #
    class ReservedCacheNodesOffering < Struct.new(
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :duration,
      :fixed_price,
      :usage_price,
      :product_description,
      :offering_type,
      :recurring_charges)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeReservedCacheNodesOfferings`
    # operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] reserved_cache_nodes_offerings
    #   A list of reserved cache node offerings. Each element in the list
    #   contains detailed information about one offering.
    #   @return [Array<Types::ReservedCacheNodesOffering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodesOfferingMessage AWS API Documentation
    #
    class ReservedCacheNodesOfferingMessage < Struct.new(
      :marker,
      :reserved_cache_nodes_offerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested cache node offering does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodesOfferingNotFoundFault AWS API Documentation
    #
    class ReservedCacheNodesOfferingNotFoundFault < Aws::EmptyStructure; end

    # Represents the input of a `ResetCacheParameterGroup` operation.
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to reset.
    #   @return [String]
    #
    # @!attribute [rw] reset_all_parameters
    #   If `true`, all parameters in the cache parameter group are reset to
    #   their default values. If `false`, only the parameters listed by
    #   `ParameterNameValues` are reset to their default values.
    #
    #   Valid values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] parameter_name_values
    #   An array of parameter names to reset to their default values. If
    #   `ResetAllParameters` is `true`, do not use `ParameterNameValues`. If
    #   `ResetAllParameters` is `false`, you must specify the name of at
    #   least one parameter to reset.
    #   @return [Array<Types::ParameterNameValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ResetCacheParameterGroupMessage AWS API Documentation
    #
    class ResetCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name,
      :reset_all_parameters,
      :parameter_name_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of `PreferredAvailabilityZones` objects that specifies the
    # configuration of a node group in the resharded cluster.
    #
    # @!attribute [rw] node_group_id
    #   Either the ElastiCache supplied 4-digit id or a user supplied id for
    #   the node group these configuration values apply to.
    #   @return [String]
    #
    # @!attribute [rw] preferred_availability_zones
    #   A list of preferred availability zones for the nodes in this
    #   cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReshardingConfiguration AWS API Documentation
    #
    class ReshardingConfiguration < Struct.new(
      :node_group_id,
      :preferred_availability_zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of an online resharding operation.
    #
    # @!attribute [rw] slot_migration
    #   Represents the progress of an online resharding operation.
    #   @return [Types::SlotMigration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReshardingStatus AWS API Documentation
    #
    class ReshardingStatus < Struct.new(
      :slot_migration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `RevokeCacheSecurityGroupIngress` operation.
    #
    # @!attribute [rw] cache_security_group_name
    #   The name of the cache security group to revoke ingress from.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   The name of the Amazon EC2 security group to revoke access from.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   The Amazon account number of the Amazon EC2 security group owner.
    #   Note that this is not the same thing as an Amazon access key ID -
    #   you must provide a valid Amazon account number for this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RevokeCacheSecurityGroupIngressMessage AWS API Documentation
    #
    class RevokeCacheSecurityGroupIngressMessage < Struct.new(
      :cache_security_group_name,
      :ec2_security_group_name,
      :ec2_security_group_owner_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_security_group
    #   Represents the output of one of the following operations:
    #
    #   * `AuthorizeCacheSecurityGroupIngress`
    #
    #   * `CreateCacheSecurityGroup`
    #
    #   * `RevokeCacheSecurityGroupIngress`
    #   @return [Types::CacheSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RevokeCacheSecurityGroupIngressResult AWS API Documentation
    #
    class RevokeCacheSecurityGroupIngressResult < Struct.new(
      :cache_security_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for horizontal or vertical scaling operations
    # on Memcached clusters.
    #
    # @!attribute [rw] scale_percentage
    #   The percentage by which to scale the Memcached cluster, either
    #   horizontally by adding nodes or vertically by increasing resources.
    #   @return [Integer]
    #
    # @!attribute [rw] scale_interval_minutes
    #   The time interval in seconds between scaling operations when
    #   performing gradual scaling for a Memcached cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ScaleConfig AWS API Documentation
    #
    class ScaleConfig < Struct.new(
      :scale_percentage,
      :scale_interval_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single cache security group and its status.
    #
    # @!attribute [rw] security_group_id
    #   The identifier of the cache security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the cache security group membership. The status
    #   changes whenever a cache security group is modified, or when the
    #   cache security groups assigned to a cluster are modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SecurityGroupMembership AWS API Documentation
    #
    class SecurityGroupMembership < Struct.new(
      :security_group_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource representing a serverless cache.
    #
    # @!attribute [rw] serverless_cache_name
    #   The unique identifier of the serverless cache.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the serverless cache.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   When the serverless cache was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the serverless cache. The allowed values are
    #   CREATING, AVAILABLE, DELETING, CREATE-FAILED and MODIFYING.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The engine the serverless cache is compatible with.
    #   @return [String]
    #
    # @!attribute [rw] major_engine_version
    #   The version number of the engine the serverless cache is compatible
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] full_engine_version
    #   The name and version number of the engine the serverless cache is
    #   compatible with.
    #   @return [String]
    #
    # @!attribute [rw] cache_usage_limits
    #   The cache usage limit for the serverless cache.
    #   @return [Types::CacheUsageLimits]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the Amazon Web Services Key Management Service (KMS) key
    #   that is used to encrypt data at rest in the serverless cache.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of the EC2 security groups associated with the serverless
    #   cache.
    #   @return [Array<String>]
    #
    # @!attribute [rw] endpoint
    #   Represents the information required for client programs to connect
    #   to a cache node. This value is read-only.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] reader_endpoint
    #   Represents the information required for client programs to connect
    #   to a cache node. This value is read-only.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the serverless cache.
    #   @return [String]
    #
    # @!attribute [rw] user_group_id
    #   The identifier of the user group associated with the serverless
    #   cache. Available for Valkey and Redis OSS only. Default is NULL.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   If no subnet IDs are given and your VPC is in us-west-1, then
    #   ElastiCache will select 2 default subnets across AZs in your VPC.
    #   For all other Regions, if no subnet IDs are given then ElastiCache
    #   will select 3 default subnets across AZs in your default VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The current setting for the number of serverless cache snapshots the
    #   system will retain. Available for Valkey, Redis OSS and Serverless
    #   Memcached only.
    #   @return [Integer]
    #
    # @!attribute [rw] daily_snapshot_time
    #   The daily time that a cache snapshot will be created. Default is
    #   NULL, i.e. snapshots will not be created at a specific time on a
    #   daily basis. Available for Valkey, Redis OSS and Serverless
    #   Memcached only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServerlessCache AWS API Documentation
    #
    class ServerlessCache < Struct.new(
      :serverless_cache_name,
      :description,
      :create_time,
      :status,
      :engine,
      :major_engine_version,
      :full_engine_version,
      :cache_usage_limits,
      :kms_key_id,
      :security_group_ids,
      :endpoint,
      :reader_endpoint,
      :arn,
      :user_group_id,
      :subnet_ids,
      :snapshot_retention_limit,
      :daily_snapshot_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A serverless cache with this name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServerlessCacheAlreadyExistsFault AWS API Documentation
    #
    class ServerlessCacheAlreadyExistsFault < Aws::EmptyStructure; end

    # The configuration settings for a specific serverless cache.
    #
    # @!attribute [rw] serverless_cache_name
    #   The identifier of a serverless cache.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The engine that the serverless cache is configured with.
    #   @return [String]
    #
    # @!attribute [rw] major_engine_version
    #   The engine version number that the serverless cache is configured
    #   with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServerlessCacheConfiguration AWS API Documentation
    #
    class ServerlessCacheConfiguration < Struct.new(
      :serverless_cache_name,
      :engine,
      :major_engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The serverless cache was not found or does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServerlessCacheNotFoundFault AWS API Documentation
    #
    class ServerlessCacheNotFoundFault < Aws::EmptyStructure; end

    # The number of serverless caches exceeds the customer quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServerlessCacheQuotaForCustomerExceededFault AWS API Documentation
    #
    class ServerlessCacheQuotaForCustomerExceededFault < Aws::EmptyStructure; end

    # The resource representing a serverless cache snapshot. Available for
    # Valkey, Redis OSS and Serverless Memcached only.
    #
    # @!attribute [rw] serverless_cache_snapshot_name
    #   The identifier of a serverless cache snapshot. Available for Valkey,
    #   Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of a serverless cache snapshot.
    #   Available for Valkey, Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the Amazon Web Services Key Management Service (KMS) key
    #   of a serverless cache snapshot. Available for Valkey, Redis OSS and
    #   Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of snapshot of serverless cache. Available for Valkey,
    #   Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the serverless cache. Available for Valkey,
    #   Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The date and time that the source serverless cache's metadata and
    #   cache data set was obtained for the snapshot. Available for Valkey,
    #   Redis OSS and Serverless Memcached only.
    #   @return [Time]
    #
    # @!attribute [rw] expiry_time
    #   The time that the serverless cache snapshot will expire. Available
    #   for Valkey, Redis OSS and Serverless Memcached only.
    #   @return [Time]
    #
    # @!attribute [rw] bytes_used_for_cache
    #   The total size of a serverless cache snapshot, in bytes. Available
    #   for Valkey, Redis OSS and Serverless Memcached only.
    #   @return [String]
    #
    # @!attribute [rw] serverless_cache_configuration
    #   The configuration of the serverless cache, at the time the snapshot
    #   was taken. Available for Valkey, Redis OSS and Serverless Memcached
    #   only.
    #   @return [Types::ServerlessCacheConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServerlessCacheSnapshot AWS API Documentation
    #
    class ServerlessCacheSnapshot < Struct.new(
      :serverless_cache_snapshot_name,
      :arn,
      :kms_key_id,
      :snapshot_type,
      :status,
      :create_time,
      :expiry_time,
      :bytes_used_for_cache,
      :serverless_cache_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A serverless cache snapshot with this name already exists. Available
    # for Valkey, Redis OSS and Serverless Memcached only.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServerlessCacheSnapshotAlreadyExistsFault AWS API Documentation
    #
    class ServerlessCacheSnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # This serverless cache snapshot could not be found or does not exist.
    # Available for Valkey, Redis OSS and Serverless Memcached only.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServerlessCacheSnapshotNotFoundFault AWS API Documentation
    #
    class ServerlessCacheSnapshotNotFoundFault < Aws::EmptyStructure; end

    # The number of serverless cache snapshots exceeds the customer snapshot
    # quota. Available for Valkey, Redis OSS and Serverless Memcached only.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServerlessCacheSnapshotQuotaExceededFault AWS API Documentation
    #
    class ServerlessCacheSnapshotQuotaExceededFault < Aws::EmptyStructure; end

    # The specified service linked role (SLR) was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServiceLinkedRoleNotFoundFault AWS API Documentation
    #
    class ServiceLinkedRoleNotFoundFault < Aws::EmptyStructure; end

    # An update that you can apply to your Valkey or Redis OSS clusters.
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_release_date
    #   The date when the service update is initially available
    #   @return [Time]
    #
    # @!attribute [rw] service_update_end_date
    #   The date after which the service update is no longer available
    #   @return [Time]
    #
    # @!attribute [rw] service_update_severity
    #   The severity of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_recommended_apply_by_date
    #   The recommendend date to apply the service update in order to ensure
    #   compliance. For information on compliance, see [Self-Service
    #   Security Updates for Compliance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/elasticache-compliance.html#elasticache-compliance-self-service
    #   @return [Time]
    #
    # @!attribute [rw] service_update_status
    #   The status of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_description
    #   Provides details of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_type
    #   Reflects the nature of the service update
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The Elasticache engine to which the update applies. Either Valkey,
    #   Redis OSS or Memcached.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The Elasticache engine version to which the update applies. Either
    #   Valkey, Redis OSS or Memcached engine version.
    #   @return [String]
    #
    # @!attribute [rw] auto_update_after_recommended_apply_by_date
    #   Indicates whether the service update will be automatically applied
    #   once the recommended apply-by date has expired.
    #   @return [Boolean]
    #
    # @!attribute [rw] estimated_update_time
    #   The estimated length of time the service update will take
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServiceUpdate AWS API Documentation
    #
    class ServiceUpdate < Struct.new(
      :service_update_name,
      :service_update_release_date,
      :service_update_end_date,
      :service_update_severity,
      :service_update_recommended_apply_by_date,
      :service_update_status,
      :service_update_description,
      :service_update_type,
      :engine,
      :engine_version,
      :auto_update_after_recommended_apply_by_date,
      :estimated_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service update doesn't exist
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServiceUpdateNotFoundFault AWS API Documentation
    #
    class ServiceUpdateNotFoundFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] service_updates
    #   A list of service updates
    #   @return [Array<Types::ServiceUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServiceUpdatesMessage AWS API Documentation
    #
    class ServiceUpdatesMessage < Struct.new(
      :marker,
      :service_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the progress of an online resharding operation.
    #
    # @!attribute [rw] progress_percentage
    #   The percentage of the slot migration that is complete.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SlotMigration AWS API Documentation
    #
    class SlotMigration < Struct.new(
      :progress_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a copy of an entire Valkey or Redis OSS cluster as of the
    # time when the snapshot was taken.
    #
    # @!attribute [rw] snapshot_name
    #   The name of a snapshot. For an automatic snapshot, the name is
    #   system-generated. For a manual snapshot, this is the user-provided
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_id
    #   The unique identifier of the source replication group.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_description
    #   A description of the source replication group.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   The user-supplied identifier of the source cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_status
    #   The status of the snapshot. Valid values: `creating` \| `available`
    #   \| `restoring` \| `copying` \| `deleting`.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_source
    #   Indicates whether the snapshot is from an automatic backup
    #   (`automated`) or was created manually (`manual`).
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The name of the compute and memory capacity node type for the source
    #   cluster.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **M7g node types**: `cache.m7g.large`, `cache.m7g.xlarge`,
    #       `cache.m7g.2xlarge`, `cache.m7g.4xlarge`, `cache.m7g.8xlarge`,
    #       `cache.m7g.12xlarge`, `cache.m7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **M6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.m6g.large`, `cache.m6g.xlarge`, `cache.m6g.2xlarge`,
    #       `cache.m6g.4xlarge`, `cache.m6g.8xlarge`, `cache.m6g.12xlarge`,
    #       `cache.m6g.16xlarge`
    #
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T4g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and Memcached engine version 1.5.16 onward):
    #       `cache.t4g.micro`, `cache.t4g.small`, `cache.t4g.medium`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R7g node types**: `cache.r7g.large`, `cache.r7g.xlarge`,
    #       `cache.r7g.2xlarge`, `cache.r7g.4xlarge`, `cache.r7g.8xlarge`,
    #       `cache.r7g.12xlarge`, `cache.r7g.16xlarge`
    #
    #       <note markdown="1"> For region availability, see [Supported Node Types][1]
    #
    #        </note>
    #
    #       **R6g node types** (available only for Redis OSS engine version
    #       5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #       `cache.r6g.large`, `cache.r6g.xlarge`, `cache.r6g.2xlarge`,
    #       `cache.r6g.4xlarge`, `cache.r6g.8xlarge`, `cache.r6g.12xlarge`,
    #       `cache.r6g.16xlarge`
    #
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended. Existing clusters are
    #       still supported but creation of new clusters is not supported
    #       for these types.)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Valkey or Redis OSS append-only files (AOF) are not supported for
    #     T1 or T2 instances.
    #
    #   * Valkey or Redis OSS Multi-AZ with automatic failover is not
    #     supported on T1 instances.
    #
    #   * The configuration variables `appendonly` and `appendfsync` are not
    #     supported on Valkey, or on Redis OSS version 2.8.22 and later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the cache engine (`memcached` or `redis`) used by the
    #   source cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the cache engine version that is used by the source
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] num_cache_nodes
    #   The number of cache nodes in the source cluster.
    #
    #   For clusters running Valkey or Redis OSS, this value must be 1. For
    #   clusters running Memcached, this value must be between 1 and 40.
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_availability_zone
    #   The name of the Availability Zone in which the source cluster is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] preferred_outpost_arn
    #   The ARN (Amazon Resource Name) of the preferred outpost.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_create_time
    #   The date and time when the source cluster was created.
    #   @return [Time]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) for the topic used by the source
    #   cluster for publishing notifications.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number used by each cache nodes in the source cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The cache parameter group that is associated with the source
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group associated with the source
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The Amazon Virtual Private Cloud identifier (VPC ID) of the cache
    #   subnet group for the source cluster.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #    If you are running Valkey 7.2 and above or Redis OSS engine version
    #   6.0 and above, set this parameter to yes if you want to opt-in to
    #   the next auto minor version upgrade campaign. This parameter is
    #   disabled for previous versions. 
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   For an automatic snapshot, the number of days for which ElastiCache
    #   retains the snapshot before deleting it.
    #
    #   For manual snapshots, this field reflects the
    #   `SnapshotRetentionLimit` for the source cluster when the snapshot
    #   was created. This field is otherwise ignored: Manual snapshots do
    #   not expire, and can only be deleted using the `DeleteSnapshot`
    #   operation.
    #
    #   **Important** If the value of SnapshotRetentionLimit is set to zero
    #   (0), backups are turned off.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range during which ElastiCache takes daily snapshots
    #   of the source cluster.
    #   @return [String]
    #
    # @!attribute [rw] num_node_groups
    #   The number of node groups (shards) in this snapshot. When restoring
    #   from a snapshot, the number of node groups (shards) in the snapshot
    #   and in the restored replication group must be the same.
    #   @return [Integer]
    #
    # @!attribute [rw] automatic_failover
    #   Indicates the status of automatic failover for the source Valkey or
    #   Redis OSS replication group.
    #   @return [String]
    #
    # @!attribute [rw] node_snapshots
    #   A list of the cache nodes in the source cluster.
    #   @return [Array<Types::NodeSnapshot>]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] data_tiering
    #   Enables data tiering. Data tiering is only supported for replication
    #   groups using the r6gd node type. This parameter must be set to true
    #   when using r6gd nodes. For more information, see [Data tiering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/data-tiering.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Snapshot AWS API Documentation
    #
    class Snapshot < Struct.new(
      :snapshot_name,
      :replication_group_id,
      :replication_group_description,
      :cache_cluster_id,
      :snapshot_status,
      :snapshot_source,
      :cache_node_type,
      :engine,
      :engine_version,
      :num_cache_nodes,
      :preferred_availability_zone,
      :preferred_outpost_arn,
      :cache_cluster_create_time,
      :preferred_maintenance_window,
      :topic_arn,
      :port,
      :cache_parameter_group_name,
      :cache_subnet_group_name,
      :vpc_id,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :num_node_groups,
      :automatic_failover,
      :node_snapshots,
      :kms_key_id,
      :arn,
      :data_tiering)
      SENSITIVE = []
      include Aws::Structure
    end

    # You already have a snapshot with the given name.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SnapshotAlreadyExistsFault AWS API Documentation
    #
    class SnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # You attempted one of the following operations:
    #
    # * Creating a snapshot of a Valkey or Redis OSS cluster running on a
    #   `cache.t1.micro` cache node.
    #
    # * Creating a snapshot of a cluster that is running Memcached rather
    #   than Valkey or Redis OSS.
    #
    # Neither of these are supported by ElastiCache.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SnapshotFeatureNotSupportedFault AWS API Documentation
    #
    class SnapshotFeatureNotSupportedFault < Aws::EmptyStructure; end

    # The requested snapshot name does not refer to an existing snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SnapshotNotFoundFault AWS API Documentation
    #
    class SnapshotNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the maximum
    # number of snapshots.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SnapshotQuotaExceededFault AWS API Documentation
    #
    class SnapshotQuotaExceededFault < Aws::EmptyStructure; end

    # @!attribute [rw] replication_group_id
    #   The ID of the replication group to which data should be migrated.
    #   @return [String]
    #
    # @!attribute [rw] customer_node_endpoint_list
    #   List of endpoints from which data should be migrated. For Valkey or
    #   Redis OSS (cluster mode disabled), the list should have only one
    #   element.
    #   @return [Array<Types::CustomerNodeEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/StartMigrationMessage AWS API Documentation
    #
    class StartMigrationMessage < Struct.new(
      :replication_group_id,
      :customer_node_endpoint_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Valkey or Redis OSS
    #   replication group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/StartMigrationResponse AWS API Documentation
    #
    class StartMigrationResponse < Struct.new(
      :replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the subnet associated with a cluster. This parameter refers
    # to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and
    # used with ElastiCache.
    #
    # @!attribute [rw] subnet_identifier
    #   The unique identifier for the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   The Availability Zone associated with the subnet.
    #   @return [Types::AvailabilityZone]
    #
    # @!attribute [rw] subnet_outpost
    #   The outpost ARN of the subnet.
    #   @return [Types::SubnetOutpost]
    #
    # @!attribute [rw] supported_network_types
    #   Either `ipv4` \| `ipv6` \| `dual_stack`. IPv6 is supported for
    #   workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #   to 7.1 or Memcached engine version 1.6.6 and above on all instances
    #   built on the [Nitro system][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/nitro/
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_outpost,
      :supported_network_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested subnet is being used by another cache subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SubnetInUse AWS API Documentation
    #
    class SubnetInUse < Aws::EmptyStructure; end

    # At least one subnet ID does not match the other subnet IDs. This
    # mismatch typically occurs when a user sets one subnet ID to a regional
    # Availability Zone and a different one to an outpost. Or when a user
    # sets the subnet ID to an Outpost when not subscribed on this service.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SubnetNotAllowedFault AWS API Documentation
    #
    class SubnetNotAllowedFault < Aws::EmptyStructure; end

    # The ID of the outpost subnet.
    #
    # @!attribute [rw] subnet_outpost_arn
    #   The outpost ARN of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SubnetOutpost AWS API Documentation
    #
    class SubnetOutpost < Struct.new(
      :subnet_outpost_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag that can be added to an ElastiCache cluster or replication
    # group. Tags are composed of a Key/Value pair. You can use tags to
    # categorize and track all your ElastiCache resources, with the
    # exception of global replication group. When you add or remove tags on
    # replication groups, those actions will be replicated to all nodes in
    # the replication group. A tag with a null Value is permitted.
    #
    # @!attribute [rw] key
    #   The key for the tag. May not be null.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value. May be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output from the `AddTagsToResource`,
    # `ListTagsForResource`, and `RemoveTagsFromResource` operations.
    #
    # @!attribute [rw] tag_list
    #   A list of tags as key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TagListMessage AWS API Documentation
    #
    class TagListMessage < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested tag was not found on this resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TagNotFoundFault AWS API Documentation
    #
    class TagNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would cause the resource to
    # have more than the allowed number of tags. The maximum number of tags
    # permitted on a resource is 50.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TagQuotaPerResourceExceeded AWS API Documentation
    #
    class TagQuotaPerResourceExceeded < Aws::EmptyStructure; end

    # @!attribute [rw] replication_group_id
    #   The name of the replication group (console: cluster) whose automatic
    #   failover is being tested by this operation.
    #   @return [String]
    #
    # @!attribute [rw] node_group_id
    #   The name of the node group (called shard in the console) in this
    #   replication group on which automatic failover is to be tested. You
    #   may test automatic failover on up to 15 node groups in any rolling
    #   24-hour period.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TestFailoverMessage AWS API Documentation
    #
    class TestFailoverMessage < Struct.new(
      :replication_group_id,
      :node_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `TestFailover` action is not available.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TestFailoverNotAvailableFault AWS API Documentation
    #
    class TestFailoverNotAvailableFault < Aws::EmptyStructure; end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Valkey or Redis OSS
    #   replication group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TestFailoverResult AWS API Documentation
    #
    class TestFailoverResult < Struct.new(
      :replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group_id
    #   The ID of the replication group to which data is to be migrated.
    #   @return [String]
    #
    # @!attribute [rw] customer_node_endpoint_list
    #   List of endpoints from which data should be migrated. List should
    #   have only one element.
    #   @return [Array<Types::CustomerNodeEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TestMigrationMessage AWS API Documentation
    #
    class TestMigrationMessage < Struct.new(
      :replication_group_id,
      :customer_node_endpoint_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Valkey or Redis OSS
    #   replication group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TestMigrationResponse AWS API Documentation
    #
    class TestMigrationResponse < Struct.new(
      :replication_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters update actions from the service updates that are in available
    # status during the time range.
    #
    # @!attribute [rw] start_time
    #   The start time of the time range filter
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the time range filter
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TimeRangeFilter AWS API Documentation
    #
    class TimeRangeFilter < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update action that has failed to be processed for the corresponding
    # apply/stop request
    #
    # @!attribute [rw] replication_group_id
    #   The replication group ID
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   The ID of the cache cluster
    #   @return [String]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   The error type for requests that are not processed
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that describes the reason the request was not
    #   processed
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UnprocessedUpdateAction AWS API Documentation
    #
    class UnprocessedUpdateAction < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :service_update_name,
      :error_type,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the service update for a specific replication group
    #
    # @!attribute [rw] replication_group_id
    #   The ID of the replication group
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   The ID of the cache cluster
    #   @return [String]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_release_date
    #   The date the update is first available
    #   @return [Time]
    #
    # @!attribute [rw] service_update_severity
    #   The severity of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_status
    #   The status of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_recommended_apply_by_date
    #   The recommended date to apply the service update to ensure
    #   compliance. For information on compliance, see [Self-Service
    #   Security Updates for Compliance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/elasticache-compliance.html#elasticache-compliance-self-service
    #   @return [Time]
    #
    # @!attribute [rw] service_update_type
    #   Reflects the nature of the service update
    #   @return [String]
    #
    # @!attribute [rw] update_action_available_date
    #   The date that the service update is available to a replication group
    #   @return [Time]
    #
    # @!attribute [rw] update_action_status
    #   The status of the update action
    #   @return [String]
    #
    # @!attribute [rw] nodes_updated
    #   The progress of the service update on the replication group
    #   @return [String]
    #
    # @!attribute [rw] update_action_status_modified_date
    #   The date when the UpdateActionStatus was last modified
    #   @return [Time]
    #
    # @!attribute [rw] sla_met
    #   If yes, all nodes in the replication group have been updated by the
    #   recommended apply-by date. If no, at least one node in the
    #   replication group have not been updated by the recommended apply-by
    #   date. If N/A, the replication group was created after the
    #   recommended apply-by date.
    #   @return [String]
    #
    # @!attribute [rw] node_group_update_status
    #   The status of the service update on the node group
    #   @return [Array<Types::NodeGroupUpdateStatus>]
    #
    # @!attribute [rw] cache_node_update_status
    #   The status of the service update on the cache node
    #   @return [Array<Types::CacheNodeUpdateStatus>]
    #
    # @!attribute [rw] estimated_update_time
    #   The estimated length of time for the update to complete
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The Elasticache engine to which the update applies. Either Valkey,
    #   Redis OSS or Memcached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UpdateAction AWS API Documentation
    #
    class UpdateAction < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :service_update_name,
      :service_update_release_date,
      :service_update_severity,
      :service_update_status,
      :service_update_recommended_apply_by_date,
      :service_update_type,
      :update_action_available_date,
      :update_action_status,
      :nodes_updated,
      :update_action_status_modified_date,
      :sla_met,
      :node_group_update_status,
      :cache_node_update_status,
      :estimated_update_time,
      :engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] processed_update_actions
    #   Update actions that have been processed successfully
    #   @return [Array<Types::ProcessedUpdateAction>]
    #
    # @!attribute [rw] unprocessed_update_actions
    #   Update actions that haven't been processed successfully
    #   @return [Array<Types::UnprocessedUpdateAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UpdateActionResultsMessage AWS API Documentation
    #
    class UpdateActionResultsMessage < Struct.new(
      :processed_update_actions,
      :unprocessed_update_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] update_actions
    #   Returns a list of update actions
    #   @return [Array<Types::UpdateAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UpdateActionsMessage AWS API Documentation
    #
    class UpdateActionsMessage < Struct.new(
      :marker,
      :update_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The username of the user.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the user status. Can be "active", "modifying" or
    #   "deleting".
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The options are valkey or redis.
    #   @return [String]
    #
    # @!attribute [rw] minimum_engine_version
    #   The minimum engine version required, which is Redis OSS 6.0
    #   @return [String]
    #
    # @!attribute [rw] access_string
    #   Access permissions string used for this user.
    #   @return [String]
    #
    # @!attribute [rw] user_group_ids
    #   Returns a list of the user group IDs the user belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authentication
    #   Denotes whether the user requires a password to authenticate.
    #   @return [Types::Authentication]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/User AWS API Documentation
    #
    class User < Struct.new(
      :user_id,
      :user_name,
      :status,
      :engine,
      :minimum_engine_version,
      :access_string,
      :user_group_ids,
      :authentication,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user with this ID already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UserAlreadyExistsFault AWS API Documentation
    #
    class UserAlreadyExistsFault < Aws::EmptyStructure; end

    # @!attribute [rw] user_group_id
    #   The ID of the user group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates user group status. Can be "creating", "active",
    #   "modifying", "deleting".
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The options are valkey or redis.
    #   @return [String]
    #
    # @!attribute [rw] user_ids
    #   The list of user IDs that belong to the user group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] minimum_engine_version
    #   The minimum engine version required, which is Redis OSS 6.0
    #   @return [String]
    #
    # @!attribute [rw] pending_changes
    #   A list of updates being applied to the user group.
    #   @return [Types::UserGroupPendingChanges]
    #
    # @!attribute [rw] replication_groups
    #   A list of replication groups that the user group can access.
    #   @return [Array<String>]
    #
    # @!attribute [rw] serverless_caches
    #   Indicates which serverless caches the specified user group is
    #   associated with. Available for Valkey, Redis OSS and Serverless
    #   Memcached only.
    #   @return [Array<String>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the user group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UserGroup AWS API Documentation
    #
    class UserGroup < Struct.new(
      :user_group_id,
      :status,
      :engine,
      :user_ids,
      :minimum_engine_version,
      :pending_changes,
      :replication_groups,
      :serverless_caches,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user group with this ID already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UserGroupAlreadyExistsFault AWS API Documentation
    #
    class UserGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # The user group was not found or does not exist
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UserGroupNotFoundFault AWS API Documentation
    #
    class UserGroupNotFoundFault < Aws::EmptyStructure; end

    # Returns the updates being applied to the user group.
    #
    # @!attribute [rw] user_ids_to_remove
    #   The list of user IDs to remove.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_ids_to_add
    #   The list of user IDs to add.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UserGroupPendingChanges AWS API Documentation
    #
    class UserGroupPendingChanges < Struct.new(
      :user_ids_to_remove,
      :user_ids_to_add)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of users exceeds the user group limit.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UserGroupQuotaExceededFault AWS API Documentation
    #
    class UserGroupQuotaExceededFault < Aws::EmptyStructure; end

    # The status of the user group update.
    #
    # @!attribute [rw] user_group_ids_to_add
    #   The ID of the user group to add.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_group_ids_to_remove
    #   The ID of the user group to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UserGroupsUpdateStatus AWS API Documentation
    #
    class UserGroupsUpdateStatus < Struct.new(
      :user_group_ids_to_add,
      :user_group_ids_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user does not exist or could not be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UserNotFoundFault AWS API Documentation
    #
    class UserNotFoundFault < Aws::EmptyStructure; end

    # The quota of users has been exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UserQuotaExceededFault AWS API Documentation
    #
    class UserQuotaExceededFault < Aws::EmptyStructure; end

  end
end

