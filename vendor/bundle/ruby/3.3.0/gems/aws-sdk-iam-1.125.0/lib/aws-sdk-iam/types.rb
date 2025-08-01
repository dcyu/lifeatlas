# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  module Types

    # An object that contains details about when a principal in the reported
    # Organizations entity last attempted to access an Amazon Web Services
    # service. A principal can be an IAM user, an IAM role, or the Amazon
    # Web Services account root user within the reported Organizations
    # entity.
    #
    # This data type is a response element in the
    # [GetOrganizationsAccessReport][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html
    #
    # @!attribute [rw] service_name
    #   The name of the service in which access was attempted.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the service in which access was attempted.
    #
    #   To learn the service namespace of a service, see [Actions,
    #   resources, and condition keys for Amazon Web Services services][1]
    #   in the *Service Authorization Reference*. Choose the name of the
    #   service to view details for that service. In the first paragraph,
    #   find the service prefix. For example, `(service prefix: a4b)`. For
    #   more information about service namespaces, see [Amazon Web Services
    #   service namespaces][2] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Region where the last service access attempt occurred.
    #
    #   This field is null if no principals in the reported Organizations
    #   entity attempted to access the service within the [tracking
    #   period][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   @return [String]
    #
    # @!attribute [rw] entity_path
    #   The path of the Organizations entity (root, organizational unit, or
    #   account) from which an authenticated principal last attempted to
    #   access the service. Amazon Web Services does not report
    #   unauthenticated requests.
    #
    #   This field is null if no principals (IAM users, IAM roles, or root
    #   user) in the reported Organizations entity attempted to access the
    #   service within the [tracking period][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   @return [String]
    #
    # @!attribute [rw] last_authenticated_time
    #   The date and time, in [ISO 8601 date-time format][1], when an
    #   authenticated principal most recently attempted to access the
    #   service. Amazon Web Services does not report unauthenticated
    #   requests.
    #
    #   This field is null if no principals in the reported Organizations
    #   entity attempted to access the service within the [tracking
    #   period][2].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   @return [Time]
    #
    # @!attribute [rw] total_authenticated_entities
    #   The number of accounts with authenticated principals (root user, IAM
    #   users, and IAM roles) that attempted to access the service in the
    #   tracking period.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AccessDetail AWS API Documentation
    #
    class AccessDetail < Struct.new(
      :service_name,
      :service_namespace,
      :region,
      :entity_path,
      :last_authenticated_time,
      :total_authenticated_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an Amazon Web Services access key.
    #
    # This data type is used as a response element in the
    # [CreateAccessKey][1] and [ListAccessKeys][2] operations.
    #
    # <note markdown="1"> The `SecretAccessKey` value is returned only in response to
    # [CreateAccessKey][1]. You can get a secret access key only when you
    # first create an access key; you cannot recover the secret access key
    # later. If you lose a secret access key, you must create a new access
    # key.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateAccessKey.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAccessKeys.html
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user that the access key is associated with.
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The ID for this access key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the access key. `Active` means that the key is valid
    #   for API calls, while `Inactive` means it is not.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret key used to sign requests.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date when the access key was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AccessKey AWS API Documentation
    #
    class AccessKey < Struct.new(
      :user_name,
      :access_key_id,
      :status,
      :secret_access_key,
      :create_date)
      SENSITIVE = [:secret_access_key]
      include Aws::Structure
    end

    # Contains information about the last time an Amazon Web Services access
    # key was used since IAM began tracking this information on April 22,
    # 2015.
    #
    # This data type is used as a response element in the
    # [GetAccessKeyLastUsed][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccessKeyLastUsed.html
    #
    # @!attribute [rw] last_used_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   access key was most recently used. This field is null in the
    #   following situations:
    #
    #   * The user does not have an access key.
    #
    #   * An access key exists but has not been used since IAM began
    #     tracking this information.
    #
    #   * There is no sign-in data associated with the user.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] service_name
    #   The name of the Amazon Web Services service with which this access
    #   key was most recently used. The value of this field is "N/A" in
    #   the following situations:
    #
    #   * The user does not have an access key.
    #
    #   * An access key exists but has not been used since IAM started
    #     tracking this information.
    #
    #   * There is no sign-in data associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region where this access key was most
    #   recently used. The value for this field is "N/A" in the following
    #   situations:
    #
    #   * The user does not have an access key.
    #
    #   * An access key exists but has not been used since IAM began
    #     tracking this information.
    #
    #   * There is no sign-in data associated with the user.
    #
    #   For more information about Amazon Web Services Regions, see [Regions
    #   and endpoints][1] in the Amazon Web Services General Reference.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AccessKeyLastUsed AWS API Documentation
    #
    class AccessKeyLastUsed < Struct.new(
      :last_used_date,
      :service_name,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an Amazon Web Services access key, without
    # its secret key.
    #
    # This data type is used as a response element in the
    # [ListAccessKeys][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAccessKeys.html
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user that the key is associated with.
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The ID for this access key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the access key. `Active` means that the key is valid
    #   for API calls; `Inactive` means it is not.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date when the access key was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AccessKeyMetadata AWS API Documentation
    #
    class AccessKeyMetadata < Struct.new(
      :user_name,
      :access_key_id,
      :status,
      :create_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the account making the request is not
    # the management account or delegated administrator account for
    # [centralized root access][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AccountNotManagementOrDelegatedAdministratorException AWS API Documentation
    #
    class AccountNotManagementOrDelegatedAdministratorException < Aws::EmptyStructure; end

    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC)
    #   provider resource to add the client ID to. You can get a list of
    #   OIDC provider ARNs by using the [ListOpenIDConnectProviders][1]
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID (also known as audience) to add to the IAM OpenID
    #   Connect provider resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddClientIDToOpenIDConnectProviderRequest AWS API Documentation
    #
    class AddClientIDToOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile to update.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the role to add.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddRoleToInstanceProfileRequest AWS API Documentation
    #
    class AddRoleToInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group to update.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user to add.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddUserToGroupRequest AWS API Documentation
    #
    class AddUserToGroupRequest < Struct.new(
      :group_name,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name (friendly name, not ARN) of the group to attach the policy
    #   to.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachGroupPolicyRequest AWS API Documentation
    #
    class AttachGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) of the role to attach the policy
    #   to.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachRolePolicyRequest AWS API Documentation
    #
    class AttachRolePolicyRequest < Struct.new(
      :role_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) of the IAM user to attach the
    #   policy to.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachUserPolicyRequest AWS API Documentation
    #
    class AttachUserPolicyRequest < Struct.new(
      :user_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an attached permissions boundary.
    #
    # An attached permissions boundary is a managed policy that has been
    # attached to a user or role to set the permissions boundary.
    #
    # For more information about permissions boundaries, see [Permissions
    # boundaries for IAM identities ][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #
    # @!attribute [rw] permissions_boundary_type
    #   The permissions boundary usage type that indicates what type of IAM
    #   resource is used as the permissions boundary for an entity. This
    #   data type can only have a value of `Policy`.
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary_arn
    #   The ARN of the policy used to set the permissions boundary for the
    #   user or role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachedPermissionsBoundary AWS API Documentation
    #
    class AttachedPermissionsBoundary < Struct.new(
      :permissions_boundary_type,
      :permissions_boundary_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an attached policy.
    #
    # An attached policy is a managed policy that has been attached to a
    # user, group, or role. This data type is used as a response element in
    # the [ListAttachedGroupPolicies][1], [ListAttachedRolePolicies][2],
    # [ListAttachedUserPolicies][3], and [GetAccountAuthorizationDetails][4]
    # operations.
    #
    # For more information about managed policies, refer to [Managed
    # policies and inline policies][5] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedGroupPolicies.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedRolePolicies.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedUserPolicies.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html
    # [5]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] policy_name
    #   The friendly name of the attached policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for
    #   Amazon Web Services resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachedPolicy AWS API Documentation
    #
    class AttachedPolicy < Struct.new(
      :policy_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the account making the request is not
    # the management account for the organization.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CallerIsNotManagementAccountException AWS API Documentation
    #
    class CallerIsNotManagementAccountException < Aws::EmptyStructure; end

    # @!attribute [rw] old_password
    #   The IAM user's current password.
    #   @return [String]
    #
    # @!attribute [rw] new_password
    #   The new password. The new password must conform to the Amazon Web
    #   Services account's password policy, if one exists.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of characters. That string can include almost any printable
    #   ASCII character from the space (`\u0020`) through the end of the
    #   ASCII character range (`\u00FF`). You can also include the tab
    #   (`\u0009`), line feed (`\u000A`), and carriage return (`\u000D`)
    #   characters. Any of these characters are valid in a password.
    #   However, many tools, such as the Amazon Web Services Management
    #   Console, might restrict the ability to type certain characters
    #   because they have special meaning within that tool.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ChangePasswordRequest AWS API Documentation
    #
    class ChangePasswordRequest < Struct.new(
      :old_password,
      :new_password)
      SENSITIVE = [:old_password, :new_password]
      include Aws::Structure
    end

    # The request was rejected because multiple requests to change this
    # object were submitted simultaneously. Wait a few minutes and submit
    # your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a condition context key. It includes the
    # name of the key and specifies the value (or values, if the context key
    # supports multiple values) to use in the simulation. This information
    # is used when evaluating the `Condition` elements of the input
    # policies.
    #
    # This data type is used as an input parameter to
    # [SimulateCustomPolicy][1] and [SimulatePrincipalPolicy][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html
    #
    # @!attribute [rw] context_key_name
    #   The full name of a condition context key, including the service
    #   prefix. For example, `aws:SourceIp` or `s3:VersionId`.
    #   @return [String]
    #
    # @!attribute [rw] context_key_values
    #   The value (or values, if the condition context key supports multiple
    #   values) to provide to the simulation when the key is referenced by a
    #   `Condition` element in an input policy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] context_key_type
    #   The data type of the value (or values) specified in the
    #   `ContextKeyValues` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ContextEntry AWS API Documentation
    #
    class ContextEntry < Struct.new(
      :context_key_name,
      :context_key_values,
      :context_key_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user that the new key will belong to.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateAccessKeyRequest AWS API Documentation
    #
    class CreateAccessKeyRequest < Struct.new(
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [CreateAccessKey][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateAccessKey.html
    #
    # @!attribute [rw] access_key
    #   A structure with details about the access key.
    #   @return [Types::AccessKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateAccessKeyResponse AWS API Documentation
    #
    class CreateAccessKeyResponse < Struct.new(
      :access_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_alias
    #   The account alias to create.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of lowercase letters, digits, and dashes. You
    #   cannot start or finish with a dash, nor can you have two dashes in a
    #   row.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateAccountAliasRequest AWS API Documentation
    #
    class CreateAccountAliasRequest < Struct.new(
      :account_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path
    #   The path to the group. For more information about paths, see [IAM
    #   identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group to create. Do not include the path in this
    #   value.
    #
    #   IAM user, group, role, and policy names must be unique within the
    #   account. Names are not distinguished by case. For example, you
    #   cannot create resources named both "MyResource" and
    #   "myresource".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :path,
      :group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [CreateGroup][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateGroup.html
    #
    # @!attribute [rw] group
    #   A structure containing details about the new group.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateGroupResponse AWS API Documentation
    #
    class CreateGroupResponse < Struct.new(
      :group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile to create.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the instance profile. For more information about paths,
    #   see [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the newly created IAM
    #   instance profile. Each tag consists of a key name and an associated
    #   value. For more information about tagging, see [Tagging IAM
    #   resources][1] in the *IAM User Guide*.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   maximum number of tags, then the entire request fails and the
    #   resource is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateInstanceProfileRequest AWS API Documentation
    #
    class CreateInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :path,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [CreateInstanceProfile][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateInstanceProfile.html
    #
    # @!attribute [rw] instance_profile
    #   A structure containing details about the new instance profile.
    #   @return [Types::InstanceProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateInstanceProfileResponse AWS API Documentation
    #
    class CreateInstanceProfileResponse < Struct.new(
      :instance_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user to create a password for. The user must
    #   already exist.
    #
    #   This parameter is optional. If no user name is included, it defaults
    #   to the principal making the request. When you make this request with
    #   root user credentials, you must use an [AssumeRoot][1] session to
    #   omit the user name.
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The new password for the user.
    #
    #   This parameter must be omitted when you make the request with an
    #   [AssumeRoot][1] session. It is required in all other cases.
    #
    #   The [regex pattern][2] that is used to validate this parameter is a
    #   string of characters. That string can include almost any printable
    #   ASCII character from the space (`\u0020`) through the end of the
    #   ASCII character range (`\u00FF`). You can also include the tab
    #   (`\u0009`), line feed (`\u000A`), and carriage return (`\u000D`)
    #   characters. Any of these characters are valid in a password.
    #   However, many tools, such as the Amazon Web Services Management
    #   Console, might restrict the ability to type certain characters
    #   because they have special meaning within that tool.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] password_reset_required
    #   Specifies whether the user is required to set a new password on next
    #   sign-in.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateLoginProfileRequest AWS API Documentation
    #
    class CreateLoginProfileRequest < Struct.new(
      :user_name,
      :password,
      :password_reset_required)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the response to a successful [CreateLoginProfile][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateLoginProfile.html
    #
    # @!attribute [rw] login_profile
    #   A structure containing the user name and password create date.
    #   @return [Types::LoginProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateLoginProfileResponse AWS API Documentation
    #
    class CreateLoginProfileResponse < Struct.new(
      :login_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] url
    #   The URL of the identity provider. The URL must begin with `https://`
    #   and should correspond to the `iss` claim in the provider's OpenID
    #   Connect ID tokens. Per the OIDC standard, path components are
    #   allowed but query parameters are not. Typically the URL consists of
    #   only a hostname, like `https://server.example.org` or
    #   `https://example.com`. The URL should not contain a port number.
    #
    #   You cannot register the same provider multiple times in a single
    #   Amazon Web Services account. If you try to submit a URL that has
    #   already been used for an OpenID Connect provider in the Amazon Web
    #   Services account, you will get an error.
    #   @return [String]
    #
    # @!attribute [rw] client_id_list
    #   Provides a list of client IDs, also known as audiences. When a
    #   mobile or web app registers with an OpenID Connect provider, they
    #   establish a value that identifies the application. This is the value
    #   that's sent as the `client_id` parameter on OAuth requests.
    #
    #   You can register multiple client IDs with the same provider. For
    #   example, you might have multiple applications that use the same OIDC
    #   provider. You cannot register more than 100 client IDs with a single
    #   IAM OIDC provider.
    #
    #   There is no defined format for a client ID. The
    #   `CreateOpenIDConnectProviderRequest` operation accepts client IDs up
    #   to 255 characters long.
    #   @return [Array<String>]
    #
    # @!attribute [rw] thumbprint_list
    #   A list of server certificate thumbprints for the OpenID Connect
    #   (OIDC) identity provider's server certificates. Typically this list
    #   includes only one entry. However, IAM lets you have up to five
    #   thumbprints for an OIDC provider. This lets you maintain multiple
    #   thumbprints if the identity provider is rotating certificates.
    #
    #   This parameter is optional. If it is not included, IAM will retrieve
    #   and use the top intermediate certificate authority (CA) thumbprint
    #   of the OpenID Connect identity provider server certificate.
    #
    #   The server certificate thumbprint is the hex-encoded SHA-1 hash
    #   value of the X.509 certificate used by the domain where the OpenID
    #   Connect provider makes its keys available. It is always a
    #   40-character string.
    #
    #   For example, assume that the OIDC provider is `server.example.com`
    #   and the provider stores its keys at
    #   https://keys.server.example.com/openid-connect. In that case, the
    #   thumbprint string would be the hex-encoded SHA-1 hash value of the
    #   certificate used by `https://keys.server.example.com.`
    #
    #   For more information about obtaining the OIDC provider thumbprint,
    #   see [Obtaining the thumbprint for an OpenID Connect provider][1] in
    #   the *IAM user Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the new IAM OpenID Connect
    #   (OIDC) provider. Each tag consists of a key name and an associated
    #   value. For more information about tagging, see [Tagging IAM
    #   resources][1] in the *IAM User Guide*.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   maximum number of tags, then the entire request fails and the
    #   resource is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateOpenIDConnectProviderRequest AWS API Documentation
    #
    class CreateOpenIDConnectProviderRequest < Struct.new(
      :url,
      :client_id_list,
      :thumbprint_list,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [CreateOpenIDConnectProvider][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html
    #
    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the new IAM OpenID Connect
    #   provider that is created. For more information, see
    #   [OpenIDConnectProviderListEntry][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_OpenIDConnectProviderListEntry.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the new IAM OIDC provider. The
    #   returned list of tags is sorted by tag key. For more information
    #   about tagging, see [Tagging IAM resources][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateOpenIDConnectProviderResponse AWS API Documentation
    #
    class CreateOpenIDConnectProviderResponse < Struct.new(
      :open_id_connect_provider_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_name
    #   The friendly name of the policy.
    #
    #   IAM user, group, role, and policy names must be unique within the
    #   account. Names are not distinguished by case. For example, you
    #   cannot create resources named both "MyResource" and
    #   "myresource".
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path for the policy.
    #
    #   For more information about paths, see [IAM identifiers][1] in the
    #   *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #   <note markdown="1"> You cannot use an asterisk (*) in the path name.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON policy document that you want to use as the content for the
    #   new policy.
    #
    #   You must provide policies in JSON format in IAM. However, for
    #   CloudFormation templates formatted in YAML, you can provide the
    #   policy in JSON or YAML format. CloudFormation always converts a YAML
    #   policy to JSON format before submitting it to IAM.
    #
    #   The maximum length of the policy document that you can pass in this
    #   operation, including whitespace, is listed below. To view the
    #   maximum character counts of a managed policy with no whitespaces,
    #   see [IAM and STS character quotas][1].
    #
    #   To learn more about JSON policy grammar, see [Grammar of the IAM
    #   JSON policy language][2] in the *IAM User Guide*.
    #
    #   The [regex pattern][3] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html
    #   [3]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A friendly description of the policy.
    #
    #   Typically used to store information about the permissions defined in
    #   the policy. For example, "Grants access to production DynamoDB
    #   tables."
    #
    #   The policy description is immutable. After a value is assigned, it
    #   cannot be changed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the new IAM customer
    #   managed policy. Each tag consists of a key name and an associated
    #   value. For more information about tagging, see [Tagging IAM
    #   resources][1] in the *IAM User Guide*.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   maximum number of tags, then the entire request fails and the
    #   resource is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicyRequest AWS API Documentation
    #
    class CreatePolicyRequest < Struct.new(
      :policy_name,
      :path,
      :policy_document,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [CreatePolicy][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html
    #
    # @!attribute [rw] policy
    #   A structure containing details about the new policy.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicyResponse AWS API Documentation
    #
    class CreatePolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy to which you want
    #   to add a new version.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON policy document that you want to use as the content for
    #   this new version of the policy.
    #
    #   You must provide policies in JSON format in IAM. However, for
    #   CloudFormation templates formatted in YAML, you can provide the
    #   policy in JSON or YAML format. CloudFormation always converts a YAML
    #   policy to JSON format before submitting it to IAM.
    #
    #   The maximum length of the policy document that you can pass in this
    #   operation, including whitespace, is listed below. To view the
    #   maximum character counts of a managed policy with no whitespaces,
    #   see [IAM and STS character quotas][1].
    #
    #   The [regex pattern][2] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] set_as_default
    #   Specifies whether to set this version as the policy's default
    #   version.
    #
    #   When this parameter is `true`, the new policy version becomes the
    #   operative version. That is, it becomes the version that is in effect
    #   for the IAM users, groups, and roles that the policy is attached to.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for managed policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicyVersionRequest AWS API Documentation
    #
    class CreatePolicyVersionRequest < Struct.new(
      :policy_arn,
      :policy_document,
      :set_as_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [CreatePolicyVersion][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicyVersion.html
    #
    # @!attribute [rw] policy_version
    #   A structure containing details about the new policy version.
    #   @return [Types::PolicyVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicyVersionResponse AWS API Documentation
    #
    class CreatePolicyVersionResponse < Struct.new(
      :policy_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path
    #   The path to the role. For more information about paths, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the role to create.
    #
    #   IAM user, group, role, and policy names must be unique within the
    #   account. Names are not distinguished by case. For example, you
    #   cannot create resources named both "MyResource" and
    #   "myresource".
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] assume_role_policy_document
    #   The trust relationship policy document that grants an entity
    #   permission to assume the role.
    #
    #   In IAM, you must provide a JSON policy that has been converted to a
    #   string. However, for CloudFormation templates formatted in YAML, you
    #   can provide the policy in JSON or YAML format. CloudFormation always
    #   converts a YAML policy to JSON format before submitting it to IAM.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #   Upon success, the response includes the same trust policy in JSON
    #   format.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the role.
    #   @return [String]
    #
    # @!attribute [rw] max_session_duration
    #   The maximum session duration (in seconds) that you want to set for
    #   the specified role. If you do not specify a value for this setting,
    #   the default value of one hour is applied. This setting can have a
    #   value from 1 hour to 12 hours.
    #
    #   Anyone who assumes the role from the CLI or API can use the
    #   `DurationSeconds` API parameter or the `duration-seconds` CLI
    #   parameter to request a longer session. The `MaxSessionDuration`
    #   setting determines the maximum duration that can be requested using
    #   the `DurationSeconds` parameter. If users don't specify a value for
    #   the `DurationSeconds` parameter, their security credentials are
    #   valid for one hour by default. This applies when you use the
    #   `AssumeRole*` API operations or the `assume-role*` CLI operations
    #   but does not apply when you use those operations to create a console
    #   URL. For more information, see [Using IAM roles][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html
    #   @return [Integer]
    #
    # @!attribute [rw] permissions_boundary
    #   The ARN of the managed policy that is used to set the permissions
    #   boundary for the role.
    #
    #   A permissions boundary policy defines the maximum permissions that
    #   identity-based policies can grant to an entity, but does not grant
    #   permissions. Permissions boundaries do not define the maximum
    #   permissions that a resource-based policy can grant to an entity. To
    #   learn more, see [Permissions boundaries for IAM entities][1] in the
    #   *IAM User Guide*.
    #
    #   For more information about policy types, see [Policy types ][2] in
    #   the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the new role. Each tag
    #   consists of a key name and an associated value. For more information
    #   about tagging, see [Tagging IAM resources][1] in the *IAM User
    #   Guide*.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   maximum number of tags, then the entire request fails and the
    #   resource is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateRoleRequest AWS API Documentation
    #
    class CreateRoleRequest < Struct.new(
      :path,
      :role_name,
      :assume_role_policy_document,
      :description,
      :max_session_duration,
      :permissions_boundary,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [CreateRole][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #
    # @!attribute [rw] role
    #   A structure containing details about the new role.
    #   @return [Types::Role]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateRoleResponse AWS API Documentation
    #
    class CreateRoleResponse < Struct.new(
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] saml_metadata_document
    #   An XML document generated by an identity provider (IdP) that
    #   supports SAML 2.0. The document includes the issuer's name,
    #   expiration information, and keys that can be used to validate the
    #   SAML authentication response (assertions) that are received from the
    #   IdP. You must generate the metadata document using the identity
    #   management software that is used as your organization's IdP.
    #
    #   For more information, see [About SAML 2.0-based federation][1] in
    #   the *IAM User Guide*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the provider to create.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the new IAM SAML provider.
    #   Each tag consists of a key name and an associated value. For more
    #   information about tagging, see [Tagging IAM resources][1] in the
    #   *IAM User Guide*.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   maximum number of tags, then the entire request fails and the
    #   resource is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] assertion_encryption_mode
    #   Specifies the encryption setting for the SAML provider.
    #   @return [String]
    #
    # @!attribute [rw] add_private_key
    #   The private key generated from your external identity provider. The
    #   private key must be a .pem file that uses AES-GCM or AES-CBC
    #   encryption algorithm to decrypt SAML assertions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateSAMLProviderRequest AWS API Documentation
    #
    class CreateSAMLProviderRequest < Struct.new(
      :saml_metadata_document,
      :name,
      :tags,
      :assertion_encryption_mode,
      :add_private_key)
      SENSITIVE = [:add_private_key]
      include Aws::Structure
    end

    # Contains the response to a successful [CreateSAMLProvider][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateSAMLProvider.html
    #
    # @!attribute [rw] saml_provider_arn
    #   The Amazon Resource Name (ARN) of the new SAML provider resource in
    #   IAM.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the new IAM SAML provider. The
    #   returned list of tags is sorted by tag key. For more information
    #   about tagging, see [Tagging IAM resources][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateSAMLProviderResponse AWS API Documentation
    #
    class CreateSAMLProviderResponse < Struct.new(
      :saml_provider_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_service_name
    #   The service principal for the Amazon Web Services service to which
    #   this role is attached. You use a string similar to a URL but without
    #   the http:// in front. For example: `elasticbeanstalk.amazonaws.com`.
    #
    #   Service principals are unique and case-sensitive. To find the exact
    #   service principal for your service-linked role, see [Amazon Web
    #   Services services that work with IAM][1] in the *IAM User Guide*.
    #   Look for the services that have <b>Yes </b>in the **Service-Linked
    #   Role** column. Choose the **Yes** link to view the service-linked
    #   role documentation for that service.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the role.
    #   @return [String]
    #
    # @!attribute [rw] custom_suffix
    #   A string that you provide, which is combined with the
    #   service-provided prefix to form the complete role name. If you make
    #   multiple requests for the same service, then you must supply a
    #   different `CustomSuffix` for each request. Otherwise the request
    #   fails with a duplicate role name error. For example, you could add
    #   `-1` or `-debug` to the suffix.
    #
    #   Some services do not support the `CustomSuffix` parameter. If you
    #   provide an optional suffix and the operation fails, try the
    #   operation again without the suffix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceLinkedRoleRequest AWS API Documentation
    #
    class CreateServiceLinkedRoleRequest < Struct.new(
      :aws_service_name,
      :description,
      :custom_suffix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role
    #   A [Role][1] object that contains details about the newly created
    #   role.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_Role.html
    #   @return [Types::Role]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceLinkedRoleResponse AWS API Documentation
    #
    class CreateServiceLinkedRoleResponse < Struct.new(
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user that is to be associated with the
    #   credentials. The new service-specific credentials have the same
    #   permissions as the associated user except that they can be used only
    #   to access the specified service.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the Amazon Web Services service that is to be associated
    #   with the credentials. The service you specify here is the only
    #   service that can be accessed using these credentials.
    #   @return [String]
    #
    # @!attribute [rw] credential_age_days
    #   The number of days until the service specific credential expires.
    #   This field is only valid for Bedrock API keys and must be a positive
    #   integer. When not specified, the credential will not expire.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceSpecificCredentialRequest AWS API Documentation
    #
    class CreateServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_name,
      :credential_age_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_specific_credential
    #   A structure that contains information about the newly created
    #   service-specific credential.
    #
    #   This is the only time that the password for this credential set is
    #   available. It cannot be recovered later. Instead, you must reset the
    #   password with [ResetServiceSpecificCredential][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ResetServiceSpecificCredential.html
    #   @return [Types::ServiceSpecificCredential]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceSpecificCredentialResponse AWS API Documentation
    #
    class CreateServiceSpecificCredentialResponse < Struct.new(
      :service_specific_credential)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path
    #   The path for the user name. For more information about paths, see
    #   [IAM identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user to create.
    #
    #   IAM user, group, role, and policy names must be unique within the
    #   account. Names are not distinguished by case. For example, you
    #   cannot create resources named both "MyResource" and
    #   "myresource".
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary
    #   The ARN of the managed policy that is used to set the permissions
    #   boundary for the user.
    #
    #   A permissions boundary policy defines the maximum permissions that
    #   identity-based policies can grant to an entity, but does not grant
    #   permissions. Permissions boundaries do not define the maximum
    #   permissions that a resource-based policy can grant to an entity. To
    #   learn more, see [Permissions boundaries for IAM entities][1] in the
    #   *IAM User Guide*.
    #
    #   For more information about policy types, see [Policy types ][2] in
    #   the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the new user. Each tag
    #   consists of a key name and an associated value. For more information
    #   about tagging, see [Tagging IAM resources][1] in the *IAM User
    #   Guide*.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   maximum number of tags, then the entire request fails and the
    #   resource is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :path,
      :user_name,
      :permissions_boundary,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [CreateUser][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateUser.html
    #
    # @!attribute [rw] user
    #   A structure with details about the new IAM user.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path
    #   The path for the virtual MFA device. For more information about
    #   paths, see [IAM identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] virtual_mfa_device_name
    #   The name of the virtual MFA device, which must be unique. Use with
    #   path to uniquely identify a virtual MFA device.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the new IAM virtual MFA
    #   device. Each tag consists of a key name and an associated value. For
    #   more information about tagging, see [Tagging IAM resources][1] in
    #   the *IAM User Guide*.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   maximum number of tags, then the entire request fails and the
    #   resource is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateVirtualMFADeviceRequest AWS API Documentation
    #
    class CreateVirtualMFADeviceRequest < Struct.new(
      :path,
      :virtual_mfa_device_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [CreateVirtualMFADevice][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateVirtualMFADevice.html
    #
    # @!attribute [rw] virtual_mfa_device
    #   A structure containing details about the new virtual MFA device.
    #   @return [Types::VirtualMFADevice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateVirtualMFADeviceResponse AWS API Documentation
    #
    class CreateVirtualMFADeviceResponse < Struct.new(
      :virtual_mfa_device)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the most recent credential report has
    # expired. To generate a new credential report, use
    # [GenerateCredentialReport][1]. For more information about credential
    # report expiration, see [Getting credential reports][2] in the *IAM
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateCredentialReport.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CredentialReportExpiredException AWS API Documentation
    #
    class CredentialReportExpiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the credential report does not exist.
    # To generate a credential report, use [GenerateCredentialReport][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateCredentialReport.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CredentialReportNotPresentException AWS API Documentation
    #
    class CredentialReportNotPresentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the credential report is still being
    # generated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CredentialReportNotReadyException AWS API Documentation
    #
    class CredentialReportNotReadyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user whose MFA device you want to deactivate.
    #
    #   This parameter is optional. If no user name is included, it defaults
    #   to the principal making the request. When you make this request with
    #   root user credentials, you must use an [AssumeRoot][1] session to
    #   omit the user name.
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number that uniquely identifies the MFA device. For
    #   virtual MFA devices, the serial number is the device ARN.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@:/-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeactivateMFADeviceRequest AWS API Documentation
    #
    class DeactivateMFADeviceRequest < Struct.new(
      :user_name,
      :serial_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user whose access key pair you want to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The access key ID for the access key ID and secret access key you
    #   want to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteAccessKeyRequest AWS API Documentation
    #
    class DeleteAccessKeyRequest < Struct.new(
      :user_name,
      :access_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_alias
    #   The name of the account alias to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of lowercase letters, digits, and dashes. You
    #   cannot start or finish with a dash, nor can you have two dashes in a
    #   row.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteAccountAliasRequest AWS API Documentation
    #
    class DeleteAccountAliasRequest < Struct.new(
      :account_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it attempted to delete a resource
    # that has attached subordinate entities. The error message describes
    # these entities.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteConflictException AWS API Documentation
    #
    class DeleteConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name (friendly name, not ARN) identifying the group that the
    #   policy is embedded in.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name identifying the policy document to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteGroupPolicyRequest AWS API Documentation
    #
    class DeleteGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the IAM group to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteInstanceProfileRequest AWS API Documentation
    #
    class DeleteInstanceProfileRequest < Struct.new(
      :instance_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user whose password you want to delete.
    #
    #   This parameter is optional. If no user name is included, it defaults
    #   to the principal making the request. When you make this request with
    #   root user credentials, you must use an [AssumeRoot][1] session to
    #   omit the user name.
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteLoginProfileRequest AWS API Documentation
    #
    class DeleteLoginProfileRequest < Struct.new(
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OpenID Connect provider
    #   resource object to delete. You can get a list of OpenID Connect
    #   provider resource ARNs by using the [ListOpenIDConnectProviders][1]
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteOpenIDConnectProviderRequest AWS API Documentation
    #
    class DeleteOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to delete.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeletePolicyRequest AWS API Documentation
    #
    class DeletePolicyRequest < Struct.new(
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy from which you want
    #   to delete a version.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The policy version to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that consists of the lowercase letter 'v' followed by
    #   one or two digits, and optionally followed by a period '.' and a
    #   string of letters and digits.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for managed policies][2] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeletePolicyVersionRequest AWS API Documentation
    #
    class DeletePolicyVersionRequest < Struct.new(
      :policy_arn,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) of the IAM role from which you
    #   want to remove the permissions boundary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteRolePermissionsBoundaryRequest AWS API Documentation
    #
    class DeleteRolePermissionsBoundaryRequest < Struct.new(
      :role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) identifying the role that the
    #   policy is embedded in.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the inline policy to delete from the specified IAM role.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteRolePolicyRequest AWS API Documentation
    #
    class DeleteRolePolicyRequest < Struct.new(
      :role_name,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the role to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteRoleRequest AWS API Documentation
    #
    class DeleteRoleRequest < Struct.new(
      :role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSAMLProviderRequest AWS API Documentation
    #
    class DeleteSAMLProviderRequest < Struct.new(
      :saml_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the SSH public key.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSSHPublicKeyRequest AWS API Documentation
    #
    class DeleteSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_certificate_name
    #   The name of the server certificate you want to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServerCertificateRequest AWS API Documentation
    #
    class DeleteServerCertificateRequest < Struct.new(
      :server_certificate_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the service-linked role to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServiceLinkedRoleRequest AWS API Documentation
    #
    class DeleteServiceLinkedRoleRequest < Struct.new(
      :role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deletion_task_id
    #   The deletion task identifier that you can use to check the status of
    #   the deletion. This identifier is returned in the format
    #   `task/aws-service-role/<service-principal-name>/<role-name>/<task-uuid>`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServiceLinkedRoleResponse AWS API Documentation
    #
    class DeleteServiceLinkedRoleResponse < Struct.new(
      :deletion_task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the service-specific
    #   credential. If this value is not specified, then the operation
    #   assumes the user whose credentials are used to call the operation.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] service_specific_credential_id
    #   The unique identifier of the service-specific credential. You can
    #   get this value by calling [ListServiceSpecificCredentials][1].
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListServiceSpecificCredentials.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServiceSpecificCredentialRequest AWS API Documentation
    #
    class DeleteServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_specific_credential_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user the signing certificate belongs to.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the signing certificate to delete.
    #
    #   The format of this parameter, as described by its [regex][1]
    #   pattern, is a string of characters that can be upper- or lower-cased
    #   letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSigningCertificateRequest AWS API Documentation
    #
    class DeleteSigningCertificateRequest < Struct.new(
      :user_name,
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) of the IAM user from which you
    #   want to remove the permissions boundary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteUserPermissionsBoundaryRequest AWS API Documentation
    #
    class DeleteUserPermissionsBoundaryRequest < Struct.new(
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) identifying the user that the
    #   policy is embedded in.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name identifying the policy document to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteUserPolicyRequest AWS API Documentation
    #
    class DeleteUserPolicyRequest < Struct.new(
      :user_name,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user to delete.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serial_number
    #   The serial number that uniquely identifies the MFA device. For
    #   virtual MFA devices, the serial number is the same as the ARN.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@:/-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteVirtualMFADeviceRequest AWS API Documentation
    #
    class DeleteVirtualMFADeviceRequest < Struct.new(
      :serial_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reason that the service-linked role deletion failed.
    #
    # This data type is used as a response element in the
    # [GetServiceLinkedRoleDeletionStatus][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLinkedRoleDeletionStatus.html
    #
    # @!attribute [rw] reason
    #   A short description of the reason that the service-linked role
    #   deletion failed.
    #   @return [String]
    #
    # @!attribute [rw] role_usage_list
    #   A list of objects that contains details about the service-linked
    #   role deletion failure, if that information is returned by the
    #   service. If the service-linked role has active sessions or if any
    #   resources that were used by the role have not been deleted from the
    #   linked service, the role can't be deleted. This parameter includes
    #   a list of the resources that are associated with the role and the
    #   Region in which the resources are being used.
    #   @return [Array<Types::RoleUsageType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeletionTaskFailureReasonType AWS API Documentation
    #
    class DeletionTaskFailureReasonType < Struct.new(
      :reason,
      :role_usage_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name (friendly name, not ARN) of the IAM group to detach the
    #   policy from.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachGroupPolicyRequest AWS API Documentation
    #
    class DetachGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) of the IAM role to detach the
    #   policy from.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachRolePolicyRequest AWS API Documentation
    #
    class DetachRolePolicyRequest < Struct.new(
      :role_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) of the IAM user to detach the
    #   policy from.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachUserPolicyRequest AWS API Documentation
    #
    class DetachUserPolicyRequest < Struct.new(
      :user_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DisableOrganizationsRootCredentialsManagementRequest AWS API Documentation
    #
    class DisableOrganizationsRootCredentialsManagementRequest < Aws::EmptyStructure; end

    # @!attribute [rw] organization_id
    #   The unique identifier (ID) of an organization.
    #   @return [String]
    #
    # @!attribute [rw] enabled_features
    #   The features enabled for centralized root access for member accounts
    #   in your organization.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DisableOrganizationsRootCredentialsManagementResponse AWS API Documentation
    #
    class DisableOrganizationsRootCredentialsManagementResponse < Struct.new(
      :organization_id,
      :enabled_features)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DisableOrganizationsRootSessionsRequest AWS API Documentation
    #
    class DisableOrganizationsRootSessionsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] organization_id
    #   The unique identifier (ID) of an organization.
    #   @return [String]
    #
    # @!attribute [rw] enabled_features
    #   The features you have enabled for centralized root access of member
    #   accounts in your organization.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DisableOrganizationsRootSessionsResponse AWS API Documentation
    #
    class DisableOrganizationsRootSessionsResponse < Struct.new(
      :organization_id,
      :enabled_features)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the same certificate is associated
    # with an IAM user in the account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DuplicateCertificateException AWS API Documentation
    #
    class DuplicateCertificateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the SSH public key is already
    # associated with the specified IAM user.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DuplicateSSHPublicKeyException AWS API Documentation
    #
    class DuplicateSSHPublicKeyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user for whom you want to enable the MFA device.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number that uniquely identifies the MFA device. For
    #   virtual MFA devices, the serial number is the device ARN.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@:/-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] authentication_code_1
    #   An authentication code emitted by the device.
    #
    #   The format for this parameter is a string of six digits.
    #
    #   Submit your request immediately after generating the authentication
    #   codes. If you generate the codes and then wait too long to submit
    #   the request, the MFA device successfully associates with the user
    #   but the MFA device becomes out of sync. This happens because
    #   time-based one-time passwords (TOTP) expire after a short period of
    #   time. If this happens, you can [resync the device][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html
    #   @return [String]
    #
    # @!attribute [rw] authentication_code_2
    #   A subsequent authentication code emitted by the device.
    #
    #   The format for this parameter is a string of six digits.
    #
    #   Submit your request immediately after generating the authentication
    #   codes. If you generate the codes and then wait too long to submit
    #   the request, the MFA device successfully associates with the user
    #   but the MFA device becomes out of sync. This happens because
    #   time-based one-time passwords (TOTP) expire after a short period of
    #   time. If this happens, you can [resync the device][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EnableMFADeviceRequest AWS API Documentation
    #
    class EnableMFADeviceRequest < Struct.new(
      :user_name,
      :serial_number,
      :authentication_code_1,
      :authentication_code_2)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EnableOrganizationsRootCredentialsManagementRequest AWS API Documentation
    #
    class EnableOrganizationsRootCredentialsManagementRequest < Aws::EmptyStructure; end

    # @!attribute [rw] organization_id
    #   The unique identifier (ID) of an organization.
    #   @return [String]
    #
    # @!attribute [rw] enabled_features
    #   The features you have enabled for centralized root access.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EnableOrganizationsRootCredentialsManagementResponse AWS API Documentation
    #
    class EnableOrganizationsRootCredentialsManagementResponse < Struct.new(
      :organization_id,
      :enabled_features)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EnableOrganizationsRootSessionsRequest AWS API Documentation
    #
    class EnableOrganizationsRootSessionsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] organization_id
    #   The unique identifier (ID) of an organization.
    #   @return [String]
    #
    # @!attribute [rw] enabled_features
    #   The features you have enabled for centralized root access.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EnableOrganizationsRootSessionsResponse AWS API Documentation
    #
    class EnableOrganizationsRootSessionsResponse < Struct.new(
      :organization_id,
      :enabled_features)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it attempted to create a resource
    # that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EntityAlreadyExistsException AWS API Documentation
    #
    class EntityAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about when the IAM entities (users or
    # roles) were last used in an attempt to access the specified Amazon Web
    # Services service.
    #
    # This data type is a response element in the
    # [GetServiceLastAccessedDetailsWithEntities][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetailsWithEntities.html
    #
    # @!attribute [rw] entity_info
    #   The `EntityInfo` object that contains details about the entity (user
    #   or role).
    #   @return [Types::EntityInfo]
    #
    # @!attribute [rw] last_authenticated
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   authenticated entity last attempted to access Amazon Web Services.
    #   Amazon Web Services does not report unauthenticated requests.
    #
    #   This field is null if no IAM entities attempted to access the
    #   service within the [tracking period][2].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EntityDetails AWS API Documentation
    #
    class EntityDetails < Struct.new(
      :entity_info,
      :last_authenticated)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the specified entity (user or role).
    #
    # This data type is an element of the [EntityDetails][1] object.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_EntityDetails.html
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for
    #   Amazon Web Services resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the entity (user or role).
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of entity (user or role).
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the entity (user or role).
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the entity (user or role). For more information about
    #   paths, see [IAM identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EntityInfo AWS API Documentation
    #
    class EntityInfo < Struct.new(
      :arn,
      :name,
      :type,
      :id,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it referenced an entity that is
    # temporarily unmodifiable, such as a user name that was deleted and
    # then recreated. The error indicates that the request is likely to
    # succeed if you try again after waiting several minutes. The error
    # message describes the entity.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EntityTemporarilyUnmodifiableException AWS API Documentation
    #
    class EntityTemporarilyUnmodifiableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the reason that the operation failed.
    #
    # This data type is used as a response element in the
    # [GetOrganizationsAccessReport][1], [GetServiceLastAccessedDetails][2],
    # and [GetServiceLastAccessedDetailsWithEntities][3] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetailsWithEntities.html
    #
    # @!attribute [rw] message
    #   Detailed information about the reason that the operation failed.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code associated with the operation failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of a simulation.
    #
    # This data type is used by the return parameter of `
    # SimulateCustomPolicy ` and ` SimulatePrincipalPolicy `.
    #
    # @!attribute [rw] eval_action_name
    #   The name of the API operation tested on the indicated resource.
    #   @return [String]
    #
    # @!attribute [rw] eval_resource_name
    #   The ARN of the resource that the indicated API operation was tested
    #   on.
    #   @return [String]
    #
    # @!attribute [rw] eval_decision
    #   The result of the simulation.
    #   @return [String]
    #
    # @!attribute [rw] matched_statements
    #   A list of the statements in the input policies that determine the
    #   result for this scenario. Remember that even if multiple statements
    #   allow the operation on the resource, if only one statement denies
    #   that operation, then the explicit deny overrides any allow. In
    #   addition, the deny statement is the only entry included in the
    #   result.
    #   @return [Array<Types::Statement>]
    #
    # @!attribute [rw] missing_context_values
    #   A list of context keys that are required by the included input
    #   policies but that were not provided by one of the input parameters.
    #   This list is used when the resource in a simulation is "*",
    #   either explicitly, or when the `ResourceArns` parameter blank. If
    #   you include a list of resources, then any missing context values are
    #   instead included under the `ResourceSpecificResults` section. To
    #   discover the context keys used by a set of policies, you can call
    #   [GetContextKeysForCustomPolicy][1] or
    #   [GetContextKeysForPrincipalPolicy][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] organizations_decision_detail
    #   A structure that details how Organizations and its service control
    #   policies affect the results of the simulation. Only applies if the
    #   simulated user's account is part of an organization.
    #   @return [Types::OrganizationsDecisionDetail]
    #
    # @!attribute [rw] permissions_boundary_decision_detail
    #   Contains information about the effect that a permissions boundary
    #   has on a policy simulation when the boundary is applied to an IAM
    #   entity.
    #   @return [Types::PermissionsBoundaryDecisionDetail]
    #
    # @!attribute [rw] eval_decision_details
    #   Additional details about the results of the cross-account evaluation
    #   decision. This parameter is populated for only cross-account
    #   simulations. It contains a brief summary of how each policy type
    #   contributes to the final evaluation decision.
    #
    #   If the simulation evaluates policies within the same account and
    #   includes a resource ARN, then the parameter is present but the
    #   response is empty. If the simulation evaluates policies within the
    #   same account and specifies all resources (`*`), then the parameter
    #   is not returned.
    #
    #   When you make a cross-account request, Amazon Web Services evaluates
    #   the request in the trusting account and the trusted account. The
    #   request is allowed only if both evaluations return `true`. For more
    #   information about how policies are evaluated, see [Evaluating
    #   policies within a single account][1].
    #
    #   If an Organizations SCP included in the evaluation denies access,
    #   the simulation ends. In this case, policy evaluation does not
    #   proceed any further and this parameter is not returned.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_specific_results
    #   The individual results of the simulation of the API operation
    #   specified in EvalActionName on each resource.
    #   @return [Array<Types::ResourceSpecificResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EvaluationResult AWS API Documentation
    #
    class EvaluationResult < Struct.new(
      :eval_action_name,
      :eval_resource_name,
      :eval_decision,
      :matched_statements,
      :missing_context_values,
      :organizations_decision_detail,
      :permissions_boundary_decision_detail,
      :eval_decision_details,
      :resource_specific_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GenerateCredentialReport][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateCredentialReport.html
    #
    # @!attribute [rw] state
    #   Information about the state of the credential report.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the credential report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GenerateCredentialReportResponse AWS API Documentation
    #
    class GenerateCredentialReportResponse < Struct.new(
      :state,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_path
    #   The path of the Organizations entity (root, OU, or account). You can
    #   build an entity path using the known structure of your organization.
    #   For example, assume that your account ID is `123456789012` and its
    #   parent OU ID is `ou-rge0-awsabcde`. The organization root ID is
    #   `r-f6g7h8i9j0example` and your organization ID is `o-a1b2c3d4e5`.
    #   Your entity path is
    #   `o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-rge0-awsabcde/123456789012`.
    #   @return [String]
    #
    # @!attribute [rw] organizations_policy_id
    #   The identifier of the Organizations service control policy (SCP).
    #   This parameter is optional.
    #
    #   This ID is used to generate information about when an account
    #   principal that is limited by the SCP attempted to access an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GenerateOrganizationsAccessReportRequest AWS API Documentation
    #
    class GenerateOrganizationsAccessReportRequest < Struct.new(
      :entity_path,
      :organizations_policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job identifier that you can use in the
    #   [GetOrganizationsAccessReport][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GenerateOrganizationsAccessReportResponse AWS API Documentation
    #
    class GenerateOrganizationsAccessReportResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the IAM resource (user, group, role, or managed policy)
    #   used to generate information about when the resource was last used
    #   in an attempt to access an Amazon Web Services service.
    #   @return [String]
    #
    # @!attribute [rw] granularity
    #   The level of detail that you want to generate. You can specify
    #   whether you want to generate information about the last attempt to
    #   access services or actions. If you specify service-level
    #   granularity, this operation generates only service data. If you
    #   specify action-level granularity, it generates service and action
    #   data. If you don't include this optional parameter, the operation
    #   generates service data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GenerateServiceLastAccessedDetailsRequest AWS API Documentation
    #
    class GenerateServiceLastAccessedDetailsRequest < Struct.new(
      :arn,
      :granularity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The `JobId` that you can use in the
    #   [GetServiceLastAccessedDetails][1] or
    #   [GetServiceLastAccessedDetailsWithEntities][2] operations. The
    #   `JobId` returned by `GenerateServiceLastAccessedDetail` must be used
    #   by the same role within a session, or by the same user when used to
    #   call `GetServiceLastAccessedDetail`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetailsWithEntities.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GenerateServiceLastAccessedDetailsResponse AWS API Documentation
    #
    class GenerateServiceLastAccessedDetailsResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_key_id
    #   The identifier of an access key.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccessKeyLastUsedRequest AWS API Documentation
    #
    class GetAccessKeyLastUsedRequest < Struct.new(
      :access_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetAccessKeyLastUsed][1]
    # request. It is also returned as a member of the [AccessKeyMetaData][2]
    # structure returned by the [ListAccessKeys][3] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccessKeyLastUsed.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_AccessKeyMetaData.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAccessKeys.html
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user that owns this access key.
    #   @return [String]
    #
    # @!attribute [rw] access_key_last_used
    #   Contains information about the last time the access key was used.
    #   @return [Types::AccessKeyLastUsed]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccessKeyLastUsedResponse AWS API Documentation
    #
    class GetAccessKeyLastUsedResponse < Struct.new(
      :user_name,
      :access_key_last_used)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   A list of entity types used to filter the results. Only the entities
    #   that match the types you specify are included in the output. Use the
    #   value `LocalManagedPolicy` to include customer managed policies.
    #
    #   The format for this parameter is a comma-separated (if more than
    #   one) list of strings. Each string value in the list must be one of
    #   the valid values listed below.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountAuthorizationDetailsRequest AWS API Documentation
    #
    class GetAccountAuthorizationDetailsRequest < Struct.new(
      :filter,
      :max_items,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful
    # [GetAccountAuthorizationDetails][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html
    #
    # @!attribute [rw] user_detail_list
    #   A list containing information about IAM users.
    #   @return [Array<Types::UserDetail>]
    #
    # @!attribute [rw] group_detail_list
    #   A list containing information about IAM groups.
    #   @return [Array<Types::GroupDetail>]
    #
    # @!attribute [rw] role_detail_list
    #   A list containing information about IAM roles.
    #   @return [Array<Types::RoleDetail>]
    #
    # @!attribute [rw] policies
    #   A list containing information about managed policies.
    #   @return [Array<Types::ManagedPolicyDetail>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountAuthorizationDetailsResponse AWS API Documentation
    #
    class GetAccountAuthorizationDetailsResponse < Struct.new(
      :user_detail_list,
      :group_detail_list,
      :role_detail_list,
      :policies,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetAccountPasswordPolicy][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountPasswordPolicy.html
    #
    # @!attribute [rw] password_policy
    #   A structure that contains details about the account's password
    #   policy.
    #   @return [Types::PasswordPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountPasswordPolicyResponse AWS API Documentation
    #
    class GetAccountPasswordPolicyResponse < Struct.new(
      :password_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetAccountSummary][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountSummary.html
    #
    # @!attribute [rw] summary_map
    #   A set of key–value pairs containing information about IAM entity
    #   usage and IAM quotas.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountSummaryResponse AWS API Documentation
    #
    class GetAccountSummaryResponse < Struct.new(
      :summary_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_input_list
    #   A list of policies for which you want the list of context keys
    #   referenced in those policies. Each document is specified as a string
    #   containing the complete, valid JSON text of an IAM policy.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetContextKeysForCustomPolicyRequest AWS API Documentation
    #
    class GetContextKeysForCustomPolicyRequest < Struct.new(
      :policy_input_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful
    # [GetContextKeysForPrincipalPolicy][1] or
    # [GetContextKeysForCustomPolicy][2] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html
    #
    # @!attribute [rw] context_key_names
    #   The list of context keys that are referenced in the input policies.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetContextKeysForPolicyResponse AWS API Documentation
    #
    class GetContextKeysForPolicyResponse < Struct.new(
      :context_key_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_source_arn
    #   The ARN of a user, group, or role whose policies contain the context
    #   keys that you want listed. If you specify a user, the list includes
    #   context keys that are found in all policies that are attached to the
    #   user. The list also includes all groups that the user is a member
    #   of. If you pick a group or a role, then it includes only those
    #   context keys that are found in policies attached to that entity.
    #   Note that all parameters are shown in unencoded form here for
    #   clarity, but must be URL encoded to be included as a part of a real
    #   HTML request.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] policy_input_list
    #   An optional list of additional policies for which you want the list
    #   of context keys that are referenced.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetContextKeysForPrincipalPolicyRequest AWS API Documentation
    #
    class GetContextKeysForPrincipalPolicyRequest < Struct.new(
      :policy_source_arn,
      :policy_input_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetCredentialReport][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetCredentialReport.html
    #
    # @!attribute [rw] content
    #   Contains the credential report. The report is Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] report_format
    #   The format (MIME type) of the credential report.
    #   @return [String]
    #
    # @!attribute [rw] generated_time
    #   The date and time when the credential report was created, in [ISO
    #   8601 date-time format][1].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetCredentialReportResponse AWS API Documentation
    #
    class GetCredentialReportResponse < Struct.new(
      :content,
      :report_format,
      :generated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group the policy is associated with.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document to get.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroupPolicyRequest AWS API Documentation
    #
    class GetGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetGroupPolicy][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetGroupPolicy.html
    #
    # @!attribute [rw] group_name
    #   The group the policy is associated with.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #
    #   IAM stores policies in JSON format. However, resources that were
    #   created using CloudFormation templates can be formatted in YAML.
    #   CloudFormation always converts a YAML policy to JSON format before
    #   submitting it to IAM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroupPolicyResponse AWS API Documentation
    #
    class GetGroupPolicyResponse < Struct.new(
      :group_name,
      :policy_name,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroupRequest AWS API Documentation
    #
    class GetGroupRequest < Struct.new(
      :group_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetGroup][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetGroup.html
    #
    # @!attribute [rw] group
    #   A structure that contains details about the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] users
    #   A list of users in the group.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroupResponse AWS API Documentation
    #
    class GetGroupResponse < Struct.new(
      :group,
      :users,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile to get information about.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetInstanceProfileRequest AWS API Documentation
    #
    class GetInstanceProfileRequest < Struct.new(
      :instance_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetInstanceProfile][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetInstanceProfile.html
    #
    # @!attribute [rw] instance_profile
    #   A structure containing details about the instance profile.
    #   @return [Types::InstanceProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetInstanceProfileResponse AWS API Documentation
    #
    class GetInstanceProfileResponse < Struct.new(
      :instance_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user whose login profile you want to retrieve.
    #
    #   This parameter is optional. If no user name is included, it defaults
    #   to the principal making the request. When you make this request with
    #   root user credentials, you must use an [AssumeRoot][1] session to
    #   omit the user name.
    #
    #   This parameter allows (through its [regex pattern][2]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoot.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetLoginProfileRequest AWS API Documentation
    #
    class GetLoginProfileRequest < Struct.new(
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetLoginProfile][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetLoginProfile.html
    #
    # @!attribute [rw] login_profile
    #   A structure containing the user name and the profile creation date
    #   for the user.
    #   @return [Types::LoginProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetLoginProfileResponse AWS API Documentation
    #
    class GetLoginProfileResponse < Struct.new(
      :login_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serial_number
    #   Serial number that uniquely identifies the MFA device. For this API,
    #   we only accept FIDO security key [ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The friendly name identifying the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetMFADeviceRequest AWS API Documentation
    #
    class GetMFADeviceRequest < Struct.new(
      :serial_number,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The friendly name identifying the user.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   Serial number that uniquely identifies the MFA device. For this API,
    #   we only accept FIDO security key [ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #   @return [String]
    #
    # @!attribute [rw] enable_date
    #   The date that a specified user's MFA device was first enabled.
    #   @return [Time]
    #
    # @!attribute [rw] certifications
    #   The certifications of a specified user's MFA device. We currently
    #   provide FIPS-140-2, FIPS-140-3, and FIDO certification levels
    #   obtained from [ FIDO Alliance Metadata Service (MDS)][1].
    #
    #
    #
    #   [1]: https://fidoalliance.org/metadata/
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetMFADeviceResponse AWS API Documentation
    #
    class GetMFADeviceResponse < Struct.new(
      :user_name,
      :serial_number,
      :enable_date,
      :certifications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the OIDC provider resource object
    #   in IAM to get information for. You can get a list of OIDC provider
    #   resource ARNs by using the [ListOpenIDConnectProviders][1]
    #   operation.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][2] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetOpenIDConnectProviderRequest AWS API Documentation
    #
    class GetOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetOpenIDConnectProvider][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOpenIDConnectProvider.html
    #
    # @!attribute [rw] url
    #   The URL that the IAM OIDC provider resource object is associated
    #   with. For more information, see [CreateOpenIDConnectProvider][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html
    #   @return [String]
    #
    # @!attribute [rw] client_id_list
    #   A list of client IDs (also known as audiences) that are associated
    #   with the specified IAM OIDC provider resource object. For more
    #   information, see [CreateOpenIDConnectProvider][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] thumbprint_list
    #   A list of certificate thumbprints that are associated with the
    #   specified IAM OIDC provider resource object. For more information,
    #   see [CreateOpenIDConnectProvider][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] create_date
    #   The date and time when the IAM OIDC provider resource object was
    #   created in the Amazon Web Services account.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the specified IAM OIDC provider.
    #   The returned list of tags is sorted by tag key. For more information
    #   about tagging, see [Tagging IAM resources][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetOpenIDConnectProviderResponse AWS API Documentation
    #
    class GetOpenIDConnectProviderResponse < Struct.new(
      :url,
      :client_id_list,
      :thumbprint_list,
      :create_date,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the request generated by the
    #   [GenerateOrganizationsAccessReport][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateOrganizationsAccessReport.html
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] sort_key
    #   The key that is used to sort the results. If you choose the
    #   namespace key, the results are returned in alphabetical order. If
    #   you choose the time key, the results are sorted numerically by the
    #   date and time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetOrganizationsAccessReportRequest AWS API Documentation
    #
    class GetOrganizationsAccessReportRequest < Struct.new(
      :job_id,
      :max_items,
      :marker,
      :sort_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The status of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_creation_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   report job was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] job_completion_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   generated report job was completed or failed.
    #
    #   This field is null if the job is still in progress, as indicated by
    #   a job status value of `IN_PROGRESS`.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] number_of_services_accessible
    #   The number of services that the applicable SCPs allow account
    #   principals to access.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_services_not_accessed
    #   The number of services that account principals are allowed but did
    #   not attempt to access.
    #   @return [Integer]
    #
    # @!attribute [rw] access_details
    #   An object that contains details about the most recent attempt to
    #   access the service.
    #   @return [Array<Types::AccessDetail>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Contains information about the reason that the operation failed.
    #
    #   This data type is used as a response element in the
    #   [GetOrganizationsAccessReport][1],
    #   [GetServiceLastAccessedDetails][2], and
    #   [GetServiceLastAccessedDetailsWithEntities][3] operations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetOrganizationsAccessReport.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html
    #   [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetailsWithEntities.html
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetOrganizationsAccessReportResponse AWS API Documentation
    #
    class GetOrganizationsAccessReportResponse < Struct.new(
      :job_status,
      :job_creation_date,
      :job_completion_date,
      :number_of_services_accessible,
      :number_of_services_not_accessed,
      :access_details,
      :is_truncated,
      :marker,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the managed policy that you want
    #   information about.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetPolicy][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html
    #
    # @!attribute [rw] policy
    #   A structure containing details about the policy.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the managed policy that you want
    #   information about.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Identifies the policy version to retrieve.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that consists of the lowercase letter 'v' followed by
    #   one or two digits, and optionally followed by a period '.' and a
    #   string of letters and digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicyVersionRequest AWS API Documentation
    #
    class GetPolicyVersionRequest < Struct.new(
      :policy_arn,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetPolicyVersion][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html
    #
    # @!attribute [rw] policy_version
    #   A structure containing details about the policy version.
    #   @return [Types::PolicyVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicyVersionResponse AWS API Documentation
    #
    class GetPolicyVersionResponse < Struct.new(
      :policy_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the role associated with the policy.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document to get.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRolePolicyRequest AWS API Documentation
    #
    class GetRolePolicyRequest < Struct.new(
      :role_name,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetRolePolicy][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRolePolicy.html
    #
    # @!attribute [rw] role_name
    #   The role the policy is associated with.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #
    #   IAM stores policies in JSON format. However, resources that were
    #   created using CloudFormation templates can be formatted in YAML.
    #   CloudFormation always converts a YAML policy to JSON format before
    #   submitting it to IAM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRolePolicyResponse AWS API Documentation
    #
    class GetRolePolicyResponse < Struct.new(
      :role_name,
      :policy_name,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the IAM role to get information about.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRoleRequest AWS API Documentation
    #
    class GetRoleRequest < Struct.new(
      :role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetRole][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRole.html
    #
    # @!attribute [rw] role
    #   A structure containing details about the IAM role.
    #   @return [Types::Role]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRoleResponse AWS API Documentation
    #
    class GetRoleResponse < Struct.new(
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider resource object
    #   in IAM to get information about.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSAMLProviderRequest AWS API Documentation
    #
    class GetSAMLProviderRequest < Struct.new(
      :saml_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetSAMLProvider][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetSAMLProvider.html
    #
    # @!attribute [rw] saml_provider_uuid
    #   The unique identifier assigned to the SAML provider.
    #   @return [String]
    #
    # @!attribute [rw] saml_metadata_document
    #   The XML metadata document that includes information about an
    #   identity provider.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time when the SAML provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] valid_until
    #   The expiration date and time for the SAML provider.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the specified IAM SAML provider.
    #   The returned list of tags is sorted by tag key. For more information
    #   about tagging, see [Tagging IAM resources][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] assertion_encryption_mode
    #   Specifies the encryption setting for the SAML provider.
    #   @return [String]
    #
    # @!attribute [rw] private_key_list
    #   The private key metadata for the SAML provider.
    #   @return [Array<Types::SAMLPrivateKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSAMLProviderResponse AWS API Documentation
    #
    class GetSAMLProviderResponse < Struct.new(
      :saml_provider_uuid,
      :saml_metadata_document,
      :create_date,
      :valid_until,
      :tags,
      :assertion_encryption_mode,
      :private_key_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the SSH public key.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] encoding
    #   Specifies the public key encoding format to use in the response. To
    #   retrieve the public key in ssh-rsa format, use `SSH`. To retrieve
    #   the public key in PEM format, use `PEM`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSSHPublicKeyRequest AWS API Documentation
    #
    class GetSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :encoding)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetSSHPublicKey][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetSSHPublicKey.html
    #
    # @!attribute [rw] ssh_public_key
    #   A structure containing details about the SSH public key.
    #   @return [Types::SSHPublicKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSSHPublicKeyResponse AWS API Documentation
    #
    class GetSSHPublicKeyResponse < Struct.new(
      :ssh_public_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_certificate_name
    #   The name of the server certificate you want to retrieve information
    #   about.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServerCertificateRequest AWS API Documentation
    #
    class GetServerCertificateRequest < Struct.new(
      :server_certificate_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetServerCertificate][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServerCertificate.html
    #
    # @!attribute [rw] server_certificate
    #   A structure containing details about the server certificate.
    #   @return [Types::ServerCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServerCertificateResponse AWS API Documentation
    #
    class GetServerCertificateResponse < Struct.new(
      :server_certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the request generated by the
    #   [GenerateServiceLastAccessedDetails][1] operation. The `JobId`
    #   returned by `GenerateServiceLastAccessedDetail` must be used by the
    #   same role within a session, or by the same user when used to call
    #   `GetServiceLastAccessedDetail`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateServiceLastAccessedDetails.html
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServiceLastAccessedDetailsRequest AWS API Documentation
    #
    class GetServiceLastAccessedDetailsRequest < Struct.new(
      :job_id,
      :max_items,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The status of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The type of job. Service jobs return information about when each
    #   service was last accessed. Action jobs also include information
    #   about when tracked actions within the service were last accessed.
    #   @return [String]
    #
    # @!attribute [rw] job_creation_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   report job was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] services_last_accessed
    #   A `ServiceLastAccessed` object that contains details about the most
    #   recent attempt to access the service.
    #   @return [Array<Types::ServiceLastAccessed>]
    #
    # @!attribute [rw] job_completion_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   generated report job was completed or failed.
    #
    #   This field is null if the job is still in progress, as indicated by
    #   a job status value of `IN_PROGRESS`.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An object that contains details about the reason the operation
    #   failed.
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServiceLastAccessedDetailsResponse AWS API Documentation
    #
    class GetServiceLastAccessedDetailsResponse < Struct.new(
      :job_status,
      :job_type,
      :job_creation_date,
      :services_last_accessed,
      :job_completion_date,
      :is_truncated,
      :marker,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the request generated by the
    #   `GenerateServiceLastAccessedDetails` operation.
    #   @return [String]
    #
    # @!attribute [rw] service_namespace
    #   The service namespace for an Amazon Web Services service. Provide
    #   the service namespace to learn when the IAM entity last attempted to
    #   access the specified service.
    #
    #   To learn the service namespace for a service, see [Actions,
    #   resources, and condition keys for Amazon Web Services services][1]
    #   in the *IAM User Guide*. Choose the name of the service to view
    #   details for that service. In the first paragraph, find the service
    #   prefix. For example, `(service prefix: a4b)`. For more information
    #   about service namespaces, see [Amazon Web Services service
    #   namespaces][2] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServiceLastAccessedDetailsWithEntitiesRequest AWS API Documentation
    #
    class GetServiceLastAccessedDetailsWithEntitiesRequest < Struct.new(
      :job_id,
      :service_namespace,
      :max_items,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_status
    #   The status of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_creation_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   report job was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] job_completion_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   generated report job was completed or failed.
    #
    #   This field is null if the job is still in progress, as indicated by
    #   a job status value of `IN_PROGRESS`.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] entity_details_list
    #   An `EntityDetailsList` object that contains details about when an
    #   IAM entity (user or role) used group or policy permissions in an
    #   attempt to access the specified Amazon Web Services service.
    #   @return [Array<Types::EntityDetails>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An object that contains details about the reason the operation
    #   failed.
    #   @return [Types::ErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServiceLastAccessedDetailsWithEntitiesResponse AWS API Documentation
    #
    class GetServiceLastAccessedDetailsWithEntitiesResponse < Struct.new(
      :job_status,
      :job_creation_date,
      :job_completion_date,
      :entity_details_list,
      :is_truncated,
      :marker,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deletion_task_id
    #   The deletion task identifier. This identifier is returned by the
    #   [DeleteServiceLinkedRole][1] operation in the format
    #   `task/aws-service-role/<service-principal-name>/<role-name>/<task-uuid>`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_DeleteServiceLinkedRole.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServiceLinkedRoleDeletionStatusRequest AWS API Documentation
    #
    class GetServiceLinkedRoleDeletionStatusRequest < Struct.new(
      :deletion_task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the deletion.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   An object that contains details about the reason the deletion
    #   failed.
    #   @return [Types::DeletionTaskFailureReasonType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServiceLinkedRoleDeletionStatusResponse AWS API Documentation
    #
    class GetServiceLinkedRoleDeletionStatusResponse < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user who the policy is associated with.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document to get.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUserPolicyRequest AWS API Documentation
    #
    class GetUserPolicyRequest < Struct.new(
      :user_name,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetUserPolicy][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUserPolicy.html
    #
    # @!attribute [rw] user_name
    #   The user the policy is associated with.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #
    #   IAM stores policies in JSON format. However, resources that were
    #   created using CloudFormation templates can be formatted in YAML.
    #   CloudFormation always converts a YAML policy to JSON format before
    #   submitting it to IAM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUserPolicyResponse AWS API Documentation
    #
    class GetUserPolicyResponse < Struct.new(
      :user_name,
      :policy_name,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user to get information about.
    #
    #   This parameter is optional. If it is not included, it defaults to
    #   the user making the request. This parameter allows (through its
    #   [regex pattern][1]) a string of characters consisting of upper and
    #   lowercase alphanumeric characters with no spaces. You can also
    #   include any of the following characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUserRequest AWS API Documentation
    #
    class GetUserRequest < Struct.new(
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [GetUser][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUser.html
    #
    # @!attribute [rw] user
    #   A structure containing details about the IAM user.
    #
    #   Due to a service issue, password last used data does not include
    #   password use from May 3, 2018 22:50 PDT to May 23, 2018 14:08 PDT.
    #   This affects [last sign-in][1] dates shown in the IAM console and
    #   password last used dates in the [IAM credential report][2], and
    #   returned by this operation. If users signed in during the affected
    #   time, the password last used date that is returned is the date the
    #   user last signed in before May 3, 2018. For users that signed in
    #   after May 23, 2018 14:08 PDT, the returned password last used date
    #   is accurate.
    #
    #    You can use password last used information to identify unused
    #   credentials for deletion. For example, you might delete users who
    #   did not sign in to Amazon Web Services in the last 90 days. In cases
    #   like this, we recommend that you adjust your evaluation window to
    #   include dates after May 23, 2018. Alternatively, if your users use
    #   access keys to access Amazon Web Services programmatically you can
    #   refer to access key last used information because it is accurate for
    #   all dates.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_finding-unused.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUserResponse AWS API Documentation
    #
    class GetUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an IAM group entity.
    #
    # This data type is used as a response element in the following
    # operations:
    #
    # * [CreateGroup][1]
    #
    # * [GetGroup][2]
    #
    # * [ListGroups][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateGroup.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetGroup.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListGroups.html
    #
    # @!attribute [rw] path
    #   The path to the group. For more information about paths, see [IAM
    #   identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The friendly name that identifies the group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The stable and unique string identifying the group. For more
    #   information about IDs, see [IAM identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) specifying the group. For more
    #   information about ARNs and how to use them in policies, see [IAM
    #   identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the group
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Group AWS API Documentation
    #
    class Group < Struct.new(
      :path,
      :group_name,
      :group_id,
      :arn,
      :create_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an IAM group, including all of the group's
    # policies.
    #
    # This data type is used as a response element in the
    # [GetAccountAuthorizationDetails][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html
    #
    # @!attribute [rw] path
    #   The path to the group. For more information about paths, see [IAM
    #   identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The friendly name that identifies the group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The stable and unique string identifying the group. For more
    #   information about IDs, see [IAM identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for
    #   Amazon Web Services resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the group
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] group_policy_list
    #   A list of the inline policies embedded in the group.
    #   @return [Array<Types::PolicyDetail>]
    #
    # @!attribute [rw] attached_managed_policies
    #   A list of the managed policies attached to the group.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GroupDetail AWS API Documentation
    #
    class GroupDetail < Struct.new(
      :path,
      :group_name,
      :group_id,
      :arn,
      :create_date,
      :group_policy_list,
      :attached_managed_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an instance profile.
    #
    # This data type is used as a response element in the following
    # operations:
    #
    # * [CreateInstanceProfile][1]
    #
    # * [GetInstanceProfile][2]
    #
    # * [ListInstanceProfiles][3]
    #
    # * [ListInstanceProfilesForRole][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateInstanceProfile.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetInstanceProfile.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListInstanceProfiles.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListInstanceProfilesForRole.html
    #
    # @!attribute [rw] path
    #   The path to the instance profile. For more information about paths,
    #   see [IAM identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_name
    #   The name identifying the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_id
    #   The stable and unique string identifying the instance profile. For
    #   more information about IDs, see [IAM identifiers][1] in the *IAM
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) specifying the instance profile. For
    #   more information about ARNs and how to use them in policies, see
    #   [IAM identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date when the instance profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] roles
    #   The role associated with the instance profile.
    #   @return [Array<Types::Role>]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the instance profile. For more
    #   information about tagging, see [Tagging IAM resources][1] in the
    #   *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/InstanceProfile AWS API Documentation
    #
    class InstanceProfile < Struct.new(
      :path,
      :instance_profile_name,
      :instance_profile_id,
      :arn,
      :create_date,
      :roles,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the authentication code was not
    # recognized. The error message describes the specific error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/InvalidAuthenticationCodeException AWS API Documentation
    #
    class InvalidAuthenticationCodeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the certificate is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/InvalidCertificateException AWS API Documentation
    #
    class InvalidCertificateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because an invalid or out-of-range value was
    # supplied for an input parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the public key is malformed or
    # otherwise invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/InvalidPublicKeyException AWS API Documentation
    #
    class InvalidPublicKeyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the type of user for the transaction
    # was incorrect.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/InvalidUserTypeException AWS API Documentation
    #
    class InvalidUserTypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the public key certificate and the
    # private key do not match.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/KeyPairMismatchException AWS API Documentation
    #
    class KeyPairMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it attempted to create resources
    # beyond the current Amazon Web Services account limits. The error
    # message describes the limit exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccessKeysRequest AWS API Documentation
    #
    class ListAccessKeysRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListAccessKeys][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAccessKeys.html
    #
    # @!attribute [rw] access_key_metadata
    #   A list of objects containing metadata about the access keys.
    #   @return [Array<Types::AccessKeyMetadata>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccessKeysResponse AWS API Documentation
    #
    class ListAccessKeysResponse < Struct.new(
      :access_key_metadata,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccountAliasesRequest AWS API Documentation
    #
    class ListAccountAliasesRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListAccountAliases][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAccountAliases.html
    #
    # @!attribute [rw] account_aliases
    #   A list of aliases associated with the account. Amazon Web Services
    #   supports only one alias per account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccountAliasesResponse AWS API Documentation
    #
    class ListAccountAliasesResponse < Struct.new(
      :account_aliases,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name (friendly name, not ARN) of the group to list attached
    #   policies for.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. This parameter is
    #   optional. If it is not included, it defaults to a slash (/), listing
    #   all policies.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedGroupPoliciesRequest AWS API Documentation
    #
    class ListAttachedGroupPoliciesRequest < Struct.new(
      :group_name,
      :path_prefix,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListAttachedGroupPolicies][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedGroupPolicies.html
    #
    # @!attribute [rw] attached_policies
    #   A list of the attached policies.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedGroupPoliciesResponse AWS API Documentation
    #
    class ListAttachedGroupPoliciesResponse < Struct.new(
      :attached_policies,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) of the role to list attached
    #   policies for.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. This parameter is
    #   optional. If it is not included, it defaults to a slash (/), listing
    #   all policies.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedRolePoliciesRequest AWS API Documentation
    #
    class ListAttachedRolePoliciesRequest < Struct.new(
      :role_name,
      :path_prefix,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListAttachedRolePolicies][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedRolePolicies.html
    #
    # @!attribute [rw] attached_policies
    #   A list of the attached policies.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedRolePoliciesResponse AWS API Documentation
    #
    class ListAttachedRolePoliciesResponse < Struct.new(
      :attached_policies,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) of the user to list attached
    #   policies for.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. This parameter is
    #   optional. If it is not included, it defaults to a slash (/), listing
    #   all policies.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedUserPoliciesRequest AWS API Documentation
    #
    class ListAttachedUserPoliciesRequest < Struct.new(
      :user_name,
      :path_prefix,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListAttachedUserPolicies][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListAttachedUserPolicies.html
    #
    # @!attribute [rw] attached_policies
    #   A list of the attached policies.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedUserPoliciesResponse AWS API Documentation
    #
    class ListAttachedUserPoliciesResponse < Struct.new(
      :attached_policies,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy for which you want
    #   the versions.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] entity_filter
    #   The entity type to use for filtering the results.
    #
    #   For example, when `EntityFilter` is `Role`, only the roles that are
    #   attached to the specified policy are returned. This parameter is
    #   optional. If it is not included, all attached entities (users,
    #   groups, and roles) are returned. The argument for this parameter
    #   must be one of the valid values listed below.
    #   @return [String]
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. This parameter is
    #   optional. If it is not included, it defaults to a slash (/), listing
    #   all entities.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_usage_filter
    #   The policy usage method to use for filtering the results.
    #
    #   To list only permissions policies,
    #   set `PolicyUsageFilter` to `PermissionsPolicy`. To list only the
    #   policies used to set permissions boundaries, set the value
    #   to `PermissionsBoundary`.
    #
    #   This parameter is optional. If it is not included, all policies are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListEntitiesForPolicyRequest AWS API Documentation
    #
    class ListEntitiesForPolicyRequest < Struct.new(
      :policy_arn,
      :entity_filter,
      :path_prefix,
      :policy_usage_filter,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListEntitiesForPolicy][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html
    #
    # @!attribute [rw] policy_groups
    #   A list of IAM groups that the policy is attached to.
    #   @return [Array<Types::PolicyGroup>]
    #
    # @!attribute [rw] policy_users
    #   A list of IAM users that the policy is attached to.
    #   @return [Array<Types::PolicyUser>]
    #
    # @!attribute [rw] policy_roles
    #   A list of IAM roles that the policy is attached to.
    #   @return [Array<Types::PolicyRole>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListEntitiesForPolicyResponse AWS API Documentation
    #
    class ListEntitiesForPolicyResponse < Struct.new(
      :policy_groups,
      :policy_users,
      :policy_roles,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group to list policies for.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupPoliciesRequest AWS API Documentation
    #
    class ListGroupPoliciesRequest < Struct.new(
      :group_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListGroupPolicies][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListGroupPolicies.html
    #
    # @!attribute [rw] policy_names
    #   A list of policy names.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupPoliciesResponse AWS API Documentation
    #
    class ListGroupPoliciesResponse < Struct.new(
      :policy_names,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user to list groups for.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupsForUserRequest AWS API Documentation
    #
    class ListGroupsForUserRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListGroupsForUser][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListGroupsForUser.html
    #
    # @!attribute [rw] groups
    #   A list of groups.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupsForUserResponse AWS API Documentation
    #
    class ListGroupsForUserResponse < Struct.new(
      :groups,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. For example, the prefix
    #   `/division_abc/subdivision_xyz/` gets all groups whose path starts
    #   with `/division_abc/subdivision_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all groups. This parameter allows (through its
    #   [regex pattern][1]) a string of characters consisting of either a
    #   forward slash (/) by itself or a string that must begin and end with
    #   forward slashes. In addition, it can contain any ASCII character
    #   from the ! (`\u0021`) through the DEL character (`\u007F`),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListGroups][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListGroups.html
    #
    # @!attribute [rw] groups
    #   A list of groups.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :groups,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile_name
    #   The name of the IAM instance profile whose tags you want to see.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfileTagsRequest AWS API Documentation
    #
    class ListInstanceProfileTagsRequest < Struct.new(
      :instance_profile_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are currently attached to the IAM instance
    #   profile. Each tag consists of a key name and an associated value. If
    #   no tags are attached to the specified resource, the response
    #   contains an empty list.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfileTagsResponse AWS API Documentation
    #
    class ListInstanceProfileTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the role to list instance profiles for.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfilesForRoleRequest AWS API Documentation
    #
    class ListInstanceProfilesForRoleRequest < Struct.new(
      :role_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListInstanceProfilesForRole][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListInstanceProfilesForRole.html
    #
    # @!attribute [rw] instance_profiles
    #   A list of instance profiles.
    #   @return [Array<Types::InstanceProfile>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfilesForRoleResponse AWS API Documentation
    #
    class ListInstanceProfilesForRoleResponse < Struct.new(
      :instance_profiles,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. For example, the prefix
    #   `/application_abc/component_xyz/` gets all instance profiles whose
    #   path starts with `/application_abc/component_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all instance profiles. This parameter allows
    #   (through its [regex pattern][1]) a string of characters consisting
    #   of either a forward slash (/) by itself or a string that must begin
    #   and end with forward slashes. In addition, it can contain any ASCII
    #   character from the ! (`\u0021`) through the DEL character
    #   (`\u007F`), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfilesRequest AWS API Documentation
    #
    class ListInstanceProfilesRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListInstanceProfiles][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListInstanceProfiles.html
    #
    # @!attribute [rw] instance_profiles
    #   A list of instance profiles.
    #   @return [Array<Types::InstanceProfile>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfilesResponse AWS API Documentation
    #
    class ListInstanceProfilesResponse < Struct.new(
      :instance_profiles,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serial_number
    #   The unique identifier for the IAM virtual MFA device whose tags you
    #   want to see. For virtual MFA devices, the serial number is the same
    #   as the ARN.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListMFADeviceTagsRequest AWS API Documentation
    #
    class ListMFADeviceTagsRequest < Struct.new(
      :serial_number,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are currently attached to the virtual MFA
    #   device. Each tag consists of a key name and an associated value. If
    #   no tags are attached to the specified resource, the response
    #   contains an empty list.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListMFADeviceTagsResponse AWS API Documentation
    #
    class ListMFADeviceTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user whose MFA devices you want to list.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListMFADevicesRequest AWS API Documentation
    #
    class ListMFADevicesRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListMFADevices][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListMFADevices.html
    #
    # @!attribute [rw] mfa_devices
    #   A list of MFA devices.
    #   @return [Array<Types::MFADevice>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListMFADevicesResponse AWS API Documentation
    #
    class ListMFADevicesResponse < Struct.new(
      :mfa_devices,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] open_id_connect_provider_arn
    #   The ARN of the OpenID Connect (OIDC) identity provider whose tags
    #   you want to see.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListOpenIDConnectProviderTagsRequest AWS API Documentation
    #
    class ListOpenIDConnectProviderTagsRequest < Struct.new(
      :open_id_connect_provider_arn,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are currently attached to the OpenID Connect
    #   (OIDC) identity provider. Each tag consists of a key name and an
    #   associated value. If no tags are attached to the specified resource,
    #   the response contains an empty list.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListOpenIDConnectProviderTagsResponse AWS API Documentation
    #
    class ListOpenIDConnectProviderTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListOpenIDConnectProvidersRequest AWS API Documentation
    #
    class ListOpenIDConnectProvidersRequest < Aws::EmptyStructure; end

    # Contains the response to a successful [ListOpenIDConnectProviders][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html
    #
    # @!attribute [rw] open_id_connect_provider_list
    #   The list of IAM OIDC provider resource objects defined in the Amazon
    #   Web Services account.
    #   @return [Array<Types::OpenIDConnectProviderListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListOpenIDConnectProvidersResponse AWS API Documentation
    #
    class ListOpenIDConnectProvidersResponse < Struct.new(
      :open_id_connect_provider_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListOrganizationsFeaturesRequest AWS API Documentation
    #
    class ListOrganizationsFeaturesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] organization_id
    #   The unique identifier (ID) of an organization.
    #   @return [String]
    #
    # @!attribute [rw] enabled_features
    #   Specifies the features that are currently available in your
    #   organization.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListOrganizationsFeaturesResponse AWS API Documentation
    #
    class ListOrganizationsFeaturesResponse < Struct.new(
      :organization_id,
      :enabled_features)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the permissions policies that are attached to
    # the specified identity (user, group, or role).
    #
    # This data type is used as a response element in the
    # [ListPoliciesGrantingServiceAccess][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPoliciesGrantingServiceAccess.html
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the service that was accessed.
    #
    #   To learn the service namespace of a service, see [Actions,
    #   resources, and condition keys for Amazon Web Services services][1]
    #   in the *Service Authorization Reference*. Choose the name of the
    #   service to view details for that service. In the first paragraph,
    #   find the service prefix. For example, `(service prefix: a4b)`. For
    #   more information about service namespaces, see [Amazon Web Services
    #   service namespaces][2] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   The `PoliciesGrantingServiceAccess` object that contains details
    #   about the policy.
    #   @return [Array<Types::PolicyGrantingServiceAccess>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPoliciesGrantingServiceAccessEntry AWS API Documentation
    #
    class ListPoliciesGrantingServiceAccessEntry < Struct.new(
      :service_namespace,
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the IAM identity (user, group, or role) whose policies
    #   you want to list.
    #   @return [String]
    #
    # @!attribute [rw] service_namespaces
    #   The service namespace for the Amazon Web Services services whose
    #   policies you want to list.
    #
    #   To learn the service namespace for a service, see [Actions,
    #   resources, and condition keys for Amazon Web Services services][1]
    #   in the *IAM User Guide*. Choose the name of the service to view
    #   details for that service. In the first paragraph, find the service
    #   prefix. For example, `(service prefix: a4b)`. For more information
    #   about service namespaces, see [Amazon Web Services service
    #   namespaces][2] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPoliciesGrantingServiceAccessRequest AWS API Documentation
    #
    class ListPoliciesGrantingServiceAccessRequest < Struct.new(
      :marker,
      :arn,
      :service_namespaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policies_granting_service_access
    #   A `ListPoliciesGrantingServiceAccess` object that contains details
    #   about the permissions policies attached to the specified identity
    #   (user, group, or role).
    #   @return [Array<Types::ListPoliciesGrantingServiceAccessEntry>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   We recommend that you check `IsTruncated` after every call to ensure
    #   that you receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPoliciesGrantingServiceAccessResponse AWS API Documentation
    #
    class ListPoliciesGrantingServiceAccessResponse < Struct.new(
      :policies_granting_service_access,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope
    #   The scope to use for filtering the results.
    #
    #   To list only Amazon Web Services managed policies, set `Scope` to
    #   `AWS`. To list only the customer managed policies in your Amazon Web
    #   Services account, set `Scope` to `Local`.
    #
    #   This parameter is optional. If it is not included, or if it is set
    #   to `All`, all policies are returned.
    #   @return [String]
    #
    # @!attribute [rw] only_attached
    #   A flag to filter the results to only the attached policies.
    #
    #   When `OnlyAttached` is `true`, the returned list contains only the
    #   policies that are attached to an IAM user, group, or role. When
    #   `OnlyAttached` is `false`, or when the parameter is not included,
    #   all policies are returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. This parameter is
    #   optional. If it is not included, it defaults to a slash (/), listing
    #   all policies. This parameter allows (through its [regex pattern][1])
    #   a string of characters consisting of either a forward slash (/) by
    #   itself or a string that must begin and end with forward slashes. In
    #   addition, it can contain any ASCII character from the ! (`\u0021`)
    #   through the DEL character (`\u007F`), including most punctuation
    #   characters, digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_usage_filter
    #   The policy usage method to use for filtering the results.
    #
    #   To list only permissions policies,
    #   set `PolicyUsageFilter` to `PermissionsPolicy`. To list only the
    #   policies used to set permissions boundaries, set the value
    #   to `PermissionsBoundary`.
    #
    #   This parameter is optional. If it is not included, all policies are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPoliciesRequest AWS API Documentation
    #
    class ListPoliciesRequest < Struct.new(
      :scope,
      :only_attached,
      :path_prefix,
      :policy_usage_filter,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListPolicies][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicies.html
    #
    # @!attribute [rw] policies
    #   A list of policies.
    #   @return [Array<Types::Policy>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPoliciesResponse AWS API Documentation
    #
    class ListPoliciesResponse < Struct.new(
      :policies,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The ARN of the IAM customer managed policy whose tags you want to
    #   see.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPolicyTagsRequest AWS API Documentation
    #
    class ListPolicyTagsRequest < Struct.new(
      :policy_arn,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are currently attached to the IAM customer
    #   managed policy. Each tag consists of a key name and an associated
    #   value. If no tags are attached to the specified resource, the
    #   response contains an empty list.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPolicyTagsResponse AWS API Documentation
    #
    class ListPolicyTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy for which you want
    #   the versions.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPolicyVersionsRequest AWS API Documentation
    #
    class ListPolicyVersionsRequest < Struct.new(
      :policy_arn,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListPolicyVersions][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html
    #
    # @!attribute [rw] versions
    #   A list of policy versions.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for managed policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #   @return [Array<Types::PolicyVersion>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPolicyVersionsResponse AWS API Documentation
    #
    class ListPolicyVersionsResponse < Struct.new(
      :versions,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the role to list policies for.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRolePoliciesRequest AWS API Documentation
    #
    class ListRolePoliciesRequest < Struct.new(
      :role_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListRolePolicies][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListRolePolicies.html
    #
    # @!attribute [rw] policy_names
    #   A list of policy names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRolePoliciesResponse AWS API Documentation
    #
    class ListRolePoliciesResponse < Struct.new(
      :policy_names,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the IAM role for which you want to see the list of tags.
    #
    #   This parameter accepts (through its [regex pattern][1]) a string of
    #   characters that consist of upper and lowercase alphanumeric
    #   characters with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRoleTagsRequest AWS API Documentation
    #
    class ListRoleTagsRequest < Struct.new(
      :role_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are currently attached to the role. Each tag
    #   consists of a key name and an associated value. If no tags are
    #   attached to the specified resource, the response contains an empty
    #   list.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRoleTagsResponse AWS API Documentation
    #
    class ListRoleTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. For example, the prefix
    #   `/application_abc/component_xyz/` gets all roles whose path starts
    #   with `/application_abc/component_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all roles. This parameter allows (through its
    #   [regex pattern][1]) a string of characters consisting of either a
    #   forward slash (/) by itself or a string that must begin and end with
    #   forward slashes. In addition, it can contain any ASCII character
    #   from the ! (`\u0021`) through the DEL character (`\u007F`),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRolesRequest AWS API Documentation
    #
    class ListRolesRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListRoles][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListRoles.html
    #
    # @!attribute [rw] roles
    #   A list of roles.
    #   @return [Array<Types::Role>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRolesResponse AWS API Documentation
    #
    class ListRolesResponse < Struct.new(
      :roles,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] saml_provider_arn
    #   The ARN of the Security Assertion Markup Language (SAML) identity
    #   provider whose tags you want to see.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSAMLProviderTagsRequest AWS API Documentation
    #
    class ListSAMLProviderTagsRequest < Struct.new(
      :saml_provider_arn,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are currently attached to the Security
    #   Assertion Markup Language (SAML) identity provider. Each tag
    #   consists of a key name and an associated value. If no tags are
    #   attached to the specified resource, the response contains an empty
    #   list.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSAMLProviderTagsResponse AWS API Documentation
    #
    class ListSAMLProviderTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSAMLProvidersRequest AWS API Documentation
    #
    class ListSAMLProvidersRequest < Aws::EmptyStructure; end

    # Contains the response to a successful [ListSAMLProviders][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListSAMLProviders.html
    #
    # @!attribute [rw] saml_provider_list
    #   The list of SAML provider resource objects defined in IAM for this
    #   Amazon Web Services account.
    #   @return [Array<Types::SAMLProviderListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSAMLProvidersResponse AWS API Documentation
    #
    class ListSAMLProvidersResponse < Struct.new(
      :saml_provider_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user to list SSH public keys for. If none is
    #   specified, the `UserName` field is determined implicitly based on
    #   the Amazon Web Services access key used to sign the request.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSSHPublicKeysRequest AWS API Documentation
    #
    class ListSSHPublicKeysRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListSSHPublicKeys][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListSSHPublicKeys.html
    #
    # @!attribute [rw] ssh_public_keys
    #   A list of the SSH public keys assigned to IAM user.
    #   @return [Array<Types::SSHPublicKeyMetadata>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSSHPublicKeysResponse AWS API Documentation
    #
    class ListSSHPublicKeysResponse < Struct.new(
      :ssh_public_keys,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_certificate_name
    #   The name of the IAM server certificate whose tags you want to see.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServerCertificateTagsRequest AWS API Documentation
    #
    class ListServerCertificateTagsRequest < Struct.new(
      :server_certificate_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are currently attached to the IAM server
    #   certificate. Each tag consists of a key name and an associated
    #   value. If no tags are attached to the specified resource, the
    #   response contains an empty list.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServerCertificateTagsResponse AWS API Documentation
    #
    class ListServerCertificateTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. For example:
    #   `/company/servercerts` would get all server certificates for which
    #   the path starts with `/company/servercerts`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all server certificates. This parameter allows
    #   (through its [regex pattern][1]) a string of characters consisting
    #   of either a forward slash (/) by itself or a string that must begin
    #   and end with forward slashes. In addition, it can contain any ASCII
    #   character from the ! (`\u0021`) through the DEL character
    #   (`\u007F`), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServerCertificatesRequest AWS API Documentation
    #
    class ListServerCertificatesRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListServerCertificates][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListServerCertificates.html
    #
    # @!attribute [rw] server_certificate_metadata_list
    #   A list of server certificates.
    #   @return [Array<Types::ServerCertificateMetadata>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServerCertificatesResponse AWS API Documentation
    #
    class ListServerCertificatesResponse < Struct.new(
      :server_certificate_metadata_list,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user whose service-specific credentials you want
    #   information about. If this value is not specified, then the
    #   operation assumes the user whose credentials are used to call the
    #   operation.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   Filters the returned results to only those for the specified Amazon
    #   Web Services service. If not specified, then Amazon Web Services
    #   returns service-specific credentials for all services.
    #   @return [String]
    #
    # @!attribute [rw] all_users
    #   A flag indicating whether to list service specific credentials for
    #   all users. This parameter cannot be specified together with
    #   UserName. When true, returns all credentials associated with the
    #   specified service.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the Marker from the response that you received to
    #   indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the IsTruncated response element is true.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServiceSpecificCredentialsRequest AWS API Documentation
    #
    class ListServiceSpecificCredentialsRequest < Struct.new(
      :user_name,
      :service_name,
      :all_users,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_specific_credentials
    #   A list of structures that each contain details about a
    #   service-specific credential.
    #   @return [Array<Types::ServiceSpecificCredentialMetadata>]
    #
    # @!attribute [rw] marker
    #   When IsTruncated is true, this element is present and contains the
    #   value to use for the Marker parameter in a subsequent pagination
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the Marker request parameter to retrieve more items.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServiceSpecificCredentialsResponse AWS API Documentation
    #
    class ListServiceSpecificCredentialsResponse < Struct.new(
      :service_specific_credentials,
      :marker,
      :is_truncated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user whose signing certificates you want to
    #   examine.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSigningCertificatesRequest AWS API Documentation
    #
    class ListSigningCertificatesRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListSigningCertificates][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListSigningCertificates.html
    #
    # @!attribute [rw] certificates
    #   A list of the user's signing certificate information.
    #   @return [Array<Types::SigningCertificate>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSigningCertificatesResponse AWS API Documentation
    #
    class ListSigningCertificatesResponse < Struct.new(
      :certificates,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user to list policies for.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUserPoliciesRequest AWS API Documentation
    #
    class ListUserPoliciesRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListUserPolicies][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListUserPolicies.html
    #
    # @!attribute [rw] policy_names
    #   A list of policy names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUserPoliciesResponse AWS API Documentation
    #
    class ListUserPoliciesResponse < Struct.new(
      :policy_names,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user whose tags you want to see.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUserTagsRequest AWS API Documentation
    #
    class ListUserTagsRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are currently attached to the user. Each tag
    #   consists of a key name and an associated value. If no tags are
    #   attached to the specified resource, the response contains an empty
    #   list.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUserTagsResponse AWS API Documentation
    #
    class ListUserTagsResponse < Struct.new(
      :tags,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. For example:
    #   `/division_abc/subdivision_xyz/`, which would get all user names
    #   whose path starts with `/division_abc/subdivision_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all user names. This parameter allows (through
    #   its [regex pattern][1]) a string of characters consisting of either
    #   a forward slash (/) by itself or a string that must begin and end
    #   with forward slashes. In addition, it can contain any ASCII
    #   character from the ! (`\u0021`) through the DEL character
    #   (`\u007F`), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListUsers][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListUsers.html
    #
    # @!attribute [rw] users
    #   A list of users.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :users,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assignment_status
    #   The status (`Unassigned` or `Assigned`) of the devices to list. If
    #   you do not specify an `AssignmentStatus`, the operation defaults to
    #   `Any`, which lists both assigned and unassigned virtual MFA
    #   devices.,
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListVirtualMFADevicesRequest AWS API Documentation
    #
    class ListVirtualMFADevicesRequest < Struct.new(
      :assignment_status,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [ListVirtualMFADevices][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListVirtualMFADevices.html
    #
    # @!attribute [rw] virtual_mfa_devices
    #   The list of virtual MFA devices in the current account that match
    #   the `AssignmentStatus` value that was passed in the request.
    #   @return [Array<Types::VirtualMFADevice>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListVirtualMFADevicesResponse AWS API Documentation
    #
    class ListVirtualMFADevicesResponse < Struct.new(
      :virtual_mfa_devices,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the user name and password create date for a user.
    #
    # This data type is used as a response element in the
    # [CreateLoginProfile][1] and [GetLoginProfile][2] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateLoginProfile.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetLoginProfile.html
    #
    # @!attribute [rw] user_name
    #   The name of the user, which can be used for signing in to the Amazon
    #   Web Services Management Console.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date when the password for the user was created.
    #   @return [Time]
    #
    # @!attribute [rw] password_reset_required
    #   Specifies whether the user is required to set a new password on next
    #   sign-in.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/LoginProfile AWS API Documentation
    #
    class LoginProfile < Struct.new(
      :user_name,
      :create_date,
      :password_reset_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an MFA device.
    #
    # This data type is used as a response element in the
    # [ListMFADevices][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListMFADevices.html
    #
    # @!attribute [rw] user_name
    #   The user with whom the MFA device is associated.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number that uniquely identifies the MFA device. For
    #   virtual MFA devices, the serial number is the device ARN.
    #   @return [String]
    #
    # @!attribute [rw] enable_date
    #   The date when the MFA device was enabled for the user.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/MFADevice AWS API Documentation
    #
    class MFADevice < Struct.new(
      :user_name,
      :serial_number,
      :enable_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the certificate was malformed or
    # expired. The error message describes the specific error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/MalformedCertificateException AWS API Documentation
    #
    class MalformedCertificateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the policy document was malformed.
    # The error message describes the specific error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/MalformedPolicyDocumentException AWS API Documentation
    #
    class MalformedPolicyDocumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a managed policy, including the policy's
    # ARN, versions, and the number of principal entities (users, groups,
    # and roles) that the policy is attached to.
    #
    # This data type is used as a response element in the
    # [GetAccountAuthorizationDetails][1] operation.
    #
    # For more information about managed policies, see [Managed policies and
    # inline policies][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] policy_name
    #   The friendly name (not ARN) identifying the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The stable and unique string identifying the policy.
    #
    #   For more information about IDs, see [IAM identifiers][1] in the *IAM
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for
    #   Amazon Web Services resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the policy.
    #
    #   For more information about paths, see [IAM identifiers][1] in the
    #   *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] default_version_id
    #   The identifier for the version of the policy that is set as the
    #   default (operative) version.
    #
    #   For more information about policy versions, see [Versioning for
    #   managed policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #   @return [String]
    #
    # @!attribute [rw] attachment_count
    #   The number of principal entities (users, groups, and roles) that the
    #   policy is attached to.
    #   @return [Integer]
    #
    # @!attribute [rw] permissions_boundary_usage_count
    #   The number of entities (users and roles) for which the policy is
    #   used as the permissions boundary.
    #
    #   For more information about permissions boundaries, see [Permissions
    #   boundaries for IAM identities ][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   @return [Integer]
    #
    # @!attribute [rw] is_attachable
    #   Specifies whether the policy can be attached to an IAM user, group,
    #   or role.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A friendly description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   policy was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   policy was last updated.
    #
    #   When a policy has only one version, this field contains the date and
    #   time when the policy was created. When a policy has more than one
    #   version, this field contains the date and time when the most recent
    #   policy version was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] policy_version_list
    #   A list containing information about the versions of the policy.
    #   @return [Array<Types::PolicyVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ManagedPolicyDetail AWS API Documentation
    #
    class ManagedPolicyDetail < Struct.new(
      :policy_name,
      :policy_id,
      :arn,
      :path,
      :default_version_id,
      :attachment_count,
      :permissions_boundary_usage_count,
      :is_attachable,
      :description,
      :create_date,
      :update_date,
      :policy_version_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it referenced a resource entity that
    # does not exist. The error message describes the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/NoSuchEntityException AWS API Documentation
    #
    class NoSuchEntityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect
    # provider.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for
    #   Amazon Web Services resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/OpenIDConnectProviderListEntry AWS API Documentation
    #
    class OpenIDConnectProviderListEntry < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because IAM cannot connect to the OpenID Connect
    # identity provider URL.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/OpenIdIdpCommunicationErrorException AWS API Documentation
    #
    class OpenIdIdpCommunicationErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because no organization is associated with
    # your account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/OrganizationNotFoundException AWS API Documentation
    #
    class OrganizationNotFoundException < Aws::EmptyStructure; end

    # The request was rejected because your organization does not have All
    # features enabled. For more information, see [Available feature
    # sets][1] in the *Organizations User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/OrganizationNotInAllFeaturesModeException AWS API Documentation
    #
    class OrganizationNotInAllFeaturesModeException < Aws::EmptyStructure; end

    # Contains information about the effect that Organizations has on a
    # policy simulation.
    #
    # @!attribute [rw] allowed_by_organizations
    #   Specifies whether the simulated operation is allowed by the
    #   Organizations service control policies that impact the simulated
    #   user's account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/OrganizationsDecisionDetail AWS API Documentation
    #
    class OrganizationsDecisionDetail < Struct.new(
      :allowed_by_organizations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the account password policy.
    #
    # This data type is used as a response element in the
    # [GetAccountPasswordPolicy][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountPasswordPolicy.html
    #
    # @!attribute [rw] minimum_password_length
    #   Minimum length to require for IAM user passwords.
    #   @return [Integer]
    #
    # @!attribute [rw] require_symbols
    #   Specifies whether IAM user passwords must contain at least one of
    #   the following symbols:
    #
    #   ! @ # $ % ^ &amp; * ( ) \_ + - = \[ \] \{ } \| '
    #   @return [Boolean]
    #
    # @!attribute [rw] require_numbers
    #   Specifies whether IAM user passwords must contain at least one
    #   numeric character (0 to 9).
    #   @return [Boolean]
    #
    # @!attribute [rw] require_uppercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   uppercase character (A to Z).
    #   @return [Boolean]
    #
    # @!attribute [rw] require_lowercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   lowercase character (a to z).
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_users_to_change_password
    #   Specifies whether IAM users are allowed to change their own
    #   password. Gives IAM users permissions to `iam:ChangePassword` for
    #   only their user and to the `iam:GetAccountPasswordPolicy` action.
    #   This option does not attach a permissions policy to each user,
    #   rather the permissions are applied at the account-level for all
    #   users by IAM.
    #   @return [Boolean]
    #
    # @!attribute [rw] expire_passwords
    #   Indicates whether passwords in the account expire. Returns true if
    #   `MaxPasswordAge` contains a value greater than 0. Returns false if
    #   MaxPasswordAge is 0 or not present.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_password_age
    #   The number of days that an IAM user password is valid.
    #   @return [Integer]
    #
    # @!attribute [rw] password_reuse_prevention
    #   Specifies the number of previous passwords that IAM users are
    #   prevented from reusing.
    #   @return [Integer]
    #
    # @!attribute [rw] hard_expiry
    #   Specifies whether IAM users are prevented from setting a new
    #   password via the Amazon Web Services Management Console after their
    #   password has expired. The IAM user cannot access the console until
    #   an administrator resets the password. IAM users with
    #   `iam:ChangePassword` permission and active access keys can reset
    #   their own expired console password using the CLI or API.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PasswordPolicy AWS API Documentation
    #
    class PasswordPolicy < Struct.new(
      :minimum_password_length,
      :require_symbols,
      :require_numbers,
      :require_uppercase_characters,
      :require_lowercase_characters,
      :allow_users_to_change_password,
      :expire_passwords,
      :max_password_age,
      :password_reuse_prevention,
      :hard_expiry)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the provided password did not meet
    # the requirements imposed by the account password policy.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PasswordPolicyViolationException AWS API Documentation
    #
    class PasswordPolicyViolationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the effect that a permissions boundary has
    # on a policy simulation when the boundary is applied to an IAM entity.
    #
    # @!attribute [rw] allowed_by_permissions_boundary
    #   Specifies whether an action is allowed by a permissions boundary
    #   that is applied to an IAM entity (user or role). A value of `true`
    #   means that the permissions boundary does not deny the action. This
    #   means that the policy includes an `Allow` statement that matches the
    #   request. In this case, if an identity-based policy also allows the
    #   action, the request is allowed. A value of `false` means that either
    #   the requested action is not allowed (implicitly denied) or that the
    #   action is explicitly denied by the permissions boundary. In both of
    #   these cases, the action is not allowed, regardless of the
    #   identity-based policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PermissionsBoundaryDecisionDetail AWS API Documentation
    #
    class PermissionsBoundaryDecisionDetail < Struct.new(
      :allowed_by_permissions_boundary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a managed policy.
    #
    # This data type is used as a response element in the [CreatePolicy][1],
    # [GetPolicy][2], and [ListPolicies][3] operations.
    #
    # For more information about managed policies, refer to [Managed
    # policies and inline policies][4] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicies.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] policy_name
    #   The friendly name (not ARN) identifying the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The stable and unique string identifying the policy.
    #
    #   For more information about IDs, see [IAM identifiers][1] in the *IAM
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for
    #   Amazon Web Services resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the policy.
    #
    #   For more information about paths, see [IAM identifiers][1] in the
    #   *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] default_version_id
    #   The identifier for the version of the policy that is set as the
    #   default version.
    #   @return [String]
    #
    # @!attribute [rw] attachment_count
    #   The number of entities (users, groups, and roles) that the policy is
    #   attached to.
    #   @return [Integer]
    #
    # @!attribute [rw] permissions_boundary_usage_count
    #   The number of entities (users and roles) for which the policy is
    #   used to set the permissions boundary.
    #
    #   For more information about permissions boundaries, see [Permissions
    #   boundaries for IAM identities ][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   @return [Integer]
    #
    # @!attribute [rw] is_attachable
    #   Specifies whether the policy can be attached to an IAM user, group,
    #   or role.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A friendly description of the policy.
    #
    #   This element is included in the response to the [GetPolicy][1]
    #   operation. It is not included in the response to the
    #   [ListPolicies][2] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicy.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicies.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   policy was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   policy was last updated.
    #
    #   When a policy has only one version, this field contains the date and
    #   time when the policy was created. When a policy has more than one
    #   version, this field contains the date and time when the most recent
    #   policy version was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the instance profile. For more
    #   information about tagging, see [Tagging IAM resources][1] in the
    #   *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Policy AWS API Documentation
    #
    class Policy < Struct.new(
      :policy_name,
      :policy_id,
      :arn,
      :path,
      :default_version_id,
      :attachment_count,
      :permissions_boundary_usage_count,
      :is_attachable,
      :description,
      :create_date,
      :update_date,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an IAM policy, including the policy
    # document.
    #
    # This data type is used as a response element in the
    # [GetAccountAuthorizationDetails][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyDetail AWS API Documentation
    #
    class PolicyDetail < Struct.new(
      :policy_name,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because a provided policy could not be successfully
    # evaluated. An additional detailed message indicates the source of the
    # failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyEvaluationException AWS API Documentation
    #
    class PolicyEvaluationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the permissions policies that are attached to
    # the specified identity (user, group, or role).
    #
    # This data type is an element of the
    # [ListPoliciesGrantingServiceAccessEntry][1] object.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPoliciesGrantingServiceAccessEntry.html
    #
    # @!attribute [rw] policy_name
    #   The policy name.
    #   @return [String]
    #
    # @!attribute [rw] policy_type
    #   The policy type. For more information about these policy types, see
    #   [Managed policies and inline policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for
    #   Amazon Web Services resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   The type of entity (user or role) that used the policy to access the
    #   service to which the inline policy is attached.
    #
    #   This field is null for managed policies. For more information about
    #   these policy types, see [Managed policies and inline policies][1] in
    #   the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html
    #   @return [String]
    #
    # @!attribute [rw] entity_name
    #   The name of the entity (user or role) to which the inline policy is
    #   attached.
    #
    #   This field is null for managed policies. For more information about
    #   these policy types, see [Managed policies and inline policies][1] in
    #   the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyGrantingServiceAccess AWS API Documentation
    #
    class PolicyGrantingServiceAccess < Struct.new(
      :policy_name,
      :policy_type,
      :policy_arn,
      :entity_type,
      :entity_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a group that a managed policy is attached
    # to.
    #
    # This data type is used as a response element in the
    # [ListEntitiesForPolicy][1] operation.
    #
    # For more information about managed policies, refer to [Managed
    # policies and inline policies][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] group_name
    #   The name (friendly name, not ARN) identifying the group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The stable and unique string identifying the group. For more
    #   information about IDs, see [IAM identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyGroup AWS API Documentation
    #
    class PolicyGroup < Struct.new(
      :group_name,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because Amazon Web Services service role policies
    # can only be attached to the service-linked role for that service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyNotAttachableException AWS API Documentation
    #
    class PolicyNotAttachableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a role that a managed policy is attached
    # to.
    #
    # This data type is used as a response element in the
    # [ListEntitiesForPolicy][1] operation.
    #
    # For more information about managed policies, refer to [Managed
    # policies and inline policies][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) identifying the role.
    #   @return [String]
    #
    # @!attribute [rw] role_id
    #   The stable and unique string identifying the role. For more
    #   information about IDs, see [IAM identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyRole AWS API Documentation
    #
    class PolicyRole < Struct.new(
      :role_name,
      :role_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a user that a managed policy is attached
    # to.
    #
    # This data type is used as a response element in the
    # [ListEntitiesForPolicy][1] operation.
    #
    # For more information about managed policies, refer to [Managed
    # policies and inline policies][2] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListEntitiesForPolicy.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) identifying the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The stable and unique string identifying the user. For more
    #   information about IDs, see [IAM identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyUser AWS API Documentation
    #
    class PolicyUser < Struct.new(
      :user_name,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a version of a managed policy.
    #
    # This data type is used as a response element in the
    # [CreatePolicyVersion][1], [GetPolicyVersion][2],
    # [ListPolicyVersions][3], and [GetAccountAuthorizationDetails][4]
    # operations.
    #
    # For more information about managed policies, refer to [Managed
    # policies and inline policies][5] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicyVersion.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html
    # [5]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] document
    #   The policy document.
    #
    #   The policy document is returned in the response to the
    #   [GetPolicyVersion][1] and [GetAccountAuthorizationDetails][2]
    #   operations. It is not returned in the response to the
    #   [CreatePolicyVersion][3] or [ListPolicyVersions][4] operations.
    #
    #   The policy document returned in this structure is URL-encoded
    #   compliant with [RFC 3986][5]. You can use a URL decoding method to
    #   convert the policy back to plain JSON text. For example, if you use
    #   Java, you can use the `decode` method of the `java.net.URLDecoder`
    #   utility class in the Java SDK. Other languages and SDKs provide
    #   similar functionality.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetPolicyVersion.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html
    #   [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicyVersion.html
    #   [4]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListPolicyVersions.html
    #   [5]: https://tools.ietf.org/html/rfc3986
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The identifier for the policy version.
    #
    #   Policy version identifiers always begin with `v` (always lowercase).
    #   When a policy is created, the first policy version is `v1`.
    #   @return [String]
    #
    # @!attribute [rw] is_default_version
    #   Specifies whether the policy version is set as the policy's default
    #   version.
    #   @return [Boolean]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   policy version was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyVersion AWS API Documentation
    #
    class PolicyVersion < Struct.new(
      :document,
      :version_id,
      :is_default_version,
      :create_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the row and column of a location of a `Statement` element in
    # a policy document.
    #
    # This data type is used as a member of the ` Statement ` type.
    #
    # @!attribute [rw] line
    #   The line containing the specified position in the document.
    #   @return [Integer]
    #
    # @!attribute [rw] column
    #   The column in the line containing the specified position in the
    #   document.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Position AWS API Documentation
    #
    class Position < Struct.new(
      :line,
      :column)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group to associate the policy with.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #
    #   You must provide policies in JSON format in IAM. However, for
    #   CloudFormation templates formatted in YAML, you can provide the
    #   policy in JSON or YAML format. CloudFormation always converts a YAML
    #   policy to JSON format before submitting it to IAM.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutGroupPolicyRequest AWS API Documentation
    #
    class PutGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_name,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) of the IAM role for which you want
    #   to set the permissions boundary.
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary
    #   The ARN of the managed policy that is used to set the permissions
    #   boundary for the role.
    #
    #   A permissions boundary policy defines the maximum permissions that
    #   identity-based policies can grant to an entity, but does not grant
    #   permissions. Permissions boundaries do not define the maximum
    #   permissions that a resource-based policy can grant to an entity. To
    #   learn more, see [Permissions boundaries for IAM entities][1] in the
    #   *IAM User Guide*.
    #
    #   For more information about policy types, see [Policy types ][2] in
    #   the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutRolePermissionsBoundaryRequest AWS API Documentation
    #
    class PutRolePermissionsBoundaryRequest < Struct.new(
      :role_name,
      :permissions_boundary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the role to associate the policy with.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #
    #   You must provide policies in JSON format in IAM. However, for
    #   CloudFormation templates formatted in YAML, you can provide the
    #   policy in JSON or YAML format. CloudFormation always converts a YAML
    #   policy to JSON format before submitting it to IAM.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutRolePolicyRequest AWS API Documentation
    #
    class PutRolePolicyRequest < Struct.new(
      :role_name,
      :policy_name,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) of the IAM user for which you want
    #   to set the permissions boundary.
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary
    #   The ARN of the managed policy that is used to set the permissions
    #   boundary for the user.
    #
    #   A permissions boundary policy defines the maximum permissions that
    #   identity-based policies can grant to an entity, but does not grant
    #   permissions. Permissions boundaries do not define the maximum
    #   permissions that a resource-based policy can grant to an entity. To
    #   learn more, see [Permissions boundaries for IAM entities][1] in the
    #   *IAM User Guide*.
    #
    #   For more information about policy types, see [Policy types ][2] in
    #   the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutUserPermissionsBoundaryRequest AWS API Documentation
    #
    class PutUserPermissionsBoundaryRequest < Struct.new(
      :user_name,
      :permissions_boundary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user to associate the policy with.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #
    #   You must provide policies in JSON format in IAM. However, for
    #   CloudFormation templates formatted in YAML, you can provide the
    #   policy in JSON or YAML format. CloudFormation always converts a YAML
    #   policy to JSON format before submitting it to IAM.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutUserPolicyRequest AWS API Documentation
    #
    class PutUserPolicyRequest < Struct.new(
      :user_name,
      :policy_name,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OIDC provider resource to
    #   remove the client ID from. You can get a list of OIDC provider ARNs
    #   by using the [ListOpenIDConnectProviders][1] operation.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][2] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID (also known as audience) to remove from the IAM OIDC
    #   provider resource. For more information about client IDs, see
    #   [CreateOpenIDConnectProvider][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveClientIDFromOpenIDConnectProviderRequest AWS API Documentation
    #
    class RemoveClientIDFromOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile to update.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the role to remove.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveRoleFromInstanceProfileRequest AWS API Documentation
    #
    class RemoveRoleFromInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group to update.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user to remove.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveUserFromGroupRequest AWS API Documentation
    #
    class RemoveUserFromGroupRequest < Struct.new(
      :group_name,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because the maximum number of concurrent requests
    # for this account are already running.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ReportGenerationLimitExceededException AWS API Documentation
    #
    class ReportGenerationLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the service-specific
    #   credential. If this value is not specified, then the operation
    #   assumes the user whose credentials are used to call the operation.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] service_specific_credential_id
    #   The unique identifier of the service-specific credential.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResetServiceSpecificCredentialRequest AWS API Documentation
    #
    class ResetServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_specific_credential_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_specific_credential
    #   A structure with details about the updated service-specific
    #   credential, including the new password.
    #
    #   This is the **only** time that you can access the password. You
    #   cannot recover the password later, but you can reset it again.
    #   @return [Types::ServiceSpecificCredential]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResetServiceSpecificCredentialResponse AWS API Documentation
    #
    class ResetServiceSpecificCredentialResponse < Struct.new(
      :service_specific_credential)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result of the simulation of a single API operation call
    # on a single resource.
    #
    # This data type is used by a member of the [EvaluationResult][1] data
    # type.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_EvaluationResult.html
    #
    # @!attribute [rw] eval_resource_name
    #   The name of the simulated resource, in Amazon Resource Name (ARN)
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] eval_resource_decision
    #   The result of the simulation of the simulated API operation on the
    #   resource specified in `EvalResourceName`.
    #   @return [String]
    #
    # @!attribute [rw] matched_statements
    #   A list of the statements in the input policies that determine the
    #   result for this part of the simulation. Remember that even if
    #   multiple statements allow the operation on the resource, if *any*
    #   statement denies that operation, then the explicit deny overrides
    #   any allow. In addition, the deny statement is the only entry
    #   included in the result.
    #   @return [Array<Types::Statement>]
    #
    # @!attribute [rw] missing_context_values
    #   A list of context keys that are required by the included input
    #   policies but that were not provided by one of the input parameters.
    #   This list is used when a list of ARNs is included in the
    #   `ResourceArns` parameter instead of "*". If you do not specify
    #   individual resources, by setting `ResourceArns` to "*" or by not
    #   including the `ResourceArns` parameter, then any missing context
    #   values are instead included under the `EvaluationResults` section.
    #   To discover the context keys used by a set of policies, you can call
    #   [GetContextKeysForCustomPolicy][1] or
    #   [GetContextKeysForPrincipalPolicy][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForCustomPolicy.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetContextKeysForPrincipalPolicy.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] eval_decision_details
    #   Additional details about the results of the evaluation decision on a
    #   single resource. This parameter is returned only for cross-account
    #   simulations. This parameter explains how each policy type
    #   contributes to the resource-specific evaluation decision.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] permissions_boundary_decision_detail
    #   Contains information about the effect that a permissions boundary
    #   has on a policy simulation when that boundary is applied to an IAM
    #   entity.
    #   @return [Types::PermissionsBoundaryDecisionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResourceSpecificResult AWS API Documentation
    #
    class ResourceSpecificResult < Struct.new(
      :eval_resource_name,
      :eval_resource_decision,
      :matched_statements,
      :missing_context_values,
      :eval_decision_details,
      :permissions_boundary_decision_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user whose MFA device you want to resynchronize.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   Serial number that uniquely identifies the MFA device.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] authentication_code_1
    #   An authentication code emitted by the device.
    #
    #   The format for this parameter is a sequence of six digits.
    #   @return [String]
    #
    # @!attribute [rw] authentication_code_2
    #   A subsequent authentication code emitted by the device.
    #
    #   The format for this parameter is a sequence of six digits.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResyncMFADeviceRequest AWS API Documentation
    #
    class ResyncMFADeviceRequest < Struct.new(
      :user_name,
      :serial_number,
      :authentication_code_1,
      :authentication_code_2)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an IAM role. This structure is returned as
    # a response element in several API operations that interact with roles.
    #
    # @!attribute [rw] path
    #   The path to the role. For more information about paths, see [IAM
    #   identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The friendly name that identifies the role.
    #   @return [String]
    #
    # @!attribute [rw] role_id
    #   The stable and unique string identifying the role. For more
    #   information about IDs, see [IAM identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) specifying the role. For more
    #   information about ARNs and how to use them in policies, see [IAM
    #   identifiers][1] in the *IAM User Guide* guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the role
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] assume_role_policy_document
    #   The policy that grants an entity permission to assume the role.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the role that you provide.
    #   @return [String]
    #
    # @!attribute [rw] max_session_duration
    #   The maximum session duration (in seconds) for the specified role.
    #   Anyone who uses the CLI, or API to assume the role can specify the
    #   duration using the optional `DurationSeconds` API parameter or
    #   `duration-seconds` CLI parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] permissions_boundary
    #   The ARN of the policy used to set the permissions boundary for the
    #   role.
    #
    #   For more information about permissions boundaries, see [Permissions
    #   boundaries for IAM identities ][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   @return [Types::AttachedPermissionsBoundary]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the role. For more information
    #   about tagging, see [Tagging IAM resources][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] role_last_used
    #   Contains information about the last time that an IAM role was used.
    #   This includes the date and time and the Region in which the role was
    #   last used. Activity is only reported for the trailing 400 days. This
    #   period can be shorter if your Region began supporting these features
    #   within the last year. The role might have been used more than 400
    #   days ago. For more information, see [Regions where data is
    #   tracked][1] in the *IAM user Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period
    #   @return [Types::RoleLastUsed]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Role AWS API Documentation
    #
    class Role < Struct.new(
      :path,
      :role_name,
      :role_id,
      :arn,
      :create_date,
      :assume_role_policy_document,
      :description,
      :max_session_duration,
      :permissions_boundary,
      :tags,
      :role_last_used)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an IAM role, including all of the role's
    # policies.
    #
    # This data type is used as a response element in the
    # [GetAccountAuthorizationDetails][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html
    #
    # @!attribute [rw] path
    #   The path to the role. For more information about paths, see [IAM
    #   identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The friendly name that identifies the role.
    #   @return [String]
    #
    # @!attribute [rw] role_id
    #   The stable and unique string identifying the role. For more
    #   information about IDs, see [IAM identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for
    #   Amazon Web Services resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the role
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] assume_role_policy_document
    #   The trust policy that grants permission to assume the role.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_list
    #   A list of instance profiles that contain this role.
    #   @return [Array<Types::InstanceProfile>]
    #
    # @!attribute [rw] role_policy_list
    #   A list of inline policies embedded in the role. These policies are
    #   the role's access (permissions) policies.
    #   @return [Array<Types::PolicyDetail>]
    #
    # @!attribute [rw] attached_managed_policies
    #   A list of managed policies attached to the role. These policies are
    #   the role's access (permissions) policies.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @!attribute [rw] permissions_boundary
    #   The ARN of the policy used to set the permissions boundary for the
    #   role.
    #
    #   For more information about permissions boundaries, see [Permissions
    #   boundaries for IAM identities ][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   @return [Types::AttachedPermissionsBoundary]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the role. For more information
    #   about tagging, see [Tagging IAM resources][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] role_last_used
    #   Contains information about the last time that an IAM role was used.
    #   This includes the date and time and the Region in which the role was
    #   last used. Activity is only reported for the trailing 400 days. This
    #   period can be shorter if your Region began supporting these features
    #   within the last year. The role might have been used more than 400
    #   days ago. For more information, see [Regions where data is
    #   tracked][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period
    #   @return [Types::RoleLastUsed]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RoleDetail AWS API Documentation
    #
    class RoleDetail < Struct.new(
      :path,
      :role_name,
      :role_id,
      :arn,
      :create_date,
      :assume_role_policy_document,
      :instance_profile_list,
      :role_policy_list,
      :attached_managed_policies,
      :permissions_boundary,
      :tags,
      :role_last_used)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the last time that an IAM role was used.
    # This includes the date and time and the Region in which the role was
    # last used. Activity is only reported for the trailing 400 days. This
    # period can be shorter if your Region began supporting these features
    # within the last year. The role might have been used more than 400 days
    # ago. For more information, see [Regions where data is tracked][1] in
    # the *IAM user Guide*.
    #
    # This data type is returned as a response element in the [GetRole][2]
    # and [GetAccountAuthorizationDetails][3] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetRole.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html
    #
    # @!attribute [rw] last_used_date
    #   The date and time, in [ISO 8601 date-time format][1] that the role
    #   was last used.
    #
    #   This field is null if the role has not been used within the IAM
    #   tracking period. For more information about the tracking period, see
    #   [Regions where data is tracked][2] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period
    #   @return [Time]
    #
    # @!attribute [rw] region
    #   The name of the Amazon Web Services Region in which the role was
    #   last used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RoleLastUsed AWS API Documentation
    #
    class RoleLastUsed < Struct.new(
      :last_used_date,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains details about how a service-linked role is
    # used, if that information is returned by the service.
    #
    # This data type is used as a response element in the
    # [GetServiceLinkedRoleDeletionStatus][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLinkedRoleDeletionStatus.html
    #
    # @!attribute [rw] region
    #   The name of the Region where the service-linked role is being used.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The name of the resource that is using the service-linked role.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RoleUsageType AWS API Documentation
    #
    class RoleUsageType < Struct.new(
      :region,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the private keys for the SAML provider.
    #
    # This data type is used as a response element in the
    # [GetSAMLProvider][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetSAMLProvider.html
    #
    # @!attribute [rw] key_id
    #   The unique identifier for the SAML private key.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time, in [ISO 8601 date-time ][1] format, when the
    #   private key was uploaded.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SAMLPrivateKey AWS API Documentation
    #
    class SAMLPrivateKey < Struct.new(
      :key_id,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of SAML providers for this account.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the SAML provider.
    #   @return [String]
    #
    # @!attribute [rw] valid_until
    #   The expiration date and time for the SAML provider.
    #   @return [Time]
    #
    # @!attribute [rw] create_date
    #   The date and time when the SAML provider was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SAMLProviderListEntry AWS API Documentation
    #
    class SAMLProviderListEntry < Struct.new(
      :arn,
      :valid_until,
      :create_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an SSH public key.
    #
    # This data type is used as a response element in the
    # [GetSSHPublicKey][1] and [UploadSSHPublicKey][2] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetSSHPublicKey.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadSSHPublicKey.html
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] fingerprint
    #   The MD5 message digest of the SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_body
    #   The SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the SSH public key. `Active` means that the key can be
    #   used for authentication with an CodeCommit repository. `Inactive`
    #   means that the key cannot be used.
    #   @return [String]
    #
    # @!attribute [rw] upload_date
    #   The date and time, in [ISO 8601 date-time format][1], when the SSH
    #   public key was uploaded.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SSHPublicKey AWS API Documentation
    #
    class SSHPublicKey < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :fingerprint,
      :ssh_public_key_body,
      :status,
      :upload_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an SSH public key, without the key's body
    # or fingerprint.
    #
    # This data type is used as a response element in the
    # [ListSSHPublicKeys][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListSSHPublicKeys.html
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the SSH public key. `Active` means that the key can be
    #   used for authentication with an CodeCommit repository. `Inactive`
    #   means that the key cannot be used.
    #   @return [String]
    #
    # @!attribute [rw] upload_date
    #   The date and time, in [ISO 8601 date-time format][1], when the SSH
    #   public key was uploaded.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SSHPublicKeyMetadata AWS API Documentation
    #
    class SSHPublicKeyMetadata < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :status,
      :upload_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a server certificate.
    #
    # This data type is used as a response element in the
    # [GetServerCertificate][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServerCertificate.html
    #
    # @!attribute [rw] server_certificate_metadata
    #   The meta information of the server certificate, such as its name,
    #   path, ID, and ARN.
    #   @return [Types::ServerCertificateMetadata]
    #
    # @!attribute [rw] certificate_body
    #   The contents of the public key certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The contents of the public key certificate chain.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the server certificate. For more
    #   information about tagging, see [Tagging IAM resources][1] in the
    #   *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServerCertificate AWS API Documentation
    #
    class ServerCertificate < Struct.new(
      :server_certificate_metadata,
      :certificate_body,
      :certificate_chain,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a server certificate without its
    # certificate body, certificate chain, and private key.
    #
    # This data type is used as a response element in the
    # [UploadServerCertificate][1] and [ListServerCertificates][2]
    # operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadServerCertificate.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListServerCertificates.html
    #
    # @!attribute [rw] path
    #   The path to the server certificate. For more information about
    #   paths, see [IAM identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] server_certificate_name
    #   The name that identifies the server certificate.
    #   @return [String]
    #
    # @!attribute [rw] server_certificate_id
    #   The stable and unique string identifying the server certificate. For
    #   more information about IDs, see [IAM identifiers][1] in the *IAM
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) specifying the server certificate.
    #   For more information about ARNs and how to use them in policies, see
    #   [IAM identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] upload_date
    #   The date when the server certificate was uploaded.
    #   @return [Time]
    #
    # @!attribute [rw] expiration
    #   The date on which the certificate is set to expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServerCertificateMetadata AWS API Documentation
    #
    class ServerCertificateMetadata < Struct.new(
      :path,
      :server_certificate_name,
      :server_certificate_id,
      :arn,
      :upload_date,
      :expiration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because trusted access is not enabled for IAM
    # in Organizations. For details, see IAM and Organizations in the
    # *Organizations User Guide*.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServiceAccessNotEnabledException AWS API Documentation
    #
    class ServiceAccessNotEnabledException < Aws::EmptyStructure; end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServiceFailureException AWS API Documentation
    #
    class ServiceFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the most recent attempt to access the service.
    #
    # This data type is used as a response element in the
    # [GetServiceLastAccessedDetails][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html
    #
    # @!attribute [rw] service_name
    #   The name of the service in which access was attempted.
    #   @return [String]
    #
    # @!attribute [rw] last_authenticated
    #   The date and time, in [ISO 8601 date-time format][1], when an
    #   authenticated entity most recently attempted to access the service.
    #   Amazon Web Services does not report unauthenticated requests.
    #
    #   This field is null if no IAM entities attempted to access the
    #   service within the [tracking period][2].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   @return [Time]
    #
    # @!attribute [rw] service_namespace
    #   The namespace of the service in which access was attempted.
    #
    #   To learn the service namespace of a service, see [Actions,
    #   resources, and condition keys for Amazon Web Services services][1]
    #   in the *Service Authorization Reference*. Choose the name of the
    #   service to view details for that service. In the first paragraph,
    #   find the service prefix. For example, `(service prefix: a4b)`. For
    #   more information about service namespaces, see [Amazon Web Services
    #   Service Namespaces][2] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   @return [String]
    #
    # @!attribute [rw] last_authenticated_entity
    #   The ARN of the authenticated entity (user or role) that last
    #   attempted to access the service. Amazon Web Services does not report
    #   unauthenticated requests.
    #
    #   This field is null if no IAM entities attempted to access the
    #   service within the [tracking period][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   @return [String]
    #
    # @!attribute [rw] last_authenticated_region
    #   The Region from which the authenticated entity (user or role) last
    #   attempted to access the service. Amazon Web Services does not report
    #   unauthenticated requests.
    #
    #   This field is null if no IAM entities attempted to access the
    #   service within the [tracking period][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   @return [String]
    #
    # @!attribute [rw] total_authenticated_entities
    #   The total number of authenticated principals (root user, IAM users,
    #   or IAM roles) that have attempted to access the service.
    #
    #   This field is null if no principals attempted to access the service
    #   within the [tracking period][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   @return [Integer]
    #
    # @!attribute [rw] tracked_actions_last_accessed
    #   An object that contains details about the most recent attempt to
    #   access a tracked action within the service.
    #
    #   This field is null if there no tracked actions or if the principal
    #   did not use the tracked actions within the [tracking period][1].
    #   This field is also null if the report was generated at the service
    #   level and not the action level. For more information, see the
    #   `Granularity` field in [GenerateServiceLastAccessedDetails][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateServiceLastAccessedDetails.html
    #   @return [Array<Types::TrackedActionLastAccessed>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServiceLastAccessed AWS API Documentation
    #
    class ServiceLastAccessed < Struct.new(
      :service_name,
      :last_authenticated,
      :service_namespace,
      :last_authenticated_entity,
      :last_authenticated_region,
      :total_authenticated_entities,
      :tracked_actions_last_accessed)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified service does not support service-specific credentials.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServiceNotSupportedException AWS API Documentation
    #
    class ServiceNotSupportedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of a service-specific credential.
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   service-specific credential were created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The date and time when the service specific credential expires. This
    #   field is only present for Bedrock API keys that were created with an
    #   expiration period.
    #   @return [Time]
    #
    # @!attribute [rw] service_name
    #   The name of the service associated with the service-specific
    #   credential.
    #   @return [String]
    #
    # @!attribute [rw] service_user_name
    #   The generated user name for the service-specific credential. This
    #   value is generated by combining the IAM user's name combined with
    #   the ID number of the Amazon Web Services account, as in
    #   `jane-at-123456789012`, for example. This value cannot be configured
    #   by the user.
    #   @return [String]
    #
    # @!attribute [rw] service_password
    #   The generated password for the service-specific credential.
    #   @return [String]
    #
    # @!attribute [rw] service_credential_alias
    #   For Bedrock API keys, this is the public portion of the credential
    #   that includes the IAM user name and a suffix containing version and
    #   creation information.
    #   @return [String]
    #
    # @!attribute [rw] service_credential_secret
    #   For Bedrock API keys, this is the secret portion of the credential
    #   that should be used to authenticate API calls. This value is
    #   returned only when the credential is created.
    #   @return [String]
    #
    # @!attribute [rw] service_specific_credential_id
    #   The unique identifier for the service-specific credential.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the service-specific
    #   credential.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service-specific credential. `Active` means that
    #   the key is valid for API calls, while `Inactive` means it is not.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServiceSpecificCredential AWS API Documentation
    #
    class ServiceSpecificCredential < Struct.new(
      :create_date,
      :expiration_date,
      :service_name,
      :service_user_name,
      :service_password,
      :service_credential_alias,
      :service_credential_secret,
      :service_specific_credential_id,
      :user_name,
      :status)
      SENSITIVE = [:service_password, :service_credential_secret]
      include Aws::Structure
    end

    # Contains additional details about a service-specific credential.
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the service-specific
    #   credential.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service-specific credential. `Active` means that
    #   the key is valid for API calls, while `Inactive` means it is not.
    #   @return [String]
    #
    # @!attribute [rw] service_user_name
    #   The generated user name for the service-specific credential.
    #   @return [String]
    #
    # @!attribute [rw] service_credential_alias
    #   For Bedrock API keys, this is the public portion of the credential
    #   that includes the IAM user name and a suffix containing version and
    #   creation information.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   service-specific credential were created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] expiration_date
    #   The date and time when the service specific credential expires. This
    #   field is only present for Bedrock API keys that were created with an
    #   expiration period.
    #   @return [Time]
    #
    # @!attribute [rw] service_specific_credential_id
    #   The unique identifier for the service-specific credential.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service associated with the service-specific
    #   credential.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServiceSpecificCredentialMetadata AWS API Documentation
    #
    class ServiceSpecificCredentialMetadata < Struct.new(
      :user_name,
      :status,
      :service_user_name,
      :service_credential_alias,
      :create_date,
      :expiration_date,
      :service_specific_credential_id,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy whose default
    #   version you want to set.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the policy to set as the default (operative) version.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for managed policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SetDefaultPolicyVersionRequest AWS API Documentation
    #
    class SetDefaultPolicyVersionRequest < Struct.new(
      :policy_arn,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] global_endpoint_token_version
    #   The version of the global endpoint token. Version 1 tokens are valid
    #   only in Amazon Web Services Regions that are available by default.
    #   These tokens do not work in manually enabled Regions, such as Asia
    #   Pacific (Hong Kong). Version 2 tokens are valid in all Regions.
    #   However, version 2 tokens are longer and might affect systems where
    #   you temporarily store tokens.
    #
    #   For information, see [Activating and deactivating STS in an Amazon
    #   Web Services Region][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SetSecurityTokenServicePreferencesRequest AWS API Documentation
    #
    class SetSecurityTokenServicePreferencesRequest < Struct.new(
      :global_endpoint_token_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an X.509 signing certificate.
    #
    # This data type is used as a response element in the
    # [UploadSigningCertificate][1] and [ListSigningCertificates][2]
    # operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadSigningCertificate.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListSigningCertificates.html
    #
    # @!attribute [rw] user_name
    #   The name of the user the signing certificate is associated with.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID for the signing certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_body
    #   The contents of the signing certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the signing certificate. `Active` means that the key
    #   is valid for API calls, while `Inactive` means it is not.
    #   @return [String]
    #
    # @!attribute [rw] upload_date
    #   The date when the signing certificate was uploaded.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SigningCertificate AWS API Documentation
    #
    class SigningCertificate < Struct.new(
      :user_name,
      :certificate_id,
      :certificate_body,
      :status,
      :upload_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_input_list
    #   A list of policy documents to include in the simulation. Each
    #   document is specified as a string containing the complete, valid
    #   JSON text of an IAM policy. Do not include any resource-based
    #   policies in this parameter. Any resource-based policy must be
    #   submitted with the `ResourcePolicy` parameter. The policies cannot
    #   be "scope-down" policies, such as you could include in a call to
    #   [GetFederationToken][1] or one of the [AssumeRole][2] API
    #   operations. In other words, do not use policies designed to restrict
    #   what a user can do while using the temporary credentials.
    #
    #   The maximum length of the policy document that you can pass in this
    #   operation, including whitespace, is listed below. To view the
    #   maximum character counts of a managed policy with no whitespaces,
    #   see [IAM and STS character quotas][3].
    #
    #   The [regex pattern][4] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html
    #   [3]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length
    #   [4]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @!attribute [rw] permissions_boundary_policy_input_list
    #   The IAM permissions boundary policy to simulate. The permissions
    #   boundary sets the maximum permissions that an IAM entity can have.
    #   You can input only one permissions boundary when you pass a policy
    #   to this operation. For more information about permissions
    #   boundaries, see [Permissions boundaries for IAM entities][1] in the
    #   *IAM User Guide*. The policy input is specified as a string that
    #   contains the complete, valid JSON text of a permissions boundary
    #   policy.
    #
    #   The maximum length of the policy document that you can pass in this
    #   operation, including whitespace, is listed below. To view the
    #   maximum character counts of a managed policy with no whitespaces,
    #   see [IAM and STS character quotas][2].
    #
    #   The [regex pattern][3] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length
    #   [3]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @!attribute [rw] action_names
    #   A list of names of API operations to evaluate in the simulation.
    #   Each operation is evaluated against each resource. Each operation
    #   must include the service identifier, such as `iam:CreateUser`. This
    #   operation does not support using wildcards (*) in an action name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arns
    #   A list of ARNs of Amazon Web Services resources to include in the
    #   simulation. If this parameter is not provided, then the value
    #   defaults to `*` (all resources). Each API in the `ActionNames`
    #   parameter is evaluated for each resource in this list. The
    #   simulation determines the access result (allowed or denied) of each
    #   combination and reports it in the response. You can simulate
    #   resources that don't exist in your account.
    #
    #   The simulation does not automatically retrieve policies for the
    #   specified resources. If you want to include a resource policy in the
    #   simulation, then you must include the policy as a string in the
    #   `ResourcePolicy` parameter.
    #
    #   If you include a `ResourcePolicy`, then it must be applicable to all
    #   of the resources included in the simulation or you receive an
    #   invalid input error.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #   <note markdown="1"> Simulation of resource-based policies isn't supported for IAM
    #   roles.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_policy
    #   A resource-based policy to include in the simulation provided as a
    #   string. Each resource in the simulation is treated as if it had this
    #   policy attached. You can include only one resource-based policy in a
    #   simulation.
    #
    #   The maximum length of the policy document that you can pass in this
    #   operation, including whitespace, is listed below. To view the
    #   maximum character counts of a managed policy with no whitespaces,
    #   see [IAM and STS character quotas][1].
    #
    #   The [regex pattern][2] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #   <note markdown="1"> Simulation of resource-based policies isn't supported for IAM
    #   roles.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   An ARN representing the Amazon Web Services account ID that
    #   specifies the owner of any simulated resource that does not identify
    #   its owner in the resource ARN. Examples of resource ARNs include an
    #   S3 bucket or object. If `ResourceOwner` is specified, it is also
    #   used as the account owner of any `ResourcePolicy` included in the
    #   simulation. If the `ResourceOwner` parameter is not specified, then
    #   the owner of the resources and the resource policy defaults to the
    #   account of the identity provided in `CallerArn`. This parameter is
    #   required only if you specify a resource-based policy and account
    #   that owns the resource is different from the account that owns the
    #   simulated calling user `CallerArn`.
    #
    #   The ARN for an account uses the following syntax:
    #   `arn:aws:iam::AWS-account-ID:root`. For example, to represent the
    #   account with the 112233445566 ID, use the following ARN:
    #   `arn:aws:iam::112233445566-ID:root`.
    #   @return [String]
    #
    # @!attribute [rw] caller_arn
    #   The ARN of the IAM user that you want to use as the simulated caller
    #   of the API operations. `CallerArn` is required if you include a
    #   `ResourcePolicy` so that the policy's `Principal` element has a
    #   value to use in evaluating the policy.
    #
    #   You can specify only the ARN of an IAM user. You cannot specify the
    #   ARN of an assumed role, federated user, or a service principal.
    #   @return [String]
    #
    # @!attribute [rw] context_entries
    #   A list of context keys and corresponding values for the simulation
    #   to use. Whenever a context key is evaluated in one of the simulated
    #   IAM permissions policies, the corresponding value is supplied.
    #   @return [Array<Types::ContextEntry>]
    #
    # @!attribute [rw] resource_handling_option
    #   Specifies the type of simulation to run. Different API operations
    #   that support resource-based policies require different combinations
    #   of resources. By specifying the type of simulation to run, you
    #   enable the policy simulator to enforce the presence of the required
    #   resources to ensure reliable simulation results. If your simulation
    #   does not match one of the following scenarios, then you can omit
    #   this parameter. The following list shows each of the supported
    #   scenario values and the resources that you must define to run the
    #   simulation.
    #
    #   Each of the Amazon EC2 scenarios requires that you specify instance,
    #   image, and security group resources. If your scenario includes an
    #   EBS volume, then you must specify that volume as a resource. If the
    #   Amazon EC2 scenario includes VPC, then you must supply the network
    #   interface resource. If it includes an IP subnet, then you must
    #   specify the subnet resource. For more information on the Amazon EC2
    #   scenario options, see [Supported platforms][1] in the *Amazon EC2
    #   User Guide*.
    #
    #   * **EC2-VPC-InstanceStore**
    #
    #     instance, image, security group, network interface
    #
    #   * **EC2-VPC-InstanceStore-Subnet**
    #
    #     instance, image, security group, network interface, subnet
    #
    #   * **EC2-VPC-EBS**
    #
    #     instance, image, security group, network interface, volume
    #
    #   * **EC2-VPC-EBS-Subnet**
    #
    #     instance, image, security group, network interface, subnet, volume
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SimulateCustomPolicyRequest AWS API Documentation
    #
    class SimulateCustomPolicyRequest < Struct.new(
      :policy_input_list,
      :permissions_boundary_policy_input_list,
      :action_names,
      :resource_arns,
      :resource_policy,
      :resource_owner,
      :caller_arn,
      :context_entries,
      :resource_handling_option,
      :max_items,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [SimulatePrincipalPolicy][1] or
    # [SimulateCustomPolicy][2] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulateCustomPolicy.html
    #
    # @!attribute [rw] evaluation_results
    #   The results of the simulation.
    #   @return [Array<Types::EvaluationResult>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SimulatePolicyResponse AWS API Documentation
    #
    class SimulatePolicyResponse < Struct.new(
      :evaluation_results,
      :is_truncated,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_source_arn
    #   The Amazon Resource Name (ARN) of a user, group, or role whose
    #   policies you want to include in the simulation. If you specify a
    #   user, group, or role, the simulation includes all policies that are
    #   associated with that entity. If you specify a user, the simulation
    #   also includes all policies that are attached to any groups the user
    #   belongs to.
    #
    #   The maximum length of the policy document that you can pass in this
    #   operation, including whitespace, is listed below. To view the
    #   maximum character counts of a managed policy with no whitespaces,
    #   see [IAM and STS character quotas][1].
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][2] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] policy_input_list
    #   An optional list of additional policy documents to include in the
    #   simulation. Each document is specified as a string containing the
    #   complete, valid JSON text of an IAM policy.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @!attribute [rw] permissions_boundary_policy_input_list
    #   The IAM permissions boundary policy to simulate. The permissions
    #   boundary sets the maximum permissions that the entity can have. You
    #   can input only one permissions boundary when you pass a policy to
    #   this operation. An IAM entity can only have one permissions boundary
    #   in effect at a time. For example, if a permissions boundary is
    #   attached to an entity and you pass in a different permissions
    #   boundary policy using this parameter, then the new permissions
    #   boundary policy is used for the simulation. For more information
    #   about permissions boundaries, see [Permissions boundaries for IAM
    #   entities][1] in the *IAM User Guide*. The policy input is specified
    #   as a string containing the complete, valid JSON text of a
    #   permissions boundary policy.
    #
    #   The maximum length of the policy document that you can pass in this
    #   operation, including whitespace, is listed below. To view the
    #   maximum character counts of a managed policy with no whitespaces,
    #   see [IAM and STS character quotas][2].
    #
    #   The [regex pattern][3] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length
    #   [3]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @!attribute [rw] action_names
    #   A list of names of API operations to evaluate in the simulation.
    #   Each operation is evaluated for each resource. Each operation must
    #   include the service identifier, such as `iam:CreateUser`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arns
    #   A list of ARNs of Amazon Web Services resources to include in the
    #   simulation. If this parameter is not provided, then the value
    #   defaults to `*` (all resources). Each API in the `ActionNames`
    #   parameter is evaluated for each resource in this list. The
    #   simulation determines the access result (allowed or denied) of each
    #   combination and reports it in the response. You can simulate
    #   resources that don't exist in your account.
    #
    #   The simulation does not automatically retrieve policies for the
    #   specified resources. If you want to include a resource policy in the
    #   simulation, then you must include the policy as a string in the
    #   `ResourcePolicy` parameter.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #   <note markdown="1"> Simulation of resource-based policies isn't supported for IAM
    #   roles.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_policy
    #   A resource-based policy to include in the simulation provided as a
    #   string. Each resource in the simulation is treated as if it had this
    #   policy attached. You can include only one resource-based policy in a
    #   simulation.
    #
    #   The maximum length of the policy document that you can pass in this
    #   operation, including whitespace, is listed below. To view the
    #   maximum character counts of a managed policy with no whitespaces,
    #   see [IAM and STS character quotas][1].
    #
    #   The [regex pattern][2] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #   <note markdown="1"> Simulation of resource-based policies isn't supported for IAM
    #   roles.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   An Amazon Web Services account ID that specifies the owner of any
    #   simulated resource that does not identify its owner in the resource
    #   ARN. Examples of resource ARNs include an S3 bucket or object. If
    #   `ResourceOwner` is specified, it is also used as the account owner
    #   of any `ResourcePolicy` included in the simulation. If the
    #   `ResourceOwner` parameter is not specified, then the owner of the
    #   resources and the resource policy defaults to the account of the
    #   identity provided in `CallerArn`. This parameter is required only if
    #   you specify a resource-based policy and account that owns the
    #   resource is different from the account that owns the simulated
    #   calling user `CallerArn`.
    #   @return [String]
    #
    # @!attribute [rw] caller_arn
    #   The ARN of the IAM user that you want to specify as the simulated
    #   caller of the API operations. If you do not specify a `CallerArn`,
    #   it defaults to the ARN of the user that you specify in
    #   `PolicySourceArn`, if you specified a user. If you include both a
    #   `PolicySourceArn` (for example,
    #   `arn:aws:iam::123456789012:user/David`) and a `CallerArn` (for
    #   example, `arn:aws:iam::123456789012:user/Bob`), the result is that
    #   you simulate calling the API operations as Bob, as if Bob had
    #   David's policies.
    #
    #   You can specify only the ARN of an IAM user. You cannot specify the
    #   ARN of an assumed role, federated user, or a service principal.
    #
    #   `CallerArn` is required if you include a `ResourcePolicy` and the
    #   `PolicySourceArn` is not the ARN for an IAM user. This is required
    #   so that the resource-based policy's `Principal` element has a value
    #   to use in evaluating the policy.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] context_entries
    #   A list of context keys and corresponding values for the simulation
    #   to use. Whenever a context key is evaluated in one of the simulated
    #   IAM permissions policies, the corresponding value is supplied.
    #   @return [Array<Types::ContextEntry>]
    #
    # @!attribute [rw] resource_handling_option
    #   Specifies the type of simulation to run. Different API operations
    #   that support resource-based policies require different combinations
    #   of resources. By specifying the type of simulation to run, you
    #   enable the policy simulator to enforce the presence of the required
    #   resources to ensure reliable simulation results. If your simulation
    #   does not match one of the following scenarios, then you can omit
    #   this parameter. The following list shows each of the supported
    #   scenario values and the resources that you must define to run the
    #   simulation.
    #
    #   Each of the Amazon EC2 scenarios requires that you specify instance,
    #   image, and security group resources. If your scenario includes an
    #   EBS volume, then you must specify that volume as a resource. If the
    #   Amazon EC2 scenario includes VPC, then you must supply the network
    #   interface resource. If it includes an IP subnet, then you must
    #   specify the subnet resource. For more information on the Amazon EC2
    #   scenario options, see [Supported platforms][1] in the *Amazon EC2
    #   User Guide*.
    #
    #   * **EC2-VPC-InstanceStore**
    #
    #     instance, image, security group, network interface
    #
    #   * **EC2-VPC-InstanceStore-Subnet**
    #
    #     instance, image, security group, network interface, subnet
    #
    #   * **EC2-VPC-EBS**
    #
    #     instance, image, security group, network interface, volume
    #
    #   * **EC2-VPC-EBS-Subnet**
    #
    #     instance, image, security group, network interface, subnet, volume
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   Use this only when paginating results to indicate the maximum number
    #   of items you want in the response. If additional items exist beyond
    #   the maximum you specify, the `IsTruncated` response element is
    #   `true`.
    #
    #   If you do not include this parameter, the number of items defaults
    #   to 100. Note that IAM might return fewer results, even when there
    #   are more results available. In that case, the `IsTruncated` response
    #   element returns `true`, and `Marker` contains a value to include in
    #   the subsequent call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SimulatePrincipalPolicyRequest AWS API Documentation
    #
    class SimulatePrincipalPolicyRequest < Struct.new(
      :policy_source_arn,
      :policy_input_list,
      :permissions_boundary_policy_input_list,
      :action_names,
      :resource_arns,
      :resource_policy,
      :resource_owner,
      :caller_arn,
      :context_entries,
      :resource_handling_option,
      :max_items,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a reference to a `Statement` element in a policy document
    # that determines the result of the simulation.
    #
    # This data type is used by the `MatchedStatements` member of the `
    # EvaluationResult ` type.
    #
    # @!attribute [rw] source_policy_id
    #   The identifier of the policy that was provided as an input.
    #   @return [String]
    #
    # @!attribute [rw] source_policy_type
    #   The type of the policy.
    #   @return [String]
    #
    # @!attribute [rw] start_position
    #   The row and column of the beginning of the `Statement` in an IAM
    #   policy.
    #   @return [Types::Position]
    #
    # @!attribute [rw] end_position
    #   The row and column of the end of a `Statement` in an IAM policy.
    #   @return [Types::Position]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Statement AWS API Documentation
    #
    class Statement < Struct.new(
      :source_policy_id,
      :source_policy_type,
      :start_position,
      :end_position)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents user-provided metadata that can be
    # associated with an IAM resource. For more information about tagging,
    # see [Tagging IAM resources][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #
    # @!attribute [rw] key
    #   The key name that can be used to look up or retrieve the associated
    #   value. For example, `Department` or `Cost Center` are common
    #   choices.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with this tag. For example, tags with a key
    #   name of `Department` could have values such as `Human Resources`,
    #   `Accounting`, and `Support`. Tags with a key name of `Cost Center`
    #   might have values that consist of the number associated with the
    #   different cost centers in your company. Typically, many resources
    #   have tags with the same key name but with different values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile_name
    #   The name of the IAM instance profile to which you want to add tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags that you want to attach to the IAM instance
    #   profile. Each tag consists of a key name and an associated value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/TagInstanceProfileRequest AWS API Documentation
    #
    class TagInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serial_number
    #   The unique identifier for the IAM virtual MFA device to which you
    #   want to add tags. For virtual MFA devices, the serial number is the
    #   same as the ARN.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags that you want to attach to the IAM virtual MFA
    #   device. Each tag consists of a key name and an associated value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/TagMFADeviceRequest AWS API Documentation
    #
    class TagMFADeviceRequest < Struct.new(
      :serial_number,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] open_id_connect_provider_arn
    #   The ARN of the OIDC identity provider in IAM to which you want to
    #   add tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags that you want to attach to the OIDC identity
    #   provider in IAM. Each tag consists of a key name and an associated
    #   value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/TagOpenIDConnectProviderRequest AWS API Documentation
    #
    class TagOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The ARN of the IAM customer managed policy to which you want to add
    #   tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags that you want to attach to the IAM customer managed
    #   policy. Each tag consists of a key name and an associated value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/TagPolicyRequest AWS API Documentation
    #
    class TagPolicyRequest < Struct.new(
      :policy_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the IAM role to which you want to add tags.
    #
    #   This parameter accepts (through its [regex pattern][1]) a string of
    #   characters that consist of upper and lowercase alphanumeric
    #   characters with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags that you want to attach to the IAM role. Each tag
    #   consists of a key name and an associated value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/TagRoleRequest AWS API Documentation
    #
    class TagRoleRequest < Struct.new(
      :role_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] saml_provider_arn
    #   The ARN of the SAML identity provider in IAM to which you want to
    #   add tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags that you want to attach to the SAML identity
    #   provider in IAM. Each tag consists of a key name and an associated
    #   value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/TagSAMLProviderRequest AWS API Documentation
    #
    class TagSAMLProviderRequest < Struct.new(
      :saml_provider_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_certificate_name
    #   The name of the IAM server certificate to which you want to add
    #   tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags that you want to attach to the IAM server
    #   certificate. Each tag consists of a key name and an associated
    #   value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/TagServerCertificateRequest AWS API Documentation
    #
    class TagServerCertificateRequest < Struct.new(
      :server_certificate_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user to which you want to add tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags that you want to attach to the IAM user. Each tag
    #   consists of a key name and an associated value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/TagUserRequest AWS API Documentation
    #
    class TagUserRequest < Struct.new(
      :user_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the most recent attempt to access an action
    # within the service.
    #
    # This data type is used as a response element in the
    # [GetServiceLastAccessedDetails][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetServiceLastAccessedDetails.html
    #
    # @!attribute [rw] action_name
    #   The name of the tracked action to which access was attempted.
    #   Tracked actions are actions that report activity to IAM.
    #   @return [String]
    #
    # @!attribute [rw] last_accessed_entity
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for
    #   Amazon Web Services resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] last_accessed_time
    #   The date and time, in [ISO 8601 date-time format][1], when an
    #   authenticated entity most recently attempted to access the tracked
    #   service. Amazon Web Services does not report unauthenticated
    #   requests.
    #
    #   This field is null if no IAM entities attempted to access the
    #   service within the [tracking period][2].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   @return [Time]
    #
    # @!attribute [rw] last_accessed_region
    #   The Region from which the authenticated entity (user or role) last
    #   attempted to access the tracked action. Amazon Web Services does not
    #   report unauthenticated requests.
    #
    #   This field is null if no IAM entities attempted to access the
    #   service within the [tracking period][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/TrackedActionLastAccessed AWS API Documentation
    #
    class TrackedActionLastAccessed < Struct.new(
      :action_name,
      :last_accessed_entity,
      :last_accessed_time,
      :last_accessed_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because service-linked roles are protected
    # Amazon Web Services resources. Only the service that depends on the
    # service-linked role can modify or delete the role on your behalf. The
    # error message includes the name of the service that depends on this
    # service-linked role. You must request the change through that service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UnmodifiableEntityException AWS API Documentation
    #
    class UnmodifiableEntityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the public key encoding format is
    # unsupported or unrecognized.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UnrecognizedPublicKeyEncodingException AWS API Documentation
    #
    class UnrecognizedPublicKeyEncodingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile_name
    #   The name of the IAM instance profile from which you want to remove
    #   tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of key names as a simple array of strings. The tags with
    #   matching keys are removed from the specified instance profile.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UntagInstanceProfileRequest AWS API Documentation
    #
    class UntagInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] serial_number
    #   The unique identifier for the IAM virtual MFA device from which you
    #   want to remove tags. For virtual MFA devices, the serial number is
    #   the same as the ARN.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of key names as a simple array of strings. The tags with
    #   matching keys are removed from the specified instance profile.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UntagMFADeviceRequest AWS API Documentation
    #
    class UntagMFADeviceRequest < Struct.new(
      :serial_number,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] open_id_connect_provider_arn
    #   The ARN of the OIDC provider in IAM from which you want to remove
    #   tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of key names as a simple array of strings. The tags with
    #   matching keys are removed from the specified OIDC provider.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UntagOpenIDConnectProviderRequest AWS API Documentation
    #
    class UntagOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   The ARN of the IAM customer managed policy from which you want to
    #   remove tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of key names as a simple array of strings. The tags with
    #   matching keys are removed from the specified policy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UntagPolicyRequest AWS API Documentation
    #
    class UntagPolicyRequest < Struct.new(
      :policy_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the IAM role from which you want to remove tags.
    #
    #   This parameter accepts (through its [regex pattern][1]) a string of
    #   characters that consist of upper and lowercase alphanumeric
    #   characters with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of key names as a simple array of strings. The tags with
    #   matching keys are removed from the specified role.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UntagRoleRequest AWS API Documentation
    #
    class UntagRoleRequest < Struct.new(
      :role_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] saml_provider_arn
    #   The ARN of the SAML identity provider in IAM from which you want to
    #   remove tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of key names as a simple array of strings. The tags with
    #   matching keys are removed from the specified SAML identity provider.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UntagSAMLProviderRequest AWS API Documentation
    #
    class UntagSAMLProviderRequest < Struct.new(
      :saml_provider_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_certificate_name
    #   The name of the IAM server certificate from which you want to remove
    #   tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of key names as a simple array of strings. The tags with
    #   matching keys are removed from the specified IAM server certificate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UntagServerCertificateRequest AWS API Documentation
    #
    class UntagServerCertificateRequest < Struct.new(
      :server_certificate_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user from which you want to remove tags.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of key names as a simple array of strings. The tags with
    #   matching keys are removed from the specified user.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UntagUserRequest AWS API Documentation
    #
    class UntagUserRequest < Struct.new(
      :user_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user whose key you want to update.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The access key ID of the secret access key you want to update.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status you want to assign to the secret access key. `Active`
    #   means that the key can be used for programmatic calls to Amazon Web
    #   Services, while `Inactive` means that the key cannot be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAccessKeyRequest AWS API Documentation
    #
    class UpdateAccessKeyRequest < Struct.new(
      :user_name,
      :access_key_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] minimum_password_length
    #   The minimum number of characters allowed in an IAM user password.
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `6`.
    #   @return [Integer]
    #
    # @!attribute [rw] require_symbols
    #   Specifies whether IAM user passwords must contain at least one of
    #   the following non-alphanumeric characters:
    #
    #   ! @ # $ % ^ &amp; * ( ) \_ + - = \[ \] \{ } \| '
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that passwords do
    #   not require at least one symbol character.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_numbers
    #   Specifies whether IAM user passwords must contain at least one
    #   numeric character (0 to 9).
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that passwords do
    #   not require at least one numeric character.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_uppercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   uppercase character from the ISO basic Latin alphabet (A to Z).
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that passwords do
    #   not require at least one uppercase character.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_lowercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   lowercase character from the ISO basic Latin alphabet (a to z).
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that passwords do
    #   not require at least one lowercase character.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_users_to_change_password
    #   Allows all IAM users in your account to use the Amazon Web Services
    #   Management Console to change their own passwords. For more
    #   information, see [Permitting IAM users to change their own
    #   passwords][1] in the *IAM User Guide*.
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that IAM users in
    #   the account do not automatically have permissions to change their
    #   own password.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_enable-user-change.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_password_age
    #   The number of days that an IAM user password is valid.
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `0`. The result is that IAM user passwords
    #   never expire.
    #   @return [Integer]
    #
    # @!attribute [rw] password_reuse_prevention
    #   Specifies the number of previous passwords that IAM users are
    #   prevented from reusing.
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `0`. The result is that IAM users are not
    #   prevented from reusing previous passwords.
    #   @return [Integer]
    #
    # @!attribute [rw] hard_expiry
    #   Prevents IAM users who are accessing the account via the Amazon Web
    #   Services Management Console from setting a new console password
    #   after their password has expired. The IAM user cannot access the
    #   console until an administrator resets the password.
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that IAM users can
    #   change their passwords after they expire and continue to sign in as
    #   the user.
    #
    #   <note markdown="1"> In the Amazon Web Services Management Console, the custom password
    #   policy option **Allow users to change their own password** gives IAM
    #   users permissions to `iam:ChangePassword` for only their user and to
    #   the `iam:GetAccountPasswordPolicy` action. This option does not
    #   attach a permissions policy to each user, rather the permissions are
    #   applied at the account-level for all users by IAM. IAM users with
    #   `iam:ChangePassword` permission and active access keys can reset
    #   their own expired console password using the CLI or API.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAccountPasswordPolicyRequest AWS API Documentation
    #
    class UpdateAccountPasswordPolicyRequest < Struct.new(
      :minimum_password_length,
      :require_symbols,
      :require_numbers,
      :require_uppercase_characters,
      :require_lowercase_characters,
      :allow_users_to_change_password,
      :max_password_age,
      :password_reuse_prevention,
      :hard_expiry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the role to update with the new policy.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy that grants an entity permission to assume the role.
    #
    #   You must provide policies in JSON format in IAM. However, for
    #   CloudFormation templates formatted in YAML, you can provide the
    #   policy in JSON or YAML format. CloudFormation always converts a YAML
    #   policy to JSON format before submitting it to IAM.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAssumeRolePolicyRequest AWS API Documentation
    #
    class UpdateAssumeRolePolicyRequest < Struct.new(
      :role_name,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   Name of the IAM group to update. If you're changing the name of the
    #   group, this is the original name.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_path
    #   New path for the IAM group. Only include this if changing the
    #   group's path.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_group_name
    #   New name for the IAM group. Only include this if changing the
    #   group's name.
    #
    #   IAM user, group, role, and policy names must be unique within the
    #   account. Names are not distinguished by case. For example, you
    #   cannot create resources named both "MyResource" and
    #   "myresource".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateGroupRequest AWS API Documentation
    #
    class UpdateGroupRequest < Struct.new(
      :group_name,
      :new_path,
      :new_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user whose password you want to update.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The new password for the specified IAM user.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #   However, the format can be further restricted by the account
    #   administrator by setting a password policy on the Amazon Web
    #   Services account. For more information, see
    #   [UpdateAccountPasswordPolicy][2].
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateAccountPasswordPolicy.html
    #   @return [String]
    #
    # @!attribute [rw] password_reset_required
    #   Allows this new password to be used only once by requiring the
    #   specified IAM user to set a new password on next sign-in.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateLoginProfileRequest AWS API Documentation
    #
    class UpdateLoginProfileRequest < Struct.new(
      :user_name,
      :password,
      :password_reset_required)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OIDC provider resource
    #   object for which you want to update the thumbprint. You can get a
    #   list of OIDC provider ARNs by using the
    #   [ListOpenIDConnectProviders][1] operation.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][2] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListOpenIDConnectProviders.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] thumbprint_list
    #   A list of certificate thumbprints that are associated with the
    #   specified IAM OpenID Connect provider. For more information, see
    #   [CreateOpenIDConnectProvider][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateOpenIDConnectProvider.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateOpenIDConnectProviderThumbprintRequest AWS API Documentation
    #
    class UpdateOpenIDConnectProviderThumbprintRequest < Struct.new(
      :open_id_connect_provider_arn,
      :thumbprint_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the role that you want to modify.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description that you want to apply to the specified role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateRoleDescriptionRequest AWS API Documentation
    #
    class UpdateRoleDescriptionRequest < Struct.new(
      :role_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role
    #   A structure that contains details about the modified role.
    #   @return [Types::Role]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateRoleDescriptionResponse AWS API Documentation
    #
    class UpdateRoleDescriptionResponse < Struct.new(
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_name
    #   The name of the role that you want to modify.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description that you want to apply to the specified role.
    #   @return [String]
    #
    # @!attribute [rw] max_session_duration
    #   The maximum session duration (in seconds) that you want to set for
    #   the specified role. If you do not specify a value for this setting,
    #   the default value of one hour is applied. This setting can have a
    #   value from 1 hour to 12 hours.
    #
    #   Anyone who assumes the role from the CLI or API can use the
    #   `DurationSeconds` API parameter or the `duration-seconds` CLI
    #   parameter to request a longer session. The `MaxSessionDuration`
    #   setting determines the maximum duration that can be requested using
    #   the `DurationSeconds` parameter. If users don't specify a value for
    #   the `DurationSeconds` parameter, their security credentials are
    #   valid for one hour by default. This applies when you use the
    #   `AssumeRole*` API operations or the `assume-role*` CLI operations
    #   but does not apply when you use those operations to create a console
    #   URL. For more information, see [Using IAM roles][1] in the *IAM User
    #   Guide*.
    #
    #   <note markdown="1"> IAM role credentials provided by Amazon EC2 instances assigned to
    #   the role are not subject to the specified maximum session duration.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateRoleRequest AWS API Documentation
    #
    class UpdateRoleRequest < Struct.new(
      :role_name,
      :description,
      :max_session_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateRoleResponse AWS API Documentation
    #
    class UpdateRoleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] saml_metadata_document
    #   An XML document generated by an identity provider (IdP) that
    #   supports SAML 2.0. The document includes the issuer's name,
    #   expiration information, and keys that can be used to validate the
    #   SAML authentication response (assertions) that are received from the
    #   IdP. You must generate the metadata document using the identity
    #   management software that is used as your IdP.
    #   @return [String]
    #
    # @!attribute [rw] saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider to update.
    #
    #   For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] assertion_encryption_mode
    #   Specifies the encryption setting for the SAML provider.
    #   @return [String]
    #
    # @!attribute [rw] add_private_key
    #   Specifies the new private key from your external identity provider.
    #   The private key must be a .pem file that uses AES-GCM or AES-CBC
    #   encryption algorithm to decrypt SAML assertions.
    #   @return [String]
    #
    # @!attribute [rw] remove_private_key
    #   The Key ID of the private key to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSAMLProviderRequest AWS API Documentation
    #
    class UpdateSAMLProviderRequest < Struct.new(
      :saml_metadata_document,
      :saml_provider_arn,
      :assertion_encryption_mode,
      :add_private_key,
      :remove_private_key)
      SENSITIVE = [:add_private_key]
      include Aws::Structure
    end

    # Contains the response to a successful [UpdateSAMLProvider][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateSAMLProvider.html
    #
    # @!attribute [rw] saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider that was
    #   updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSAMLProviderResponse AWS API Documentation
    #
    class UpdateSAMLProviderResponse < Struct.new(
      :saml_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the SSH public key.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to assign to the SSH public key. `Active` means that the
    #   key can be used for authentication with an CodeCommit repository.
    #   `Inactive` means that the key cannot be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSSHPublicKeyRequest AWS API Documentation
    #
    class UpdateSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_certificate_name
    #   The name of the server certificate that you want to update.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_path
    #   The new path for the server certificate. Include this only if you
    #   are updating the server certificate's path.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_server_certificate_name
    #   The new name for the server certificate. Include this only if you
    #   are updating the server certificate's name. The name of the
    #   certificate cannot contain any spaces.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateServerCertificateRequest AWS API Documentation
    #
    class UpdateServerCertificateRequest < Struct.new(
      :server_certificate_name,
      :new_path,
      :new_server_certificate_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the service-specific
    #   credential. If you do not specify this value, then the operation
    #   assumes the user whose credentials are used to call the operation.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] service_specific_credential_id
    #   The unique identifier of the service-specific credential.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to be assigned to the service-specific credential.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateServiceSpecificCredentialRequest AWS API Documentation
    #
    class UpdateServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_specific_credential_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user the signing certificate belongs to.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the signing certificate you want to update.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status you want to assign to the certificate. `Active` means
    #   that the certificate can be used for programmatic calls to Amazon
    #   Web Services `Inactive` means that the certificate cannot be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSigningCertificateRequest AWS API Documentation
    #
    class UpdateSigningCertificateRequest < Struct.new(
      :user_name,
      :certificate_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   Name of the user to update. If you're changing the name of the
    #   user, this is the original user name.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_path
    #   New path for the IAM user. Include this parameter only if you're
    #   changing the user's path.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (`\u0021`) through the
    #   DEL character (`\u007F`), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_user_name
    #   New name for the user. Include this parameter only if you're
    #   changing the user's name.
    #
    #   IAM user, group, role, and policy names must be unique within the
    #   account. Names are not distinguished by case. For example, you
    #   cannot create resources named both "MyResource" and
    #   "myresource".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :user_name,
      :new_path,
      :new_user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the IAM user to associate the SSH public key with.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_body
    #   The SSH public key. The public key must be encoded in ssh-rsa format
    #   or PEM format. The minimum bit-length of the public key is 2048
    #   bits. For example, you can generate a 2048-bit key, and the
    #   resulting PEM file is 1679 bytes long.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSSHPublicKeyRequest AWS API Documentation
    #
    class UploadSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [UploadSSHPublicKey][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadSSHPublicKey.html
    #
    # @!attribute [rw] ssh_public_key
    #   Contains information about the SSH public key.
    #   @return [Types::SSHPublicKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSSHPublicKeyResponse AWS API Documentation
    #
    class UploadSSHPublicKeyResponse < Struct.new(
      :ssh_public_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path
    #   The path for the server certificate. For more information about
    #   paths, see [IAM identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/). This parameter allows (through its [regex pattern][2]) a
    #   string of characters consisting of either a forward slash (/) by
    #   itself or a string that must begin and end with forward slashes. In
    #   addition, it can contain any ASCII character from the ! (`\u0021`)
    #   through the DEL character (`\u007F`), including most punctuation
    #   characters, digits, and upper and lowercased letters.
    #
    #   <note markdown="1"> If you are uploading a server certificate specifically for use with
    #   Amazon CloudFront distributions, you must specify a path using the
    #   `path` parameter. The path must begin with `/cloudfront` and must
    #   include a trailing slash (for example, `/cloudfront/test/`).
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] server_certificate_name
    #   The name for the server certificate. Do not include the path in this
    #   value. The name of the certificate cannot contain any spaces.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] certificate_body
    #   The contents of the public key certificate in PEM-encoded format.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The contents of the private key in PEM-encoded format.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The contents of the certificate chain. This is typically a
    #   concatenation of the PEM-encoded public key certificates of the
    #   chain.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags that you want to attach to the new IAM server
    #   certificate resource. Each tag consists of a key name and an
    #   associated value. For more information about tagging, see [Tagging
    #   IAM resources][1] in the *IAM User Guide*.
    #
    #   <note markdown="1"> If any one of the tags is invalid or if you exceed the allowed
    #   maximum number of tags, then the entire request fails and the
    #   resource is not created.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadServerCertificateRequest AWS API Documentation
    #
    class UploadServerCertificateRequest < Struct.new(
      :path,
      :server_certificate_name,
      :certificate_body,
      :private_key,
      :certificate_chain,
      :tags)
      SENSITIVE = [:private_key]
      include Aws::Structure
    end

    # Contains the response to a successful [UploadServerCertificate][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadServerCertificate.html
    #
    # @!attribute [rw] server_certificate_metadata
    #   The meta information of the uploaded server certificate without its
    #   certificate body, certificate chain, and private key.
    #   @return [Types::ServerCertificateMetadata]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the new IAM server certificate.
    #   The returned list of tags is sorted by tag key. For more information
    #   about tagging, see [Tagging IAM resources][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadServerCertificateResponse AWS API Documentation
    #
    class UploadServerCertificateResponse < Struct.new(
      :server_certificate_metadata,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user the signing certificate is for.
    #
    #   This parameter allows (through its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] certificate_body
    #   The contents of the signing certificate.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (`\u0020`) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through `\u00FF`)
    #
    #   * The special characters tab (`\u0009`), line feed (`\u000A`), and
    #     carriage return (`\u000D`)
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSigningCertificateRequest AWS API Documentation
    #
    class UploadSigningCertificateRequest < Struct.new(
      :user_name,
      :certificate_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response to a successful [UploadSigningCertificate][1]
    # request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_UploadSigningCertificate.html
    #
    # @!attribute [rw] certificate
    #   Information about the certificate.
    #   @return [Types::SigningCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSigningCertificateResponse AWS API Documentation
    #
    class UploadSigningCertificateResponse < Struct.new(
      :certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an IAM user entity.
    #
    # This data type is used as a response element in the following
    # operations:
    #
    # * [CreateUser][1]
    #
    # * [GetUser][2]
    #
    # * [ListUsers][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateUser.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUser.html
    # [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListUsers.html
    #
    # @!attribute [rw] path
    #   The path to the user. For more information about paths, see [IAM
    #   identifiers][1] in the *IAM User Guide*.
    #
    #   The ARN of the policy used to set the permissions boundary for the
    #   user.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The friendly name identifying the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The stable and unique string identifying the user. For more
    #   information about IDs, see [IAM identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that identifies the user. For more
    #   information about ARNs and how to use ARNs in policies, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the user
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] password_last_used
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   user's password was last used to sign in to an Amazon Web Services
    #   website. For a list of Amazon Web Services websites that capture a
    #   user's last sign-in time, see the [Credential reports][2] topic in
    #   the *IAM User Guide*. If a password is used more than once in a
    #   five-minute span, only the first use is returned in this field. If
    #   the field is null (no value), then it indicates that they never
    #   signed in with a password. This can be because:
    #
    #   * The user never had a password.
    #
    #   * A password exists but has not been used since IAM started tracking
    #     this information on October 20, 2014.
    #
    #   A null value does not mean that the user *never* had a password.
    #   Also, if the user does not currently have a password but had one in
    #   the past, then this field contains the date and time the most recent
    #   password was used.
    #
    #   This value is returned only in the [GetUser][3] and [ListUsers][4]
    #   operations.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
    #   [3]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetUser.html
    #   [4]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListUsers.html
    #   @return [Time]
    #
    # @!attribute [rw] permissions_boundary
    #   For more information about permissions boundaries, see [Permissions
    #   boundaries for IAM identities ][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   @return [Types::AttachedPermissionsBoundary]
    #
    # @!attribute [rw] tags
    #   A list of tags that are associated with the user. For more
    #   information about tagging, see [Tagging IAM resources][1] in the
    #   *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/User AWS API Documentation
    #
    class User < Struct.new(
      :path,
      :user_name,
      :user_id,
      :arn,
      :create_date,
      :password_last_used,
      :permissions_boundary,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an IAM user, including all the user's
    # policies and all the IAM groups the user is in.
    #
    # This data type is used as a response element in the
    # [GetAccountAuthorizationDetails][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetAccountAuthorizationDetails.html
    #
    # @!attribute [rw] path
    #   The path to the user. For more information about paths, see [IAM
    #   identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The friendly name identifying the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The stable and unique string identifying the user. For more
    #   information about IDs, see [IAM identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for
    #   Amazon Web Services resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the user
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] user_policy_list
    #   A list of the inline policies embedded in the user.
    #   @return [Array<Types::PolicyDetail>]
    #
    # @!attribute [rw] group_list
    #   A list of IAM groups that the user is in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attached_managed_policies
    #   A list of the managed policies attached to the user.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @!attribute [rw] permissions_boundary
    #   The ARN of the policy used to set the permissions boundary for the
    #   user.
    #
    #   For more information about permissions boundaries, see [Permissions
    #   boundaries for IAM identities ][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    #   @return [Types::AttachedPermissionsBoundary]
    #
    # @!attribute [rw] tags
    #   A list of tags that are associated with the user. For more
    #   information about tagging, see [Tagging IAM resources][1] in the
    #   *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UserDetail AWS API Documentation
    #
    class UserDetail < Struct.new(
      :path,
      :user_name,
      :user_id,
      :arn,
      :create_date,
      :user_policy_list,
      :group_list,
      :attached_managed_policies,
      :permissions_boundary,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a virtual MFA device.
    #
    # @!attribute [rw] serial_number
    #   The serial number associated with `VirtualMFADevice`.
    #   @return [String]
    #
    # @!attribute [rw] base_32_string_seed
    #   The base32 seed defined as specified in [RFC3548][1]. The
    #   `Base32StringSeed` is base32-encoded.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3548.txt
    #   @return [String]
    #
    # @!attribute [rw] qr_code_png
    #   A QR code PNG image that encodes
    #   `otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String`
    #   where `$virtualMFADeviceName` is one of the create call arguments.
    #   `AccountName` is the user name if set (otherwise, the account ID
    #   otherwise), and `Base32String` is the seed in base32 format. The
    #   `Base32String` value is base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   The IAM user associated with this virtual MFA device.
    #   @return [Types::User]
    #
    # @!attribute [rw] enable_date
    #   The date and time on which the virtual MFA device was enabled.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A list of tags that are attached to the virtual MFA device. For more
    #   information about tagging, see [Tagging IAM resources][1] in the
    #   *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/VirtualMFADevice AWS API Documentation
    #
    class VirtualMFADevice < Struct.new(
      :serial_number,
      :base_32_string_seed,
      :qr_code_png,
      :user,
      :enable_date,
      :tags)
      SENSITIVE = [:base_32_string_seed, :qr_code_png]
      include Aws::Structure
    end

  end
end

