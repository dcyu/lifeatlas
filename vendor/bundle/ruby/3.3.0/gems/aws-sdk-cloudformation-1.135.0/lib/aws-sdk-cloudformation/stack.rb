# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFormation

  class Stack

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
    alias :stack_name :name

    # Unique identifier of the stack.
    # @return [String]
    def stack_id
      data[:stack_id]
    end

    # The unique ID of the change set.
    # @return [String]
    def change_set_id
      data[:change_set_id]
    end

    # A user-defined description associated with the stack.
    # @return [String]
    def description
      data[:description]
    end

    # A list of `Parameter` structures.
    # @return [Array<Types::Parameter>]
    def parameters
      data[:parameters]
    end

    # The time at which the stack was created.
    # @return [Time]
    def creation_time
      data[:creation_time]
    end

    # The time the stack was deleted.
    # @return [Time]
    def deletion_time
      data[:deletion_time]
    end

    # The time the stack was last updated. This field will only be returned
    # if the stack has been updated at least once.
    # @return [Time]
    def last_updated_time
      data[:last_updated_time]
    end

    # The rollback triggers for CloudFormation to monitor during stack
    # creation and updating operations, and for the specified monitoring
    # period afterwards.
    # @return [Types::RollbackConfiguration]
    def rollback_configuration
      data[:rollback_configuration]
    end

    # Current status of the stack.
    # @return [String]
    def stack_status
      data[:stack_status]
    end

    # Success/failure message associated with the stack status.
    # @return [String]
    def stack_status_reason
      data[:stack_status_reason]
    end

    # Boolean to enable or disable rollback on stack creation failures:
    #
    # * `true`: disable rollback.
    #
    # * `false`: enable rollback.
    # @return [Boolean]
    def disable_rollback
      data[:disable_rollback]
    end

    # Amazon SNS topic Amazon Resource Names (ARNs) to which stack related
    # events are published.
    # @return [Array<String>]
    def notification_arns
      data[:notification_arns]
    end

    # The amount of time within which stack creation should complete.
    # @return [Integer]
    def timeout_in_minutes
      data[:timeout_in_minutes]
    end

    # The capabilities allowed in the stack.
    # @return [Array<String>]
    def capabilities
      data[:capabilities]
    end

    # A list of output structures.
    # @return [Array<Types::Output>]
    def outputs
      data[:outputs]
    end

    # The Amazon Resource Name (ARN) of an IAM role that's associated with
    # the stack. During a stack operation, CloudFormation uses this role's
    # credentials to make calls on your behalf.
    # @return [String]
    def role_arn
      data[:role_arn]
    end

    # A list of `Tag`s that specify information about the stack.
    # @return [Array<Types::Tag>]
    def tags
      data[:tags]
    end

    # Whether termination protection is enabled for the stack.
    #
    # For [nested stacks][1], termination protection is set on the root
    # stack and can't be changed directly on the nested stack. For more
    # information, see [Protect a CloudFormation stack from being
    # deleted][2] in the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    # [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    # @return [Boolean]
    def enable_termination_protection
      data[:enable_termination_protection]
    end

    # For nested stacks, the stack ID of the direct parent of this stack.
    # For the first level of nested stacks, the root stack is also the
    # parent stack.
    #
    # For more information, see [Nested stacks][1] in the *CloudFormation
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    # @return [String]
    def parent_id
      data[:parent_id]
    end

    # For nested stacks, the stack ID of the top-level stack to which the
    # nested stack ultimately belongs.
    #
    # For more information, see [Nested stacks][1] in the *CloudFormation
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    # @return [String]
    def root_id
      data[:root_id]
    end

    # Information about whether a stack's actual configuration differs, or
    # has *drifted*, from its expected configuration, as defined in the
    # stack template and any values specified as template parameters. For
    # more information, see [Detect unmanaged configuration changes to
    # stacks and resources with drift detection][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
    # @return [Types::StackDriftInformation]
    def drift_information
      data[:drift_information]
    end

    # When set to `true`, newly created resources are deleted when the
    # operation rolls back. This includes newly created resources marked
    # with a deletion policy of `Retain`.
    #
    # Default: `false`
    # @return [Boolean]
    def retain_except_on_create
      data[:retain_except_on_create]
    end

    # Specifies the deletion mode for the stack. Possible values are:
    #
    # * `STANDARD` - Use the standard behavior. Specifying this value is the
    #   same as not specifying this parameter.
    #
    # * `FORCE_DELETE_STACK` - Delete the stack if it's stuck in a
    #   `DELETE_FAILED` state due to resource deletion failure.
    # @return [String]
    def deletion_mode
      data[:deletion_mode]
    end

    # The detailed status of the resource or stack. If
    # `CONFIGURATION_COMPLETE` is present, the resource or resource
    # configuration phase has completed and the stabilization of the
    # resources is in progress. The stack sets `CONFIGURATION_COMPLETE` when
    # all of the resources in the stack have reached that event. For more
    # information, see [Understand CloudFormation stack creation events][1]
    # in the *CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stack-resource-configuration-complete.html
    # @return [String]
    def detailed_status
      data[:detailed_status]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Stack}.
    # Returns `self` making it possible to chain methods.
    #
    #     stack.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.describe_stacks(stack_name: @name)
      end
      @data = resp.stacks[0]
      self
    end
    alias :reload :load

    # @return [Types::Stack]
    #   Returns the data for this {Stack}. Calls
    #   {Client#describe_stacks} if {#data_loaded?} is `false`.
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
    #   Returns `true` if the Stack exists.
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
    # @option options [Integer] :max_attempts (20)
    # @option options [Float] :delay (5)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [Stack]
    def wait_until_exists(options = {}, &block)
      options, params = separate_params_and_options(options)
      waiter = Waiters::StackExists.new(options)
      yield_waiter_and_warn(waiter, &block) if block_given?
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        waiter.wait(params.merge(stack_name: @name))
      end
      Stack.new({
        name: @name,
        client: @client
      })
    end

    # @deprecated Use [Aws::CloudFormation::Client] #wait_until instead
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
    #   stack.cancel_update({
    #     client_request_token: "ClientRequestToken",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :client_request_token
    #   A unique identifier for this `CancelUpdateStack` request. Specify this
    #   token if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to cancel an update on a stack with the same
    #   name. You might retry `CancelUpdateStack` requests to ensure that
    #   CloudFormation successfully received them.
    # @return [EmptyStructure]
    def cancel_update(options = {})
      options = options.merge(stack_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.cancel_update_stack(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   stack.create({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     disable_rollback: false,
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     timeout_in_minutes: 1,
    #     notification_arns: ["NotificationARN"],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     on_failure: "DO_NOTHING", # accepts DO_NOTHING, ROLLBACK, DELETE
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     enable_termination_protection: false,
    #     retain_except_on_create: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :template_body
    #   Structure that contains the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes.
    #
    #   Conditional: You must specify either `TemplateBody` or `TemplateURL`,
    #   but not both.
    # @option options [String] :template_url
    #   The URL of a file that contains the template body. The URL must point
    #   to a template (max size: 1 MB) that's located in an Amazon S3 bucket
    #   or a Systems Manager document. The location for an Amazon S3 bucket
    #   must start with `https://`. URLs from S3 static websites are not
    #   supported.
    #
    #   Conditional: You must specify either the `TemplateBody` or the
    #   `TemplateURL` parameter, but not both.
    # @option options [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    # @option options [Boolean] :disable_rollback
    #   Set to `true` to disable rollback of the stack if stack creation
    #   failed. You can specify either `DisableRollback` or `OnFailure`, but
    #   not both.
    #
    #   Default: `false`
    # @option options [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    # @option options [Integer] :timeout_in_minutes
    #   The amount of time that can pass before the stack status becomes
    #   `CREATE_FAILED`; if `DisableRollback` is not set or is set to `false`,
    #   the stack will be rolled back.
    # @option options [Array<String>] :notification_arns
    #   The Amazon SNS topic ARNs to publish stack related events. You can
    #   find your Amazon SNS topic ARNs using the Amazon SNS console or your
    #   Command Line Interface (CLI).
    # @option options [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for CloudFormation to
    #   create the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account; for example, by
    #     creating new IAM users. For those stacks, you must explicitly
    #     acknowledge this by specifying one of these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, CloudFormation
    #       returns an `InsufficientCapabilities` error.
    #     If your stack template contains these resources, we recommend that
    #     you review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [AWS::IAM::AccessKey][1]
    #
    #     * [AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::ManagedPolicy][4]
    #
    #     * [AWS::IAM::Policy][5]
    #
    #     * [AWS::IAM::Role][6]
    #
    #     * [AWS::IAM::User][7]
    #
    #     * [AWS::IAM::UserToGroupAddition][8]
    #     For more information, see [Acknowledging IAM resources in
    #     CloudFormation templates][9].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set from
    #     the processed template, so that they can review the changes
    #     resulting from the macros before actually creating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     create a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][10]
    #     and [AWS::Serverless][11] transforms, which are macros hosted by
    #     CloudFormation.
    #
    #     If you want to create a stack from a stack template that contains
    #     macros *and* nested stacks, you must create the stack directly from
    #     the template using this capability.
    #
    #     You should only create stacks directly from a stack template that
    #     contains macros if you know what processing the macro performs.
    #
    #      Each macro relies on an underlying Lambda service function for
    #     processing stack templates. Be aware that the Lambda function owner
    #     can update the function operation without CloudFormation being
    #     notified.
    #
    #     For more information, see [Perform custom processing on
    #     CloudFormation templates with template macros][12].
    #
    #   <note markdown="1"> Only one of the `Capabilities` and `ResourceType` parameters can be
    #   specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html
    #   [8]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html
    #   [9]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities
    #   [10]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html
    #   [11]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [12]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    # @option options [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with for
    #   this create stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
    #   or `Custom::MyCustomInstance`. Use the following syntax to describe
    #   template resource types: `AWS::*` (for all Amazon Web Services
    #   resources), `Custom::*` (for all custom resources),
    #   `Custom::logical_ID ` (for a specific custom resource),
    #   `AWS::service_name::*` (for all resources of a particular Amazon Web
    #   Services service), and `AWS::service_name::resource_logical_ID ` (for
    #   a specific Amazon Web Services resource).
    #
    #   If the list of resource types doesn't include a resource that you're
    #   creating, the stack creation fails. By default, CloudFormation grants
    #   permissions to all resource types. IAM uses this parameter for
    #   CloudFormation-specific condition keys in IAM policies. For more
    #   information, see [Control access with Identity and Access
    #   Management][1].
    #
    #   <note markdown="1"> Only one of the `Capabilities` and `ResourceType` parameters can be
    #   specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html
    # @option options [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that CloudFormation
    #   assumes to create the stack. CloudFormation uses the role's
    #   credentials to make calls on your behalf. CloudFormation always uses
    #   this role for all future operations on the stack. Provided that users
    #   have permission to operate on the stack, CloudFormation uses this role
    #   even if the users don't have permission to pass it. Ensure that the
    #   role grants least privilege.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that's generated from your
    #   user credentials.
    # @option options [String] :on_failure
    #   Determines what action will be taken if stack creation fails. This
    #   must be one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`. You can specify
    #   either `OnFailure` or `DisableRollback`, but not both.
    #
    #   Default: `ROLLBACK`
    # @option options [String] :stack_policy_body
    #   Structure that contains the stack policy body. For more information,
    #   see [Prevent updates to stack resources][1] in the *CloudFormation
    #   User Guide*. You can specify either the `StackPolicyBody` or the
    #   `StackPolicyURL` parameter, but not both.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html
    # @option options [String] :stack_policy_url
    #   Location of a file that contains the stack policy. The URL must point
    #   to a policy (maximum size: 16 KB) located in an S3 bucket in the same
    #   Region as the stack. The location for an Amazon S3 bucket must start
    #   with `https://`. URLs from S3 static websites are not supported.
    #
    #   You can specify either the `StackPolicyBody` or the `StackPolicyURL`
    #   parameter, but not both.
    # @option options [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. CloudFormation also
    #   propagates these tags to the resources created in the stack. A maximum
    #   number of 50 tags can be specified.
    # @option options [String] :client_request_token
    #   A unique identifier for this `CreateStack` request. Specify this token
    #   if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to create a stack with the same name. You might
    #   retry `CreateStack` requests to ensure that CloudFormation
    #   successfully received them.
    #
    #   All events initiated by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    # @option options [Boolean] :enable_termination_protection
    #   Whether to enable termination protection on the specified stack. If a
    #   user attempts to delete a stack with termination protection enabled,
    #   the operation fails and the stack remains unchanged. For more
    #   information, see [Protect CloudFormation stacks from being deleted][1]
    #   in the *CloudFormation User Guide*. Termination protection is
    #   deactivated on stacks by default.
    #
    #   For [nested stacks][2], termination protection is set on the root
    #   stack and can't be changed directly on the nested stack.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html
    # @option options [Boolean] :retain_except_on_create
    #   When set to `true`, newly created resources are deleted when the
    #   operation rolls back. This includes newly created resources marked
    #   with a deletion policy of `Retain`.
    #
    #   Default: `false`
    # @return [Types::CreateStackOutput]
    def create(options = {})
      options = options.merge(stack_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_stack(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   stack.delete({
    #     retain_resources: ["LogicalResourceId"],
    #     role_arn: "RoleARN",
    #     client_request_token: "ClientRequestToken",
    #     deletion_mode: "STANDARD", # accepts STANDARD, FORCE_DELETE_STACK
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :retain_resources
    #   For stacks in the `DELETE_FAILED` state, a list of resource logical
    #   IDs that are associated with the resources you want to retain. During
    #   deletion, CloudFormation deletes the stack but doesn't delete the
    #   retained resources.
    #
    #   Retaining resources is useful when you can't delete a resource, such
    #   as a non-empty S3 bucket, but you want to delete the stack.
    # @option options [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that CloudFormation
    #   assumes to delete the stack. CloudFormation uses the role's
    #   credentials to make calls on your behalf.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that's generated from your
    #   user credentials.
    # @option options [String] :client_request_token
    #   A unique identifier for this `DeleteStack` request. Specify this token
    #   if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to delete a stack with the same name. You might
    #   retry `DeleteStack` requests to ensure that CloudFormation
    #   successfully received them.
    #
    #   All events initiated by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    # @option options [String] :deletion_mode
    #   Specifies the deletion mode for the stack. Possible values are:
    #
    #   * `STANDARD` - Use the standard behavior. Specifying this value is the
    #     same as not specifying this parameter.
    #
    #   * `FORCE_DELETE_STACK` - Delete the stack if it's stuck in a
    #     `DELETE_FAILED` state due to resource deletion failure.
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(stack_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_stack(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   stack.update({
    #     template_body: "TemplateBody",
    #     template_url: "TemplateURL",
    #     use_previous_template: false,
    #     stack_policy_during_update_body: "StackPolicyDuringUpdateBody",
    #     stack_policy_during_update_url: "StackPolicyDuringUpdateURL",
    #     parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue",
    #         use_previous_value: false,
    #         resolved_value: "ParameterValue",
    #       },
    #     ],
    #     capabilities: ["CAPABILITY_IAM"], # accepts CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND
    #     resource_types: ["ResourceType"],
    #     role_arn: "RoleARN",
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: "Arn", # required
    #           type: "Type", # required
    #         },
    #       ],
    #       monitoring_time_in_minutes: 1,
    #     },
    #     stack_policy_body: "StackPolicyBody",
    #     stack_policy_url: "StackPolicyURL",
    #     notification_arns: ["NotificationARN"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     disable_rollback: false,
    #     client_request_token: "ClientRequestToken",
    #     retain_except_on_create: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :template_body
    #   Structure that contains the template body with a minimum length of 1
    #   byte and a maximum length of 51,200 bytes.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    # @option options [String] :template_url
    #   The URL of a file that contains the template body. The URL must point
    #   to a template that's located in an Amazon S3 bucket or a Systems
    #   Manager document. The location for an Amazon S3 bucket must start with
    #   `https://`.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    # @option options [Boolean] :use_previous_template
    #   Reuse the existing template that is associated with the stack that you
    #   are updating.
    #
    #   Conditional: You must specify only one of the following parameters:
    #   `TemplateBody`, `TemplateURL`, or set the `UsePreviousTemplate` to
    #   `true`.
    # @option options [String] :stack_policy_during_update_body
    #   Structure that contains the temporary overriding stack policy body.
    #   You can specify either the `StackPolicyDuringUpdateBody` or the
    #   `StackPolicyDuringUpdateURL` parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you don't specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    # @option options [String] :stack_policy_during_update_url
    #   Location of a file that contains the temporary overriding stack
    #   policy. The URL must point to a policy (max size: 16KB) located in an
    #   S3 bucket in the same Region as the stack. The location for an Amazon
    #   S3 bucket must start with `https://`. URLs from S3 static websites are
    #   not supported.
    #
    #   You can specify either the `StackPolicyDuringUpdateBody` or the
    #   `StackPolicyDuringUpdateURL` parameter, but not both.
    #
    #   If you want to update protected resources, specify a temporary
    #   overriding stack policy during this update. If you don't specify a
    #   stack policy, the current policy that is associated with the stack
    #   will be used.
    # @option options [Array<Types::Parameter>] :parameters
    #   A list of `Parameter` structures that specify input parameters for the
    #   stack. For more information, see the [Parameter][1] data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html
    # @option options [Array<String>] :capabilities
    #   In some cases, you must explicitly acknowledge that your stack
    #   template contains certain capabilities in order for CloudFormation to
    #   update the stack.
    #
    #   * `CAPABILITY_IAM` and `CAPABILITY_NAMED_IAM`
    #
    #     Some stack templates might include resources that can affect
    #     permissions in your Amazon Web Services account, for example, by
    #     creating new IAM users. For those stacks, you must explicitly
    #     acknowledge this by specifying one of these capabilities.
    #
    #     The following IAM resources require you to specify either the
    #     `CAPABILITY_IAM` or `CAPABILITY_NAMED_IAM` capability.
    #
    #     * If you have IAM resources, you can specify either capability.
    #
    #     * If you have IAM resources with custom names, you *must* specify
    #       `CAPABILITY_NAMED_IAM`.
    #
    #     * If you don't specify either of these capabilities, CloudFormation
    #       returns an `InsufficientCapabilities` error.
    #     If your stack template contains these resources, we suggest that you
    #     review all permissions associated with them and edit their
    #     permissions if necessary.
    #
    #     * [ AWS::IAM::AccessKey][1]
    #
    #     * [ AWS::IAM::Group][2]
    #
    #     * [AWS::IAM::InstanceProfile][3]
    #
    #     * [ AWS::IAM::ManagedPolicy][4]
    #
    #     * [AWS::IAM::Policy][5]
    #
    #     * [ AWS::IAM::Role][6]
    #
    #     * [ AWS::IAM::User][7]
    #
    #     * [AWS::IAM::UserToGroupAddition][8]
    #     For more information, see [Acknowledging IAM resources in
    #     CloudFormation templates][9].
    #
    #   * `CAPABILITY_AUTO_EXPAND`
    #
    #     Some template contain macros. Macros perform custom processing on
    #     templates; this can include simple actions like find-and-replace
    #     operations, all the way to extensive transformations of entire
    #     templates. Because of this, users typically create a change set from
    #     the processed template, so that they can review the changes
    #     resulting from the macros before actually updating the stack. If
    #     your stack template contains one or more macros, and you choose to
    #     update a stack directly from the processed template, without first
    #     reviewing the resulting changes in a change set, you must
    #     acknowledge this capability. This includes the [AWS::Include][10]
    #     and [AWS::Serverless][11] transforms, which are macros hosted by
    #     CloudFormation.
    #
    #     If you want to update a stack from a stack template that contains
    #     macros *and* nested stacks, you must update the stack directly from
    #     the template using this capability.
    #
    #     You should only update stacks directly from a stack template that
    #     contains macros if you know what processing the macro performs.
    #
    #      Each macro relies on an underlying Lambda service function for
    #     processing stack templates. Be aware that the Lambda function owner
    #     can update the function operation without CloudFormation being
    #     notified.
    #
    #     For more information, see [Perform custom processing on
    #     CloudFormation templates with template macros][12].
    #
    #   <note markdown="1"> Only one of the `Capabilities` and `ResourceType` parameters can be
    #   specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-accesskey.html
    #   [2]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-group.html
    #   [3]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-instanceprofile.html
    #   [4]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-managedpolicy.html
    #   [5]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-policy.html
    #   [6]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-role.html
    #   [7]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-user.html
    #   [8]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-iam-usertogroupaddition.html
    #   [9]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html#using-iam-capabilities
    #   [10]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-include.html
    #   [11]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html
    #   [12]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html
    # @option options [Array<String>] :resource_types
    #   The template resource types that you have permissions to work with for
    #   this update stack action, such as `AWS::EC2::Instance`, `AWS::EC2::*`,
    #   or `Custom::MyCustomInstance`.
    #
    #   If the list of resource types doesn't include a resource that you're
    #   updating, the stack update fails. By default, CloudFormation grants
    #   permissions to all resource types. IAM uses this parameter for
    #   CloudFormation-specific condition keys in IAM policies. For more
    #   information, see [Control access with Identity and Access
    #   Management][1].
    #
    #   <note markdown="1"> Only one of the `Capabilities` and `ResourceType` parameters can be
    #   specified.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/control-access-with-iam.html
    # @option options [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that CloudFormation
    #   assumes to update the stack. CloudFormation uses the role's
    #   credentials to make calls on your behalf. CloudFormation always uses
    #   this role for all future operations on the stack. Provided that users
    #   have permission to operate on the stack, CloudFormation uses this role
    #   even if the users don't have permission to pass it. Ensure that the
    #   role grants least privilege.
    #
    #   If you don't specify a value, CloudFormation uses the role that was
    #   previously associated with the stack. If no role is available,
    #   CloudFormation uses a temporary session that is generated from your
    #   user credentials.
    # @option options [Types::RollbackConfiguration] :rollback_configuration
    #   The rollback triggers for CloudFormation to monitor during stack
    #   creation and updating operations, and for the specified monitoring
    #   period afterwards.
    # @option options [String] :stack_policy_body
    #   Structure that contains a new stack policy body. You can specify
    #   either the `StackPolicyBody` or the `StackPolicyURL` parameter, but
    #   not both.
    #
    #   You might update the stack policy, for example, in order to protect a
    #   new resource that you created during a stack update. If you don't
    #   specify a stack policy, the current policy that is associated with the
    #   stack is unchanged.
    # @option options [String] :stack_policy_url
    #   Location of a file that contains the updated stack policy. The URL
    #   must point to a policy (max size: 16KB) located in an S3 bucket in the
    #   same Region as the stack. The location for an Amazon S3 bucket must
    #   start with `https://`. URLs from S3 static websites are not supported.
    #
    #   You can specify either the `StackPolicyBody` or the `StackPolicyURL`
    #   parameter, but not both.
    #
    #   You might update the stack policy, for example, in order to protect a
    #   new resource that you created during a stack update. If you don't
    #   specify a stack policy, the current policy that is associated with the
    #   stack is unchanged.
    # @option options [Array<String>] :notification_arns
    #   Amazon Simple Notification Service topic Amazon Resource Names (ARNs)
    #   that CloudFormation associates with the stack. Specify an empty list
    #   to remove all notification topics.
    # @option options [Array<Types::Tag>] :tags
    #   Key-value pairs to associate with this stack. CloudFormation also
    #   propagates these tags to supported resources in the stack. You can
    #   specify a maximum number of 50 tags.
    #
    #   If you don't specify this parameter, CloudFormation doesn't modify
    #   the stack's tags. If you specify an empty value, CloudFormation
    #   removes all associated tags.
    # @option options [Boolean] :disable_rollback
    #   Preserve the state of previously provisioned resources when an
    #   operation fails.
    #
    #   Default: `False`
    # @option options [String] :client_request_token
    #   A unique identifier for this `UpdateStack` request. Specify this token
    #   if you plan to retry requests so that CloudFormation knows that
    #   you're not attempting to update a stack with the same name. You might
    #   retry `UpdateStack` requests to ensure that CloudFormation
    #   successfully received them.
    #
    #   All events triggered by a given stack operation are assigned the same
    #   client request token, which you can use to track operations. For
    #   example, if you execute a `CreateStack` operation with the token
    #   `token1`, then all the `StackEvents` generated by that operation will
    #   have `ClientRequestToken` set as `token1`.
    #
    #   In the console, stack operations display the client request token on
    #   the Events tab. Stack operations that are initiated from the console
    #   use the token format *Console-StackOperation-ID*, which helps you
    #   easily identify the stack operation . For example, if you create a
    #   stack using the console, each stack event would be assigned the same
    #   token in the following format:
    #   `Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002`.
    # @option options [Boolean] :retain_except_on_create
    #   When set to `true`, newly created resources are deleted when the
    #   operation rolls back. This includes newly created resources marked
    #   with a deletion policy of `Retain`.
    #
    #   Default: `false`
    # @return [Types::UpdateStackOutput]
    def update(options = {})
      options = options.merge(stack_name: @name)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.update_stack(options)
      end
      resp.data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   stack.events()
    # @param [Hash] options ({})
    # @return [Event::Collection]
    def events(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(stack_name: @name)
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_stack_events(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.stack_events.each do |s|
            batch << Event.new(
              id: s.event_id,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Event::Collection.new(batches)
    end

    # @param [String] logical_id
    # @return [StackResource]
    def resource(logical_id)
      StackResource.new(
        stack_name: @name,
        logical_id: logical_id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   stack.resource_summaries()
    # @param [Hash] options ({})
    # @return [StackResourceSummary::Collection]
    def resource_summaries(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(stack_name: @name)
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.list_stack_resources(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.stack_resource_summaries.each do |s|
            batch << StackResourceSummary.new(
              logical_id: s.logical_resource_id,
              stack_name: options[:stack_name],
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      StackResourceSummary::Collection.new(batches)
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
