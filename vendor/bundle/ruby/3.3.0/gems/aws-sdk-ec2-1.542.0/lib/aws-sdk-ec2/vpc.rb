# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2

  class Vpc

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
    alias :vpc_id :id

    # The ID of the Amazon Web Services account that owns the VPC.
    # @return [String]
    def owner_id
      data[:owner_id]
    end

    # The allowed tenancy of instances launched into the VPC.
    # @return [String]
    def instance_tenancy
      data[:instance_tenancy]
    end

    # Information about the IPv6 CIDR blocks associated with the VPC.
    # @return [Array<Types::VpcIpv6CidrBlockAssociation>]
    def ipv_6_cidr_block_association_set
      data[:ipv_6_cidr_block_association_set]
    end

    # Information about the IPv4 CIDR blocks associated with the VPC.
    # @return [Array<Types::VpcCidrBlockAssociation>]
    def cidr_block_association_set
      data[:cidr_block_association_set]
    end

    # Indicates whether the VPC is the default VPC.
    # @return [Boolean]
    def is_default
      data[:is_default]
    end

    # @return [Types::VpcEncryptionControl]
    def encryption_control
      data[:encryption_control]
    end

    # Any tags assigned to the VPC.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # The state of VPC Block Public Access (BPA).
    # @return [Types::BlockPublicAccessStates]
    def block_public_access_states
      data[:block_public_access_states]
    end

    # The current state of the VPC.
    # @return [String]
    def state
      data[:state]
    end

    # The primary IPv4 CIDR block for the VPC.
    # @return [String]
    def cidr_block
      data[:cidr_block]
    end

    # The ID of the set of DHCP options you've associated with the VPC.
    # @return [String]
    def dhcp_options_id
      data[:dhcp_options_id]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Vpc}.
    # Returns `self` making it possible to chain methods.
    #
    #     vpc.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_vpcs(vpc_ids: [@id])
      end
      @data = resp.vpcs[0]
      self
    end
    alias :reload :load

    # @return [Types::Vpc]
    #   Returns the data for this {Vpc}. Calls
    #   {Client#describe_vpcs} if {#data_loaded?} is `false`.
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
    #   Returns `true` if the Vpc exists.
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
    # @option options [Float] :delay (15)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Vpc]
    def wait_until_available(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::VpcAvailable.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(vpc_ids: [@id]))
      end
      Vpc.new({
        id: @id,
        client: @client
      })
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (5)
    # @option options [Float] :delay (1)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Vpc]
    def wait_until_exists(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::VpcExists.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(vpc_ids: [@id]))
      end
      Vpc.new({
        id: @id,
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
    #   vpc.associate_dhcp_options({
    #     dhcp_options_id: "DefaultingDhcpOptionsId", # required
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :dhcp_options_id
    #   The ID of the DHCP options set, or `default` to associate no DHCP
    #   options with the VPC.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def associate_dhcp_options(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.associate_dhcp_options(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc.attach_classic_link_instance({
    #     dry_run: false,
    #     instance_id: "InstanceId", # required
    #     groups: ["SecurityGroupId"], # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :instance_id
    #   The ID of the EC2-Classic instance.
    # @option options [required, Array<String>] :groups
    #   The IDs of the security groups. You cannot specify security groups
    #   from a different VPC.
    # @return [Types::AttachClassicLinkVpcResult]
    def attach_classic_link_instance(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.attach_classic_link_vpc(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc.attach_internet_gateway({
    #     dry_run: false,
    #     internet_gateway_id: "InternetGatewayId", # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :internet_gateway_id
    #   The ID of the internet gateway.
    # @return [EmptyStructure]
    def attach_internet_gateway(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.attach_internet_gateway(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   networkacl = vpc.create_network_acl({
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
    #     client_token: "String",
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the network ACL.
    # @option options [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [Ensuring
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [NetworkAcl]
    def create_network_acl(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_network_acl(options)
      end
      NetworkAcl.new(
        id: resp.data.network_acl.network_acl_id,
        data: resp.data.network_acl,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   routetable = vpc.create_route_table({
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
    #     client_token: "String",
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the route table.
    # @option options [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [Ensuring
    #   idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [RouteTable]
    def create_route_table(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_route_table(options)
      end
      RouteTable.new(
        id: resp.data.route_table.route_table_id,
        data: resp.data.route_table,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   securitygroup = vpc.create_security_group({
    #     description: "String", # required
    #     group_name: "String", # required
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
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :description
    #   A description for the security group.
    #
    #   Constraints: Up to 255 characters in length
    #
    #   Valid characters: a-z, A-Z, 0-9, spaces, and
    #   .\_-:/()#,@\[\]+=&amp;;\{}!$*
    # @option options [required, String] :group_name
    #   The name of the security group. Names are case-insensitive and must be
    #   unique within the VPC.
    #
    #   Constraints: Up to 255 characters in length. Can't start with `sg-`.
    #
    #   Valid characters: a-z, A-Z, 0-9, spaces, and
    #   .\_-:/()#,@\[\]+=&amp;;\{}!$*
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the security group.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [SecurityGroup]
    def create_security_group(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_security_group(options)
      end
      SecurityGroup.new(
        id: resp.data.group_id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   subnet = vpc.create_subnet({
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
    #     availability_zone: "String",
    #     availability_zone_id: "String",
    #     cidr_block: "String",
    #     ipv_6_cidr_block: "String",
    #     outpost_arn: "String",
    #     ipv_6_native: false,
    #     ipv_4_ipam_pool_id: "IpamPoolId",
    #     ipv_4_netmask_length: 1,
    #     ipv_6_ipam_pool_id: "IpamPoolId",
    #     ipv_6_netmask_length: 1,
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the subnet.
    # @option options [String] :availability_zone
    #   The Availability Zone or Local Zone for the subnet.
    #
    #   Default: Amazon Web Services selects one for you. If you create more
    #   than one subnet in your VPC, we do not necessarily select a different
    #   zone for each subnet.
    #
    #   To create a subnet in a Local Zone, set this value to the Local Zone
    #   ID, for example `us-west-2-lax-1a`. For information about the Regions
    #   that support Local Zones, see [Available Local Zones][1].
    #
    #   To create a subnet in an Outpost, set this value to the Availability
    #   Zone for the Outpost and specify the Outpost ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/local-zones/latest/ug/available-local-zones.html
    # @option options [String] :availability_zone_id
    #   The AZ ID or the Local Zone ID of the subnet.
    # @option options [String] :cidr_block
    #   The IPv4 network range for the subnet, in CIDR notation. For example,
    #   `10.0.0.0/24`. We modify the specified CIDR block to its canonical
    #   form; for example, if you specify `100.68.0.18/18`, we modify it to
    #   `100.68.0.0/18`.
    #
    #   This parameter is not supported for an IPv6 only subnet.
    # @option options [String] :ipv_6_cidr_block
    #   The IPv6 network range for the subnet, in CIDR notation. This
    #   parameter is required for an IPv6 only subnet.
    # @option options [String] :outpost_arn
    #   The Amazon Resource Name (ARN) of the Outpost. If you specify an
    #   Outpost ARN, you must also specify the Availability Zone of the
    #   Outpost subnet.
    # @option options [Boolean] :ipv_6_native
    #   Indicates whether to create an IPv6 only subnet.
    # @option options [String] :ipv_4_ipam_pool_id
    #   An IPv4 IPAM pool ID for the subnet.
    # @option options [Integer] :ipv_4_netmask_length
    #   An IPv4 netmask length for the subnet.
    # @option options [String] :ipv_6_ipam_pool_id
    #   An IPv6 IPAM pool ID for the subnet.
    # @option options [Integer] :ipv_6_netmask_length
    #   An IPv6 netmask length for the subnet.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Subnet]
    def create_subnet(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_subnet(options)
      end
      Subnet.new(
        id: resp.data.subnet.subnet_id,
        data: resp.data.subnet,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   tag = vpc.create_tags({
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
    #   tag = vpc.delete_tags({
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
    #   vpc.delete({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_vpc(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc.describe_attribute({
    #     attribute: "enableDnsSupport", # required, accepts enableDnsSupport, enableDnsHostnames, enableNetworkAddressUsageMetrics
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :attribute
    #   The VPC attribute.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::DescribeVpcAttributeResult]
    def describe_attribute(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_vpc_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc.detach_classic_link_instance({
    #     dry_run: false,
    #     instance_id: "InstanceId", # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :instance_id
    #   The ID of the instance to unlink from the VPC.
    # @return [Types::DetachClassicLinkVpcResult]
    def detach_classic_link_instance(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.detach_classic_link_vpc(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc.detach_internet_gateway({
    #     dry_run: false,
    #     internet_gateway_id: "InternetGatewayId", # required
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [required, String] :internet_gateway_id
    #   The ID of the internet gateway.
    # @return [EmptyStructure]
    def detach_internet_gateway(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.detach_internet_gateway(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc.disable_classic_link({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::DisableVpcClassicLinkResult]
    def disable_classic_link(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.disable_vpc_classic_link(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc.enable_classic_link({
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Types::EnableVpcClassicLinkResult]
    def enable_classic_link(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.enable_vpc_classic_link(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpc.modify_attribute({
    #     enable_dns_hostnames: {
    #       value: false,
    #     },
    #     enable_dns_support: {
    #       value: false,
    #     },
    #     enable_network_address_usage_metrics: {
    #       value: false,
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [Types::AttributeBooleanValue] :enable_dns_hostnames
    #   Indicates whether the instances launched in the VPC get DNS hostnames.
    #   If enabled, instances in the VPC get DNS hostnames; otherwise, they do
    #   not.
    #
    #   You cannot modify the DNS resolution and DNS hostnames attributes in
    #   the same request. Use separate requests for each attribute. You can
    #   only enable DNS hostnames if you've enabled DNS support.
    # @option options [Types::AttributeBooleanValue] :enable_dns_support
    #   Indicates whether the DNS resolution is supported for the VPC. If
    #   enabled, queries to the Amazon provided DNS server at the
    #   169.254.169.253 IP address, or the reserved IP address at the base of
    #   the VPC network range "plus two" succeed. If disabled, the Amazon
    #   provided DNS service in the VPC that resolves public DNS hostnames to
    #   IP addresses is not enabled.
    #
    #   You cannot modify the DNS resolution and DNS hostnames attributes in
    #   the same request. Use separate requests for each attribute.
    # @option options [Types::AttributeBooleanValue] :enable_network_address_usage_metrics
    #   Indicates whether Network Address Usage metrics are enabled for your
    #   VPC.
    # @return [EmptyStructure]
    def modify_attribute(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.modify_vpc_attribute(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   vpcpeeringconnection = vpc.request_vpc_peering_connection({
    #     peer_region: "String",
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
    #     dry_run: false,
    #     peer_vpc_id: "String",
    #     peer_owner_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :peer_region
    #   The Region code for the accepter VPC, if the accepter VPC is located
    #   in a Region other than the Region in which you make the request.
    #
    #   Default: The Region in which you make the request.
    # @option options [Array<Types::TagSpecification>] :tag_specifications
    #   The tags to assign to the peering connection.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [String] :peer_vpc_id
    #   The ID of the VPC with which you are creating the VPC peering
    #   connection. You must specify this parameter in the request.
    # @option options [String] :peer_owner_id
    #   The Amazon Web Services account ID of the owner of the accepter VPC.
    #
    #   Default: Your Amazon Web Services account ID
    # @return [VpcPeeringConnection]
    def request_vpc_peering_connection(options = {})
      options = options.merge(vpc_id: @id)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_vpc_peering_connection(options)
      end
      VpcPeeringConnection.new(
        id: resp.data.vpc_peering_connection.vpc_peering_connection_id,
        data: resp.data.vpc_peering_connection,
        client: @client
      )
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   accepted_vpc_peering_connections = vpc.accepted_vpc_peering_connections({
    #     dry_run: false,
    #     vpc_peering_connection_ids: ["VpcPeeringConnectionId"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :vpc_peering_connection_ids
    #   The IDs of the VPC peering connections.
    #
    #   Default: Describes all your VPC peering connections.
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `accepter-vpc-info.cidr-block` - The IPv4 CIDR block of the accepter
    #     VPC.
    #
    #   * `accepter-vpc-info.owner-id` - The ID of the Amazon Web Services
    #     account that owns the accepter VPC.
    #
    #   * `accepter-vpc-info.vpc-id` - The ID of the accepter VPC.
    #
    #   * `expiration-time` - The expiration date and time for the VPC peering
    #     connection.
    #
    #   * `requester-vpc-info.cidr-block` - The IPv4 CIDR block of the
    #     requester's VPC.
    #
    #   * `requester-vpc-info.owner-id` - The ID of the Amazon Web Services
    #     account that owns the requester VPC.
    #
    #   * `requester-vpc-info.vpc-id` - The ID of the requester VPC.
    #
    #   * `status-code` - The status of the VPC peering connection
    #     (`pending-acceptance` \| `failed` \| `expired` \| `provisioning` \|
    #     `active` \| `deleting` \| `deleted` \| `rejected`).
    #
    #   * `status-message` - A message that provides more information about
    #     the status of the VPC peering connection, if applicable.
    #
    #   * `tag` - The key/value combination of a tag assigned to the resource.
    #     Use the tag key in the filter name and the tag value as the filter
    #     value. For example, to find all resources that have a tag with the
    #     key `Owner` and the value `TeamA`, specify `tag:Owner` for the
    #     filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-peering-connection-id` - The ID of the VPC peering connection.
    # @return [VpcPeeringConnection::Collection]
    def accepted_vpc_peering_connections(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "accepter-vpc-info.vpc-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_vpc_peering_connections(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.vpc_peering_connections.each do |v|
            batch << VpcPeeringConnection.new(
              id: v.vpc_peering_connection_id,
              data: v,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      VpcPeeringConnection::Collection.new(batches)
    end

    # @return [DhcpOptions, nil]
    def dhcp_options
      if data[:dhcp_options_id]
        DhcpOptions.new(
          id: data[:dhcp_options_id],
          client: @client
        )
      else
        nil
      end
    end

    # @example Request syntax with placeholder values
    #
    #   instances = vpc.instances({
    #     instance_ids: ["InstanceId"],
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :instance_ids
    #   The instance IDs.
    #
    #   Default: Describes all your instances.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `affinity` - The affinity setting for an instance running on a
    #     Dedicated Host (`default` \| `host`).
    #
    #   * `architecture` - The instance architecture (`i386` \| `x86_64` \|
    #     `arm64`).
    #
    #   * `availability-zone` - The Availability Zone of the instance.
    #
    #   * `block-device-mapping.attach-time` - The attach time for an EBS
    #     volume mapped to the instance, for example,
    #     `2022-09-15T17:15:20.000Z`.
    #
    #   * `block-device-mapping.delete-on-termination` - A Boolean that
    #     indicates whether the EBS volume is deleted on instance termination.
    #
    #   * `block-device-mapping.device-name` - The device name specified in
    #     the block device mapping (for example, `/dev/sdh` or `xvdh`).
    #
    #   * `block-device-mapping.status` - The status for the EBS volume
    #     (`attaching` \| `attached` \| `detaching` \| `detached`).
    #
    #   * `block-device-mapping.volume-id` - The volume ID of the EBS volume.
    #
    #   * `boot-mode` - The boot mode that was specified by the AMI
    #     (`legacy-bios` \| `uefi` \| `uefi-preferred`).
    #
    #   * `capacity-reservation-id` - The ID of the Capacity Reservation into
    #     which the instance was launched.
    #
    #   * `capacity-reservation-specification.capacity-reservation-preference`
    #     - The instance's Capacity Reservation preference (`open` \|
    #     `none`).
    #
    #   * `capacity-reservation-specification.capacity-reservation-target.capacity-reservation-id`
    #     - The ID of the targeted Capacity Reservation.
    #
    #   * `capacity-reservation-specification.capacity-reservation-target.capacity-reservation-resource-group-arn`
    #     - The ARN of the targeted Capacity Reservation group.
    #
    #   * `client-token` - The idempotency token you provided when you
    #     launched the instance.
    #
    #   * `current-instance-boot-mode` - The boot mode that is used to launch
    #     the instance at launch or start (`legacy-bios` \| `uefi`).
    #
    #   * `dns-name` - The public DNS name of the instance.
    #
    #   * `ebs-optimized` - A Boolean that indicates whether the instance is
    #     optimized for Amazon EBS I/O.
    #
    #   * `ena-support` - A Boolean that indicates whether the instance is
    #     enabled for enhanced networking with ENA.
    #
    #   * `enclave-options.enabled` - A Boolean that indicates whether the
    #     instance is enabled for Amazon Web Services Nitro Enclaves.
    #
    #   * `hibernation-options.configured` - A Boolean that indicates whether
    #     the instance is enabled for hibernation. A value of `true` means
    #     that the instance is enabled for hibernation.
    #
    #   * `host-id` - The ID of the Dedicated Host on which the instance is
    #     running, if applicable.
    #
    #   * `hypervisor` - The hypervisor type of the instance (`ovm` \| `xen`).
    #     The value `xen` is used for both Xen and Nitro hypervisors.
    #
    #   * `iam-instance-profile.arn` - The instance profile associated with
    #     the instance. Specified as an ARN.
    #
    #   * `iam-instance-profile.id` - The instance profile associated with the
    #     instance. Specified as an ID.
    #
    #   * `image-id` - The ID of the image used to launch the instance.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `instance-lifecycle` - Indicates whether this is a Spot Instance, a
    #     Scheduled Instance, or a Capacity Block (`spot` \| `scheduled` \|
    #     `capacity-block`).
    #
    #   * `instance-state-code` - The state of the instance, as a 16-bit
    #     unsigned integer. The high byte is used for internal purposes and
    #     should be ignored. The low byte is set based on the state
    #     represented. The valid values are: 0 (pending), 16 (running), 32
    #     (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
    #
    #   * `instance-state-name` - The state of the instance (`pending` \|
    #     `running` \| `shutting-down` \| `terminated` \| `stopping` \|
    #     `stopped`).
    #
    #   * `instance-type` - The type of instance (for example, `t2.micro`).
    #
    #   * `instance.group-id` - The ID of the security group for the instance.
    #
    #   * `instance.group-name` - The name of the security group for the
    #     instance.
    #
    #   * `ip-address` - The public IPv4 address of the instance.
    #
    #   * `ipv6-address` - The IPv6 address of the instance.
    #
    #   * `kernel-id` - The kernel ID.
    #
    #   * `key-name` - The name of the key pair used when the instance was
    #     launched.
    #
    #   * `launch-index` - When launching multiple instances, this is the
    #     index for the instance in the launch group (for example, 0, 1, 2,
    #     and so on).
    #
    #   * `launch-time` - The time when the instance was launched, in the ISO
    #     8601 format in the UTC time zone (YYYY-MM-DDThh:mm:ss.sssZ), for
    #     example, `2021-09-29T11:04:43.305Z`. You can use a wildcard (`*`),
    #     for example, `2021-09-29T*`, which matches an entire day.
    #
    #   * `maintenance-options.auto-recovery` - The current automatic recovery
    #     behavior of the instance (`disabled` \| `default`).
    #
    #   * `metadata-options.http-endpoint` - The status of access to the HTTP
    #     metadata endpoint on your instance (`enabled` \| `disabled`)
    #
    #   * `metadata-options.http-protocol-ipv4` - Indicates whether the IPv4
    #     endpoint is enabled (`disabled` \| `enabled`).
    #
    #   * `metadata-options.http-protocol-ipv6` - Indicates whether the IPv6
    #     endpoint is enabled (`disabled` \| `enabled`).
    #
    #   * `metadata-options.http-put-response-hop-limit` - The HTTP metadata
    #     request put response hop limit (integer, possible values `1` to
    #     `64`)
    #
    #   * `metadata-options.http-tokens` - The metadata request authorization
    #     state (`optional` \| `required`)
    #
    #   * `metadata-options.instance-metadata-tags` - The status of access to
    #     instance tags from the instance metadata (`enabled` \| `disabled`)
    #
    #   * `metadata-options.state` - The state of the metadata option changes
    #     (`pending` \| `applied`).
    #
    #   * `monitoring-state` - Indicates whether detailed monitoring is
    #     enabled (`disabled` \| `enabled`).
    #
    #   * `network-interface.addresses.association.allocation-id` - The
    #     allocation ID.
    #
    #   * `network-interface.addresses.association.association-id` - The
    #     association ID.
    #
    #   * `network-interface.addresses.association.carrier-ip` - The carrier
    #     IP address.
    #
    #   * `network-interface.addresses.association.customer-owned-ip` - The
    #     customer-owned IP address.
    #
    #   * `network-interface.addresses.association.ip-owner-id` - The owner ID
    #     of the private IPv4 address associated with the network interface.
    #
    #   * `network-interface.addresses.association.public-dns-name` - The
    #     public DNS name.
    #
    #   * `network-interface.addresses.association.public-ip` - The ID of the
    #     association of an Elastic IP address (IPv4) with a network
    #     interface.
    #
    #   * `network-interface.addresses.primary` - Specifies whether the IPv4
    #     address of the network interface is the primary private IPv4
    #     address.
    #
    #   * `network-interface.addresses.private-dns-name` - The private DNS
    #     name.
    #
    #   * `network-interface.addresses.private-ip-address` - The private IPv4
    #     address associated with the network interface.
    #
    #   * `network-interface.association.allocation-id` - The allocation ID
    #     returned when you allocated the Elastic IP address (IPv4) for your
    #     network interface.
    #
    #   * `network-interface.association.association-id` - The association ID
    #     returned when the network interface was associated with an IPv4
    #     address.
    #
    #   * `network-interface.association.carrier-ip` - The customer-owned IP
    #     address.
    #
    #   * `network-interface.association.customer-owned-ip` - The
    #     customer-owned IP address.
    #
    #   * `network-interface.association.ip-owner-id` - The owner of the
    #     Elastic IP address (IPv4) associated with the network interface.
    #
    #   * `network-interface.association.public-dns-name` - The public DNS
    #     name.
    #
    #   * `network-interface.association.public-ip` - The address of the
    #     Elastic IP address (IPv4) bound to the network interface.
    #
    #   * `network-interface.attachment.attach-time` - The time that the
    #     network interface was attached to an instance.
    #
    #   * `network-interface.attachment.attachment-id` - The ID of the
    #     interface attachment.
    #
    #   * `network-interface.attachment.delete-on-termination` - Specifies
    #     whether the attachment is deleted when an instance is terminated.
    #
    #   * `network-interface.attachment.device-index` - The device index to
    #     which the network interface is attached.
    #
    #   * `network-interface.attachment.instance-id` - The ID of the instance
    #     to which the network interface is attached.
    #
    #   * `network-interface.attachment.instance-owner-id` - The owner ID of
    #     the instance to which the network interface is attached.
    #
    #   * `network-interface.attachment.network-card-index` - The index of the
    #     network card.
    #
    #   * `network-interface.attachment.status` - The status of the attachment
    #     (`attaching` \| `attached` \| `detaching` \| `detached`).
    #
    #   * `network-interface.availability-zone` - The Availability Zone for
    #     the network interface.
    #
    #   * `network-interface.deny-all-igw-traffic` - A Boolean that indicates
    #     whether a network interface with an IPv6 address is unreachable from
    #     the public internet.
    #
    #   * `network-interface.description` - The description of the network
    #     interface.
    #
    #   * `network-interface.group-id` - The ID of a security group associated
    #     with the network interface.
    #
    #   * `network-interface.group-name` - The name of a security group
    #     associated with the network interface.
    #
    #   * `network-interface.ipv4-prefixes.ipv4-prefix` - The IPv4 prefixes
    #     that are assigned to the network interface.
    #
    #   * `network-interface.ipv6-address` - The IPv6 address associated with
    #     the network interface.
    #
    #   * `network-interface.ipv6-addresses.ipv6-address` - The IPv6 address
    #     associated with the network interface.
    #
    #   * `network-interface.ipv6-addresses.is-primary-ipv6` - A Boolean that
    #     indicates whether this is the primary IPv6 address.
    #
    #   * `network-interface.ipv6-native` - A Boolean that indicates whether
    #     this is an IPv6 only network interface.
    #
    #   * `network-interface.ipv6-prefixes.ipv6-prefix` - The IPv6 prefix
    #     assigned to the network interface.
    #
    #   * `network-interface.mac-address` - The MAC address of the network
    #     interface.
    #
    #   * `network-interface.network-interface-id` - The ID of the network
    #     interface.
    #
    #   * `network-interface.operator.managed` - A Boolean that indicates
    #     whether the instance has a managed network interface.
    #
    #   * `network-interface.operator.principal` - The principal that manages
    #     the network interface. Only valid for instances with managed network
    #     interfaces, where `managed` is `true`.
    #
    #   * `network-interface.outpost-arn` - The ARN of the Outpost.
    #
    #   * `network-interface.owner-id` - The ID of the owner of the network
    #     interface.
    #
    #   * `network-interface.private-dns-name` - The private DNS name of the
    #     network interface.
    #
    #   * `network-interface.private-ip-address` - The private IPv4 address.
    #
    #   * `network-interface.public-dns-name` - The public DNS name.
    #
    #   * `network-interface.requester-id` - The requester ID for the network
    #     interface.
    #
    #   * `network-interface.requester-managed` - Indicates whether the
    #     network interface is being managed by Amazon Web Services.
    #
    #   * `network-interface.status` - The status of the network interface
    #     (`available`) \| `in-use`).
    #
    #   * `network-interface.source-dest-check` - Whether the network
    #     interface performs source/destination checking. A value of `true`
    #     means that checking is enabled, and `false` means that checking is
    #     disabled. The value must be `false` for the network interface to
    #     perform network address translation (NAT) in your VPC.
    #
    #   * `network-interface.subnet-id` - The ID of the subnet for the network
    #     interface.
    #
    #   * `network-interface.tag-key` - The key of a tag assigned to the
    #     network interface.
    #
    #   * `network-interface.tag-value` - The value of a tag assigned to the
    #     network interface.
    #
    #   * `network-interface.vpc-id` - The ID of the VPC for the network
    #     interface.
    #
    #   * `network-performance-options.bandwidth-weighting` - Where the
    #     performance boost is applied, if applicable. Valid values:
    #     `default`, `vpc-1`, `ebs-1`.
    #
    #   * `operator.managed` - A Boolean that indicates whether this is a
    #     managed instance.
    #
    #   * `operator.principal` - The principal that manages the instance. Only
    #     valid for managed instances, where `managed` is `true`.
    #
    #   * `outpost-arn` - The Amazon Resource Name (ARN) of the Outpost.
    #
    #   * `owner-id` - The Amazon Web Services account ID of the instance
    #     owner.
    #
    #   * `placement-group-name` - The name of the placement group for the
    #     instance.
    #
    #   * `placement-partition-number` - The partition in which the instance
    #     is located.
    #
    #   * `platform` - The platform. To list only Windows instances, use
    #     `windows`.
    #
    #   * `platform-details` - The platform (`Linux/UNIX` \| `Red Hat BYOL
    #     Linux` \| ` Red Hat Enterprise Linux` \| `Red Hat Enterprise Linux
    #     with HA` \| `Red Hat Enterprise Linux with SQL Server Standard and
    #     HA` \| `Red Hat Enterprise Linux with SQL Server Enterprise and HA`
    #     \| `Red Hat Enterprise Linux with SQL Server Standard` \| `Red Hat
    #     Enterprise Linux with SQL Server Web` \| `Red Hat Enterprise Linux
    #     with SQL Server Enterprise` \| `SQL Server Enterprise` \| `SQL
    #     Server Standard` \| `SQL Server Web` \| `SUSE Linux` \| `Ubuntu Pro`
    #     \| `Windows` \| `Windows BYOL` \| `Windows with SQL Server
    #     Enterprise` \| `Windows with SQL Server Standard` \| `Windows with
    #     SQL Server Web`).
    #
    #   * `private-dns-name` - The private IPv4 DNS name of the instance.
    #
    #   * `private-dns-name-options.enable-resource-name-dns-a-record` - A
    #     Boolean that indicates whether to respond to DNS queries for
    #     instance hostnames with DNS A records.
    #
    #   * `private-dns-name-options.enable-resource-name-dns-aaaa-record` - A
    #     Boolean that indicates whether to respond to DNS queries for
    #     instance hostnames with DNS AAAA records.
    #
    #   * `private-dns-name-options.hostname-type` - The type of hostname
    #     (`ip-name` \| `resource-name`).
    #
    #   * `private-ip-address` - The private IPv4 address of the instance.
    #     This can only be used to filter by the primary IP address of the
    #     network interface attached to the instance. To filter by additional
    #     IP addresses assigned to the network interface, use the filter
    #     `network-interface.addresses.private-ip-address`.
    #
    #   * `product-code` - The product code associated with the AMI used to
    #     launch the instance.
    #
    #   * `product-code.type` - The type of product code (`devpay` \|
    #     `marketplace`).
    #
    #   * `ramdisk-id` - The RAM disk ID.
    #
    #   * `reason` - The reason for the current state of the instance (for
    #     example, shows "User Initiated \[date\]" when you stop or
    #     terminate the instance). Similar to the state-reason-code filter.
    #
    #   * `requester-id` - The ID of the entity that launched the instance on
    #     your behalf (for example, Amazon Web Services Management Console,
    #     Auto Scaling, and so on).
    #
    #   * `reservation-id` - The ID of the instance's reservation. A
    #     reservation ID is created any time you launch an instance. A
    #     reservation ID has a one-to-one relationship with an instance launch
    #     request, but can be associated with more than one instance if you
    #     launch multiple instances using the same launch request. For
    #     example, if you launch one instance, you get one reservation ID. If
    #     you launch ten instances using the same launch request, you also get
    #     one reservation ID.
    #
    #   * `root-device-name` - The device name of the root device volume (for
    #     example, `/dev/sda1`).
    #
    #   * `root-device-type` - The type of the root device volume (`ebs` \|
    #     `instance-store`).
    #
    #   * `source-dest-check` - Indicates whether the instance performs
    #     source/destination checking. A value of `true` means that checking
    #     is enabled, and `false` means that checking is disabled. The value
    #     must be `false` for the instance to perform network address
    #     translation (NAT) in your VPC.
    #
    #   * `spot-instance-request-id` - The ID of the Spot Instance request.
    #
    #   * `state-reason-code` - The reason code for the state change.
    #
    #   * `state-reason-message` - A message that describes the state change.
    #
    #   * `subnet-id` - The ID of the subnet for the instance.
    #
    #   * `tag:<key>` - The key/value combination of a tag assigned to the
    #     resource. Use the tag key in the filter name and the tag value as
    #     the filter value. For example, to find all resources that have a tag
    #     with the key `Owner` and the value `TeamA`, specify `tag:Owner` for
    #     the filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources that have a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `tenancy` - The tenancy of an instance (`dedicated` \| `default` \|
    #     `host`).
    #
    #   * `tpm-support` - Indicates if the instance is configured for NitroTPM
    #     support (`v2.0`).
    #
    #   * `usage-operation` - The usage operation value for the instance
    #     (`RunInstances` \| `RunInstances:00g0` \| `RunInstances:0010` \|
    #     `RunInstances:1010` \| `RunInstances:1014` \| `RunInstances:1110` \|
    #     `RunInstances:0014` \| `RunInstances:0210` \| `RunInstances:0110` \|
    #     `RunInstances:0100` \| `RunInstances:0004` \| `RunInstances:0200` \|
    #     `RunInstances:000g` \| `RunInstances:0g00` \| `RunInstances:0002` \|
    #     `RunInstances:0800` \| `RunInstances:0102` \| `RunInstances:0006` \|
    #     `RunInstances:0202`).
    #
    #   * `usage-operation-update-time` - The time that the usage operation
    #     was last updated, for example, `2022-09-15T17:15:20.000Z`.
    #
    #   * `virtualization-type` - The virtualization type of the instance
    #     (`paravirtual` \| `hvm`).
    #
    #   * `vpc-id` - The ID of the VPC that the instance is running in.
    # @return [Instance::Collection]
    def instances(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "vpc-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_instances(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.reservations.each do |r|
            r.instances.each do |i|
              batch << Instance.new(
                id: i.instance_id,
                data: i,
                client: @client
              )
            end
          end
          y.yield(batch)
        end
      end
      Instance::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   internet_gateways = vpc.internet_gateways({
    #     dry_run: false,
    #     internet_gateway_ids: ["InternetGatewayId"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :internet_gateway_ids
    #   The IDs of the internet gateways.
    #
    #   Default: Describes all your internet gateways.
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `attachment.state` - The current state of the attachment between the
    #     gateway and the VPC (`available`). Present only if a VPC is
    #     attached.
    #
    #   * `attachment.vpc-id` - The ID of an attached VPC.
    #
    #   * `internet-gateway-id` - The ID of the Internet gateway.
    #
    #   * `owner-id` - The ID of the Amazon Web Services account that owns the
    #     internet gateway.
    #
    #   * `tag` - The key/value combination of a tag assigned to the resource.
    #     Use the tag key in the filter name and the tag value as the filter
    #     value. For example, to find all resources that have a tag with the
    #     key `Owner` and the value `TeamA`, specify `tag:Owner` for the
    #     filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    # @return [InternetGateway::Collection]
    def internet_gateways(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "attachment.vpc-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_internet_gateways(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.internet_gateways.each do |i|
            batch << InternetGateway.new(
              id: i.internet_gateway_id,
              data: i,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      InternetGateway::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   network_acls = vpc.network_acls({
    #     dry_run: false,
    #     network_acl_ids: ["NetworkAclId"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :network_acl_ids
    #   The IDs of the network ACLs.
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `association.association-id` - The ID of an association ID for the
    #     ACL.
    #
    #   * `association.network-acl-id` - The ID of the network ACL involved in
    #     the association.
    #
    #   * `association.subnet-id` - The ID of the subnet involved in the
    #     association.
    #
    #   * `default` - Indicates whether the ACL is the default network ACL for
    #     the VPC.
    #
    #   * `entry.cidr` - The IPv4 CIDR range specified in the entry.
    #
    #   * `entry.icmp.code` - The ICMP code specified in the entry, if any.
    #
    #   * `entry.icmp.type` - The ICMP type specified in the entry, if any.
    #
    #   * `entry.ipv6-cidr` - The IPv6 CIDR range specified in the entry.
    #
    #   * `entry.port-range.from` - The start of the port range specified in
    #     the entry.
    #
    #   * `entry.port-range.to` - The end of the port range specified in the
    #     entry.
    #
    #   * `entry.protocol` - The protocol specified in the entry (`tcp` \|
    #     `udp` \| `icmp` or a protocol number).
    #
    #   * `entry.rule-action` - Allows or denies the matching traffic (`allow`
    #     \| `deny`).
    #
    #   * `entry.egress` - A Boolean that indicates the type of rule. Specify
    #     `true` for egress rules, or `false` for ingress rules.
    #
    #   * `entry.rule-number` - The number of an entry (in other words, rule)
    #     in the set of ACL entries.
    #
    #   * `network-acl-id` - The ID of the network ACL.
    #
    #   * `owner-id` - The ID of the Amazon Web Services account that owns the
    #     network ACL.
    #
    #   * `tag` - The key/value combination of a tag assigned to the resource.
    #     Use the tag key in the filter name and the tag value as the filter
    #     value. For example, to find all resources that have a tag with the
    #     key `Owner` and the value `TeamA`, specify `tag:Owner` for the
    #     filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC for the network ACL.
    # @return [NetworkAcl::Collection]
    def network_acls(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "vpc-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_network_acls(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.network_acls.each do |n|
            batch << NetworkAcl.new(
              id: n.network_acl_id,
              data: n,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      NetworkAcl::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   network_interfaces = vpc.network_interfaces({
    #     dry_run: false,
    #     network_interface_ids: ["NetworkInterfaceId"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :network_interface_ids
    #   The network interface IDs.
    #
    #   Default: Describes all your network interfaces.
    # @option options [Array<Types::Filter>] :filters
    #   One or more filters.
    #
    #   * `association.allocation-id` - The allocation ID returned when you
    #     allocated the Elastic IP address (IPv4) for your network interface.
    #
    #   * `association.association-id` - The association ID returned when the
    #     network interface was associated with an IPv4 address.
    #
    #   * `addresses.association.owner-id` - The owner ID of the addresses
    #     associated with the network interface.
    #
    #   * `addresses.association.public-ip` - The association ID returned when
    #     the network interface was associated with the Elastic IP address
    #     (IPv4).
    #
    #   * `addresses.primary` - Whether the private IPv4 address is the
    #     primary IP address associated with the network interface.
    #
    #   * `addresses.private-ip-address` - The private IPv4 addresses
    #     associated with the network interface.
    #
    #   * `association.ip-owner-id` - The owner of the Elastic IP address
    #     (IPv4) associated with the network interface.
    #
    #   * `association.public-ip` - The address of the Elastic IP address
    #     (IPv4) bound to the network interface.
    #
    #   * `association.public-dns-name` - The public DNS name for the network
    #     interface (IPv4).
    #
    #   * `attachment.attach-time` - The time that the network interface was
    #     attached to an instance.
    #
    #   * `attachment.attachment-id` - The ID of the interface attachment.
    #
    #   * `attachment.delete-on-termination` - Indicates whether the
    #     attachment is deleted when an instance is terminated.
    #
    #   * `attachment.device-index` - The device index to which the network
    #     interface is attached.
    #
    #   * `attachment.instance-id` - The ID of the instance to which the
    #     network interface is attached.
    #
    #   * `attachment.instance-owner-id` - The owner ID of the instance to
    #     which the network interface is attached.
    #
    #   * `attachment.status` - The status of the attachment (`attaching` \|
    #     `attached` \| `detaching` \| `detached`).
    #
    #   * `availability-zone` - The Availability Zone of the network
    #     interface.
    #
    #   * `description` - The description of the network interface.
    #
    #   * `group-id` - The ID of a security group associated with the network
    #     interface.
    #
    #   * `ipv6-addresses.ipv6-address` - An IPv6 address associated with the
    #     network interface.
    #
    #   * `interface-type` - The type of network interface
    #     (`api_gateway_managed` \| `aws_codestar_connections_managed` \|
    #     `branch` \| `ec2_instance_connect_endpoint` \| `efa` \| `efa-only`
    #     \| `efs` \| `evs` \| `gateway_load_balancer` \|
    #     `gateway_load_balancer_endpoint` \| `global_accelerator_managed` \|
    #     `interface` \| `iot_rules_managed` \| `lambda` \| `load_balancer` \|
    #     `nat_gateway` \| `network_load_balancer` \| `quicksight` \|
    #     `transit_gateway` \| `trunk` \| `vpc_endpoint`).
    #
    #   * `mac-address` - The MAC address of the network interface.
    #
    #   * `network-interface-id` - The ID of the network interface.
    #
    #   * `operator.managed` - A Boolean that indicates whether this is a
    #     managed network interface.
    #
    #   * `operator.principal` - The principal that manages the network
    #     interface. Only valid for managed network interfaces, where
    #     `managed` is `true`.
    #
    #   * `owner-id` - The Amazon Web Services account ID of the network
    #     interface owner.
    #
    #   * `private-dns-name` - The private DNS name of the network interface
    #     (IPv4).
    #
    #   * `private-ip-address` - The private IPv4 address or addresses of the
    #     network interface.
    #
    #   * `requester-id` - The alias or Amazon Web Services account ID of the
    #     principal or service that created the network interface.
    #
    #   * `requester-managed` - Indicates whether the network interface is
    #     being managed by an Amazon Web Services service (for example, Amazon
    #     Web Services Management Console, Auto Scaling, and so on).
    #
    #   * `source-dest-check` - Indicates whether the network interface
    #     performs source/destination checking. A value of `true` means
    #     checking is enabled, and `false` means checking is disabled. The
    #     value must be `false` for the network interface to perform network
    #     address translation (NAT) in your VPC.
    #
    #   * `status` - The status of the network interface. If the network
    #     interface is not attached to an instance, the status is `available`;
    #     if a network interface is attached to an instance the status is
    #     `in-use`.
    #
    #   * `subnet-id` - The ID of the subnet for the network interface.
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
    #   * `vpc-id` - The ID of the VPC for the network interface.
    # @return [NetworkInterface::Collection]
    def network_interfaces(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "vpc-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_network_interfaces(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.network_interfaces.each do |n|
            batch << NetworkInterface.new(
              id: n.network_interface_id,
              data: n,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      NetworkInterface::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   requested_vpc_peering_connections = vpc.requested_vpc_peering_connections({
    #     dry_run: false,
    #     vpc_peering_connection_ids: ["VpcPeeringConnectionId"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :vpc_peering_connection_ids
    #   The IDs of the VPC peering connections.
    #
    #   Default: Describes all your VPC peering connections.
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `accepter-vpc-info.cidr-block` - The IPv4 CIDR block of the accepter
    #     VPC.
    #
    #   * `accepter-vpc-info.owner-id` - The ID of the Amazon Web Services
    #     account that owns the accepter VPC.
    #
    #   * `accepter-vpc-info.vpc-id` - The ID of the accepter VPC.
    #
    #   * `expiration-time` - The expiration date and time for the VPC peering
    #     connection.
    #
    #   * `requester-vpc-info.cidr-block` - The IPv4 CIDR block of the
    #     requester's VPC.
    #
    #   * `requester-vpc-info.owner-id` - The ID of the Amazon Web Services
    #     account that owns the requester VPC.
    #
    #   * `requester-vpc-info.vpc-id` - The ID of the requester VPC.
    #
    #   * `status-code` - The status of the VPC peering connection
    #     (`pending-acceptance` \| `failed` \| `expired` \| `provisioning` \|
    #     `active` \| `deleting` \| `deleted` \| `rejected`).
    #
    #   * `status-message` - A message that provides more information about
    #     the status of the VPC peering connection, if applicable.
    #
    #   * `tag` - The key/value combination of a tag assigned to the resource.
    #     Use the tag key in the filter name and the tag value as the filter
    #     value. For example, to find all resources that have a tag with the
    #     key `Owner` and the value `TeamA`, specify `tag:Owner` for the
    #     filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-peering-connection-id` - The ID of the VPC peering connection.
    # @return [VpcPeeringConnection::Collection]
    def requested_vpc_peering_connections(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "requester-vpc-info.vpc-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_vpc_peering_connections(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.vpc_peering_connections.each do |v|
            batch << VpcPeeringConnection.new(
              id: v.vpc_peering_connection_id,
              data: v,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      VpcPeeringConnection::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   route_tables = vpc.route_tables({
    #     dry_run: false,
    #     route_table_ids: ["RouteTableId"],
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<String>] :route_table_ids
    #   The IDs of the route tables.
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `association.gateway-id` - The ID of the gateway involved in the
    #     association.
    #
    #   * `association.route-table-association-id` - The ID of an association
    #     ID for the route table.
    #
    #   * `association.route-table-id` - The ID of the route table involved in
    #     the association.
    #
    #   * `association.subnet-id` - The ID of the subnet involved in the
    #     association.
    #
    #   * `association.main` - Indicates whether the route table is the main
    #     route table for the VPC (`true` \| `false`). Route tables that do
    #     not have an association ID are not returned in the response.
    #
    #   * `owner-id` - The ID of the Amazon Web Services account that owns the
    #     route table.
    #
    #   * `route-table-id` - The ID of the route table.
    #
    #   * `route.destination-cidr-block` - The IPv4 CIDR range specified in a
    #     route in the table.
    #
    #   * `route.destination-ipv6-cidr-block` - The IPv6 CIDR range specified
    #     in a route in the route table.
    #
    #   * `route.destination-prefix-list-id` - The ID (prefix) of the Amazon
    #     Web Services service specified in a route in the table.
    #
    #   * `route.egress-only-internet-gateway-id` - The ID of an egress-only
    #     Internet gateway specified in a route in the route table.
    #
    #   * `route.gateway-id` - The ID of a gateway specified in a route in the
    #     table.
    #
    #   * `route.instance-id` - The ID of an instance specified in a route in
    #     the table.
    #
    #   * `route.nat-gateway-id` - The ID of a NAT gateway.
    #
    #   * `route.transit-gateway-id` - The ID of a transit gateway.
    #
    #   * `route.origin` - Describes how the route was created.
    #     `CreateRouteTable` indicates that the route was automatically
    #     created when the route table was created; `CreateRoute` indicates
    #     that the route was manually added to the route table;
    #     `EnableVgwRoutePropagation` indicates that the route was propagated
    #     by route propagation.
    #
    #   * `route.state` - The state of a route in the route table (`active` \|
    #     `blackhole`). The blackhole state indicates that the route's target
    #     isn't available (for example, the specified gateway isn't attached
    #     to the VPC, the specified NAT instance has been terminated, and so
    #     on).
    #
    #   * `route.vpc-peering-connection-id` - The ID of a VPC peering
    #     connection specified in a route in the table.
    #
    #   * `tag` - The key/value combination of a tag assigned to the resource.
    #     Use the tag key in the filter name and the tag value as the filter
    #     value. For example, to find all resources that have a tag with the
    #     key `Owner` and the value `TeamA`, specify `tag:Owner` for the
    #     filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC for the route table.
    # @return [RouteTable::Collection]
    def route_tables(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "vpc-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_route_tables(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.route_tables.each do |r|
            batch << RouteTable.new(
              id: r.route_table_id,
              data: r,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      RouteTable::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   security_groups = vpc.security_groups({
    #     group_ids: ["SecurityGroupId"],
    #     group_names: ["SecurityGroupName"],
    #     dry_run: false,
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :group_ids
    #   The IDs of the security groups. Required for security groups in a
    #   nondefault VPC.
    #
    #   Default: Describes all of your security groups.
    # @option options [Array<String>] :group_names
    #   \[Default VPC\] The names of the security groups. You can specify
    #   either the security group name or the security group ID.
    #
    #   Default: Describes all of your security groups.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @option options [Array<Types::Filter>] :filters
    #   The filters. If using multiple filters for rules, the results include
    #   security groups for which any combination of rules - not necessarily a
    #   single rule - match all filters.
    #
    #   * `description` - The description of the security group.
    #
    #   * `egress.ip-permission.cidr` - An IPv4 CIDR block for an outbound
    #     security group rule.
    #
    #   * `egress.ip-permission.from-port` - For an outbound rule, the start
    #     of port range for the TCP and UDP protocols, or an ICMP type number.
    #
    #   * `egress.ip-permission.group-id` - The ID of a security group that
    #     has been referenced in an outbound security group rule.
    #
    #   * `egress.ip-permission.group-name` - The name of a security group
    #     that is referenced in an outbound security group rule.
    #
    #   * `egress.ip-permission.ipv6-cidr` - An IPv6 CIDR block for an
    #     outbound security group rule.
    #
    #   * `egress.ip-permission.prefix-list-id` - The ID of a prefix list to
    #     which a security group rule allows outbound access.
    #
    #   * `egress.ip-permission.protocol` - The IP protocol for an outbound
    #     security group rule (`tcp` \| `udp` \| `icmp`, a protocol number, or
    #     -1 for all protocols).
    #
    #   * `egress.ip-permission.to-port` - For an outbound rule, the end of
    #     port range for the TCP and UDP protocols, or an ICMP code.
    #
    #   * `egress.ip-permission.user-id` - The ID of an Amazon Web Services
    #     account that has been referenced in an outbound security group rule.
    #
    #   * `group-id` - The ID of the security group.
    #
    #   * `group-name` - The name of the security group.
    #
    #   * `ip-permission.cidr` - An IPv4 CIDR block for an inbound security
    #     group rule.
    #
    #   * `ip-permission.from-port` - For an inbound rule, the start of port
    #     range for the TCP and UDP protocols, or an ICMP type number.
    #
    #   * `ip-permission.group-id` - The ID of a security group that has been
    #     referenced in an inbound security group rule.
    #
    #   * `ip-permission.group-name` - The name of a security group that is
    #     referenced in an inbound security group rule.
    #
    #   * `ip-permission.ipv6-cidr` - An IPv6 CIDR block for an inbound
    #     security group rule.
    #
    #   * `ip-permission.prefix-list-id` - The ID of a prefix list from which
    #     a security group rule allows inbound access.
    #
    #   * `ip-permission.protocol` - The IP protocol for an inbound security
    #     group rule (`tcp` \| `udp` \| `icmp`, a protocol number, or -1 for
    #     all protocols).
    #
    #   * `ip-permission.to-port` - For an inbound rule, the end of port range
    #     for the TCP and UDP protocols, or an ICMP code.
    #
    #   * `ip-permission.user-id` - The ID of an Amazon Web Services account
    #     that has been referenced in an inbound security group rule.
    #
    #   * `owner-id` - The Amazon Web Services account ID of the owner of the
    #     security group.
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
    #   * `vpc-id` - The ID of the VPC specified when the security group was
    #     created.
    # @return [SecurityGroup::Collection]
    def security_groups(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "vpc-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_security_groups(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.security_groups.each do |s|
            batch << SecurityGroup.new(
              id: s.group_id,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      SecurityGroup::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   subnets = vpc.subnets({
    #     filters: [
    #       {
    #         name: "String",
    #         values: ["String"],
    #       },
    #     ],
    #     subnet_ids: ["SubnetId"],
    #     dry_run: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   The filters.
    #
    #   * `availability-zone` - The Availability Zone for the subnet. You can
    #     also use `availabilityZone` as the filter name.
    #
    #   * `availability-zone-id` - The ID of the Availability Zone for the
    #     subnet. You can also use `availabilityZoneId` as the filter name.
    #
    #   * `available-ip-address-count` - The number of IPv4 addresses in the
    #     subnet that are available.
    #
    #   * `cidr-block` - The IPv4 CIDR block of the subnet. The CIDR block you
    #     specify must exactly match the subnet's CIDR block for information
    #     to be returned for the subnet. You can also use `cidr` or
    #     `cidrBlock` as the filter names.
    #
    #   * `customer-owned-ipv4-pool` - The customer-owned IPv4 address pool
    #     associated with the subnet.
    #
    #   * `default-for-az` - Indicates whether this is the default subnet for
    #     the Availability Zone (`true` \| `false`). You can also use
    #     `defaultForAz` as the filter name.
    #
    #   * `enable-dns64` - Indicates whether DNS queries made to the
    #     Amazon-provided DNS Resolver in this subnet should return synthetic
    #     IPv6 addresses for IPv4-only destinations.
    #
    #   * `enable-lni-at-device-index` - Indicates the device position for
    #     local network interfaces in this subnet. For example, `1` indicates
    #     local network interfaces in this subnet are the secondary network
    #     interface (eth1).
    #
    #   * `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block
    #     associated with the subnet.
    #
    #   * `ipv6-cidr-block-association.association-id` - An association ID for
    #     an IPv6 CIDR block associated with the subnet.
    #
    #   * `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR
    #     block associated with the subnet.
    #
    #   * `ipv6-native` - Indicates whether this is an IPv6 only subnet
    #     (`true` \| `false`).
    #
    #   * `map-customer-owned-ip-on-launch` - Indicates whether a network
    #     interface created in this subnet (including a network interface
    #     created by RunInstances) receives a customer-owned IPv4 address.
    #
    #   * `map-public-ip-on-launch` - Indicates whether instances launched in
    #     this subnet receive a public IPv4 address.
    #
    #   * `outpost-arn` - The Amazon Resource Name (ARN) of the Outpost.
    #
    #   * `owner-id` - The ID of the Amazon Web Services account that owns the
    #     subnet.
    #
    #   * `private-dns-name-options-on-launch.hostname-type` - The type of
    #     hostname to assign to instances in the subnet at launch. For
    #     IPv4-only and dual-stack (IPv4 and IPv6) subnets, an instance DNS
    #     name can be based on the instance IPv4 address (ip-name) or the
    #     instance ID (resource-name). For IPv6 only subnets, an instance DNS
    #     name must be based on the instance ID (resource-name).
    #
    #   * `private-dns-name-options-on-launch.enable-resource-name-dns-a-record`
    #     - Indicates whether to respond to DNS queries for instance hostnames
    #     with DNS A records.
    #
    #   * `private-dns-name-options-on-launch.enable-resource-name-dns-aaaa-record`
    #     - Indicates whether to respond to DNS queries for instance hostnames
    #     with DNS AAAA records.
    #
    #   * `state` - The state of the subnet (`pending` \| `available`).
    #
    #   * `subnet-arn` - The Amazon Resource Name (ARN) of the subnet.
    #
    #   * `subnet-id` - The ID of the subnet.
    #
    #   * `tag` - The key/value combination of a tag assigned to the resource.
    #     Use the tag key in the filter name and the tag value as the filter
    #     value. For example, to find all resources that have a tag with the
    #     key `Owner` and the value `TeamA`, specify `tag:Owner` for the
    #     filter name and `TeamA` for the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. Use this
    #     filter to find all resources assigned a tag with a specific key,
    #     regardless of the tag value.
    #
    #   * `vpc-id` - The ID of the VPC for the subnet.
    # @option options [Array<String>] :subnet_ids
    #   The IDs of the subnets.
    #
    #   Default: Describes all your subnets.
    # @option options [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    # @return [Subnet::Collection]
    def subnets(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "vpc-id",
          values: [@id]
        }])
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_subnets(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.subnets.each do |s|
            batch << Subnet.new(
              id: s.subnet_id,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Subnet::Collection.new(batches)
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

    class Collection < Aws::Resources::Collection; end
  end
end
