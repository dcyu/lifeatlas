# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationAutoScaling
  module Types

    # Represents a CloudWatch alarm associated with a scaling policy.
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] alarm_arn
    #   The Amazon Resource Name (ARN) of the alarm.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/Alarm AWS API Documentation
    #
    class Alarm < Struct.new(
      :alarm_name,
      :alarm_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `GetPredictiveScalingForecast` call returns the capacity forecast
    # for a predictive scaling policy. This structure includes the data
    # points for that capacity forecast, along with the timestamps of those
    # data points.
    #
    # @!attribute [rw] timestamps
    #   The timestamps for the data points, in UTC format.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] values
    #   The values of the data points.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/CapacityForecast AWS API Documentation
    #
    class CapacityForecast < Struct.new(
      :timestamps,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Concurrent updates caused an exception, for example, if you request an
    # update to an Application Auto Scaling resource that already has a
    # pending update.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ConcurrentUpdateException AWS API Documentation
    #
    class ConcurrentUpdateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a CloudWatch metric of your choosing for a target tracking
    # scaling policy to use with Application Auto Scaling.
    #
    # For information about the available metrics for a service, see [Amazon
    # Web Services services that publish CloudWatch metrics][1] in the
    # *Amazon CloudWatch User Guide*.
    #
    # To create your customized metric specification:
    #
    # * Add values for each required parameter from CloudWatch. You can use
    #   an existing metric, or a new metric that you create. To use your own
    #   metric, you must first publish the metric to CloudWatch. For more
    #   information, see [Publish custom metrics][2] in the *Amazon
    #   CloudWatch User Guide*.
    #
    # * Choose a metric that changes proportionally with capacity. The value
    #   of the metric should increase or decrease in inverse proportion to
    #   the number of capacity units. That is, the value of the metric
    #   should decrease when capacity increases, and increase when capacity
    #   decreases.
    #
    # For more information about the CloudWatch terminology below, see
    # [Amazon CloudWatch concepts][3] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
    #
    # @!attribute [rw] metric_name
    #   The name of the metric. To get the exact metric name, namespace, and
    #   dimensions, inspect the [Metric][1] object that's returned by a
    #   call to [ListMetrics][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   The dimensions of the metric.
    #
    #   Conditional: If you published your metric with dimensions, you must
    #   specify the same dimensions in your scaling policy.
    #   @return [Array<Types::MetricDimension>]
    #
    # @!attribute [rw] statistic
    #   The statistic of the metric.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the metric. For a complete list of the units that
    #   CloudWatch supports, see the [MetricDatum][1] data type in the
    #   *Amazon CloudWatch API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   The metrics to include in the target tracking scaling policy, as a
    #   metric data query. This can include both raw metric and metric math
    #   expressions.
    #   @return [Array<Types::TargetTrackingMetricDataQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/CustomizedMetricSpecification AWS API Documentation
    #
    class CustomizedMetricSpecification < Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scalable target.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This string consists of the service
    #   namespace, resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScalingPolicyRequest AWS API Documentation
    #
    class DeleteScalingPolicyRequest < Struct.new(
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScalingPolicyResponse AWS API Documentation
    #
    class DeleteScalingPolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scheduled action.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This string consists of the service
    #   namespace, resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScheduledActionRequest AWS API Documentation
    #
    class DeleteScheduledActionRequest < Struct.new(
      :service_namespace,
      :scheduled_action_name,
      :resource_id,
      :scalable_dimension)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeleteScheduledActionResponse AWS API Documentation
    #
    class DeleteScheduledActionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scalable target.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension associated with the scalable target. This
    #   string consists of the service namespace, resource type, and scaling
    #   property.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeregisterScalableTargetRequest AWS API Documentation
    #
    class DeregisterScalableTargetRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DeregisterScalableTargetResponse AWS API Documentation
    #
    class DeregisterScalableTargetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   The identifier of the resource associated with the scalable target.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [Array<String>]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension associated with the scalable target. This
    #   string consists of the service namespace, resource type, and scaling
    #   property. If you specify a scalable dimension, you must also specify
    #   a resource ID.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scalable targets. This value can be between 1
    #   and 50. The default value is 50.
    #
    #   If this parameter is used, the operation returns up to `MaxResults`
    #   results at a time, along with a `NextToken` value. To get the next
    #   set of results, include the `NextToken` value in a subsequent call.
    #   If this parameter is not used, the operation returns up to 50
    #   results and a `NextToken` value, if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalableTargetsRequest AWS API Documentation
    #
    class DescribeScalableTargetsRequest < Struct.new(
      :service_namespace,
      :resource_ids,
      :scalable_dimension,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scalable_targets
    #   The scalable targets that match the request parameters.
    #   @return [Array<Types::ScalableTarget>]
    #
    # @!attribute [rw] next_token
    #   The token required to get the next set of results. This value is
    #   `null` if there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalableTargetsResponse AWS API Documentation
    #
    class DescribeScalableTargetsResponse < Struct.new(
      :scalable_targets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scaling activity.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This string consists of the service
    #   namespace, resource type, and scaling property. If you specify a
    #   scalable dimension, you must also specify a resource ID.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scalable targets. This value can be between 1
    #   and 50. The default value is 50.
    #
    #   If this parameter is used, the operation returns up to `MaxResults`
    #   results at a time, along with a `NextToken` value. To get the next
    #   set of results, include the `NextToken` value in a subsequent call.
    #   If this parameter is not used, the operation returns up to 50
    #   results and a `NextToken` value, if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] include_not_scaled_activities
    #   Specifies whether to include activities that aren't scaled (*not
    #   scaled activities*) in the response. Not scaled activities are
    #   activities that aren't completed or started for various reasons,
    #   such as preventing infinite scaling loops. For help interpreting the
    #   not scaled reason details in the response, see [Scaling activities
    #   for Application Auto Scaling][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingActivitiesRequest AWS API Documentation
    #
    class DescribeScalingActivitiesRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :max_results,
      :next_token,
      :include_not_scaled_activities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_activities
    #   A list of scaling activity objects.
    #   @return [Array<Types::ScalingActivity>]
    #
    # @!attribute [rw] next_token
    #   The token required to get the next set of results. This value is
    #   `null` if there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingActivitiesResponse AWS API Documentation
    #
    class DescribeScalingActivitiesResponse < Struct.new(
      :scaling_activities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_names
    #   The names of the scaling policies to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scaling policy.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This string consists of the service
    #   namespace, resource type, and scaling property. If you specify a
    #   scalable dimension, you must also specify a resource ID.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scalable targets. This value can be between 1
    #   and 10. The default value is 10.
    #
    #   If this parameter is used, the operation returns up to `MaxResults`
    #   results at a time, along with a `NextToken` value. To get the next
    #   set of results, include the `NextToken` value in a subsequent call.
    #   If this parameter is not used, the operation returns up to 10
    #   results and a `NextToken` value, if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingPoliciesRequest AWS API Documentation
    #
    class DescribeScalingPoliciesRequest < Struct.new(
      :policy_names,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_policies
    #   Information about the scaling policies.
    #   @return [Array<Types::ScalingPolicy>]
    #
    # @!attribute [rw] next_token
    #   The token required to get the next set of results. This value is
    #   `null` if there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScalingPoliciesResponse AWS API Documentation
    #
    class DescribeScalingPoliciesResponse < Struct.new(
      :scaling_policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_action_names
    #   The names of the scheduled actions to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scheduled action.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This string consists of the service
    #   namespace, resource type, and scaling property. If you specify a
    #   scalable dimension, you must also specify a resource ID.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of scheduled action results. This value can be
    #   between 1 and 50. The default value is 50.
    #
    #   If this parameter is used, the operation returns up to `MaxResults`
    #   results at a time, along with a `NextToken` value. To get the next
    #   set of results, include the `NextToken` value in a subsequent call.
    #   If this parameter is not used, the operation returns up to 50
    #   results and a `NextToken` value, if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScheduledActionsRequest AWS API Documentation
    #
    class DescribeScheduledActionsRequest < Struct.new(
      :scheduled_action_names,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scheduled_actions
    #   Information about the scheduled actions.
    #   @return [Array<Types::ScheduledAction>]
    #
    # @!attribute [rw] next_token
    #   The token required to get the next set of results. This value is
    #   `null` if there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/DescribeScheduledActionsResponse AWS API Documentation
    #
    class DescribeScheduledActionsResponse < Struct.new(
      :scheduled_actions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Failed access to resources caused an exception. This exception is
    # thrown when Application Auto Scaling is unable to retrieve the alarms
    # associated with a scaling policy due to a client error, for example,
    # if the role ARN specified for a scalable target does not have
    # permission to call the CloudWatch [DescribeAlarms][1] on your behalf.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/FailedResourceAccessException AWS API Documentation
    #
    class FailedResourceAccessException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The inclusive start time of the time range for the forecast data to
    #   get. At most, the date and time can be one year before the current
    #   date and time
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The exclusive end time of the time range for the forecast data to
    #   get. The maximum time duration between the start and end time is 30
    #   days.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/GetPredictiveScalingForecastRequest AWS API Documentation
    #
    class GetPredictiveScalingForecastRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :policy_name,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_forecast
    #   The load forecast.
    #   @return [Array<Types::LoadForecast>]
    #
    # @!attribute [rw] capacity_forecast
    #   The capacity forecast.
    #   @return [Types::CapacityForecast]
    #
    # @!attribute [rw] update_time
    #   The time the forecast was made.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/GetPredictiveScalingForecastResponse AWS API Documentation
    #
    class GetPredictiveScalingForecastResponse < Struct.new(
      :load_forecast,
      :capacity_forecast,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an internal error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The next token supplied was invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A per-account resource limit is exceeded. For more information, see
    # [Application Auto Scaling service quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Specify the ARN of the scalable target.
    #
    #   For example:
    #   `arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123`
    #
    #   To get the ARN for a scalable target, use DescribeScalableTargets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags. Each tag consists of a tag key and a tag value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `GetPredictiveScalingForecast` call returns the load forecast for a
    # predictive scaling policy. This structure includes the data points for
    # that load forecast, along with the timestamps of those data points and
    # the metric specification.
    #
    # @!attribute [rw] timestamps
    #   The timestamps for the data points, in UTC format.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] values
    #   The values of the data points.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] metric_specification
    #   The metric specification for the load forecast.
    #   @return [Types::PredictiveScalingMetricSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/LoadForecast AWS API Documentation
    #
    class LoadForecast < Struct.new(
      :timestamps,
      :values,
      :metric_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the dimension names and values associated with a metric.
    #
    # @!attribute [rw] name
    #   The name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/MetricDimension AWS API Documentation
    #
    class MetricDimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the reason for an activity that isn't scaled (*not scaled
    # activity*), in machine-readable format. For help interpreting the not
    # scaled reason details, see [Scaling activities for Application Auto
    # Scaling][1] in the *Application Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html
    #
    # @!attribute [rw] code
    #   A code that represents the reason for not scaling.
    #
    #   Valid values:
    #
    #   * AutoScalingAnticipatedFlapping
    #
    #   * TargetServicePutResourceAsUnscalable
    #
    #   * AlreadyAtMaxCapacity
    #
    #   * AlreadyAtMinCapacity
    #
    #   * AlreadyAtDesiredCapacity
    #   @return [String]
    #
    # @!attribute [rw] max_capacity
    #   The maximum capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] min_capacity
    #   The minimum capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] current_capacity
    #   The current capacity.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/NotScaledReason AWS API Documentation
    #
    class NotScaledReason < Struct.new(
      :code,
      :max_capacity,
      :min_capacity,
      :current_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified object could not be found. For any operation that
    # depends on the existence of a scalable target, this exception is
    # thrown if the scalable target with the specified service namespace,
    # resource ID, and scalable dimension does not exist. For any operation
    # that deletes or deregisters a resource, this exception is thrown if
    # the resource cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ObjectNotFoundException AWS API Documentation
    #
    class ObjectNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a predefined metric for a target tracking scaling policy to
    # use with Application Auto Scaling.
    #
    # For more information, [Predefined metrics for target tracking scaling
    # policies][1] in the *Application Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/monitoring-cloudwatch.html#predefined-metrics
    #
    # @!attribute [rw] predefined_metric_type
    #   The metric type. The `ALBRequestCountPerTarget` metric type applies
    #   only to Spot Fleets and ECS services.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   Identifies the resource associated with the metric type. You can't
    #   specify a resource label unless the metric type is
    #   `ALBRequestCountPerTarget` and there is a target group attached to
    #   the Spot Fleet or ECS service.
    #
    #   You create the resource label by appending the final portion of the
    #   load balancer ARN and the final portion of the target group ARN into
    #   a single value, separated by a forward slash (/). The format of the
    #   resource label is:
    #
    #   `app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff`.
    #
    #   Where:
    #
    #   * app/&lt;load-balancer-name&gt;/&lt;load-balancer-id&gt; is the
    #     final portion of the load balancer ARN
    #
    #   * targetgroup/&lt;target-group-name&gt;/&lt;target-group-id&gt; is
    #     the final portion of the target group ARN.
    #
    #   To find the ARN for an Application Load Balancer, use the
    #   [DescribeLoadBalancers][1] API operation. To find the ARN for the
    #   target group, use the [DescribeTargetGroups][2] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredefinedMetricSpecification AWS API Documentation
    #
    class PredefinedMetricSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a CloudWatch metric of your choosing for a predictive
    # scaling policy.
    #
    # @!attribute [rw] metric_data_queries
    #   One or more metric data queries to provide data points for a metric
    #   specification.
    #   @return [Array<Types::PredictiveScalingMetricDataQuery>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredictiveScalingCustomizedMetricSpecification AWS API Documentation
    #
    class PredictiveScalingCustomizedMetricSpecification < Struct.new(
      :metric_data_queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the scaling metric.
    #
    # @!attribute [rw] dimensions
    #   Describes the dimensions of the metric.
    #   @return [Array<Types::PredictiveScalingMetricDimension>]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredictiveScalingMetric AWS API Documentation
    #
    class PredictiveScalingMetric < Struct.new(
      :dimensions,
      :metric_name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metric data to return. Also defines whether this call is returning
    # data for one metric only, or whether it is performing a math
    # expression on the values of returned metric statistics to create a new
    # time series. A time series is a series of data points, each of which
    # is associated with a timestamp.
    #
    # @!attribute [rw] id
    #   A short name that identifies the object's results in the response.
    #   This name must be unique among all `MetricDataQuery` objects
    #   specified for a single scaling policy. If you are performing math
    #   expressions on this set of data, this name represents that data and
    #   can serve as a variable in the mathematical expression. The valid
    #   characters are letters, numbers, and underscores. The first
    #   character must be a lowercase letter.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The math expression to perform on the returned data, if this object
    #   is performing a math expression. This expression can use the `Id` of
    #   the other metrics to refer to those metrics, and can also use the
    #   `Id` of other expressions to use the result of those expressions.
    #
    #   Conditional: Within each `MetricDataQuery` object, you must specify
    #   either `Expression` or `MetricStat`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] metric_stat
    #   Information about the metric data to return.
    #
    #   Conditional: Within each `MetricDataQuery` object, you must specify
    #   either `Expression` or `MetricStat`, but not both.
    #   @return [Types::PredictiveScalingMetricStat]
    #
    # @!attribute [rw] label
    #   A human-readable label for this metric or expression. This is
    #   especially useful if this is a math expression, so that you know
    #   what the value represents.
    #   @return [String]
    #
    # @!attribute [rw] return_data
    #   Indicates whether to return the timestamps and raw data values of
    #   this metric.
    #
    #   If you use any math expressions, specify `true` for this value for
    #   only the final math expression that the metric specification is
    #   based on. You must specify `false` for `ReturnData` for all the
    #   other metrics and expressions used in the metric specification.
    #
    #   If you are only retrieving metrics and not performing any math
    #   expressions, do not specify anything for `ReturnData`. This sets it
    #   to its default (`true`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredictiveScalingMetricDataQuery AWS API Documentation
    #
    class PredictiveScalingMetricDataQuery < Struct.new(
      :id,
      :expression,
      :metric_stat,
      :label,
      :return_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the dimension of a metric.
    #
    # @!attribute [rw] name
    #   The name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredictiveScalingMetricDimension AWS API Documentation
    #
    class PredictiveScalingMetricDimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure specifies the metrics and target utilization settings
    # for a predictive scaling policy.
    #
    # You must specify either a metric pair, or a load metric and a scaling
    # metric individually. Specifying a metric pair instead of individual
    # metrics provides a simpler way to configure metrics for a scaling
    # policy. You choose the metric pair, and the policy automatically knows
    # the correct sum and average statistics to use for the load metric and
    # the scaling metric.
    #
    # @!attribute [rw] target_value
    #   Specifies the target utilization.
    #   @return [Float]
    #
    # @!attribute [rw] predefined_metric_pair_specification
    #   The predefined metric pair specification that determines the
    #   appropriate scaling metric and load metric to use.
    #   @return [Types::PredictiveScalingPredefinedMetricPairSpecification]
    #
    # @!attribute [rw] predefined_scaling_metric_specification
    #   The predefined scaling metric specification.
    #   @return [Types::PredictiveScalingPredefinedScalingMetricSpecification]
    #
    # @!attribute [rw] predefined_load_metric_specification
    #   The predefined load metric specification.
    #   @return [Types::PredictiveScalingPredefinedLoadMetricSpecification]
    #
    # @!attribute [rw] customized_scaling_metric_specification
    #   The customized scaling metric specification.
    #   @return [Types::PredictiveScalingCustomizedMetricSpecification]
    #
    # @!attribute [rw] customized_load_metric_specification
    #   The customized load metric specification.
    #   @return [Types::PredictiveScalingCustomizedMetricSpecification]
    #
    # @!attribute [rw] customized_capacity_metric_specification
    #   The customized capacity metric specification.
    #   @return [Types::PredictiveScalingCustomizedMetricSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredictiveScalingMetricSpecification AWS API Documentation
    #
    class PredictiveScalingMetricSpecification < Struct.new(
      :target_value,
      :predefined_metric_pair_specification,
      :predefined_scaling_metric_specification,
      :predefined_load_metric_specification,
      :customized_scaling_metric_specification,
      :customized_load_metric_specification,
      :customized_capacity_metric_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines the CloudWatch metric to return, along with the
    # statistic and unit.
    #
    # @!attribute [rw] metric
    #   The CloudWatch metric to return, including the metric name,
    #   namespace, and dimensions. To get the exact metric name, namespace,
    #   and dimensions, inspect the [Metric][1] object that is returned by a
    #   call to [ListMetrics][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html
    #   @return [Types::PredictiveScalingMetric]
    #
    # @!attribute [rw] stat
    #   The statistic to return. It can include any CloudWatch statistic or
    #   extended statistic. For a list of valid values, see the table in
    #   [Statistics][1] in the *Amazon CloudWatch User Guide*.
    #
    #   The most commonly used metrics for predictive scaling are `Average`
    #   and `Sum`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit to use for the returned data points. For a complete list of
    #   the units that CloudWatch supports, see the [MetricDatum][1] data
    #   type in the *Amazon CloudWatch API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredictiveScalingMetricStat AWS API Documentation
    #
    class PredictiveScalingMetricStat < Struct.new(
      :metric,
      :stat,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a predictive scaling policy configuration. Predictive
    # scaling is supported on Amazon ECS services.
    #
    # @!attribute [rw] metric_specifications
    #   This structure includes the metrics and target utilization to use
    #   for predictive scaling.
    #
    #   This is an array, but we currently only support a single metric
    #   specification. That is, you can specify a target value and a single
    #   metric pair, or a target value and one scaling metric and one load
    #   metric.
    #   @return [Array<Types::PredictiveScalingMetricSpecification>]
    #
    # @!attribute [rw] mode
    #   The predictive scaling mode. Defaults to `ForecastOnly` if not
    #   specified.
    #   @return [String]
    #
    # @!attribute [rw] scheduling_buffer_time
    #   The amount of time, in seconds, that the start time can be advanced.
    #
    #   The value must be less than the forecast interval duration of 3600
    #   seconds (60 minutes). Defaults to 300 seconds if not specified.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity_breach_behavior
    #   Defines the behavior that should be applied if the forecast capacity
    #   approaches or exceeds the maximum capacity. Defaults to
    #   `HonorMaxCapacity` if not specified.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity_buffer
    #   The size of the capacity buffer to use when the forecast capacity is
    #   close to or exceeds the maximum capacity. The value is specified as
    #   a percentage relative to the forecast capacity. For example, if the
    #   buffer is 10, this means a 10 percent buffer, such that if the
    #   forecast capacity is 50, and the maximum capacity is 40, then the
    #   effective maximum capacity is 55.
    #
    #   Required if the `MaxCapacityBreachBehavior` property is set to
    #   `IncreaseMaxCapacity`, and cannot be used otherwise.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredictiveScalingPolicyConfiguration AWS API Documentation
    #
    class PredictiveScalingPolicyConfiguration < Struct.new(
      :metric_specifications,
      :mode,
      :scheduling_buffer_time,
      :max_capacity_breach_behavior,
      :max_capacity_buffer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a load metric for a predictive scaling policy.
    #
    # When returned in the output of `DescribePolicies`, it indicates that a
    # predictive scaling policy uses individually specified load and scaling
    # metrics instead of a metric pair.
    #
    # The following predefined metrics are available for predictive scaling:
    #
    # * `ECSServiceAverageCPUUtilization`
    #
    # * `ECSServiceAverageMemoryUtilization`
    #
    # * `ECSServiceCPUUtilization`
    #
    # * `ECSServiceMemoryUtilization`
    #
    # * `ECSServiceTotalCPUUtilization`
    #
    # * `ECSServiceTotalMemoryUtilization`
    #
    # * `ALBRequestCount`
    #
    # * `ALBRequestCountPerTarget`
    #
    # * `TotalALBRequestCount`
    #
    # @!attribute [rw] predefined_metric_type
    #   The metric type.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   A label that uniquely identifies a target group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredictiveScalingPredefinedLoadMetricSpecification AWS API Documentation
    #
    class PredictiveScalingPredefinedLoadMetricSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a metric pair for a predictive scaling policy.
    #
    # The following predefined metrics are available for predictive scaling:
    #
    # * `ECSServiceAverageCPUUtilization`
    #
    # * `ECSServiceAverageMemoryUtilization`
    #
    # * `ECSServiceCPUUtilization`
    #
    # * `ECSServiceMemoryUtilization`
    #
    # * `ECSServiceTotalCPUUtilization`
    #
    # * `ECSServiceTotalMemoryUtilization`
    #
    # * `ALBRequestCount`
    #
    # * `ALBRequestCountPerTarget`
    #
    # * `TotalALBRequestCount`
    #
    # @!attribute [rw] predefined_metric_type
    #   Indicates which metrics to use. There are two different types of
    #   metrics for each metric type: one is a load metric and one is a
    #   scaling metric.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   A label that uniquely identifies a specific target group from which
    #   to determine the total and average request count.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredictiveScalingPredefinedMetricPairSpecification AWS API Documentation
    #
    class PredictiveScalingPredefinedMetricPairSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a scaling metric for a predictive scaling policy.
    #
    # When returned in the output of `DescribePolicies`, it indicates that a
    # predictive scaling policy uses individually specified load and scaling
    # metrics instead of a metric pair.
    #
    # The following predefined metrics are available for predictive scaling:
    #
    # * `ECSServiceAverageCPUUtilization`
    #
    # * `ECSServiceAverageMemoryUtilization`
    #
    # * `ECSServiceCPUUtilization`
    #
    # * `ECSServiceMemoryUtilization`
    #
    # * `ECSServiceTotalCPUUtilization`
    #
    # * `ECSServiceTotalMemoryUtilization`
    #
    # * `ALBRequestCount`
    #
    # * `ALBRequestCountPerTarget`
    #
    # * `TotalALBRequestCount`
    #
    # @!attribute [rw] predefined_metric_type
    #   The metric type.
    #   @return [String]
    #
    # @!attribute [rw] resource_label
    #   A label that uniquely identifies a specific target group from which
    #   to determine the average request count.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PredictiveScalingPredefinedScalingMetricSpecification AWS API Documentation
    #
    class PredictiveScalingPredefinedScalingMetricSpecification < Struct.new(
      :predefined_metric_type,
      :resource_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #
    #   You cannot change the name of a scaling policy, but you can delete
    #   the original scaling policy and create a new scaling policy with the
    #   same settings and a different name.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scaling policy.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This string consists of the service
    #   namespace, resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The scaling policy type. This parameter is required if you are
    #   creating a scaling policy.
    #
    #   The following policy types are supported:
    #
    #   `TargetTrackingScaling`—Not supported for Amazon EMR.
    #
    #   `StepScaling`—Not supported for DynamoDB, Amazon Comprehend, Lambda,
    #   Amazon Keyspaces, Amazon MSK, Amazon ElastiCache, or Neptune.
    #
    #   `PredictiveScaling`—Only supported for Amazon ECS.
    #
    #   For more information, see [Target tracking scaling policies][1],
    #   [Step scaling policies][2], and [Predictive scaling policies][3] in
    #   the *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html
    #   [3]: https://docs.aws.amazon.com/autoscaling/application/userguide/aas-create-predictive-scaling-policy.html
    #   @return [String]
    #
    # @!attribute [rw] step_scaling_policy_configuration
    #   A step scaling policy.
    #
    #   This parameter is required if you are creating a policy and the
    #   policy type is `StepScaling`.
    #   @return [Types::StepScalingPolicyConfiguration]
    #
    # @!attribute [rw] target_tracking_scaling_policy_configuration
    #   A target tracking scaling policy. Includes support for predefined or
    #   customized metrics.
    #
    #   This parameter is required if you are creating a policy and the
    #   policy type is `TargetTrackingScaling`.
    #   @return [Types::TargetTrackingScalingPolicyConfiguration]
    #
    # @!attribute [rw] predictive_scaling_policy_configuration
    #   The configuration of the predictive scaling policy.
    #   @return [Types::PredictiveScalingPolicyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScalingPolicyRequest AWS API Documentation
    #
    class PutScalingPolicyRequest < Struct.new(
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :policy_type,
      :step_scaling_policy_configuration,
      :target_tracking_scaling_policy_configuration,
      :predictive_scaling_policy_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the resulting scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] alarms
    #   The CloudWatch alarms created for the target tracking scaling
    #   policy.
    #   @return [Array<Types::Alarm>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScalingPolicyResponse AWS API Documentation
    #
    class PutScalingPolicyResponse < Struct.new(
      :policy_arn,
      :alarms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for this action. The following formats are supported:
    #
    #   * At expressions - "`at(yyyy-mm-ddThh:mm:ss)`"
    #
    #   * Rate expressions - "`rate(value unit)`"
    #
    #   * Cron expressions - "`cron(fields)`"
    #
    #   At expressions are useful for one-time schedules. Cron expressions
    #   are useful for scheduled actions that run periodically at a
    #   specified date and time, and rate expressions are useful for
    #   scheduled actions that run at a regular interval.
    #
    #   At and cron expressions use Universal Coordinated Time (UTC) by
    #   default.
    #
    #   The cron format consists of six fields separated by white spaces:
    #   \[Minutes\] \[Hours\] \[Day\_of\_Month\] \[Month\] \[Day\_of\_Week\]
    #   \[Year\].
    #
    #   For rate expressions, *value* is a positive integer and *unit* is
    #   `minute` \| `minutes` \| `hour` \| `hours` \| `day` \| `days`.
    #
    #   For more information, see [Schedule recurring scaling actions using
    #   cron expressions][1] in the *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-using-cron-expressions.html
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   Specifies the time zone used when setting a scheduled action by
    #   using an at or cron expression. If a time zone is not provided, UTC
    #   is used by default.
    #
    #   Valid values are the canonical names of the IANA time zones
    #   supported by Joda-Time (such as `Etc/GMT+9` or `Pacific/Tahiti`).
    #   For more information, see
    #   [https://www.joda.org/joda-time/timezones.html][1].
    #
    #
    #
    #   [1]: https://www.joda.org/joda-time/timezones.html
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action. This name must be unique among all
    #   other scheduled actions on the specified scalable target.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scheduled action.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This string consists of the service
    #   namespace, resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time for this scheduled action to start, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time for the recurring schedule to end, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] scalable_target_action
    #   The new minimum and maximum capacity. You can set both values or
    #   just one. At the scheduled time, if the current capacity is below
    #   the minimum capacity, Application Auto Scaling scales out to the
    #   minimum capacity. If the current capacity is above the maximum
    #   capacity, Application Auto Scaling scales in to the maximum
    #   capacity.
    #   @return [Types::ScalableTargetAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScheduledActionRequest AWS API Documentation
    #
    class PutScheduledActionRequest < Struct.new(
      :service_namespace,
      :schedule,
      :timezone,
      :scheduled_action_name,
      :resource_id,
      :scalable_dimension,
      :start_time,
      :end_time,
      :scalable_target_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/PutScheduledActionResponse AWS API Documentation
    #
    class PutScheduledActionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource. For a resource provided by your own application or
    #   service, use `custom-resource` instead.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that is associated with the scalable
    #   target. This string consists of the resource type and unique
    #   identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension associated with the scalable target. This
    #   string consists of the service namespace, resource type, and scaling
    #   property.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] min_capacity
    #   The minimum value that you plan to scale in to. When a scaling
    #   policy is in effect, Application Auto Scaling can scale in
    #   (contract) as needed to the minimum capacity limit in response to
    #   changing demand. This property is required when registering a new
    #   scalable target.
    #
    #   For the following resources, the minimum value allowed is 0.
    #
    #   * AppStream 2.0 fleets
    #
    #   * Aurora DB clusters
    #
    #   * ECS services
    #
    #   * EMR clusters
    #
    #   * Lambda provisioned concurrency
    #
    #   * SageMaker endpoint variants
    #
    #   * SageMaker inference components
    #
    #   * SageMaker serverless endpoint provisioned concurrency
    #
    #   * Spot Fleets
    #
    #   * custom resources
    #
    #   It's strongly recommended that you specify a value greater than 0.
    #   A value greater than 0 means that data points are continuously
    #   reported to CloudWatch that scaling policies can use to scale on a
    #   metric like average CPU utilization.
    #
    #   For all other resources, the minimum allowed value depends on the
    #   type of resource that you are using. If you provide a value that is
    #   lower than what a resource can accept, an error occurs. In which
    #   case, the error message will provide the minimum value that the
    #   resource can accept.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum value that you plan to scale out to. When a scaling
    #   policy is in effect, Application Auto Scaling can scale out (expand)
    #   as needed to the maximum capacity limit in response to changing
    #   demand. This property is required when registering a new scalable
    #   target.
    #
    #   Although you can specify a large maximum capacity, note that service
    #   quotas might impose lower limits. Each service has its own default
    #   quotas for the maximum capacity of the resource. If you want to
    #   specify a higher limit, you can request an increase. For more
    #   information, consult the documentation for that service. For
    #   information about the default quotas for each service, see [Service
    #   endpoints and quotas][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   This parameter is required for services that do not support
    #   service-linked roles (such as Amazon EMR), and it must specify the
    #   ARN of an IAM role that allows Application Auto Scaling to modify
    #   the scalable target on your behalf.
    #
    #   If the service supports service-linked roles, Application Auto
    #   Scaling uses a service-linked role, which it creates if it does not
    #   yet exist. For more information, see [How Application Auto Scaling
    #   works with IAM][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html
    #   @return [String]
    #
    # @!attribute [rw] suspended_state
    #   An embedded object that contains attributes and attribute values
    #   that are used to suspend and resume automatic scaling. Setting the
    #   value of an attribute to `true` suspends the specified scaling
    #   activities. Setting it to `false` (default) resumes the specified
    #   scaling activities.
    #
    #   **Suspension Outcomes**
    #
    #   * For `DynamicScalingInSuspended`, while a suspension is in effect,
    #     all scale-in activities that are triggered by a scaling policy are
    #     suspended.
    #
    #   * For `DynamicScalingOutSuspended`, while a suspension is in effect,
    #     all scale-out activities that are triggered by a scaling policy
    #     are suspended.
    #
    #   * For `ScheduledScalingSuspended`, while a suspension is in effect,
    #     all scaling activities that involve scheduled actions are
    #     suspended.
    #
    #   For more information, see [Suspend and resume scaling][1] in the
    #   *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-suspend-resume-scaling.html
    #   @return [Types::SuspendedState]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags to the scalable target. Use this parameter
    #   to tag the scalable target when it is created. To tag an existing
    #   scalable target, use the TagResource operation.
    #
    #   Each tag consists of a tag key and a tag value. Both the tag key and
    #   the tag value are required. You cannot have more than one tag on a
    #   scalable target with the same tag key.
    #
    #   Use tags to control access to a scalable target. For more
    #   information, see [Tagging support for Application Auto Scaling][1]
    #   in the *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/resource-tagging-support.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/RegisterScalableTargetRequest AWS API Documentation
    #
    class RegisterScalableTargetRequest < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :role_arn,
      :suspended_state,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scalable_target_arn
    #   The ARN of the scalable target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/RegisterScalableTargetResponse AWS API Documentation
    #
    class RegisterScalableTargetResponse < Struct.new(
      :scalable_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the Application Auto Scaling resource. This value is an
    #   Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a scalable target.
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource, or a `custom-resource`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scalable target.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension associated with the scalable target. This
    #   string consists of the service namespace, resource type, and scaling
    #   property.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] min_capacity
    #   The minimum value to scale to in response to a scale-in activity.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum value to scale to in response to a scale-out activity.
    #   @return [Integer]
    #
    # @!attribute [rw] predicted_capacity
    #   The predicted capacity of the scalable target.
    #   @return [Integer]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role that allows Application Auto Scaling to
    #   modify the scalable target on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The Unix timestamp for when the scalable target was created.
    #   @return [Time]
    #
    # @!attribute [rw] suspended_state
    #   Specifies whether the scaling activities for a scalable target are
    #   in a suspended state.
    #   @return [Types::SuspendedState]
    #
    # @!attribute [rw] scalable_target_arn
    #   The ARN of the scalable target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScalableTarget AWS API Documentation
    #
    class ScalableTarget < Struct.new(
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :min_capacity,
      :max_capacity,
      :predicted_capacity,
      :role_arn,
      :creation_time,
      :suspended_state,
      :scalable_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the minimum and maximum capacity for a scheduled action.
    #
    # @!attribute [rw] min_capacity
    #   The minimum capacity.
    #
    #   When the scheduled action runs, the resource will have at least this
    #   much capacity, but it might have more depending on other settings,
    #   such as the target utilization level of a target tracking scaling
    #   policy.
    #   @return [Integer]
    #
    # @!attribute [rw] max_capacity
    #   The maximum capacity.
    #
    #   Although you can specify a large maximum capacity, note that service
    #   quotas may impose lower limits. Each service has its own default
    #   quotas for the maximum capacity of the resource. If you want to
    #   specify a higher limit, you can request an increase. For more
    #   information, consult the documentation for that service. For
    #   information about the default quotas for each service, see [Service
    #   endpoints and quotas][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScalableTargetAction AWS API Documentation
    #
    class ScalableTargetAction < Struct.new(
      :min_capacity,
      :max_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a scaling activity.
    #
    # @!attribute [rw] activity_id
    #   The unique identifier of the scaling activity.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource, or a `custom-resource`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scaling activity.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This string consists of the service
    #   namespace, resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A simple description of what action the scaling activity intends to
    #   accomplish.
    #   @return [String]
    #
    # @!attribute [rw] cause
    #   A simple description of what caused the scaling activity to happen.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The Unix timestamp for when the scaling activity began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The Unix timestamp for when the scaling activity ended.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   Indicates the status of the scaling activity.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A simple message about the current status of the scaling activity.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The details about the scaling activity.
    #   @return [String]
    #
    # @!attribute [rw] not_scaled_reasons
    #   Machine-readable data that describes the reason for a not scaled
    #   activity. Only available when [DescribeScalingActivities][1]
    #   includes not scaled activities.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalingActivities.html
    #   @return [Array<Types::NotScaledReason>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScalingActivity AWS API Documentation
    #
    class ScalingActivity < Struct.new(
      :activity_id,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :description,
      :cause,
      :start_time,
      :end_time,
      :status_code,
      :status_message,
      :details,
      :not_scaled_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a scaling policy to use with Application Auto Scaling.
    #
    # For more information about configuring scaling policies for a specific
    # service, see [Amazon Web Services services that you can use with
    # Application Auto Scaling][1] in the *Application Auto Scaling User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/integrated-services-list.html
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the scaling policy.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource, or a `custom-resource`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scaling policy.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This string consists of the service
    #   namespace, resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The scaling policy type.
    #
    #   The following policy types are supported:
    #
    #   `TargetTrackingScaling`—Not supported for Amazon EMR
    #
    #   `StepScaling`—Not supported for DynamoDB, Amazon Comprehend, Lambda,
    #   Amazon Keyspaces, Amazon MSK, Amazon ElastiCache, or Neptune.
    #
    #   `PredictiveScaling`—Only supported for Amazon ECS
    #   @return [String]
    #
    # @!attribute [rw] step_scaling_policy_configuration
    #   A step scaling policy.
    #   @return [Types::StepScalingPolicyConfiguration]
    #
    # @!attribute [rw] target_tracking_scaling_policy_configuration
    #   A target tracking scaling policy.
    #   @return [Types::TargetTrackingScalingPolicyConfiguration]
    #
    # @!attribute [rw] predictive_scaling_policy_configuration
    #   The predictive scaling policy configuration.
    #   @return [Types::PredictiveScalingPolicyConfiguration]
    #
    # @!attribute [rw] alarms
    #   The CloudWatch alarms associated with the scaling policy.
    #   @return [Array<Types::Alarm>]
    #
    # @!attribute [rw] creation_time
    #   The Unix timestamp for when the scaling policy was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScalingPolicy AWS API Documentation
    #
    class ScalingPolicy < Struct.new(
      :policy_arn,
      :policy_name,
      :service_namespace,
      :resource_id,
      :scalable_dimension,
      :policy_type,
      :step_scaling_policy_configuration,
      :target_tracking_scaling_policy_configuration,
      :predictive_scaling_policy_configuration,
      :alarms,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a scheduled action.
    #
    # @!attribute [rw] scheduled_action_name
    #   The name of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_action_arn
    #   The Amazon Resource Name (ARN) of the scheduled action.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the Amazon Web Services service that provides the
    #   resource, or a `custom-resource`.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for this action. The following formats are supported:
    #
    #   * At expressions - "`at(yyyy-mm-ddThh:mm:ss)`"
    #
    #   * Rate expressions - "`rate(value unit)`"
    #
    #   * Cron expressions - "`cron(fields)`"
    #
    #   At expressions are useful for one-time schedules. Cron expressions
    #   are useful for scheduled actions that run periodically at a
    #   specified date and time, and rate expressions are useful for
    #   scheduled actions that run at a regular interval.
    #
    #   At and cron expressions use Universal Coordinated Time (UTC) by
    #   default.
    #
    #   The cron format consists of six fields separated by white spaces:
    #   \[Minutes\] \[Hours\] \[Day\_of\_Month\] \[Month\] \[Day\_of\_Week\]
    #   \[Year\].
    #
    #   For rate expressions, *value* is a positive integer and *unit* is
    #   `minute` \| `minutes` \| `hour` \| `hours` \| `day` \| `days`.
    #
    #   For more information, see [Schedule recurring scaling actions using
    #   cron expressions][1] in the *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-using-cron-expressions.html
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The time zone used when referring to the date and time of a
    #   scheduled action, when the scheduled action uses an at or cron
    #   expression.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource associated with the scaling policy.
    #   This string consists of the resource type and unique identifier.
    #
    #   * ECS service - The resource type is `service` and the unique
    #     identifier is the cluster name and service name. Example:
    #     `service/my-cluster/my-service`.
    #
    #   * Spot Fleet - The resource type is `spot-fleet-request` and the
    #     unique identifier is the Spot Fleet request ID. Example:
    #     `spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE`.
    #
    #   * EMR cluster - The resource type is `instancegroup` and the unique
    #     identifier is the cluster ID and instance group ID. Example:
    #     `instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0`.
    #
    #   * AppStream 2.0 fleet - The resource type is `fleet` and the unique
    #     identifier is the fleet name. Example: `fleet/sample-fleet`.
    #
    #   * DynamoDB table - The resource type is `table` and the unique
    #     identifier is the table name. Example: `table/my-table`.
    #
    #   * DynamoDB global secondary index - The resource type is `index` and
    #     the unique identifier is the index name. Example:
    #     `table/my-table/index/my-table-index`.
    #
    #   * Aurora DB cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:my-db-cluster`.
    #
    #   * SageMaker endpoint variant - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * Custom resources are not supported with a resource type. This
    #     parameter must specify the `OutputValue` from the CloudFormation
    #     template stack used to access the resources. The unique identifier
    #     is defined by the service provider. More information is available
    #     in our [GitHub repository][1].
    #
    #   * Amazon Comprehend document classification endpoint - The resource
    #     type and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE`.
    #
    #   * Amazon Comprehend entity recognizer endpoint - The resource type
    #     and unique identifier are specified using the endpoint ARN.
    #     Example:
    #     `arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE`.
    #
    #   * Lambda provisioned concurrency - The resource type is `function`
    #     and the unique identifier is the function name with a function
    #     version or alias name suffix that is not `$LATEST`. Example:
    #     `function:my-function:prod` or `function:my-function:1`.
    #
    #   * Amazon Keyspaces table - The resource type is `table` and the
    #     unique identifier is the table name. Example:
    #     `keyspace/mykeyspace/table/mytable`.
    #
    #   * Amazon MSK cluster - The resource type and unique identifier are
    #     specified using the cluster ARN. Example:
    #     `arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5`.
    #
    #   * Amazon ElastiCache replication group - The resource type is
    #     `replication-group` and the unique identifier is the replication
    #     group name. Example: `replication-group/mycluster`.
    #
    #   * Amazon ElastiCache cache cluster - The resource type is
    #     `cache-cluster` and the unique identifier is the cache cluster
    #     name. Example: `cache-cluster/mycluster`.
    #
    #   * Neptune cluster - The resource type is `cluster` and the unique
    #     identifier is the cluster name. Example: `cluster:mycluster`.
    #
    #   * SageMaker serverless endpoint - The resource type is `variant` and
    #     the unique identifier is the resource ID. Example:
    #     `endpoint/my-end-point/variant/KMeansClustering`.
    #
    #   * SageMaker inference component - The resource type is
    #     `inference-component` and the unique identifier is the resource
    #     ID. Example: `inference-component/my-inference-component`.
    #
    #   * Pool of WorkSpaces - The resource type is `workspacespool` and the
    #     unique identifier is the pool ID. Example:
    #     `workspacespool/wspool-123456`.
    #
    #
    #
    #   [1]: https://github.com/aws/aws-auto-scaling-custom-resource
    #   @return [String]
    #
    # @!attribute [rw] scalable_dimension
    #   The scalable dimension. This string consists of the service
    #   namespace, resource type, and scaling property.
    #
    #   * `ecs:service:DesiredCount` - The task count of an ECS service.
    #
    #   * `elasticmapreduce:instancegroup:InstanceCount` - The instance
    #     count of an EMR Instance Group.
    #
    #   * `ec2:spot-fleet-request:TargetCapacity` - The target capacity of a
    #     Spot Fleet.
    #
    #   * `appstream:fleet:DesiredCapacity` - The capacity of an AppStream
    #     2.0 fleet.
    #
    #   * `dynamodb:table:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB table.
    #
    #   * `dynamodb:table:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB table.
    #
    #   * `dynamodb:index:ReadCapacityUnits` - The provisioned read capacity
    #     for a DynamoDB global secondary index.
    #
    #   * `dynamodb:index:WriteCapacityUnits` - The provisioned write
    #     capacity for a DynamoDB global secondary index.
    #
    #   * `rds:cluster:ReadReplicaCount` - The count of Aurora Replicas in
    #     an Aurora DB cluster. Available for Aurora MySQL-compatible
    #     edition and Aurora PostgreSQL-compatible edition.
    #
    #   * `sagemaker:variant:DesiredInstanceCount` - The number of EC2
    #     instances for a SageMaker model endpoint variant.
    #
    #   * `custom-resource:ResourceType:Property` - The scalable dimension
    #     for a custom resource provided by your own application or service.
    #
    #   * `comprehend:document-classifier-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend document
    #     classification endpoint.
    #
    #   * `comprehend:entity-recognizer-endpoint:DesiredInferenceUnits` -
    #     The number of inference units for an Amazon Comprehend entity
    #     recognizer endpoint.
    #
    #   * `lambda:function:ProvisionedConcurrency` - The provisioned
    #     concurrency for a Lambda function.
    #
    #   * `cassandra:table:ReadCapacityUnits` - The provisioned read
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `cassandra:table:WriteCapacityUnits` - The provisioned write
    #     capacity for an Amazon Keyspaces table.
    #
    #   * `kafka:broker-storage:VolumeSize` - The provisioned volume size
    #     (in GiB) for brokers in an Amazon MSK cluster.
    #
    #   * `elasticache:cache-cluster:Nodes` - The number of nodes for an
    #     Amazon ElastiCache cache cluster.
    #
    #   * `elasticache:replication-group:NodeGroups` - The number of node
    #     groups for an Amazon ElastiCache replication group.
    #
    #   * `elasticache:replication-group:Replicas` - The number of replicas
    #     per node group for an Amazon ElastiCache replication group.
    #
    #   * `neptune:cluster:ReadReplicaCount` - The count of read replicas in
    #     an Amazon Neptune DB cluster.
    #
    #   * `sagemaker:variant:DesiredProvisionedConcurrency` - The
    #     provisioned concurrency for a SageMaker serverless endpoint.
    #
    #   * `sagemaker:inference-component:DesiredCopyCount` - The number of
    #     copies across an endpoint for a SageMaker inference component.
    #
    #   * `workspaces:workspacespool:DesiredUserSessions` - The number of
    #     user sessions for the WorkSpaces in the pool.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time that the action is scheduled to begin, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time that the action is scheduled to end, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] scalable_target_action
    #   The new minimum and maximum capacity. You can set both values or
    #   just one. At the scheduled time, if the current capacity is below
    #   the minimum capacity, Application Auto Scaling scales out to the
    #   minimum capacity. If the current capacity is above the maximum
    #   capacity, Application Auto Scaling scales in to the maximum
    #   capacity.
    #   @return [Types::ScalableTargetAction]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the scheduled action was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ScheduledAction AWS API Documentation
    #
    class ScheduledAction < Struct.new(
      :scheduled_action_name,
      :scheduled_action_arn,
      :service_namespace,
      :schedule,
      :timezone,
      :resource_id,
      :scalable_dimension,
      :start_time,
      :end_time,
      :scalable_target_action,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a step adjustment for a
    # [StepScalingPolicyConfiguration][1]. Describes an adjustment based on
    # the difference between the value of the aggregated CloudWatch metric
    # and the breach threshold that you've defined for the alarm.
    #
    # For the following examples, suppose that you have an alarm with a
    # breach threshold of 50:
    #
    # * To initiate the adjustment when the metric is greater than or equal
    #   to 50 and less than 60, specify a lower bound of `0` and an upper
    #   bound of `10`.
    #
    # * To initiate the adjustment when the metric is greater than 40 and
    #   less than or equal to 50, specify a lower bound of `-10` and an
    #   upper bound of `0`.
    #
    # There are a few rules for the step adjustments for your step policy:
    #
    # * The ranges of your step adjustments can't overlap or have a gap.
    #
    # * At most one step adjustment can have a null lower bound. If one step
    #   adjustment has a negative lower bound, then there must be a step
    #   adjustment with a null lower bound.
    #
    # * At most one step adjustment can have a null upper bound. If one step
    #   adjustment has a positive upper bound, then there must be a step
    #   adjustment with a null upper bound.
    #
    # * The upper and lower bound can't be null in the same step
    #   adjustment.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_StepScalingPolicyConfiguration.html
    #
    # @!attribute [rw] metric_interval_lower_bound
    #   The lower bound for the difference between the alarm threshold and
    #   the CloudWatch metric. If the metric value is above the breach
    #   threshold, the lower bound is inclusive (the metric must be greater
    #   than or equal to the threshold plus the lower bound). Otherwise,
    #   it's exclusive (the metric must be greater than the threshold plus
    #   the lower bound). A null value indicates negative infinity.
    #   @return [Float]
    #
    # @!attribute [rw] metric_interval_upper_bound
    #   The upper bound for the difference between the alarm threshold and
    #   the CloudWatch metric. If the metric value is above the breach
    #   threshold, the upper bound is exclusive (the metric must be less
    #   than the threshold plus the upper bound). Otherwise, it's inclusive
    #   (the metric must be less than or equal to the threshold plus the
    #   upper bound). A null value indicates positive infinity.
    #
    #   The upper bound must be greater than the lower bound.
    #   @return [Float]
    #
    # @!attribute [rw] scaling_adjustment
    #   The amount by which to scale, based on the specified adjustment
    #   type. A positive value adds to the current capacity while a negative
    #   number removes from the current capacity. For exact capacity, you
    #   must specify a non-negative value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/StepAdjustment AWS API Documentation
    #
    class StepAdjustment < Struct.new(
      :metric_interval_lower_bound,
      :metric_interval_upper_bound,
      :scaling_adjustment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a step scaling policy configuration to use with Application
    # Auto Scaling.
    #
    # For more information, see [Step scaling policies][1] in the
    # *Application Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html
    #
    # @!attribute [rw] adjustment_type
    #   Specifies how the `ScalingAdjustment` value in a [StepAdjustment][1]
    #   is interpreted (for example, an absolute number or a percentage).
    #   The valid values are `ChangeInCapacity`, `ExactCapacity`, and
    #   `PercentChangeInCapacity`.
    #
    #   `AdjustmentType` is required if you are adding a new step scaling
    #   policy configuration.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/APIReference/API_StepAdjustment.html
    #   @return [String]
    #
    # @!attribute [rw] step_adjustments
    #   A set of adjustments that enable you to scale based on the size of
    #   the alarm breach.
    #
    #   At least one step adjustment is required if you are adding a new
    #   step scaling policy configuration.
    #   @return [Array<Types::StepAdjustment>]
    #
    # @!attribute [rw] min_adjustment_magnitude
    #   The minimum value to scale by when the adjustment type is
    #   `PercentChangeInCapacity`. For example, suppose that you create a
    #   step scaling policy to scale out an Amazon ECS service by 25 percent
    #   and you specify a `MinAdjustmentMagnitude` of 2. If the service has
    #   4 tasks and the scaling policy is performed, 25 percent of 4 is 1.
    #   However, because you specified a `MinAdjustmentMagnitude` of 2,
    #   Application Auto Scaling scales out the service by 2 tasks.
    #   @return [Integer]
    #
    # @!attribute [rw] cooldown
    #   The amount of time, in seconds, to wait for a previous scaling
    #   activity to take effect. If not specified, the default value is 300.
    #   For more information, see [Cooldown period][1] in the *Application
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/step-scaling-policy-overview.html#step-scaling-cooldown
    #   @return [Integer]
    #
    # @!attribute [rw] metric_aggregation_type
    #   The aggregation type for the CloudWatch metrics. Valid values are
    #   `Minimum`, `Maximum`, and `Average`. If the aggregation type is
    #   null, the value is treated as `Average`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/StepScalingPolicyConfiguration AWS API Documentation
    #
    class StepScalingPolicyConfiguration < Struct.new(
      :adjustment_type,
      :step_adjustments,
      :min_adjustment_magnitude,
      :cooldown,
      :metric_aggregation_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whether the scaling activities for a scalable target are in
    # a suspended state.
    #
    # @!attribute [rw] dynamic_scaling_in_suspended
    #   Whether scale in by a target tracking scaling policy or a step
    #   scaling policy is suspended. Set the value to `true` if you don't
    #   want Application Auto Scaling to remove capacity when a scaling
    #   policy is triggered. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] dynamic_scaling_out_suspended
    #   Whether scale out by a target tracking scaling policy or a step
    #   scaling policy is suspended. Set the value to `true` if you don't
    #   want Application Auto Scaling to add capacity when a scaling policy
    #   is triggered. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] scheduled_scaling_suspended
    #   Whether scheduled scaling is suspended. Set the value to `true` if
    #   you don't want Application Auto Scaling to add or remove capacity
    #   by initiating scheduled actions. The default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/SuspendedState AWS API Documentation
    #
    class SuspendedState < Struct.new(
      :dynamic_scaling_in_suspended,
      :dynamic_scaling_out_suspended,
      :scheduled_scaling_suspended)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Identifies the Application Auto Scaling scalable target that you
    #   want to apply tags to.
    #
    #   For example:
    #   `arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123`
    #
    #   To get the ARN for a scalable target, use DescribeScalableTargets.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the resource. A tag is a label that you assign
    #   to an Amazon Web Services resource.
    #
    #   Each tag consists of a tag key and a tag value.
    #
    #   You cannot have more than one tag on an Application Auto Scaling
    #   scalable target with the same tag key. If you specify an existing
    #   tag key with a different tag value, Application Auto Scaling
    #   replaces the current tag value with the specified one.
    #
    #   For information about the rules that apply to tag keys and tag
    #   values, see [User-defined tag restrictions][1] in the *Amazon Web
    #   Services Billing User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Represents a specific metric.
    #
    # Metric is a property of the TargetTrackingMetricStat object.
    #
    # @!attribute [rw] dimensions
    #   The dimensions for the metric. For the list of available dimensions,
    #   see the Amazon Web Services documentation available from the table
    #   in [Amazon Web Services services that publish CloudWatch metrics
    #   ][1] in the *Amazon CloudWatch User Guide*.
    #
    #   Conditional: If you published your metric with dimensions, you must
    #   specify the same dimensions in your scaling policy.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html
    #   @return [Array<Types::TargetTrackingMetricDimension>]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric. For more information, see the table in
    #   [Amazon Web Services services that publish CloudWatch metrics ][1]
    #   in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/TargetTrackingMetric AWS API Documentation
    #
    class TargetTrackingMetric < Struct.new(
      :dimensions,
      :metric_name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metric data to return. Also defines whether this call is returning
    # data for one metric only, or whether it is performing a math
    # expression on the values of returned metric statistics to create a new
    # time series. A time series is a series of data points, each of which
    # is associated with a timestamp.
    #
    # For more information and examples, see [Create a target tracking
    # scaling policy for Application Auto Scaling using metric math][1] in
    # the *Application Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking-metric-math.html
    #
    # @!attribute [rw] expression
    #   The math expression to perform on the returned data, if this object
    #   is performing a math expression. This expression can use the `Id` of
    #   the other metrics to refer to those metrics, and can also use the
    #   `Id` of other expressions to use the result of those expressions.
    #
    #   Conditional: Within each `TargetTrackingMetricDataQuery` object, you
    #   must specify either `Expression` or `MetricStat`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A short name that identifies the object's results in the response.
    #   This name must be unique among all `MetricDataQuery` objects
    #   specified for a single scaling policy. If you are performing math
    #   expressions on this set of data, this name represents that data and
    #   can serve as a variable in the mathematical expression. The valid
    #   characters are letters, numbers, and underscores. The first
    #   character must be a lowercase letter.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   A human-readable label for this metric or expression. This is
    #   especially useful if this is a math expression, so that you know
    #   what the value represents.
    #   @return [String]
    #
    # @!attribute [rw] metric_stat
    #   Information about the metric data to return.
    #
    #   Conditional: Within each `MetricDataQuery` object, you must specify
    #   either `Expression` or `MetricStat`, but not both.
    #   @return [Types::TargetTrackingMetricStat]
    #
    # @!attribute [rw] return_data
    #   Indicates whether to return the timestamps and raw data values of
    #   this metric.
    #
    #   If you use any math expressions, specify `true` for this value for
    #   only the final math expression that the metric specification is
    #   based on. You must specify `false` for `ReturnData` for all the
    #   other metrics and expressions used in the metric specification.
    #
    #   If you are only retrieving metrics and not performing any math
    #   expressions, do not specify anything for `ReturnData`. This sets it
    #   to its default (`true`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/TargetTrackingMetricDataQuery AWS API Documentation
    #
    class TargetTrackingMetricDataQuery < Struct.new(
      :expression,
      :id,
      :label,
      :metric_stat,
      :return_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the dimension of a metric.
    #
    # @!attribute [rw] name
    #   The name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/TargetTrackingMetricDimension AWS API Documentation
    #
    class TargetTrackingMetricDimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines the CloudWatch metric to return, along with the
    # statistic and unit.
    #
    # For more information about the CloudWatch terminology below, see
    # [Amazon CloudWatch concepts][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
    #
    # @!attribute [rw] metric
    #   The CloudWatch metric to return, including the metric name,
    #   namespace, and dimensions. To get the exact metric name, namespace,
    #   and dimensions, inspect the [Metric][1] object that is returned by a
    #   call to [ListMetrics][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html
    #   @return [Types::TargetTrackingMetric]
    #
    # @!attribute [rw] stat
    #   The statistic to return. It can include any CloudWatch statistic or
    #   extended statistic. For a list of valid values, see the table in
    #   [Statistics][1] in the *Amazon CloudWatch User Guide*.
    #
    #   The most commonly used metric for scaling is `Average`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Statistic
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit to use for the returned data points. For a complete list of
    #   the units that CloudWatch supports, see the [MetricDatum][1] data
    #   type in the *Amazon CloudWatch API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/TargetTrackingMetricStat AWS API Documentation
    #
    class TargetTrackingMetricStat < Struct.new(
      :metric,
      :stat,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a target tracking scaling policy configuration to use with
    # Application Auto Scaling.
    #
    # For more information, see [Target tracking scaling policies][1] in the
    # *Application Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html
    #
    # @!attribute [rw] target_value
    #   The target value for the metric. Although this property accepts
    #   numbers of type Double, it won't accept values that are either too
    #   small or too large. Values must be in the range of -2^360 to 2^360.
    #   The value must be a valid number based on the choice of metric. For
    #   example, if the metric is CPU utilization, then the target value is
    #   a percent value that represents how much of the CPU can be used
    #   before scaling out.
    #
    #   <note markdown="1"> If the scaling policy specifies the `ALBRequestCountPerTarget`
    #   predefined metric, specify the target utilization as the optimal
    #   average request count per target during any one-minute interval.
    #
    #    </note>
    #   @return [Float]
    #
    # @!attribute [rw] predefined_metric_specification
    #   A predefined metric. You can specify either a predefined metric or a
    #   customized metric.
    #   @return [Types::PredefinedMetricSpecification]
    #
    # @!attribute [rw] customized_metric_specification
    #   A customized metric. You can specify either a predefined metric or a
    #   customized metric.
    #   @return [Types::CustomizedMetricSpecification]
    #
    # @!attribute [rw] scale_out_cooldown
    #   The amount of time, in seconds, to wait for a previous scale-out
    #   activity to take effect. For more information and for default
    #   values, see [Define cooldown periods][1] in the *Application Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/target-tracking-scaling-policy-overview.html#target-tracking-cooldown
    #   @return [Integer]
    #
    # @!attribute [rw] scale_in_cooldown
    #   The amount of time, in seconds, after a scale-in activity completes
    #   before another scale-in activity can start. For more information and
    #   for default values, see [Define cooldown periods][1] in the
    #   *Application Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/application/userguide/target-tracking-scaling-policy-overview.html#target-tracking-cooldown
    #   @return [Integer]
    #
    # @!attribute [rw] disable_scale_in
    #   Indicates whether scale in by the target tracking scaling policy is
    #   disabled. If the value is `true`, scale in is disabled and the
    #   target tracking scaling policy won't remove capacity from the
    #   scalable target. Otherwise, scale in is enabled and the target
    #   tracking scaling policy can remove capacity from the scalable
    #   target. The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/TargetTrackingScalingPolicyConfiguration AWS API Documentation
    #
    class TargetTrackingScalingPolicyConfiguration < Struct.new(
      :target_value,
      :predefined_metric_specification,
      :customized_metric_specification,
      :scale_out_cooldown,
      :scale_in_cooldown,
      :disable_scale_in)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains too many tags. Try the request again with fewer
    # tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the Application Auto Scaling resource. This value is an
    #   Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Identifies the Application Auto Scaling scalable target from which
    #   to remove tags.
    #
    #   For example:
    #   `arn:aws:application-autoscaling:us-east-1:123456789012:scalable-target/1234abcd56ab78cd901ef1234567890ab123`
    #
    #   To get the ARN for a scalable target, use DescribeScalableTargets.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   One or more tag keys. Specify only the tag keys, not the tag values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # An exception was thrown for a validation issue. Review the available
    # parameters for the API request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

