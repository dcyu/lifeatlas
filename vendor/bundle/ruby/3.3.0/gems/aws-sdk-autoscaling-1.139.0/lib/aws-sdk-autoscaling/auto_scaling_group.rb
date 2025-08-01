# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling

  class AutoScalingGroup

    extend Aws::Deprecations

    # @overload def initialize(name, options = {})
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def name
      @name
    end
    alias :auto_scaling_group_name :name

    # The Amazon Resource Name (ARN) of the Auto Scaling group.
    # @return [String]
    def auto_scaling_group_arn
      data[:auto_scaling_group_arn]
    end

    # The name of the associated launch configuration.
    # @return [String]
    def launch_configuration_name
      data[:launch_configuration_name]
    end

    # The launch template for the group.
    # @return [Types::LaunchTemplateSpecification]
    def launch_template
      data[:launch_template]
    end

    # The mixed instances policy for the group.
    # @return [Types::MixedInstancesPolicy]
    def mixed_instances_policy
      data[:mixed_instances_policy]
    end

    # The minimum size of the group.
    # @return [Integer]
    def min_size
      data[:min_size]
    end

    # The maximum size of the group.
    # @return [Integer]
    def max_size
      data[:max_size]
    end

    # The desired size of the group.
    # @return [Integer]
    def desired_capacity
      data[:desired_capacity]
    end

    # The predicted capacity of the group when it has a predictive scaling
    # policy.
    # @return [Integer]
    def predicted_capacity
      data[:predicted_capacity]
    end

    # The duration of the default cooldown period, in seconds.
    # @return [Integer]
    def default_cooldown
      data[:default_cooldown]
    end

    # One or more Availability Zones for the group.
    # @return [Array<String>]
    def availability_zones
      data[:availability_zones]
    end

    # One or more load balancers associated with the group.
    # @return [Array<String>]
    def load_balancer_names
      data[:load_balancer_names]
    end

    # The Amazon Resource Names (ARN) of the target groups for your load
    # balancer.
    # @return [Array<String>]
    def target_group_arns
      data[:target_group_arns]
    end

    # A comma-separated value string of one or more health check types.
    # @return [String]
    def health_check_type
      data[:health_check_type]
    end

    # The duration of the health check grace period, in seconds.
    # @return [Integer]
    def health_check_grace_period
      data[:health_check_grace_period]
    end

    # The date and time the group was created.
    # @return [Time]
    def created_time
      data[:created_time]
    end

    # The suspended processes associated with the group.
    # @return [Array<Types::SuspendedProcess>]
    def suspended_processes
      data[:suspended_processes]
    end

    # The name of the placement group into which to launch your instances,
    # if any.
    # @return [String]
    def placement_group
      data[:placement_group]
    end

    # One or more subnet IDs, if applicable, separated by commas.
    # @return [String]
    def vpc_zone_identifier
      data[:vpc_zone_identifier]
    end

    # The metrics enabled for the group.
    # @return [Array<Types::EnabledMetric>]
    def enabled_metrics
      data[:enabled_metrics]
    end

    # The current state of the group when the [DeleteAutoScalingGroup][1]
    # operation is in progress.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteAutoScalingGroup.html
    # @return [String]
    def status
      data[:status]
    end

    # The termination policies for the group.
    # @return [Array<String>]
    def termination_policies
      data[:termination_policies]
    end

    # Indicates whether newly launched instances are protected from
    # termination by Amazon EC2 Auto Scaling when scaling in. For more
    # information about preventing instances from terminating on scale in,
    # see [Use instance scale-in protection][1] in the *Amazon EC2 Auto
    # Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html
    # @return [Boolean]
    def new_instances_protected_from_scale_in
      data[:new_instances_protected_from_scale_in]
    end

    # The Amazon Resource Name (ARN) of the service-linked role that the
    # Auto Scaling group uses to call other Amazon Web Services on your
    # behalf.
    # @return [String]
    def service_linked_role_arn
      data[:service_linked_role_arn]
    end

    # The maximum amount of time, in seconds, that an instance can be in
    # service.
    #
    # Valid Range: Minimum value of 0.
    # @return [Integer]
    def max_instance_lifetime
      data[:max_instance_lifetime]
    end

    # Indicates whether Capacity Rebalancing is enabled.
    # @return [Boolean]
    def capacity_rebalance
      data[:capacity_rebalance]
    end

    # The warm pool for the group.
    # @return [Types::WarmPoolConfiguration]
    def warm_pool_configuration
      data[:warm_pool_configuration]
    end

    # The current size of the warm pool.
    # @return [Integer]
    def warm_pool_size
      data[:warm_pool_size]
    end

    # Reserved.
    # @return [String]
    def context
      data[:context]
    end

    # The unit of measurement for the value specified for desired capacity.
    # Amazon EC2 Auto Scaling supports `DesiredCapacityType` for
    # attribute-based instance type selection only.
    # @return [String]
    def desired_capacity_type
      data[:desired_capacity_type]
    end

    # The duration of the default instance warmup, in seconds.
    # @return [Integer]
    def default_instance_warmup
      data[:default_instance_warmup]
    end

    # The traffic sources associated with this Auto Scaling group.
    # @return [Array<Types::TrafficSourceIdentifier>]
    def traffic_sources
      data[:traffic_sources]
    end

    # An instance maintenance policy.
    # @return [Types::InstanceMaintenancePolicy]
    def instance_maintenance_policy
      data[:instance_maintenance_policy]
    end

    # The instance capacity distribution across Availability Zones.
    # @return [Types::AvailabilityZoneDistribution]
    def availability_zone_distribution
      data[:availability_zone_distribution]
    end

    # The Availability Zone impairment policy.
    # @return [Types::AvailabilityZoneImpairmentPolicy]
    def availability_zone_impairment_policy
      data[:availability_zone_impairment_policy]
    end

    # The capacity reservation specification.
    # @return [Types::CapacityReservationSpecification]
    def capacity_reservation_specification
      data[:capacity_reservation_specification]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {AutoScalingGroup}.
    # Returns `self` making it possible to chain methods.
    #
    #     auto_scaling_group.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_auto_scaling_groups(auto_scaling_group_names: [@name])
      end
      @data = resp.auto_scaling_groups[0]
      self
    end
    alias :reload :load

    # @return [Types::AutoScalingGroup]
    #   Returns the data for this {AutoScalingGroup}. Calls
    #   {Client#describe_auto_scaling_groups} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @param [Hash] options ({})
    # @return [Boolean]
    #   Returns `true` if the AutoScalingGroup exists.
    def exists?(options = {})
      begin
        wait_until_exists(options.merge(max_attempts: 1))
        true
      rescue Aws::Waiters::Errors::UnexpectedError => e
        raise e.error
      rescue Aws::Waiters::Errors::WaiterFailed
        false
      end
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (10)
    # @option options [Float] :delay (5)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [AutoScalingGroup]
    def wait_until_exists(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::GroupExists.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(auto_scaling_group_names: [@name]))
      end
      AutoScalingGroup.new({
        name: @name,
        client: @client
      })
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [AutoScalingGroup]
    def wait_until_in_service(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::GroupInService.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(auto_scaling_group_names: [@name]))
      end
      AutoScalingGroup.new({
        name: @name,
        client: @client
      })
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [AutoScalingGroup]
    def wait_until_not_exists(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::GroupNotExists.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(auto_scaling_group_names: [@name]))
      end
      AutoScalingGroup.new({
        name: @name,
        client: @client
      })
    end

    # @deprecated Use [Aws::AutoScaling::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource
    #   remains unchanged.
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) do |instance|
    #       instance.state.name == 'running'
    #     end
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is
    # set by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @yieldparam [Resource] resource to be used in the waiting condition.
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter
    #   terminates because the waiter has entered a state that it will not
    #   transition out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is
    #   encountered while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        Aws::Waiters::Waiter.new(options).wait({})
      end
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.attach_instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    # @return [EmptyStructure]
    def attach_instances(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.attach_instances(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.delete({
    #     force_delete: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :force_delete
    #   Specifies that the group is to be deleted along with all instances
    #   associated with the group, without waiting for all instances to be
    #   terminated. This action also deletes any outstanding lifecycle actions
    #   associated with the group.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_auto_scaling_group(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   activity = auto_scaling_group.detach_instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     should_decrement_desired_capacity: false, # required
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    # @option options [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether the Auto Scaling group decrements the desired
    #   capacity value by the number of instances detached.
    # @return [Activity::Collection]
    def detach_instances(options = {})
      batch = []
      options = options.merge(auto_scaling_group_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.detach_instances(options)
      end
      resp.data.activities.each do |a|
        batch << Activity.new(
          id: a.activity_id,
          data: a,
          client: @client
        )
      end
      Activity::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.disable_metrics_collection({
    #     metrics: ["XmlStringMaxLen255"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :metrics
    #   Identifies the metrics to disable.
    #
    #   You can specify one or more of the following metrics:
    #
    #   * `GroupMinSize`
    #
    #   * `GroupMaxSize`
    #
    #   * `GroupDesiredCapacity`
    #
    #   * `GroupInServiceInstances`
    #
    #   * `GroupPendingInstances`
    #
    #   * `GroupStandbyInstances`
    #
    #   * `GroupTerminatingInstances`
    #
    #   * `GroupTotalInstances`
    #
    #   * `GroupInServiceCapacity`
    #
    #   * `GroupPendingCapacity`
    #
    #   * `GroupStandbyCapacity`
    #
    #   * `GroupTerminatingCapacity`
    #
    #   * `GroupTotalCapacity`
    #
    #   * `WarmPoolDesiredCapacity`
    #
    #   * `WarmPoolWarmedCapacity`
    #
    #   * `WarmPoolPendingCapacity`
    #
    #   * `WarmPoolTerminatingCapacity`
    #
    #   * `WarmPoolTotalCapacity`
    #
    #   * `GroupAndWarmPoolDesiredCapacity`
    #
    #   * `GroupAndWarmPoolTotalCapacity`
    #
    #   If you omit this property, all metrics are disabled.
    #
    #   For more information, see [Amazon CloudWatch metrics for Amazon EC2
    #   Auto Scaling][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-metrics.html
    # @return [EmptyStructure]
    def disable_metrics_collection(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.disable_metrics_collection(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.enable_metrics_collection({
    #     metrics: ["XmlStringMaxLen255"],
    #     granularity: "XmlStringMaxLen255", # required
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :metrics
    #   Identifies the metrics to enable.
    #
    #   You can specify one or more of the following metrics:
    #
    #   * `GroupMinSize`
    #
    #   * `GroupMaxSize`
    #
    #   * `GroupDesiredCapacity`
    #
    #   * `GroupInServiceInstances`
    #
    #   * `GroupPendingInstances`
    #
    #   * `GroupStandbyInstances`
    #
    #   * `GroupTerminatingInstances`
    #
    #   * `GroupTotalInstances`
    #
    #   * `GroupInServiceCapacity`
    #
    #   * `GroupPendingCapacity`
    #
    #   * `GroupStandbyCapacity`
    #
    #   * `GroupTerminatingCapacity`
    #
    #   * `GroupTotalCapacity`
    #
    #   * `WarmPoolDesiredCapacity`
    #
    #   * `WarmPoolWarmedCapacity`
    #
    #   * `WarmPoolPendingCapacity`
    #
    #   * `WarmPoolTerminatingCapacity`
    #
    #   * `WarmPoolTotalCapacity`
    #
    #   * `GroupAndWarmPoolDesiredCapacity`
    #
    #   * `GroupAndWarmPoolTotalCapacity`
    #
    #   If you specify `Granularity` and don't specify any metrics, all
    #   metrics are enabled.
    #
    #   For more information, see [Amazon CloudWatch metrics for Amazon EC2
    #   Auto Scaling][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-metrics.html
    # @option options [required, String] :granularity
    #   The frequency at which Amazon EC2 Auto Scaling sends aggregated data
    #   to CloudWatch. The only valid value is `1Minute`.
    # @return [EmptyStructure]
    def enable_metrics_collection(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.enable_metrics_collection(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   scalingpolicy = auto_scaling_group.put_scaling_policy({
    #     policy_name: "XmlStringMaxLen255", # required
    #     policy_type: "XmlStringMaxLen64",
    #     adjustment_type: "XmlStringMaxLen255",
    #     min_adjustment_step: 1,
    #     min_adjustment_magnitude: 1,
    #     scaling_adjustment: 1,
    #     cooldown: 1,
    #     metric_aggregation_type: "XmlStringMaxLen32",
    #     step_adjustments: [
    #       {
    #         metric_interval_lower_bound: 1.0,
    #         metric_interval_upper_bound: 1.0,
    #         scaling_adjustment: 1, # required
    #       },
    #     ],
    #     estimated_instance_warmup: 1,
    #     target_tracking_configuration: {
    #       predefined_metric_specification: {
    #         predefined_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, ALBRequestCountPerTarget
    #         resource_label: "XmlStringMaxLen1023",
    #       },
    #       customized_metric_specification: {
    #         metric_name: "MetricName",
    #         namespace: "MetricNamespace",
    #         dimensions: [
    #           {
    #             name: "MetricDimensionName", # required
    #             value: "MetricDimensionValue", # required
    #           },
    #         ],
    #         statistic: "Average", # accepts Average, Minimum, Maximum, SampleCount, Sum
    #         unit: "MetricUnit",
    #         period: 1,
    #         metrics: [
    #           {
    #             id: "XmlStringMaxLen64", # required
    #             expression: "XmlStringMaxLen2047",
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "MetricNamespace", # required
    #                 metric_name: "MetricName", # required
    #                 dimensions: [
    #                   {
    #                     name: "MetricDimensionName", # required
    #                     value: "MetricDimensionValue", # required
    #                   },
    #                 ],
    #               },
    #               stat: "XmlStringMetricStat", # required
    #               unit: "MetricUnit",
    #               period: 1,
    #             },
    #             label: "XmlStringMetricLabel",
    #             period: 1,
    #             return_data: false,
    #           },
    #         ],
    #       },
    #       target_value: 1.0, # required
    #       disable_scale_in: false,
    #     },
    #     enabled: false,
    #     predictive_scaling_configuration: {
    #       metric_specifications: [ # required
    #         {
    #           target_value: 1.0, # required
    #           predefined_metric_pair_specification: {
    #             predefined_metric_type: "ASGCPUUtilization", # required, accepts ASGCPUUtilization, ASGNetworkIn, ASGNetworkOut, ALBRequestCount
    #             resource_label: "XmlStringMaxLen1023",
    #           },
    #           predefined_scaling_metric_specification: {
    #             predefined_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, ALBRequestCountPerTarget
    #             resource_label: "XmlStringMaxLen1023",
    #           },
    #           predefined_load_metric_specification: {
    #             predefined_metric_type: "ASGTotalCPUUtilization", # required, accepts ASGTotalCPUUtilization, ASGTotalNetworkIn, ASGTotalNetworkOut, ALBTargetGroupRequestCount
    #             resource_label: "XmlStringMaxLen1023",
    #           },
    #           customized_scaling_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       },
    #                     ],
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit",
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false,
    #               },
    #             ],
    #           },
    #           customized_load_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       },
    #                     ],
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit",
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false,
    #               },
    #             ],
    #           },
    #           customized_capacity_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       },
    #                     ],
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit",
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false,
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       mode: "ForecastAndScale", # accepts ForecastAndScale, ForecastOnly
    #       scheduling_buffer_time: 1,
    #       max_capacity_breach_behavior: "HonorMaxCapacity", # accepts HonorMaxCapacity, IncreaseMaxCapacity
    #       max_capacity_buffer: 1,
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :policy_name
    #   The name of the policy.
    # @option options [String] :policy_type
    #   One of the following policy types:
    #
    #   * `TargetTrackingScaling`
    #
    #   * `StepScaling`
    #
    #   * `SimpleScaling` (default)
    #
    #   * `PredictiveScaling`
    # @option options [String] :adjustment_type
    #   Specifies how the scaling adjustment is interpreted (for example, an
    #   absolute number or a percentage). The valid values are
    #   `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
    #
    #   Required if the policy type is `StepScaling` or `SimpleScaling`. For
    #   more information, see [Scaling adjustment types][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment
    # @option options [Integer] :min_adjustment_step
    #   Available for backward compatibility. Use `MinAdjustmentMagnitude`
    #   instead.
    # @option options [Integer] :min_adjustment_magnitude
    #   The minimum value to scale by when the adjustment type is
    #   `PercentChangeInCapacity`. For example, suppose that you create a step
    #   scaling policy to scale out an Auto Scaling group by 25 percent and
    #   you specify a `MinAdjustmentMagnitude` of 2. If the group has 4
    #   instances and the scaling policy is performed, 25 percent of 4 is 1.
    #   However, because you specified a `MinAdjustmentMagnitude` of 2, Amazon
    #   EC2 Auto Scaling scales out the group by 2 instances.
    #
    #   Valid only if the policy type is `StepScaling` or `SimpleScaling`. For
    #   more information, see [Scaling adjustment types][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #   <note markdown="1"> Some Auto Scaling groups use instance weights. In this case, set the
    #   `MinAdjustmentMagnitude` to a value that is at least as large as your
    #   largest instance weight.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment
    # @option options [Integer] :scaling_adjustment
    #   The amount by which to scale, based on the specified adjustment type.
    #   A positive value adds to the current capacity while a negative number
    #   removes from the current capacity. For exact capacity, you must
    #   specify a non-negative value.
    #
    #   Required if the policy type is `SimpleScaling`. (Not used with any
    #   other policy type.)
    # @option options [Integer] :cooldown
    #   A cooldown period, in seconds, that applies to a specific simple
    #   scaling policy. When a cooldown period is specified here, it overrides
    #   the default cooldown.
    #
    #   Valid only if the policy type is `SimpleScaling`. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1] in
    #   the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Default: None
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html
    # @option options [String] :metric_aggregation_type
    #   The aggregation type for the CloudWatch metrics. The valid values are
    #   `Minimum`, `Maximum`, and `Average`. If the aggregation type is null,
    #   the value is treated as `Average`.
    #
    #   Valid only if the policy type is `StepScaling`.
    # @option options [Array<Types::StepAdjustment>] :step_adjustments
    #   A set of adjustments that enable you to scale based on the size of the
    #   alarm breach.
    #
    #   Required if the policy type is `StepScaling`. (Not used with any other
    #   policy type.)
    # @option options [Integer] :estimated_instance_warmup
    #   *Not needed if the default instance warmup is defined for the group.*
    #
    #   The estimated time, in seconds, until a newly launched instance can
    #   contribute to the CloudWatch metrics. This warm-up period applies to
    #   instances launched due to a specific target tracking or step scaling
    #   policy. When a warm-up period is specified here, it overrides the
    #   default instance warmup.
    #
    #   Valid only if the policy type is `TargetTrackingScaling` or
    #   `StepScaling`.
    #
    #   <note markdown="1"> The default is to use the value for the default instance warmup
    #   defined for the group. If default instance warmup is null, then
    #   `EstimatedInstanceWarmup` falls back to the value of default cooldown.
    #
    #    </note>
    # @option options [Types::TargetTrackingConfiguration] :target_tracking_configuration
    #   A target tracking scaling policy. Provides support for predefined or
    #   custom metrics.
    #
    #   The following predefined metrics are available:
    #
    #   * `ASGAverageCPUUtilization`
    #
    #   * `ASGAverageNetworkIn`
    #
    #   * `ASGAverageNetworkOut`
    #
    #   * `ALBRequestCountPerTarget`
    #
    #   If you specify `ALBRequestCountPerTarget` for the metric, you must
    #   specify the `ResourceLabel` property with the
    #   `PredefinedMetricSpecification`.
    #
    #   For more information, see [TargetTrackingConfiguration][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #   Required if the policy type is `TargetTrackingScaling`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html
    # @option options [Boolean] :enabled
    #   Indicates whether the scaling policy is enabled or disabled. The
    #   default is enabled. For more information, see [Disable a scaling
    #   policy for an Auto Scaling group][1] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enable-disable-scaling-policy.html
    # @option options [Types::PredictiveScalingConfiguration] :predictive_scaling_configuration
    #   A predictive scaling policy. Provides support for predefined and
    #   custom metrics.
    #
    #   Predefined metrics include CPU utilization, network in/out, and the
    #   Application Load Balancer request count.
    #
    #   For more information, see [PredictiveScalingConfiguration][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #   Required if the policy type is `PredictiveScaling`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredictiveScalingConfiguration.html
    # @return [ScalingPolicy]
    def put_scaling_policy(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.put_scaling_policy(options)
      end
      ScalingPolicy.new(
        name: options[:policy_name],
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   scheduledaction = auto_scaling_group.put_scheduled_update_group_action({
    #     scheduled_action_name: "XmlStringMaxLen255", # required
    #     time: Time.now,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     recurrence: "XmlStringMaxLen255",
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #     time_zone: "XmlStringMaxLen255",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :scheduled_action_name
    #   The name of this scaling action.
    # @option options [Time,DateTime,Date,Integer,String] :time
    #   This property is no longer used.
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ
    #   format in UTC/GMT only and in quotes (for example,
    #   `"2021-06-01T00:00:00Z"`).
    #
    #   If you specify `Recurrence` and `StartTime`, Amazon EC2 Auto Scaling
    #   performs the action at this time, and then performs the action based
    #   on the specified recurrence.
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The date and time for the recurring schedule to end, in UTC. For
    #   example, `"2021-06-01T00:00:00Z"`.
    # @option options [String] :recurrence
    #   The recurring schedule for this action. This format consists of five
    #   fields separated by white spaces: \[Minute\] \[Hour\]
    #   \[Day\_of\_Month\] \[Month\_of\_Year\] \[Day\_of\_Week\]. The value
    #   must be in quotes (for example, `"30 0 1 1,6,12 *"`). For more
    #   information about this format, see [Crontab][1].
    #
    #   When `StartTime` and `EndTime` are specified with `Recurrence`, they
    #   form the boundaries of when the recurring action starts and stops.
    #
    #   Cron expressions use Universal Coordinated Time (UTC) by default.
    #
    #
    #
    #   [1]: http://crontab.org
    # @option options [Integer] :min_size
    #   The minimum size of the Auto Scaling group.
    # @option options [Integer] :max_size
    #   The maximum size of the Auto Scaling group.
    # @option options [Integer] :desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling group
    #   after the scheduled action runs and the capacity it attempts to
    #   maintain. It can scale beyond this capacity if you add more scaling
    #   conditions.
    #
    #   <note markdown="1"> You must specify at least one of the following properties: `MaxSize`,
    #   `MinSize`, or `DesiredCapacity`.
    #
    #    </note>
    # @option options [String] :time_zone
    #   Specifies the time zone for a cron expression. If a time zone is not
    #   provided, UTC is used by default.
    #
    #   Valid values are the canonical names of the IANA time zones, derived
    #   from the IANA Time Zone Database (such as `Etc/GMT+9` or
    #   `Pacific/Tahiti`). For more information, see
    #   [https://en.wikipedia.org/wiki/List\_of\_tz\_database\_time\_zones][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
    # @return [ScheduledAction]
    def put_scheduled_update_group_action(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.put_scheduled_update_group_action(options)
      end
      ScheduledAction.new(
        name: options[:scheduled_action_name],
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.resume_processes({
    #     scaling_processes: ["XmlStringMaxLen255"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :scaling_processes
    #   One or more of the following processes:
    #
    #   * `Launch`
    #
    #   * `Terminate`
    #
    #   * `AddToLoadBalancer`
    #
    #   * `AlarmNotification`
    #
    #   * `AZRebalance`
    #
    #   * `HealthCheck`
    #
    #   * `InstanceRefresh`
    #
    #   * `ReplaceUnhealthy`
    #
    #   * `ScheduledActions`
    #
    #   If you omit this property, all processes are specified.
    # @return [EmptyStructure]
    def resume_processes(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.resume_processes(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.set_desired_capacity({
    #     desired_capacity: 1, # required
    #     honor_cooldown: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, Integer] :desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling group
    #   after this operation completes and the capacity it attempts to
    #   maintain.
    # @option options [Boolean] :honor_cooldown
    #   Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
    #   period to complete before initiating a scaling activity to set your
    #   Auto Scaling group to its new capacity. By default, Amazon EC2 Auto
    #   Scaling does not honor the cooldown period during manual scaling
    #   activities.
    # @return [EmptyStructure]
    def set_desired_capacity(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.set_desired_capacity(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.suspend_processes({
    #     scaling_processes: ["XmlStringMaxLen255"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :scaling_processes
    #   One or more of the following processes:
    #
    #   * `Launch`
    #
    #   * `Terminate`
    #
    #   * `AddToLoadBalancer`
    #
    #   * `AlarmNotification`
    #
    #   * `AZRebalance`
    #
    #   * `HealthCheck`
    #
    #   * `InstanceRefresh`
    #
    #   * `ReplaceUnhealthy`
    #
    #   * `ScheduledActions`
    #
    #   If you omit this property, all processes are specified.
    # @return [EmptyStructure]
    def suspend_processes(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.suspend_processes(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   autoscalinggroup = auto_scaling_group.update({
    #     launch_configuration_name: "XmlStringMaxLen255",
    #     launch_template: {
    #       launch_template_id: "XmlStringMaxLen255",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "XmlStringMaxLen255",
    #     },
    #     mixed_instances_policy: {
    #       launch_template: {
    #         launch_template_specification: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255",
    #         },
    #         overrides: [
    #           {
    #             instance_type: "XmlStringMaxLen255",
    #             weighted_capacity: "XmlStringMaxLen32",
    #             launch_template_specification: {
    #               launch_template_id: "XmlStringMaxLen255",
    #               launch_template_name: "LaunchTemplateName",
    #               version: "XmlStringMaxLen255",
    #             },
    #             instance_requirements: {
    #               v_cpu_count: { # required
    #                 min: 1, # required
    #                 max: 1,
    #               },
    #               memory_mi_b: { # required
    #                 min: 1, # required
    #                 max: 1,
    #               },
    #               cpu_manufacturers: ["intel"], # accepts intel, amd, amazon-web-services, apple
    #               memory_gi_b_per_v_cpu: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               excluded_instance_types: ["ExcludedInstance"],
    #               instance_generations: ["current"], # accepts current, previous
    #               spot_max_price_percentage_over_lowest_price: 1,
    #               max_spot_price_as_percentage_of_optimal_on_demand_price: 1,
    #               on_demand_max_price_percentage_over_lowest_price: 1,
    #               bare_metal: "included", # accepts included, excluded, required
    #               burstable_performance: "included", # accepts included, excluded, required
    #               require_hibernate_support: false,
    #               network_interface_count: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               local_storage: "included", # accepts included, excluded, required
    #               local_storage_types: ["hdd"], # accepts hdd, ssd
    #               total_local_storage_gb: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               baseline_ebs_bandwidth_mbps: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               accelerator_types: ["gpu"], # accepts gpu, fpga, inference
    #               accelerator_count: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               accelerator_manufacturers: ["nvidia"], # accepts nvidia, amd, amazon-web-services, xilinx
    #               accelerator_names: ["a100"], # accepts a100, v100, k80, t4, m60, radeon-pro-v520, vu9p
    #               accelerator_total_memory_mi_b: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               network_bandwidth_gbps: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               allowed_instance_types: ["AllowedInstanceType"],
    #               baseline_performance_factors: {
    #                 cpu: {
    #                   references: [
    #                     {
    #                       instance_family: "String",
    #                     },
    #                   ],
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #       },
    #       instances_distribution: {
    #         on_demand_allocation_strategy: "XmlString",
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 1,
    #         spot_allocation_strategy: "XmlString",
    #         spot_instance_pools: 1,
    #         spot_max_price: "MixedInstanceSpotPrice",
    #       },
    #     },
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: ["XmlStringMaxLen255"],
    #     health_check_type: "XmlStringMaxLen32",
    #     health_check_grace_period: 1,
    #     placement_group: "UpdatePlacementGroupParam",
    #     vpc_zone_identifier: "XmlStringMaxLen5000",
    #     termination_policies: ["XmlStringMaxLen1600"],
    #     new_instances_protected_from_scale_in: false,
    #     service_linked_role_arn: "ResourceName",
    #     max_instance_lifetime: 1,
    #     capacity_rebalance: false,
    #     context: "Context",
    #     desired_capacity_type: "XmlStringMaxLen255",
    #     default_instance_warmup: 1,
    #     instance_maintenance_policy: {
    #       min_healthy_percentage: 1,
    #       max_healthy_percentage: 1,
    #     },
    #     availability_zone_distribution: {
    #       capacity_distribution_strategy: "balanced-only", # accepts balanced-only, balanced-best-effort
    #     },
    #     availability_zone_impairment_policy: {
    #       zonal_shift_enabled: false,
    #       impaired_zone_health_check_behavior: "ReplaceUnhealthy", # accepts ReplaceUnhealthy, IgnoreUnhealthy
    #     },
    #     skip_zonal_shift_validation: false,
    #     capacity_reservation_specification: {
    #       capacity_reservation_preference: "capacity-reservations-only", # accepts capacity-reservations-only, capacity-reservations-first, none, default
    #       capacity_reservation_target: {
    #         capacity_reservation_ids: ["AsciiStringMaxLen255"],
    #         capacity_reservation_resource_group_arns: ["ResourceName"],
    #       },
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [String] :launch_configuration_name
    #   The name of the launch configuration. If you specify
    #   `LaunchConfigurationName` in your update request, you can't specify
    #   `LaunchTemplate` or `MixedInstancesPolicy`.
    # @option options [Types::LaunchTemplateSpecification] :launch_template
    #   The launch template and version to use to specify the updates. If you
    #   specify `LaunchTemplate` in your update request, you can't specify
    #   `LaunchConfigurationName` or `MixedInstancesPolicy`.
    # @option options [Types::MixedInstancesPolicy] :mixed_instances_policy
    #   The mixed instances policy. For more information, see [Auto Scaling
    #   groups with multiple instance types and purchase options][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html
    # @option options [Integer] :min_size
    #   The minimum size of the Auto Scaling group.
    # @option options [Integer] :max_size
    #   The maximum size of the Auto Scaling group.
    #
    #   <note markdown="1"> With a mixed instances policy that uses instance weighting, Amazon EC2
    #   Auto Scaling may need to go above `MaxSize` to meet your capacity
    #   requirements. In this event, Amazon EC2 Auto Scaling will never go
    #   above `MaxSize` by more than your largest instance weight (weights
    #   that define how many units each instance contributes to the desired
    #   capacity of the group).
    #
    #    </note>
    # @option options [Integer] :desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling group
    #   after this operation completes and the capacity it attempts to
    #   maintain. This number must be greater than or equal to the minimum
    #   size of the group and less than or equal to the maximum size of the
    #   group.
    # @option options [Integer] :default_cooldown
    #   *Only needed if you use simple scaling policies.*
    #
    #   The amount of time, in seconds, between one scaling activity ending
    #   and another one starting due to simple scaling policies. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1] in
    #   the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-scaling-cooldowns.html
    # @option options [Array<String>] :availability_zones
    #   One or more Availability Zones for the group.
    # @option options [String] :health_check_type
    #   A comma-separated value string of one or more health check types.
    #
    #   The valid values are `EC2`, `EBS`, `ELB`, and `VPC_LATTICE`. `EC2` is
    #   the default health check and cannot be disabled. For more information,
    #   see [Health checks for instances in an Auto Scaling group][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Only specify `EC2` if you must clear a value that was previously set.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-health-checks.html
    # @option options [Integer] :health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service and marking it unhealthy due to a failed health check.
    #   This is useful if your instances do not immediately pass their health
    #   checks after they enter the `InService` state. For more information,
    #   see [Set the health check grace period for an Auto Scaling group][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html
    # @option options [String] :placement_group
    #   The name of an existing placement group into which to launch your
    #   instances. To remove the placement group setting, pass an empty string
    #   for `placement-group`. For more information about placement groups,
    #   see [Placement groups][1] in the *Amazon EC2 User Guide*.
    #
    #   <note markdown="1"> A *cluster* placement group is a logical grouping of instances within
    #   a single Availability Zone. You cannot specify multiple Availability
    #   Zones and a cluster placement group.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    # @option options [String] :vpc_zone_identifier
    #   A comma-separated list of subnet IDs for a virtual private cloud
    #   (VPC). If you specify `VPCZoneIdentifier` with `AvailabilityZones`,
    #   the subnets that you specify must reside in those Availability Zones.
    # @option options [Array<String>] :termination_policies
    #   A policy or a list of policies that are used to select the instances
    #   to terminate. The policies are executed in the order that you list
    #   them. For more information, see [Configure termination policies for
    #   Amazon EC2 Auto Scaling][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #   Valid values: `Default` \| `AllocationStrategy` \|
    #   `ClosestToNextInstanceHour` \| `NewestInstance` \| `OldestInstance` \|
    #   `OldestLaunchConfiguration` \| `OldestLaunchTemplate` \|
    #   `arn:aws:lambda:region:account-id:function:my-function:my-alias`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html
    # @option options [Boolean] :new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in. For more
    #   information about preventing instances from terminating on scale in,
    #   see [Use instance scale-in protection][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html
    # @option options [String] :service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other Amazon Web Services on your
    #   behalf. For more information, see [Service-linked roles][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html
    # @option options [Integer] :max_instance_lifetime
    #   The maximum amount of time, in seconds, that an instance can be in
    #   service. The default is null. If specified, the value must be either 0
    #   or a number equal to or greater than 86,400 seconds (1 day). To clear
    #   a previously set value, specify a new value of 0. For more
    #   information, see [Replacing Auto Scaling instances based on maximum
    #   instance lifetime][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html
    # @option options [Boolean] :capacity_rebalance
    #   Enables or disables Capacity Rebalancing. If Capacity Rebalancing is
    #   disabled, proactive replacement of at-risk Spot Instances does not
    #   occur. For more information, see [Capacity Rebalancing in Auto Scaling
    #   to replace at-risk Spot Instances][1] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #   <note markdown="1"> To suspend rebalancing across Availability Zones, use the
    #   [SuspendProcesses][2] API.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_SuspendedProcess.html
    # @option options [String] :context
    #   Reserved.
    # @option options [String] :desired_capacity_type
    #   The unit of measurement for the value specified for desired capacity.
    #   Amazon EC2 Auto Scaling supports `DesiredCapacityType` for
    #   attribute-based instance type selection only. For more information,
    #   see [Create a mixed instances group using attribute-based instance
    #   type selection][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   By default, Amazon EC2 Auto Scaling specifies `units`, which
    #   translates into number of instances.
    #
    #   Valid values: `units` \| `vcpu` \| `memory-mib`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-mixed-instances-group-attribute-based-instance-type-selection.html
    # @option options [Integer] :default_instance_warmup
    #   The amount of time, in seconds, until a new instance is considered to
    #   have finished initializing and resource consumption to become stable
    #   after it enters the `InService` state.
    #
    #   During an instance refresh, Amazon EC2 Auto Scaling waits for the
    #   warm-up period after it replaces an instance before it moves on to
    #   replacing the next instance. Amazon EC2 Auto Scaling also waits for
    #   the warm-up period before aggregating the metrics for new instances
    #   with existing instances in the Amazon CloudWatch metrics that are used
    #   for scaling, resulting in more reliable usage data. For more
    #   information, see [Set the default instance warmup for an Auto Scaling
    #   group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   To manage various warm-up settings at the group level, we recommend
    #   that you set the default instance warmup, *even if it is set to 0
    #   seconds*. To remove a value that you previously set, include the
    #   property but specify `-1` for the value. However, we strongly
    #   recommend keeping the default instance warmup enabled by specifying a
    #   value of `0` or other nominal value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html
    # @option options [Types::InstanceMaintenancePolicy] :instance_maintenance_policy
    #   An instance maintenance policy. For more information, see [Set
    #   instance maintenance policy][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-maintenance-policy.html
    # @option options [Types::AvailabilityZoneDistribution] :availability_zone_distribution
    #   The instance capacity distribution across Availability Zones.
    # @option options [Types::AvailabilityZoneImpairmentPolicy] :availability_zone_impairment_policy
    #   The policy for Availability Zone impairment.
    # @option options [Boolean] :skip_zonal_shift_validation
    #   If you enable zonal shift with cross-zone disabled load balancers,
    #   capacity could become imbalanced across Availability Zones. To skip
    #   the validation, specify `true`. For more information, see [Auto
    #   Scaling group zonal shift][1] in the *Amazon EC2 Auto Scaling User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html
    # @option options [Types::CapacityReservationSpecification] :capacity_reservation_specification
    #   The capacity reservation specification for the Auto Scaling group.
    # @return [AutoScalingGroup]
    def update(options = {})
      options = options.merge(auto_scaling_group_name: @name)
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.update_auto_scaling_group(options)
      end
      AutoScalingGroup.new(
        name: options[:auto_scaling_group_name],
        client: @client
      )
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   activities = auto_scaling_group.activities({
    #     activity_ids: ["XmlString"],
    #     include_deleted_groups: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :activity_ids
    #   The activity IDs of the desired scaling activities. If you omit this
    #   property, all activities for the past six weeks are described. If
    #   unknown activities are requested, they are ignored with no error. If
    #   you specify an Auto Scaling group, the results are limited to that
    #   group.
    #
    #   Array Members: Maximum number of 50 IDs.
    # @option options [Boolean] :include_deleted_groups
    #   Indicates whether to include scaling activity from deleted Auto
    #   Scaling groups.
    # @return [Activity::Collection]
    def activities(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(auto_scaling_group_name: @name)
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_scaling_activities(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.activities.each do |a|
            batch << Activity.new(
              id: a.activity_id,
              data: a,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Activity::Collection.new(batches)
    end

    # @return [Instance::Collection]
    def instances
      batch = []
      data[:instances].each do |d|
        batch << Instance.new(
          group_name: @name,
          id: d[:instance_id],
          data: d,
          client: @client
        )
      end
      Instance::Collection.new([batch], size: batch.size)
    end

    # @return [LaunchConfiguration, nil]
    def launch_configuration
      if data[:launch_configuration_name]
        LaunchConfiguration.new(
          name: data[:launch_configuration_name],
          client: @client
        )
      else
        nil
      end
    end

    # @param [String] name
    # @return [LifecycleHook]
    def lifecycle_hook(name)
      LifecycleHook.new(
        group_name: @name,
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   lifecycle_hooks = auto_scaling_group.lifecycle_hooks({
    #     lifecycle_hook_names: ["AsciiStringMaxLen255"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :lifecycle_hook_names
    #   The names of one or more lifecycle hooks. If you omit this property,
    #   all lifecycle hooks are described.
    # @return [LifecycleHook::Collection]
    def lifecycle_hooks(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = options.merge(auto_scaling_group_name: @name)
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_lifecycle_hooks(options)
        end
        resp.data.lifecycle_hooks.each do |l|
          batch << LifecycleHook.new(
            group_name: l.auto_scaling_group_name,
            name: l.lifecycle_hook_name,
            data: l,
            client: @client
          )
        end
        y.yield(batch)
      end
      LifecycleHook::Collection.new(batches)
    end

    # @param [String] name
    # @return [LoadBalancer]
    def load_balancer(name)
      LoadBalancer.new(
        group_name: @name,
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.load_balancers()
    # @param [Hash] options ({})
    # @return [LoadBalancer::Collection]
    def load_balancers(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(auto_scaling_group_name: @name)
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_load_balancers(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.load_balancers.each do |l|
            batch << LoadBalancer.new(
              group_name: @name,
              name: l.load_balancer_name,
              data: l,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      LoadBalancer::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   auto_scaling_group.notification_configurations()
    # @param [Hash] options ({})
    # @return [NotificationConfiguration::Collection]
    def notification_configurations(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, auto_scaling_group_names: [@name])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_notification_configurations(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.notification_configurations.each do |n|
            batch << NotificationConfiguration.new(
              group_name: n.auto_scaling_group_name,
              type: n.notification_type,
              topic_arn: n.topic_arn,
              data: n,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      NotificationConfiguration::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   policies = auto_scaling_group.policies({
    #     policy_names: ["ResourceName"],
    #     policy_types: ["XmlStringMaxLen64"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :policy_names
    #   The names of one or more policies. If you omit this property, all
    #   policies are described. If a group name is provided, the results are
    #   limited to that group. If you specify an unknown policy name, it is
    #   ignored with no error.
    #
    #   Array Members: Maximum number of 50 items.
    # @option options [Array<String>] :policy_types
    #   One or more policy types. The valid values are `SimpleScaling`,
    #   `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`.
    # @return [ScalingPolicy::Collection]
    def policies(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(auto_scaling_group_name: @name)
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_policies(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.scaling_policies.each do |s|
            batch << ScalingPolicy.new(
              name: s.policy_name,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ScalingPolicy::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   scheduled_actions = auto_scaling_group.scheduled_actions({
    #     scheduled_action_names: ["XmlStringMaxLen255"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :scheduled_action_names
    #   The names of one or more scheduled actions. If you omit this property,
    #   all scheduled actions are described. If you specify an unknown
    #   scheduled action, it is ignored with no error.
    #
    #   Array Members: Maximum number of 50 actions.
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest scheduled start time to return. If scheduled action names
    #   are provided, this property is ignored.
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The latest scheduled start time to return. If scheduled action names
    #   are provided, this property is ignored.
    # @return [ScheduledAction::Collection]
    def scheduled_actions(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(auto_scaling_group_name: @name)
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_scheduled_actions(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.scheduled_update_group_actions.each do |s|
            batch << ScheduledAction.new(
              name: s.scheduled_action_name,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      ScheduledAction::Collection.new(batches)
    end

    # @param [String] key
    # @return [Tag]
    def tag(key)
      Tag.new(
        key: key,
        resource_id: @name,
        resource_type: "auto-scaling-group",
        client: @client
      )
    end

    # @return [Tag::Collection]
    def tags
      batch = []
      data[:tags].each do |d|
        batch << Tag.new(
          key: d[:key],
          resource_id: d[:resource_id],
          resource_type: d[:resource_type],
          data: d,
          client: @client
        )
      end
      Tag::Collection.new([batch], size: batch.size)
    end

    # @deprecated
    # @api private
    def identifiers
      { name: @name }
    end
    deprecated(:identifiers)

    private

    def extract_name(args, options)
      value = args[0] || options.delete(:name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :name"
      else
        msg = "expected :name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def yield_waiter_and_warn(waiter, &block)
      if !@waiter_block_warned
        msg = "pass options to configure the waiter; "\
              "yielding the waiter is deprecated"
        warn(msg)
        @waiter_block_warned = true
      end
      yield(waiter.waiter)
    end

    def separate_params_and_options(options)
      opts = Set.new(
        [:client, :max_attempts, :delay, :before_attempt, :before_wait]
      )
      waiter_opts = {}
      waiter_params = {}
      options.each_pair do |key, value|
        if opts.include?(key)
          waiter_opts[key] = value
        else
          waiter_params[key] = value
        end
      end
      waiter_opts[:client] ||= @client
      [waiter_opts, waiter_params]
    end

    class Collection < Aws::Resources::Collection; end
  end
end
