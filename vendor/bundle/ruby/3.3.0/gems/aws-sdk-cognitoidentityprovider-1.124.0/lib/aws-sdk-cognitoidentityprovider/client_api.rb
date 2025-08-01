# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CognitoIdentityProvider
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountIdType = Shapes::StringShape.new(name: 'AWSAccountIdType')
    AccessTokenValidityType = Shapes::IntegerShape.new(name: 'AccessTokenValidityType')
    AccountRecoverySettingType = Shapes::StructureShape.new(name: 'AccountRecoverySettingType')
    AccountTakeoverActionNotifyType = Shapes::BooleanShape.new(name: 'AccountTakeoverActionNotifyType')
    AccountTakeoverActionType = Shapes::StructureShape.new(name: 'AccountTakeoverActionType')
    AccountTakeoverActionsType = Shapes::StructureShape.new(name: 'AccountTakeoverActionsType')
    AccountTakeoverEventActionType = Shapes::StringShape.new(name: 'AccountTakeoverEventActionType')
    AccountTakeoverRiskConfigurationType = Shapes::StructureShape.new(name: 'AccountTakeoverRiskConfigurationType')
    AddCustomAttributesRequest = Shapes::StructureShape.new(name: 'AddCustomAttributesRequest')
    AddCustomAttributesResponse = Shapes::StructureShape.new(name: 'AddCustomAttributesResponse')
    AdminAddUserToGroupRequest = Shapes::StructureShape.new(name: 'AdminAddUserToGroupRequest')
    AdminConfirmSignUpRequest = Shapes::StructureShape.new(name: 'AdminConfirmSignUpRequest')
    AdminConfirmSignUpResponse = Shapes::StructureShape.new(name: 'AdminConfirmSignUpResponse')
    AdminCreateUserConfigType = Shapes::StructureShape.new(name: 'AdminCreateUserConfigType')
    AdminCreateUserRequest = Shapes::StructureShape.new(name: 'AdminCreateUserRequest')
    AdminCreateUserResponse = Shapes::StructureShape.new(name: 'AdminCreateUserResponse')
    AdminCreateUserUnusedAccountValidityDaysType = Shapes::IntegerShape.new(name: 'AdminCreateUserUnusedAccountValidityDaysType')
    AdminDeleteUserAttributesRequest = Shapes::StructureShape.new(name: 'AdminDeleteUserAttributesRequest')
    AdminDeleteUserAttributesResponse = Shapes::StructureShape.new(name: 'AdminDeleteUserAttributesResponse')
    AdminDeleteUserRequest = Shapes::StructureShape.new(name: 'AdminDeleteUserRequest')
    AdminDisableProviderForUserRequest = Shapes::StructureShape.new(name: 'AdminDisableProviderForUserRequest')
    AdminDisableProviderForUserResponse = Shapes::StructureShape.new(name: 'AdminDisableProviderForUserResponse')
    AdminDisableUserRequest = Shapes::StructureShape.new(name: 'AdminDisableUserRequest')
    AdminDisableUserResponse = Shapes::StructureShape.new(name: 'AdminDisableUserResponse')
    AdminEnableUserRequest = Shapes::StructureShape.new(name: 'AdminEnableUserRequest')
    AdminEnableUserResponse = Shapes::StructureShape.new(name: 'AdminEnableUserResponse')
    AdminForgetDeviceRequest = Shapes::StructureShape.new(name: 'AdminForgetDeviceRequest')
    AdminGetDeviceRequest = Shapes::StructureShape.new(name: 'AdminGetDeviceRequest')
    AdminGetDeviceResponse = Shapes::StructureShape.new(name: 'AdminGetDeviceResponse')
    AdminGetUserRequest = Shapes::StructureShape.new(name: 'AdminGetUserRequest')
    AdminGetUserResponse = Shapes::StructureShape.new(name: 'AdminGetUserResponse')
    AdminInitiateAuthRequest = Shapes::StructureShape.new(name: 'AdminInitiateAuthRequest')
    AdminInitiateAuthResponse = Shapes::StructureShape.new(name: 'AdminInitiateAuthResponse')
    AdminLinkProviderForUserRequest = Shapes::StructureShape.new(name: 'AdminLinkProviderForUserRequest')
    AdminLinkProviderForUserResponse = Shapes::StructureShape.new(name: 'AdminLinkProviderForUserResponse')
    AdminListDevicesRequest = Shapes::StructureShape.new(name: 'AdminListDevicesRequest')
    AdminListDevicesResponse = Shapes::StructureShape.new(name: 'AdminListDevicesResponse')
    AdminListGroupsForUserRequest = Shapes::StructureShape.new(name: 'AdminListGroupsForUserRequest')
    AdminListGroupsForUserResponse = Shapes::StructureShape.new(name: 'AdminListGroupsForUserResponse')
    AdminListUserAuthEventsRequest = Shapes::StructureShape.new(name: 'AdminListUserAuthEventsRequest')
    AdminListUserAuthEventsResponse = Shapes::StructureShape.new(name: 'AdminListUserAuthEventsResponse')
    AdminRemoveUserFromGroupRequest = Shapes::StructureShape.new(name: 'AdminRemoveUserFromGroupRequest')
    AdminResetUserPasswordRequest = Shapes::StructureShape.new(name: 'AdminResetUserPasswordRequest')
    AdminResetUserPasswordResponse = Shapes::StructureShape.new(name: 'AdminResetUserPasswordResponse')
    AdminRespondToAuthChallengeRequest = Shapes::StructureShape.new(name: 'AdminRespondToAuthChallengeRequest')
    AdminRespondToAuthChallengeResponse = Shapes::StructureShape.new(name: 'AdminRespondToAuthChallengeResponse')
    AdminSetUserMFAPreferenceRequest = Shapes::StructureShape.new(name: 'AdminSetUserMFAPreferenceRequest')
    AdminSetUserMFAPreferenceResponse = Shapes::StructureShape.new(name: 'AdminSetUserMFAPreferenceResponse')
    AdminSetUserPasswordRequest = Shapes::StructureShape.new(name: 'AdminSetUserPasswordRequest')
    AdminSetUserPasswordResponse = Shapes::StructureShape.new(name: 'AdminSetUserPasswordResponse')
    AdminSetUserSettingsRequest = Shapes::StructureShape.new(name: 'AdminSetUserSettingsRequest')
    AdminSetUserSettingsResponse = Shapes::StructureShape.new(name: 'AdminSetUserSettingsResponse')
    AdminUpdateAuthEventFeedbackRequest = Shapes::StructureShape.new(name: 'AdminUpdateAuthEventFeedbackRequest')
    AdminUpdateAuthEventFeedbackResponse = Shapes::StructureShape.new(name: 'AdminUpdateAuthEventFeedbackResponse')
    AdminUpdateDeviceStatusRequest = Shapes::StructureShape.new(name: 'AdminUpdateDeviceStatusRequest')
    AdminUpdateDeviceStatusResponse = Shapes::StructureShape.new(name: 'AdminUpdateDeviceStatusResponse')
    AdminUpdateUserAttributesRequest = Shapes::StructureShape.new(name: 'AdminUpdateUserAttributesRequest')
    AdminUpdateUserAttributesResponse = Shapes::StructureShape.new(name: 'AdminUpdateUserAttributesResponse')
    AdminUserGlobalSignOutRequest = Shapes::StructureShape.new(name: 'AdminUserGlobalSignOutRequest')
    AdminUserGlobalSignOutResponse = Shapes::StructureShape.new(name: 'AdminUserGlobalSignOutResponse')
    AdvancedSecurityAdditionalFlowsType = Shapes::StructureShape.new(name: 'AdvancedSecurityAdditionalFlowsType')
    AdvancedSecurityEnabledModeType = Shapes::StringShape.new(name: 'AdvancedSecurityEnabledModeType')
    AdvancedSecurityModeType = Shapes::StringShape.new(name: 'AdvancedSecurityModeType')
    AliasAttributeType = Shapes::StringShape.new(name: 'AliasAttributeType')
    AliasAttributesListType = Shapes::ListShape.new(name: 'AliasAttributesListType')
    AliasExistsException = Shapes::StructureShape.new(name: 'AliasExistsException')
    AllowedFirstAuthFactorsListType = Shapes::ListShape.new(name: 'AllowedFirstAuthFactorsListType')
    AnalyticsConfigurationType = Shapes::StructureShape.new(name: 'AnalyticsConfigurationType')
    AnalyticsMetadataType = Shapes::StructureShape.new(name: 'AnalyticsMetadataType')
    ArnType = Shapes::StringShape.new(name: 'ArnType')
    AssetBytesType = Shapes::BlobShape.new(name: 'AssetBytesType')
    AssetCategoryType = Shapes::StringShape.new(name: 'AssetCategoryType')
    AssetExtensionType = Shapes::StringShape.new(name: 'AssetExtensionType')
    AssetListType = Shapes::ListShape.new(name: 'AssetListType')
    AssetType = Shapes::StructureShape.new(name: 'AssetType')
    AssociateSoftwareTokenRequest = Shapes::StructureShape.new(name: 'AssociateSoftwareTokenRequest')
    AssociateSoftwareTokenResponse = Shapes::StructureShape.new(name: 'AssociateSoftwareTokenResponse')
    AttributeDataType = Shapes::StringShape.new(name: 'AttributeDataType')
    AttributeListType = Shapes::ListShape.new(name: 'AttributeListType')
    AttributeMappingKeyType = Shapes::StringShape.new(name: 'AttributeMappingKeyType')
    AttributeMappingType = Shapes::MapShape.new(name: 'AttributeMappingType')
    AttributeNameListType = Shapes::ListShape.new(name: 'AttributeNameListType')
    AttributeNameType = Shapes::StringShape.new(name: 'AttributeNameType')
    AttributeType = Shapes::StructureShape.new(name: 'AttributeType')
    AttributeValueType = Shapes::StringShape.new(name: 'AttributeValueType')
    AttributesRequireVerificationBeforeUpdateType = Shapes::ListShape.new(name: 'AttributesRequireVerificationBeforeUpdateType')
    AuthEventType = Shapes::StructureShape.new(name: 'AuthEventType')
    AuthEventsType = Shapes::ListShape.new(name: 'AuthEventsType')
    AuthFactorType = Shapes::StringShape.new(name: 'AuthFactorType')
    AuthFlowType = Shapes::StringShape.new(name: 'AuthFlowType')
    AuthParametersType = Shapes::MapShape.new(name: 'AuthParametersType')
    AuthSessionValidityType = Shapes::IntegerShape.new(name: 'AuthSessionValidityType')
    AuthenticationResultType = Shapes::StructureShape.new(name: 'AuthenticationResultType')
    AvailableChallengeListType = Shapes::ListShape.new(name: 'AvailableChallengeListType')
    BlockedIPRangeListType = Shapes::ListShape.new(name: 'BlockedIPRangeListType')
    BooleanType = Shapes::BooleanShape.new(name: 'BooleanType')
    CSSType = Shapes::StringShape.new(name: 'CSSType')
    CSSVersionType = Shapes::StringShape.new(name: 'CSSVersionType')
    CallbackURLsListType = Shapes::ListShape.new(name: 'CallbackURLsListType')
    ChallengeName = Shapes::StringShape.new(name: 'ChallengeName')
    ChallengeNameType = Shapes::StringShape.new(name: 'ChallengeNameType')
    ChallengeParametersType = Shapes::MapShape.new(name: 'ChallengeParametersType')
    ChallengeResponse = Shapes::StringShape.new(name: 'ChallengeResponse')
    ChallengeResponseListType = Shapes::ListShape.new(name: 'ChallengeResponseListType')
    ChallengeResponseType = Shapes::StructureShape.new(name: 'ChallengeResponseType')
    ChallengeResponsesType = Shapes::MapShape.new(name: 'ChallengeResponsesType')
    ChangePasswordRequest = Shapes::StructureShape.new(name: 'ChangePasswordRequest')
    ChangePasswordResponse = Shapes::StructureShape.new(name: 'ChangePasswordResponse')
    ClientIdType = Shapes::StringShape.new(name: 'ClientIdType')
    ClientMetadataType = Shapes::MapShape.new(name: 'ClientMetadataType')
    ClientNameType = Shapes::StringShape.new(name: 'ClientNameType')
    ClientPermissionListType = Shapes::ListShape.new(name: 'ClientPermissionListType')
    ClientPermissionType = Shapes::StringShape.new(name: 'ClientPermissionType')
    ClientSecretType = Shapes::StringShape.new(name: 'ClientSecretType')
    CloudWatchLogsConfigurationType = Shapes::StructureShape.new(name: 'CloudWatchLogsConfigurationType')
    CodeDeliveryDetailsListType = Shapes::ListShape.new(name: 'CodeDeliveryDetailsListType')
    CodeDeliveryDetailsType = Shapes::StructureShape.new(name: 'CodeDeliveryDetailsType')
    CodeDeliveryFailureException = Shapes::StructureShape.new(name: 'CodeDeliveryFailureException')
    CodeMismatchException = Shapes::StructureShape.new(name: 'CodeMismatchException')
    ColorSchemeModeType = Shapes::StringShape.new(name: 'ColorSchemeModeType')
    CompleteWebAuthnRegistrationRequest = Shapes::StructureShape.new(name: 'CompleteWebAuthnRegistrationRequest')
    CompleteWebAuthnRegistrationResponse = Shapes::StructureShape.new(name: 'CompleteWebAuthnRegistrationResponse')
    CompletionMessageType = Shapes::StringShape.new(name: 'CompletionMessageType')
    CompromisedCredentialsActionsType = Shapes::StructureShape.new(name: 'CompromisedCredentialsActionsType')
    CompromisedCredentialsEventActionType = Shapes::StringShape.new(name: 'CompromisedCredentialsEventActionType')
    CompromisedCredentialsRiskConfigurationType = Shapes::StructureShape.new(name: 'CompromisedCredentialsRiskConfigurationType')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConfiguredUserAuthFactorsListType = Shapes::ListShape.new(name: 'ConfiguredUserAuthFactorsListType')
    ConfirmDeviceRequest = Shapes::StructureShape.new(name: 'ConfirmDeviceRequest')
    ConfirmDeviceResponse = Shapes::StructureShape.new(name: 'ConfirmDeviceResponse')
    ConfirmForgotPasswordRequest = Shapes::StructureShape.new(name: 'ConfirmForgotPasswordRequest')
    ConfirmForgotPasswordResponse = Shapes::StructureShape.new(name: 'ConfirmForgotPasswordResponse')
    ConfirmSignUpRequest = Shapes::StructureShape.new(name: 'ConfirmSignUpRequest')
    ConfirmSignUpResponse = Shapes::StructureShape.new(name: 'ConfirmSignUpResponse')
    ConfirmationCodeType = Shapes::StringShape.new(name: 'ConfirmationCodeType')
    ContextDataType = Shapes::StructureShape.new(name: 'ContextDataType')
    CreateGroupRequest = Shapes::StructureShape.new(name: 'CreateGroupRequest')
    CreateGroupResponse = Shapes::StructureShape.new(name: 'CreateGroupResponse')
    CreateIdentityProviderRequest = Shapes::StructureShape.new(name: 'CreateIdentityProviderRequest')
    CreateIdentityProviderResponse = Shapes::StructureShape.new(name: 'CreateIdentityProviderResponse')
    CreateManagedLoginBrandingRequest = Shapes::StructureShape.new(name: 'CreateManagedLoginBrandingRequest')
    CreateManagedLoginBrandingResponse = Shapes::StructureShape.new(name: 'CreateManagedLoginBrandingResponse')
    CreateResourceServerRequest = Shapes::StructureShape.new(name: 'CreateResourceServerRequest')
    CreateResourceServerResponse = Shapes::StructureShape.new(name: 'CreateResourceServerResponse')
    CreateUserImportJobRequest = Shapes::StructureShape.new(name: 'CreateUserImportJobRequest')
    CreateUserImportJobResponse = Shapes::StructureShape.new(name: 'CreateUserImportJobResponse')
    CreateUserPoolClientRequest = Shapes::StructureShape.new(name: 'CreateUserPoolClientRequest')
    CreateUserPoolClientResponse = Shapes::StructureShape.new(name: 'CreateUserPoolClientResponse')
    CreateUserPoolDomainRequest = Shapes::StructureShape.new(name: 'CreateUserPoolDomainRequest')
    CreateUserPoolDomainResponse = Shapes::StructureShape.new(name: 'CreateUserPoolDomainResponse')
    CreateUserPoolRequest = Shapes::StructureShape.new(name: 'CreateUserPoolRequest')
    CreateUserPoolResponse = Shapes::StructureShape.new(name: 'CreateUserPoolResponse')
    CustomAttributeNameType = Shapes::StringShape.new(name: 'CustomAttributeNameType')
    CustomAttributesListType = Shapes::ListShape.new(name: 'CustomAttributesListType')
    CustomDomainConfigType = Shapes::StructureShape.new(name: 'CustomDomainConfigType')
    CustomEmailLambdaVersionConfigType = Shapes::StructureShape.new(name: 'CustomEmailLambdaVersionConfigType')
    CustomEmailSenderLambdaVersionType = Shapes::StringShape.new(name: 'CustomEmailSenderLambdaVersionType')
    CustomSMSLambdaVersionConfigType = Shapes::StructureShape.new(name: 'CustomSMSLambdaVersionConfigType')
    CustomSMSSenderLambdaVersionType = Shapes::StringShape.new(name: 'CustomSMSSenderLambdaVersionType')
    DateType = Shapes::TimestampShape.new(name: 'DateType')
    DefaultEmailOptionType = Shapes::StringShape.new(name: 'DefaultEmailOptionType')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteIdentityProviderRequest = Shapes::StructureShape.new(name: 'DeleteIdentityProviderRequest')
    DeleteManagedLoginBrandingRequest = Shapes::StructureShape.new(name: 'DeleteManagedLoginBrandingRequest')
    DeleteResourceServerRequest = Shapes::StructureShape.new(name: 'DeleteResourceServerRequest')
    DeleteUserAttributesRequest = Shapes::StructureShape.new(name: 'DeleteUserAttributesRequest')
    DeleteUserAttributesResponse = Shapes::StructureShape.new(name: 'DeleteUserAttributesResponse')
    DeleteUserPoolClientRequest = Shapes::StructureShape.new(name: 'DeleteUserPoolClientRequest')
    DeleteUserPoolDomainRequest = Shapes::StructureShape.new(name: 'DeleteUserPoolDomainRequest')
    DeleteUserPoolDomainResponse = Shapes::StructureShape.new(name: 'DeleteUserPoolDomainResponse')
    DeleteUserPoolRequest = Shapes::StructureShape.new(name: 'DeleteUserPoolRequest')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteWebAuthnCredentialRequest = Shapes::StructureShape.new(name: 'DeleteWebAuthnCredentialRequest')
    DeleteWebAuthnCredentialResponse = Shapes::StructureShape.new(name: 'DeleteWebAuthnCredentialResponse')
    DeletionProtectionType = Shapes::StringShape.new(name: 'DeletionProtectionType')
    DeliveryMediumListType = Shapes::ListShape.new(name: 'DeliveryMediumListType')
    DeliveryMediumType = Shapes::StringShape.new(name: 'DeliveryMediumType')
    DescribeIdentityProviderRequest = Shapes::StructureShape.new(name: 'DescribeIdentityProviderRequest')
    DescribeIdentityProviderResponse = Shapes::StructureShape.new(name: 'DescribeIdentityProviderResponse')
    DescribeManagedLoginBrandingByClientRequest = Shapes::StructureShape.new(name: 'DescribeManagedLoginBrandingByClientRequest')
    DescribeManagedLoginBrandingByClientResponse = Shapes::StructureShape.new(name: 'DescribeManagedLoginBrandingByClientResponse')
    DescribeManagedLoginBrandingRequest = Shapes::StructureShape.new(name: 'DescribeManagedLoginBrandingRequest')
    DescribeManagedLoginBrandingResponse = Shapes::StructureShape.new(name: 'DescribeManagedLoginBrandingResponse')
    DescribeResourceServerRequest = Shapes::StructureShape.new(name: 'DescribeResourceServerRequest')
    DescribeResourceServerResponse = Shapes::StructureShape.new(name: 'DescribeResourceServerResponse')
    DescribeRiskConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeRiskConfigurationRequest')
    DescribeRiskConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeRiskConfigurationResponse')
    DescribeUserImportJobRequest = Shapes::StructureShape.new(name: 'DescribeUserImportJobRequest')
    DescribeUserImportJobResponse = Shapes::StructureShape.new(name: 'DescribeUserImportJobResponse')
    DescribeUserPoolClientRequest = Shapes::StructureShape.new(name: 'DescribeUserPoolClientRequest')
    DescribeUserPoolClientResponse = Shapes::StructureShape.new(name: 'DescribeUserPoolClientResponse')
    DescribeUserPoolDomainRequest = Shapes::StructureShape.new(name: 'DescribeUserPoolDomainRequest')
    DescribeUserPoolDomainResponse = Shapes::StructureShape.new(name: 'DescribeUserPoolDomainResponse')
    DescribeUserPoolRequest = Shapes::StructureShape.new(name: 'DescribeUserPoolRequest')
    DescribeUserPoolResponse = Shapes::StructureShape.new(name: 'DescribeUserPoolResponse')
    DescriptionType = Shapes::StringShape.new(name: 'DescriptionType')
    DeviceConfigurationType = Shapes::StructureShape.new(name: 'DeviceConfigurationType')
    DeviceKeyExistsException = Shapes::StructureShape.new(name: 'DeviceKeyExistsException')
    DeviceKeyType = Shapes::StringShape.new(name: 'DeviceKeyType')
    DeviceListType = Shapes::ListShape.new(name: 'DeviceListType')
    DeviceNameType = Shapes::StringShape.new(name: 'DeviceNameType')
    DeviceRememberedStatusType = Shapes::StringShape.new(name: 'DeviceRememberedStatusType')
    DeviceSecretVerifierConfigType = Shapes::StructureShape.new(name: 'DeviceSecretVerifierConfigType')
    DeviceType = Shapes::StructureShape.new(name: 'DeviceType')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    DomainDescriptionType = Shapes::StructureShape.new(name: 'DomainDescriptionType')
    DomainStatusType = Shapes::StringShape.new(name: 'DomainStatusType')
    DomainType = Shapes::StringShape.new(name: 'DomainType')
    DomainVersionType = Shapes::StringShape.new(name: 'DomainVersionType')
    DuplicateProviderException = Shapes::StructureShape.new(name: 'DuplicateProviderException')
    EmailAddressType = Shapes::StringShape.new(name: 'EmailAddressType')
    EmailConfigurationType = Shapes::StructureShape.new(name: 'EmailConfigurationType')
    EmailInviteMessageType = Shapes::StringShape.new(name: 'EmailInviteMessageType')
    EmailMfaConfigType = Shapes::StructureShape.new(name: 'EmailMfaConfigType')
    EmailMfaMessageType = Shapes::StringShape.new(name: 'EmailMfaMessageType')
    EmailMfaSettingsType = Shapes::StructureShape.new(name: 'EmailMfaSettingsType')
    EmailMfaSubjectType = Shapes::StringShape.new(name: 'EmailMfaSubjectType')
    EmailNotificationBodyType = Shapes::StringShape.new(name: 'EmailNotificationBodyType')
    EmailNotificationSubjectType = Shapes::StringShape.new(name: 'EmailNotificationSubjectType')
    EmailSendingAccountType = Shapes::StringShape.new(name: 'EmailSendingAccountType')
    EmailVerificationMessageByLinkType = Shapes::StringShape.new(name: 'EmailVerificationMessageByLinkType')
    EmailVerificationMessageType = Shapes::StringShape.new(name: 'EmailVerificationMessageType')
    EmailVerificationSubjectByLinkType = Shapes::StringShape.new(name: 'EmailVerificationSubjectByLinkType')
    EmailVerificationSubjectType = Shapes::StringShape.new(name: 'EmailVerificationSubjectType')
    EnableSoftwareTokenMFAException = Shapes::StructureShape.new(name: 'EnableSoftwareTokenMFAException')
    EventContextDataType = Shapes::StructureShape.new(name: 'EventContextDataType')
    EventFeedbackType = Shapes::StructureShape.new(name: 'EventFeedbackType')
    EventFilterType = Shapes::StringShape.new(name: 'EventFilterType')
    EventFiltersType = Shapes::ListShape.new(name: 'EventFiltersType')
    EventIdType = Shapes::StringShape.new(name: 'EventIdType')
    EventResponseType = Shapes::StringShape.new(name: 'EventResponseType')
    EventRiskType = Shapes::StructureShape.new(name: 'EventRiskType')
    EventSourceName = Shapes::StringShape.new(name: 'EventSourceName')
    EventType = Shapes::StringShape.new(name: 'EventType')
    ExpiredCodeException = Shapes::StructureShape.new(name: 'ExpiredCodeException')
    ExplicitAuthFlowsListType = Shapes::ListShape.new(name: 'ExplicitAuthFlowsListType')
    ExplicitAuthFlowsType = Shapes::StringShape.new(name: 'ExplicitAuthFlowsType')
    FeatureType = Shapes::StringShape.new(name: 'FeatureType')
    FeatureUnavailableInTierException = Shapes::StructureShape.new(name: 'FeatureUnavailableInTierException')
    FeedbackValueType = Shapes::StringShape.new(name: 'FeedbackValueType')
    FirehoseConfigurationType = Shapes::StructureShape.new(name: 'FirehoseConfigurationType')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    ForceAliasCreation = Shapes::BooleanShape.new(name: 'ForceAliasCreation')
    ForgetDeviceRequest = Shapes::StructureShape.new(name: 'ForgetDeviceRequest')
    ForgotPasswordRequest = Shapes::StructureShape.new(name: 'ForgotPasswordRequest')
    ForgotPasswordResponse = Shapes::StructureShape.new(name: 'ForgotPasswordResponse')
    GenerateSecret = Shapes::BooleanShape.new(name: 'GenerateSecret')
    GetCSVHeaderRequest = Shapes::StructureShape.new(name: 'GetCSVHeaderRequest')
    GetCSVHeaderResponse = Shapes::StructureShape.new(name: 'GetCSVHeaderResponse')
    GetDeviceRequest = Shapes::StructureShape.new(name: 'GetDeviceRequest')
    GetDeviceResponse = Shapes::StructureShape.new(name: 'GetDeviceResponse')
    GetGroupRequest = Shapes::StructureShape.new(name: 'GetGroupRequest')
    GetGroupResponse = Shapes::StructureShape.new(name: 'GetGroupResponse')
    GetIdentityProviderByIdentifierRequest = Shapes::StructureShape.new(name: 'GetIdentityProviderByIdentifierRequest')
    GetIdentityProviderByIdentifierResponse = Shapes::StructureShape.new(name: 'GetIdentityProviderByIdentifierResponse')
    GetLogDeliveryConfigurationRequest = Shapes::StructureShape.new(name: 'GetLogDeliveryConfigurationRequest')
    GetLogDeliveryConfigurationResponse = Shapes::StructureShape.new(name: 'GetLogDeliveryConfigurationResponse')
    GetSigningCertificateRequest = Shapes::StructureShape.new(name: 'GetSigningCertificateRequest')
    GetSigningCertificateResponse = Shapes::StructureShape.new(name: 'GetSigningCertificateResponse')
    GetTokensFromRefreshTokenRequest = Shapes::StructureShape.new(name: 'GetTokensFromRefreshTokenRequest')
    GetTokensFromRefreshTokenResponse = Shapes::StructureShape.new(name: 'GetTokensFromRefreshTokenResponse')
    GetUICustomizationRequest = Shapes::StructureShape.new(name: 'GetUICustomizationRequest')
    GetUICustomizationResponse = Shapes::StructureShape.new(name: 'GetUICustomizationResponse')
    GetUserAttributeVerificationCodeRequest = Shapes::StructureShape.new(name: 'GetUserAttributeVerificationCodeRequest')
    GetUserAttributeVerificationCodeResponse = Shapes::StructureShape.new(name: 'GetUserAttributeVerificationCodeResponse')
    GetUserAuthFactorsRequest = Shapes::StructureShape.new(name: 'GetUserAuthFactorsRequest')
    GetUserAuthFactorsResponse = Shapes::StructureShape.new(name: 'GetUserAuthFactorsResponse')
    GetUserPoolMfaConfigRequest = Shapes::StructureShape.new(name: 'GetUserPoolMfaConfigRequest')
    GetUserPoolMfaConfigResponse = Shapes::StructureShape.new(name: 'GetUserPoolMfaConfigResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
    GlobalSignOutRequest = Shapes::StructureShape.new(name: 'GlobalSignOutRequest')
    GlobalSignOutResponse = Shapes::StructureShape.new(name: 'GlobalSignOutResponse')
    GroupExistsException = Shapes::StructureShape.new(name: 'GroupExistsException')
    GroupListType = Shapes::ListShape.new(name: 'GroupListType')
    GroupNameType = Shapes::StringShape.new(name: 'GroupNameType')
    GroupType = Shapes::StructureShape.new(name: 'GroupType')
    HexStringType = Shapes::StringShape.new(name: 'HexStringType')
    HttpHeader = Shapes::StructureShape.new(name: 'HttpHeader')
    HttpHeaderList = Shapes::ListShape.new(name: 'HttpHeaderList')
    IdTokenValidityType = Shapes::IntegerShape.new(name: 'IdTokenValidityType')
    IdentityProviderType = Shapes::StructureShape.new(name: 'IdentityProviderType')
    IdentityProviderTypeType = Shapes::StringShape.new(name: 'IdentityProviderTypeType')
    IdpIdentifierType = Shapes::StringShape.new(name: 'IdpIdentifierType')
    IdpIdentifiersListType = Shapes::ListShape.new(name: 'IdpIdentifiersListType')
    ImageFileType = Shapes::BlobShape.new(name: 'ImageFileType')
    ImageUrlType = Shapes::StringShape.new(name: 'ImageUrlType')
    InitiateAuthRequest = Shapes::StructureShape.new(name: 'InitiateAuthRequest')
    InitiateAuthResponse = Shapes::StructureShape.new(name: 'InitiateAuthResponse')
    IntegerType = Shapes::IntegerShape.new(name: 'IntegerType')
    InternalErrorException = Shapes::StructureShape.new(name: 'InternalErrorException')
    InvalidEmailRoleAccessPolicyException = Shapes::StructureShape.new(name: 'InvalidEmailRoleAccessPolicyException')
    InvalidLambdaResponseException = Shapes::StructureShape.new(name: 'InvalidLambdaResponseException')
    InvalidOAuthFlowException = Shapes::StructureShape.new(name: 'InvalidOAuthFlowException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidParameterExceptionReasonCodeType = Shapes::StringShape.new(name: 'InvalidParameterExceptionReasonCodeType')
    InvalidPasswordException = Shapes::StructureShape.new(name: 'InvalidPasswordException')
    InvalidSmsRoleAccessPolicyException = Shapes::StructureShape.new(name: 'InvalidSmsRoleAccessPolicyException')
    InvalidSmsRoleTrustRelationshipException = Shapes::StructureShape.new(name: 'InvalidSmsRoleTrustRelationshipException')
    InvalidUserPoolConfigurationException = Shapes::StructureShape.new(name: 'InvalidUserPoolConfigurationException')
    LambdaConfigType = Shapes::StructureShape.new(name: 'LambdaConfigType')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDevicesRequest = Shapes::StructureShape.new(name: 'ListDevicesRequest')
    ListDevicesResponse = Shapes::StructureShape.new(name: 'ListDevicesResponse')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResponse = Shapes::StructureShape.new(name: 'ListGroupsResponse')
    ListIdentityProvidersRequest = Shapes::StructureShape.new(name: 'ListIdentityProvidersRequest')
    ListIdentityProvidersResponse = Shapes::StructureShape.new(name: 'ListIdentityProvidersResponse')
    ListOfStringTypes = Shapes::ListShape.new(name: 'ListOfStringTypes')
    ListProvidersLimitType = Shapes::IntegerShape.new(name: 'ListProvidersLimitType')
    ListResourceServersLimitType = Shapes::IntegerShape.new(name: 'ListResourceServersLimitType')
    ListResourceServersRequest = Shapes::StructureShape.new(name: 'ListResourceServersRequest')
    ListResourceServersResponse = Shapes::StructureShape.new(name: 'ListResourceServersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListUserImportJobsRequest = Shapes::StructureShape.new(name: 'ListUserImportJobsRequest')
    ListUserImportJobsResponse = Shapes::StructureShape.new(name: 'ListUserImportJobsResponse')
    ListUserPoolClientsRequest = Shapes::StructureShape.new(name: 'ListUserPoolClientsRequest')
    ListUserPoolClientsResponse = Shapes::StructureShape.new(name: 'ListUserPoolClientsResponse')
    ListUserPoolsRequest = Shapes::StructureShape.new(name: 'ListUserPoolsRequest')
    ListUserPoolsResponse = Shapes::StructureShape.new(name: 'ListUserPoolsResponse')
    ListUsersInGroupRequest = Shapes::StructureShape.new(name: 'ListUsersInGroupRequest')
    ListUsersInGroupResponse = Shapes::StructureShape.new(name: 'ListUsersInGroupResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    ListWebAuthnCredentialsRequest = Shapes::StructureShape.new(name: 'ListWebAuthnCredentialsRequest')
    ListWebAuthnCredentialsResponse = Shapes::StructureShape.new(name: 'ListWebAuthnCredentialsResponse')
    LogConfigurationListType = Shapes::ListShape.new(name: 'LogConfigurationListType')
    LogConfigurationType = Shapes::StructureShape.new(name: 'LogConfigurationType')
    LogDeliveryConfigurationType = Shapes::StructureShape.new(name: 'LogDeliveryConfigurationType')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    LogoutURLsListType = Shapes::ListShape.new(name: 'LogoutURLsListType')
    LongType = Shapes::IntegerShape.new(name: 'LongType')
    MFAMethodNotFoundException = Shapes::StructureShape.new(name: 'MFAMethodNotFoundException')
    MFAOptionListType = Shapes::ListShape.new(name: 'MFAOptionListType')
    MFAOptionType = Shapes::StructureShape.new(name: 'MFAOptionType')
    ManagedLoginBrandingExistsException = Shapes::StructureShape.new(name: 'ManagedLoginBrandingExistsException')
    ManagedLoginBrandingIdType = Shapes::StringShape.new(name: 'ManagedLoginBrandingIdType')
    ManagedLoginBrandingType = Shapes::StructureShape.new(name: 'ManagedLoginBrandingType')
    MessageActionType = Shapes::StringShape.new(name: 'MessageActionType')
    MessageTemplateType = Shapes::StructureShape.new(name: 'MessageTemplateType')
    MessageType = Shapes::StringShape.new(name: 'MessageType')
    NewDeviceMetadataType = Shapes::StructureShape.new(name: 'NewDeviceMetadataType')
    NotAuthorizedException = Shapes::StructureShape.new(name: 'NotAuthorizedException')
    NotifyConfigurationType = Shapes::StructureShape.new(name: 'NotifyConfigurationType')
    NotifyEmailType = Shapes::StructureShape.new(name: 'NotifyEmailType')
    NumberAttributeConstraintsType = Shapes::StructureShape.new(name: 'NumberAttributeConstraintsType')
    OAuthFlowType = Shapes::StringShape.new(name: 'OAuthFlowType')
    OAuthFlowsType = Shapes::ListShape.new(name: 'OAuthFlowsType')
    PaginationKey = Shapes::StringShape.new(name: 'PaginationKey')
    PaginationKeyType = Shapes::StringShape.new(name: 'PaginationKeyType')
    PasswordHistoryPolicyViolationException = Shapes::StructureShape.new(name: 'PasswordHistoryPolicyViolationException')
    PasswordHistorySizeType = Shapes::IntegerShape.new(name: 'PasswordHistorySizeType')
    PasswordPolicyMinLengthType = Shapes::IntegerShape.new(name: 'PasswordPolicyMinLengthType')
    PasswordPolicyType = Shapes::StructureShape.new(name: 'PasswordPolicyType')
    PasswordResetRequiredException = Shapes::StructureShape.new(name: 'PasswordResetRequiredException')
    PasswordType = Shapes::StringShape.new(name: 'PasswordType')
    PoolQueryLimitType = Shapes::IntegerShape.new(name: 'PoolQueryLimitType')
    PreSignedUrlType = Shapes::StringShape.new(name: 'PreSignedUrlType')
    PreTokenGenerationLambdaVersionType = Shapes::StringShape.new(name: 'PreTokenGenerationLambdaVersionType')
    PreTokenGenerationVersionConfigType = Shapes::StructureShape.new(name: 'PreTokenGenerationVersionConfigType')
    PrecedenceType = Shapes::IntegerShape.new(name: 'PrecedenceType')
    PreconditionNotMetException = Shapes::StructureShape.new(name: 'PreconditionNotMetException')
    PreventUserExistenceErrorTypes = Shapes::StringShape.new(name: 'PreventUserExistenceErrorTypes')
    PriorityType = Shapes::IntegerShape.new(name: 'PriorityType')
    ProviderDescription = Shapes::StructureShape.new(name: 'ProviderDescription')
    ProviderDetailsType = Shapes::MapShape.new(name: 'ProviderDetailsType')
    ProviderNameType = Shapes::StringShape.new(name: 'ProviderNameType')
    ProviderNameTypeV2 = Shapes::StringShape.new(name: 'ProviderNameTypeV2')
    ProviderUserIdentifierType = Shapes::StructureShape.new(name: 'ProviderUserIdentifierType')
    ProvidersListType = Shapes::ListShape.new(name: 'ProvidersListType')
    QueryLimit = Shapes::IntegerShape.new(name: 'QueryLimit')
    QueryLimitType = Shapes::IntegerShape.new(name: 'QueryLimitType')
    RecoveryMechanismsType = Shapes::ListShape.new(name: 'RecoveryMechanismsType')
    RecoveryOptionNameType = Shapes::StringShape.new(name: 'RecoveryOptionNameType')
    RecoveryOptionType = Shapes::StructureShape.new(name: 'RecoveryOptionType')
    RedirectUrlType = Shapes::StringShape.new(name: 'RedirectUrlType')
    RefreshTokenReuseException = Shapes::StructureShape.new(name: 'RefreshTokenReuseException')
    RefreshTokenRotationType = Shapes::StructureShape.new(name: 'RefreshTokenRotationType')
    RefreshTokenValidityType = Shapes::IntegerShape.new(name: 'RefreshTokenValidityType')
    RegionCodeType = Shapes::StringShape.new(name: 'RegionCodeType')
    RelyingPartyIdType = Shapes::StringShape.new(name: 'RelyingPartyIdType')
    ResendConfirmationCodeRequest = Shapes::StructureShape.new(name: 'ResendConfirmationCodeRequest')
    ResendConfirmationCodeResponse = Shapes::StructureShape.new(name: 'ResendConfirmationCodeResponse')
    ResourceIdType = Shapes::StringShape.new(name: 'ResourceIdType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceServerIdentifierType = Shapes::StringShape.new(name: 'ResourceServerIdentifierType')
    ResourceServerNameType = Shapes::StringShape.new(name: 'ResourceServerNameType')
    ResourceServerScopeDescriptionType = Shapes::StringShape.new(name: 'ResourceServerScopeDescriptionType')
    ResourceServerScopeListType = Shapes::ListShape.new(name: 'ResourceServerScopeListType')
    ResourceServerScopeNameType = Shapes::StringShape.new(name: 'ResourceServerScopeNameType')
    ResourceServerScopeType = Shapes::StructureShape.new(name: 'ResourceServerScopeType')
    ResourceServerType = Shapes::StructureShape.new(name: 'ResourceServerType')
    ResourceServersListType = Shapes::ListShape.new(name: 'ResourceServersListType')
    RespondToAuthChallengeRequest = Shapes::StructureShape.new(name: 'RespondToAuthChallengeRequest')
    RespondToAuthChallengeResponse = Shapes::StructureShape.new(name: 'RespondToAuthChallengeResponse')
    RetryGracePeriodSecondsType = Shapes::IntegerShape.new(name: 'RetryGracePeriodSecondsType')
    RevokeTokenRequest = Shapes::StructureShape.new(name: 'RevokeTokenRequest')
    RevokeTokenResponse = Shapes::StructureShape.new(name: 'RevokeTokenResponse')
    RiskConfigurationType = Shapes::StructureShape.new(name: 'RiskConfigurationType')
    RiskDecisionType = Shapes::StringShape.new(name: 'RiskDecisionType')
    RiskExceptionConfigurationType = Shapes::StructureShape.new(name: 'RiskExceptionConfigurationType')
    RiskLevelType = Shapes::StringShape.new(name: 'RiskLevelType')
    S3ArnType = Shapes::StringShape.new(name: 'S3ArnType')
    S3BucketType = Shapes::StringShape.new(name: 'S3BucketType')
    S3ConfigurationType = Shapes::StructureShape.new(name: 'S3ConfigurationType')
    SESConfigurationSet = Shapes::StringShape.new(name: 'SESConfigurationSet')
    SMSMfaSettingsType = Shapes::StructureShape.new(name: 'SMSMfaSettingsType')
    SchemaAttributeType = Shapes::StructureShape.new(name: 'SchemaAttributeType')
    SchemaAttributesListType = Shapes::ListShape.new(name: 'SchemaAttributesListType')
    ScopeDoesNotExistException = Shapes::StructureShape.new(name: 'ScopeDoesNotExistException')
    ScopeListType = Shapes::ListShape.new(name: 'ScopeListType')
    ScopeType = Shapes::StringShape.new(name: 'ScopeType')
    SearchPaginationTokenType = Shapes::StringShape.new(name: 'SearchPaginationTokenType')
    SearchedAttributeNamesListType = Shapes::ListShape.new(name: 'SearchedAttributeNamesListType')
    SecretCodeType = Shapes::StringShape.new(name: 'SecretCodeType')
    SecretHashType = Shapes::StringShape.new(name: 'SecretHashType')
    SessionType = Shapes::StringShape.new(name: 'SessionType')
    SetLogDeliveryConfigurationRequest = Shapes::StructureShape.new(name: 'SetLogDeliveryConfigurationRequest')
    SetLogDeliveryConfigurationResponse = Shapes::StructureShape.new(name: 'SetLogDeliveryConfigurationResponse')
    SetRiskConfigurationRequest = Shapes::StructureShape.new(name: 'SetRiskConfigurationRequest')
    SetRiskConfigurationResponse = Shapes::StructureShape.new(name: 'SetRiskConfigurationResponse')
    SetUICustomizationRequest = Shapes::StructureShape.new(name: 'SetUICustomizationRequest')
    SetUICustomizationResponse = Shapes::StructureShape.new(name: 'SetUICustomizationResponse')
    SetUserMFAPreferenceRequest = Shapes::StructureShape.new(name: 'SetUserMFAPreferenceRequest')
    SetUserMFAPreferenceResponse = Shapes::StructureShape.new(name: 'SetUserMFAPreferenceResponse')
    SetUserPoolMfaConfigRequest = Shapes::StructureShape.new(name: 'SetUserPoolMfaConfigRequest')
    SetUserPoolMfaConfigResponse = Shapes::StructureShape.new(name: 'SetUserPoolMfaConfigResponse')
    SetUserSettingsRequest = Shapes::StructureShape.new(name: 'SetUserSettingsRequest')
    SetUserSettingsResponse = Shapes::StructureShape.new(name: 'SetUserSettingsResponse')
    SignInPolicyType = Shapes::StructureShape.new(name: 'SignInPolicyType')
    SignUpRequest = Shapes::StructureShape.new(name: 'SignUpRequest')
    SignUpResponse = Shapes::StructureShape.new(name: 'SignUpResponse')
    SkippedIPRangeListType = Shapes::ListShape.new(name: 'SkippedIPRangeListType')
    SmsConfigurationType = Shapes::StructureShape.new(name: 'SmsConfigurationType')
    SmsInviteMessageType = Shapes::StringShape.new(name: 'SmsInviteMessageType')
    SmsMfaConfigType = Shapes::StructureShape.new(name: 'SmsMfaConfigType')
    SmsVerificationMessageType = Shapes::StringShape.new(name: 'SmsVerificationMessageType')
    SoftwareTokenMFANotFoundException = Shapes::StructureShape.new(name: 'SoftwareTokenMFANotFoundException')
    SoftwareTokenMFAUserCodeType = Shapes::StringShape.new(name: 'SoftwareTokenMFAUserCodeType')
    SoftwareTokenMfaConfigType = Shapes::StructureShape.new(name: 'SoftwareTokenMfaConfigType')
    SoftwareTokenMfaSettingsType = Shapes::StructureShape.new(name: 'SoftwareTokenMfaSettingsType')
    StartUserImportJobRequest = Shapes::StructureShape.new(name: 'StartUserImportJobRequest')
    StartUserImportJobResponse = Shapes::StructureShape.new(name: 'StartUserImportJobResponse')
    StartWebAuthnRegistrationRequest = Shapes::StructureShape.new(name: 'StartWebAuthnRegistrationRequest')
    StartWebAuthnRegistrationResponse = Shapes::StructureShape.new(name: 'StartWebAuthnRegistrationResponse')
    StatusType = Shapes::StringShape.new(name: 'StatusType')
    StopUserImportJobRequest = Shapes::StructureShape.new(name: 'StopUserImportJobRequest')
    StopUserImportJobResponse = Shapes::StructureShape.new(name: 'StopUserImportJobResponse')
    StringAttributeConstraintsType = Shapes::StructureShape.new(name: 'StringAttributeConstraintsType')
    StringType = Shapes::StringShape.new(name: 'StringType')
    SupportedIdentityProvidersListType = Shapes::ListShape.new(name: 'SupportedIdentityProvidersListType')
    TagKeysType = Shapes::StringShape.new(name: 'TagKeysType')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValueType = Shapes::StringShape.new(name: 'TagValueType')
    TemporaryPasswordValidityDaysType = Shapes::IntegerShape.new(name: 'TemporaryPasswordValidityDaysType')
    TierChangeNotAllowedException = Shapes::StructureShape.new(name: 'TierChangeNotAllowedException')
    TimeUnitsType = Shapes::StringShape.new(name: 'TimeUnitsType')
    TokenModelType = Shapes::StringShape.new(name: 'TokenModelType')
    TokenValidityUnitsType = Shapes::StructureShape.new(name: 'TokenValidityUnitsType')
    TooManyFailedAttemptsException = Shapes::StructureShape.new(name: 'TooManyFailedAttemptsException')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UICustomizationType = Shapes::StructureShape.new(name: 'UICustomizationType')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UnexpectedLambdaException = Shapes::StructureShape.new(name: 'UnexpectedLambdaException')
    UnsupportedIdentityProviderException = Shapes::StructureShape.new(name: 'UnsupportedIdentityProviderException')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UnsupportedTokenTypeException = Shapes::StructureShape.new(name: 'UnsupportedTokenTypeException')
    UnsupportedUserStateException = Shapes::StructureShape.new(name: 'UnsupportedUserStateException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAuthEventFeedbackRequest = Shapes::StructureShape.new(name: 'UpdateAuthEventFeedbackRequest')
    UpdateAuthEventFeedbackResponse = Shapes::StructureShape.new(name: 'UpdateAuthEventFeedbackResponse')
    UpdateDeviceStatusRequest = Shapes::StructureShape.new(name: 'UpdateDeviceStatusRequest')
    UpdateDeviceStatusResponse = Shapes::StructureShape.new(name: 'UpdateDeviceStatusResponse')
    UpdateGroupRequest = Shapes::StructureShape.new(name: 'UpdateGroupRequest')
    UpdateGroupResponse = Shapes::StructureShape.new(name: 'UpdateGroupResponse')
    UpdateIdentityProviderRequest = Shapes::StructureShape.new(name: 'UpdateIdentityProviderRequest')
    UpdateIdentityProviderResponse = Shapes::StructureShape.new(name: 'UpdateIdentityProviderResponse')
    UpdateManagedLoginBrandingRequest = Shapes::StructureShape.new(name: 'UpdateManagedLoginBrandingRequest')
    UpdateManagedLoginBrandingResponse = Shapes::StructureShape.new(name: 'UpdateManagedLoginBrandingResponse')
    UpdateResourceServerRequest = Shapes::StructureShape.new(name: 'UpdateResourceServerRequest')
    UpdateResourceServerResponse = Shapes::StructureShape.new(name: 'UpdateResourceServerResponse')
    UpdateUserAttributesRequest = Shapes::StructureShape.new(name: 'UpdateUserAttributesRequest')
    UpdateUserAttributesResponse = Shapes::StructureShape.new(name: 'UpdateUserAttributesResponse')
    UpdateUserPoolClientRequest = Shapes::StructureShape.new(name: 'UpdateUserPoolClientRequest')
    UpdateUserPoolClientResponse = Shapes::StructureShape.new(name: 'UpdateUserPoolClientResponse')
    UpdateUserPoolDomainRequest = Shapes::StructureShape.new(name: 'UpdateUserPoolDomainRequest')
    UpdateUserPoolDomainResponse = Shapes::StructureShape.new(name: 'UpdateUserPoolDomainResponse')
    UpdateUserPoolRequest = Shapes::StructureShape.new(name: 'UpdateUserPoolRequest')
    UpdateUserPoolResponse = Shapes::StructureShape.new(name: 'UpdateUserPoolResponse')
    UserAttributeUpdateSettingsType = Shapes::StructureShape.new(name: 'UserAttributeUpdateSettingsType')
    UserContextDataType = Shapes::StructureShape.new(name: 'UserContextDataType')
    UserFilterType = Shapes::StringShape.new(name: 'UserFilterType')
    UserImportInProgressException = Shapes::StructureShape.new(name: 'UserImportInProgressException')
    UserImportJobIdType = Shapes::StringShape.new(name: 'UserImportJobIdType')
    UserImportJobNameType = Shapes::StringShape.new(name: 'UserImportJobNameType')
    UserImportJobStatusType = Shapes::StringShape.new(name: 'UserImportJobStatusType')
    UserImportJobType = Shapes::StructureShape.new(name: 'UserImportJobType')
    UserImportJobsListType = Shapes::ListShape.new(name: 'UserImportJobsListType')
    UserLambdaValidationException = Shapes::StructureShape.new(name: 'UserLambdaValidationException')
    UserMFASettingListType = Shapes::ListShape.new(name: 'UserMFASettingListType')
    UserNotConfirmedException = Shapes::StructureShape.new(name: 'UserNotConfirmedException')
    UserNotFoundException = Shapes::StructureShape.new(name: 'UserNotFoundException')
    UserPoolAddOnNotEnabledException = Shapes::StructureShape.new(name: 'UserPoolAddOnNotEnabledException')
    UserPoolAddOnsType = Shapes::StructureShape.new(name: 'UserPoolAddOnsType')
    UserPoolClientDescription = Shapes::StructureShape.new(name: 'UserPoolClientDescription')
    UserPoolClientListType = Shapes::ListShape.new(name: 'UserPoolClientListType')
    UserPoolClientType = Shapes::StructureShape.new(name: 'UserPoolClientType')
    UserPoolDescriptionType = Shapes::StructureShape.new(name: 'UserPoolDescriptionType')
    UserPoolIdType = Shapes::StringShape.new(name: 'UserPoolIdType')
    UserPoolListType = Shapes::ListShape.new(name: 'UserPoolListType')
    UserPoolMfaType = Shapes::StringShape.new(name: 'UserPoolMfaType')
    UserPoolNameType = Shapes::StringShape.new(name: 'UserPoolNameType')
    UserPoolPolicyType = Shapes::StructureShape.new(name: 'UserPoolPolicyType')
    UserPoolTaggingException = Shapes::StructureShape.new(name: 'UserPoolTaggingException')
    UserPoolTagsListType = Shapes::ListShape.new(name: 'UserPoolTagsListType')
    UserPoolTagsType = Shapes::MapShape.new(name: 'UserPoolTagsType')
    UserPoolTierType = Shapes::StringShape.new(name: 'UserPoolTierType')
    UserPoolType = Shapes::StructureShape.new(name: 'UserPoolType')
    UserStatusType = Shapes::StringShape.new(name: 'UserStatusType')
    UserType = Shapes::StructureShape.new(name: 'UserType')
    UserVerificationType = Shapes::StringShape.new(name: 'UserVerificationType')
    UsernameAttributeType = Shapes::StringShape.new(name: 'UsernameAttributeType')
    UsernameAttributesListType = Shapes::ListShape.new(name: 'UsernameAttributesListType')
    UsernameConfigurationType = Shapes::StructureShape.new(name: 'UsernameConfigurationType')
    UsernameExistsException = Shapes::StructureShape.new(name: 'UsernameExistsException')
    UsernameType = Shapes::StringShape.new(name: 'UsernameType')
    UsersListType = Shapes::ListShape.new(name: 'UsersListType')
    VerificationMessageTemplateType = Shapes::StructureShape.new(name: 'VerificationMessageTemplateType')
    VerifiedAttributeType = Shapes::StringShape.new(name: 'VerifiedAttributeType')
    VerifiedAttributesListType = Shapes::ListShape.new(name: 'VerifiedAttributesListType')
    VerifySoftwareTokenRequest = Shapes::StructureShape.new(name: 'VerifySoftwareTokenRequest')
    VerifySoftwareTokenResponse = Shapes::StructureShape.new(name: 'VerifySoftwareTokenResponse')
    VerifySoftwareTokenResponseType = Shapes::StringShape.new(name: 'VerifySoftwareTokenResponseType')
    VerifyUserAttributeRequest = Shapes::StructureShape.new(name: 'VerifyUserAttributeRequest')
    VerifyUserAttributeResponse = Shapes::StructureShape.new(name: 'VerifyUserAttributeResponse')
    WebAuthnAuthenticatorAttachmentType = Shapes::StringShape.new(name: 'WebAuthnAuthenticatorAttachmentType')
    WebAuthnAuthenticatorTransportType = Shapes::StringShape.new(name: 'WebAuthnAuthenticatorTransportType')
    WebAuthnAuthenticatorTransportsList = Shapes::ListShape.new(name: 'WebAuthnAuthenticatorTransportsList')
    WebAuthnChallengeNotFoundException = Shapes::StructureShape.new(name: 'WebAuthnChallengeNotFoundException')
    WebAuthnClientMismatchException = Shapes::StructureShape.new(name: 'WebAuthnClientMismatchException')
    WebAuthnConfigurationMissingException = Shapes::StructureShape.new(name: 'WebAuthnConfigurationMissingException')
    WebAuthnConfigurationType = Shapes::StructureShape.new(name: 'WebAuthnConfigurationType')
    WebAuthnCredentialDescription = Shapes::StructureShape.new(name: 'WebAuthnCredentialDescription')
    WebAuthnCredentialDescriptionListType = Shapes::ListShape.new(name: 'WebAuthnCredentialDescriptionListType')
    WebAuthnCredentialNotSupportedException = Shapes::StructureShape.new(name: 'WebAuthnCredentialNotSupportedException')
    WebAuthnCredentialsQueryLimitType = Shapes::IntegerShape.new(name: 'WebAuthnCredentialsQueryLimitType')
    WebAuthnNotEnabledException = Shapes::StructureShape.new(name: 'WebAuthnNotEnabledException')
    WebAuthnOriginNotAllowedException = Shapes::StructureShape.new(name: 'WebAuthnOriginNotAllowedException')
    WebAuthnRelyingPartyMismatchException = Shapes::StructureShape.new(name: 'WebAuthnRelyingPartyMismatchException')
    WrappedBooleanType = Shapes::BooleanShape.new(name: 'WrappedBooleanType')
    WrappedIntegerType = Shapes::IntegerShape.new(name: 'WrappedIntegerType')

    AccountRecoverySettingType.add_member(:recovery_mechanisms, Shapes::ShapeRef.new(shape: RecoveryMechanismsType, location_name: "RecoveryMechanisms"))
    AccountRecoverySettingType.struct_class = Types::AccountRecoverySettingType

    AccountTakeoverActionType.add_member(:notify, Shapes::ShapeRef.new(shape: AccountTakeoverActionNotifyType, required: true, location_name: "Notify"))
    AccountTakeoverActionType.add_member(:event_action, Shapes::ShapeRef.new(shape: AccountTakeoverEventActionType, required: true, location_name: "EventAction"))
    AccountTakeoverActionType.struct_class = Types::AccountTakeoverActionType

    AccountTakeoverActionsType.add_member(:low_action, Shapes::ShapeRef.new(shape: AccountTakeoverActionType, location_name: "LowAction"))
    AccountTakeoverActionsType.add_member(:medium_action, Shapes::ShapeRef.new(shape: AccountTakeoverActionType, location_name: "MediumAction"))
    AccountTakeoverActionsType.add_member(:high_action, Shapes::ShapeRef.new(shape: AccountTakeoverActionType, location_name: "HighAction"))
    AccountTakeoverActionsType.struct_class = Types::AccountTakeoverActionsType

    AccountTakeoverRiskConfigurationType.add_member(:notify_configuration, Shapes::ShapeRef.new(shape: NotifyConfigurationType, location_name: "NotifyConfiguration"))
    AccountTakeoverRiskConfigurationType.add_member(:actions, Shapes::ShapeRef.new(shape: AccountTakeoverActionsType, required: true, location_name: "Actions"))
    AccountTakeoverRiskConfigurationType.struct_class = Types::AccountTakeoverRiskConfigurationType

    AddCustomAttributesRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AddCustomAttributesRequest.add_member(:custom_attributes, Shapes::ShapeRef.new(shape: CustomAttributesListType, required: true, location_name: "CustomAttributes"))
    AddCustomAttributesRequest.struct_class = Types::AddCustomAttributesRequest

    AddCustomAttributesResponse.struct_class = Types::AddCustomAttributesResponse

    AdminAddUserToGroupRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminAddUserToGroupRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminAddUserToGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupNameType, required: true, location_name: "GroupName"))
    AdminAddUserToGroupRequest.struct_class = Types::AdminAddUserToGroupRequest

    AdminConfirmSignUpRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminConfirmSignUpRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminConfirmSignUpRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    AdminConfirmSignUpRequest.struct_class = Types::AdminConfirmSignUpRequest

    AdminConfirmSignUpResponse.struct_class = Types::AdminConfirmSignUpResponse

    AdminCreateUserConfigType.add_member(:allow_admin_create_user_only, Shapes::ShapeRef.new(shape: BooleanType, location_name: "AllowAdminCreateUserOnly"))
    AdminCreateUserConfigType.add_member(:unused_account_validity_days, Shapes::ShapeRef.new(shape: AdminCreateUserUnusedAccountValidityDaysType, location_name: "UnusedAccountValidityDays"))
    AdminCreateUserConfigType.add_member(:invite_message_template, Shapes::ShapeRef.new(shape: MessageTemplateType, location_name: "InviteMessageTemplate"))
    AdminCreateUserConfigType.struct_class = Types::AdminCreateUserConfigType

    AdminCreateUserRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminCreateUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminCreateUserRequest.add_member(:user_attributes, Shapes::ShapeRef.new(shape: AttributeListType, location_name: "UserAttributes"))
    AdminCreateUserRequest.add_member(:validation_data, Shapes::ShapeRef.new(shape: AttributeListType, location_name: "ValidationData"))
    AdminCreateUserRequest.add_member(:temporary_password, Shapes::ShapeRef.new(shape: PasswordType, location_name: "TemporaryPassword"))
    AdminCreateUserRequest.add_member(:force_alias_creation, Shapes::ShapeRef.new(shape: ForceAliasCreation, location_name: "ForceAliasCreation"))
    AdminCreateUserRequest.add_member(:message_action, Shapes::ShapeRef.new(shape: MessageActionType, location_name: "MessageAction"))
    AdminCreateUserRequest.add_member(:desired_delivery_mediums, Shapes::ShapeRef.new(shape: DeliveryMediumListType, location_name: "DesiredDeliveryMediums"))
    AdminCreateUserRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    AdminCreateUserRequest.struct_class = Types::AdminCreateUserRequest

    AdminCreateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: UserType, location_name: "User"))
    AdminCreateUserResponse.struct_class = Types::AdminCreateUserResponse

    AdminDeleteUserAttributesRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminDeleteUserAttributesRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminDeleteUserAttributesRequest.add_member(:user_attribute_names, Shapes::ShapeRef.new(shape: AttributeNameListType, required: true, location_name: "UserAttributeNames"))
    AdminDeleteUserAttributesRequest.struct_class = Types::AdminDeleteUserAttributesRequest

    AdminDeleteUserAttributesResponse.struct_class = Types::AdminDeleteUserAttributesResponse

    AdminDeleteUserRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminDeleteUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminDeleteUserRequest.struct_class = Types::AdminDeleteUserRequest

    AdminDisableProviderForUserRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "UserPoolId"))
    AdminDisableProviderForUserRequest.add_member(:user, Shapes::ShapeRef.new(shape: ProviderUserIdentifierType, required: true, location_name: "User"))
    AdminDisableProviderForUserRequest.struct_class = Types::AdminDisableProviderForUserRequest

    AdminDisableProviderForUserResponse.struct_class = Types::AdminDisableProviderForUserResponse

    AdminDisableUserRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminDisableUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminDisableUserRequest.struct_class = Types::AdminDisableUserRequest

    AdminDisableUserResponse.struct_class = Types::AdminDisableUserResponse

    AdminEnableUserRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminEnableUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminEnableUserRequest.struct_class = Types::AdminEnableUserRequest

    AdminEnableUserResponse.struct_class = Types::AdminEnableUserResponse

    AdminForgetDeviceRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminForgetDeviceRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminForgetDeviceRequest.add_member(:device_key, Shapes::ShapeRef.new(shape: DeviceKeyType, required: true, location_name: "DeviceKey"))
    AdminForgetDeviceRequest.struct_class = Types::AdminForgetDeviceRequest

    AdminGetDeviceRequest.add_member(:device_key, Shapes::ShapeRef.new(shape: DeviceKeyType, required: true, location_name: "DeviceKey"))
    AdminGetDeviceRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminGetDeviceRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminGetDeviceRequest.struct_class = Types::AdminGetDeviceRequest

    AdminGetDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: DeviceType, required: true, location_name: "Device"))
    AdminGetDeviceResponse.struct_class = Types::AdminGetDeviceResponse

    AdminGetUserRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminGetUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminGetUserRequest.struct_class = Types::AdminGetUserRequest

    AdminGetUserResponse.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminGetUserResponse.add_member(:user_attributes, Shapes::ShapeRef.new(shape: AttributeListType, location_name: "UserAttributes"))
    AdminGetUserResponse.add_member(:user_create_date, Shapes::ShapeRef.new(shape: DateType, location_name: "UserCreateDate"))
    AdminGetUserResponse.add_member(:user_last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "UserLastModifiedDate"))
    AdminGetUserResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanType, location_name: "Enabled"))
    AdminGetUserResponse.add_member(:user_status, Shapes::ShapeRef.new(shape: UserStatusType, location_name: "UserStatus"))
    AdminGetUserResponse.add_member(:mfa_options, Shapes::ShapeRef.new(shape: MFAOptionListType, location_name: "MFAOptions"))
    AdminGetUserResponse.add_member(:preferred_mfa_setting, Shapes::ShapeRef.new(shape: StringType, location_name: "PreferredMfaSetting"))
    AdminGetUserResponse.add_member(:user_mfa_setting_list, Shapes::ShapeRef.new(shape: UserMFASettingListType, location_name: "UserMFASettingList"))
    AdminGetUserResponse.struct_class = Types::AdminGetUserResponse

    AdminInitiateAuthRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminInitiateAuthRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    AdminInitiateAuthRequest.add_member(:auth_flow, Shapes::ShapeRef.new(shape: AuthFlowType, required: true, location_name: "AuthFlow"))
    AdminInitiateAuthRequest.add_member(:auth_parameters, Shapes::ShapeRef.new(shape: AuthParametersType, location_name: "AuthParameters"))
    AdminInitiateAuthRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    AdminInitiateAuthRequest.add_member(:analytics_metadata, Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: "AnalyticsMetadata"))
    AdminInitiateAuthRequest.add_member(:context_data, Shapes::ShapeRef.new(shape: ContextDataType, location_name: "ContextData"))
    AdminInitiateAuthRequest.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    AdminInitiateAuthRequest.struct_class = Types::AdminInitiateAuthRequest

    AdminInitiateAuthResponse.add_member(:challenge_name, Shapes::ShapeRef.new(shape: ChallengeNameType, location_name: "ChallengeName"))
    AdminInitiateAuthResponse.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    AdminInitiateAuthResponse.add_member(:challenge_parameters, Shapes::ShapeRef.new(shape: ChallengeParametersType, location_name: "ChallengeParameters"))
    AdminInitiateAuthResponse.add_member(:authentication_result, Shapes::ShapeRef.new(shape: AuthenticationResultType, location_name: "AuthenticationResult"))
    AdminInitiateAuthResponse.add_member(:available_challenges, Shapes::ShapeRef.new(shape: AvailableChallengeListType, location_name: "AvailableChallenges"))
    AdminInitiateAuthResponse.struct_class = Types::AdminInitiateAuthResponse

    AdminLinkProviderForUserRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "UserPoolId"))
    AdminLinkProviderForUserRequest.add_member(:destination_user, Shapes::ShapeRef.new(shape: ProviderUserIdentifierType, required: true, location_name: "DestinationUser"))
    AdminLinkProviderForUserRequest.add_member(:source_user, Shapes::ShapeRef.new(shape: ProviderUserIdentifierType, required: true, location_name: "SourceUser"))
    AdminLinkProviderForUserRequest.struct_class = Types::AdminLinkProviderForUserRequest

    AdminLinkProviderForUserResponse.struct_class = Types::AdminLinkProviderForUserResponse

    AdminListDevicesRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminListDevicesRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminListDevicesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: QueryLimitType, location_name: "Limit"))
    AdminListDevicesRequest.add_member(:pagination_token, Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: "PaginationToken"))
    AdminListDevicesRequest.struct_class = Types::AdminListDevicesRequest

    AdminListDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceListType, location_name: "Devices"))
    AdminListDevicesResponse.add_member(:pagination_token, Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: "PaginationToken"))
    AdminListDevicesResponse.struct_class = Types::AdminListDevicesResponse

    AdminListGroupsForUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminListGroupsForUserRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminListGroupsForUserRequest.add_member(:limit, Shapes::ShapeRef.new(shape: QueryLimitType, location_name: "Limit"))
    AdminListGroupsForUserRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    AdminListGroupsForUserRequest.struct_class = Types::AdminListGroupsForUserRequest

    AdminListGroupsForUserResponse.add_member(:groups, Shapes::ShapeRef.new(shape: GroupListType, location_name: "Groups"))
    AdminListGroupsForUserResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    AdminListGroupsForUserResponse.struct_class = Types::AdminListGroupsForUserResponse

    AdminListUserAuthEventsRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminListUserAuthEventsRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminListUserAuthEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryLimitType, location_name: "MaxResults"))
    AdminListUserAuthEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    AdminListUserAuthEventsRequest.struct_class = Types::AdminListUserAuthEventsRequest

    AdminListUserAuthEventsResponse.add_member(:auth_events, Shapes::ShapeRef.new(shape: AuthEventsType, location_name: "AuthEvents"))
    AdminListUserAuthEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    AdminListUserAuthEventsResponse.struct_class = Types::AdminListUserAuthEventsResponse

    AdminRemoveUserFromGroupRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminRemoveUserFromGroupRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminRemoveUserFromGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupNameType, required: true, location_name: "GroupName"))
    AdminRemoveUserFromGroupRequest.struct_class = Types::AdminRemoveUserFromGroupRequest

    AdminResetUserPasswordRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminResetUserPasswordRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminResetUserPasswordRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    AdminResetUserPasswordRequest.struct_class = Types::AdminResetUserPasswordRequest

    AdminResetUserPasswordResponse.struct_class = Types::AdminResetUserPasswordResponse

    AdminRespondToAuthChallengeRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminRespondToAuthChallengeRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    AdminRespondToAuthChallengeRequest.add_member(:challenge_name, Shapes::ShapeRef.new(shape: ChallengeNameType, required: true, location_name: "ChallengeName"))
    AdminRespondToAuthChallengeRequest.add_member(:challenge_responses, Shapes::ShapeRef.new(shape: ChallengeResponsesType, location_name: "ChallengeResponses"))
    AdminRespondToAuthChallengeRequest.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    AdminRespondToAuthChallengeRequest.add_member(:analytics_metadata, Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: "AnalyticsMetadata"))
    AdminRespondToAuthChallengeRequest.add_member(:context_data, Shapes::ShapeRef.new(shape: ContextDataType, location_name: "ContextData"))
    AdminRespondToAuthChallengeRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    AdminRespondToAuthChallengeRequest.struct_class = Types::AdminRespondToAuthChallengeRequest

    AdminRespondToAuthChallengeResponse.add_member(:challenge_name, Shapes::ShapeRef.new(shape: ChallengeNameType, location_name: "ChallengeName"))
    AdminRespondToAuthChallengeResponse.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    AdminRespondToAuthChallengeResponse.add_member(:challenge_parameters, Shapes::ShapeRef.new(shape: ChallengeParametersType, location_name: "ChallengeParameters"))
    AdminRespondToAuthChallengeResponse.add_member(:authentication_result, Shapes::ShapeRef.new(shape: AuthenticationResultType, location_name: "AuthenticationResult"))
    AdminRespondToAuthChallengeResponse.struct_class = Types::AdminRespondToAuthChallengeResponse

    AdminSetUserMFAPreferenceRequest.add_member(:sms_mfa_settings, Shapes::ShapeRef.new(shape: SMSMfaSettingsType, location_name: "SMSMfaSettings"))
    AdminSetUserMFAPreferenceRequest.add_member(:software_token_mfa_settings, Shapes::ShapeRef.new(shape: SoftwareTokenMfaSettingsType, location_name: "SoftwareTokenMfaSettings"))
    AdminSetUserMFAPreferenceRequest.add_member(:email_mfa_settings, Shapes::ShapeRef.new(shape: EmailMfaSettingsType, location_name: "EmailMfaSettings"))
    AdminSetUserMFAPreferenceRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminSetUserMFAPreferenceRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminSetUserMFAPreferenceRequest.struct_class = Types::AdminSetUserMFAPreferenceRequest

    AdminSetUserMFAPreferenceResponse.struct_class = Types::AdminSetUserMFAPreferenceResponse

    AdminSetUserPasswordRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminSetUserPasswordRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminSetUserPasswordRequest.add_member(:password, Shapes::ShapeRef.new(shape: PasswordType, required: true, location_name: "Password"))
    AdminSetUserPasswordRequest.add_member(:permanent, Shapes::ShapeRef.new(shape: BooleanType, location_name: "Permanent"))
    AdminSetUserPasswordRequest.struct_class = Types::AdminSetUserPasswordRequest

    AdminSetUserPasswordResponse.struct_class = Types::AdminSetUserPasswordResponse

    AdminSetUserSettingsRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminSetUserSettingsRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminSetUserSettingsRequest.add_member(:mfa_options, Shapes::ShapeRef.new(shape: MFAOptionListType, required: true, location_name: "MFAOptions"))
    AdminSetUserSettingsRequest.struct_class = Types::AdminSetUserSettingsRequest

    AdminSetUserSettingsResponse.struct_class = Types::AdminSetUserSettingsResponse

    AdminUpdateAuthEventFeedbackRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminUpdateAuthEventFeedbackRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminUpdateAuthEventFeedbackRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: EventIdType, required: true, location_name: "EventId"))
    AdminUpdateAuthEventFeedbackRequest.add_member(:feedback_value, Shapes::ShapeRef.new(shape: FeedbackValueType, required: true, location_name: "FeedbackValue"))
    AdminUpdateAuthEventFeedbackRequest.struct_class = Types::AdminUpdateAuthEventFeedbackRequest

    AdminUpdateAuthEventFeedbackResponse.struct_class = Types::AdminUpdateAuthEventFeedbackResponse

    AdminUpdateDeviceStatusRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminUpdateDeviceStatusRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminUpdateDeviceStatusRequest.add_member(:device_key, Shapes::ShapeRef.new(shape: DeviceKeyType, required: true, location_name: "DeviceKey"))
    AdminUpdateDeviceStatusRequest.add_member(:device_remembered_status, Shapes::ShapeRef.new(shape: DeviceRememberedStatusType, location_name: "DeviceRememberedStatus"))
    AdminUpdateDeviceStatusRequest.struct_class = Types::AdminUpdateDeviceStatusRequest

    AdminUpdateDeviceStatusResponse.struct_class = Types::AdminUpdateDeviceStatusResponse

    AdminUpdateUserAttributesRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminUpdateUserAttributesRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminUpdateUserAttributesRequest.add_member(:user_attributes, Shapes::ShapeRef.new(shape: AttributeListType, required: true, location_name: "UserAttributes"))
    AdminUpdateUserAttributesRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    AdminUpdateUserAttributesRequest.struct_class = Types::AdminUpdateUserAttributesRequest

    AdminUpdateUserAttributesResponse.struct_class = Types::AdminUpdateUserAttributesResponse

    AdminUserGlobalSignOutRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    AdminUserGlobalSignOutRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    AdminUserGlobalSignOutRequest.struct_class = Types::AdminUserGlobalSignOutRequest

    AdminUserGlobalSignOutResponse.struct_class = Types::AdminUserGlobalSignOutResponse

    AdvancedSecurityAdditionalFlowsType.add_member(:custom_auth_mode, Shapes::ShapeRef.new(shape: AdvancedSecurityEnabledModeType, location_name: "CustomAuthMode"))
    AdvancedSecurityAdditionalFlowsType.struct_class = Types::AdvancedSecurityAdditionalFlowsType

    AliasAttributesListType.member = Shapes::ShapeRef.new(shape: AliasAttributeType)

    AliasExistsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    AliasExistsException.struct_class = Types::AliasExistsException

    AllowedFirstAuthFactorsListType.member = Shapes::ShapeRef.new(shape: AuthFactorType)

    AnalyticsConfigurationType.add_member(:application_id, Shapes::ShapeRef.new(shape: HexStringType, location_name: "ApplicationId"))
    AnalyticsConfigurationType.add_member(:application_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "ApplicationArn"))
    AnalyticsConfigurationType.add_member(:role_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "RoleArn"))
    AnalyticsConfigurationType.add_member(:external_id, Shapes::ShapeRef.new(shape: StringType, location_name: "ExternalId"))
    AnalyticsConfigurationType.add_member(:user_data_shared, Shapes::ShapeRef.new(shape: BooleanType, location_name: "UserDataShared"))
    AnalyticsConfigurationType.struct_class = Types::AnalyticsConfigurationType

    AnalyticsMetadataType.add_member(:analytics_endpoint_id, Shapes::ShapeRef.new(shape: StringType, location_name: "AnalyticsEndpointId"))
    AnalyticsMetadataType.struct_class = Types::AnalyticsMetadataType

    AssetListType.member = Shapes::ShapeRef.new(shape: AssetType)

    AssetType.add_member(:category, Shapes::ShapeRef.new(shape: AssetCategoryType, required: true, location_name: "Category"))
    AssetType.add_member(:color_mode, Shapes::ShapeRef.new(shape: ColorSchemeModeType, required: true, location_name: "ColorMode"))
    AssetType.add_member(:extension, Shapes::ShapeRef.new(shape: AssetExtensionType, required: true, location_name: "Extension"))
    AssetType.add_member(:bytes, Shapes::ShapeRef.new(shape: AssetBytesType, location_name: "Bytes"))
    AssetType.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdType, location_name: "ResourceId"))
    AssetType.struct_class = Types::AssetType

    AssociateSoftwareTokenRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, location_name: "AccessToken"))
    AssociateSoftwareTokenRequest.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    AssociateSoftwareTokenRequest.struct_class = Types::AssociateSoftwareTokenRequest

    AssociateSoftwareTokenResponse.add_member(:secret_code, Shapes::ShapeRef.new(shape: SecretCodeType, location_name: "SecretCode"))
    AssociateSoftwareTokenResponse.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    AssociateSoftwareTokenResponse.struct_class = Types::AssociateSoftwareTokenResponse

    AttributeListType.member = Shapes::ShapeRef.new(shape: AttributeType)

    AttributeMappingType.key = Shapes::ShapeRef.new(shape: AttributeMappingKeyType)
    AttributeMappingType.value = Shapes::ShapeRef.new(shape: StringType)

    AttributeNameListType.member = Shapes::ShapeRef.new(shape: AttributeNameType)

    AttributeType.add_member(:name, Shapes::ShapeRef.new(shape: AttributeNameType, required: true, location_name: "Name"))
    AttributeType.add_member(:value, Shapes::ShapeRef.new(shape: AttributeValueType, location_name: "Value"))
    AttributeType.struct_class = Types::AttributeType

    AttributesRequireVerificationBeforeUpdateType.member = Shapes::ShapeRef.new(shape: VerifiedAttributeType)

    AuthEventType.add_member(:event_id, Shapes::ShapeRef.new(shape: StringType, location_name: "EventId"))
    AuthEventType.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, location_name: "EventType"))
    AuthEventType.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    AuthEventType.add_member(:event_response, Shapes::ShapeRef.new(shape: EventResponseType, location_name: "EventResponse"))
    AuthEventType.add_member(:event_risk, Shapes::ShapeRef.new(shape: EventRiskType, location_name: "EventRisk"))
    AuthEventType.add_member(:challenge_responses, Shapes::ShapeRef.new(shape: ChallengeResponseListType, location_name: "ChallengeResponses"))
    AuthEventType.add_member(:event_context_data, Shapes::ShapeRef.new(shape: EventContextDataType, location_name: "EventContextData"))
    AuthEventType.add_member(:event_feedback, Shapes::ShapeRef.new(shape: EventFeedbackType, location_name: "EventFeedback"))
    AuthEventType.struct_class = Types::AuthEventType

    AuthEventsType.member = Shapes::ShapeRef.new(shape: AuthEventType)

    AuthParametersType.key = Shapes::ShapeRef.new(shape: StringType)
    AuthParametersType.value = Shapes::ShapeRef.new(shape: StringType)

    AuthenticationResultType.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, location_name: "AccessToken"))
    AuthenticationResultType.add_member(:expires_in, Shapes::ShapeRef.new(shape: IntegerType, location_name: "ExpiresIn"))
    AuthenticationResultType.add_member(:token_type, Shapes::ShapeRef.new(shape: StringType, location_name: "TokenType"))
    AuthenticationResultType.add_member(:refresh_token, Shapes::ShapeRef.new(shape: TokenModelType, location_name: "RefreshToken"))
    AuthenticationResultType.add_member(:id_token, Shapes::ShapeRef.new(shape: TokenModelType, location_name: "IdToken"))
    AuthenticationResultType.add_member(:new_device_metadata, Shapes::ShapeRef.new(shape: NewDeviceMetadataType, location_name: "NewDeviceMetadata"))
    AuthenticationResultType.struct_class = Types::AuthenticationResultType

    AvailableChallengeListType.member = Shapes::ShapeRef.new(shape: ChallengeNameType)

    BlockedIPRangeListType.member = Shapes::ShapeRef.new(shape: StringType)

    CallbackURLsListType.member = Shapes::ShapeRef.new(shape: RedirectUrlType)

    ChallengeParametersType.key = Shapes::ShapeRef.new(shape: StringType)
    ChallengeParametersType.value = Shapes::ShapeRef.new(shape: StringType)

    ChallengeResponseListType.member = Shapes::ShapeRef.new(shape: ChallengeResponseType)

    ChallengeResponseType.add_member(:challenge_name, Shapes::ShapeRef.new(shape: ChallengeName, location_name: "ChallengeName"))
    ChallengeResponseType.add_member(:challenge_response, Shapes::ShapeRef.new(shape: ChallengeResponse, location_name: "ChallengeResponse"))
    ChallengeResponseType.struct_class = Types::ChallengeResponseType

    ChallengeResponsesType.key = Shapes::ShapeRef.new(shape: StringType)
    ChallengeResponsesType.value = Shapes::ShapeRef.new(shape: StringType)

    ChangePasswordRequest.add_member(:previous_password, Shapes::ShapeRef.new(shape: PasswordType, location_name: "PreviousPassword"))
    ChangePasswordRequest.add_member(:proposed_password, Shapes::ShapeRef.new(shape: PasswordType, required: true, location_name: "ProposedPassword"))
    ChangePasswordRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    ChangePasswordRequest.struct_class = Types::ChangePasswordRequest

    ChangePasswordResponse.struct_class = Types::ChangePasswordResponse

    ClientMetadataType.key = Shapes::ShapeRef.new(shape: StringType)
    ClientMetadataType.value = Shapes::ShapeRef.new(shape: StringType)

    ClientPermissionListType.member = Shapes::ShapeRef.new(shape: ClientPermissionType)

    CloudWatchLogsConfigurationType.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "LogGroupArn"))
    CloudWatchLogsConfigurationType.struct_class = Types::CloudWatchLogsConfigurationType

    CodeDeliveryDetailsListType.member = Shapes::ShapeRef.new(shape: CodeDeliveryDetailsType)

    CodeDeliveryDetailsType.add_member(:destination, Shapes::ShapeRef.new(shape: StringType, location_name: "Destination"))
    CodeDeliveryDetailsType.add_member(:delivery_medium, Shapes::ShapeRef.new(shape: DeliveryMediumType, location_name: "DeliveryMedium"))
    CodeDeliveryDetailsType.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeNameType, location_name: "AttributeName"))
    CodeDeliveryDetailsType.struct_class = Types::CodeDeliveryDetailsType

    CodeDeliveryFailureException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    CodeDeliveryFailureException.struct_class = Types::CodeDeliveryFailureException

    CodeMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    CodeMismatchException.struct_class = Types::CodeMismatchException

    CompleteWebAuthnRegistrationRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    CompleteWebAuthnRegistrationRequest.add_member(:credential, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "Credential"))
    CompleteWebAuthnRegistrationRequest.struct_class = Types::CompleteWebAuthnRegistrationRequest

    CompleteWebAuthnRegistrationResponse.struct_class = Types::CompleteWebAuthnRegistrationResponse

    CompromisedCredentialsActionsType.add_member(:event_action, Shapes::ShapeRef.new(shape: CompromisedCredentialsEventActionType, required: true, location_name: "EventAction"))
    CompromisedCredentialsActionsType.struct_class = Types::CompromisedCredentialsActionsType

    CompromisedCredentialsRiskConfigurationType.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFiltersType, location_name: "EventFilter"))
    CompromisedCredentialsRiskConfigurationType.add_member(:actions, Shapes::ShapeRef.new(shape: CompromisedCredentialsActionsType, required: true, location_name: "Actions"))
    CompromisedCredentialsRiskConfigurationType.struct_class = Types::CompromisedCredentialsRiskConfigurationType

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConfiguredUserAuthFactorsListType.member = Shapes::ShapeRef.new(shape: AuthFactorType)

    ConfirmDeviceRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    ConfirmDeviceRequest.add_member(:device_key, Shapes::ShapeRef.new(shape: DeviceKeyType, required: true, location_name: "DeviceKey"))
    ConfirmDeviceRequest.add_member(:device_secret_verifier_config, Shapes::ShapeRef.new(shape: DeviceSecretVerifierConfigType, location_name: "DeviceSecretVerifierConfig"))
    ConfirmDeviceRequest.add_member(:device_name, Shapes::ShapeRef.new(shape: DeviceNameType, location_name: "DeviceName"))
    ConfirmDeviceRequest.struct_class = Types::ConfirmDeviceRequest

    ConfirmDeviceResponse.add_member(:user_confirmation_necessary, Shapes::ShapeRef.new(shape: BooleanType, location_name: "UserConfirmationNecessary"))
    ConfirmDeviceResponse.struct_class = Types::ConfirmDeviceResponse

    ConfirmForgotPasswordRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    ConfirmForgotPasswordRequest.add_member(:secret_hash, Shapes::ShapeRef.new(shape: SecretHashType, location_name: "SecretHash"))
    ConfirmForgotPasswordRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    ConfirmForgotPasswordRequest.add_member(:confirmation_code, Shapes::ShapeRef.new(shape: ConfirmationCodeType, required: true, location_name: "ConfirmationCode"))
    ConfirmForgotPasswordRequest.add_member(:password, Shapes::ShapeRef.new(shape: PasswordType, required: true, location_name: "Password"))
    ConfirmForgotPasswordRequest.add_member(:analytics_metadata, Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: "AnalyticsMetadata"))
    ConfirmForgotPasswordRequest.add_member(:user_context_data, Shapes::ShapeRef.new(shape: UserContextDataType, location_name: "UserContextData"))
    ConfirmForgotPasswordRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    ConfirmForgotPasswordRequest.struct_class = Types::ConfirmForgotPasswordRequest

    ConfirmForgotPasswordResponse.struct_class = Types::ConfirmForgotPasswordResponse

    ConfirmSignUpRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    ConfirmSignUpRequest.add_member(:secret_hash, Shapes::ShapeRef.new(shape: SecretHashType, location_name: "SecretHash"))
    ConfirmSignUpRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    ConfirmSignUpRequest.add_member(:confirmation_code, Shapes::ShapeRef.new(shape: ConfirmationCodeType, required: true, location_name: "ConfirmationCode"))
    ConfirmSignUpRequest.add_member(:force_alias_creation, Shapes::ShapeRef.new(shape: ForceAliasCreation, location_name: "ForceAliasCreation"))
    ConfirmSignUpRequest.add_member(:analytics_metadata, Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: "AnalyticsMetadata"))
    ConfirmSignUpRequest.add_member(:user_context_data, Shapes::ShapeRef.new(shape: UserContextDataType, location_name: "UserContextData"))
    ConfirmSignUpRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    ConfirmSignUpRequest.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    ConfirmSignUpRequest.struct_class = Types::ConfirmSignUpRequest

    ConfirmSignUpResponse.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    ConfirmSignUpResponse.struct_class = Types::ConfirmSignUpResponse

    ContextDataType.add_member(:ip_address, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "IpAddress"))
    ContextDataType.add_member(:server_name, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "ServerName"))
    ContextDataType.add_member(:server_path, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "ServerPath"))
    ContextDataType.add_member(:http_headers, Shapes::ShapeRef.new(shape: HttpHeaderList, required: true, location_name: "HttpHeaders"))
    ContextDataType.add_member(:encoded_data, Shapes::ShapeRef.new(shape: StringType, location_name: "EncodedData"))
    ContextDataType.struct_class = Types::ContextDataType

    CreateGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupNameType, required: true, location_name: "GroupName"))
    CreateGroupRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    CreateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionType, location_name: "Description"))
    CreateGroupRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "RoleArn"))
    CreateGroupRequest.add_member(:precedence, Shapes::ShapeRef.new(shape: PrecedenceType, location_name: "Precedence"))
    CreateGroupRequest.struct_class = Types::CreateGroupRequest

    CreateGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: GroupType, location_name: "Group"))
    CreateGroupResponse.struct_class = Types::CreateGroupResponse

    CreateIdentityProviderRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    CreateIdentityProviderRequest.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderNameTypeV2, required: true, location_name: "ProviderName"))
    CreateIdentityProviderRequest.add_member(:provider_type, Shapes::ShapeRef.new(shape: IdentityProviderTypeType, required: true, location_name: "ProviderType"))
    CreateIdentityProviderRequest.add_member(:provider_details, Shapes::ShapeRef.new(shape: ProviderDetailsType, required: true, location_name: "ProviderDetails"))
    CreateIdentityProviderRequest.add_member(:attribute_mapping, Shapes::ShapeRef.new(shape: AttributeMappingType, location_name: "AttributeMapping"))
    CreateIdentityProviderRequest.add_member(:idp_identifiers, Shapes::ShapeRef.new(shape: IdpIdentifiersListType, location_name: "IdpIdentifiers"))
    CreateIdentityProviderRequest.struct_class = Types::CreateIdentityProviderRequest

    CreateIdentityProviderResponse.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProviderType, required: true, location_name: "IdentityProvider"))
    CreateIdentityProviderResponse.struct_class = Types::CreateIdentityProviderResponse

    CreateManagedLoginBrandingRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    CreateManagedLoginBrandingRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    CreateManagedLoginBrandingRequest.add_member(:use_cognito_provided_values, Shapes::ShapeRef.new(shape: BooleanType, location_name: "UseCognitoProvidedValues"))
    CreateManagedLoginBrandingRequest.add_member(:settings, Shapes::ShapeRef.new(shape: Document, location_name: "Settings"))
    CreateManagedLoginBrandingRequest.add_member(:assets, Shapes::ShapeRef.new(shape: AssetListType, location_name: "Assets"))
    CreateManagedLoginBrandingRequest.struct_class = Types::CreateManagedLoginBrandingRequest

    CreateManagedLoginBrandingResponse.add_member(:managed_login_branding, Shapes::ShapeRef.new(shape: ManagedLoginBrandingType, location_name: "ManagedLoginBranding"))
    CreateManagedLoginBrandingResponse.struct_class = Types::CreateManagedLoginBrandingResponse

    CreateResourceServerRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    CreateResourceServerRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceServerIdentifierType, required: true, location_name: "Identifier"))
    CreateResourceServerRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceServerNameType, required: true, location_name: "Name"))
    CreateResourceServerRequest.add_member(:scopes, Shapes::ShapeRef.new(shape: ResourceServerScopeListType, location_name: "Scopes"))
    CreateResourceServerRequest.struct_class = Types::CreateResourceServerRequest

    CreateResourceServerResponse.add_member(:resource_server, Shapes::ShapeRef.new(shape: ResourceServerType, required: true, location_name: "ResourceServer"))
    CreateResourceServerResponse.struct_class = Types::CreateResourceServerResponse

    CreateUserImportJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: UserImportJobNameType, required: true, location_name: "JobName"))
    CreateUserImportJobRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    CreateUserImportJobRequest.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "CloudWatchLogsRoleArn"))
    CreateUserImportJobRequest.struct_class = Types::CreateUserImportJobRequest

    CreateUserImportJobResponse.add_member(:user_import_job, Shapes::ShapeRef.new(shape: UserImportJobType, location_name: "UserImportJob"))
    CreateUserImportJobResponse.struct_class = Types::CreateUserImportJobResponse

    CreateUserPoolClientRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    CreateUserPoolClientRequest.add_member(:client_name, Shapes::ShapeRef.new(shape: ClientNameType, required: true, location_name: "ClientName"))
    CreateUserPoolClientRequest.add_member(:generate_secret, Shapes::ShapeRef.new(shape: GenerateSecret, location_name: "GenerateSecret"))
    CreateUserPoolClientRequest.add_member(:refresh_token_validity, Shapes::ShapeRef.new(shape: RefreshTokenValidityType, location_name: "RefreshTokenValidity"))
    CreateUserPoolClientRequest.add_member(:access_token_validity, Shapes::ShapeRef.new(shape: AccessTokenValidityType, location_name: "AccessTokenValidity"))
    CreateUserPoolClientRequest.add_member(:id_token_validity, Shapes::ShapeRef.new(shape: IdTokenValidityType, location_name: "IdTokenValidity"))
    CreateUserPoolClientRequest.add_member(:token_validity_units, Shapes::ShapeRef.new(shape: TokenValidityUnitsType, location_name: "TokenValidityUnits"))
    CreateUserPoolClientRequest.add_member(:read_attributes, Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: "ReadAttributes"))
    CreateUserPoolClientRequest.add_member(:write_attributes, Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: "WriteAttributes"))
    CreateUserPoolClientRequest.add_member(:explicit_auth_flows, Shapes::ShapeRef.new(shape: ExplicitAuthFlowsListType, location_name: "ExplicitAuthFlows"))
    CreateUserPoolClientRequest.add_member(:supported_identity_providers, Shapes::ShapeRef.new(shape: SupportedIdentityProvidersListType, location_name: "SupportedIdentityProviders"))
    CreateUserPoolClientRequest.add_member(:callback_urls, Shapes::ShapeRef.new(shape: CallbackURLsListType, location_name: "CallbackURLs"))
    CreateUserPoolClientRequest.add_member(:logout_urls, Shapes::ShapeRef.new(shape: LogoutURLsListType, location_name: "LogoutURLs"))
    CreateUserPoolClientRequest.add_member(:default_redirect_uri, Shapes::ShapeRef.new(shape: RedirectUrlType, location_name: "DefaultRedirectURI"))
    CreateUserPoolClientRequest.add_member(:allowed_o_auth_flows, Shapes::ShapeRef.new(shape: OAuthFlowsType, location_name: "AllowedOAuthFlows"))
    CreateUserPoolClientRequest.add_member(:allowed_o_auth_scopes, Shapes::ShapeRef.new(shape: ScopeListType, location_name: "AllowedOAuthScopes"))
    CreateUserPoolClientRequest.add_member(:allowed_o_auth_flows_user_pool_client, Shapes::ShapeRef.new(shape: BooleanType, location_name: "AllowedOAuthFlowsUserPoolClient"))
    CreateUserPoolClientRequest.add_member(:analytics_configuration, Shapes::ShapeRef.new(shape: AnalyticsConfigurationType, location_name: "AnalyticsConfiguration"))
    CreateUserPoolClientRequest.add_member(:prevent_user_existence_errors, Shapes::ShapeRef.new(shape: PreventUserExistenceErrorTypes, location_name: "PreventUserExistenceErrors"))
    CreateUserPoolClientRequest.add_member(:enable_token_revocation, Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: "EnableTokenRevocation"))
    CreateUserPoolClientRequest.add_member(:enable_propagate_additional_user_context_data, Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: "EnablePropagateAdditionalUserContextData"))
    CreateUserPoolClientRequest.add_member(:auth_session_validity, Shapes::ShapeRef.new(shape: AuthSessionValidityType, location_name: "AuthSessionValidity"))
    CreateUserPoolClientRequest.add_member(:refresh_token_rotation, Shapes::ShapeRef.new(shape: RefreshTokenRotationType, location_name: "RefreshTokenRotation"))
    CreateUserPoolClientRequest.struct_class = Types::CreateUserPoolClientRequest

    CreateUserPoolClientResponse.add_member(:user_pool_client, Shapes::ShapeRef.new(shape: UserPoolClientType, location_name: "UserPoolClient"))
    CreateUserPoolClientResponse.struct_class = Types::CreateUserPoolClientResponse

    CreateUserPoolDomainRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainType, required: true, location_name: "Domain"))
    CreateUserPoolDomainRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    CreateUserPoolDomainRequest.add_member(:managed_login_version, Shapes::ShapeRef.new(shape: WrappedIntegerType, location_name: "ManagedLoginVersion"))
    CreateUserPoolDomainRequest.add_member(:custom_domain_config, Shapes::ShapeRef.new(shape: CustomDomainConfigType, location_name: "CustomDomainConfig"))
    CreateUserPoolDomainRequest.struct_class = Types::CreateUserPoolDomainRequest

    CreateUserPoolDomainResponse.add_member(:managed_login_version, Shapes::ShapeRef.new(shape: WrappedIntegerType, location_name: "ManagedLoginVersion"))
    CreateUserPoolDomainResponse.add_member(:cloud_front_domain, Shapes::ShapeRef.new(shape: DomainType, location_name: "CloudFrontDomain"))
    CreateUserPoolDomainResponse.struct_class = Types::CreateUserPoolDomainResponse

    CreateUserPoolRequest.add_member(:pool_name, Shapes::ShapeRef.new(shape: UserPoolNameType, required: true, location_name: "PoolName"))
    CreateUserPoolRequest.add_member(:policies, Shapes::ShapeRef.new(shape: UserPoolPolicyType, location_name: "Policies"))
    CreateUserPoolRequest.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtectionType, location_name: "DeletionProtection"))
    CreateUserPoolRequest.add_member(:lambda_config, Shapes::ShapeRef.new(shape: LambdaConfigType, location_name: "LambdaConfig"))
    CreateUserPoolRequest.add_member(:auto_verified_attributes, Shapes::ShapeRef.new(shape: VerifiedAttributesListType, location_name: "AutoVerifiedAttributes"))
    CreateUserPoolRequest.add_member(:alias_attributes, Shapes::ShapeRef.new(shape: AliasAttributesListType, location_name: "AliasAttributes"))
    CreateUserPoolRequest.add_member(:username_attributes, Shapes::ShapeRef.new(shape: UsernameAttributesListType, location_name: "UsernameAttributes"))
    CreateUserPoolRequest.add_member(:sms_verification_message, Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: "SmsVerificationMessage"))
    CreateUserPoolRequest.add_member(:email_verification_message, Shapes::ShapeRef.new(shape: EmailVerificationMessageType, location_name: "EmailVerificationMessage"))
    CreateUserPoolRequest.add_member(:email_verification_subject, Shapes::ShapeRef.new(shape: EmailVerificationSubjectType, location_name: "EmailVerificationSubject"))
    CreateUserPoolRequest.add_member(:verification_message_template, Shapes::ShapeRef.new(shape: VerificationMessageTemplateType, location_name: "VerificationMessageTemplate"))
    CreateUserPoolRequest.add_member(:sms_authentication_message, Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: "SmsAuthenticationMessage"))
    CreateUserPoolRequest.add_member(:mfa_configuration, Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: "MfaConfiguration"))
    CreateUserPoolRequest.add_member(:user_attribute_update_settings, Shapes::ShapeRef.new(shape: UserAttributeUpdateSettingsType, location_name: "UserAttributeUpdateSettings"))
    CreateUserPoolRequest.add_member(:device_configuration, Shapes::ShapeRef.new(shape: DeviceConfigurationType, location_name: "DeviceConfiguration"))
    CreateUserPoolRequest.add_member(:email_configuration, Shapes::ShapeRef.new(shape: EmailConfigurationType, location_name: "EmailConfiguration"))
    CreateUserPoolRequest.add_member(:sms_configuration, Shapes::ShapeRef.new(shape: SmsConfigurationType, location_name: "SmsConfiguration"))
    CreateUserPoolRequest.add_member(:user_pool_tags, Shapes::ShapeRef.new(shape: UserPoolTagsType, location_name: "UserPoolTags"))
    CreateUserPoolRequest.add_member(:admin_create_user_config, Shapes::ShapeRef.new(shape: AdminCreateUserConfigType, location_name: "AdminCreateUserConfig"))
    CreateUserPoolRequest.add_member(:schema, Shapes::ShapeRef.new(shape: SchemaAttributesListType, location_name: "Schema"))
    CreateUserPoolRequest.add_member(:user_pool_add_ons, Shapes::ShapeRef.new(shape: UserPoolAddOnsType, location_name: "UserPoolAddOns"))
    CreateUserPoolRequest.add_member(:username_configuration, Shapes::ShapeRef.new(shape: UsernameConfigurationType, location_name: "UsernameConfiguration"))
    CreateUserPoolRequest.add_member(:account_recovery_setting, Shapes::ShapeRef.new(shape: AccountRecoverySettingType, location_name: "AccountRecoverySetting"))
    CreateUserPoolRequest.add_member(:user_pool_tier, Shapes::ShapeRef.new(shape: UserPoolTierType, location_name: "UserPoolTier"))
    CreateUserPoolRequest.struct_class = Types::CreateUserPoolRequest

    CreateUserPoolResponse.add_member(:user_pool, Shapes::ShapeRef.new(shape: UserPoolType, location_name: "UserPool"))
    CreateUserPoolResponse.struct_class = Types::CreateUserPoolResponse

    CustomAttributesListType.member = Shapes::ShapeRef.new(shape: SchemaAttributeType)

    CustomDomainConfigType.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "CertificateArn"))
    CustomDomainConfigType.struct_class = Types::CustomDomainConfigType

    CustomEmailLambdaVersionConfigType.add_member(:lambda_version, Shapes::ShapeRef.new(shape: CustomEmailSenderLambdaVersionType, required: true, location_name: "LambdaVersion"))
    CustomEmailLambdaVersionConfigType.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "LambdaArn"))
    CustomEmailLambdaVersionConfigType.struct_class = Types::CustomEmailLambdaVersionConfigType

    CustomSMSLambdaVersionConfigType.add_member(:lambda_version, Shapes::ShapeRef.new(shape: CustomSMSSenderLambdaVersionType, required: true, location_name: "LambdaVersion"))
    CustomSMSLambdaVersionConfigType.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "LambdaArn"))
    CustomSMSLambdaVersionConfigType.struct_class = Types::CustomSMSLambdaVersionConfigType

    DeleteGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupNameType, required: true, location_name: "GroupName"))
    DeleteGroupRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DeleteGroupRequest.struct_class = Types::DeleteGroupRequest

    DeleteIdentityProviderRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DeleteIdentityProviderRequest.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderNameType, required: true, location_name: "ProviderName"))
    DeleteIdentityProviderRequest.struct_class = Types::DeleteIdentityProviderRequest

    DeleteManagedLoginBrandingRequest.add_member(:managed_login_branding_id, Shapes::ShapeRef.new(shape: ManagedLoginBrandingIdType, required: true, location_name: "ManagedLoginBrandingId"))
    DeleteManagedLoginBrandingRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DeleteManagedLoginBrandingRequest.struct_class = Types::DeleteManagedLoginBrandingRequest

    DeleteResourceServerRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DeleteResourceServerRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceServerIdentifierType, required: true, location_name: "Identifier"))
    DeleteResourceServerRequest.struct_class = Types::DeleteResourceServerRequest

    DeleteUserAttributesRequest.add_member(:user_attribute_names, Shapes::ShapeRef.new(shape: AttributeNameListType, required: true, location_name: "UserAttributeNames"))
    DeleteUserAttributesRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    DeleteUserAttributesRequest.struct_class = Types::DeleteUserAttributesRequest

    DeleteUserAttributesResponse.struct_class = Types::DeleteUserAttributesResponse

    DeleteUserPoolClientRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DeleteUserPoolClientRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    DeleteUserPoolClientRequest.struct_class = Types::DeleteUserPoolClientRequest

    DeleteUserPoolDomainRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainType, required: true, location_name: "Domain"))
    DeleteUserPoolDomainRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DeleteUserPoolDomainRequest.struct_class = Types::DeleteUserPoolDomainRequest

    DeleteUserPoolDomainResponse.struct_class = Types::DeleteUserPoolDomainResponse

    DeleteUserPoolRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DeleteUserPoolRequest.struct_class = Types::DeleteUserPoolRequest

    DeleteUserRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteWebAuthnCredentialRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    DeleteWebAuthnCredentialRequest.add_member(:credential_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "CredentialId"))
    DeleteWebAuthnCredentialRequest.struct_class = Types::DeleteWebAuthnCredentialRequest

    DeleteWebAuthnCredentialResponse.struct_class = Types::DeleteWebAuthnCredentialResponse

    DeliveryMediumListType.member = Shapes::ShapeRef.new(shape: DeliveryMediumType)

    DescribeIdentityProviderRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DescribeIdentityProviderRequest.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderNameType, required: true, location_name: "ProviderName"))
    DescribeIdentityProviderRequest.struct_class = Types::DescribeIdentityProviderRequest

    DescribeIdentityProviderResponse.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProviderType, required: true, location_name: "IdentityProvider"))
    DescribeIdentityProviderResponse.struct_class = Types::DescribeIdentityProviderResponse

    DescribeManagedLoginBrandingByClientRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DescribeManagedLoginBrandingByClientRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    DescribeManagedLoginBrandingByClientRequest.add_member(:return_merged_resources, Shapes::ShapeRef.new(shape: BooleanType, location_name: "ReturnMergedResources"))
    DescribeManagedLoginBrandingByClientRequest.struct_class = Types::DescribeManagedLoginBrandingByClientRequest

    DescribeManagedLoginBrandingByClientResponse.add_member(:managed_login_branding, Shapes::ShapeRef.new(shape: ManagedLoginBrandingType, location_name: "ManagedLoginBranding"))
    DescribeManagedLoginBrandingByClientResponse.struct_class = Types::DescribeManagedLoginBrandingByClientResponse

    DescribeManagedLoginBrandingRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DescribeManagedLoginBrandingRequest.add_member(:managed_login_branding_id, Shapes::ShapeRef.new(shape: ManagedLoginBrandingIdType, required: true, location_name: "ManagedLoginBrandingId"))
    DescribeManagedLoginBrandingRequest.add_member(:return_merged_resources, Shapes::ShapeRef.new(shape: BooleanType, location_name: "ReturnMergedResources"))
    DescribeManagedLoginBrandingRequest.struct_class = Types::DescribeManagedLoginBrandingRequest

    DescribeManagedLoginBrandingResponse.add_member(:managed_login_branding, Shapes::ShapeRef.new(shape: ManagedLoginBrandingType, location_name: "ManagedLoginBranding"))
    DescribeManagedLoginBrandingResponse.struct_class = Types::DescribeManagedLoginBrandingResponse

    DescribeResourceServerRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DescribeResourceServerRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceServerIdentifierType, required: true, location_name: "Identifier"))
    DescribeResourceServerRequest.struct_class = Types::DescribeResourceServerRequest

    DescribeResourceServerResponse.add_member(:resource_server, Shapes::ShapeRef.new(shape: ResourceServerType, required: true, location_name: "ResourceServer"))
    DescribeResourceServerResponse.struct_class = Types::DescribeResourceServerResponse

    DescribeRiskConfigurationRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DescribeRiskConfigurationRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "ClientId"))
    DescribeRiskConfigurationRequest.struct_class = Types::DescribeRiskConfigurationRequest

    DescribeRiskConfigurationResponse.add_member(:risk_configuration, Shapes::ShapeRef.new(shape: RiskConfigurationType, required: true, location_name: "RiskConfiguration"))
    DescribeRiskConfigurationResponse.struct_class = Types::DescribeRiskConfigurationResponse

    DescribeUserImportJobRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DescribeUserImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: UserImportJobIdType, required: true, location_name: "JobId"))
    DescribeUserImportJobRequest.struct_class = Types::DescribeUserImportJobRequest

    DescribeUserImportJobResponse.add_member(:user_import_job, Shapes::ShapeRef.new(shape: UserImportJobType, location_name: "UserImportJob"))
    DescribeUserImportJobResponse.struct_class = Types::DescribeUserImportJobResponse

    DescribeUserPoolClientRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DescribeUserPoolClientRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    DescribeUserPoolClientRequest.struct_class = Types::DescribeUserPoolClientRequest

    DescribeUserPoolClientResponse.add_member(:user_pool_client, Shapes::ShapeRef.new(shape: UserPoolClientType, location_name: "UserPoolClient"))
    DescribeUserPoolClientResponse.struct_class = Types::DescribeUserPoolClientResponse

    DescribeUserPoolDomainRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainType, required: true, location_name: "Domain"))
    DescribeUserPoolDomainRequest.struct_class = Types::DescribeUserPoolDomainRequest

    DescribeUserPoolDomainResponse.add_member(:domain_description, Shapes::ShapeRef.new(shape: DomainDescriptionType, location_name: "DomainDescription"))
    DescribeUserPoolDomainResponse.struct_class = Types::DescribeUserPoolDomainResponse

    DescribeUserPoolRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    DescribeUserPoolRequest.struct_class = Types::DescribeUserPoolRequest

    DescribeUserPoolResponse.add_member(:user_pool, Shapes::ShapeRef.new(shape: UserPoolType, location_name: "UserPool"))
    DescribeUserPoolResponse.struct_class = Types::DescribeUserPoolResponse

    DeviceConfigurationType.add_member(:challenge_required_on_new_device, Shapes::ShapeRef.new(shape: BooleanType, location_name: "ChallengeRequiredOnNewDevice"))
    DeviceConfigurationType.add_member(:device_only_remembered_on_user_prompt, Shapes::ShapeRef.new(shape: BooleanType, location_name: "DeviceOnlyRememberedOnUserPrompt"))
    DeviceConfigurationType.struct_class = Types::DeviceConfigurationType

    DeviceKeyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    DeviceKeyExistsException.struct_class = Types::DeviceKeyExistsException

    DeviceListType.member = Shapes::ShapeRef.new(shape: DeviceType)

    DeviceSecretVerifierConfigType.add_member(:password_verifier, Shapes::ShapeRef.new(shape: StringType, location_name: "PasswordVerifier"))
    DeviceSecretVerifierConfigType.add_member(:salt, Shapes::ShapeRef.new(shape: StringType, location_name: "Salt"))
    DeviceSecretVerifierConfigType.struct_class = Types::DeviceSecretVerifierConfigType

    DeviceType.add_member(:device_key, Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: "DeviceKey"))
    DeviceType.add_member(:device_attributes, Shapes::ShapeRef.new(shape: AttributeListType, location_name: "DeviceAttributes"))
    DeviceType.add_member(:device_create_date, Shapes::ShapeRef.new(shape: DateType, location_name: "DeviceCreateDate"))
    DeviceType.add_member(:device_last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "DeviceLastModifiedDate"))
    DeviceType.add_member(:device_last_authenticated_date, Shapes::ShapeRef.new(shape: DateType, location_name: "DeviceLastAuthenticatedDate"))
    DeviceType.struct_class = Types::DeviceType

    DomainDescriptionType.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    DomainDescriptionType.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AWSAccountIdType, location_name: "AWSAccountId"))
    DomainDescriptionType.add_member(:domain, Shapes::ShapeRef.new(shape: DomainType, location_name: "Domain"))
    DomainDescriptionType.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketType, location_name: "S3Bucket"))
    DomainDescriptionType.add_member(:cloud_front_distribution, Shapes::ShapeRef.new(shape: StringType, location_name: "CloudFrontDistribution"))
    DomainDescriptionType.add_member(:version, Shapes::ShapeRef.new(shape: DomainVersionType, location_name: "Version"))
    DomainDescriptionType.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatusType, location_name: "Status"))
    DomainDescriptionType.add_member(:custom_domain_config, Shapes::ShapeRef.new(shape: CustomDomainConfigType, location_name: "CustomDomainConfig"))
    DomainDescriptionType.add_member(:managed_login_version, Shapes::ShapeRef.new(shape: WrappedIntegerType, location_name: "ManagedLoginVersion"))
    DomainDescriptionType.struct_class = Types::DomainDescriptionType

    DuplicateProviderException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    DuplicateProviderException.struct_class = Types::DuplicateProviderException

    EmailConfigurationType.add_member(:source_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "SourceArn"))
    EmailConfigurationType.add_member(:reply_to_email_address, Shapes::ShapeRef.new(shape: EmailAddressType, location_name: "ReplyToEmailAddress"))
    EmailConfigurationType.add_member(:email_sending_account, Shapes::ShapeRef.new(shape: EmailSendingAccountType, location_name: "EmailSendingAccount"))
    EmailConfigurationType.add_member(:from, Shapes::ShapeRef.new(shape: StringType, location_name: "From"))
    EmailConfigurationType.add_member(:configuration_set, Shapes::ShapeRef.new(shape: SESConfigurationSet, location_name: "ConfigurationSet"))
    EmailConfigurationType.struct_class = Types::EmailConfigurationType

    EmailMfaConfigType.add_member(:message, Shapes::ShapeRef.new(shape: EmailMfaMessageType, location_name: "Message"))
    EmailMfaConfigType.add_member(:subject, Shapes::ShapeRef.new(shape: EmailMfaSubjectType, location_name: "Subject"))
    EmailMfaConfigType.struct_class = Types::EmailMfaConfigType

    EmailMfaSettingsType.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanType, location_name: "Enabled"))
    EmailMfaSettingsType.add_member(:preferred_mfa, Shapes::ShapeRef.new(shape: BooleanType, location_name: "PreferredMfa"))
    EmailMfaSettingsType.struct_class = Types::EmailMfaSettingsType

    EnableSoftwareTokenMFAException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    EnableSoftwareTokenMFAException.struct_class = Types::EnableSoftwareTokenMFAException

    EventContextDataType.add_member(:ip_address, Shapes::ShapeRef.new(shape: StringType, location_name: "IpAddress"))
    EventContextDataType.add_member(:device_name, Shapes::ShapeRef.new(shape: StringType, location_name: "DeviceName"))
    EventContextDataType.add_member(:timezone, Shapes::ShapeRef.new(shape: StringType, location_name: "Timezone"))
    EventContextDataType.add_member(:city, Shapes::ShapeRef.new(shape: StringType, location_name: "City"))
    EventContextDataType.add_member(:country, Shapes::ShapeRef.new(shape: StringType, location_name: "Country"))
    EventContextDataType.struct_class = Types::EventContextDataType

    EventFeedbackType.add_member(:feedback_value, Shapes::ShapeRef.new(shape: FeedbackValueType, required: true, location_name: "FeedbackValue"))
    EventFeedbackType.add_member(:provider, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "Provider"))
    EventFeedbackType.add_member(:feedback_date, Shapes::ShapeRef.new(shape: DateType, location_name: "FeedbackDate"))
    EventFeedbackType.struct_class = Types::EventFeedbackType

    EventFiltersType.member = Shapes::ShapeRef.new(shape: EventFilterType)

    EventRiskType.add_member(:risk_decision, Shapes::ShapeRef.new(shape: RiskDecisionType, location_name: "RiskDecision"))
    EventRiskType.add_member(:risk_level, Shapes::ShapeRef.new(shape: RiskLevelType, location_name: "RiskLevel"))
    EventRiskType.add_member(:compromised_credentials_detected, Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: "CompromisedCredentialsDetected"))
    EventRiskType.struct_class = Types::EventRiskType

    ExpiredCodeException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    ExpiredCodeException.struct_class = Types::ExpiredCodeException

    ExplicitAuthFlowsListType.member = Shapes::ShapeRef.new(shape: ExplicitAuthFlowsType)

    FeatureUnavailableInTierException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    FeatureUnavailableInTierException.struct_class = Types::FeatureUnavailableInTierException

    FirehoseConfigurationType.add_member(:stream_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "StreamArn"))
    FirehoseConfigurationType.struct_class = Types::FirehoseConfigurationType

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    ForgetDeviceRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, location_name: "AccessToken"))
    ForgetDeviceRequest.add_member(:device_key, Shapes::ShapeRef.new(shape: DeviceKeyType, required: true, location_name: "DeviceKey"))
    ForgetDeviceRequest.struct_class = Types::ForgetDeviceRequest

    ForgotPasswordRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    ForgotPasswordRequest.add_member(:secret_hash, Shapes::ShapeRef.new(shape: SecretHashType, location_name: "SecretHash"))
    ForgotPasswordRequest.add_member(:user_context_data, Shapes::ShapeRef.new(shape: UserContextDataType, location_name: "UserContextData"))
    ForgotPasswordRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    ForgotPasswordRequest.add_member(:analytics_metadata, Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: "AnalyticsMetadata"))
    ForgotPasswordRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    ForgotPasswordRequest.struct_class = Types::ForgotPasswordRequest

    ForgotPasswordResponse.add_member(:code_delivery_details, Shapes::ShapeRef.new(shape: CodeDeliveryDetailsType, location_name: "CodeDeliveryDetails"))
    ForgotPasswordResponse.struct_class = Types::ForgotPasswordResponse

    GetCSVHeaderRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    GetCSVHeaderRequest.struct_class = Types::GetCSVHeaderRequest

    GetCSVHeaderResponse.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    GetCSVHeaderResponse.add_member(:csv_header, Shapes::ShapeRef.new(shape: ListOfStringTypes, location_name: "CSVHeader"))
    GetCSVHeaderResponse.struct_class = Types::GetCSVHeaderResponse

    GetDeviceRequest.add_member(:device_key, Shapes::ShapeRef.new(shape: DeviceKeyType, required: true, location_name: "DeviceKey"))
    GetDeviceRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, location_name: "AccessToken"))
    GetDeviceRequest.struct_class = Types::GetDeviceRequest

    GetDeviceResponse.add_member(:device, Shapes::ShapeRef.new(shape: DeviceType, required: true, location_name: "Device"))
    GetDeviceResponse.struct_class = Types::GetDeviceResponse

    GetGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupNameType, required: true, location_name: "GroupName"))
    GetGroupRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    GetGroupRequest.struct_class = Types::GetGroupRequest

    GetGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: GroupType, location_name: "Group"))
    GetGroupResponse.struct_class = Types::GetGroupResponse

    GetIdentityProviderByIdentifierRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    GetIdentityProviderByIdentifierRequest.add_member(:idp_identifier, Shapes::ShapeRef.new(shape: IdpIdentifierType, required: true, location_name: "IdpIdentifier"))
    GetIdentityProviderByIdentifierRequest.struct_class = Types::GetIdentityProviderByIdentifierRequest

    GetIdentityProviderByIdentifierResponse.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProviderType, required: true, location_name: "IdentityProvider"))
    GetIdentityProviderByIdentifierResponse.struct_class = Types::GetIdentityProviderByIdentifierResponse

    GetLogDeliveryConfigurationRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    GetLogDeliveryConfigurationRequest.struct_class = Types::GetLogDeliveryConfigurationRequest

    GetLogDeliveryConfigurationResponse.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfigurationType, location_name: "LogDeliveryConfiguration"))
    GetLogDeliveryConfigurationResponse.struct_class = Types::GetLogDeliveryConfigurationResponse

    GetSigningCertificateRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    GetSigningCertificateRequest.struct_class = Types::GetSigningCertificateRequest

    GetSigningCertificateResponse.add_member(:certificate, Shapes::ShapeRef.new(shape: StringType, location_name: "Certificate"))
    GetSigningCertificateResponse.struct_class = Types::GetSigningCertificateResponse

    GetTokensFromRefreshTokenRequest.add_member(:refresh_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "RefreshToken"))
    GetTokensFromRefreshTokenRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    GetTokensFromRefreshTokenRequest.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, location_name: "ClientSecret"))
    GetTokensFromRefreshTokenRequest.add_member(:device_key, Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: "DeviceKey"))
    GetTokensFromRefreshTokenRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    GetTokensFromRefreshTokenRequest.struct_class = Types::GetTokensFromRefreshTokenRequest

    GetTokensFromRefreshTokenResponse.add_member(:authentication_result, Shapes::ShapeRef.new(shape: AuthenticationResultType, location_name: "AuthenticationResult"))
    GetTokensFromRefreshTokenResponse.struct_class = Types::GetTokensFromRefreshTokenResponse

    GetUICustomizationRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    GetUICustomizationRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "ClientId"))
    GetUICustomizationRequest.struct_class = Types::GetUICustomizationRequest

    GetUICustomizationResponse.add_member(:ui_customization, Shapes::ShapeRef.new(shape: UICustomizationType, required: true, location_name: "UICustomization"))
    GetUICustomizationResponse.struct_class = Types::GetUICustomizationResponse

    GetUserAttributeVerificationCodeRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    GetUserAttributeVerificationCodeRequest.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeNameType, required: true, location_name: "AttributeName"))
    GetUserAttributeVerificationCodeRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    GetUserAttributeVerificationCodeRequest.struct_class = Types::GetUserAttributeVerificationCodeRequest

    GetUserAttributeVerificationCodeResponse.add_member(:code_delivery_details, Shapes::ShapeRef.new(shape: CodeDeliveryDetailsType, location_name: "CodeDeliveryDetails"))
    GetUserAttributeVerificationCodeResponse.struct_class = Types::GetUserAttributeVerificationCodeResponse

    GetUserAuthFactorsRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    GetUserAuthFactorsRequest.struct_class = Types::GetUserAuthFactorsRequest

    GetUserAuthFactorsResponse.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    GetUserAuthFactorsResponse.add_member(:preferred_mfa_setting, Shapes::ShapeRef.new(shape: StringType, location_name: "PreferredMfaSetting"))
    GetUserAuthFactorsResponse.add_member(:user_mfa_setting_list, Shapes::ShapeRef.new(shape: UserMFASettingListType, location_name: "UserMFASettingList"))
    GetUserAuthFactorsResponse.add_member(:configured_user_auth_factors, Shapes::ShapeRef.new(shape: ConfiguredUserAuthFactorsListType, location_name: "ConfiguredUserAuthFactors"))
    GetUserAuthFactorsResponse.struct_class = Types::GetUserAuthFactorsResponse

    GetUserPoolMfaConfigRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    GetUserPoolMfaConfigRequest.struct_class = Types::GetUserPoolMfaConfigRequest

    GetUserPoolMfaConfigResponse.add_member(:sms_mfa_configuration, Shapes::ShapeRef.new(shape: SmsMfaConfigType, location_name: "SmsMfaConfiguration"))
    GetUserPoolMfaConfigResponse.add_member(:software_token_mfa_configuration, Shapes::ShapeRef.new(shape: SoftwareTokenMfaConfigType, location_name: "SoftwareTokenMfaConfiguration"))
    GetUserPoolMfaConfigResponse.add_member(:email_mfa_configuration, Shapes::ShapeRef.new(shape: EmailMfaConfigType, location_name: "EmailMfaConfiguration"))
    GetUserPoolMfaConfigResponse.add_member(:mfa_configuration, Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: "MfaConfiguration"))
    GetUserPoolMfaConfigResponse.add_member(:web_authn_configuration, Shapes::ShapeRef.new(shape: WebAuthnConfigurationType, location_name: "WebAuthnConfiguration"))
    GetUserPoolMfaConfigResponse.struct_class = Types::GetUserPoolMfaConfigResponse

    GetUserRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    GetUserRequest.struct_class = Types::GetUserRequest

    GetUserResponse.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    GetUserResponse.add_member(:user_attributes, Shapes::ShapeRef.new(shape: AttributeListType, required: true, location_name: "UserAttributes"))
    GetUserResponse.add_member(:mfa_options, Shapes::ShapeRef.new(shape: MFAOptionListType, location_name: "MFAOptions"))
    GetUserResponse.add_member(:preferred_mfa_setting, Shapes::ShapeRef.new(shape: StringType, location_name: "PreferredMfaSetting"))
    GetUserResponse.add_member(:user_mfa_setting_list, Shapes::ShapeRef.new(shape: UserMFASettingListType, location_name: "UserMFASettingList"))
    GetUserResponse.struct_class = Types::GetUserResponse

    GlobalSignOutRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    GlobalSignOutRequest.struct_class = Types::GlobalSignOutRequest

    GlobalSignOutResponse.struct_class = Types::GlobalSignOutResponse

    GroupExistsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    GroupExistsException.struct_class = Types::GroupExistsException

    GroupListType.member = Shapes::ShapeRef.new(shape: GroupType)

    GroupType.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupNameType, location_name: "GroupName"))
    GroupType.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    GroupType.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionType, location_name: "Description"))
    GroupType.add_member(:role_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "RoleArn"))
    GroupType.add_member(:precedence, Shapes::ShapeRef.new(shape: PrecedenceType, location_name: "Precedence"))
    GroupType.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "LastModifiedDate"))
    GroupType.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    GroupType.struct_class = Types::GroupType

    HttpHeader.add_member(:header_name, Shapes::ShapeRef.new(shape: StringType, location_name: "headerName"))
    HttpHeader.add_member(:header_value, Shapes::ShapeRef.new(shape: StringType, location_name: "headerValue"))
    HttpHeader.struct_class = Types::HttpHeader

    HttpHeaderList.member = Shapes::ShapeRef.new(shape: HttpHeader)

    IdentityProviderType.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    IdentityProviderType.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderNameType, location_name: "ProviderName"))
    IdentityProviderType.add_member(:provider_type, Shapes::ShapeRef.new(shape: IdentityProviderTypeType, location_name: "ProviderType"))
    IdentityProviderType.add_member(:provider_details, Shapes::ShapeRef.new(shape: ProviderDetailsType, location_name: "ProviderDetails"))
    IdentityProviderType.add_member(:attribute_mapping, Shapes::ShapeRef.new(shape: AttributeMappingType, location_name: "AttributeMapping"))
    IdentityProviderType.add_member(:idp_identifiers, Shapes::ShapeRef.new(shape: IdpIdentifiersListType, location_name: "IdpIdentifiers"))
    IdentityProviderType.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "LastModifiedDate"))
    IdentityProviderType.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    IdentityProviderType.struct_class = Types::IdentityProviderType

    IdpIdentifiersListType.member = Shapes::ShapeRef.new(shape: IdpIdentifierType)

    InitiateAuthRequest.add_member(:auth_flow, Shapes::ShapeRef.new(shape: AuthFlowType, required: true, location_name: "AuthFlow"))
    InitiateAuthRequest.add_member(:auth_parameters, Shapes::ShapeRef.new(shape: AuthParametersType, location_name: "AuthParameters"))
    InitiateAuthRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    InitiateAuthRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    InitiateAuthRequest.add_member(:analytics_metadata, Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: "AnalyticsMetadata"))
    InitiateAuthRequest.add_member(:user_context_data, Shapes::ShapeRef.new(shape: UserContextDataType, location_name: "UserContextData"))
    InitiateAuthRequest.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    InitiateAuthRequest.struct_class = Types::InitiateAuthRequest

    InitiateAuthResponse.add_member(:challenge_name, Shapes::ShapeRef.new(shape: ChallengeNameType, location_name: "ChallengeName"))
    InitiateAuthResponse.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    InitiateAuthResponse.add_member(:challenge_parameters, Shapes::ShapeRef.new(shape: ChallengeParametersType, location_name: "ChallengeParameters"))
    InitiateAuthResponse.add_member(:authentication_result, Shapes::ShapeRef.new(shape: AuthenticationResultType, location_name: "AuthenticationResult"))
    InitiateAuthResponse.add_member(:available_challenges, Shapes::ShapeRef.new(shape: AvailableChallengeListType, location_name: "AvailableChallenges"))
    InitiateAuthResponse.struct_class = Types::InitiateAuthResponse

    InternalErrorException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    InternalErrorException.struct_class = Types::InternalErrorException

    InvalidEmailRoleAccessPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    InvalidEmailRoleAccessPolicyException.struct_class = Types::InvalidEmailRoleAccessPolicyException

    InvalidLambdaResponseException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    InvalidLambdaResponseException.struct_class = Types::InvalidLambdaResponseException

    InvalidOAuthFlowException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    InvalidOAuthFlowException.struct_class = Types::InvalidOAuthFlowException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    InvalidParameterException.add_member(:reason_code, Shapes::ShapeRef.new(shape: InvalidParameterExceptionReasonCodeType, location_name: "reasonCode"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidPasswordException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    InvalidPasswordException.struct_class = Types::InvalidPasswordException

    InvalidSmsRoleAccessPolicyException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    InvalidSmsRoleAccessPolicyException.struct_class = Types::InvalidSmsRoleAccessPolicyException

    InvalidSmsRoleTrustRelationshipException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    InvalidSmsRoleTrustRelationshipException.struct_class = Types::InvalidSmsRoleTrustRelationshipException

    InvalidUserPoolConfigurationException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    InvalidUserPoolConfigurationException.struct_class = Types::InvalidUserPoolConfigurationException

    LambdaConfigType.add_member(:pre_sign_up, Shapes::ShapeRef.new(shape: ArnType, location_name: "PreSignUp"))
    LambdaConfigType.add_member(:custom_message, Shapes::ShapeRef.new(shape: ArnType, location_name: "CustomMessage"))
    LambdaConfigType.add_member(:post_confirmation, Shapes::ShapeRef.new(shape: ArnType, location_name: "PostConfirmation"))
    LambdaConfigType.add_member(:pre_authentication, Shapes::ShapeRef.new(shape: ArnType, location_name: "PreAuthentication"))
    LambdaConfigType.add_member(:post_authentication, Shapes::ShapeRef.new(shape: ArnType, location_name: "PostAuthentication"))
    LambdaConfigType.add_member(:define_auth_challenge, Shapes::ShapeRef.new(shape: ArnType, location_name: "DefineAuthChallenge"))
    LambdaConfigType.add_member(:create_auth_challenge, Shapes::ShapeRef.new(shape: ArnType, location_name: "CreateAuthChallenge"))
    LambdaConfigType.add_member(:verify_auth_challenge_response, Shapes::ShapeRef.new(shape: ArnType, location_name: "VerifyAuthChallengeResponse"))
    LambdaConfigType.add_member(:pre_token_generation, Shapes::ShapeRef.new(shape: ArnType, location_name: "PreTokenGeneration"))
    LambdaConfigType.add_member(:user_migration, Shapes::ShapeRef.new(shape: ArnType, location_name: "UserMigration"))
    LambdaConfigType.add_member(:pre_token_generation_config, Shapes::ShapeRef.new(shape: PreTokenGenerationVersionConfigType, location_name: "PreTokenGenerationConfig"))
    LambdaConfigType.add_member(:custom_sms_sender, Shapes::ShapeRef.new(shape: CustomSMSLambdaVersionConfigType, location_name: "CustomSMSSender"))
    LambdaConfigType.add_member(:custom_email_sender, Shapes::ShapeRef.new(shape: CustomEmailLambdaVersionConfigType, location_name: "CustomEmailSender"))
    LambdaConfigType.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: ArnType, location_name: "KMSKeyID"))
    LambdaConfigType.struct_class = Types::LambdaConfigType

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListDevicesRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    ListDevicesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: QueryLimitType, location_name: "Limit"))
    ListDevicesRequest.add_member(:pagination_token, Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: "PaginationToken"))
    ListDevicesRequest.struct_class = Types::ListDevicesRequest

    ListDevicesResponse.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceListType, location_name: "Devices"))
    ListDevicesResponse.add_member(:pagination_token, Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: "PaginationToken"))
    ListDevicesResponse.struct_class = Types::ListDevicesResponse

    ListGroupsRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    ListGroupsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: QueryLimitType, location_name: "Limit"))
    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:groups, Shapes::ShapeRef.new(shape: GroupListType, location_name: "Groups"))
    ListGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListIdentityProvidersRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    ListIdentityProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListProvidersLimitType, location_name: "MaxResults"))
    ListIdentityProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: "NextToken"))
    ListIdentityProvidersRequest.struct_class = Types::ListIdentityProvidersRequest

    ListIdentityProvidersResponse.add_member(:providers, Shapes::ShapeRef.new(shape: ProvidersListType, required: true, location_name: "Providers"))
    ListIdentityProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: "NextToken"))
    ListIdentityProvidersResponse.struct_class = Types::ListIdentityProvidersResponse

    ListOfStringTypes.member = Shapes::ShapeRef.new(shape: StringType)

    ListResourceServersRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    ListResourceServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceServersLimitType, location_name: "MaxResults"))
    ListResourceServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: "NextToken"))
    ListResourceServersRequest.struct_class = Types::ListResourceServersRequest

    ListResourceServersResponse.add_member(:resource_servers, Shapes::ShapeRef.new(shape: ResourceServersListType, required: true, location_name: "ResourceServers"))
    ListResourceServersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: "NextToken"))
    ListResourceServersResponse.struct_class = Types::ListResourceServersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: UserPoolTagsType, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListUserImportJobsRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    ListUserImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PoolQueryLimitType, required: true, location_name: "MaxResults"))
    ListUserImportJobsRequest.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: "PaginationToken"))
    ListUserImportJobsRequest.struct_class = Types::ListUserImportJobsRequest

    ListUserImportJobsResponse.add_member(:user_import_jobs, Shapes::ShapeRef.new(shape: UserImportJobsListType, location_name: "UserImportJobs"))
    ListUserImportJobsResponse.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: "PaginationToken"))
    ListUserImportJobsResponse.struct_class = Types::ListUserImportJobsResponse

    ListUserPoolClientsRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    ListUserPoolClientsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: QueryLimit, location_name: "MaxResults"))
    ListUserPoolClientsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListUserPoolClientsRequest.struct_class = Types::ListUserPoolClientsRequest

    ListUserPoolClientsResponse.add_member(:user_pool_clients, Shapes::ShapeRef.new(shape: UserPoolClientListType, location_name: "UserPoolClients"))
    ListUserPoolClientsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListUserPoolClientsResponse.struct_class = Types::ListUserPoolClientsResponse

    ListUserPoolsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: "NextToken"))
    ListUserPoolsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PoolQueryLimitType, required: true, location_name: "MaxResults"))
    ListUserPoolsRequest.struct_class = Types::ListUserPoolsRequest

    ListUserPoolsResponse.add_member(:user_pools, Shapes::ShapeRef.new(shape: UserPoolListType, location_name: "UserPools"))
    ListUserPoolsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKeyType, location_name: "NextToken"))
    ListUserPoolsResponse.struct_class = Types::ListUserPoolsResponse

    ListUsersInGroupRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    ListUsersInGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupNameType, required: true, location_name: "GroupName"))
    ListUsersInGroupRequest.add_member(:limit, Shapes::ShapeRef.new(shape: QueryLimitType, location_name: "Limit"))
    ListUsersInGroupRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListUsersInGroupRequest.struct_class = Types::ListUsersInGroupRequest

    ListUsersInGroupResponse.add_member(:users, Shapes::ShapeRef.new(shape: UsersListType, location_name: "Users"))
    ListUsersInGroupResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListUsersInGroupResponse.struct_class = Types::ListUsersInGroupResponse

    ListUsersRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    ListUsersRequest.add_member(:attributes_to_get, Shapes::ShapeRef.new(shape: SearchedAttributeNamesListType, location_name: "AttributesToGet"))
    ListUsersRequest.add_member(:limit, Shapes::ShapeRef.new(shape: QueryLimitType, location_name: "Limit"))
    ListUsersRequest.add_member(:pagination_token, Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: "PaginationToken"))
    ListUsersRequest.add_member(:filter, Shapes::ShapeRef.new(shape: UserFilterType, location_name: "Filter"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UsersListType, location_name: "Users"))
    ListUsersResponse.add_member(:pagination_token, Shapes::ShapeRef.new(shape: SearchPaginationTokenType, location_name: "PaginationToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    ListWebAuthnCredentialsRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    ListWebAuthnCredentialsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListWebAuthnCredentialsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: WebAuthnCredentialsQueryLimitType, location_name: "MaxResults"))
    ListWebAuthnCredentialsRequest.struct_class = Types::ListWebAuthnCredentialsRequest

    ListWebAuthnCredentialsResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: WebAuthnCredentialDescriptionListType, required: true, location_name: "Credentials"))
    ListWebAuthnCredentialsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationKey, location_name: "NextToken"))
    ListWebAuthnCredentialsResponse.struct_class = Types::ListWebAuthnCredentialsResponse

    LogConfigurationListType.member = Shapes::ShapeRef.new(shape: LogConfigurationType)

    LogConfigurationType.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, required: true, location_name: "LogLevel"))
    LogConfigurationType.add_member(:event_source, Shapes::ShapeRef.new(shape: EventSourceName, required: true, location_name: "EventSource"))
    LogConfigurationType.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: CloudWatchLogsConfigurationType, location_name: "CloudWatchLogsConfiguration"))
    LogConfigurationType.add_member(:s3_configuration, Shapes::ShapeRef.new(shape: S3ConfigurationType, location_name: "S3Configuration"))
    LogConfigurationType.add_member(:firehose_configuration, Shapes::ShapeRef.new(shape: FirehoseConfigurationType, location_name: "FirehoseConfiguration"))
    LogConfigurationType.struct_class = Types::LogConfigurationType

    LogDeliveryConfigurationType.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    LogDeliveryConfigurationType.add_member(:log_configurations, Shapes::ShapeRef.new(shape: LogConfigurationListType, required: true, location_name: "LogConfigurations"))
    LogDeliveryConfigurationType.struct_class = Types::LogDeliveryConfigurationType

    LogoutURLsListType.member = Shapes::ShapeRef.new(shape: RedirectUrlType)

    MFAMethodNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    MFAMethodNotFoundException.struct_class = Types::MFAMethodNotFoundException

    MFAOptionListType.member = Shapes::ShapeRef.new(shape: MFAOptionType)

    MFAOptionType.add_member(:delivery_medium, Shapes::ShapeRef.new(shape: DeliveryMediumType, location_name: "DeliveryMedium"))
    MFAOptionType.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeNameType, location_name: "AttributeName"))
    MFAOptionType.struct_class = Types::MFAOptionType

    ManagedLoginBrandingExistsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    ManagedLoginBrandingExistsException.struct_class = Types::ManagedLoginBrandingExistsException

    ManagedLoginBrandingType.add_member(:managed_login_branding_id, Shapes::ShapeRef.new(shape: ManagedLoginBrandingIdType, location_name: "ManagedLoginBrandingId"))
    ManagedLoginBrandingType.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    ManagedLoginBrandingType.add_member(:use_cognito_provided_values, Shapes::ShapeRef.new(shape: BooleanType, location_name: "UseCognitoProvidedValues"))
    ManagedLoginBrandingType.add_member(:settings, Shapes::ShapeRef.new(shape: Document, location_name: "Settings"))
    ManagedLoginBrandingType.add_member(:assets, Shapes::ShapeRef.new(shape: AssetListType, location_name: "Assets"))
    ManagedLoginBrandingType.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    ManagedLoginBrandingType.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "LastModifiedDate"))
    ManagedLoginBrandingType.struct_class = Types::ManagedLoginBrandingType

    MessageTemplateType.add_member(:sms_message, Shapes::ShapeRef.new(shape: SmsInviteMessageType, location_name: "SMSMessage"))
    MessageTemplateType.add_member(:email_message, Shapes::ShapeRef.new(shape: EmailInviteMessageType, location_name: "EmailMessage"))
    MessageTemplateType.add_member(:email_subject, Shapes::ShapeRef.new(shape: EmailVerificationSubjectType, location_name: "EmailSubject"))
    MessageTemplateType.struct_class = Types::MessageTemplateType

    NewDeviceMetadataType.add_member(:device_key, Shapes::ShapeRef.new(shape: DeviceKeyType, location_name: "DeviceKey"))
    NewDeviceMetadataType.add_member(:device_group_key, Shapes::ShapeRef.new(shape: StringType, location_name: "DeviceGroupKey"))
    NewDeviceMetadataType.struct_class = Types::NewDeviceMetadataType

    NotAuthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    NotAuthorizedException.struct_class = Types::NotAuthorizedException

    NotifyConfigurationType.add_member(:from, Shapes::ShapeRef.new(shape: StringType, location_name: "From"))
    NotifyConfigurationType.add_member(:reply_to, Shapes::ShapeRef.new(shape: StringType, location_name: "ReplyTo"))
    NotifyConfigurationType.add_member(:source_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "SourceArn"))
    NotifyConfigurationType.add_member(:block_email, Shapes::ShapeRef.new(shape: NotifyEmailType, location_name: "BlockEmail"))
    NotifyConfigurationType.add_member(:no_action_email, Shapes::ShapeRef.new(shape: NotifyEmailType, location_name: "NoActionEmail"))
    NotifyConfigurationType.add_member(:mfa_email, Shapes::ShapeRef.new(shape: NotifyEmailType, location_name: "MfaEmail"))
    NotifyConfigurationType.struct_class = Types::NotifyConfigurationType

    NotifyEmailType.add_member(:subject, Shapes::ShapeRef.new(shape: EmailNotificationSubjectType, required: true, location_name: "Subject"))
    NotifyEmailType.add_member(:html_body, Shapes::ShapeRef.new(shape: EmailNotificationBodyType, location_name: "HtmlBody"))
    NotifyEmailType.add_member(:text_body, Shapes::ShapeRef.new(shape: EmailNotificationBodyType, location_name: "TextBody"))
    NotifyEmailType.struct_class = Types::NotifyEmailType

    NumberAttributeConstraintsType.add_member(:min_value, Shapes::ShapeRef.new(shape: StringType, location_name: "MinValue"))
    NumberAttributeConstraintsType.add_member(:max_value, Shapes::ShapeRef.new(shape: StringType, location_name: "MaxValue"))
    NumberAttributeConstraintsType.struct_class = Types::NumberAttributeConstraintsType

    OAuthFlowsType.member = Shapes::ShapeRef.new(shape: OAuthFlowType)

    PasswordHistoryPolicyViolationException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    PasswordHistoryPolicyViolationException.struct_class = Types::PasswordHistoryPolicyViolationException

    PasswordPolicyType.add_member(:minimum_length, Shapes::ShapeRef.new(shape: PasswordPolicyMinLengthType, location_name: "MinimumLength"))
    PasswordPolicyType.add_member(:require_uppercase, Shapes::ShapeRef.new(shape: BooleanType, location_name: "RequireUppercase"))
    PasswordPolicyType.add_member(:require_lowercase, Shapes::ShapeRef.new(shape: BooleanType, location_name: "RequireLowercase"))
    PasswordPolicyType.add_member(:require_numbers, Shapes::ShapeRef.new(shape: BooleanType, location_name: "RequireNumbers"))
    PasswordPolicyType.add_member(:require_symbols, Shapes::ShapeRef.new(shape: BooleanType, location_name: "RequireSymbols"))
    PasswordPolicyType.add_member(:password_history_size, Shapes::ShapeRef.new(shape: PasswordHistorySizeType, location_name: "PasswordHistorySize"))
    PasswordPolicyType.add_member(:temporary_password_validity_days, Shapes::ShapeRef.new(shape: TemporaryPasswordValidityDaysType, location_name: "TemporaryPasswordValidityDays"))
    PasswordPolicyType.struct_class = Types::PasswordPolicyType

    PasswordResetRequiredException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    PasswordResetRequiredException.struct_class = Types::PasswordResetRequiredException

    PreTokenGenerationVersionConfigType.add_member(:lambda_version, Shapes::ShapeRef.new(shape: PreTokenGenerationLambdaVersionType, required: true, location_name: "LambdaVersion"))
    PreTokenGenerationVersionConfigType.add_member(:lambda_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "LambdaArn"))
    PreTokenGenerationVersionConfigType.struct_class = Types::PreTokenGenerationVersionConfigType

    PreconditionNotMetException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    PreconditionNotMetException.struct_class = Types::PreconditionNotMetException

    ProviderDescription.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderNameType, location_name: "ProviderName"))
    ProviderDescription.add_member(:provider_type, Shapes::ShapeRef.new(shape: IdentityProviderTypeType, location_name: "ProviderType"))
    ProviderDescription.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "LastModifiedDate"))
    ProviderDescription.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    ProviderDescription.struct_class = Types::ProviderDescription

    ProviderDetailsType.key = Shapes::ShapeRef.new(shape: StringType)
    ProviderDetailsType.value = Shapes::ShapeRef.new(shape: StringType)

    ProviderUserIdentifierType.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderNameType, location_name: "ProviderName"))
    ProviderUserIdentifierType.add_member(:provider_attribute_name, Shapes::ShapeRef.new(shape: StringType, location_name: "ProviderAttributeName"))
    ProviderUserIdentifierType.add_member(:provider_attribute_value, Shapes::ShapeRef.new(shape: StringType, location_name: "ProviderAttributeValue"))
    ProviderUserIdentifierType.struct_class = Types::ProviderUserIdentifierType

    ProvidersListType.member = Shapes::ShapeRef.new(shape: ProviderDescription)

    RecoveryMechanismsType.member = Shapes::ShapeRef.new(shape: RecoveryOptionType)

    RecoveryOptionType.add_member(:priority, Shapes::ShapeRef.new(shape: PriorityType, required: true, location_name: "Priority"))
    RecoveryOptionType.add_member(:name, Shapes::ShapeRef.new(shape: RecoveryOptionNameType, required: true, location_name: "Name"))
    RecoveryOptionType.struct_class = Types::RecoveryOptionType

    RefreshTokenReuseException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    RefreshTokenReuseException.struct_class = Types::RefreshTokenReuseException

    RefreshTokenRotationType.add_member(:feature, Shapes::ShapeRef.new(shape: FeatureType, required: true, location_name: "Feature"))
    RefreshTokenRotationType.add_member(:retry_grace_period_seconds, Shapes::ShapeRef.new(shape: RetryGracePeriodSecondsType, location_name: "RetryGracePeriodSeconds"))
    RefreshTokenRotationType.struct_class = Types::RefreshTokenRotationType

    ResendConfirmationCodeRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    ResendConfirmationCodeRequest.add_member(:secret_hash, Shapes::ShapeRef.new(shape: SecretHashType, location_name: "SecretHash"))
    ResendConfirmationCodeRequest.add_member(:user_context_data, Shapes::ShapeRef.new(shape: UserContextDataType, location_name: "UserContextData"))
    ResendConfirmationCodeRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    ResendConfirmationCodeRequest.add_member(:analytics_metadata, Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: "AnalyticsMetadata"))
    ResendConfirmationCodeRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    ResendConfirmationCodeRequest.struct_class = Types::ResendConfirmationCodeRequest

    ResendConfirmationCodeResponse.add_member(:code_delivery_details, Shapes::ShapeRef.new(shape: CodeDeliveryDetailsType, location_name: "CodeDeliveryDetails"))
    ResendConfirmationCodeResponse.struct_class = Types::ResendConfirmationCodeResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceServerScopeListType.member = Shapes::ShapeRef.new(shape: ResourceServerScopeType)

    ResourceServerScopeType.add_member(:scope_name, Shapes::ShapeRef.new(shape: ResourceServerScopeNameType, required: true, location_name: "ScopeName"))
    ResourceServerScopeType.add_member(:scope_description, Shapes::ShapeRef.new(shape: ResourceServerScopeDescriptionType, required: true, location_name: "ScopeDescription"))
    ResourceServerScopeType.struct_class = Types::ResourceServerScopeType

    ResourceServerType.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    ResourceServerType.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceServerIdentifierType, location_name: "Identifier"))
    ResourceServerType.add_member(:name, Shapes::ShapeRef.new(shape: ResourceServerNameType, location_name: "Name"))
    ResourceServerType.add_member(:scopes, Shapes::ShapeRef.new(shape: ResourceServerScopeListType, location_name: "Scopes"))
    ResourceServerType.struct_class = Types::ResourceServerType

    ResourceServersListType.member = Shapes::ShapeRef.new(shape: ResourceServerType)

    RespondToAuthChallengeRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    RespondToAuthChallengeRequest.add_member(:challenge_name, Shapes::ShapeRef.new(shape: ChallengeNameType, required: true, location_name: "ChallengeName"))
    RespondToAuthChallengeRequest.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    RespondToAuthChallengeRequest.add_member(:challenge_responses, Shapes::ShapeRef.new(shape: ChallengeResponsesType, location_name: "ChallengeResponses"))
    RespondToAuthChallengeRequest.add_member(:analytics_metadata, Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: "AnalyticsMetadata"))
    RespondToAuthChallengeRequest.add_member(:user_context_data, Shapes::ShapeRef.new(shape: UserContextDataType, location_name: "UserContextData"))
    RespondToAuthChallengeRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    RespondToAuthChallengeRequest.struct_class = Types::RespondToAuthChallengeRequest

    RespondToAuthChallengeResponse.add_member(:challenge_name, Shapes::ShapeRef.new(shape: ChallengeNameType, location_name: "ChallengeName"))
    RespondToAuthChallengeResponse.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    RespondToAuthChallengeResponse.add_member(:challenge_parameters, Shapes::ShapeRef.new(shape: ChallengeParametersType, location_name: "ChallengeParameters"))
    RespondToAuthChallengeResponse.add_member(:authentication_result, Shapes::ShapeRef.new(shape: AuthenticationResultType, location_name: "AuthenticationResult"))
    RespondToAuthChallengeResponse.struct_class = Types::RespondToAuthChallengeResponse

    RevokeTokenRequest.add_member(:token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "Token"))
    RevokeTokenRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    RevokeTokenRequest.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, location_name: "ClientSecret"))
    RevokeTokenRequest.struct_class = Types::RevokeTokenRequest

    RevokeTokenResponse.struct_class = Types::RevokeTokenResponse

    RiskConfigurationType.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    RiskConfigurationType.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "ClientId"))
    RiskConfigurationType.add_member(:compromised_credentials_risk_configuration, Shapes::ShapeRef.new(shape: CompromisedCredentialsRiskConfigurationType, location_name: "CompromisedCredentialsRiskConfiguration"))
    RiskConfigurationType.add_member(:account_takeover_risk_configuration, Shapes::ShapeRef.new(shape: AccountTakeoverRiskConfigurationType, location_name: "AccountTakeoverRiskConfiguration"))
    RiskConfigurationType.add_member(:risk_exception_configuration, Shapes::ShapeRef.new(shape: RiskExceptionConfigurationType, location_name: "RiskExceptionConfiguration"))
    RiskConfigurationType.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "LastModifiedDate"))
    RiskConfigurationType.struct_class = Types::RiskConfigurationType

    RiskExceptionConfigurationType.add_member(:blocked_ip_range_list, Shapes::ShapeRef.new(shape: BlockedIPRangeListType, location_name: "BlockedIPRangeList"))
    RiskExceptionConfigurationType.add_member(:skipped_ip_range_list, Shapes::ShapeRef.new(shape: SkippedIPRangeListType, location_name: "SkippedIPRangeList"))
    RiskExceptionConfigurationType.struct_class = Types::RiskExceptionConfigurationType

    S3ConfigurationType.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: S3ArnType, location_name: "BucketArn"))
    S3ConfigurationType.struct_class = Types::S3ConfigurationType

    SMSMfaSettingsType.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanType, location_name: "Enabled"))
    SMSMfaSettingsType.add_member(:preferred_mfa, Shapes::ShapeRef.new(shape: BooleanType, location_name: "PreferredMfa"))
    SMSMfaSettingsType.struct_class = Types::SMSMfaSettingsType

    SchemaAttributeType.add_member(:name, Shapes::ShapeRef.new(shape: CustomAttributeNameType, location_name: "Name"))
    SchemaAttributeType.add_member(:attribute_data_type, Shapes::ShapeRef.new(shape: AttributeDataType, location_name: "AttributeDataType"))
    SchemaAttributeType.add_member(:developer_only_attribute, Shapes::ShapeRef.new(shape: BooleanType, location_name: "DeveloperOnlyAttribute", metadata: {"box" => true}))
    SchemaAttributeType.add_member(:mutable, Shapes::ShapeRef.new(shape: BooleanType, location_name: "Mutable", metadata: {"box" => true}))
    SchemaAttributeType.add_member(:required, Shapes::ShapeRef.new(shape: BooleanType, location_name: "Required", metadata: {"box" => true}))
    SchemaAttributeType.add_member(:number_attribute_constraints, Shapes::ShapeRef.new(shape: NumberAttributeConstraintsType, location_name: "NumberAttributeConstraints"))
    SchemaAttributeType.add_member(:string_attribute_constraints, Shapes::ShapeRef.new(shape: StringAttributeConstraintsType, location_name: "StringAttributeConstraints"))
    SchemaAttributeType.struct_class = Types::SchemaAttributeType

    SchemaAttributesListType.member = Shapes::ShapeRef.new(shape: SchemaAttributeType)

    ScopeDoesNotExistException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    ScopeDoesNotExistException.struct_class = Types::ScopeDoesNotExistException

    ScopeListType.member = Shapes::ShapeRef.new(shape: ScopeType)

    SearchedAttributeNamesListType.member = Shapes::ShapeRef.new(shape: AttributeNameType)

    SetLogDeliveryConfigurationRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    SetLogDeliveryConfigurationRequest.add_member(:log_configurations, Shapes::ShapeRef.new(shape: LogConfigurationListType, required: true, location_name: "LogConfigurations"))
    SetLogDeliveryConfigurationRequest.struct_class = Types::SetLogDeliveryConfigurationRequest

    SetLogDeliveryConfigurationResponse.add_member(:log_delivery_configuration, Shapes::ShapeRef.new(shape: LogDeliveryConfigurationType, location_name: "LogDeliveryConfiguration"))
    SetLogDeliveryConfigurationResponse.struct_class = Types::SetLogDeliveryConfigurationResponse

    SetRiskConfigurationRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    SetRiskConfigurationRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "ClientId"))
    SetRiskConfigurationRequest.add_member(:compromised_credentials_risk_configuration, Shapes::ShapeRef.new(shape: CompromisedCredentialsRiskConfigurationType, location_name: "CompromisedCredentialsRiskConfiguration"))
    SetRiskConfigurationRequest.add_member(:account_takeover_risk_configuration, Shapes::ShapeRef.new(shape: AccountTakeoverRiskConfigurationType, location_name: "AccountTakeoverRiskConfiguration"))
    SetRiskConfigurationRequest.add_member(:risk_exception_configuration, Shapes::ShapeRef.new(shape: RiskExceptionConfigurationType, location_name: "RiskExceptionConfiguration"))
    SetRiskConfigurationRequest.struct_class = Types::SetRiskConfigurationRequest

    SetRiskConfigurationResponse.add_member(:risk_configuration, Shapes::ShapeRef.new(shape: RiskConfigurationType, required: true, location_name: "RiskConfiguration"))
    SetRiskConfigurationResponse.struct_class = Types::SetRiskConfigurationResponse

    SetUICustomizationRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    SetUICustomizationRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "ClientId"))
    SetUICustomizationRequest.add_member(:css, Shapes::ShapeRef.new(shape: CSSType, location_name: "CSS"))
    SetUICustomizationRequest.add_member(:image_file, Shapes::ShapeRef.new(shape: ImageFileType, location_name: "ImageFile"))
    SetUICustomizationRequest.struct_class = Types::SetUICustomizationRequest

    SetUICustomizationResponse.add_member(:ui_customization, Shapes::ShapeRef.new(shape: UICustomizationType, required: true, location_name: "UICustomization"))
    SetUICustomizationResponse.struct_class = Types::SetUICustomizationResponse

    SetUserMFAPreferenceRequest.add_member(:sms_mfa_settings, Shapes::ShapeRef.new(shape: SMSMfaSettingsType, location_name: "SMSMfaSettings"))
    SetUserMFAPreferenceRequest.add_member(:software_token_mfa_settings, Shapes::ShapeRef.new(shape: SoftwareTokenMfaSettingsType, location_name: "SoftwareTokenMfaSettings"))
    SetUserMFAPreferenceRequest.add_member(:email_mfa_settings, Shapes::ShapeRef.new(shape: EmailMfaSettingsType, location_name: "EmailMfaSettings"))
    SetUserMFAPreferenceRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    SetUserMFAPreferenceRequest.struct_class = Types::SetUserMFAPreferenceRequest

    SetUserMFAPreferenceResponse.struct_class = Types::SetUserMFAPreferenceResponse

    SetUserPoolMfaConfigRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    SetUserPoolMfaConfigRequest.add_member(:sms_mfa_configuration, Shapes::ShapeRef.new(shape: SmsMfaConfigType, location_name: "SmsMfaConfiguration"))
    SetUserPoolMfaConfigRequest.add_member(:software_token_mfa_configuration, Shapes::ShapeRef.new(shape: SoftwareTokenMfaConfigType, location_name: "SoftwareTokenMfaConfiguration"))
    SetUserPoolMfaConfigRequest.add_member(:email_mfa_configuration, Shapes::ShapeRef.new(shape: EmailMfaConfigType, location_name: "EmailMfaConfiguration"))
    SetUserPoolMfaConfigRequest.add_member(:mfa_configuration, Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: "MfaConfiguration"))
    SetUserPoolMfaConfigRequest.add_member(:web_authn_configuration, Shapes::ShapeRef.new(shape: WebAuthnConfigurationType, location_name: "WebAuthnConfiguration"))
    SetUserPoolMfaConfigRequest.struct_class = Types::SetUserPoolMfaConfigRequest

    SetUserPoolMfaConfigResponse.add_member(:sms_mfa_configuration, Shapes::ShapeRef.new(shape: SmsMfaConfigType, location_name: "SmsMfaConfiguration"))
    SetUserPoolMfaConfigResponse.add_member(:software_token_mfa_configuration, Shapes::ShapeRef.new(shape: SoftwareTokenMfaConfigType, location_name: "SoftwareTokenMfaConfiguration"))
    SetUserPoolMfaConfigResponse.add_member(:email_mfa_configuration, Shapes::ShapeRef.new(shape: EmailMfaConfigType, location_name: "EmailMfaConfiguration"))
    SetUserPoolMfaConfigResponse.add_member(:mfa_configuration, Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: "MfaConfiguration"))
    SetUserPoolMfaConfigResponse.add_member(:web_authn_configuration, Shapes::ShapeRef.new(shape: WebAuthnConfigurationType, location_name: "WebAuthnConfiguration"))
    SetUserPoolMfaConfigResponse.struct_class = Types::SetUserPoolMfaConfigResponse

    SetUserSettingsRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    SetUserSettingsRequest.add_member(:mfa_options, Shapes::ShapeRef.new(shape: MFAOptionListType, required: true, location_name: "MFAOptions"))
    SetUserSettingsRequest.struct_class = Types::SetUserSettingsRequest

    SetUserSettingsResponse.struct_class = Types::SetUserSettingsResponse

    SignInPolicyType.add_member(:allowed_first_auth_factors, Shapes::ShapeRef.new(shape: AllowedFirstAuthFactorsListType, location_name: "AllowedFirstAuthFactors"))
    SignInPolicyType.struct_class = Types::SignInPolicyType

    SignUpRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    SignUpRequest.add_member(:secret_hash, Shapes::ShapeRef.new(shape: SecretHashType, location_name: "SecretHash"))
    SignUpRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    SignUpRequest.add_member(:password, Shapes::ShapeRef.new(shape: PasswordType, location_name: "Password"))
    SignUpRequest.add_member(:user_attributes, Shapes::ShapeRef.new(shape: AttributeListType, location_name: "UserAttributes"))
    SignUpRequest.add_member(:validation_data, Shapes::ShapeRef.new(shape: AttributeListType, location_name: "ValidationData"))
    SignUpRequest.add_member(:analytics_metadata, Shapes::ShapeRef.new(shape: AnalyticsMetadataType, location_name: "AnalyticsMetadata"))
    SignUpRequest.add_member(:user_context_data, Shapes::ShapeRef.new(shape: UserContextDataType, location_name: "UserContextData"))
    SignUpRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    SignUpRequest.struct_class = Types::SignUpRequest

    SignUpResponse.add_member(:user_confirmed, Shapes::ShapeRef.new(shape: BooleanType, required: true, location_name: "UserConfirmed"))
    SignUpResponse.add_member(:code_delivery_details, Shapes::ShapeRef.new(shape: CodeDeliveryDetailsType, location_name: "CodeDeliveryDetails"))
    SignUpResponse.add_member(:user_sub, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "UserSub"))
    SignUpResponse.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    SignUpResponse.struct_class = Types::SignUpResponse

    SkippedIPRangeListType.member = Shapes::ShapeRef.new(shape: StringType)

    SmsConfigurationType.add_member(:sns_caller_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "SnsCallerArn"))
    SmsConfigurationType.add_member(:external_id, Shapes::ShapeRef.new(shape: StringType, location_name: "ExternalId"))
    SmsConfigurationType.add_member(:sns_region, Shapes::ShapeRef.new(shape: RegionCodeType, location_name: "SnsRegion"))
    SmsConfigurationType.struct_class = Types::SmsConfigurationType

    SmsMfaConfigType.add_member(:sms_authentication_message, Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: "SmsAuthenticationMessage"))
    SmsMfaConfigType.add_member(:sms_configuration, Shapes::ShapeRef.new(shape: SmsConfigurationType, location_name: "SmsConfiguration"))
    SmsMfaConfigType.struct_class = Types::SmsMfaConfigType

    SoftwareTokenMFANotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    SoftwareTokenMFANotFoundException.struct_class = Types::SoftwareTokenMFANotFoundException

    SoftwareTokenMfaConfigType.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanType, location_name: "Enabled"))
    SoftwareTokenMfaConfigType.struct_class = Types::SoftwareTokenMfaConfigType

    SoftwareTokenMfaSettingsType.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanType, location_name: "Enabled"))
    SoftwareTokenMfaSettingsType.add_member(:preferred_mfa, Shapes::ShapeRef.new(shape: BooleanType, location_name: "PreferredMfa"))
    SoftwareTokenMfaSettingsType.struct_class = Types::SoftwareTokenMfaSettingsType

    StartUserImportJobRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    StartUserImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: UserImportJobIdType, required: true, location_name: "JobId"))
    StartUserImportJobRequest.struct_class = Types::StartUserImportJobRequest

    StartUserImportJobResponse.add_member(:user_import_job, Shapes::ShapeRef.new(shape: UserImportJobType, location_name: "UserImportJob"))
    StartUserImportJobResponse.struct_class = Types::StartUserImportJobResponse

    StartWebAuthnRegistrationRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    StartWebAuthnRegistrationRequest.struct_class = Types::StartWebAuthnRegistrationRequest

    StartWebAuthnRegistrationResponse.add_member(:credential_creation_options, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "CredentialCreationOptions"))
    StartWebAuthnRegistrationResponse.struct_class = Types::StartWebAuthnRegistrationResponse

    StopUserImportJobRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    StopUserImportJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: UserImportJobIdType, required: true, location_name: "JobId"))
    StopUserImportJobRequest.struct_class = Types::StopUserImportJobRequest

    StopUserImportJobResponse.add_member(:user_import_job, Shapes::ShapeRef.new(shape: UserImportJobType, location_name: "UserImportJob"))
    StopUserImportJobResponse.struct_class = Types::StopUserImportJobResponse

    StringAttributeConstraintsType.add_member(:min_length, Shapes::ShapeRef.new(shape: StringType, location_name: "MinLength"))
    StringAttributeConstraintsType.add_member(:max_length, Shapes::ShapeRef.new(shape: StringType, location_name: "MaxLength"))
    StringAttributeConstraintsType.struct_class = Types::StringAttributeConstraintsType

    SupportedIdentityProvidersListType.member = Shapes::ShapeRef.new(shape: ProviderNameType)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: UserPoolTagsType, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TierChangeNotAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    TierChangeNotAllowedException.struct_class = Types::TierChangeNotAllowedException

    TokenValidityUnitsType.add_member(:access_token, Shapes::ShapeRef.new(shape: TimeUnitsType, location_name: "AccessToken"))
    TokenValidityUnitsType.add_member(:id_token, Shapes::ShapeRef.new(shape: TimeUnitsType, location_name: "IdToken"))
    TokenValidityUnitsType.add_member(:refresh_token, Shapes::ShapeRef.new(shape: TimeUnitsType, location_name: "RefreshToken"))
    TokenValidityUnitsType.struct_class = Types::TokenValidityUnitsType

    TooManyFailedAttemptsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    TooManyFailedAttemptsException.struct_class = Types::TooManyFailedAttemptsException

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UICustomizationType.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    UICustomizationType.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "ClientId"))
    UICustomizationType.add_member(:image_url, Shapes::ShapeRef.new(shape: ImageUrlType, location_name: "ImageUrl"))
    UICustomizationType.add_member(:css, Shapes::ShapeRef.new(shape: CSSType, location_name: "CSS"))
    UICustomizationType.add_member(:css_version, Shapes::ShapeRef.new(shape: CSSVersionType, location_name: "CSSVersion"))
    UICustomizationType.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "LastModifiedDate"))
    UICustomizationType.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    UICustomizationType.struct_class = Types::UICustomizationType

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UnexpectedLambdaException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UnexpectedLambdaException.struct_class = Types::UnexpectedLambdaException

    UnsupportedIdentityProviderException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UnsupportedIdentityProviderException.struct_class = Types::UnsupportedIdentityProviderException

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UnsupportedTokenTypeException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UnsupportedTokenTypeException.struct_class = Types::UnsupportedTokenTypeException

    UnsupportedUserStateException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UnsupportedUserStateException.struct_class = Types::UnsupportedUserStateException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ArnType, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: UserPoolTagsListType, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAuthEventFeedbackRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    UpdateAuthEventFeedbackRequest.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, required: true, location_name: "Username"))
    UpdateAuthEventFeedbackRequest.add_member(:event_id, Shapes::ShapeRef.new(shape: EventIdType, required: true, location_name: "EventId"))
    UpdateAuthEventFeedbackRequest.add_member(:feedback_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "FeedbackToken"))
    UpdateAuthEventFeedbackRequest.add_member(:feedback_value, Shapes::ShapeRef.new(shape: FeedbackValueType, required: true, location_name: "FeedbackValue"))
    UpdateAuthEventFeedbackRequest.struct_class = Types::UpdateAuthEventFeedbackRequest

    UpdateAuthEventFeedbackResponse.struct_class = Types::UpdateAuthEventFeedbackResponse

    UpdateDeviceStatusRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    UpdateDeviceStatusRequest.add_member(:device_key, Shapes::ShapeRef.new(shape: DeviceKeyType, required: true, location_name: "DeviceKey"))
    UpdateDeviceStatusRequest.add_member(:device_remembered_status, Shapes::ShapeRef.new(shape: DeviceRememberedStatusType, location_name: "DeviceRememberedStatus"))
    UpdateDeviceStatusRequest.struct_class = Types::UpdateDeviceStatusRequest

    UpdateDeviceStatusResponse.struct_class = Types::UpdateDeviceStatusResponse

    UpdateGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupNameType, required: true, location_name: "GroupName"))
    UpdateGroupRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    UpdateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionType, location_name: "Description"))
    UpdateGroupRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "RoleArn"))
    UpdateGroupRequest.add_member(:precedence, Shapes::ShapeRef.new(shape: PrecedenceType, location_name: "Precedence"))
    UpdateGroupRequest.struct_class = Types::UpdateGroupRequest

    UpdateGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: GroupType, location_name: "Group"))
    UpdateGroupResponse.struct_class = Types::UpdateGroupResponse

    UpdateIdentityProviderRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    UpdateIdentityProviderRequest.add_member(:provider_name, Shapes::ShapeRef.new(shape: ProviderNameType, required: true, location_name: "ProviderName"))
    UpdateIdentityProviderRequest.add_member(:provider_details, Shapes::ShapeRef.new(shape: ProviderDetailsType, location_name: "ProviderDetails"))
    UpdateIdentityProviderRequest.add_member(:attribute_mapping, Shapes::ShapeRef.new(shape: AttributeMappingType, location_name: "AttributeMapping"))
    UpdateIdentityProviderRequest.add_member(:idp_identifiers, Shapes::ShapeRef.new(shape: IdpIdentifiersListType, location_name: "IdpIdentifiers"))
    UpdateIdentityProviderRequest.struct_class = Types::UpdateIdentityProviderRequest

    UpdateIdentityProviderResponse.add_member(:identity_provider, Shapes::ShapeRef.new(shape: IdentityProviderType, required: true, location_name: "IdentityProvider"))
    UpdateIdentityProviderResponse.struct_class = Types::UpdateIdentityProviderResponse

    UpdateManagedLoginBrandingRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    UpdateManagedLoginBrandingRequest.add_member(:managed_login_branding_id, Shapes::ShapeRef.new(shape: ManagedLoginBrandingIdType, location_name: "ManagedLoginBrandingId"))
    UpdateManagedLoginBrandingRequest.add_member(:use_cognito_provided_values, Shapes::ShapeRef.new(shape: BooleanType, location_name: "UseCognitoProvidedValues"))
    UpdateManagedLoginBrandingRequest.add_member(:settings, Shapes::ShapeRef.new(shape: Document, location_name: "Settings"))
    UpdateManagedLoginBrandingRequest.add_member(:assets, Shapes::ShapeRef.new(shape: AssetListType, location_name: "Assets"))
    UpdateManagedLoginBrandingRequest.struct_class = Types::UpdateManagedLoginBrandingRequest

    UpdateManagedLoginBrandingResponse.add_member(:managed_login_branding, Shapes::ShapeRef.new(shape: ManagedLoginBrandingType, location_name: "ManagedLoginBranding"))
    UpdateManagedLoginBrandingResponse.struct_class = Types::UpdateManagedLoginBrandingResponse

    UpdateResourceServerRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    UpdateResourceServerRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceServerIdentifierType, required: true, location_name: "Identifier"))
    UpdateResourceServerRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceServerNameType, required: true, location_name: "Name"))
    UpdateResourceServerRequest.add_member(:scopes, Shapes::ShapeRef.new(shape: ResourceServerScopeListType, location_name: "Scopes"))
    UpdateResourceServerRequest.struct_class = Types::UpdateResourceServerRequest

    UpdateResourceServerResponse.add_member(:resource_server, Shapes::ShapeRef.new(shape: ResourceServerType, required: true, location_name: "ResourceServer"))
    UpdateResourceServerResponse.struct_class = Types::UpdateResourceServerResponse

    UpdateUserAttributesRequest.add_member(:user_attributes, Shapes::ShapeRef.new(shape: AttributeListType, required: true, location_name: "UserAttributes"))
    UpdateUserAttributesRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    UpdateUserAttributesRequest.add_member(:client_metadata, Shapes::ShapeRef.new(shape: ClientMetadataType, location_name: "ClientMetadata"))
    UpdateUserAttributesRequest.struct_class = Types::UpdateUserAttributesRequest

    UpdateUserAttributesResponse.add_member(:code_delivery_details_list, Shapes::ShapeRef.new(shape: CodeDeliveryDetailsListType, location_name: "CodeDeliveryDetailsList"))
    UpdateUserAttributesResponse.struct_class = Types::UpdateUserAttributesResponse

    UpdateUserPoolClientRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    UpdateUserPoolClientRequest.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, required: true, location_name: "ClientId"))
    UpdateUserPoolClientRequest.add_member(:client_name, Shapes::ShapeRef.new(shape: ClientNameType, location_name: "ClientName"))
    UpdateUserPoolClientRequest.add_member(:refresh_token_validity, Shapes::ShapeRef.new(shape: RefreshTokenValidityType, location_name: "RefreshTokenValidity"))
    UpdateUserPoolClientRequest.add_member(:access_token_validity, Shapes::ShapeRef.new(shape: AccessTokenValidityType, location_name: "AccessTokenValidity"))
    UpdateUserPoolClientRequest.add_member(:id_token_validity, Shapes::ShapeRef.new(shape: IdTokenValidityType, location_name: "IdTokenValidity"))
    UpdateUserPoolClientRequest.add_member(:token_validity_units, Shapes::ShapeRef.new(shape: TokenValidityUnitsType, location_name: "TokenValidityUnits"))
    UpdateUserPoolClientRequest.add_member(:read_attributes, Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: "ReadAttributes"))
    UpdateUserPoolClientRequest.add_member(:write_attributes, Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: "WriteAttributes"))
    UpdateUserPoolClientRequest.add_member(:explicit_auth_flows, Shapes::ShapeRef.new(shape: ExplicitAuthFlowsListType, location_name: "ExplicitAuthFlows"))
    UpdateUserPoolClientRequest.add_member(:supported_identity_providers, Shapes::ShapeRef.new(shape: SupportedIdentityProvidersListType, location_name: "SupportedIdentityProviders"))
    UpdateUserPoolClientRequest.add_member(:callback_urls, Shapes::ShapeRef.new(shape: CallbackURLsListType, location_name: "CallbackURLs"))
    UpdateUserPoolClientRequest.add_member(:logout_urls, Shapes::ShapeRef.new(shape: LogoutURLsListType, location_name: "LogoutURLs"))
    UpdateUserPoolClientRequest.add_member(:default_redirect_uri, Shapes::ShapeRef.new(shape: RedirectUrlType, location_name: "DefaultRedirectURI"))
    UpdateUserPoolClientRequest.add_member(:allowed_o_auth_flows, Shapes::ShapeRef.new(shape: OAuthFlowsType, location_name: "AllowedOAuthFlows"))
    UpdateUserPoolClientRequest.add_member(:allowed_o_auth_scopes, Shapes::ShapeRef.new(shape: ScopeListType, location_name: "AllowedOAuthScopes"))
    UpdateUserPoolClientRequest.add_member(:allowed_o_auth_flows_user_pool_client, Shapes::ShapeRef.new(shape: BooleanType, location_name: "AllowedOAuthFlowsUserPoolClient"))
    UpdateUserPoolClientRequest.add_member(:analytics_configuration, Shapes::ShapeRef.new(shape: AnalyticsConfigurationType, location_name: "AnalyticsConfiguration"))
    UpdateUserPoolClientRequest.add_member(:prevent_user_existence_errors, Shapes::ShapeRef.new(shape: PreventUserExistenceErrorTypes, location_name: "PreventUserExistenceErrors"))
    UpdateUserPoolClientRequest.add_member(:enable_token_revocation, Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: "EnableTokenRevocation"))
    UpdateUserPoolClientRequest.add_member(:enable_propagate_additional_user_context_data, Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: "EnablePropagateAdditionalUserContextData"))
    UpdateUserPoolClientRequest.add_member(:auth_session_validity, Shapes::ShapeRef.new(shape: AuthSessionValidityType, location_name: "AuthSessionValidity"))
    UpdateUserPoolClientRequest.add_member(:refresh_token_rotation, Shapes::ShapeRef.new(shape: RefreshTokenRotationType, location_name: "RefreshTokenRotation"))
    UpdateUserPoolClientRequest.struct_class = Types::UpdateUserPoolClientRequest

    UpdateUserPoolClientResponse.add_member(:user_pool_client, Shapes::ShapeRef.new(shape: UserPoolClientType, location_name: "UserPoolClient"))
    UpdateUserPoolClientResponse.struct_class = Types::UpdateUserPoolClientResponse

    UpdateUserPoolDomainRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainType, required: true, location_name: "Domain"))
    UpdateUserPoolDomainRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    UpdateUserPoolDomainRequest.add_member(:managed_login_version, Shapes::ShapeRef.new(shape: WrappedIntegerType, location_name: "ManagedLoginVersion"))
    UpdateUserPoolDomainRequest.add_member(:custom_domain_config, Shapes::ShapeRef.new(shape: CustomDomainConfigType, location_name: "CustomDomainConfig"))
    UpdateUserPoolDomainRequest.struct_class = Types::UpdateUserPoolDomainRequest

    UpdateUserPoolDomainResponse.add_member(:managed_login_version, Shapes::ShapeRef.new(shape: WrappedIntegerType, location_name: "ManagedLoginVersion"))
    UpdateUserPoolDomainResponse.add_member(:cloud_front_domain, Shapes::ShapeRef.new(shape: DomainType, location_name: "CloudFrontDomain"))
    UpdateUserPoolDomainResponse.struct_class = Types::UpdateUserPoolDomainResponse

    UpdateUserPoolRequest.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, required: true, location_name: "UserPoolId"))
    UpdateUserPoolRequest.add_member(:policies, Shapes::ShapeRef.new(shape: UserPoolPolicyType, location_name: "Policies"))
    UpdateUserPoolRequest.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtectionType, location_name: "DeletionProtection"))
    UpdateUserPoolRequest.add_member(:lambda_config, Shapes::ShapeRef.new(shape: LambdaConfigType, location_name: "LambdaConfig"))
    UpdateUserPoolRequest.add_member(:auto_verified_attributes, Shapes::ShapeRef.new(shape: VerifiedAttributesListType, location_name: "AutoVerifiedAttributes"))
    UpdateUserPoolRequest.add_member(:sms_verification_message, Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: "SmsVerificationMessage"))
    UpdateUserPoolRequest.add_member(:email_verification_message, Shapes::ShapeRef.new(shape: EmailVerificationMessageType, location_name: "EmailVerificationMessage"))
    UpdateUserPoolRequest.add_member(:email_verification_subject, Shapes::ShapeRef.new(shape: EmailVerificationSubjectType, location_name: "EmailVerificationSubject"))
    UpdateUserPoolRequest.add_member(:verification_message_template, Shapes::ShapeRef.new(shape: VerificationMessageTemplateType, location_name: "VerificationMessageTemplate"))
    UpdateUserPoolRequest.add_member(:sms_authentication_message, Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: "SmsAuthenticationMessage"))
    UpdateUserPoolRequest.add_member(:user_attribute_update_settings, Shapes::ShapeRef.new(shape: UserAttributeUpdateSettingsType, location_name: "UserAttributeUpdateSettings"))
    UpdateUserPoolRequest.add_member(:mfa_configuration, Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: "MfaConfiguration"))
    UpdateUserPoolRequest.add_member(:device_configuration, Shapes::ShapeRef.new(shape: DeviceConfigurationType, location_name: "DeviceConfiguration"))
    UpdateUserPoolRequest.add_member(:email_configuration, Shapes::ShapeRef.new(shape: EmailConfigurationType, location_name: "EmailConfiguration"))
    UpdateUserPoolRequest.add_member(:sms_configuration, Shapes::ShapeRef.new(shape: SmsConfigurationType, location_name: "SmsConfiguration"))
    UpdateUserPoolRequest.add_member(:user_pool_tags, Shapes::ShapeRef.new(shape: UserPoolTagsType, location_name: "UserPoolTags"))
    UpdateUserPoolRequest.add_member(:admin_create_user_config, Shapes::ShapeRef.new(shape: AdminCreateUserConfigType, location_name: "AdminCreateUserConfig"))
    UpdateUserPoolRequest.add_member(:user_pool_add_ons, Shapes::ShapeRef.new(shape: UserPoolAddOnsType, location_name: "UserPoolAddOns"))
    UpdateUserPoolRequest.add_member(:account_recovery_setting, Shapes::ShapeRef.new(shape: AccountRecoverySettingType, location_name: "AccountRecoverySetting"))
    UpdateUserPoolRequest.add_member(:pool_name, Shapes::ShapeRef.new(shape: UserPoolNameType, location_name: "PoolName"))
    UpdateUserPoolRequest.add_member(:user_pool_tier, Shapes::ShapeRef.new(shape: UserPoolTierType, location_name: "UserPoolTier"))
    UpdateUserPoolRequest.struct_class = Types::UpdateUserPoolRequest

    UpdateUserPoolResponse.struct_class = Types::UpdateUserPoolResponse

    UserAttributeUpdateSettingsType.add_member(:attributes_require_verification_before_update, Shapes::ShapeRef.new(shape: AttributesRequireVerificationBeforeUpdateType, location_name: "AttributesRequireVerificationBeforeUpdate"))
    UserAttributeUpdateSettingsType.struct_class = Types::UserAttributeUpdateSettingsType

    UserContextDataType.add_member(:ip_address, Shapes::ShapeRef.new(shape: StringType, location_name: "IpAddress"))
    UserContextDataType.add_member(:encoded_data, Shapes::ShapeRef.new(shape: StringType, location_name: "EncodedData"))
    UserContextDataType.struct_class = Types::UserContextDataType

    UserImportInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UserImportInProgressException.struct_class = Types::UserImportInProgressException

    UserImportJobType.add_member(:job_name, Shapes::ShapeRef.new(shape: UserImportJobNameType, location_name: "JobName"))
    UserImportJobType.add_member(:job_id, Shapes::ShapeRef.new(shape: UserImportJobIdType, location_name: "JobId"))
    UserImportJobType.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    UserImportJobType.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: PreSignedUrlType, location_name: "PreSignedUrl"))
    UserImportJobType.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    UserImportJobType.add_member(:start_date, Shapes::ShapeRef.new(shape: DateType, location_name: "StartDate"))
    UserImportJobType.add_member(:completion_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CompletionDate"))
    UserImportJobType.add_member(:status, Shapes::ShapeRef.new(shape: UserImportJobStatusType, location_name: "Status"))
    UserImportJobType.add_member(:cloud_watch_logs_role_arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "CloudWatchLogsRoleArn"))
    UserImportJobType.add_member(:imported_users, Shapes::ShapeRef.new(shape: LongType, location_name: "ImportedUsers"))
    UserImportJobType.add_member(:skipped_users, Shapes::ShapeRef.new(shape: LongType, location_name: "SkippedUsers"))
    UserImportJobType.add_member(:failed_users, Shapes::ShapeRef.new(shape: LongType, location_name: "FailedUsers"))
    UserImportJobType.add_member(:completion_message, Shapes::ShapeRef.new(shape: CompletionMessageType, location_name: "CompletionMessage"))
    UserImportJobType.struct_class = Types::UserImportJobType

    UserImportJobsListType.member = Shapes::ShapeRef.new(shape: UserImportJobType)

    UserLambdaValidationException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UserLambdaValidationException.struct_class = Types::UserLambdaValidationException

    UserMFASettingListType.member = Shapes::ShapeRef.new(shape: StringType)

    UserNotConfirmedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UserNotConfirmedException.struct_class = Types::UserNotConfirmedException

    UserNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UserNotFoundException.struct_class = Types::UserNotFoundException

    UserPoolAddOnNotEnabledException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UserPoolAddOnNotEnabledException.struct_class = Types::UserPoolAddOnNotEnabledException

    UserPoolAddOnsType.add_member(:advanced_security_mode, Shapes::ShapeRef.new(shape: AdvancedSecurityModeType, required: true, location_name: "AdvancedSecurityMode"))
    UserPoolAddOnsType.add_member(:advanced_security_additional_flows, Shapes::ShapeRef.new(shape: AdvancedSecurityAdditionalFlowsType, location_name: "AdvancedSecurityAdditionalFlows"))
    UserPoolAddOnsType.struct_class = Types::UserPoolAddOnsType

    UserPoolClientDescription.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "ClientId"))
    UserPoolClientDescription.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    UserPoolClientDescription.add_member(:client_name, Shapes::ShapeRef.new(shape: ClientNameType, location_name: "ClientName"))
    UserPoolClientDescription.struct_class = Types::UserPoolClientDescription

    UserPoolClientListType.member = Shapes::ShapeRef.new(shape: UserPoolClientDescription)

    UserPoolClientType.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "UserPoolId"))
    UserPoolClientType.add_member(:client_name, Shapes::ShapeRef.new(shape: ClientNameType, location_name: "ClientName"))
    UserPoolClientType.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientIdType, location_name: "ClientId"))
    UserPoolClientType.add_member(:client_secret, Shapes::ShapeRef.new(shape: ClientSecretType, location_name: "ClientSecret"))
    UserPoolClientType.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "LastModifiedDate"))
    UserPoolClientType.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    UserPoolClientType.add_member(:refresh_token_validity, Shapes::ShapeRef.new(shape: RefreshTokenValidityType, location_name: "RefreshTokenValidity"))
    UserPoolClientType.add_member(:access_token_validity, Shapes::ShapeRef.new(shape: AccessTokenValidityType, location_name: "AccessTokenValidity"))
    UserPoolClientType.add_member(:id_token_validity, Shapes::ShapeRef.new(shape: IdTokenValidityType, location_name: "IdTokenValidity"))
    UserPoolClientType.add_member(:token_validity_units, Shapes::ShapeRef.new(shape: TokenValidityUnitsType, location_name: "TokenValidityUnits"))
    UserPoolClientType.add_member(:read_attributes, Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: "ReadAttributes"))
    UserPoolClientType.add_member(:write_attributes, Shapes::ShapeRef.new(shape: ClientPermissionListType, location_name: "WriteAttributes"))
    UserPoolClientType.add_member(:explicit_auth_flows, Shapes::ShapeRef.new(shape: ExplicitAuthFlowsListType, location_name: "ExplicitAuthFlows"))
    UserPoolClientType.add_member(:supported_identity_providers, Shapes::ShapeRef.new(shape: SupportedIdentityProvidersListType, location_name: "SupportedIdentityProviders"))
    UserPoolClientType.add_member(:callback_urls, Shapes::ShapeRef.new(shape: CallbackURLsListType, location_name: "CallbackURLs"))
    UserPoolClientType.add_member(:logout_urls, Shapes::ShapeRef.new(shape: LogoutURLsListType, location_name: "LogoutURLs"))
    UserPoolClientType.add_member(:default_redirect_uri, Shapes::ShapeRef.new(shape: RedirectUrlType, location_name: "DefaultRedirectURI"))
    UserPoolClientType.add_member(:allowed_o_auth_flows, Shapes::ShapeRef.new(shape: OAuthFlowsType, location_name: "AllowedOAuthFlows"))
    UserPoolClientType.add_member(:allowed_o_auth_scopes, Shapes::ShapeRef.new(shape: ScopeListType, location_name: "AllowedOAuthScopes"))
    UserPoolClientType.add_member(:allowed_o_auth_flows_user_pool_client, Shapes::ShapeRef.new(shape: BooleanType, location_name: "AllowedOAuthFlowsUserPoolClient", metadata: {"box" => true}))
    UserPoolClientType.add_member(:analytics_configuration, Shapes::ShapeRef.new(shape: AnalyticsConfigurationType, location_name: "AnalyticsConfiguration"))
    UserPoolClientType.add_member(:prevent_user_existence_errors, Shapes::ShapeRef.new(shape: PreventUserExistenceErrorTypes, location_name: "PreventUserExistenceErrors"))
    UserPoolClientType.add_member(:enable_token_revocation, Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: "EnableTokenRevocation"))
    UserPoolClientType.add_member(:enable_propagate_additional_user_context_data, Shapes::ShapeRef.new(shape: WrappedBooleanType, location_name: "EnablePropagateAdditionalUserContextData"))
    UserPoolClientType.add_member(:auth_session_validity, Shapes::ShapeRef.new(shape: AuthSessionValidityType, location_name: "AuthSessionValidity"))
    UserPoolClientType.add_member(:refresh_token_rotation, Shapes::ShapeRef.new(shape: RefreshTokenRotationType, location_name: "RefreshTokenRotation"))
    UserPoolClientType.struct_class = Types::UserPoolClientType

    UserPoolDescriptionType.add_member(:id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "Id"))
    UserPoolDescriptionType.add_member(:name, Shapes::ShapeRef.new(shape: UserPoolNameType, location_name: "Name"))
    UserPoolDescriptionType.add_member(:lambda_config, Shapes::ShapeRef.new(shape: LambdaConfigType, location_name: "LambdaConfig"))
    UserPoolDescriptionType.add_member(:status, Shapes::ShapeRef.new(shape: StatusType, deprecated: true, location_name: "Status", metadata: {"deprecatedMessage" => "This property is no longer available."}))
    UserPoolDescriptionType.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "LastModifiedDate"))
    UserPoolDescriptionType.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    UserPoolDescriptionType.struct_class = Types::UserPoolDescriptionType

    UserPoolListType.member = Shapes::ShapeRef.new(shape: UserPoolDescriptionType)

    UserPoolPolicyType.add_member(:password_policy, Shapes::ShapeRef.new(shape: PasswordPolicyType, location_name: "PasswordPolicy"))
    UserPoolPolicyType.add_member(:sign_in_policy, Shapes::ShapeRef.new(shape: SignInPolicyType, location_name: "SignInPolicy"))
    UserPoolPolicyType.struct_class = Types::UserPoolPolicyType

    UserPoolTaggingException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UserPoolTaggingException.struct_class = Types::UserPoolTaggingException

    UserPoolTagsListType.member = Shapes::ShapeRef.new(shape: TagKeysType)

    UserPoolTagsType.key = Shapes::ShapeRef.new(shape: TagKeysType)
    UserPoolTagsType.value = Shapes::ShapeRef.new(shape: TagValueType)

    UserPoolType.add_member(:id, Shapes::ShapeRef.new(shape: UserPoolIdType, location_name: "Id"))
    UserPoolType.add_member(:name, Shapes::ShapeRef.new(shape: UserPoolNameType, location_name: "Name"))
    UserPoolType.add_member(:policies, Shapes::ShapeRef.new(shape: UserPoolPolicyType, location_name: "Policies"))
    UserPoolType.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: DeletionProtectionType, location_name: "DeletionProtection"))
    UserPoolType.add_member(:lambda_config, Shapes::ShapeRef.new(shape: LambdaConfigType, location_name: "LambdaConfig"))
    UserPoolType.add_member(:status, Shapes::ShapeRef.new(shape: StatusType, deprecated: true, location_name: "Status", metadata: {"deprecatedMessage" => "This property is no longer available."}))
    UserPoolType.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "LastModifiedDate"))
    UserPoolType.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateType, location_name: "CreationDate"))
    UserPoolType.add_member(:schema_attributes, Shapes::ShapeRef.new(shape: SchemaAttributesListType, location_name: "SchemaAttributes"))
    UserPoolType.add_member(:auto_verified_attributes, Shapes::ShapeRef.new(shape: VerifiedAttributesListType, location_name: "AutoVerifiedAttributes"))
    UserPoolType.add_member(:alias_attributes, Shapes::ShapeRef.new(shape: AliasAttributesListType, location_name: "AliasAttributes"))
    UserPoolType.add_member(:username_attributes, Shapes::ShapeRef.new(shape: UsernameAttributesListType, location_name: "UsernameAttributes"))
    UserPoolType.add_member(:sms_verification_message, Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: "SmsVerificationMessage"))
    UserPoolType.add_member(:email_verification_message, Shapes::ShapeRef.new(shape: EmailVerificationMessageType, location_name: "EmailVerificationMessage"))
    UserPoolType.add_member(:email_verification_subject, Shapes::ShapeRef.new(shape: EmailVerificationSubjectType, location_name: "EmailVerificationSubject"))
    UserPoolType.add_member(:verification_message_template, Shapes::ShapeRef.new(shape: VerificationMessageTemplateType, location_name: "VerificationMessageTemplate"))
    UserPoolType.add_member(:sms_authentication_message, Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: "SmsAuthenticationMessage"))
    UserPoolType.add_member(:user_attribute_update_settings, Shapes::ShapeRef.new(shape: UserAttributeUpdateSettingsType, location_name: "UserAttributeUpdateSettings"))
    UserPoolType.add_member(:mfa_configuration, Shapes::ShapeRef.new(shape: UserPoolMfaType, location_name: "MfaConfiguration"))
    UserPoolType.add_member(:device_configuration, Shapes::ShapeRef.new(shape: DeviceConfigurationType, location_name: "DeviceConfiguration"))
    UserPoolType.add_member(:estimated_number_of_users, Shapes::ShapeRef.new(shape: IntegerType, location_name: "EstimatedNumberOfUsers"))
    UserPoolType.add_member(:email_configuration, Shapes::ShapeRef.new(shape: EmailConfigurationType, location_name: "EmailConfiguration"))
    UserPoolType.add_member(:sms_configuration, Shapes::ShapeRef.new(shape: SmsConfigurationType, location_name: "SmsConfiguration"))
    UserPoolType.add_member(:user_pool_tags, Shapes::ShapeRef.new(shape: UserPoolTagsType, location_name: "UserPoolTags"))
    UserPoolType.add_member(:sms_configuration_failure, Shapes::ShapeRef.new(shape: StringType, location_name: "SmsConfigurationFailure"))
    UserPoolType.add_member(:email_configuration_failure, Shapes::ShapeRef.new(shape: StringType, location_name: "EmailConfigurationFailure"))
    UserPoolType.add_member(:domain, Shapes::ShapeRef.new(shape: DomainType, location_name: "Domain"))
    UserPoolType.add_member(:custom_domain, Shapes::ShapeRef.new(shape: DomainType, location_name: "CustomDomain"))
    UserPoolType.add_member(:admin_create_user_config, Shapes::ShapeRef.new(shape: AdminCreateUserConfigType, location_name: "AdminCreateUserConfig"))
    UserPoolType.add_member(:user_pool_add_ons, Shapes::ShapeRef.new(shape: UserPoolAddOnsType, location_name: "UserPoolAddOns"))
    UserPoolType.add_member(:username_configuration, Shapes::ShapeRef.new(shape: UsernameConfigurationType, location_name: "UsernameConfiguration"))
    UserPoolType.add_member(:arn, Shapes::ShapeRef.new(shape: ArnType, location_name: "Arn"))
    UserPoolType.add_member(:account_recovery_setting, Shapes::ShapeRef.new(shape: AccountRecoverySettingType, location_name: "AccountRecoverySetting"))
    UserPoolType.add_member(:user_pool_tier, Shapes::ShapeRef.new(shape: UserPoolTierType, location_name: "UserPoolTier"))
    UserPoolType.struct_class = Types::UserPoolType

    UserType.add_member(:username, Shapes::ShapeRef.new(shape: UsernameType, location_name: "Username"))
    UserType.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeListType, location_name: "Attributes"))
    UserType.add_member(:user_create_date, Shapes::ShapeRef.new(shape: DateType, location_name: "UserCreateDate"))
    UserType.add_member(:user_last_modified_date, Shapes::ShapeRef.new(shape: DateType, location_name: "UserLastModifiedDate"))
    UserType.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanType, location_name: "Enabled"))
    UserType.add_member(:user_status, Shapes::ShapeRef.new(shape: UserStatusType, location_name: "UserStatus"))
    UserType.add_member(:mfa_options, Shapes::ShapeRef.new(shape: MFAOptionListType, location_name: "MFAOptions"))
    UserType.struct_class = Types::UserType

    UsernameAttributesListType.member = Shapes::ShapeRef.new(shape: UsernameAttributeType)

    UsernameConfigurationType.add_member(:case_sensitive, Shapes::ShapeRef.new(shape: WrappedBooleanType, required: true, location_name: "CaseSensitive"))
    UsernameConfigurationType.struct_class = Types::UsernameConfigurationType

    UsernameExistsException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    UsernameExistsException.struct_class = Types::UsernameExistsException

    UsersListType.member = Shapes::ShapeRef.new(shape: UserType)

    VerificationMessageTemplateType.add_member(:sms_message, Shapes::ShapeRef.new(shape: SmsVerificationMessageType, location_name: "SmsMessage"))
    VerificationMessageTemplateType.add_member(:email_message, Shapes::ShapeRef.new(shape: EmailVerificationMessageType, location_name: "EmailMessage"))
    VerificationMessageTemplateType.add_member(:email_subject, Shapes::ShapeRef.new(shape: EmailVerificationSubjectType, location_name: "EmailSubject"))
    VerificationMessageTemplateType.add_member(:email_message_by_link, Shapes::ShapeRef.new(shape: EmailVerificationMessageByLinkType, location_name: "EmailMessageByLink"))
    VerificationMessageTemplateType.add_member(:email_subject_by_link, Shapes::ShapeRef.new(shape: EmailVerificationSubjectByLinkType, location_name: "EmailSubjectByLink"))
    VerificationMessageTemplateType.add_member(:default_email_option, Shapes::ShapeRef.new(shape: DefaultEmailOptionType, location_name: "DefaultEmailOption"))
    VerificationMessageTemplateType.struct_class = Types::VerificationMessageTemplateType

    VerifiedAttributesListType.member = Shapes::ShapeRef.new(shape: VerifiedAttributeType)

    VerifySoftwareTokenRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, location_name: "AccessToken"))
    VerifySoftwareTokenRequest.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    VerifySoftwareTokenRequest.add_member(:user_code, Shapes::ShapeRef.new(shape: SoftwareTokenMFAUserCodeType, required: true, location_name: "UserCode"))
    VerifySoftwareTokenRequest.add_member(:friendly_device_name, Shapes::ShapeRef.new(shape: StringType, location_name: "FriendlyDeviceName"))
    VerifySoftwareTokenRequest.struct_class = Types::VerifySoftwareTokenRequest

    VerifySoftwareTokenResponse.add_member(:status, Shapes::ShapeRef.new(shape: VerifySoftwareTokenResponseType, location_name: "Status"))
    VerifySoftwareTokenResponse.add_member(:session, Shapes::ShapeRef.new(shape: SessionType, location_name: "Session"))
    VerifySoftwareTokenResponse.struct_class = Types::VerifySoftwareTokenResponse

    VerifyUserAttributeRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: TokenModelType, required: true, location_name: "AccessToken"))
    VerifyUserAttributeRequest.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeNameType, required: true, location_name: "AttributeName"))
    VerifyUserAttributeRequest.add_member(:code, Shapes::ShapeRef.new(shape: ConfirmationCodeType, required: true, location_name: "Code"))
    VerifyUserAttributeRequest.struct_class = Types::VerifyUserAttributeRequest

    VerifyUserAttributeResponse.struct_class = Types::VerifyUserAttributeResponse

    WebAuthnAuthenticatorTransportsList.member = Shapes::ShapeRef.new(shape: WebAuthnAuthenticatorTransportType)

    WebAuthnChallengeNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    WebAuthnChallengeNotFoundException.struct_class = Types::WebAuthnChallengeNotFoundException

    WebAuthnClientMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    WebAuthnClientMismatchException.struct_class = Types::WebAuthnClientMismatchException

    WebAuthnConfigurationMissingException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    WebAuthnConfigurationMissingException.struct_class = Types::WebAuthnConfigurationMissingException

    WebAuthnConfigurationType.add_member(:relying_party_id, Shapes::ShapeRef.new(shape: RelyingPartyIdType, location_name: "RelyingPartyId"))
    WebAuthnConfigurationType.add_member(:user_verification, Shapes::ShapeRef.new(shape: UserVerificationType, location_name: "UserVerification"))
    WebAuthnConfigurationType.struct_class = Types::WebAuthnConfigurationType

    WebAuthnCredentialDescription.add_member(:credential_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "CredentialId"))
    WebAuthnCredentialDescription.add_member(:friendly_credential_name, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "FriendlyCredentialName"))
    WebAuthnCredentialDescription.add_member(:relying_party_id, Shapes::ShapeRef.new(shape: StringType, required: true, location_name: "RelyingPartyId"))
    WebAuthnCredentialDescription.add_member(:authenticator_attachment, Shapes::ShapeRef.new(shape: WebAuthnAuthenticatorAttachmentType, location_name: "AuthenticatorAttachment"))
    WebAuthnCredentialDescription.add_member(:authenticator_transports, Shapes::ShapeRef.new(shape: WebAuthnAuthenticatorTransportsList, required: true, location_name: "AuthenticatorTransports"))
    WebAuthnCredentialDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: DateType, required: true, location_name: "CreatedAt"))
    WebAuthnCredentialDescription.struct_class = Types::WebAuthnCredentialDescription

    WebAuthnCredentialDescriptionListType.member = Shapes::ShapeRef.new(shape: WebAuthnCredentialDescription)

    WebAuthnCredentialNotSupportedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    WebAuthnCredentialNotSupportedException.struct_class = Types::WebAuthnCredentialNotSupportedException

    WebAuthnNotEnabledException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    WebAuthnNotEnabledException.struct_class = Types::WebAuthnNotEnabledException

    WebAuthnOriginNotAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    WebAuthnOriginNotAllowedException.struct_class = Types::WebAuthnOriginNotAllowedException

    WebAuthnRelyingPartyMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: MessageType, location_name: "message"))
    WebAuthnRelyingPartyMismatchException.struct_class = Types::WebAuthnRelyingPartyMismatchException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-04-18"

      api.metadata = {
        "apiVersion" => "2016-04-18",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "cognito-idp",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Amazon Cognito Identity Provider",
        "serviceId" => "Cognito Identity Provider",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSCognitoIdentityProviderService",
        "uid" => "cognito-idp-2016-04-18",
      }

      api.add_operation(:add_custom_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddCustomAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddCustomAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: AddCustomAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserImportInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_add_user_to_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminAddUserToGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminAddUserToGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_confirm_sign_up, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminConfirmSignUp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminConfirmSignUpRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminConfirmSignUpResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFailedAttemptsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminCreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminCreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminCreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UsernameExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserStateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminDeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminDeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_delete_user_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminDeleteUserAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminDeleteUserAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminDeleteUserAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_disable_provider_for_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminDisableProviderForUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminDisableProviderForUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminDisableProviderForUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AliasExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_disable_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminDisableUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminDisableUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminDisableUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_enable_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminEnableUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminEnableUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminEnableUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_forget_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminForgetDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminForgetDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_get_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminGetDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminGetDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminGetDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:admin_get_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminGetUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminGetUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminGetUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_initiate_auth, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminInitiateAuth"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminInitiateAuthRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminInitiateAuthResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: MFAMethodNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
      end)

      api.add_operation(:admin_link_provider_for_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminLinkProviderForUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminLinkProviderForUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminLinkProviderForUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AliasExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_list_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminListDevices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminListDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminListDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:admin_list_groups_for_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminListGroupsForUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminListGroupsForUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminListGroupsForUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:admin_list_user_auth_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminListUserAuthEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminListUserAuthEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminListUserAuthEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserPoolAddOnNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:admin_remove_user_from_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminRemoveUserFromGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminRemoveUserFromGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_reset_user_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminResetUserPassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminResetUserPasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminResetUserPasswordResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_respond_to_auth_challenge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminRespondToAuthChallenge"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminRespondToAuthChallengeRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminRespondToAuthChallengeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: CodeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredCodeException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordHistoryPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: MFAMethodNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: AliasExistsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: SoftwareTokenMFANotFoundException)
      end)

      api.add_operation(:admin_set_user_mfa_preference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminSetUserMFAPreference"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminSetUserMFAPreferenceRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminSetUserMFAPreferenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_set_user_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminSetUserPassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminSetUserPasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminSetUserPasswordResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordHistoryPolicyViolationException)
      end)

      api.add_operation(:admin_set_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminSetUserSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminSetUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminSetUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_update_auth_event_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminUpdateAuthEventFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminUpdateAuthEventFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminUpdateAuthEventFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserPoolAddOnNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_update_device_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminUpdateDeviceStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminUpdateDeviceStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminUpdateDeviceStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:admin_update_user_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminUpdateUserAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminUpdateUserAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminUpdateUserAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: AliasExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
      end)

      api.add_operation(:admin_user_global_sign_out, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdminUserGlobalSignOut"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdminUserGlobalSignOutRequest)
        o.output = Shapes::ShapeRef.new(shape: AdminUserGlobalSignOutResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:associate_software_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSoftwareToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: AssociateSoftwareTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSoftwareTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: SoftwareTokenMFANotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:change_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChangePassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: ChangePasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: ChangePasswordResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordHistoryPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:complete_web_authn_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompleteWebAuthnRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: CompleteWebAuthnRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: CompleteWebAuthnRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: WebAuthnNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: WebAuthnChallengeNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: WebAuthnRelyingPartyMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: WebAuthnClientMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: WebAuthnOriginNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: WebAuthnCredentialNotSupportedException)
      end)

      api.add_operation(:confirm_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfirmDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: ConfirmDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfirmDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: UsernameExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: DeviceKeyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:confirm_forgot_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfirmForgotPassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: ConfirmForgotPasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfirmForgotPasswordResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordHistoryPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: CodeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredCodeException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFailedAttemptsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:confirm_sign_up, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConfirmSignUp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: ConfirmSignUpRequest)
        o.output = Shapes::ShapeRef.new(shape: ConfirmSignUpResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyFailedAttemptsException)
        o.errors << Shapes::ShapeRef.new(shape: CodeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredCodeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: AliasExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: GroupExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:create_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIdentityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIdentityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateProviderException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:create_managed_login_branding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateManagedLoginBranding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateManagedLoginBrandingRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateManagedLoginBrandingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ManagedLoginBrandingExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:create_resource_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceServerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:create_user_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:create_user_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserPoolResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserPoolTaggingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TierChangeNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
      end)

      api.add_operation(:create_user_pool_client, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserPoolClient"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserPoolClientRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserPoolClientResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ScopeDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOAuthFlowException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
      end)

      api.add_operation(:create_user_pool_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserPoolDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserPoolDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserPoolDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIdentityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedIdentityProviderException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_managed_login_branding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteManagedLoginBranding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteManagedLoginBrandingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_resource_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourceServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceServerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_user_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: DeleteUserAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_user_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserImportInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_user_pool_client, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserPoolClient"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserPoolClientRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_user_pool_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserPoolDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserPoolDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserPoolDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:delete_web_authn_credential, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWebAuthnCredential"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: DeleteWebAuthnCredentialRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWebAuthnCredentialResponse)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIdentityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIdentityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_managed_login_branding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeManagedLoginBranding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeManagedLoginBrandingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeManagedLoginBrandingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_managed_login_branding_by_client, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeManagedLoginBrandingByClient"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeManagedLoginBrandingByClientRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeManagedLoginBrandingByClientResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_resource_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourceServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourceServerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourceServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_risk_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRiskConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRiskConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRiskConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserPoolAddOnNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_user_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUserImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_user_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUserPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserPoolResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserPoolTaggingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_user_pool_client, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUserPoolClient"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserPoolClientRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserPoolClientResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:describe_user_pool_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUserPoolDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserPoolDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserPoolDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:forget_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ForgetDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: ForgetDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:forgot_password, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ForgotPassword"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: ForgotPasswordRequest)
        o.output = Shapes::ShapeRef.new(shape: ForgotPasswordResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_csv_header, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCSVHeader"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCSVHeaderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCSVHeaderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevice"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: GetDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_identity_provider_by_identifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdentityProviderByIdentifier"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetIdentityProviderByIdentifierRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIdentityProviderByIdentifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_log_delivery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLogDeliveryConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLogDeliveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLogDeliveryConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_signing_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSigningCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSigningCertificateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSigningCertificateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_tokens_from_refresh_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTokensFromRefreshToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTokensFromRefreshTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTokensFromRefreshTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: RefreshTokenReuseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_ui_customization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUICustomization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUICustomizationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUICustomizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:get_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUser"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: GetUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_user_attribute_verification_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserAttributeVerificationCode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: GetUserAttributeVerificationCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserAttributeVerificationCodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_user_auth_factors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserAuthFactors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: GetUserAuthFactorsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserAuthFactorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_user_pool_mfa_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserPoolMfaConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUserPoolMfaConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserPoolMfaConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:global_sign_out, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GlobalSignOut"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: GlobalSignOutRequest)
        o.output = Shapes::ShapeRef.new(shape: GlobalSignOutResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:initiate_auth, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InitiateAuth"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: InitiateAuthRequest)
        o.output = Shapes::ShapeRef.new(shape: InitiateAuthResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:list_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: ListDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:list_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_identity_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdentityProviders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListIdentityProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIdentityProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceServers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceServersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceServersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_user_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserImportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUserImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:list_user_pool_clients, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserPoolClients"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUserPoolClientsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserPoolClientsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_user_pools, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserPools"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUserPoolsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserPoolsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "pagination_token" => "pagination_token"
          }
        )
      end)

      api.add_operation(:list_users_in_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsersInGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUsersInGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersInGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_web_authn_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebAuthnCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: ListWebAuthnCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWebAuthnCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:resend_confirmation_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResendConfirmationCode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: ResendConfirmationCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: ResendConfirmationCodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:respond_to_auth_challenge, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RespondToAuthChallenge"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: RespondToAuthChallengeRequest)
        o.output = Shapes::ShapeRef.new(shape: RespondToAuthChallengeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: CodeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredCodeException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordHistoryPolicyViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: MFAMethodNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: AliasExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: SoftwareTokenMFANotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:revoke_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: RevokeTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedTokenTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:set_log_delivery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetLogDeliveryConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetLogDeliveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: SetLogDeliveryConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
      end)

      api.add_operation(:set_risk_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetRiskConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetRiskConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: SetRiskConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserPoolAddOnNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:set_ui_customization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetUICustomization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetUICustomizationRequest)
        o.output = Shapes::ShapeRef.new(shape: SetUICustomizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:set_user_mfa_preference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetUserMFAPreference"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: SetUserMFAPreferenceRequest)
        o.output = Shapes::ShapeRef.new(shape: SetUserMFAPreferenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:set_user_pool_mfa_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetUserPoolMfaConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetUserPoolMfaConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: SetUserPoolMfaConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
      end)

      api.add_operation(:set_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetUserSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: SetUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: SetUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:sign_up, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SignUp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: SignUpRequest)
        o.output = Shapes::ShapeRef.new(shape: SignUpResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPasswordException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: UsernameExistsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:start_user_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartUserImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartUserImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartUserImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:start_web_authn_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartWebAuthnRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: StartWebAuthnRegistrationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartWebAuthnRegistrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: WebAuthnNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: WebAuthnConfigurationMissingException)
      end)

      api.add_operation(:stop_user_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopUserImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopUserImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopUserImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:update_auth_event_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAuthEventFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: UpdateAuthEventFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAuthEventFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserPoolAddOnNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:update_device_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDeviceStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: UpdateDeviceStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDeviceStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:update_identity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIdentityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateIdentityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIdentityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedIdentityProviderException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:update_managed_login_branding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateManagedLoginBranding"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateManagedLoginBrandingRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateManagedLoginBrandingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:update_resource_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourceServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceServerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
      end)

      api.add_operation(:update_user_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: UpdateUserAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: CodeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredCodeException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UnexpectedLambdaException)
        o.errors << Shapes::ShapeRef.new(shape: UserLambdaValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLambdaResponseException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AliasExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: CodeDeliveryFailureException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:update_user_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserPoolRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserPoolResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UserImportInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSmsRoleTrustRelationshipException)
        o.errors << Shapes::ShapeRef.new(shape: UserPoolTaggingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailRoleAccessPolicyException)
        o.errors << Shapes::ShapeRef.new(shape: TierChangeNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
      end)

      api.add_operation(:update_user_pool_client, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserPoolClient"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserPoolClientRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserPoolClientResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ScopeDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOAuthFlowException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
      end)

      api.add_operation(:update_user_pool_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserPoolDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserPoolDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserPoolDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: FeatureUnavailableInTierException)
      end)

      api.add_operation(:verify_software_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VerifySoftwareToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: VerifySoftwareTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: VerifySoftwareTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUserPoolConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: EnableSoftwareTokenMFAException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: SoftwareTokenMFANotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CodeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:verify_user_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VerifyUserAttribute"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o['authtype'] = "none"
        o['auth'] = ["smithy.api#noAuth"]
        o.input = Shapes::ShapeRef.new(shape: VerifyUserAttributeRequest)
        o.output = Shapes::ShapeRef.new(shape: VerifyUserAttributeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: CodeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredCodeException)
        o.errors << Shapes::ShapeRef.new(shape: NotAuthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PasswordResetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UserNotConfirmedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AliasExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)
    end

  end
end
