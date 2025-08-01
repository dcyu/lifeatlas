# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DirectoryService
  module Types

    # @!attribute [rw] shared_directory_id
    #   Identifier of the shared directory in the directory consumer
    #   account. This identifier is different for each directory owner
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AcceptSharedDirectoryRequest AWS API Documentation
    #
    class AcceptSharedDirectoryRequest < Struct.new(
      :shared_directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shared_directory
    #   The shared directory in the directory consumer account.
    #   @return [Types::SharedDirectory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AcceptSharedDirectoryResult AWS API Documentation
    #
    class AcceptSharedDirectoryResult < Struct.new(
      :shared_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory to which to add the address block.
    #   @return [String]
    #
    # @!attribute [rw] ip_routes
    #   IP address blocks, using CIDR format, of the traffic to route. This
    #   is often the IP address block of the DNS server used for your
    #   self-managed domain.
    #   @return [Array<Types::IpRoute>]
    #
    # @!attribute [rw] update_security_group_for_directory_controllers
    #   If set to true, updates the inbound and outbound rules of the
    #   security group that has the description: "Amazon Web Services
    #   created security group for *directory ID* directory controllers."
    #   Following are the new rules:
    #
    #   Inbound:
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source:
    #     Managed Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source:
    #     Managed Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: DNS (UDP), Protocol: UDP, Range: 53, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: DNS (TCP), Protocol: TCP, Range: 53, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #   * Type: LDAP, Protocol: TCP, Range: 389, Source: Managed Microsoft
    #     AD VPC IPv4 CIDR
    #
    #   * Type: All ICMP, Protocol: All, Range: N/A, Source: Managed
    #     Microsoft AD VPC IPv4 CIDR
    #
    #
    #
    #   Outbound:
    #
    #   * Type: All traffic, Protocol: All, Range: All, Destination:
    #     0.0.0.0/0
    #
    #   ^
    #
    #   These security rules impact an internal network interface that is
    #   not exposed publicly.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddIpRoutesRequest AWS API Documentation
    #
    class AddIpRoutesRequest < Struct.new(
      :directory_id,
      :ip_routes,
      :update_security_group_for_directory_controllers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddIpRoutesResult AWS API Documentation
    #
    class AddIpRoutesResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   The identifier of the directory to which you want to add Region
    #   replication.
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The name of the Region where you want to add domain controllers for
    #   replication. For example, `us-east-1`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_settings
    #   Contains VPC information for the CreateDirectory or
    #   CreateMicrosoftAD operation.
    #   @return [Types::DirectoryVpcSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddRegionRequest AWS API Documentation
    #
    class AddRegionRequest < Struct.new(
      :directory_id,
      :region_name,
      :vpc_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddRegionResult AWS API Documentation
    #
    class AddRegionResult < Aws::EmptyStructure; end

    # @!attribute [rw] resource_id
    #   Identifier (ID) for the directory to which to add the tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the directory.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddTagsToResourceRequest AWS API Documentation
    #
    class AddTagsToResourceRequest < Struct.new(
      :resource_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AddTagsToResourceResult AWS API Documentation
    #
    class AddTagsToResourceResult < Aws::EmptyStructure; end

    # Represents a named directory attribute.
    #
    # @!attribute [rw] name
    #   The name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Attribute AWS API Documentation
    #
    class Attribute < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An authentication error occurred.
    #
    # @!attribute [rw] message
    #   The textual message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The identifier of the request that caused the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/AuthenticationFailedException AWS API Documentation
    #
    class AuthenticationFailedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory whose schema extension will be
    #   canceled.
    #   @return [String]
    #
    # @!attribute [rw] schema_extension_id
    #   The identifier of the schema extension that will be canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CancelSchemaExtensionRequest AWS API Documentation
    #
    class CancelSchemaExtensionRequest < Struct.new(
      :directory_id,
      :schema_extension_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CancelSchemaExtensionResult AWS API Documentation
    #
    class CancelSchemaExtensionResult < Aws::EmptyStructure; end

    # Information about the certificate.
    #
    # @!attribute [rw] certificate_id
    #   The identifier of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   Describes a state change for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] common_name
    #   The common name for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] registered_date_time
    #   The date and time that the certificate was registered.
    #   @return [Time]
    #
    # @!attribute [rw] expiry_date_time
    #   The date and time when the certificate will expire.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The function that the registered certificate performs. Valid values
    #   include `ClientLDAPS` or `ClientCertAuth`. The default value is
    #   `ClientLDAPS`.
    #   @return [String]
    #
    # @!attribute [rw] client_cert_auth_settings
    #   A `ClientCertAuthSettings` object that contains client certificate
    #   authentication settings.
    #   @return [Types::ClientCertAuthSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :certificate_id,
      :state,
      :state_reason,
      :common_name,
      :registered_date_time,
      :expiry_date_time,
      :type,
      :client_cert_auth_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate has already been registered into the system.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CertificateAlreadyExistsException AWS API Documentation
    #
    class CertificateAlreadyExistsException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate is not present in the system for describe or
    # deregister activities.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CertificateDoesNotExistException AWS API Documentation
    #
    class CertificateDoesNotExistException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate is being used for the LDAP security connection and
    # cannot be removed without disabling LDAP security.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CertificateInUseException AWS API Documentation
    #
    class CertificateInUseException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains general information about a certificate.
    #
    # @!attribute [rw] certificate_id
    #   The identifier of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] common_name
    #   The common name for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] expiry_date_time
    #   The date and time when the certificate will expire.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The function that the registered certificate performs. Valid values
    #   include `ClientLDAPS` or `ClientCertAuth`. The default value is
    #   `ClientLDAPS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CertificateInfo AWS API Documentation
    #
    class CertificateInfo < Struct.new(
      :certificate_id,
      :common_name,
      :state,
      :expiry_date_time,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate could not be added because the certificate limit has
    # been reached.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CertificateLimitExceededException AWS API Documentation
    #
    class CertificateLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a client authentication method for a
    # directory.
    #
    # @!attribute [rw] type
    #   The type of client authentication for the specified directory. If no
    #   type is specified, a list of all client authentication types that
    #   are supported for the directory is retrieved.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Whether the client authentication type is enabled or disabled for
    #   the specified directory.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time when the status of the client authentication type
    #   was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ClientAuthenticationSettingInfo AWS API Documentation
    #
    class ClientAuthenticationSettingInfo < Struct.new(
      :type,
      :status,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the client certificate authentication
    # settings for the `RegisterCertificate` and `DescribeCertificate`
    # operations.
    #
    # @!attribute [rw] ocsp_url
    #   Specifies the URL of the default OCSP server used to check for
    #   revocation status. A secondary value to any OCSP address found in
    #   the AIA extension of the user certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ClientCertAuthSettings AWS API Documentation
    #
    class ClientCertAuthSettings < Struct.new(
      :ocsp_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A client exception has occurred.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a computer account in a directory.
    #
    # @!attribute [rw] computer_id
    #   The identifier of the computer.
    #   @return [String]
    #
    # @!attribute [rw] computer_name
    #   The computer name.
    #   @return [String]
    #
    # @!attribute [rw] computer_attributes
    #   An array of Attribute objects containing the LDAP attributes that
    #   belong to the computer account.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Computer AWS API Documentation
    #
    class Computer < Struct.new(
      :computer_id,
      :computer_name,
      :computer_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Points to a remote domain with which you are setting up a trust
    # relationship. Conditional forwarders are required in order to set up a
    # trust relationship with another domain.
    #
    # @!attribute [rw] remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domains pointed
    #   to by the conditional forwarder.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addrs
    #   The IP addresses of the remote DNS server associated with
    #   RemoteDomainName. This is the IP address of the DNS server that your
    #   conditional forwarder points to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_scope
    #   The replication scope of the conditional forwarder. The only allowed
    #   value is `Domain`, which will replicate the conditional forwarder to
    #   all of the domain controllers for your Amazon Web Services
    #   directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ConditionalForwarder AWS API Documentation
    #
    class ConditionalForwarder < Struct.new(
      :remote_domain_name,
      :dns_ip_addrs,
      :replication_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the ConnectDirectory operation.
    #
    # @!attribute [rw] name
    #   The fully qualified name of your self-managed directory, such as
    #   `corp.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] short_name
    #   The NetBIOS name of your self-managed directory, such as `CORP`.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for your self-managed user account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the directory.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the directory.
    #   @return [String]
    #
    # @!attribute [rw] connect_settings
    #   A DirectoryConnectSettings object that contains additional
    #   information for the operation.
    #   @return [Types::DirectoryConnectSettings]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to AD Connector.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ConnectDirectoryRequest AWS API Documentation
    #
    class ConnectDirectoryRequest < Struct.new(
      :name,
      :short_name,
      :password,
      :description,
      :size,
      :connect_settings,
      :tags)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the results of the ConnectDirectory operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the new directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ConnectDirectoryResult AWS API Documentation
    #
    class ConnectDirectoryResult < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the CreateAlias operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to create the alias.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The requested alias.
    #
    #   The alias must be unique amongst all aliases in Amazon Web Services.
    #   This operation throws an `EntityAlreadyExistsException` error if the
    #   alias already exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateAliasRequest AWS API Documentation
    #
    class CreateAliasRequest < Struct.new(
      :directory_id,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the CreateAlias operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias for the directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateAliasResult AWS API Documentation
    #
    class CreateAliasResult < Struct.new(
      :directory_id,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the CreateComputer operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory in which to create the computer
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] computer_name
    #   The name of the computer account.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   A one-time password that is used to join the computer to the
    #   directory. You should generate a random, strong password to use for
    #   this parameter.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   The fully-qualified distinguished name of the organizational unit to
    #   place the computer account in.
    #   @return [String]
    #
    # @!attribute [rw] computer_attributes
    #   An array of Attribute objects that contain any LDAP attributes to
    #   apply to the computer account.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateComputerRequest AWS API Documentation
    #
    class CreateComputerRequest < Struct.new(
      :directory_id,
      :computer_name,
      :password,
      :organizational_unit_distinguished_name,
      :computer_attributes)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the results for the CreateComputer operation.
    #
    # @!attribute [rw] computer
    #   A Computer object that represents the computer account.
    #   @return [Types::Computer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateComputerResult AWS API Documentation
    #
    class CreateComputerResult < Struct.new(
      :computer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Initiates the creation of a conditional forwarder for your Directory
    # Service for Microsoft Active Directory. Conditional forwarders are
    # required in order to set up a trust relationship with another domain.
    #
    # @!attribute [rw] directory_id
    #   The directory ID of the Amazon Web Services directory for which you
    #   are creating the conditional forwarder.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domain with
    #   which you will set up a trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addrs
    #   The IP addresses of the remote DNS server associated with
    #   RemoteDomainName.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateConditionalForwarderRequest AWS API Documentation
    #
    class CreateConditionalForwarderRequest < Struct.new(
      :directory_id,
      :remote_domain_name,
      :dns_ip_addrs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a CreateConditinalForwarder request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateConditionalForwarderResult AWS API Documentation
    #
    class CreateConditionalForwarderResult < Aws::EmptyStructure; end

    # Contains the inputs for the CreateDirectory operation.
    #
    # @!attribute [rw] name
    #   The fully qualified name for the directory, such as
    #   `corp.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] short_name
    #   The NetBIOS name of the directory, such as `CORP`.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the directory administrator. The directory creation
    #   process creates a directory administrator account with the user name
    #   `Administrator` and this password.
    #
    #   If you need to change the password for the administrator account,
    #   you can use the ResetUserPassword API call.
    #
    #   The regex pattern for this string is made up of the following
    #   conditions:
    #
    #   * Length (?=^.\{8,64}$) – Must be between 8 and 64 characters
    #
    #   ^
    #
    #   AND any 3 of the following password complexity rules required by
    #   Active Directory:
    #
    #   * Numbers and upper case and lowercase
    #     (?=.*\\d)(?=.*\[A-Z\])(?=.*\[a-z\])
    #
    #   * Numbers and special characters and lower case
    #     (?=.*\\d)(?=.*\[^A-Za-z0-9\\s\])(?=.*\[a-z\])
    #
    #   * Special characters and upper case and lower case
    #     (?=.*\[^A-Za-z0-9\\s\])(?=.*\[A-Z\])(?=.*\[a-z\])
    #
    #   * Numbers and upper case and special characters
    #     (?=.*\\d)(?=.*\[A-Z\])(?=.*\[^A-Za-z0-9\\s\])
    #
    #   For additional information about how Active Directory passwords are
    #   enforced, see [Password must meet complexity requirements][1] on the
    #   Microsoft website.
    #
    #
    #
    #   [1]: https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/password-must-meet-complexity-requirements
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the directory.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the directory.
    #   @return [String]
    #
    # @!attribute [rw] vpc_settings
    #   A DirectoryVpcSettings object that contains additional information
    #   for the operation.
    #   @return [Types::DirectoryVpcSettings]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Simple AD directory.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateDirectoryRequest AWS API Documentation
    #
    class CreateDirectoryRequest < Struct.new(
      :name,
      :short_name,
      :password,
      :description,
      :size,
      :vpc_settings,
      :tags)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the results of the CreateDirectory operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateDirectoryResult AWS API Documentation
    #
    class CreateDirectoryResult < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   Identifier of the directory to which you want to subscribe and
    #   receive real-time logs to your specified CloudWatch log group.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the CloudWatch log group where the real-time domain
    #   controller logs are forwarded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateLogSubscriptionRequest AWS API Documentation
    #
    class CreateLogSubscriptionRequest < Struct.new(
      :directory_id,
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateLogSubscriptionResult AWS API Documentation
    #
    class CreateLogSubscriptionResult < Aws::EmptyStructure; end

    # Creates an Managed Microsoft AD directory.
    #
    # @!attribute [rw] name
    #   The fully qualified domain name for the Managed Microsoft AD
    #   directory, such as `corp.example.com`. This name will resolve inside
    #   your VPC only. It does not need to be publicly resolvable.
    #   @return [String]
    #
    # @!attribute [rw] short_name
    #   The NetBIOS name for your domain, such as `CORP`. If you don't
    #   specify a NetBIOS name, it will default to the first part of your
    #   directory DNS. For example, `CORP` for the directory DNS
    #   `corp.example.com`.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the default administrative user named `Admin`.
    #
    #   If you need to change the password for the administrator account,
    #   you can use the ResetUserPassword API call.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the directory. This label will appear on the
    #   Amazon Web Services console `Directory Details` page after the
    #   directory is created.
    #   @return [String]
    #
    # @!attribute [rw] vpc_settings
    #   Contains VPC information for the CreateDirectory or
    #   CreateMicrosoftAD operation.
    #   @return [Types::DirectoryVpcSettings]
    #
    # @!attribute [rw] edition
    #   Managed Microsoft AD is available in two editions: `Standard` and
    #   `Enterprise`. `Enterprise` is the default.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Managed Microsoft AD directory.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateMicrosoftADRequest AWS API Documentation
    #
    class CreateMicrosoftADRequest < Struct.new(
      :name,
      :short_name,
      :password,
      :description,
      :vpc_settings,
      :edition,
      :tags)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Result of a CreateMicrosoftAD request.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateMicrosoftADResult AWS API Documentation
    #
    class CreateMicrosoftADResult < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the CreateSnapshot operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory of which to take a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name to apply to the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateSnapshotRequest AWS API Documentation
    #
    class CreateSnapshotRequest < Struct.new(
      :directory_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the CreateSnapshot operation.
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateSnapshotResult AWS API Documentation
    #
    class CreateSnapshotResult < Struct.new(
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Directory Service for Microsoft Active Directory allows you to
    # configure trust relationships. For example, you can establish a trust
    # between your Managed Microsoft AD directory, and your existing
    # self-managed Microsoft Active Directory. This would allow you to
    # provide users and groups access to resources in either domain, with a
    # single set of credentials.
    #
    # This action initiates the creation of the Amazon Web Services side of
    # a trust relationship between an Managed Microsoft AD directory and an
    # external domain.
    #
    # @!attribute [rw] directory_id
    #   The Directory ID of the Managed Microsoft AD directory for which to
    #   establish the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_name
    #   The Fully Qualified Domain Name (FQDN) of the external domain for
    #   which to create the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] trust_password
    #   The trust password. The trust password must be the same password
    #   that was used when creating the trust relationship on the external
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] trust_direction
    #   The direction of the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] trust_type
    #   The trust relationship type. `Forest` is the default.
    #   @return [String]
    #
    # @!attribute [rw] conditional_forwarder_ip_addrs
    #   The IP addresses of the remote DNS server associated with
    #   RemoteDomainName.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selective_auth
    #   Optional parameter to enable selective authentication for the trust.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateTrustRequest AWS API Documentation
    #
    class CreateTrustRequest < Struct.new(
      :directory_id,
      :remote_domain_name,
      :trust_password,
      :trust_direction,
      :trust_type,
      :conditional_forwarder_ip_addrs,
      :selective_auth)
      SENSITIVE = [:trust_password]
      include Aws::Structure
    end

    # The result of a CreateTrust request.
    #
    # @!attribute [rw] trust_id
    #   A unique identifier for the trust relationship that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/CreateTrustResult AWS API Documentation
    #
    class CreateTrustResult < Struct.new(
      :trust_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes a conditional forwarder.
    #
    # @!attribute [rw] directory_id
    #   The directory ID for which you are deleting the conditional
    #   forwarder.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domain with
    #   which you are deleting the conditional forwarder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteConditionalForwarderRequest AWS API Documentation
    #
    class DeleteConditionalForwarderRequest < Struct.new(
      :directory_id,
      :remote_domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DeleteConditionalForwarder request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteConditionalForwarderResult AWS API Documentation
    #
    class DeleteConditionalForwarderResult < Aws::EmptyStructure; end

    # Contains the inputs for the DeleteDirectory operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteDirectoryRequest AWS API Documentation
    #
    class DeleteDirectoryRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the DeleteDirectory operation.
    #
    # @!attribute [rw] directory_id
    #   The directory identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteDirectoryResult AWS API Documentation
    #
    class DeleteDirectoryResult < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   Identifier of the directory whose log subscription you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteLogSubscriptionRequest AWS API Documentation
    #
    class DeleteLogSubscriptionRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteLogSubscriptionResult AWS API Documentation
    #
    class DeleteLogSubscriptionResult < Aws::EmptyStructure; end

    # Contains the inputs for the DeleteSnapshot operation.
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the directory snapshot to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteSnapshotRequest AWS API Documentation
    #
    class DeleteSnapshotRequest < Struct.new(
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the DeleteSnapshot operation.
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the directory snapshot that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteSnapshotResult AWS API Documentation
    #
    class DeleteSnapshotResult < Struct.new(
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes the local side of an existing trust relationship between the
    # Managed Microsoft AD directory and the external domain.
    #
    # @!attribute [rw] trust_id
    #   The Trust ID of the trust relationship to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] delete_associated_conditional_forwarder
    #   Delete a conditional forwarder as part of a DeleteTrustRequest.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteTrustRequest AWS API Documentation
    #
    class DeleteTrustRequest < Struct.new(
      :trust_id,
      :delete_associated_conditional_forwarder)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DeleteTrust request.
    #
    # @!attribute [rw] trust_id
    #   The Trust ID of the trust relationship that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeleteTrustResult AWS API Documentation
    #
    class DeleteTrustResult < Struct.new(
      :trust_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The identifier of the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterCertificateRequest AWS API Documentation
    #
    class DeregisterCertificateRequest < Struct.new(
      :directory_id,
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterCertificateResult AWS API Documentation
    #
    class DeregisterCertificateResult < Aws::EmptyStructure; end

    # Removes the specified directory as a publisher to the specified Amazon
    # SNS topic.
    #
    # @!attribute [rw] directory_id
    #   The Directory ID to remove as a publisher. This directory will no
    #   longer send messages to the specified Amazon SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The name of the Amazon SNS topic from which to remove the directory
    #   as a publisher.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterEventTopicRequest AWS API Documentation
    #
    class DeregisterEventTopicRequest < Struct.new(
      :directory_id,
      :topic_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DeregisterEventTopic request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DeregisterEventTopicResult AWS API Documentation
    #
    class DeregisterEventTopicResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The identifier of the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeCertificateRequest AWS API Documentation
    #
    class DescribeCertificateRequest < Struct.new(
      :directory_id,
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   Information about the certificate, including registered date time,
    #   certificate state, the reason for the state, expiration date time,
    #   and certificate common name.
    #   @return [Types::Certificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeCertificateResult AWS API Documentation
    #
    class DescribeCertificateResult < Struct.new(
      :certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to retrieve information.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of client authentication for which to retrieve information.
    #   If no type is specified, a list of all client authentication types
    #   that are supported for the specified directory is retrieved.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The *DescribeClientAuthenticationSettingsResult.NextToken* value
    #   from a previous call to DescribeClientAuthenticationSettings. Pass
    #   null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return. If this value is zero, the
    #   maximum number of items is specified by the limitations of the
    #   operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeClientAuthenticationSettingsRequest AWS API Documentation
    #
    class DescribeClientAuthenticationSettingsRequest < Struct.new(
      :directory_id,
      :type,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_authentication_settings_info
    #   Information about the type of client authentication for the
    #   specified directory. The following information is retrieved: The
    #   date and time when the status of the client authentication type was
    #   last updated, whether the client authentication type is enabled or
    #   disabled, and the type of client authentication.
    #   @return [Array<Types::ClientAuthenticationSettingInfo>]
    #
    # @!attribute [rw] next_token
    #   The next token used to retrieve the client authentication settings
    #   if the number of setting types exceeds page limit and there is
    #   another page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeClientAuthenticationSettingsResult AWS API Documentation
    #
    class DescribeClientAuthenticationSettingsResult < Struct.new(
      :client_authentication_settings_info,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a conditional forwarder.
    #
    # @!attribute [rw] directory_id
    #   The directory ID for which to get the list of associated conditional
    #   forwarders.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_names
    #   The fully qualified domain names (FQDN) of the remote domains for
    #   which to get the list of associated conditional forwarders. If this
    #   member is null, all conditional forwarders are returned.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeConditionalForwardersRequest AWS API Documentation
    #
    class DescribeConditionalForwardersRequest < Struct.new(
      :directory_id,
      :remote_domain_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DescribeConditionalForwarder request.
    #
    # @!attribute [rw] conditional_forwarders
    #   The list of conditional forwarders that have been created.
    #   @return [Array<Types::ConditionalForwarder>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeConditionalForwardersResult AWS API Documentation
    #
    class DescribeConditionalForwardersResult < Struct.new(
      :conditional_forwarders)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the DescribeDirectories operation.
    #
    # @!attribute [rw] directory_ids
    #   A list of identifiers of the directories for which to obtain the
    #   information. If this member is null, all directories that belong to
    #   the current account are returned.
    #
    #   An empty list results in an `InvalidParameterException` being
    #   thrown.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `DescribeDirectoriesResult.NextToken` value from a previous call
    #   to DescribeDirectories. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return. If this value is zero, the
    #   maximum number of items is specified by the limitations of the
    #   operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDirectoriesRequest AWS API Documentation
    #
    class DescribeDirectoriesRequest < Struct.new(
      :directory_ids,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the DescribeDirectories operation.
    #
    # @!attribute [rw] directory_descriptions
    #   The list of available DirectoryDescription objects that were
    #   retrieved.
    #
    #   It is possible that this list contains less than the number of items
    #   specified in the `Limit` member of the request. This occurs if there
    #   are less than the requested number of items left to retrieve, or if
    #   the limitations of the operation have been exceeded.
    #   @return [Array<Types::DirectoryDescription>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter in a subsequent call to DescribeDirectories to
    #   retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDirectoriesResult AWS API Documentation
    #
    class DescribeDirectoriesResult < Struct.new(
      :directory_descriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The directory identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDirectoryDataAccessRequest AWS API Documentation
    #
    class DescribeDirectoryDataAccessRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_access_status
    #   The current status of data access through the Directory Service Data
    #   API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDirectoryDataAccessResult AWS API Documentation
    #
    class DescribeDirectoryDataAccessResult < Struct.new(
      :data_access_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   Identifier of the directory for which to retrieve the domain
    #   controller information.
    #   @return [String]
    #
    # @!attribute [rw] domain_controller_ids
    #   A list of identifiers for the domain controllers whose information
    #   will be provided.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The *DescribeDomainControllers.NextToken* value from a previous call
    #   to DescribeDomainControllers. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDomainControllersRequest AWS API Documentation
    #
    class DescribeDomainControllersRequest < Struct.new(
      :directory_id,
      :domain_controller_ids,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_controllers
    #   List of the DomainController objects that were retrieved.
    #   @return [Array<Types::DomainController>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter in a subsequent call to
    #   DescribeDomainControllers retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeDomainControllersResult AWS API Documentation
    #
    class DescribeDomainControllersResult < Struct.new(
      :domain_controllers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes event topics.
    #
    # @!attribute [rw] directory_id
    #   The Directory ID for which to get the list of associated Amazon SNS
    #   topics. If this member is null, associations for all Directory IDs
    #   are returned.
    #   @return [String]
    #
    # @!attribute [rw] topic_names
    #   A list of Amazon SNS topic names for which to obtain the
    #   information. If this member is null, all associations for the
    #   specified Directory ID are returned.
    #
    #   An empty list results in an `InvalidParameterException` being
    #   thrown.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeEventTopicsRequest AWS API Documentation
    #
    class DescribeEventTopicsRequest < Struct.new(
      :directory_id,
      :topic_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DescribeEventTopic request.
    #
    # @!attribute [rw] event_topics
    #   A list of Amazon SNS topic names that receive status messages from
    #   the specified Directory ID.
    #   @return [Array<Types::EventTopic>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeEventTopicsResult AWS API Documentation
    #
    class DescribeEventTopicsResult < Struct.new(
      :event_topics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of LDAP security to enable. Currently only the value
    #   `Client` is supported.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The type of next token used for pagination.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies the number of items that should be displayed on one page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeLDAPSSettingsRequest AWS API Documentation
    #
    class DescribeLDAPSSettingsRequest < Struct.new(
      :directory_id,
      :type,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ldaps_settings_info
    #   Information about LDAP security for the specified directory,
    #   including status of enablement, state last updated date time, and
    #   the reason for the state.
    #   @return [Array<Types::LDAPSSettingInfo>]
    #
    # @!attribute [rw] next_token
    #   The next token used to retrieve the LDAPS settings if the number of
    #   setting types exceeds page limit and there is another page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeLDAPSSettingsResult AWS API Documentation
    #
    class DescribeLDAPSSettingsResult < Struct.new(
      :ldaps_settings_info,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The name of the Region. For example, `us-east-1`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `DescribeRegionsResult.NextToken` value from a previous call to
    #   DescribeRegions. Pass null if this is the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeRegionsRequest AWS API Documentation
    #
    class DescribeRegionsRequest < Struct.new(
      :directory_id,
      :region_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] regions_description
    #   List of Region information related to the directory for each
    #   replicated Region.
    #   @return [Array<Types::RegionDescription>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter in a subsequent call to DescribeRegions to
    #   retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeRegionsResult AWS API Documentation
    #
    class DescribeRegionsResult < Struct.new(
      :regions_description,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to retrieve information.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the directory settings for which to retrieve
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `DescribeSettingsResult.NextToken` value from a previous call to
    #   DescribeSettings. Pass null if this is the first call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSettingsRequest AWS API Documentation
    #
    class DescribeSettingsRequest < Struct.new(
      :directory_id,
      :status,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] setting_entries
    #   The list of SettingEntry objects that were retrieved.
    #
    #   It is possible that this list contains less than the number of items
    #   specified in the `Limit` member of the request. This occurs if there
    #   are less than the requested number of items left to retrieve, or if
    #   the limitations of the operation have been exceeded.
    #   @return [Array<Types::SettingEntry>]
    #
    # @!attribute [rw] next_token
    #   If not null, token that indicates that more results are available.
    #   Pass this value for the `NextToken` parameter in a subsequent call
    #   to `DescribeSettings` to retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSettingsResult AWS API Documentation
    #
    class DescribeSettingsResult < Struct.new(
      :directory_id,
      :setting_entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] owner_directory_id
    #   Returns the identifier of the directory in the directory owner
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] shared_directory_ids
    #   A list of identifiers of all shared directories in your account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The `DescribeSharedDirectoriesResult.NextToken` value from a
    #   previous call to DescribeSharedDirectories. Pass null if this is the
    #   first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of shared directories to return in the response object.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSharedDirectoriesRequest AWS API Documentation
    #
    class DescribeSharedDirectoriesRequest < Struct.new(
      :owner_directory_id,
      :shared_directory_ids,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shared_directories
    #   A list of all shared directories in your account.
    #   @return [Array<Types::SharedDirectory>]
    #
    # @!attribute [rw] next_token
    #   If not null, token that indicates that more results are available.
    #   Pass this value for the `NextToken` parameter in a subsequent call
    #   to DescribeSharedDirectories to retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSharedDirectoriesResult AWS API Documentation
    #
    class DescribeSharedDirectoriesResult < Struct.new(
      :shared_directories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the DescribeSnapshots operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to retrieve snapshot
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_ids
    #   A list of identifiers of the snapshots to obtain the information
    #   for. If this member is null or empty, all snapshots are returned
    #   using the *Limit* and *NextToken* members.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The *DescribeSnapshotsResult.NextToken* value from a previous call
    #   to DescribeSnapshots. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSnapshotsRequest AWS API Documentation
    #
    class DescribeSnapshotsRequest < Struct.new(
      :directory_id,
      :snapshot_ids,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the DescribeSnapshots operation.
    #
    # @!attribute [rw] snapshots
    #   The list of Snapshot objects that were retrieved.
    #
    #   It is possible that this list contains less than the number of items
    #   specified in the *Limit* member of the request. This occurs if there
    #   are less than the requested number of items left to retrieve, or if
    #   the limitations of the operation have been exceeded.
    #   @return [Array<Types::Snapshot>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value in the
    #   *NextToken* member of a subsequent call to DescribeSnapshots.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeSnapshotsResult AWS API Documentation
    #
    class DescribeSnapshotsResult < Struct.new(
      :snapshots,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the trust relationships for a particular Managed Microsoft
    # AD directory. If no input parameters are provided, such as directory
    # ID or trust ID, this request describes all the trust relationships.
    #
    # @!attribute [rw] directory_id
    #   The Directory ID of the Amazon Web Services directory that is a part
    #   of the requested trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] trust_ids
    #   A list of identifiers of the trust relationships for which to obtain
    #   the information. If this member is null, all trust relationships
    #   that belong to the current account are returned.
    #
    #   An empty list results in an `InvalidParameterException` being
    #   thrown.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The *DescribeTrustsResult.NextToken* value from a previous call to
    #   DescribeTrusts. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of objects to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeTrustsRequest AWS API Documentation
    #
    class DescribeTrustsRequest < Struct.new(
      :directory_id,
      :trust_ids,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a DescribeTrust request.
    #
    # @!attribute [rw] trusts
    #   The list of Trust objects that were retrieved.
    #
    #   It is possible that this list contains less than the number of items
    #   specified in the *Limit* member of the request. This occurs if there
    #   are less than the requested number of items left to retrieve, or if
    #   the limitations of the operation have been exceeded.
    #   @return [Array<Types::Trust>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   *NextToken* parameter in a subsequent call to DescribeTrusts to
    #   retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeTrustsResult AWS API Documentation
    #
    class DescribeTrustsResult < Struct.new(
      :trusts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The unique identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] update_type
    #   The type of updates you want to describe for the directory.
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The name of the Region.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `DescribeUpdateDirectoryResult`. NextToken value from a previous
    #   call to DescribeUpdateDirectory. Pass null if this is the first
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeUpdateDirectoryRequest AWS API Documentation
    #
    class DescribeUpdateDirectoryRequest < Struct.new(
      :directory_id,
      :update_type,
      :region_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_activities
    #   The list of update activities on a directory for the requested
    #   update type.
    #   @return [Array<Types::UpdateInfoEntry>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DescribeUpdateDirectoryResult AWS API Documentation
    #
    class DescribeUpdateDirectoryResult < Struct.new(
      :update_activities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Region you specified is the same Region where the Managed
    # Microsoft AD directory was created. Specify a different Region and try
    # again.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryAlreadyInRegionException AWS API Documentation
    #
    class DirectoryAlreadyInRegionException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified directory has already been shared with this Amazon Web
    # Services account.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryAlreadySharedException AWS API Documentation
    #
    class DirectoryAlreadySharedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for the ConnectDirectory operation when an AD
    # Connector directory is being created.
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC in which the AD Connector is created.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet identifiers in the VPC in which the AD Connector is
    #   created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_dns_ips
    #   A list of one or more IP addresses of DNS servers or domain
    #   controllers in your self-managed directory.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_user_name
    #   The user name of an account in your self-managed directory that is
    #   used to connect to the directory. This account must have the
    #   following permissions:
    #
    #   * Read users and groups
    #
    #   * Create computer objects
    #
    #   * Join computers to the domain
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryConnectSettings AWS API Documentation
    #
    class DirectoryConnectSettings < Struct.new(
      :vpc_id,
      :subnet_ids,
      :customer_dns_ips,
      :customer_user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an AD Connector directory.
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that the AD Connector is in.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet identifiers in the VPC that the AD Connector is in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_user_name
    #   The user name of the service account in your self-managed directory.
    #   @return [String]
    #
    # @!attribute [rw] security_group_id
    #   The security group identifier for the AD Connector directory.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   A list of the Availability Zones that the directory is in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connect_ips
    #   The IP addresses of the AD Connector servers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryConnectSettingsDescription AWS API Documentation
    #
    class DirectoryConnectSettingsDescription < Struct.new(
      :vpc_id,
      :subnet_ids,
      :customer_user_name,
      :security_group_id,
      :availability_zones,
      :connect_ips)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an Directory Service directory.
    #
    # @!attribute [rw] directory_id
    #   The directory identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The fully qualified name of the directory.
    #   @return [String]
    #
    # @!attribute [rw] short_name
    #   The short name of the directory.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The directory size.
    #   @return [String]
    #
    # @!attribute [rw] edition
    #   The edition associated with this directory.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias for the directory. If no alias has been created for the
    #   directory, the alias is the directory identifier, such as
    #   `d-XXXXXXXXXX`.
    #   @return [String]
    #
    # @!attribute [rw] access_url
    #   The access URL for the directory, such as
    #   `http://<alias>.awsapps.com`. If no alias has been created for the
    #   directory, `<alias>` is the directory identifier, such as
    #   `d-XXXXXXXXXX`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the directory.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addrs
    #   The IP addresses of the DNS servers for the directory. For a Simple
    #   AD or Microsoft AD directory, these are the IP addresses of the
    #   Simple AD or Microsoft AD directory servers. For an AD Connector
    #   directory, these are the IP addresses of the DNS servers or domain
    #   controllers in your self-managed directory to which the AD Connector
    #   is connected.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stage
    #   The current stage of the directory.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   Current directory status of the shared Managed Microsoft AD
    #   directory.
    #   @return [String]
    #
    # @!attribute [rw] share_method
    #   The method used when sharing a directory to determine whether the
    #   directory should be shared within your Amazon Web Services
    #   organization (`ORGANIZATIONS`) or with any Amazon Web Services
    #   account by sending a shared directory request (`HANDSHAKE`).
    #   @return [String]
    #
    # @!attribute [rw] share_notes
    #   A directory share request that is sent by the directory owner to the
    #   directory consumer. The request includes a typed message to help the
    #   directory consumer administrator determine whether to approve or
    #   reject the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] launch_time
    #   Specifies when the directory was created.
    #   @return [Time]
    #
    # @!attribute [rw] stage_last_updated_date_time
    #   The date and time that the stage was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The directory type.
    #   @return [String]
    #
    # @!attribute [rw] vpc_settings
    #   A DirectoryVpcSettingsDescription object that contains additional
    #   information about a directory. This member is only present if the
    #   directory is a Simple AD or Managed Microsoft AD directory.
    #   @return [Types::DirectoryVpcSettingsDescription]
    #
    # @!attribute [rw] connect_settings
    #   A DirectoryConnectSettingsDescription object that contains
    #   additional information about an AD Connector directory. This member
    #   is only present if the directory is an AD Connector directory.
    #   @return [Types::DirectoryConnectSettingsDescription]
    #
    # @!attribute [rw] radius_settings
    #   A RadiusSettings object that contains information about the RADIUS
    #   server configured for this directory.
    #   @return [Types::RadiusSettings]
    #
    # @!attribute [rw] radius_status
    #   The status of the RADIUS MFA server connection.
    #   @return [String]
    #
    # @!attribute [rw] stage_reason
    #   Additional information about the directory stage.
    #   @return [String]
    #
    # @!attribute [rw] sso_enabled
    #   Indicates if single sign-on is enabled for the directory. For more
    #   information, see EnableSso and DisableSso.
    #   @return [Boolean]
    #
    # @!attribute [rw] desired_number_of_domain_controllers
    #   The desired number of domain controllers in the directory if the
    #   directory is Microsoft AD.
    #   @return [Integer]
    #
    # @!attribute [rw] owner_directory_description
    #   Describes the Managed Microsoft AD directory in the directory owner
    #   account.
    #   @return [Types::OwnerDirectoryDescription]
    #
    # @!attribute [rw] regions_info
    #   Lists the Regions where the directory has replicated.
    #   @return [Types::RegionsInfo]
    #
    # @!attribute [rw] os_version
    #   The operating system (OS) version of the directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryDescription AWS API Documentation
    #
    class DirectoryDescription < Struct.new(
      :directory_id,
      :name,
      :short_name,
      :size,
      :edition,
      :alias,
      :access_url,
      :description,
      :dns_ip_addrs,
      :stage,
      :share_status,
      :share_method,
      :share_notes,
      :launch_time,
      :stage_last_updated_date_time,
      :type,
      :vpc_settings,
      :connect_settings,
      :radius_settings,
      :radius_status,
      :stage_reason,
      :sso_enabled,
      :desired_number_of_domain_controllers,
      :owner_directory_description,
      :regions_info,
      :os_version)
      SENSITIVE = [:share_notes]
      include Aws::Structure
    end

    # The specified directory does not exist in the system.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryDoesNotExistException AWS API Documentation
    #
    class DirectoryDoesNotExistException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The directory is already updated to desired update type settings.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryInDesiredStateException AWS API Documentation
    #
    class DirectoryInDesiredStateException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of directories in the region has been reached. You
    # can use the GetDirectoryLimits operation to determine your directory
    # limits in the region.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryLimitExceededException AWS API Documentation
    #
    class DirectoryLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains directory limit information for a Region.
    #
    # @!attribute [rw] cloud_only_directories_limit
    #   The maximum number of cloud directories allowed in the Region.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_only_directories_current_count
    #   The current number of cloud directories in the Region.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_only_directories_limit_reached
    #   Indicates if the cloud directory limit has been reached.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_only_microsoft_ad_limit
    #   The maximum number of Managed Microsoft AD directories allowed in
    #   the region.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_only_microsoft_ad_current_count
    #   The current number of Managed Microsoft AD directories in the
    #   region.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_only_microsoft_ad_limit_reached
    #   Indicates if the Managed Microsoft AD directory limit has been
    #   reached.
    #   @return [Boolean]
    #
    # @!attribute [rw] connected_directories_limit
    #   The maximum number of connected directories allowed in the Region.
    #   @return [Integer]
    #
    # @!attribute [rw] connected_directories_current_count
    #   The current number of connected directories in the Region.
    #   @return [Integer]
    #
    # @!attribute [rw] connected_directories_limit_reached
    #   Indicates if the connected directory limit has been reached.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryLimits AWS API Documentation
    #
    class DirectoryLimits < Struct.new(
      :cloud_only_directories_limit,
      :cloud_only_directories_current_count,
      :cloud_only_directories_limit_reached,
      :cloud_only_microsoft_ad_limit,
      :cloud_only_microsoft_ad_current_count,
      :cloud_only_microsoft_ad_limit_reached,
      :connected_directories_limit,
      :connected_directories_current_count,
      :connected_directories_limit_reached)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified directory has not been shared with this Amazon Web
    # Services account.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryNotSharedException AWS API Documentation
    #
    class DirectoryNotSharedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified directory is unavailable.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryUnavailableException AWS API Documentation
    #
    class DirectoryUnavailableException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains VPC information for the CreateDirectory or CreateMicrosoftAD
    # operation.
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC in which to create the directory.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The identifiers of the subnets for the directory servers. The two
    #   subnets must be in different Availability Zones. Directory Service
    #   creates a directory server and a DNS server in each of these
    #   subnets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryVpcSettings AWS API Documentation
    #
    class DirectoryVpcSettings < Struct.new(
      :vpc_id,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the directory.
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that the directory is in.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The identifiers of the subnets for the directory servers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_id
    #   The domain controller security group identifier for the directory.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   The list of Availability Zones that the directory is in.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DirectoryVpcSettingsDescription AWS API Documentation
    #
    class DirectoryVpcSettingsDescription < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_id,
      :availability_zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of client authentication to disable. Currently the only
    #   parameter `"SmartCard"` is supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableClientAuthenticationRequest AWS API Documentation
    #
    class DisableClientAuthenticationRequest < Struct.new(
      :directory_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableClientAuthenticationResult AWS API Documentation
    #
    class DisableClientAuthenticationResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   The directory identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableDirectoryDataAccessRequest AWS API Documentation
    #
    class DisableDirectoryDataAccessRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableDirectoryDataAccessResult AWS API Documentation
    #
    class DisableDirectoryDataAccessResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of LDAP security to enable. Currently only the value
    #   `Client` is supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableLDAPSRequest AWS API Documentation
    #
    class DisableLDAPSRequest < Struct.new(
      :directory_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableLDAPSResult AWS API Documentation
    #
    class DisableLDAPSResult < Aws::EmptyStructure; end

    # Contains the inputs for the DisableRadius operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to disable MFA.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableRadiusRequest AWS API Documentation
    #
    class DisableRadiusRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the DisableRadius operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableRadiusResult AWS API Documentation
    #
    class DisableRadiusResult < Aws::EmptyStructure; end

    # Contains the inputs for the DisableSso operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to disable single-sign on.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The username of an alternate account to use to disable single-sign
    #   on. This is only used for AD Connector directories. This account
    #   must have privileges to remove a service principal name.
    #
    #   If the AD Connector service account does not have privileges to
    #   remove a service principal name, you can specify an alternate
    #   account with the *UserName* and *Password* parameters. These
    #   credentials are only used to disable single sign-on and are not
    #   stored by the service. The AD Connector service account is not
    #   changed.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of an alternate account to use to disable single-sign
    #   on. This is only used for AD Connector directories. For more
    #   information, see the *UserName* parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableSsoRequest AWS API Documentation
    #
    class DisableSsoRequest < Struct.new(
      :directory_id,
      :user_name,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the results of the DisableSso operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DisableSsoResult AWS API Documentation
    #
    class DisableSsoResult < Aws::EmptyStructure; end

    # Contains information about the domain controllers for a specified
    # directory.
    #
    # @!attribute [rw] directory_id
    #   Identifier of the directory where the domain controller resides.
    #   @return [String]
    #
    # @!attribute [rw] domain_controller_id
    #   Identifies a specific domain controller in the directory.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addr
    #   The IP address of the domain controller.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that contains the domain controller.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   Identifier of the subnet in the VPC that contains the domain
    #   controller.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the domain controller is located.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the domain controller.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   A description of the domain controller state.
    #   @return [String]
    #
    # @!attribute [rw] launch_time
    #   Specifies when the domain controller was created.
    #   @return [Time]
    #
    # @!attribute [rw] status_last_updated_date_time
    #   The date and time that the status was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DomainController AWS API Documentation
    #
    class DomainController < Struct.new(
      :directory_id,
      :domain_controller_id,
      :dns_ip_addr,
      :vpc_id,
      :subnet_id,
      :availability_zone,
      :status,
      :status_reason,
      :launch_time,
      :status_last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum allowed number of domain controllers per directory was
    # exceeded. The default limit per directory is 20 domain controllers.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/DomainControllerLimitExceededException AWS API Documentation
    #
    class DomainControllerLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the specified directory.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of client authentication to enable. Currently only the
    #   value `SmartCard` is supported. Smart card authentication in AD
    #   Connector requires that you enable Kerberos Constrained Delegation
    #   for the Service User to the LDAP service in your self-managed AD.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableClientAuthenticationRequest AWS API Documentation
    #
    class EnableClientAuthenticationRequest < Struct.new(
      :directory_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableClientAuthenticationResult AWS API Documentation
    #
    class EnableClientAuthenticationResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   The directory identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableDirectoryDataAccessRequest AWS API Documentation
    #
    class EnableDirectoryDataAccessRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableDirectoryDataAccessResult AWS API Documentation
    #
    class EnableDirectoryDataAccessResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of LDAP security to enable. Currently only the value
    #   `Client` is supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableLDAPSRequest AWS API Documentation
    #
    class EnableLDAPSRequest < Struct.new(
      :directory_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableLDAPSResult AWS API Documentation
    #
    class EnableLDAPSResult < Aws::EmptyStructure; end

    # Contains the inputs for the EnableRadius operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to enable MFA.
    #   @return [String]
    #
    # @!attribute [rw] radius_settings
    #   A RadiusSettings object that contains information about the RADIUS
    #   server.
    #   @return [Types::RadiusSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableRadiusRequest AWS API Documentation
    #
    class EnableRadiusRequest < Struct.new(
      :directory_id,
      :radius_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the EnableRadius operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableRadiusResult AWS API Documentation
    #
    class EnableRadiusResult < Aws::EmptyStructure; end

    # Contains the inputs for the EnableSso operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to enable single-sign on.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The username of an alternate account to use to enable single-sign
    #   on. This is only used for AD Connector directories. This account
    #   must have privileges to add a service principal name.
    #
    #   If the AD Connector service account does not have privileges to add
    #   a service principal name, you can specify an alternate account with
    #   the *UserName* and *Password* parameters. These credentials are only
    #   used to enable single sign-on and are not stored by the service. The
    #   AD Connector service account is not changed.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of an alternate account to use to enable single-sign
    #   on. This is only used for AD Connector directories. For more
    #   information, see the *UserName* parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableSsoRequest AWS API Documentation
    #
    class EnableSsoRequest < Struct.new(
      :directory_id,
      :user_name,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Contains the results of the EnableSso operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EnableSsoResult AWS API Documentation
    #
    class EnableSsoResult < Aws::EmptyStructure; end

    # The specified entity already exists.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EntityAlreadyExistsException AWS API Documentation
    #
    class EntityAlreadyExistsException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified entity could not be found.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EntityDoesNotExistException AWS API Documentation
    #
    class EntityDoesNotExistException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about Amazon SNS topic and Directory Service directory
    # associations.
    #
    # @!attribute [rw] directory_id
    #   The Directory ID of an Directory Service directory that will publish
    #   status messages to an Amazon SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The name of an Amazon SNS topic the receives status messages from
    #   the directory.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon SNS topic ARN (Amazon Resource Name).
    #   @return [String]
    #
    # @!attribute [rw] created_date_time
    #   The date and time of when you associated your directory with the
    #   Amazon SNS topic.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The topic registration status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/EventTopic AWS API Documentation
    #
    class EventTopic < Struct.new(
      :directory_id,
      :topic_name,
      :topic_arn,
      :created_date_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the GetDirectoryLimits operation.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetDirectoryLimitsRequest AWS API Documentation
    #
    class GetDirectoryLimitsRequest < Aws::EmptyStructure; end

    # Contains the results of the GetDirectoryLimits operation.
    #
    # @!attribute [rw] directory_limits
    #   A DirectoryLimits object that contains the directory limits for the
    #   current Region.
    #   @return [Types::DirectoryLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetDirectoryLimitsResult AWS API Documentation
    #
    class GetDirectoryLimitsResult < Struct.new(
      :directory_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the inputs for the GetSnapshotLimits operation.
    #
    # @!attribute [rw] directory_id
    #   Contains the identifier of the directory to obtain the limits for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetSnapshotLimitsRequest AWS API Documentation
    #
    class GetSnapshotLimitsRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the GetSnapshotLimits operation.
    #
    # @!attribute [rw] snapshot_limits
    #   A SnapshotLimits object that contains the manual snapshot limits for
    #   the specified directory.
    #   @return [Types::SnapshotLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/GetSnapshotLimitsResult AWS API Documentation
    #
    class GetSnapshotLimitsResult < Struct.new(
      :snapshot_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified directory setting is not compatible with other settings.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/IncompatibleSettingsException AWS API Documentation
    #
    class IncompatibleSettingsException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account does not have sufficient permission to perform the
    # operation.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InsufficientPermissionsException AWS API Documentation
    #
    class InsufficientPermissionsException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate PEM that was provided has incorrect encoding.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidCertificateException AWS API Documentation
    #
    class InvalidCertificateException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Client authentication is already enabled.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidClientAuthStatusException AWS API Documentation
    #
    class InvalidClientAuthStatusException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LDAP activities could not be performed because they are limited by
    # the LDAPS status.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidLDAPSStatusException AWS API Documentation
    #
    class InvalidLDAPSStatusException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `NextToken` value is not valid.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters are not valid.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The new password provided by the user does not meet the password
    # complexity requirements defined in your directory.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidPasswordException AWS API Documentation
    #
    class InvalidPasswordException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified shared target is not valid.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/InvalidTargetException AWS API Documentation
    #
    class InvalidTargetException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # IP address block. This is often the address block of the DNS server
    # used for your self-managed domain.
    #
    # @!attribute [rw] cidr_ip
    #   IP address block using CIDR format, for example 10.0.0.0/24. This is
    #   often the address block of the DNS server used for your self-managed
    #   domain. For a single IP address use a CIDR address block with /32.
    #   For example 10.0.0.0/32.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the address block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/IpRoute AWS API Documentation
    #
    class IpRoute < Struct.new(
      :cidr_ip,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about one or more IP address blocks.
    #
    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory associated with the IP addresses.
    #   @return [String]
    #
    # @!attribute [rw] cidr_ip
    #   IP address block in the IpRoute.
    #   @return [String]
    #
    # @!attribute [rw] ip_route_status_msg
    #   The status of the IP address block.
    #   @return [String]
    #
    # @!attribute [rw] added_date_time
    #   The date and time the address block was added to the directory.
    #   @return [Time]
    #
    # @!attribute [rw] ip_route_status_reason
    #   The reason for the IpRouteStatusMsg.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the IpRouteInfo.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/IpRouteInfo AWS API Documentation
    #
    class IpRouteInfo < Struct.new(
      :directory_id,
      :cidr_ip,
      :ip_route_status_msg,
      :added_date_time,
      :ip_route_status_reason,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum allowed number of IP addresses was exceeded. The default
    # limit is 100 IP address blocks.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/IpRouteLimitExceededException AWS API Documentation
    #
    class IpRouteLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains general information about the LDAPS settings.
    #
    # @!attribute [rw] ldaps_status
    #   The state of the LDAPS settings.
    #   @return [String]
    #
    # @!attribute [rw] ldaps_status_reason
    #   Describes a state change for LDAPS.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time when the LDAPS settings were last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/LDAPSSettingInfo AWS API Documentation
    #
    class LDAPSSettingInfo < Struct.new(
      :ldaps_status,
      :ldaps_status_reason,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token for requesting another page of certificates if the
    #   `NextToken` response element indicates that more certificates are
    #   available. Use the value of the returned `NextToken` element in your
    #   request until the token comes back as `null`. Pass `null` if this is
    #   the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The number of items that should show up on one page
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListCertificatesRequest AWS API Documentation
    #
    class ListCertificatesRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Indicates whether another page of certificates is available when the
    #   number of available certificates exceeds the page limit.
    #   @return [String]
    #
    # @!attribute [rw] certificates_info
    #   A list of certificates with basic details including certificate ID,
    #   certificate common name, certificate state.
    #   @return [Array<Types::CertificateInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListCertificatesResult AWS API Documentation
    #
    class ListCertificatesResult < Struct.new(
      :next_token,
      :certificates_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory for which you want to retrieve the
    #   IP addresses.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The *ListIpRoutes.NextToken* value from a previous call to
    #   ListIpRoutes. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of items to return. If this value is zero, the
    #   maximum number of items is specified by the limitations of the
    #   operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListIpRoutesRequest AWS API Documentation
    #
    class ListIpRoutesRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ip_routes_info
    #   A list of IpRoutes.
    #   @return [Array<Types::IpRouteInfo>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   *NextToken* parameter in a subsequent call to ListIpRoutes to
    #   retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListIpRoutesResult AWS API Documentation
    #
    class ListIpRoutesResult < Struct.new(
      :ip_routes_info,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   If a *DirectoryID* is provided, lists only the log subscription
    #   associated with that directory. If no *DirectoryId* is provided,
    #   lists all log subscriptions associated with your Amazon Web Services
    #   account. If there are no log subscriptions for the Amazon Web
    #   Services account or the directory, an empty list will be returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListLogSubscriptionsRequest AWS API Documentation
    #
    class ListLogSubscriptionsRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_subscriptions
    #   A list of active LogSubscription objects for calling the Amazon Web
    #   Services account.
    #   @return [Array<Types::LogSubscription>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListLogSubscriptionsResult AWS API Documentation
    #
    class ListLogSubscriptionsResult < Struct.new(
      :log_subscriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory from which to retrieve the schema
    #   extension information.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `ListSchemaExtensions.NextToken` value from a previous call to
    #   `ListSchemaExtensions`. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListSchemaExtensionsRequest AWS API Documentation
    #
    class ListSchemaExtensionsRequest < Struct.new(
      :directory_id,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_extensions_info
    #   Information about the schema extensions applied to the directory.
    #   @return [Array<Types::SchemaExtensionInfo>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. Pass this value for the
    #   `NextToken` parameter in a subsequent call to `ListSchemaExtensions`
    #   to retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListSchemaExtensionsResult AWS API Documentation
    #
    class ListSchemaExtensionsResult < Struct.new(
      :schema_extensions_info,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   Identifier (ID) of the directory for which you want to retrieve
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Reserved for future use.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_id,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   List of tags returned by the ListTagsForResource operation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a log subscription, which tracks real-time data from a
    # chosen log group to a specified destination.
    #
    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory that you want to associate with the
    #   log subscription.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] subscription_created_date_time
    #   The date and time that the log subscription was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/LogSubscription AWS API Documentation
    #
    class LogSubscription < Struct.new(
      :directory_id,
      :log_group_name,
      :subscription_created_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Client authentication setup could not be completed because at least
    # one valid certificate must be registered in the system.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/NoAvailableCertificateException AWS API Documentation
    #
    class NoAvailableCertificateException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # OS version that the directory needs to be updated to.
    #
    # @!attribute [rw] os_version
    #   OS version that the directory needs to be updated to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/OSUpdateSettings AWS API Documentation
    #
    class OSUpdateSettings < Struct.new(
      :os_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception encountered while trying to access your Amazon Web Services
    # organization.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/OrganizationsException AWS API Documentation
    #
    class OrganizationsException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the directory owner account details that have been shared to
    # the directory consumer account.
    #
    # @!attribute [rw] directory_id
    #   Identifier of the Managed Microsoft AD directory in the directory
    #   owner account.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Identifier of the directory owner account.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addrs
    #   IP address of the directory’s domain controllers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_settings
    #   Information about the VPC settings for the directory.
    #   @return [Types::DirectoryVpcSettingsDescription]
    #
    # @!attribute [rw] radius_settings
    #   A RadiusSettings object that contains information about the RADIUS
    #   server.
    #   @return [Types::RadiusSettings]
    #
    # @!attribute [rw] radius_status
    #   Information about the status of the RADIUS server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/OwnerDirectoryDescription AWS API Documentation
    #
    class OwnerDirectoryDescription < Struct.new(
      :directory_id,
      :account_id,
      :dns_ip_addrs,
      :vpc_settings,
      :radius_settings,
      :radius_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a Remote Authentication Dial In User
    # Service (RADIUS) server.
    #
    # @!attribute [rw] radius_servers
    #   An array of strings that contains the fully qualified domain name
    #   (FQDN) or IP addresses of the RADIUS server endpoints, or the FQDN
    #   or IP addresses of your RADIUS server load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] radius_port
    #   The port that your RADIUS server is using for communications. Your
    #   self-managed network must allow inbound traffic over this port from
    #   the Directory Service servers.
    #   @return [Integer]
    #
    # @!attribute [rw] radius_timeout
    #   The amount of time, in seconds, to wait for the RADIUS server to
    #   respond.
    #   @return [Integer]
    #
    # @!attribute [rw] radius_retries
    #   The maximum number of times that communication with the RADIUS
    #   server is retried after the initial attempt.
    #   @return [Integer]
    #
    # @!attribute [rw] shared_secret
    #   Required for enabling RADIUS on the directory.
    #   @return [String]
    #
    # @!attribute [rw] authentication_protocol
    #   The protocol specified for your RADIUS endpoints.
    #   @return [String]
    #
    # @!attribute [rw] display_label
    #   Not currently used.
    #   @return [String]
    #
    # @!attribute [rw] use_same_username
    #   Not currently used.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RadiusSettings AWS API Documentation
    #
    class RadiusSettings < Struct.new(
      :radius_servers,
      :radius_port,
      :radius_timeout,
      :radius_retries,
      :shared_secret,
      :authentication_protocol,
      :display_label,
      :use_same_username)
      SENSITIVE = [:shared_secret]
      include Aws::Structure
    end

    # The replicated Region information for a directory.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The name of the Region. For example, `us-east-1`.
    #   @return [String]
    #
    # @!attribute [rw] region_type
    #   Specifies whether the Region is the primary Region or an additional
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the replication process for the specified Region.
    #   @return [String]
    #
    # @!attribute [rw] vpc_settings
    #   Contains VPC information for the CreateDirectory or
    #   CreateMicrosoftAD operation.
    #   @return [Types::DirectoryVpcSettings]
    #
    # @!attribute [rw] desired_number_of_domain_controllers
    #   The desired number of domain controllers in the specified Region for
    #   the specified directory.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_time
    #   Specifies when the Region replication began.
    #   @return [Time]
    #
    # @!attribute [rw] status_last_updated_date_time
    #   The date and time that the Region status was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the Region description was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegionDescription AWS API Documentation
    #
    class RegionDescription < Struct.new(
      :directory_id,
      :region_name,
      :region_type,
      :status,
      :vpc_settings,
      :desired_number_of_domain_controllers,
      :launch_time,
      :status_last_updated_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the limit for maximum number of simultaneous Region
    # replications per directory.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegionLimitExceededException AWS API Documentation
    #
    class RegionLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the Regions that are configured for
    # multi-Region replication.
    #
    # @!attribute [rw] primary_region
    #   The Region where the Managed Microsoft AD directory was originally
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] additional_regions
    #   Lists the Regions where the directory has been replicated, excluding
    #   the primary Region.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegionsInfo AWS API Documentation
    #
    class RegionsInfo < Struct.new(
      :primary_region,
      :additional_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @!attribute [rw] certificate_data
    #   The certificate PEM string that needs to be registered.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The function that the registered certificate performs. Valid values
    #   include `ClientLDAPS` or `ClientCertAuth`. The default value is
    #   `ClientLDAPS`.
    #   @return [String]
    #
    # @!attribute [rw] client_cert_auth_settings
    #   A `ClientCertAuthSettings` object that contains client certificate
    #   authentication settings.
    #   @return [Types::ClientCertAuthSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterCertificateRequest AWS API Documentation
    #
    class RegisterCertificateRequest < Struct.new(
      :directory_id,
      :certificate_data,
      :type,
      :client_cert_auth_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_id
    #   The identifier of the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterCertificateResult AWS API Documentation
    #
    class RegisterCertificateResult < Struct.new(
      :certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Registers a new event topic.
    #
    # @!attribute [rw] directory_id
    #   The Directory ID that will publish status messages to the Amazon SNS
    #   topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_name
    #   The Amazon SNS topic name to which the directory will publish status
    #   messages. This Amazon SNS topic must be in the same region as the
    #   specified Directory ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterEventTopicRequest AWS API Documentation
    #
    class RegisterEventTopicRequest < Struct.new(
      :directory_id,
      :topic_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a RegisterEventTopic request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RegisterEventTopicResult AWS API Documentation
    #
    class RegisterEventTopicResult < Aws::EmptyStructure; end

    # @!attribute [rw] shared_directory_id
    #   Identifier of the shared directory in the directory consumer
    #   account. This identifier is different for each directory owner
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RejectSharedDirectoryRequest AWS API Documentation
    #
    class RejectSharedDirectoryRequest < Struct.new(
      :shared_directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shared_directory_id
    #   Identifier of the shared directory in the directory consumer
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RejectSharedDirectoryResult AWS API Documentation
    #
    class RejectSharedDirectoryResult < Struct.new(
      :shared_directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   Identifier (ID) of the directory from which you want to remove the
    #   IP addresses.
    #   @return [String]
    #
    # @!attribute [rw] cidr_ips
    #   IP address blocks that you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveIpRoutesRequest AWS API Documentation
    #
    class RemoveIpRoutesRequest < Struct.new(
      :directory_id,
      :cidr_ips)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveIpRoutesResult AWS API Documentation
    #
    class RemoveIpRoutesResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   The identifier of the directory for which you want to remove Region
    #   replication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveRegionRequest AWS API Documentation
    #
    class RemoveRegionRequest < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveRegionResult AWS API Documentation
    #
    class RemoveRegionResult < Aws::EmptyStructure; end

    # @!attribute [rw] resource_id
    #   Identifier (ID) of the directory from which to remove the tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key (name) of the tag to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveTagsFromResourceRequest AWS API Documentation
    #
    class RemoveTagsFromResourceRequest < Struct.new(
      :resource_id,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RemoveTagsFromResourceResult AWS API Documentation
    #
    class RemoveTagsFromResourceResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   Identifier of the Managed Microsoft AD or Simple AD directory in
    #   which the user resides.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user name of the user whose password will be reset.
    #   @return [String]
    #
    # @!attribute [rw] new_password
    #   The new password that will be reset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ResetUserPasswordRequest AWS API Documentation
    #
    class ResetUserPasswordRequest < Struct.new(
      :directory_id,
      :user_name,
      :new_password)
      SENSITIVE = [:new_password]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ResetUserPasswordResult AWS API Documentation
    #
    class ResetUserPasswordResult < Aws::EmptyStructure; end

    # An object representing the inputs for the RestoreFromSnapshot
    # operation.
    #
    # @!attribute [rw] snapshot_id
    #   The identifier of the snapshot to restore from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RestoreFromSnapshotRequest AWS API Documentation
    #
    class RestoreFromSnapshotRequest < Struct.new(
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the RestoreFromSnapshot operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/RestoreFromSnapshotResult AWS API Documentation
    #
    class RestoreFromSnapshotResult < Aws::EmptyStructure; end

    # Information about a schema extension.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory to which the schema extension is
    #   applied.
    #   @return [String]
    #
    # @!attribute [rw] schema_extension_id
    #   The identifier of the schema extension.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the schema extension.
    #   @return [String]
    #
    # @!attribute [rw] schema_extension_status
    #   The current status of the schema extension.
    #   @return [String]
    #
    # @!attribute [rw] schema_extension_status_reason
    #   The reason for the `SchemaExtensionStatus`.
    #   @return [String]
    #
    # @!attribute [rw] start_date_time
    #   The date and time that the schema extension started being applied to
    #   the directory.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   The date and time that the schema extension was completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/SchemaExtensionInfo AWS API Documentation
    #
    class SchemaExtensionInfo < Struct.new(
      :directory_id,
      :schema_extension_id,
      :description,
      :schema_extension_status,
      :schema_extension_status_reason,
      :start_date_time,
      :end_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception has occurred in Directory Service.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the configurable settings for a directory.
    #
    # @!attribute [rw] name
    #   The name of the directory setting. For example:
    #
    #   `TLS_1_0`
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the directory setting for which to retrieve
    #   information. For example, for `TLS_1_0`, the valid values are:
    #   `Enable` and `Disable`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Setting AWS API Documentation
    #
    class Setting < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the specified configurable setting for a
    # directory.
    #
    # @!attribute [rw] type
    #   The type, or category, of a directory setting. Similar settings have
    #   the same type. For example, `Protocol`, `Cipher`, or
    #   `Certificate-Based Authentication`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the directory setting. For example:
    #
    #   `TLS_1_0`
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   The valid range of values for the directory setting. These values
    #   depend on the `DataType` of your directory.
    #   @return [String]
    #
    # @!attribute [rw] applied_value
    #   The value of the directory setting that is applied to the directory.
    #   @return [String]
    #
    # @!attribute [rw] requested_value
    #   The value that was last requested for the directory setting.
    #   @return [String]
    #
    # @!attribute [rw] request_status
    #   The overall status of the request to update the directory setting
    #   request. If the directory setting is deployed in more than one
    #   region, and the request fails in any region, the overall status is
    #   `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] request_detailed_status
    #   Details about the status of the request to update the directory
    #   setting. If the directory setting is deployed in more than one
    #   region, status is returned for the request in each region where the
    #   setting is deployed.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_status_message
    #   The last status message for the directory status request.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time when the directory setting was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_requested_date_time
    #   The date and time when the request to update a directory setting was
    #   last submitted.
    #   @return [Time]
    #
    # @!attribute [rw] data_type
    #   The data type of a directory setting. This is used to define the
    #   `AllowedValues` of a setting. For example a data type can be
    #   `Boolean`, `DurationInSeconds`, or `Enum`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/SettingEntry AWS API Documentation
    #
    class SettingEntry < Struct.new(
      :type,
      :name,
      :allowed_values,
      :applied_value,
      :requested_value,
      :request_status,
      :request_detailed_status,
      :request_status_message,
      :last_updated_date_time,
      :last_requested_date_time,
      :data_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   Identifier of the Managed Microsoft AD directory that you want to
    #   share with other Amazon Web Services accounts.
    #   @return [String]
    #
    # @!attribute [rw] share_notes
    #   A directory share request that is sent by the directory owner to the
    #   directory consumer. The request includes a typed message to help the
    #   directory consumer administrator determine whether to approve or
    #   reject the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] share_target
    #   Identifier for the directory consumer account with whom the
    #   directory is to be shared.
    #   @return [Types::ShareTarget]
    #
    # @!attribute [rw] share_method
    #   The method used when sharing a directory to determine whether the
    #   directory should be shared within your Amazon Web Services
    #   organization (`ORGANIZATIONS`) or with any Amazon Web Services
    #   account by sending a directory sharing request (`HANDSHAKE`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ShareDirectoryRequest AWS API Documentation
    #
    class ShareDirectoryRequest < Struct.new(
      :directory_id,
      :share_notes,
      :share_target,
      :share_method)
      SENSITIVE = [:share_notes]
      include Aws::Structure
    end

    # @!attribute [rw] shared_directory_id
    #   Identifier of the directory that is stored in the directory consumer
    #   account that is shared from the specified directory (`DirectoryId`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ShareDirectoryResult AWS API Documentation
    #
    class ShareDirectoryResult < Struct.new(
      :shared_directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of Amazon Web Services accounts that you can share
    # with this directory has been reached.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ShareLimitExceededException AWS API Documentation
    #
    class ShareLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifier that contains details about the directory consumer account.
    #
    # @!attribute [rw] id
    #   Identifier of the directory consumer account.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of identifier to be used in the `Id` field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/ShareTarget AWS API Documentation
    #
    class ShareTarget < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the shared directory in the directory owner account for
    # which the share request in the directory consumer account has been
    # accepted.
    #
    # @!attribute [rw] owner_account_id
    #   Identifier of the directory owner account, which contains the
    #   directory that has been shared to the consumer account.
    #   @return [String]
    #
    # @!attribute [rw] owner_directory_id
    #   Identifier of the directory in the directory owner account.
    #   @return [String]
    #
    # @!attribute [rw] share_method
    #   The method used when sharing a directory to determine whether the
    #   directory should be shared within your Amazon Web Services
    #   organization (`ORGANIZATIONS`) or with any Amazon Web Services
    #   account by sending a shared directory request (`HANDSHAKE`).
    #   @return [String]
    #
    # @!attribute [rw] shared_account_id
    #   Identifier of the directory consumer account that has access to the
    #   shared directory (`OwnerDirectoryId`) in the directory owner
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] shared_directory_id
    #   Identifier of the shared directory in the directory consumer
    #   account. This identifier is different for each directory owner
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   Current directory status of the shared Managed Microsoft AD
    #   directory.
    #   @return [String]
    #
    # @!attribute [rw] share_notes
    #   A directory share request that is sent by the directory owner to the
    #   directory consumer. The request includes a typed message to help the
    #   directory consumer administrator determine whether to approve or
    #   reject the share invitation.
    #   @return [String]
    #
    # @!attribute [rw] created_date_time
    #   The date and time that the shared directory was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the shared directory was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/SharedDirectory AWS API Documentation
    #
    class SharedDirectory < Struct.new(
      :owner_account_id,
      :owner_directory_id,
      :share_method,
      :shared_account_id,
      :shared_directory_id,
      :share_status,
      :share_notes,
      :created_date_time,
      :last_updated_date_time)
      SENSITIVE = [:share_notes]
      include Aws::Structure
    end

    # Describes a directory snapshot.
    #
    # @!attribute [rw] directory_id
    #   The directory identifier.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot identifier.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The snapshot type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The snapshot status.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time that the snapshot was taken.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Snapshot AWS API Documentation
    #
    class Snapshot < Struct.new(
      :directory_id,
      :snapshot_id,
      :type,
      :name,
      :status,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of manual snapshots for the directory has been
    # reached. You can use the GetSnapshotLimits operation to determine the
    # snapshot limits for a directory.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/SnapshotLimitExceededException AWS API Documentation
    #
    class SnapshotLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains manual snapshot limit information for a directory.
    #
    # @!attribute [rw] manual_snapshots_limit
    #   The maximum number of manual snapshots allowed.
    #   @return [Integer]
    #
    # @!attribute [rw] manual_snapshots_current_count
    #   The current number of manual snapshots of the directory.
    #   @return [Integer]
    #
    # @!attribute [rw] manual_snapshots_limit_reached
    #   Indicates if the manual snapshot limit has been reached.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/SnapshotLimits AWS API Documentation
    #
    class SnapshotLimits < Struct.new(
      :manual_snapshots_limit,
      :manual_snapshots_current_count,
      :manual_snapshots_limit_reached)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory for which the schema extension will
    #   be applied to.
    #   @return [String]
    #
    # @!attribute [rw] create_snapshot_before_schema_extension
    #   If true, creates a snapshot of the directory before applying the
    #   schema extension.
    #   @return [Boolean]
    #
    # @!attribute [rw] ldif_content
    #   The LDIF file represented as a string. To construct the LdifContent
    #   string, precede each line as it would be formatted in an ldif file
    #   with \\n. See the example request below for more details. The file
    #   size can be no larger than 1MB.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the schema extension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/StartSchemaExtensionRequest AWS API Documentation
    #
    class StartSchemaExtensionRequest < Struct.new(
      :directory_id,
      :create_snapshot_before_schema_extension,
      :ldif_content,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema_extension_id
    #   The identifier of the schema extension that will be applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/StartSchemaExtensionResult AWS API Documentation
    #
    class StartSchemaExtensionResult < Struct.new(
      :schema_extension_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata assigned to a directory consisting of a key-value pair.
    #
    # @!attribute [rw] key
    #   Required name of the tag. The string value can be Unicode characters
    #   and cannot be prefixed with "aws:". The string can contain only
    #   the set of Unicode letters, digits, white-space, '\_', '.',
    #   '/', '=', '+', '-', ':', '@'(Java regex:
    #   "^(\[\\\\p\{L}\\\\p\{Z}\\\\p\{N}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional value of the tag. The string value can be Unicode
    #   characters. The string can contain only the set of Unicode letters,
    #   digits, white-space, '\_', '.', '/', '=', '+', '-',
    #   ':', '@' (Java regex:
    #   "^(\[\\\\p\{L}\\\\p\{Z}\\\\p\{N}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum allowed number of tags was exceeded.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/TagLimitExceededException AWS API Documentation
    #
    class TagLimitExceededException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a trust relationship between an Managed Microsoft AD
    # directory and an external domain.
    #
    # @!attribute [rw] directory_id
    #   The Directory ID of the Amazon Web Services directory involved in
    #   the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] trust_id
    #   The unique ID of the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_name
    #   The Fully Qualified Domain Name (FQDN) of the external domain
    #   involved in the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] trust_type
    #   The trust relationship type. `Forest` is the default.
    #   @return [String]
    #
    # @!attribute [rw] trust_direction
    #   The trust relationship direction.
    #   @return [String]
    #
    # @!attribute [rw] trust_state
    #   The trust relationship state.
    #   @return [String]
    #
    # @!attribute [rw] created_date_time
    #   The date and time that the trust relationship was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the trust relationship was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state_last_updated_date_time
    #   The date and time that the TrustState was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] trust_state_reason
    #   The reason for the TrustState.
    #   @return [String]
    #
    # @!attribute [rw] selective_auth
    #   Current state of selective authentication for the trust.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/Trust AWS API Documentation
    #
    class Trust < Struct.new(
      :directory_id,
      :trust_id,
      :remote_domain_name,
      :trust_type,
      :trust_direction,
      :trust_state,
      :created_date_time,
      :last_updated_date_time,
      :state_last_updated_date_time,
      :trust_state_reason,
      :selective_auth)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the Managed Microsoft AD directory that you want
    #   to stop sharing.
    #   @return [String]
    #
    # @!attribute [rw] unshare_target
    #   Identifier for the directory consumer account with whom the
    #   directory has to be unshared.
    #   @return [Types::UnshareTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UnshareDirectoryRequest AWS API Documentation
    #
    class UnshareDirectoryRequest < Struct.new(
      :directory_id,
      :unshare_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shared_directory_id
    #   Identifier of the directory stored in the directory consumer account
    #   that is to be unshared from the specified directory (`DirectoryId`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UnshareDirectoryResult AWS API Documentation
    #
    class UnshareDirectoryResult < Struct.new(
      :shared_directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifier that contains details about the directory consumer account
    # with whom the directory is being unshared.
    #
    # @!attribute [rw] id
    #   Identifier of the directory consumer account.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of identifier to be used in the *Id* field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UnshareTarget AWS API Documentation
    #
    class UnshareTarget < Struct.new(
      :id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation is not supported.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified directory setting is not supported.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UnsupportedSettingsException AWS API Documentation
    #
    class UnsupportedSettingsException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates a conditional forwarder.
    #
    # @!attribute [rw] directory_id
    #   The directory ID of the Amazon Web Services directory for which to
    #   update the conditional forwarder.
    #   @return [String]
    #
    # @!attribute [rw] remote_domain_name
    #   The fully qualified domain name (FQDN) of the remote domain with
    #   which you will set up a trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addrs
    #   The updated IP addresses of the remote DNS server associated with
    #   the conditional forwarder.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateConditionalForwarderRequest AWS API Documentation
    #
    class UpdateConditionalForwarderRequest < Struct.new(
      :directory_id,
      :remote_domain_name,
      :dns_ip_addrs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of an UpdateConditionalForwarder request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateConditionalForwarderResult AWS API Documentation
    #
    class UpdateConditionalForwarderResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   The identifier of the directory on which you want to perform the
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] update_type
    #   The type of update that needs to be performed on the directory. For
    #   example, OS.
    #   @return [String]
    #
    # @!attribute [rw] os_update_settings
    #   The settings for the OS update that needs to be performed on the
    #   directory.
    #   @return [Types::OSUpdateSettings]
    #
    # @!attribute [rw] create_snapshot_before_update
    #   The boolean that specifies if a snapshot for the directory needs to
    #   be taken before updating the directory.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateDirectorySetupRequest AWS API Documentation
    #
    class UpdateDirectorySetupRequest < Struct.new(
      :directory_id,
      :update_type,
      :os_update_settings,
      :create_snapshot_before_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateDirectorySetupResult AWS API Documentation
    #
    class UpdateDirectorySetupResult < Aws::EmptyStructure; end

    # An entry of update information related to a requested update type.
    #
    # @!attribute [rw] region
    #   The name of the Region.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the update performed on the directory.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the update type activity.
    #   @return [String]
    #
    # @!attribute [rw] initiated_by
    #   This specifies if the update was initiated by the customer or by the
    #   service team.
    #   @return [String]
    #
    # @!attribute [rw] new_value
    #   The new value of the target setting.
    #   @return [Types::UpdateValue]
    #
    # @!attribute [rw] previous_value
    #   The old value of the target setting.
    #   @return [Types::UpdateValue]
    #
    # @!attribute [rw] start_time
    #   The start time of the `UpdateDirectorySetup` for the particular
    #   type.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The last updated date and time of a particular directory setting.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateInfoEntry AWS API Documentation
    #
    class UpdateInfoEntry < Struct.new(
      :region,
      :status,
      :status_reason,
      :initiated_by,
      :new_value,
      :previous_value,
      :start_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   Identifier of the directory to which the domain controllers will be
    #   added or removed.
    #   @return [String]
    #
    # @!attribute [rw] desired_number
    #   The number of domain controllers desired in the directory.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateNumberOfDomainControllersRequest AWS API Documentation
    #
    class UpdateNumberOfDomainControllersRequest < Struct.new(
      :directory_id,
      :desired_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateNumberOfDomainControllersResult AWS API Documentation
    #
    class UpdateNumberOfDomainControllersResult < Aws::EmptyStructure; end

    # Contains the inputs for the UpdateRadius operation.
    #
    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to update the RADIUS
    #   server information.
    #   @return [String]
    #
    # @!attribute [rw] radius_settings
    #   A RadiusSettings object that contains information about the RADIUS
    #   server.
    #   @return [Types::RadiusSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateRadiusRequest AWS API Documentation
    #
    class UpdateRadiusRequest < Struct.new(
      :directory_id,
      :radius_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the results of the UpdateRadius operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateRadiusResult AWS API Documentation
    #
    class UpdateRadiusResult < Aws::EmptyStructure; end

    # @!attribute [rw] directory_id
    #   The identifier of the directory for which to update settings.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The list of Setting objects.
    #   @return [Array<Types::Setting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateSettingsRequest AWS API Documentation
    #
    class UpdateSettingsRequest < Struct.new(
      :directory_id,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] directory_id
    #   The identifier of the directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateSettingsResult AWS API Documentation
    #
    class UpdateSettingsResult < Struct.new(
      :directory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trust_id
    #   Identifier of the trust relationship.
    #   @return [String]
    #
    # @!attribute [rw] selective_auth
    #   Updates selective authentication for the trust.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateTrustRequest AWS API Documentation
    #
    class UpdateTrustRequest < Struct.new(
      :trust_id,
      :selective_auth)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @!attribute [rw] trust_id
    #   Identifier of the trust relationship.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateTrustResult AWS API Documentation
    #
    class UpdateTrustResult < Struct.new(
      :request_id,
      :trust_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value for a given type of `UpdateSettings`.
    #
    # @!attribute [rw] os_update_settings
    #   The OS update related settings.
    #   @return [Types::OSUpdateSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UpdateValue AWS API Documentation
    #
    class UpdateValue < Struct.new(
      :os_update_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user provided a username that does not exist in your directory.
    #
    # @!attribute [rw] message
    #   The descriptive message for the exception.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/UserDoesNotExistException AWS API Documentation
    #
    class UserDoesNotExistException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Initiates the verification of an existing trust relationship between
    # an Managed Microsoft AD directory and an external domain.
    #
    # @!attribute [rw] trust_id
    #   The unique Trust ID of the trust relationship to verify.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/VerifyTrustRequest AWS API Documentation
    #
    class VerifyTrustRequest < Struct.new(
      :trust_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Result of a VerifyTrust request.
    #
    # @!attribute [rw] trust_id
    #   The unique Trust ID of the trust relationship that was verified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ds-2015-04-16/VerifyTrustResult AWS API Documentation
    #
    class VerifyTrustResult < Struct.new(
      :trust_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

