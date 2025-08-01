# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFormation

  # This class provides a resource oriented interface for CloudFormation.
  # To create a resource object:
  #
  #     resource = Aws::CloudFormation::Resource.new(region: 'us-west-2')
  #
  # You can supply a client object with custom configuration that will be used for all resource operations.
  # If you do not pass `:client`, a default client will be constructed.
  #
  #     client = Aws::CloudFormation::Client.new(region: 'us-west-2')
  #     resource = Aws::CloudFormation::Resource.new(client: client)
  #
  class Resource

    # @param options ({})
    # @option options [Client] :client
    def initialize(options = {})
      @client = options[:client] || Client.new(options)
    end

    # @return [Client]
    def client
      @client
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   stack = cloud_formation.create_stack({
    #     stack_name: "StackName", # required
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
    # @option options [required, String] :stack_name
    #   The name that's associated with the stack. The name must be unique in
    #   the Region in which you are creating the stack.
    #
    #   <note markdown="1"> A stack name can contain only alphanumeric characters (case sensitive)
    #   and hyphens. It must start with an alphabetical character and can't
    #   be longer than 128 characters.
    #
    #    </note>
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
    # @return [Stack]
    def create_stack(options = {})
      Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.create_stack(options)
      end
      Stack.new(
        name: options[:stack_name],
        client: @client
      )
    end

    # @!group Associations

    # @param [String] id
    # @return [Event]
    def event(id)
      Event.new(
        id: id,
        client: @client
      )
    end

    # @param [String] name
    # @return [Stack]
    def stack(name)
      Stack.new(
        name: name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   stacks = cloud_formation.stacks({
    #     stack_name: "StackName",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :stack_name
    #   <note markdown="1"> If you don't pass a parameter to `StackName`, the API returns a
    #   response that describes all resources in the account, which can impact
    #   performance. This requires `ListStacks` and `DescribeStacks`
    #   permissions.
    #
    #    Consider using the ListStacks API if you're not passing a parameter
    #   to `StackName`.
    #
    #    The IAM policy below can be added to IAM policies when you want to
    #   limit resource-level permissions and avoid returning a response when
    #   no parameter is sent in the request:
    #
    #    \{ "Version": "2012-10-17", "Statement": \[\{ "Effect":
    #   "Deny", "Action": "cloudformation:DescribeStacks",
    #   "NotResource": "arn:aws:cloudformation:*:*:stack/*/*" }\] }
    #
    #    </note>
    #
    #   The name or the unique stack ID that's associated with the stack,
    #   which aren't always interchangeable:
    #
    #   * Running stacks: You can specify either the stack's name or its
    #     unique stack ID.
    #
    #   * Deleted stacks: You must specify the unique stack ID.
    # @return [Stack::Collection]
    def stacks(options = {})
      batches = Enumerator.new do |y|
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.describe_stacks(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.stacks.each do |s|
            batch << Stack.new(
              name: s.stack_name,
              data: s,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Stack::Collection.new(batches)
    end

  end
end
