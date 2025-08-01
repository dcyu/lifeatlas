# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2

  class Instance

    extend Aws::Deprecations

    # @overload def initialize(id, options = {})
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :instance_id :id

    # The architecture of the image.
    # @return [String]
    def architecture
      data[:architecture]
    end

    # Any block device mapping entries for the instance.
    # @return [Array<Types::InstanceBlockDeviceMapping>]
    def block_device_mappings
      data[:block_device_mappings]
    end

    # The idempotency token you provided when you launched the instance, if
    # applicable.
    # @return [String]
    def client_token
      data[:client_token]
    end

    # Indicates whether the instance is optimized for Amazon EBS I/O. This
    # optimization provides dedicated throughput to Amazon EBS and an
    # optimized configuration stack to provide optimal I/O performance. This
    # optimization isn't available with all instance types. Additional
    # usage charges apply when using an EBS Optimized instance.
    # @return [Boolean]
    def ebs_optimized
      data[:ebs_optimized]
    end

    # Specifies whether enhanced networking with ENA is enabled.
    # @return [Boolean]
    def ena_support
      data[:ena_support]
    end

    # The hypervisor type of the instance. The value `xen` is used for both
    # Xen and Nitro hypervisors.
    # @return [String]
    def hypervisor
      data[:hypervisor]
    end

    # The IAM instance profile associated with the instance, if applicable.
    # @return [Types::IamInstanceProfile]
    def iam_instance_profile
      data[:iam_instance_profile]
    end

    # Indicates whether this is a Spot Instance or a Scheduled Instance.
    # @return [String]
    def instance_lifecycle
      data[:instance_lifecycle]
    end

    # Deprecated.
    #
    # <note markdown="1"> Amazon Elastic Graphics reached end of life on January 8, 2024.
    #
    #  </note>
    # @return [Array<Types::ElasticGpuAssociation>]
    def elastic_gpu_associations
      data[:elastic_gpu_associations]
    end

    # Deprecated
    #
    # <note markdown="1"> Amazon Elastic Inference is no longer available.
    #
    #  </note>
    # @return [Array<Types::ElasticInferenceAcceleratorAssociation>]
    def elastic_inference_accelerator_associations
      data[:elastic_inference_accelerator_associations]
    end

    # The Amazon Resource Name (ARN) of the Outpost.
    # @return [String]
    def outpost_arn
      data[:outpost_arn]
    end

    # The device name of the root device volume (for example, `/dev/sda1`).
    # @return [String]
    def root_device_name
      data[:root_device_name]
    end

    # The root device type used by the AMI. The AMI can use an EBS volume or
    # an instance store volume.
    # @return [String]
    def root_device_type
      data[:root_device_type]
    end

    # The security groups for the instance.
    # @return [Array<Types::GroupIdentifier>]
    def security_groups
      data[:security_groups]
    end

    # Indicates whether source/destination checking is enabled.
    # @return [Boolean]
    def source_dest_check
      data[:source_dest_check]
    end

    # If the request is a Spot Instance request, the ID of the request.
    # @return [String]
    def spot_instance_request_id
      data[:spot_instance_request_id]
    end

    # Specifies whether enhanced networking with the Intel 82599 Virtual
    # Function interface is enabled.
    # @return [String]
    def sriov_net_support
      data[:sriov_net_support]
    end

    # The reason for the most recent state transition.
    # @return [Types::StateReason]
    def state_reason
      data[:state_reason]
    end

    # Any tags assigned to the instance.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The virtualization type of the instance.
    # @return [String]
    def virtualization_type
      data[:virtualization_type]
    end

    # The CPU options for the instance.
    # @return [Types::CpuOptions]
    def cpu_options
      data[:cpu_options]
    end

    # The ID of the Capacity Block.
    #
    # <note markdown="1"> For P5 instances, a Capacity Block ID refers to a group of instances.
    # For Trn2u instances, a capacity block ID refers to an EC2 UltraServer.
    #
    #  </note>
    # @return [String]
    def capacity_block_id
      data[:capacity_block_id]
    end

    # The ID of the Capacity Reservation.
    # @return [String]
    def capacity_reservation_id
      data[:capacity_reservation_id]
    end

    # Information about the Capacity Reservation targeting option.
    # @return [Types::CapacityReservationSpecificationResponse]
    def capacity_reservation_specification
      data[:capacity_reservation_specification]
    end

    # Indicates whether the instance is enabled for hibernation.
    # @return [Types::HibernationOptions]
    def hibernation_options
      data[:hibernation_options]
    end

    # The license configurations for the instance.
    # @return [Array<Types::LicenseConfiguration>]
    def licenses
      data[:licenses]
    end

    # The metadata options for the instance.
    # @return [Types::InstanceMetadataOptionsResponse]
    def metadata_options
      data[:metadata_options]
    end

    # Indicates whether the instance is enabled for Amazon Web Services
    # Nitro Enclaves.
    # @return [Types::EnclaveOptions]
    def enclave_options
      data[:enclave_options]
    end

    # The boot mode that was specified by the AMI. If the value is
    # `uefi-preferred`, the AMI supports both UEFI and Legacy BIOS. The
    # `currentInstanceBootMode` parameter is the boot mode that is used to
    # boot the instance at launch or start.
    #
    # <note markdown="1"> The operating system contained in the AMI must be configured to
    # support the specified boot mode.
    #
    #  </note>
    #
    # For more information, see [Boot modes][1] in the *Amazon EC2 User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html
    # @return [String]
    def boot_mode
      data[:boot_mode]
    end

    # The platform details value for the instance. For more information, see
    # [AMI billing information fields][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html
    # @return [String]
    def platform_details
      data[:platform_details]
    end

    # The usage operation value for the instance. For more information, see
    # [AMI billing information fields][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html
    # @return [String]
    def usage_operation
      data[:usage_operation]
    end

    # The time that the usage operation was last updated.
    # @return [Time]
    def usage_operation_update_time
      data[:usage_operation_update_time]
    end

    # The options for the instance hostname.
    # @return [Types::PrivateDnsNameOptionsResponse]
    def private_dns_name_options
      data[:private_dns_name_options]
    end

    # The IPv6 address assigned to the instance.
    # @return [String]
    def ipv_6_address
      data[:ipv_6_address]
    end

    # If the instance is configured for NitroTPM support, the value is
    # `v2.0`. For more information, see [NitroTPM][1] in the *Amazon EC2
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html
    # @return [String]
    def tpm_support
      data[:tpm_support]
    end

    # Provides information on the recovery and maintenance options of your
    # instance.
    # @return [Types::InstanceMaintenanceOptions]
    def maintenance_options
      data[:maintenance_options]
    end

    # The boot mode that is used to boot the instance at launch or start.
    # For more information, see [Boot modes][1] in the *Amazon EC2 User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html
    # @return [String]
    def current_instance_boot_mode
      data[:current_instance_boot_mode]
    end

    # Contains settings for the network performance options for your
    # instance.
    # @return [Types::InstanceNetworkPerformanceOptions]
    def network_performance_options
      data[:network_performance_options]
    end

    # The service provider that manages the instance.
    # @return [Types::OperatorResponse]
    def operator
      data[:operator]
    end

    # The ID of the AMI used to launch the instance.
    # @return [String]
    def image_id
      data[:image_id]
    end

    # The current state of the instance.
    # @return [Types::InstanceState]
    def state
      data[:state]
    end

    # \[IPv4 only\] The private DNS hostname name assigned to the instance.
    # This DNS hostname can only be used inside the Amazon EC2 network. This
    # name is not available until the instance enters the `running` state.
    #
    # The Amazon-provided DNS server resolves Amazon-provided private DNS
    # hostnames if you've enabled DNS resolution and DNS hostnames in your
    # VPC. If you are not using the Amazon-provided DNS server in your VPC,
    # your custom domain name servers must resolve the hostname as
    # appropriate.
    # @return [String]
    def private_dns_name
      data[:private_dns_name]
    end

    # The public DNS name assigned to the instance. This name is not
    # available until the instance enters the `running` state. This name is
    # only available if you've enabled DNS hostnames for your VPC. The
    # format of this name depends on the [public hostname type][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hostname-types.html#public-hostnames
    # @return [String]
    def public_dns_name
      data[:public_dns_name]
    end

    # The reason for the most recent state transition. This might be an
    # empty string.
    # @return [String]
    def state_transition_reason
      data[:state_transition_reason]
    end

    # The name of the key pair, if this instance was launched with an
    # associated key pair.
    # @return [String]
    def key_name
      data[:key_name]
    end

    # The AMI launch index, which can be used to find this instance in the
    # launch group.
    # @return [Integer]
    def ami_launch_index
      data[:ami_launch_index]
    end

    # The product codes attached to this instance, if applicable.
    # @return [Array<Types::ProductCode>]
    def product_codes
      data[:product_codes]
    end

    # The instance type.
    # @return [String]
    def instance_type
      data[:instance_type]
    end

    # The time that the instance was last launched. To determine the time
    # that instance was first launched, see the attachment time for the
    # primary network interface.
    # @return [Time]
    def launch_time
      data[:launch_time]
    end

    # The location where the instance launched, if applicable.
    # @return [Types::Placement]
    def placement
      data[:placement]
    end

    # The kernel associated with this instance, if applicable.
    # @return [String]
    def kernel_id
      data[:kernel_id]
    end

    # The RAM disk associated with this instance, if applicable.
    # @return [String]
    def ramdisk_id
      data[:ramdisk_id]
    end

    # The platform. This value is `windows` for Windows instances;
    # otherwise, it is empty.
    # @return [String]
    def platform
      data[:platform]
    end

    # The monitoring for the instance.
    # @return [Types::Monitoring]
    def monitoring
      data[:monitoring]
    end

    # The ID of the subnet in which the instance is running.
    # @return [String]
    def subnet_id
      data[:subnet_id]
    end

    # The ID of the VPC in which the instance is running.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # The private IPv4 address assigned to the instance.
    # @return [String]
    def private_ip_address
      data[:private_ip_address]
    end

    # The public IPv4 address, or the Carrier IP address assigned to the
    # instance, if applicable.
    #
    # A Carrier IP address only applies to an instance launched in a subnet
    # associated with a Wavelength Zone.
    # @return [String]
    def public_ip_address
      data[:public_ip_address]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Instance}.
    # Returns `self` making it possible to chain methods.
    #
    #     instance.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_instances(instance_ids: [@id])
      end
      @data = resp.reservations[0].instances[0]
      self
    end
    alias :reload :load

    # @return [Types::Instance]
    #   Returns the data for this {Instance}. Calls
    #   {Client#describe_instances} if {#data_loaded?} is `false`.
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
    #   Returns `true` if the Instance exists.
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
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (5)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Instance]
    def wait_until_exists(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::InstanceExists.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(instance_ids: [@id]))
      end
      Instance.new({
        id: @id,
        data: resp.data.reservations[0].instances[0],
        client: @client
      })
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Instance]
    def wait_until_running(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::InstanceRunning.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(instance_ids: [@id]))
      end
      Instance.new({
        id: @id,
        data: resp.data.reservations[0].instances[0],
        client: @client
      })
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Instance]
    def wait_until_stopped(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::InstanceStopped.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(instance_ids: [@id]))
      end
      Instance.new({
        id: @id,
        data: resp.data.reservations[0].instances[0],
        client: @client
      })
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (40)
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Instance]
    def wait_until_terminated(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::InstanceTerminated.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(instance_ids: [@id]))
      end
      Instance.new({
        id: @id,
        data: resp.data.reservations[0].instances[0],
        client: @client
      })
    end

    # @deprecated Use [Aws::EC2::Client] #wait_until instead
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
    #   instance.attach_classic_link_vpc({
    #     dry_run: false,
    #     vpc_id: "VpcId", # required
    #     groups: ["SecurityGroupId"], # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :vpc_id
    #   The ID of the ClassicLink-enabled VPC.
    # @option options [required, Array<String>] :groups
    #   The IDs of the security groups. You cannot specify security groups
    #   from a different VPC.
    # @return [Types::AttachClassicLinkVpcResult]
    def attach_classic_link_vpc(options = {})
      options = options.merge(instance_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.attach_classic_link_vpc(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.attach_volume({
    #     device: "String", # required
    #     volume_id: "VolumeId", # required
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :device
    #   The device name (for example, `/dev/sdh` or `xvdh`).
    # @option options [required, String] :volume_id
    #   The ID of the EBS volume. The volume and instance must be within the
    #   same Availability Zone.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::VolumeAttachment]
    def attach_volume(options = {})
      options = options.merge(instance_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.attach_volume(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.console_output({
    #     latest: false,
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :latest
    #   When enabled, retrieves the latest console output for the instance.
    #
    #   Default: disabled (`false`)
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::GetConsoleOutputResult]
    def console_output(options = {})
      options = options.merge(instance_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.get_console_output(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   image = instance.create_image({
    #     tag_specifications: [
    #       {
    #         resource_type: "capacity-reservation", # accepts capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, capacity-block, mac-modification-task
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     snapshot_location: "regional", # accepts regional, local
    #     dry_run: false,
    #     name: "String", # required
    #     description: "String",
    #     no_reboot: false,
    #     block_device_mappings: [
    #       {
    #         ebs: {
    #           delete_on_termination: false,
    #           iops: 1,
    #           snapshot_id: "SnapshotId",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, io2, gp2, sc1, st1, gp3
    #           kms_key_id: "String",
    #           throughput: 1,
    #           outpost_arn: "String",
    #           availability_zone: "String",
    #           encrypted: false,
    #           volume_initialization_rate: 1,
    #           availability_zone_id: "String",
    #         },
    #         no_device: "String",
    #         device_name: "String",
    #         virtual_name: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to apply to the AMI and snapshots on creation. You can tag
    #   the AMI, the snapshots, or both.
    #
    #   * To tag the AMI, the value for `ResourceType` must be `image`.
    #
    #   * To tag the snapshots that are created of the root volume and of
    #     other Amazon EBS volumes that are attached to the instance, the
    #     value for `ResourceType` must be `snapshot`. The same tag is applied
    #     to all of the snapshots that are created.
    #
    #   If you specify other values for `ResourceType`, the request fails.
    #
    #   To tag an AMI or snapshot after it has been created, see
    #   [CreateTags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html
    # @option options [String] :snapshot_location
    #   <note markdown="1"> Only supported for instances in Local Zones. If the source instance is
    #   not in a Local Zone, omit this parameter.
    #
    #    </note>
    #
    #   The Amazon S3 location where the snapshots will be stored.
    #
    #   * To create local snapshots in the same Local Zone as the source
    #     instance, specify `local`.
    #
    #   * To create regional snapshots in the parent Region of the Local Zone,
    #     specify `regional` or omit this parameter.
    #
    #   Default: `regional`
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :name
    #   A name for the new image.
    #
    #   Constraints: 3-128 alphanumeric characters, parentheses (()), square
    #   brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-),
    #   single quotes ('), at-signs (@), or underscores(\_)
    # @option options [String] :description
    #   A description for the new image.
    # @option options [Boolean] :no_reboot
    #   Indicates whether or not the instance should be automatically rebooted
    #   before creating the image. Specify one of the following values:
    #
    #   * `true` - The instance is not rebooted before creating the image.
    #     This creates crash-consistent snapshots that include only the data
    #     that has been written to the volumes at the time the snapshots are
    #     created. Buffered data and data in memory that has not yet been
    #     written to the volumes is not included in the snapshots.
    #
    #   * `false` - The instance is rebooted before creating the image. This
    #     ensures that all buffered data and data in memory is written to the
    #     volumes before the snapshots are created.
    #
    #   Default: `false`
    # @option options [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   The block device mappings.
    #
    #   When using the CreateImage action:
    #
    #   * You can't change the volume size using the VolumeSize parameter. If
    #     you want a different volume size, you must first change the volume
    #     size of the source instance.
    #
    #   * You can't modify the encryption status of existing volumes or
    #     snapshots. To create an AMI with volumes or snapshots that have a
    #     different encryption status (for example, where the source volume
    #     and snapshots are unencrypted, and you want to create an AMI with
    #     encrypted volumes or snapshots), use the CopyImage action.
    #
    #   * The only option that can be changed for existing mappings or
    #     snapshots is `DeleteOnTermination`.
    # @return [Image]
    def create_image(options = {})
      options = options.merge(instance_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_image(options)
      end
      Image.new(
        id: resp.data.image_id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   tag = instance.create_tags({
    #     dry_run: false,
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, Array<Types::Tag>] :tags
    #   The tags. The `value` parameter is required, but if you don't want
    #   the tag to have a value, specify the parameter with no value, and we
    #   set the value to an empty string.
    # @return [Tag::Collection]
    def create_tags(options = {})
      batch = []
      options = Aws::Util.deep_merge(options, resources: [@id])
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_tags(options)
      end
      options[:tags].each do |t|
        batch << Tag.new(
          resource_id: @id,
          key: t[:key],
          value: t[:value],
          client: @client
        )
      end
      Tag::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   tag = instance.delete_tags({
    #     dry_run: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::Tag>] :tags
    #   The tags to delete. Specify a tag key and an optional tag value to
    #   delete specific tags. If you specify a tag key without a tag value, we
    #   delete any tag with this key regardless of its value. If you specify a
    #   tag key with an empty string as the tag value, we delete the tag only
    #   if its value is an empty string.
    #
    #   If you omit this parameter, we delete all user-defined tags for the
    #   specified resources. We do not delete Amazon Web Services-generated
    #   tags (tags that have the `aws:` prefix).
    #
    #   Constraints: Up to 1000 tags.
    # @return [Tag::Collection]
    def delete_tags(options = {})
      batch = []
      options = Aws::Util.deep_merge(options, resources: [@id])
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_tags(options)
      end
      options[:tags].each do |t|
        batch << Tag.new(
          resource_id: @id,
          key: t[:key],
          value: t[:value],
          client: @client
        )
      end
      Tag::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   instance.describe_attribute({
    #     dry_run: false,
    #     attribute: "instanceType", # required, accepts instanceType, kernel, ramdisk, userData, disableApiTermination, instanceInitiatedShutdownBehavior, rootDeviceName, blockDeviceMapping, productCodes, sourceDestCheck, groupSet, ebsOptimized, sriovNetSupport, enaSupport, enclaveOptions, disableApiStop
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :attribute
    #   The instance attribute.
    #
    #   Note that the `enaSupport` attribute is not supported.
    # @return [Types::InstanceAttribute]
    def describe_attribute(options = {})
      options = options.merge(instance_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_instance_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.detach_classic_link_vpc({
    #     dry_run: false,
    #     vpc_id: "VpcId", # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :vpc_id
    #   The ID of the VPC to which the instance is linked.
    # @return [Types::DetachClassicLinkVpcResult]
    def detach_classic_link_vpc(options = {})
      options = options.merge(instance_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.detach_classic_link_vpc(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.detach_volume({
    #     device: "String",
    #     force: false,
    #     volume_id: "VolumeIdWithResolver", # required
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :device
    #   The device name.
    # @option options [Boolean] :force
    #   Forces detachment if the previous detachment attempt did not occur
    #   cleanly (for example, logging into an instance, unmounting the volume,
    #   and detaching normally). This option can lead to data loss or a
    #   corrupted file system. Use this option only as a last resort to detach
    #   a volume from a failed instance. The instance won't have an
    #   opportunity to flush file system caches or file system metadata. If
    #   you use this option, you must perform file system check and repair
    #   procedures.
    # @option options [required, String] :volume_id
    #   The ID of the volume.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::VolumeAttachment]
    def detach_volume(options = {})
      options = options.merge(instance_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.detach_volume(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.modify_attribute({
    #     source_dest_check: {
    #       value: false,
    #     },
    #     disable_api_stop: {
    #       value: false,
    #     },
    #     dry_run: false,
    #     attribute: "instanceType", # accepts instanceType, kernel, ramdisk, userData, disableApiTermination, instanceInitiatedShutdownBehavior, rootDeviceName, blockDeviceMapping, productCodes, sourceDestCheck, groupSet, ebsOptimized, sriovNetSupport, enaSupport, enclaveOptions, disableApiStop
    #     value: "String",
    #     block_device_mappings: [
    #       {
    #         device_name: "String",
    #         ebs: {
    #           volume_id: "VolumeId",
    #           delete_on_termination: false,
    #         },
    #         virtual_name: "String",
    #         no_device: "String",
    #       },
    #     ],
    #     disable_api_termination: {
    #       value: false,
    #     },
    #     instance_type: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     kernel: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     ramdisk: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     user_data: {
    #       value: "data",
    #     },
    #     instance_initiated_shutdown_behavior: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     groups: ["SecurityGroupId"],
    #     ebs_optimized: {
    #       value: false,
    #     },
    #     sriov_net_support: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     ena_support: {
    #       value: false,
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [Types::AttributeBooleanValue] :source_dest_check
    #   Enable or disable source/destination checks, which ensure that the
    #   instance is either the source or the destination of any traffic that
    #   it receives. If the value is `true`, source/destination checks are
    #   enabled; otherwise, they are disabled. The default value is `true`.
    #   You must disable source/destination checks if the instance runs
    #   services such as network address translation, routing, or firewalls.
    # @option options [Types::AttributeBooleanValue] :disable_api_stop
    #   Indicates whether an instance is enabled for stop protection. For more
    #   information, see [Enable stop protection for your instance][1].
    #
    #
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-stop-protection.html
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :attribute
    #   The name of the attribute to modify.
    #
    #   <note markdown="1"> When changing the instance type: If the original instance type is
    #   configured for configurable bandwidth, and the desired instance type
    #   doesn't support configurable bandwidth, first set the existing
    #   bandwidth configuration to `default` using the
    #   ModifyInstanceNetworkPerformanceOptions operation.
    #
    #    </note>
    #
    #   You can modify the following attributes only: `disableApiTermination`
    #   \| `instanceType` \| `kernel` \| `ramdisk` \|
    #   `instanceInitiatedShutdownBehavior` \| `blockDeviceMapping` \|
    #   `userData` \| `sourceDestCheck` \| `groupSet` \| `ebsOptimized` \|
    #   `sriovNetSupport` \| `enaSupport` \| `nvmeSupport` \| `disableApiStop`
    #   \| `enclaveOptions`
    # @option options [String] :value
    #   A new value for the attribute. Use only with the `kernel`, `ramdisk`,
    #   `userData`, `disableApiTermination`, or
    #   `instanceInitiatedShutdownBehavior` attribute.
    # @option options [Array<Types::InstanceBlockDeviceMappingSpecification>] :block_device_mappings
    #   Modifies the `DeleteOnTermination` attribute for volumes that are
    #   currently attached. The volume must be owned by the caller. If no
    #   value is specified for `DeleteOnTermination`, the default is `true`
    #   and the volume is deleted when the instance is terminated. You can't
    #   modify the `DeleteOnTermination` attribute for volumes that are
    #   attached to Amazon Web Services-managed resources.
    #
    #   To add instance store volumes to an Amazon EBS-backed instance, you
    #   must add them when you launch the instance. For more information, see
    #   [Update the block device mapping when launching an instance][1] in the
    #   *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM
    # @option options [Types::AttributeBooleanValue] :disable_api_termination
    #   Enable or disable termination protection for the instance. If the
    #   value is `true`, you can't terminate the instance using the Amazon
    #   EC2 console, command line interface, or API. You can't enable
    #   termination protection for Spot Instances.
    # @option options [Types::AttributeValue] :instance_type
    #   Changes the instance type to the specified value. For more
    #   information, see [Instance types][1] in the *Amazon EC2 User Guide*.
    #   If the instance type is not valid, the error returned is
    #   `InvalidInstanceAttributeValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    # @option options [Types::AttributeValue] :kernel
    #   Changes the instance's kernel to the specified value. We recommend
    #   that you use PV-GRUB instead of kernels and RAM disks. For more
    #   information, see [PV-GRUB][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    # @option options [Types::AttributeValue] :ramdisk
    #   Changes the instance's RAM disk to the specified value. We recommend
    #   that you use PV-GRUB instead of kernels and RAM disks. For more
    #   information, see [PV-GRUB][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    # @option options [Types::BlobAttributeValue] :user_data
    #   Changes the instance's user data to the specified value. User data
    #   must be base64-encoded. Depending on the tool or SDK that you're
    #   using, the base64-encoding might be performed for you. For more
    #   information, see [Work with instance user data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instancedata-add-user-data.html
    # @option options [Types::AttributeValue] :instance_initiated_shutdown_behavior
    #   Specifies whether an instance stops or terminates when you initiate
    #   shutdown from the instance (using the operating system command for
    #   system shutdown).
    # @option options [Array<String>] :groups
    #   Replaces the security groups of the instance with the specified
    #   security groups. You must specify the ID of at least one security
    #   group, even if it's just the default security group for the VPC.
    # @option options [Types::AttributeBooleanValue] :ebs_optimized
    #   Specifies whether the instance is optimized for Amazon EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal EBS I/O performance.
    #   This optimization isn't available with all instance types. Additional
    #   usage charges apply when using an EBS Optimized instance.
    # @option options [Types::AttributeValue] :sriov_net_support
    #   Set to `simple` to enable enhanced networking with the Intel 82599
    #   Virtual Function interface for the instance.
    #
    #   There is no way to disable enhanced networking with the Intel 82599
    #   Virtual Function interface at this time.
    #
    #   This option is supported only for HVM instances. Specifying this
    #   option with a PV instance can make it unreachable.
    # @option options [Types::AttributeBooleanValue] :ena_support
    #   Set to `true` to enable enhanced networking with ENA for the instance.
    #
    #   This option is supported only for HVM instances. Specifying this
    #   option with a PV instance can make it unreachable.
    # @return [EmptyStructure]
    def modify_attribute(options = {})
      options = options.merge(instance_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.modify_instance_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.monitor({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::MonitorInstancesResult]
    def monitor(options = {})
      options = Aws::Util.deep_merge(options, instance_ids: [@id])
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.monitor_instances(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.password_data({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::GetPasswordDataResult]
    def password_data(options = {})
      options = options.merge(instance_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.get_password_data(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.reboot({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def reboot(options = {})
      options = Aws::Util.deep_merge(options, instance_ids: [@id])
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.reboot_instances(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.report_status({
    #     dry_run: false,
    #     status: "ok", # required, accepts ok, impaired
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     reason_codes: ["instance-stuck-in-state"], # required, accepts instance-stuck-in-state, unresponsive, not-accepting-credentials, password-not-available, performance-network, performance-instance-store, performance-ebs-volume, performance-other, other
    #     description: "ReportInstanceStatusRequestDescription",
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :status
    #   The status of all instances listed.
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The time at which the reported instance health state began.
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The time at which the reported instance health state ended.
    # @option options [required, Array<String>] :reason_codes
    #   The reason codes that describe the health state of your instance.
    #
    #   * `instance-stuck-in-state`: My instance is stuck in a state.
    #
    #   * `unresponsive`: My instance is unresponsive.
    #
    #   * `not-accepting-credentials`: My instance is not accepting my
    #     credentials.
    #
    #   * `password-not-available`: A password is not available for my
    #     instance.
    #
    #   * `performance-network`: My instance is experiencing performance
    #     problems that I believe are network related.
    #
    #   * `performance-instance-store`: My instance is experiencing
    #     performance problems that I believe are related to the instance
    #     stores.
    #
    #   * `performance-ebs-volume`: My instance is experiencing performance
    #     problems that I believe are related to an EBS volume.
    #
    #   * `performance-other`: My instance is experiencing performance
    #     problems.
    #
    #   * `other`: \[explain using the description parameter\]
    # @option options [String] :description
    #   Descriptive text about the health state of your instance.
    # @return [EmptyStructure]
    def report_status(options = {})
      options = Aws::Util.deep_merge(options, instances: [@id])
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.report_instance_status(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.reset_attribute({
    #     dry_run: false,
    #     attribute: "instanceType", # required, accepts instanceType, kernel, ramdisk, userData, disableApiTermination, instanceInitiatedShutdownBehavior, rootDeviceName, blockDeviceMapping, productCodes, sourceDestCheck, groupSet, ebsOptimized, sriovNetSupport, enaSupport, enclaveOptions, disableApiStop
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :attribute
    #   The attribute to reset.
    #
    #   You can only reset the following attributes: `kernel` \| `ramdisk` \|
    #   `sourceDestCheck`.
    # @return [EmptyStructure]
    def reset_attribute(options = {})
      options = options.merge(instance_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.reset_instance_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.reset_kernel({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def reset_kernel(options = {})
      options = options.merge(
        instance_id: @id,
        attribute: "kernel"
      )
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.reset_instance_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.reset_ramdisk({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def reset_ramdisk(options = {})
      options = options.merge(
        instance_id: @id,
        attribute: "ramdisk"
      )
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.reset_instance_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.reset_source_dest_check({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def reset_source_dest_check(options = {})
      options = options.merge(
        instance_id: @id,
        attribute: "sourceDestCheck"
      )
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.reset_instance_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.start({
    #     additional_info: "String",
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :additional_info
    #   Reserved.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::StartInstancesResult]
    def start(options = {})
      options = Aws::Util.deep_merge(options, instance_ids: [@id])
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.start_instances(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.stop({
    #     hibernate: false,
    #     skip_os_shutdown: false,
    #     dry_run: false,
    #     force: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :hibernate
    #   Hibernates the instance if the instance was enabled for hibernation at
    #   launch. If the instance cannot hibernate successfully, a normal
    #   shutdown occurs. For more information, see [Hibernate your Amazon EC2
    #   instance][1] in the *Amazon EC2 User Guide*.
    #
    #   Default: `false`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html
    # @option options [Boolean] :skip_os_shutdown
    #   Specifies whether to bypass the graceful OS shutdown process when the
    #   instance is stopped.
    #
    #   Bypassing the graceful OS shutdown might result in data loss or
    #   corruption (for example, memory contents not flushed to disk or loss
    #   of in-flight IOs) or skipped shutdown scripts.
    #
    #   Default: `false`
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Boolean] :force
    #   Forces the instance to stop. The instance will first attempt a
    #   graceful shutdown, which includes flushing file system caches and
    #   metadata. If the graceful shutdown fails to complete within the
    #   timeout period, the instance shuts down forcibly without flushing the
    #   file system caches and metadata.
    #
    #   After using this option, you must perform file system check and repair
    #   procedures. This option is not recommended for Windows instances. For
    #   more information, see [Troubleshoot Amazon EC2 instance stop
    #   issues][1] in the *Amazon EC2 User Guide*.
    #
    #   Default: `false`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html
    # @return [Types::StopInstancesResult]
    def stop(options = {})
      options = Aws::Util.deep_merge(options, instance_ids: [@id])
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.stop_instances(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.terminate({
    #     skip_os_shutdown: false,
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :skip_os_shutdown
    #   Specifies whether to bypass the graceful OS shutdown process when the
    #   instance is terminated.
    #
    #   Default: `false`
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::TerminateInstancesResult]
    def terminate(options = {})
      options = Aws::Util.deep_merge(options, instance_ids: [@id])
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.terminate_instances(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   instance.unmonitor({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::UnmonitorInstancesResult]
    def unmonitor(options = {})
      options = Aws::Util.deep_merge(options, instance_ids: [@id])
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.unmonitor_instances(options)
      end
      resp.data
    end

    # @!group Associations

    # @return [ClassicAddress, nil]
    def classic_address
      if data[:public_ip_address]
        ClassicAddress.new(
          public_ip: data[:public_ip_address],
          client: @client
        )
      else
        nil
      end
    end

    # @return [Image, nil]
    def image
      if data[:image_id]
        Image.new(
          id: data[:image_id],
          client: @client
        )
      else
        nil
      end
    end

    # @return [KeyPairInfo, nil]
    def key_pair
      if data[:key_name]
        KeyPairInfo.new(
          name: data[:key_name],
          client: @client
        )
      else
        nil
      end
    end

    # @return [NetworkInterface::Collection]
    def network_interfaces
      batch = []
      data[:network_interfaces].each do |d|
        batch << NetworkInterface.new(
          id: d[:network_interface_id],
          data: d,
          client: @client
        )
      end
      NetworkInterface::Collection.new([batch], size: batch.size)
    end

    # @return [PlacementGroup, nil]
    def placement_group
      if data[:placement][:group_name]
        PlacementGroup.new(
          name: data[:placement][:group_name],
          client: @client
        )
      else
        nil
      end
    end

    # @return [Subnet, nil]
    def subnet
      if data[:subnet_id]
        Subnet.new(
          id: data[:subnet_id],
          client: @client
        )
      else
        nil
      end
    end

    # @example Request syntax with placeholder values
    #
    #   volumes = instance.volumes({
    #     volume_ids: ["VolumeId"],
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :volume_ids
    #   The volume IDs. If not specified, then all volumes are included in the
    #   response.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `attachment.attach-time` - The time stamp when the attachment
    #     initiated.
    #
    #   * `attachment.delete-on-termination` - Whether the volume is deleted
    #     on instance termination.
    #
    #   * `attachment.device` - The device name specified in the block device
    #     mapping (for example, `/dev/sda1`).
    #
    #   * `attachment.instance-id` - The ID of the instance the volume is
    #     attached to.
    #
    #   * `attachment.status` - The attachment state (`attaching` \|
    #     `attached` \| `detaching`).
    #
    #   * `availability-zone` - The Availability Zone in which the volume was
    #     created.
    #
    #   * `create-time` - The time stamp when the volume was created.
    #
    #   * `encrypted` - Indicates whether the volume is encrypted (`true` \|
    #     `false`)
    #
    #   * `fast-restored` - Indicates whether the volume was created from a
    #     snapshot that is enabled for fast snapshot restore (`true` \|
    #     `false`).
    #
    #   * `multi-attach-enabled` - Indicates whether the volume is enabled for
    #     Multi-Attach (`true` \| `false`)
    #
    #   * `operator.managed` - A Boolean that indicates whether this is a
    #     managed volume.
    #
    #   * `operator.principal` - The principal that manages the volume. Only
    #     valid for managed volumes, where `managed` is `true`.
    #
    #   * `size` - The size of the volume, in GiB.
    #
    #   * `snapshot-id` - The snapshot from which the volume was created.
    #
    #   * `status` - The state of the volume (`creating` \| `available` \|
    #     `in-use` \| `deleting` \| `deleted` \| `error`).
    #
    #   * `tag`:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `volume-id` - The volume ID.
    #
    #   * `volume-type` - The Amazon EBS volume type (`gp2` \| `gp3` \| `io1`
    #     \| `io2` \| `st1` \| `sc1`\| `standard`)
    # @return [Volume::Collection]
    def volumes(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "attachment.instance-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_volumes(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.volumes.each do |v|
            batch << Volume.new(
              id: v.volume_id,
              data: v,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Volume::Collection.new(batches)
    end

    # @return [Vpc, nil]
    def vpc
      if data[:vpc_id]
        Vpc.new(
          id: data[:vpc_id],
          client: @client
        )
      else
        nil
      end
    end

    # @example Request syntax with placeholder values
    #
    #   vpc_addresses = instance.vpc_addresses({
    #     public_ips: ["String"],
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     allocation_ids: ["AllocationId"],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :public_ips
    #   One or more Elastic IP addresses.
    #
    #   Default: Describes all your Elastic IP addresses.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters. Filter names and values are case-sensitive.
    #
    #   * `allocation-id` - The allocation ID for the address.
    #
    #   * `association-id` - The association ID for the address.
    #
    #   * `instance-id` - The ID of the instance the address is associated
    #     with, if any.
    #
    #   * `network-border-group` - A unique set of Availability Zones, Local
    #     Zones, or Wavelength Zones from where Amazon Web Services advertises
    #     IP addresses.
    #
    #   * `network-interface-id` - The ID of the network interface that the
    #     address is associated with, if any.
    #
    #   * `network-interface-owner-id` - The Amazon Web Services account ID of
    #     the owner.
    #
    #   * `private-ip-address` - The private IP address associated with the
    #     Elastic IP address.
    #
    #   * `public-ip` - The Elastic IP address, or the carrier IP address.
    #
    #   * `tag`:&lt;key&gt; - The key/value combination of a tag assigned to
    #     the resource. Use the tag key in the filter name and the tag value
    #     as the filter value. For example, to find all resources that have a
    #     tag with the key `Owner` and the value `TeamA`, specify `tag:Owner`
    #     for the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    # @option options [Array<String>] :allocation_ids
    #   Information about the allocation IDs.
    # @return [VpcAddress::Collection]
    def vpc_addresses(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = Aws::Util.deep_merge(options, filters: [{
          name: "instance-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_addresses(options)
        end
        resp.data.addresses.each do |a|
          batch << VpcAddress.new(
            allocation_id: a.allocation_id,
            data: a,
            client: @client
          )
        end
        y.yield(batch)
      end
      VpcAddress::Collection.new(batches)
    end

    # @deprecated
    # @api private
    def identifiers
      { id: @id }
    end
    deprecated(:identifiers)

    private

    def extract_id(args, options)
      value = args[0] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
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

    class Collection < Aws::Resources::Collection

      # @!group Batch Actions

      # @example Request syntax with placeholder values
      #
      #   instance.batch_create_tags({
      #     dry_run: false,
      #     tags: [ # required
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #   })
      # @param options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, Array<Types::Tag>] :tags
      #   The tags. The `value` parameter is required, but if you don't want
      #   the tag to have a value, specify the parameter with no value, and we
      #   set the value to an empty string.
      # @return [void]
      def batch_create_tags(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:resources] ||= []
          batch.each do |item|
            params[:resources] << item.id
          end
          Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
            batch[0].client.create_tags(params)
          end
        end
        nil
      end

      # @example Request syntax with placeholder values
      #
      #   instance.batch_delete_tags!({
      #     dry_run: false,
      #     tags: [
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #   })
      # @param options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Array<Types::Tag>] :tags
      #   The tags to delete. Specify a tag key and an optional tag value to
      #   delete specific tags. If you specify a tag key without a tag value, we
      #   delete any tag with this key regardless of its value. If you specify a
      #   tag key with an empty string as the tag value, we delete the tag only
      #   if its value is an empty string.
      #
      #   If you omit this parameter, we delete all user-defined tags for the
      #   specified resources. We do not delete Amazon Web Services-generated
      #   tags (tags that have the `aws:` prefix).
      #
      #   Constraints: Up to 1000 tags.
      # @return [void]
      def batch_delete_tags!(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:resources] ||= []
          batch.each do |item|
            params[:resources] << item.id
          end
          Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
            batch[0].client.delete_tags(params)
          end
        end
        nil
      end

      # @example Request syntax with placeholder values
      #
      #   instance.batch_monitor({
      #     dry_run: false,
      #   })
      # @param options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the operation,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [void]
      def batch_monitor(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:instance_ids] ||= []
          batch.each do |item|
            params[:instance_ids] << item.id
          end
          Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
            batch[0].client.monitor_instances(params)
          end
        end
        nil
      end

      # @example Request syntax with placeholder values
      #
      #   instance.batch_reboot({
      #     dry_run: false,
      #   })
      # @param options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the operation,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [void]
      def batch_reboot(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:instance_ids] ||= []
          batch.each do |item|
            params[:instance_ids] << item.id
          end
          Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
            batch[0].client.reboot_instances(params)
          end
        end
        nil
      end

      # @example Request syntax with placeholder values
      #
      #   instance.batch_start({
      #     additional_info: "String",
      #     dry_run: false,
      #   })
      # @param options ({})
      # @option options [String] :additional_info
      #   Reserved.
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the operation,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [void]
      def batch_start(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:instance_ids] ||= []
          batch.each do |item|
            params[:instance_ids] << item.id
          end
          Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
            batch[0].client.start_instances(params)
          end
        end
        nil
      end

      # @example Request syntax with placeholder values
      #
      #   instance.batch_stop({
      #     hibernate: false,
      #     skip_os_shutdown: false,
      #     dry_run: false,
      #     force: false,
      #   })
      # @param options ({})
      # @option options [Boolean] :hibernate
      #   Hibernates the instance if the instance was enabled for hibernation at
      #   launch. If the instance cannot hibernate successfully, a normal
      #   shutdown occurs. For more information, see [Hibernate your Amazon EC2
      #   instance][1] in the *Amazon EC2 User Guide*.
      #
      #   Default: `false`
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html
      # @option options [Boolean] :skip_os_shutdown
      #   Specifies whether to bypass the graceful OS shutdown process when the
      #   instance is stopped.
      #
      #   Bypassing the graceful OS shutdown might result in data loss or
      #   corruption (for example, memory contents not flushed to disk or loss
      #   of in-flight IOs) or skipped shutdown scripts.
      #
      #   Default: `false`
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the operation,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [Boolean] :force
      #   Forces the instance to stop. The instance will first attempt a
      #   graceful shutdown, which includes flushing file system caches and
      #   metadata. If the graceful shutdown fails to complete within the
      #   timeout period, the instance shuts down forcibly without flushing the
      #   file system caches and metadata.
      #
      #   After using this option, you must perform file system check and repair
      #   procedures. This option is not recommended for Windows instances. For
      #   more information, see [Troubleshoot Amazon EC2 instance stop
      #   issues][1] in the *Amazon EC2 User Guide*.
      #
      #   Default: `false`
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html
      # @return [void]
      def batch_stop(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:instance_ids] ||= []
          batch.each do |item|
            params[:instance_ids] << item.id
          end
          Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
            batch[0].client.stop_instances(params)
          end
        end
        nil
      end

      # @example Request syntax with placeholder values
      #
      #   instance.batch_terminate!({
      #     skip_os_shutdown: false,
      #     dry_run: false,
      #   })
      # @param options ({})
      # @option options [Boolean] :skip_os_shutdown
      #   Specifies whether to bypass the graceful OS shutdown process when the
      #   instance is terminated.
      #
      #   Default: `false`
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the operation,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [void]
      def batch_terminate!(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:instance_ids] ||= []
          batch.each do |item|
            params[:instance_ids] << item.id
          end
          Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
            batch[0].client.terminate_instances(params)
          end
        end
        nil
      end

      # @example Request syntax with placeholder values
      #
      #   instance.batch_unmonitor({
      #     dry_run: false,
      #   })
      # @param options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the operation,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [void]
      def batch_unmonitor(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:instance_ids] ||= []
          batch.each do |item|
            params[:instance_ids] << item.id
          end
          Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
            batch[0].client.unmonitor_instances(params)
          end
        end
        nil
      end

      # @!endgroup

    end
  end
end

# Load customizations if they exist
require 'aws-sdk-ec2/customizations/instance'
