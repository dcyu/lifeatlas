# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Chime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AccountName = Shapes::StringShape.new(name: 'AccountName')
    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    AccountStatus = Shapes::StringShape.new(name: 'AccountStatus')
    AccountType = Shapes::StringShape.new(name: 'AccountType')
    AlexaForBusinessMetadata = Shapes::StructureShape.new(name: 'AlexaForBusinessMetadata')
    Alpha2CountryCode = Shapes::StringShape.new(name: 'Alpha2CountryCode')
    AssociatePhoneNumberWithUserRequest = Shapes::StructureShape.new(name: 'AssociatePhoneNumberWithUserRequest')
    AssociatePhoneNumberWithUserResponse = Shapes::StructureShape.new(name: 'AssociatePhoneNumberWithUserResponse')
    AssociateSigninDelegateGroupsWithAccountRequest = Shapes::StructureShape.new(name: 'AssociateSigninDelegateGroupsWithAccountRequest')
    AssociateSigninDelegateGroupsWithAccountResponse = Shapes::StructureShape.new(name: 'AssociateSigninDelegateGroupsWithAccountResponse')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchCreateRoomMembershipRequest = Shapes::StructureShape.new(name: 'BatchCreateRoomMembershipRequest')
    BatchCreateRoomMembershipResponse = Shapes::StructureShape.new(name: 'BatchCreateRoomMembershipResponse')
    BatchDeletePhoneNumberRequest = Shapes::StructureShape.new(name: 'BatchDeletePhoneNumberRequest')
    BatchDeletePhoneNumberResponse = Shapes::StructureShape.new(name: 'BatchDeletePhoneNumberResponse')
    BatchSuspendUserRequest = Shapes::StructureShape.new(name: 'BatchSuspendUserRequest')
    BatchSuspendUserResponse = Shapes::StructureShape.new(name: 'BatchSuspendUserResponse')
    BatchUnsuspendUserRequest = Shapes::StructureShape.new(name: 'BatchUnsuspendUserRequest')
    BatchUnsuspendUserResponse = Shapes::StructureShape.new(name: 'BatchUnsuspendUserResponse')
    BatchUpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'BatchUpdatePhoneNumberRequest')
    BatchUpdatePhoneNumberResponse = Shapes::StructureShape.new(name: 'BatchUpdatePhoneNumberResponse')
    BatchUpdateUserRequest = Shapes::StructureShape.new(name: 'BatchUpdateUserRequest')
    BatchUpdateUserResponse = Shapes::StructureShape.new(name: 'BatchUpdateUserResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Bot = Shapes::StructureShape.new(name: 'Bot')
    BotList = Shapes::ListShape.new(name: 'BotList')
    BotType = Shapes::StringShape.new(name: 'BotType')
    BusinessCallingSettings = Shapes::StructureShape.new(name: 'BusinessCallingSettings')
    CallingName = Shapes::StringShape.new(name: 'CallingName')
    CallingNameStatus = Shapes::StringShape.new(name: 'CallingNameStatus')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConversationRetentionSettings = Shapes::StructureShape.new(name: 'ConversationRetentionSettings')
    CreateAccountRequest = Shapes::StructureShape.new(name: 'CreateAccountRequest')
    CreateAccountResponse = Shapes::StructureShape.new(name: 'CreateAccountResponse')
    CreateBotRequest = Shapes::StructureShape.new(name: 'CreateBotRequest')
    CreateBotResponse = Shapes::StructureShape.new(name: 'CreateBotResponse')
    CreateMeetingDialOutRequest = Shapes::StructureShape.new(name: 'CreateMeetingDialOutRequest')
    CreateMeetingDialOutResponse = Shapes::StructureShape.new(name: 'CreateMeetingDialOutResponse')
    CreatePhoneNumberOrderRequest = Shapes::StructureShape.new(name: 'CreatePhoneNumberOrderRequest')
    CreatePhoneNumberOrderResponse = Shapes::StructureShape.new(name: 'CreatePhoneNumberOrderResponse')
    CreateRoomMembershipRequest = Shapes::StructureShape.new(name: 'CreateRoomMembershipRequest')
    CreateRoomMembershipResponse = Shapes::StructureShape.new(name: 'CreateRoomMembershipResponse')
    CreateRoomRequest = Shapes::StructureShape.new(name: 'CreateRoomRequest')
    CreateRoomResponse = Shapes::StructureShape.new(name: 'CreateRoomResponse')
    CreateUserRequest = Shapes::StructureShape.new(name: 'CreateUserRequest')
    CreateUserResponse = Shapes::StructureShape.new(name: 'CreateUserResponse')
    DeleteAccountRequest = Shapes::StructureShape.new(name: 'DeleteAccountRequest')
    DeleteAccountResponse = Shapes::StructureShape.new(name: 'DeleteAccountResponse')
    DeleteEventsConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteEventsConfigurationRequest')
    DeletePhoneNumberRequest = Shapes::StructureShape.new(name: 'DeletePhoneNumberRequest')
    DeleteRoomMembershipRequest = Shapes::StructureShape.new(name: 'DeleteRoomMembershipRequest')
    DeleteRoomRequest = Shapes::StructureShape.new(name: 'DeleteRoomRequest')
    DisassociatePhoneNumberFromUserRequest = Shapes::StructureShape.new(name: 'DisassociatePhoneNumberFromUserRequest')
    DisassociatePhoneNumberFromUserResponse = Shapes::StructureShape.new(name: 'DisassociatePhoneNumberFromUserResponse')
    DisassociateSigninDelegateGroupsFromAccountRequest = Shapes::StructureShape.new(name: 'DisassociateSigninDelegateGroupsFromAccountRequest')
    DisassociateSigninDelegateGroupsFromAccountResponse = Shapes::StructureShape.new(name: 'DisassociateSigninDelegateGroupsFromAccountResponse')
    E164PhoneNumber = Shapes::StringShape.new(name: 'E164PhoneNumber')
    E164PhoneNumberList = Shapes::ListShape.new(name: 'E164PhoneNumberList')
    EmailAddress = Shapes::StringShape.new(name: 'EmailAddress')
    EmailStatus = Shapes::StringShape.new(name: 'EmailStatus')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    EventsConfiguration = Shapes::StructureShape.new(name: 'EventsConfiguration')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetAccountRequest = Shapes::StructureShape.new(name: 'GetAccountRequest')
    GetAccountResponse = Shapes::StructureShape.new(name: 'GetAccountResponse')
    GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
    GetAccountSettingsResponse = Shapes::StructureShape.new(name: 'GetAccountSettingsResponse')
    GetBotRequest = Shapes::StructureShape.new(name: 'GetBotRequest')
    GetBotResponse = Shapes::StructureShape.new(name: 'GetBotResponse')
    GetEventsConfigurationRequest = Shapes::StructureShape.new(name: 'GetEventsConfigurationRequest')
    GetEventsConfigurationResponse = Shapes::StructureShape.new(name: 'GetEventsConfigurationResponse')
    GetGlobalSettingsResponse = Shapes::StructureShape.new(name: 'GetGlobalSettingsResponse')
    GetPhoneNumberOrderRequest = Shapes::StructureShape.new(name: 'GetPhoneNumberOrderRequest')
    GetPhoneNumberOrderResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberOrderResponse')
    GetPhoneNumberRequest = Shapes::StructureShape.new(name: 'GetPhoneNumberRequest')
    GetPhoneNumberResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberResponse')
    GetPhoneNumberSettingsResponse = Shapes::StructureShape.new(name: 'GetPhoneNumberSettingsResponse')
    GetRetentionSettingsRequest = Shapes::StructureShape.new(name: 'GetRetentionSettingsRequest')
    GetRetentionSettingsResponse = Shapes::StructureShape.new(name: 'GetRetentionSettingsResponse')
    GetRoomRequest = Shapes::StructureShape.new(name: 'GetRoomRequest')
    GetRoomResponse = Shapes::StructureShape.new(name: 'GetRoomResponse')
    GetUserRequest = Shapes::StructureShape.new(name: 'GetUserRequest')
    GetUserResponse = Shapes::StructureShape.new(name: 'GetUserResponse')
    GetUserSettingsRequest = Shapes::StructureShape.new(name: 'GetUserSettingsRequest')
    GetUserSettingsResponse = Shapes::StructureShape.new(name: 'GetUserSettingsResponse')
    GuidString = Shapes::StringShape.new(name: 'GuidString')
    Invite = Shapes::StructureShape.new(name: 'Invite')
    InviteList = Shapes::ListShape.new(name: 'InviteList')
    InviteStatus = Shapes::StringShape.new(name: 'InviteStatus')
    InviteUsersRequest = Shapes::StructureShape.new(name: 'InviteUsersRequest')
    InviteUsersResponse = Shapes::StructureShape.new(name: 'InviteUsersResponse')
    Iso8601Timestamp = Shapes::TimestampShape.new(name: 'Iso8601Timestamp', timestampFormat: "iso8601")
    JoinTokenString = Shapes::StringShape.new(name: 'JoinTokenString')
    License = Shapes::StringShape.new(name: 'License')
    LicenseList = Shapes::ListShape.new(name: 'LicenseList')
    ListAccountsRequest = Shapes::StructureShape.new(name: 'ListAccountsRequest')
    ListAccountsResponse = Shapes::StructureShape.new(name: 'ListAccountsResponse')
    ListBotsRequest = Shapes::StructureShape.new(name: 'ListBotsRequest')
    ListBotsResponse = Shapes::StructureShape.new(name: 'ListBotsResponse')
    ListPhoneNumberOrdersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumberOrdersRequest')
    ListPhoneNumberOrdersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumberOrdersResponse')
    ListPhoneNumbersRequest = Shapes::StructureShape.new(name: 'ListPhoneNumbersRequest')
    ListPhoneNumbersResponse = Shapes::StructureShape.new(name: 'ListPhoneNumbersResponse')
    ListRoomMembershipsRequest = Shapes::StructureShape.new(name: 'ListRoomMembershipsRequest')
    ListRoomMembershipsResponse = Shapes::StructureShape.new(name: 'ListRoomMembershipsResponse')
    ListRoomsRequest = Shapes::StructureShape.new(name: 'ListRoomsRequest')
    ListRoomsResponse = Shapes::StructureShape.new(name: 'ListRoomsResponse')
    ListSupportedPhoneNumberCountriesRequest = Shapes::StructureShape.new(name: 'ListSupportedPhoneNumberCountriesRequest')
    ListSupportedPhoneNumberCountriesResponse = Shapes::StructureShape.new(name: 'ListSupportedPhoneNumberCountriesResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    LogoutUserRequest = Shapes::StructureShape.new(name: 'LogoutUserRequest')
    LogoutUserResponse = Shapes::StructureShape.new(name: 'LogoutUserResponse')
    Member = Shapes::StructureShape.new(name: 'Member')
    MemberError = Shapes::StructureShape.new(name: 'MemberError')
    MemberErrorList = Shapes::ListShape.new(name: 'MemberErrorList')
    MemberType = Shapes::StringShape.new(name: 'MemberType')
    MembershipItem = Shapes::StructureShape.new(name: 'MembershipItem')
    MembershipItemList = Shapes::ListShape.new(name: 'MembershipItemList')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonEmptyStringList = Shapes::ListShape.new(name: 'NonEmptyStringList')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    OrderedPhoneNumber = Shapes::StructureShape.new(name: 'OrderedPhoneNumber')
    OrderedPhoneNumberList = Shapes::ListShape.new(name: 'OrderedPhoneNumberList')
    OrderedPhoneNumberStatus = Shapes::StringShape.new(name: 'OrderedPhoneNumberStatus')
    PhoneNumber = Shapes::StructureShape.new(name: 'PhoneNumber')
    PhoneNumberAssociation = Shapes::StructureShape.new(name: 'PhoneNumberAssociation')
    PhoneNumberAssociationList = Shapes::ListShape.new(name: 'PhoneNumberAssociationList')
    PhoneNumberAssociationName = Shapes::StringShape.new(name: 'PhoneNumberAssociationName')
    PhoneNumberCapabilities = Shapes::StructureShape.new(name: 'PhoneNumberCapabilities')
    PhoneNumberCountriesList = Shapes::ListShape.new(name: 'PhoneNumberCountriesList')
    PhoneNumberCountry = Shapes::StructureShape.new(name: 'PhoneNumberCountry')
    PhoneNumberError = Shapes::StructureShape.new(name: 'PhoneNumberError')
    PhoneNumberErrorList = Shapes::ListShape.new(name: 'PhoneNumberErrorList')
    PhoneNumberList = Shapes::ListShape.new(name: 'PhoneNumberList')
    PhoneNumberMaxResults = Shapes::IntegerShape.new(name: 'PhoneNumberMaxResults')
    PhoneNumberOrder = Shapes::StructureShape.new(name: 'PhoneNumberOrder')
    PhoneNumberOrderList = Shapes::ListShape.new(name: 'PhoneNumberOrderList')
    PhoneNumberOrderStatus = Shapes::StringShape.new(name: 'PhoneNumberOrderStatus')
    PhoneNumberProductType = Shapes::StringShape.new(name: 'PhoneNumberProductType')
    PhoneNumberStatus = Shapes::StringShape.new(name: 'PhoneNumberStatus')
    PhoneNumberType = Shapes::StringShape.new(name: 'PhoneNumberType')
    PhoneNumberTypeList = Shapes::ListShape.new(name: 'PhoneNumberTypeList')
    ProfileServiceMaxResults = Shapes::IntegerShape.new(name: 'ProfileServiceMaxResults')
    PutEventsConfigurationRequest = Shapes::StructureShape.new(name: 'PutEventsConfigurationRequest')
    PutEventsConfigurationResponse = Shapes::StructureShape.new(name: 'PutEventsConfigurationResponse')
    PutRetentionSettingsRequest = Shapes::StructureShape.new(name: 'PutRetentionSettingsRequest')
    PutRetentionSettingsResponse = Shapes::StructureShape.new(name: 'PutRetentionSettingsResponse')
    RedactConversationMessageRequest = Shapes::StructureShape.new(name: 'RedactConversationMessageRequest')
    RedactConversationMessageResponse = Shapes::StructureShape.new(name: 'RedactConversationMessageResponse')
    RedactRoomMessageRequest = Shapes::StructureShape.new(name: 'RedactRoomMessageRequest')
    RedactRoomMessageResponse = Shapes::StructureShape.new(name: 'RedactRoomMessageResponse')
    RegenerateSecurityTokenRequest = Shapes::StructureShape.new(name: 'RegenerateSecurityTokenRequest')
    RegenerateSecurityTokenResponse = Shapes::StructureShape.new(name: 'RegenerateSecurityTokenResponse')
    RegistrationStatus = Shapes::StringShape.new(name: 'RegistrationStatus')
    ResetPersonalPINRequest = Shapes::StructureShape.new(name: 'ResetPersonalPINRequest')
    ResetPersonalPINResponse = Shapes::StructureShape.new(name: 'ResetPersonalPINResponse')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    RestorePhoneNumberRequest = Shapes::StructureShape.new(name: 'RestorePhoneNumberRequest')
    RestorePhoneNumberResponse = Shapes::StructureShape.new(name: 'RestorePhoneNumberResponse')
    ResultMax = Shapes::IntegerShape.new(name: 'ResultMax')
    RetentionDays = Shapes::IntegerShape.new(name: 'RetentionDays')
    RetentionSettings = Shapes::StructureShape.new(name: 'RetentionSettings')
    Room = Shapes::StructureShape.new(name: 'Room')
    RoomList = Shapes::ListShape.new(name: 'RoomList')
    RoomMembership = Shapes::StructureShape.new(name: 'RoomMembership')
    RoomMembershipList = Shapes::ListShape.new(name: 'RoomMembershipList')
    RoomMembershipRole = Shapes::StringShape.new(name: 'RoomMembershipRole')
    RoomRetentionSettings = Shapes::StructureShape.new(name: 'RoomRetentionSettings')
    SearchAvailablePhoneNumbersRequest = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersRequest')
    SearchAvailablePhoneNumbersResponse = Shapes::StructureShape.new(name: 'SearchAvailablePhoneNumbersResponse')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SigninDelegateGroup = Shapes::StructureShape.new(name: 'SigninDelegateGroup')
    SigninDelegateGroupList = Shapes::ListShape.new(name: 'SigninDelegateGroupList')
    String = Shapes::StringShape.new(name: 'String')
    TelephonySettings = Shapes::StructureShape.new(name: 'TelephonySettings')
    ThrottledClientException = Shapes::StructureShape.new(name: 'ThrottledClientException')
    TollFreePrefix = Shapes::StringShape.new(name: 'TollFreePrefix')
    UnauthorizedClientException = Shapes::StructureShape.new(name: 'UnauthorizedClientException')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UpdateAccountRequest = Shapes::StructureShape.new(name: 'UpdateAccountRequest')
    UpdateAccountResponse = Shapes::StructureShape.new(name: 'UpdateAccountResponse')
    UpdateAccountSettingsRequest = Shapes::StructureShape.new(name: 'UpdateAccountSettingsRequest')
    UpdateAccountSettingsResponse = Shapes::StructureShape.new(name: 'UpdateAccountSettingsResponse')
    UpdateBotRequest = Shapes::StructureShape.new(name: 'UpdateBotRequest')
    UpdateBotResponse = Shapes::StructureShape.new(name: 'UpdateBotResponse')
    UpdateGlobalSettingsRequest = Shapes::StructureShape.new(name: 'UpdateGlobalSettingsRequest')
    UpdatePhoneNumberRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequest')
    UpdatePhoneNumberRequestItem = Shapes::StructureShape.new(name: 'UpdatePhoneNumberRequestItem')
    UpdatePhoneNumberRequestItemList = Shapes::ListShape.new(name: 'UpdatePhoneNumberRequestItemList')
    UpdatePhoneNumberResponse = Shapes::StructureShape.new(name: 'UpdatePhoneNumberResponse')
    UpdatePhoneNumberSettingsRequest = Shapes::StructureShape.new(name: 'UpdatePhoneNumberSettingsRequest')
    UpdateRoomMembershipRequest = Shapes::StructureShape.new(name: 'UpdateRoomMembershipRequest')
    UpdateRoomMembershipResponse = Shapes::StructureShape.new(name: 'UpdateRoomMembershipResponse')
    UpdateRoomRequest = Shapes::StructureShape.new(name: 'UpdateRoomRequest')
    UpdateRoomResponse = Shapes::StructureShape.new(name: 'UpdateRoomResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserRequestItem = Shapes::StructureShape.new(name: 'UpdateUserRequestItem')
    UpdateUserRequestItemList = Shapes::ListShape.new(name: 'UpdateUserRequestItemList')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    UpdateUserSettingsRequest = Shapes::StructureShape.new(name: 'UpdateUserSettingsRequest')
    User = Shapes::StructureShape.new(name: 'User')
    UserEmailList = Shapes::ListShape.new(name: 'UserEmailList')
    UserError = Shapes::StructureShape.new(name: 'UserError')
    UserErrorList = Shapes::ListShape.new(name: 'UserErrorList')
    UserIdList = Shapes::ListShape.new(name: 'UserIdList')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserSettings = Shapes::StructureShape.new(name: 'UserSettings')
    UserType = Shapes::StringShape.new(name: 'UserType')
    VoiceConnectorSettings = Shapes::StructureShape.new(name: 'VoiceConnectorSettings')

    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Account.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AwsAccountId"))
    Account.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountId"))
    Account.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Account.add_member(:account_type, Shapes::ShapeRef.new(shape: AccountType, location_name: "AccountType"))
    Account.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    Account.add_member(:default_license, Shapes::ShapeRef.new(shape: License, location_name: "DefaultLicense"))
    Account.add_member(:supported_licenses, Shapes::ShapeRef.new(shape: LicenseList, location_name: "SupportedLicenses"))
    Account.add_member(:account_status, Shapes::ShapeRef.new(shape: AccountStatus, location_name: "AccountStatus"))
    Account.add_member(:signin_delegate_groups, Shapes::ShapeRef.new(shape: SigninDelegateGroupList, location_name: "SigninDelegateGroups"))
    Account.struct_class = Types::Account

    AccountList.member = Shapes::ShapeRef.new(shape: Account)

    AccountSettings.add_member(:disable_remote_control, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableRemoteControl"))
    AccountSettings.add_member(:enable_dial_out, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableDialOut"))
    AccountSettings.struct_class = Types::AccountSettings

    AlexaForBusinessMetadata.add_member(:is_alexa_for_business_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsAlexaForBusinessEnabled"))
    AlexaForBusinessMetadata.add_member(:alexa_for_business_room_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "AlexaForBusinessRoomArn"))
    AlexaForBusinessMetadata.struct_class = Types::AlexaForBusinessMetadata

    AssociatePhoneNumberWithUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    AssociatePhoneNumberWithUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    AssociatePhoneNumberWithUserRequest.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "E164PhoneNumber"))
    AssociatePhoneNumberWithUserRequest.struct_class = Types::AssociatePhoneNumberWithUserRequest

    AssociatePhoneNumberWithUserResponse.struct_class = Types::AssociatePhoneNumberWithUserResponse

    AssociateSigninDelegateGroupsWithAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    AssociateSigninDelegateGroupsWithAccountRequest.add_member(:signin_delegate_groups, Shapes::ShapeRef.new(shape: SigninDelegateGroupList, required: true, location_name: "SigninDelegateGroups"))
    AssociateSigninDelegateGroupsWithAccountRequest.struct_class = Types::AssociateSigninDelegateGroupsWithAccountRequest

    AssociateSigninDelegateGroupsWithAccountResponse.struct_class = Types::AssociateSigninDelegateGroupsWithAccountResponse

    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    BatchCreateRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchCreateRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    BatchCreateRoomMembershipRequest.add_member(:membership_item_list, Shapes::ShapeRef.new(shape: MembershipItemList, required: true, location_name: "MembershipItemList"))
    BatchCreateRoomMembershipRequest.struct_class = Types::BatchCreateRoomMembershipRequest

    BatchCreateRoomMembershipResponse.add_member(:errors, Shapes::ShapeRef.new(shape: MemberErrorList, location_name: "Errors"))
    BatchCreateRoomMembershipResponse.struct_class = Types::BatchCreateRoomMembershipResponse

    BatchDeletePhoneNumberRequest.add_member(:phone_number_ids, Shapes::ShapeRef.new(shape: NonEmptyStringList, required: true, location_name: "PhoneNumberIds"))
    BatchDeletePhoneNumberRequest.struct_class = Types::BatchDeletePhoneNumberRequest

    BatchDeletePhoneNumberResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    BatchDeletePhoneNumberResponse.struct_class = Types::BatchDeletePhoneNumberResponse

    BatchSuspendUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchSuspendUserRequest.add_member(:user_id_list, Shapes::ShapeRef.new(shape: UserIdList, required: true, location_name: "UserIdList"))
    BatchSuspendUserRequest.struct_class = Types::BatchSuspendUserRequest

    BatchSuspendUserResponse.add_member(:user_errors, Shapes::ShapeRef.new(shape: UserErrorList, location_name: "UserErrors"))
    BatchSuspendUserResponse.struct_class = Types::BatchSuspendUserResponse

    BatchUnsuspendUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchUnsuspendUserRequest.add_member(:user_id_list, Shapes::ShapeRef.new(shape: UserIdList, required: true, location_name: "UserIdList"))
    BatchUnsuspendUserRequest.struct_class = Types::BatchUnsuspendUserRequest

    BatchUnsuspendUserResponse.add_member(:user_errors, Shapes::ShapeRef.new(shape: UserErrorList, location_name: "UserErrors"))
    BatchUnsuspendUserResponse.struct_class = Types::BatchUnsuspendUserResponse

    BatchUpdatePhoneNumberRequest.add_member(:update_phone_number_request_items, Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItemList, required: true, location_name: "UpdatePhoneNumberRequestItems"))
    BatchUpdatePhoneNumberRequest.struct_class = Types::BatchUpdatePhoneNumberRequest

    BatchUpdatePhoneNumberResponse.add_member(:phone_number_errors, Shapes::ShapeRef.new(shape: PhoneNumberErrorList, location_name: "PhoneNumberErrors"))
    BatchUpdatePhoneNumberResponse.struct_class = Types::BatchUpdatePhoneNumberResponse

    BatchUpdateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    BatchUpdateUserRequest.add_member(:update_user_request_items, Shapes::ShapeRef.new(shape: UpdateUserRequestItemList, required: true, location_name: "UpdateUserRequestItems"))
    BatchUpdateUserRequest.struct_class = Types::BatchUpdateUserRequest

    BatchUpdateUserResponse.add_member(:user_errors, Shapes::ShapeRef.new(shape: UserErrorList, location_name: "UserErrors"))
    BatchUpdateUserResponse.struct_class = Types::BatchUpdateUserResponse

    Bot.add_member(:bot_id, Shapes::ShapeRef.new(shape: String, location_name: "BotId"))
    Bot.add_member(:user_id, Shapes::ShapeRef.new(shape: String, location_name: "UserId"))
    Bot.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "DisplayName"))
    Bot.add_member(:bot_type, Shapes::ShapeRef.new(shape: BotType, location_name: "BotType"))
    Bot.add_member(:disabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Disabled"))
    Bot.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    Bot.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    Bot.add_member(:bot_email, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "BotEmail"))
    Bot.add_member(:security_token, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "SecurityToken"))
    Bot.struct_class = Types::Bot

    BotList.member = Shapes::ShapeRef.new(shape: Bot)

    BusinessCallingSettings.add_member(:cdr_bucket, Shapes::ShapeRef.new(shape: String, location_name: "CdrBucket", metadata: {"box" => true}))
    BusinessCallingSettings.struct_class = Types::BusinessCallingSettings

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ConversationRetentionSettings.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    ConversationRetentionSettings.struct_class = Types::ConversationRetentionSettings

    CreateAccountRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, required: true, location_name: "Name"))
    CreateAccountRequest.struct_class = Types::CreateAccountRequest

    CreateAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    CreateAccountResponse.struct_class = Types::CreateAccountResponse

    CreateBotRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateBotRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "DisplayName"))
    CreateBotRequest.add_member(:domain, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Domain"))
    CreateBotRequest.struct_class = Types::CreateBotRequest

    CreateBotResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    CreateBotResponse.struct_class = Types::CreateBotResponse

    CreateMeetingDialOutRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "meetingId"))
    CreateMeetingDialOutRequest.add_member(:from_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "FromPhoneNumber"))
    CreateMeetingDialOutRequest.add_member(:to_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, required: true, location_name: "ToPhoneNumber"))
    CreateMeetingDialOutRequest.add_member(:join_token, Shapes::ShapeRef.new(shape: JoinTokenString, required: true, location_name: "JoinToken"))
    CreateMeetingDialOutRequest.struct_class = Types::CreateMeetingDialOutRequest

    CreateMeetingDialOutResponse.add_member(:transaction_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "TransactionId"))
    CreateMeetingDialOutResponse.struct_class = Types::CreateMeetingDialOutResponse

    CreatePhoneNumberOrderRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, required: true, location_name: "ProductType"))
    CreatePhoneNumberOrderRequest.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, required: true, location_name: "E164PhoneNumbers"))
    CreatePhoneNumberOrderRequest.struct_class = Types::CreatePhoneNumberOrderRequest

    CreatePhoneNumberOrderResponse.add_member(:phone_number_order, Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: "PhoneNumberOrder"))
    CreatePhoneNumberOrderResponse.struct_class = Types::CreatePhoneNumberOrderResponse

    CreateRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    CreateRoomMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "MemberId"))
    CreateRoomMembershipRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    CreateRoomMembershipRequest.struct_class = Types::CreateRoomMembershipRequest

    CreateRoomMembershipResponse.add_member(:room_membership, Shapes::ShapeRef.new(shape: RoomMembership, location_name: "RoomMembership"))
    CreateRoomMembershipResponse.struct_class = Types::CreateRoomMembershipResponse

    CreateRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateRoomRequest.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "Name"))
    CreateRoomRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken" => true}))
    CreateRoomRequest.struct_class = Types::CreateRoomRequest

    CreateRoomResponse.add_member(:room, Shapes::ShapeRef.new(shape: Room, location_name: "Room"))
    CreateRoomResponse.struct_class = Types::CreateRoomResponse

    CreateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    CreateUserRequest.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    CreateUserRequest.add_member(:email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "Email"))
    CreateUserRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    CreateUserRequest.struct_class = Types::CreateUserRequest

    CreateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    CreateUserResponse.struct_class = Types::CreateUserResponse

    DeleteAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteAccountRequest.struct_class = Types::DeleteAccountRequest

    DeleteAccountResponse.struct_class = Types::DeleteAccountResponse

    DeleteEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    DeleteEventsConfigurationRequest.struct_class = Types::DeleteEventsConfigurationRequest

    DeletePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    DeletePhoneNumberRequest.struct_class = Types::DeletePhoneNumberRequest

    DeleteRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    DeleteRoomMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "memberId"))
    DeleteRoomMembershipRequest.struct_class = Types::DeleteRoomMembershipRequest

    DeleteRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DeleteRoomRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    DeleteRoomRequest.struct_class = Types::DeleteRoomRequest

    DisassociatePhoneNumberFromUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    DisassociatePhoneNumberFromUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    DisassociatePhoneNumberFromUserRequest.struct_class = Types::DisassociatePhoneNumberFromUserRequest

    DisassociatePhoneNumberFromUserResponse.struct_class = Types::DisassociatePhoneNumberFromUserResponse

    DisassociateSigninDelegateGroupsFromAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    DisassociateSigninDelegateGroupsFromAccountRequest.add_member(:group_names, Shapes::ShapeRef.new(shape: NonEmptyStringList, required: true, location_name: "GroupNames"))
    DisassociateSigninDelegateGroupsFromAccountRequest.struct_class = Types::DisassociateSigninDelegateGroupsFromAccountRequest

    DisassociateSigninDelegateGroupsFromAccountResponse.struct_class = Types::DisassociateSigninDelegateGroupsFromAccountResponse

    E164PhoneNumberList.member = Shapes::ShapeRef.new(shape: E164PhoneNumber)

    EventsConfiguration.add_member(:bot_id, Shapes::ShapeRef.new(shape: String, location_name: "BotId"))
    EventsConfiguration.add_member(:outbound_events_https_endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "OutboundEventsHTTPSEndpoint"))
    EventsConfiguration.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "LambdaFunctionArn"))
    EventsConfiguration.struct_class = Types::EventsConfiguration

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetAccountRequest.struct_class = Types::GetAccountRequest

    GetAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    GetAccountResponse.struct_class = Types::GetAccountResponse

    GetAccountSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

    GetAccountSettingsResponse.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "AccountSettings"))
    GetAccountSettingsResponse.struct_class = Types::GetAccountSettingsResponse

    GetBotRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    GetBotRequest.struct_class = Types::GetBotRequest

    GetBotResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    GetBotResponse.struct_class = Types::GetBotResponse

    GetEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    GetEventsConfigurationRequest.struct_class = Types::GetEventsConfigurationRequest

    GetEventsConfigurationResponse.add_member(:events_configuration, Shapes::ShapeRef.new(shape: EventsConfiguration, location_name: "EventsConfiguration"))
    GetEventsConfigurationResponse.struct_class = Types::GetEventsConfigurationResponse

    GetGlobalSettingsResponse.add_member(:business_calling, Shapes::ShapeRef.new(shape: BusinessCallingSettings, location_name: "BusinessCalling"))
    GetGlobalSettingsResponse.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: "VoiceConnector"))
    GetGlobalSettingsResponse.struct_class = Types::GetGlobalSettingsResponse

    GetPhoneNumberOrderRequest.add_member(:phone_number_order_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "phoneNumberOrderId"))
    GetPhoneNumberOrderRequest.struct_class = Types::GetPhoneNumberOrderRequest

    GetPhoneNumberOrderResponse.add_member(:phone_number_order, Shapes::ShapeRef.new(shape: PhoneNumberOrder, location_name: "PhoneNumberOrder"))
    GetPhoneNumberOrderResponse.struct_class = Types::GetPhoneNumberOrderResponse

    GetPhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    GetPhoneNumberRequest.struct_class = Types::GetPhoneNumberRequest

    GetPhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    GetPhoneNumberResponse.struct_class = Types::GetPhoneNumberResponse

    GetPhoneNumberSettingsResponse.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    GetPhoneNumberSettingsResponse.add_member(:calling_name_updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CallingNameUpdatedTimestamp"))
    GetPhoneNumberSettingsResponse.struct_class = Types::GetPhoneNumberSettingsResponse

    GetRetentionSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetRetentionSettingsRequest.struct_class = Types::GetRetentionSettingsRequest

    GetRetentionSettingsResponse.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettings, location_name: "RetentionSettings"))
    GetRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "InitiateDeletionTimestamp"))
    GetRetentionSettingsResponse.struct_class = Types::GetRetentionSettingsResponse

    GetRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetRoomRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    GetRoomRequest.struct_class = Types::GetRoomRequest

    GetRoomResponse.add_member(:room, Shapes::ShapeRef.new(shape: Room, location_name: "Room"))
    GetRoomResponse.struct_class = Types::GetRoomResponse

    GetUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    GetUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    GetUserRequest.struct_class = Types::GetUserRequest

    GetUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    GetUserResponse.struct_class = Types::GetUserResponse

    GetUserSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    GetUserSettingsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    GetUserSettingsRequest.struct_class = Types::GetUserSettingsRequest

    GetUserSettingsResponse.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, location_name: "UserSettings"))
    GetUserSettingsResponse.struct_class = Types::GetUserSettingsResponse

    Invite.add_member(:invite_id, Shapes::ShapeRef.new(shape: String, location_name: "InviteId"))
    Invite.add_member(:status, Shapes::ShapeRef.new(shape: InviteStatus, location_name: "Status"))
    Invite.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "EmailAddress"))
    Invite.add_member(:email_status, Shapes::ShapeRef.new(shape: EmailStatus, location_name: "EmailStatus"))
    Invite.struct_class = Types::Invite

    InviteList.member = Shapes::ShapeRef.new(shape: Invite)

    InviteUsersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    InviteUsersRequest.add_member(:user_email_list, Shapes::ShapeRef.new(shape: UserEmailList, required: true, location_name: "UserEmailList"))
    InviteUsersRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    InviteUsersRequest.struct_class = Types::InviteUsersRequest

    InviteUsersResponse.add_member(:invites, Shapes::ShapeRef.new(shape: InviteList, location_name: "Invites"))
    InviteUsersResponse.struct_class = Types::InviteUsersResponse

    LicenseList.member = Shapes::ShapeRef.new(shape: License)

    ListAccountsRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, location: "querystring", location_name: "name"))
    ListAccountsRequest.add_member(:user_email, Shapes::ShapeRef.new(shape: EmailAddress, location: "querystring", location_name: "user-email"))
    ListAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ProfileServiceMaxResults, location: "querystring", location_name: "max-results"))
    ListAccountsRequest.struct_class = Types::ListAccountsRequest

    ListAccountsResponse.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "Accounts"))
    ListAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAccountsResponse.struct_class = Types::ListAccountsResponse

    ListBotsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListBotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListBotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListBotsRequest.struct_class = Types::ListBotsRequest

    ListBotsResponse.add_member(:bots, Shapes::ShapeRef.new(shape: BotList, location_name: "Bots"))
    ListBotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListBotsResponse.struct_class = Types::ListBotsResponse

    ListPhoneNumberOrdersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListPhoneNumberOrdersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListPhoneNumberOrdersRequest.struct_class = Types::ListPhoneNumberOrdersRequest

    ListPhoneNumberOrdersResponse.add_member(:phone_number_orders, Shapes::ShapeRef.new(shape: PhoneNumberOrderList, location_name: "PhoneNumberOrders"))
    ListPhoneNumberOrdersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPhoneNumberOrdersResponse.struct_class = Types::ListPhoneNumberOrdersResponse

    ListPhoneNumbersRequest.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberStatus, location: "querystring", location_name: "status"))
    ListPhoneNumbersRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location: "querystring", location_name: "product-type"))
    ListPhoneNumbersRequest.add_member(:filter_name, Shapes::ShapeRef.new(shape: PhoneNumberAssociationName, location: "querystring", location_name: "filter-name"))
    ListPhoneNumbersRequest.add_member(:filter_value, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "filter-value"))
    ListPhoneNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListPhoneNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListPhoneNumbersRequest.struct_class = Types::ListPhoneNumbersRequest

    ListPhoneNumbersResponse.add_member(:phone_numbers, Shapes::ShapeRef.new(shape: PhoneNumberList, location_name: "PhoneNumbers"))
    ListPhoneNumbersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPhoneNumbersResponse.struct_class = Types::ListPhoneNumbersResponse

    ListRoomMembershipsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListRoomMembershipsRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    ListRoomMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListRoomMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListRoomMembershipsRequest.struct_class = Types::ListRoomMembershipsRequest

    ListRoomMembershipsResponse.add_member(:room_memberships, Shapes::ShapeRef.new(shape: RoomMembershipList, location_name: "RoomMemberships"))
    ListRoomMembershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRoomMembershipsResponse.struct_class = Types::ListRoomMembershipsResponse

    ListRoomsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListRoomsRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "member-id"))
    ListRoomsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListRoomsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListRoomsRequest.struct_class = Types::ListRoomsRequest

    ListRoomsResponse.add_member(:rooms, Shapes::ShapeRef.new(shape: RoomList, location_name: "Rooms"))
    ListRoomsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListRoomsResponse.struct_class = Types::ListRoomsResponse

    ListSupportedPhoneNumberCountriesRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, required: true, location: "querystring", location_name: "product-type"))
    ListSupportedPhoneNumberCountriesRequest.struct_class = Types::ListSupportedPhoneNumberCountriesRequest

    ListSupportedPhoneNumberCountriesResponse.add_member(:phone_number_countries, Shapes::ShapeRef.new(shape: PhoneNumberCountriesList, location_name: "PhoneNumberCountries"))
    ListSupportedPhoneNumberCountriesResponse.struct_class = Types::ListSupportedPhoneNumberCountriesResponse

    ListUsersRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ListUsersRequest.add_member(:user_email, Shapes::ShapeRef.new(shape: EmailAddress, location: "querystring", location_name: "user-email"))
    ListUsersRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location: "querystring", location_name: "user-type"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ProfileServiceMaxResults, location: "querystring", location_name: "max-results"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:users, Shapes::ShapeRef.new(shape: UserList, location_name: "Users"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    LogoutUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    LogoutUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    LogoutUserRequest.struct_class = Types::LogoutUserRequest

    LogoutUserResponse.struct_class = Types::LogoutUserResponse

    Member.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberId"))
    Member.add_member(:member_type, Shapes::ShapeRef.new(shape: MemberType, location_name: "MemberType"))
    Member.add_member(:email, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Email"))
    Member.add_member(:full_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "FullName"))
    Member.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccountId"))
    Member.struct_class = Types::Member

    MemberError.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberId"))
    MemberError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    MemberError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    MemberError.struct_class = Types::MemberError

    MemberErrorList.member = Shapes::ShapeRef.new(shape: MemberError)

    MembershipItem.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "MemberId"))
    MembershipItem.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    MembershipItem.struct_class = Types::MembershipItem

    MembershipItemList.member = Shapes::ShapeRef.new(shape: MembershipItem)

    NonEmptyStringList.member = Shapes::ShapeRef.new(shape: String)

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    OrderedPhoneNumber.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "E164PhoneNumber"))
    OrderedPhoneNumber.add_member(:status, Shapes::ShapeRef.new(shape: OrderedPhoneNumberStatus, location_name: "Status"))
    OrderedPhoneNumber.struct_class = Types::OrderedPhoneNumber

    OrderedPhoneNumberList.member = Shapes::ShapeRef.new(shape: OrderedPhoneNumber)

    PhoneNumber.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, location_name: "PhoneNumberId"))
    PhoneNumber.add_member(:e164_phone_number, Shapes::ShapeRef.new(shape: E164PhoneNumber, location_name: "E164PhoneNumber"))
    PhoneNumber.add_member(:country, Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: "Country"))
    PhoneNumber.add_member(:type, Shapes::ShapeRef.new(shape: PhoneNumberType, location_name: "Type"))
    PhoneNumber.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    PhoneNumber.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberStatus, location_name: "Status"))
    PhoneNumber.add_member(:capabilities, Shapes::ShapeRef.new(shape: PhoneNumberCapabilities, location_name: "Capabilities"))
    PhoneNumber.add_member(:associations, Shapes::ShapeRef.new(shape: PhoneNumberAssociationList, location_name: "Associations"))
    PhoneNumber.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    PhoneNumber.add_member(:calling_name_status, Shapes::ShapeRef.new(shape: CallingNameStatus, location_name: "CallingNameStatus"))
    PhoneNumber.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    PhoneNumber.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    PhoneNumber.add_member(:deletion_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "DeletionTimestamp"))
    PhoneNumber.struct_class = Types::PhoneNumber

    PhoneNumberAssociation.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    PhoneNumberAssociation.add_member(:name, Shapes::ShapeRef.new(shape: PhoneNumberAssociationName, location_name: "Name"))
    PhoneNumberAssociation.add_member(:associated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "AssociatedTimestamp"))
    PhoneNumberAssociation.struct_class = Types::PhoneNumberAssociation

    PhoneNumberAssociationList.member = Shapes::ShapeRef.new(shape: PhoneNumberAssociation)

    PhoneNumberCapabilities.add_member(:inbound_call, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InboundCall"))
    PhoneNumberCapabilities.add_member(:outbound_call, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "OutboundCall"))
    PhoneNumberCapabilities.add_member(:inbound_sms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InboundSMS"))
    PhoneNumberCapabilities.add_member(:outbound_sms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "OutboundSMS"))
    PhoneNumberCapabilities.add_member(:inbound_mms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "InboundMMS"))
    PhoneNumberCapabilities.add_member(:outbound_mms, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "OutboundMMS"))
    PhoneNumberCapabilities.struct_class = Types::PhoneNumberCapabilities

    PhoneNumberCountriesList.member = Shapes::ShapeRef.new(shape: PhoneNumberCountry)

    PhoneNumberCountry.add_member(:country_code, Shapes::ShapeRef.new(shape: Alpha2CountryCode, location_name: "CountryCode"))
    PhoneNumberCountry.add_member(:supported_phone_number_types, Shapes::ShapeRef.new(shape: PhoneNumberTypeList, location_name: "SupportedPhoneNumberTypes"))
    PhoneNumberCountry.struct_class = Types::PhoneNumberCountry

    PhoneNumberError.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "PhoneNumberId"))
    PhoneNumberError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    PhoneNumberError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    PhoneNumberError.struct_class = Types::PhoneNumberError

    PhoneNumberErrorList.member = Shapes::ShapeRef.new(shape: PhoneNumberError)

    PhoneNumberList.member = Shapes::ShapeRef.new(shape: PhoneNumber)

    PhoneNumberOrder.add_member(:phone_number_order_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "PhoneNumberOrderId"))
    PhoneNumberOrder.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    PhoneNumberOrder.add_member(:status, Shapes::ShapeRef.new(shape: PhoneNumberOrderStatus, location_name: "Status"))
    PhoneNumberOrder.add_member(:ordered_phone_numbers, Shapes::ShapeRef.new(shape: OrderedPhoneNumberList, location_name: "OrderedPhoneNumbers"))
    PhoneNumberOrder.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    PhoneNumberOrder.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    PhoneNumberOrder.struct_class = Types::PhoneNumberOrder

    PhoneNumberOrderList.member = Shapes::ShapeRef.new(shape: PhoneNumberOrder)

    PhoneNumberTypeList.member = Shapes::ShapeRef.new(shape: PhoneNumberType)

    PutEventsConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    PutEventsConfigurationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    PutEventsConfigurationRequest.add_member(:outbound_events_https_endpoint, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "OutboundEventsHTTPSEndpoint"))
    PutEventsConfigurationRequest.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "LambdaFunctionArn"))
    PutEventsConfigurationRequest.struct_class = Types::PutEventsConfigurationRequest

    PutEventsConfigurationResponse.add_member(:events_configuration, Shapes::ShapeRef.new(shape: EventsConfiguration, location_name: "EventsConfiguration"))
    PutEventsConfigurationResponse.struct_class = Types::PutEventsConfigurationResponse

    PutRetentionSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    PutRetentionSettingsRequest.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettings, required: true, location_name: "RetentionSettings"))
    PutRetentionSettingsRequest.struct_class = Types::PutRetentionSettingsRequest

    PutRetentionSettingsResponse.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettings, location_name: "RetentionSettings"))
    PutRetentionSettingsResponse.add_member(:initiate_deletion_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "InitiateDeletionTimestamp"))
    PutRetentionSettingsResponse.struct_class = Types::PutRetentionSettingsResponse

    RedactConversationMessageRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    RedactConversationMessageRequest.add_member(:conversation_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "conversationId"))
    RedactConversationMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "messageId"))
    RedactConversationMessageRequest.struct_class = Types::RedactConversationMessageRequest

    RedactConversationMessageResponse.struct_class = Types::RedactConversationMessageResponse

    RedactRoomMessageRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    RedactRoomMessageRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    RedactRoomMessageRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "messageId"))
    RedactRoomMessageRequest.struct_class = Types::RedactRoomMessageRequest

    RedactRoomMessageResponse.struct_class = Types::RedactRoomMessageResponse

    RegenerateSecurityTokenRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    RegenerateSecurityTokenRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    RegenerateSecurityTokenRequest.struct_class = Types::RegenerateSecurityTokenRequest

    RegenerateSecurityTokenResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    RegenerateSecurityTokenResponse.struct_class = Types::RegenerateSecurityTokenResponse

    ResetPersonalPINRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    ResetPersonalPINRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    ResetPersonalPINRequest.struct_class = Types::ResetPersonalPINRequest

    ResetPersonalPINResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    ResetPersonalPINResponse.struct_class = Types::ResetPersonalPINResponse

    ResourceLimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    RestorePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "phoneNumberId"))
    RestorePhoneNumberRequest.struct_class = Types::RestorePhoneNumberRequest

    RestorePhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    RestorePhoneNumberResponse.struct_class = Types::RestorePhoneNumberResponse

    RetentionSettings.add_member(:room_retention_settings, Shapes::ShapeRef.new(shape: RoomRetentionSettings, location_name: "RoomRetentionSettings"))
    RetentionSettings.add_member(:conversation_retention_settings, Shapes::ShapeRef.new(shape: ConversationRetentionSettings, location_name: "ConversationRetentionSettings"))
    RetentionSettings.struct_class = Types::RetentionSettings

    Room.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoomId"))
    Room.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Name"))
    Room.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccountId"))
    Room.add_member(:created_by, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "CreatedBy"))
    Room.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "CreatedTimestamp"))
    Room.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    Room.struct_class = Types::Room

    RoomList.member = Shapes::ShapeRef.new(shape: Room)

    RoomMembership.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoomId"))
    RoomMembership.add_member(:member, Shapes::ShapeRef.new(shape: Member, location_name: "Member"))
    RoomMembership.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    RoomMembership.add_member(:invited_by, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InvitedBy"))
    RoomMembership.add_member(:updated_timestamp, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "UpdatedTimestamp"))
    RoomMembership.struct_class = Types::RoomMembership

    RoomMembershipList.member = Shapes::ShapeRef.new(shape: RoomMembership)

    RoomRetentionSettings.add_member(:retention_days, Shapes::ShapeRef.new(shape: RetentionDays, location_name: "RetentionDays"))
    RoomRetentionSettings.struct_class = Types::RoomRetentionSettings

    SearchAvailablePhoneNumbersRequest.add_member(:area_code, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "area-code"))
    SearchAvailablePhoneNumbersRequest.add_member(:city, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "city"))
    SearchAvailablePhoneNumbersRequest.add_member(:country, Shapes::ShapeRef.new(shape: Alpha2CountryCode, location: "querystring", location_name: "country"))
    SearchAvailablePhoneNumbersRequest.add_member(:state, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "state"))
    SearchAvailablePhoneNumbersRequest.add_member(:toll_free_prefix, Shapes::ShapeRef.new(shape: TollFreePrefix, location: "querystring", location_name: "toll-free-prefix"))
    SearchAvailablePhoneNumbersRequest.add_member(:phone_number_type, Shapes::ShapeRef.new(shape: PhoneNumberType, location: "querystring", location_name: "phone-number-type"))
    SearchAvailablePhoneNumbersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PhoneNumberMaxResults, location: "querystring", location_name: "max-results"))
    SearchAvailablePhoneNumbersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    SearchAvailablePhoneNumbersRequest.struct_class = Types::SearchAvailablePhoneNumbersRequest

    SearchAvailablePhoneNumbersResponse.add_member(:e164_phone_numbers, Shapes::ShapeRef.new(shape: E164PhoneNumberList, location_name: "E164PhoneNumbers"))
    SearchAvailablePhoneNumbersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchAvailablePhoneNumbersResponse.struct_class = Types::SearchAvailablePhoneNumbersResponse

    ServiceFailureException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceFailureException.struct_class = Types::ServiceFailureException

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SigninDelegateGroup.add_member(:group_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "GroupName"))
    SigninDelegateGroup.struct_class = Types::SigninDelegateGroup

    SigninDelegateGroupList.member = Shapes::ShapeRef.new(shape: SigninDelegateGroup)

    TelephonySettings.add_member(:inbound_calling, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "InboundCalling"))
    TelephonySettings.add_member(:outbound_calling, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "OutboundCalling"))
    TelephonySettings.add_member(:sms, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "SMS"))
    TelephonySettings.struct_class = Types::TelephonySettings

    ThrottledClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ThrottledClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottledClientException.struct_class = Types::ThrottledClientException

    UnauthorizedClientException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnauthorizedClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedClientException.struct_class = Types::UnauthorizedClientException

    UnprocessableEntityException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    UnprocessableEntityException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnprocessableEntityException.struct_class = Types::UnprocessableEntityException

    UpdateAccountRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateAccountRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccountName, location_name: "Name"))
    UpdateAccountRequest.add_member(:default_license, Shapes::ShapeRef.new(shape: License, location_name: "DefaultLicense"))
    UpdateAccountRequest.struct_class = Types::UpdateAccountRequest

    UpdateAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    UpdateAccountResponse.struct_class = Types::UpdateAccountResponse

    UpdateAccountSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateAccountSettingsRequest.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, required: true, location_name: "AccountSettings"))
    UpdateAccountSettingsRequest.struct_class = Types::UpdateAccountSettingsRequest

    UpdateAccountSettingsResponse.struct_class = Types::UpdateAccountSettingsResponse

    UpdateBotRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateBotRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "botId"))
    UpdateBotRequest.add_member(:disabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Disabled"))
    UpdateBotRequest.struct_class = Types::UpdateBotRequest

    UpdateBotResponse.add_member(:bot, Shapes::ShapeRef.new(shape: Bot, location_name: "Bot"))
    UpdateBotResponse.struct_class = Types::UpdateBotResponse

    UpdateGlobalSettingsRequest.add_member(:business_calling, Shapes::ShapeRef.new(shape: BusinessCallingSettings, location_name: "BusinessCalling"))
    UpdateGlobalSettingsRequest.add_member(:voice_connector, Shapes::ShapeRef.new(shape: VoiceConnectorSettings, location_name: "VoiceConnector"))
    UpdateGlobalSettingsRequest.struct_class = Types::UpdateGlobalSettingsRequest

    UpdatePhoneNumberRequest.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "phoneNumberId"))
    UpdatePhoneNumberRequest.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    UpdatePhoneNumberRequest.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    UpdatePhoneNumberRequest.struct_class = Types::UpdatePhoneNumberRequest

    UpdatePhoneNumberRequestItem.add_member(:phone_number_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "PhoneNumberId"))
    UpdatePhoneNumberRequestItem.add_member(:product_type, Shapes::ShapeRef.new(shape: PhoneNumberProductType, location_name: "ProductType"))
    UpdatePhoneNumberRequestItem.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, location_name: "CallingName"))
    UpdatePhoneNumberRequestItem.struct_class = Types::UpdatePhoneNumberRequestItem

    UpdatePhoneNumberRequestItemList.member = Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequestItem)

    UpdatePhoneNumberResponse.add_member(:phone_number, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "PhoneNumber"))
    UpdatePhoneNumberResponse.struct_class = Types::UpdatePhoneNumberResponse

    UpdatePhoneNumberSettingsRequest.add_member(:calling_name, Shapes::ShapeRef.new(shape: CallingName, required: true, location_name: "CallingName"))
    UpdatePhoneNumberSettingsRequest.struct_class = Types::UpdatePhoneNumberSettingsRequest

    UpdateRoomMembershipRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateRoomMembershipRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    UpdateRoomMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "memberId"))
    UpdateRoomMembershipRequest.add_member(:role, Shapes::ShapeRef.new(shape: RoomMembershipRole, location_name: "Role"))
    UpdateRoomMembershipRequest.struct_class = Types::UpdateRoomMembershipRequest

    UpdateRoomMembershipResponse.add_member(:room_membership, Shapes::ShapeRef.new(shape: RoomMembership, location_name: "RoomMembership"))
    UpdateRoomMembershipResponse.struct_class = Types::UpdateRoomMembershipResponse

    UpdateRoomRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateRoomRequest.add_member(:room_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "roomId"))
    UpdateRoomRequest.add_member(:name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "Name"))
    UpdateRoomRequest.struct_class = Types::UpdateRoomRequest

    UpdateRoomResponse.add_member(:room, Shapes::ShapeRef.new(shape: Room, location_name: "Room"))
    UpdateRoomResponse.struct_class = Types::UpdateRoomResponse

    UpdateUserRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "accountId"))
    UpdateUserRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "uri", location_name: "userId"))
    UpdateUserRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    UpdateUserRequest.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    UpdateUserRequest.add_member(:alexa_for_business_metadata, Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: "AlexaForBusinessMetadata"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserRequestItem.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "UserId"))
    UpdateUserRequestItem.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    UpdateUserRequestItem.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    UpdateUserRequestItem.add_member(:alexa_for_business_metadata, Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: "AlexaForBusinessMetadata"))
    UpdateUserRequestItem.struct_class = Types::UpdateUserRequestItem

    UpdateUserRequestItemList.member = Shapes::ShapeRef.new(shape: UpdateUserRequestItem)

    UpdateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    UpdateUserSettingsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "accountId"))
    UpdateUserSettingsRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "userId"))
    UpdateUserSettingsRequest.add_member(:user_settings, Shapes::ShapeRef.new(shape: UserSettings, required: true, location_name: "UserSettings"))
    UpdateUserSettingsRequest.struct_class = Types::UpdateUserSettingsRequest

    User.add_member(:user_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "UserId"))
    User.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "AccountId"))
    User.add_member(:primary_email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "PrimaryEmail"))
    User.add_member(:primary_provisioned_number, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "PrimaryProvisionedNumber"))
    User.add_member(:display_name, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "DisplayName"))
    User.add_member(:license_type, Shapes::ShapeRef.new(shape: License, location_name: "LicenseType"))
    User.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, location_name: "UserType"))
    User.add_member(:user_registration_status, Shapes::ShapeRef.new(shape: RegistrationStatus, location_name: "UserRegistrationStatus"))
    User.add_member(:user_invitation_status, Shapes::ShapeRef.new(shape: InviteStatus, location_name: "UserInvitationStatus"))
    User.add_member(:registered_on, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "RegisteredOn"))
    User.add_member(:invited_on, Shapes::ShapeRef.new(shape: Iso8601Timestamp, location_name: "InvitedOn"))
    User.add_member(:alexa_for_business_metadata, Shapes::ShapeRef.new(shape: AlexaForBusinessMetadata, location_name: "AlexaForBusinessMetadata"))
    User.add_member(:personal_pin, Shapes::ShapeRef.new(shape: String, location_name: "PersonalPIN"))
    User.struct_class = Types::User

    UserEmailList.member = Shapes::ShapeRef.new(shape: EmailAddress)

    UserError.add_member(:user_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserId"))
    UserError.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    UserError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    UserError.struct_class = Types::UserError

    UserErrorList.member = Shapes::ShapeRef.new(shape: UserError)

    UserIdList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    UserList.member = Shapes::ShapeRef.new(shape: User)

    UserSettings.add_member(:telephony, Shapes::ShapeRef.new(shape: TelephonySettings, required: true, location_name: "Telephony"))
    UserSettings.struct_class = Types::UserSettings

    VoiceConnectorSettings.add_member(:cdr_bucket, Shapes::ShapeRef.new(shape: String, location_name: "CdrBucket", metadata: {"box" => true}))
    VoiceConnectorSettings.struct_class = Types::VoiceConnectorSettings


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-01"

      api.metadata = {
        "apiVersion" => "2018-05-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "chime",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Chime",
        "serviceId" => "Chime",
        "signatureVersion" => "v4",
        "uid" => "chime-2018-05-01",
      }

      api.add_operation(:associate_phone_number_with_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePhoneNumberWithUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=associate-phone-number"
        o.input = Shapes::ShapeRef.new(shape: AssociatePhoneNumberWithUserRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePhoneNumberWithUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:associate_signin_delegate_groups_with_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateSigninDelegateGroupsWithAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}?operation=associate-signin-delegate-groups"
        o.input = Shapes::ShapeRef.new(shape: AssociateSigninDelegateGroupsWithAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateSigninDelegateGroupsWithAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_create_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateRoomMembership"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships?operation=batch-create"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateRoomMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_delete_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeletePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers?operation=batch-delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeletePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeletePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_suspend_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchSuspendUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=suspend"
        o.input = Shapes::ShapeRef.new(shape: BatchSuspendUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchSuspendUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_unsuspend_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUnsuspendUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=unsuspend"
        o.input = Shapes::ShapeRef.new(shape: BatchUnsuspendUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUnsuspendUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_update_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdatePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers?operation=batch-update"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdatePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdatePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:batch_update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBot"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/bots"
        o.input = Shapes::ShapeRef.new(shape: CreateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:create_meeting_dial_out, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMeetingDialOut"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{meetingId}/dial-outs"
        o.input = Shapes::ShapeRef.new(shape: CreateMeetingDialOutRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMeetingDialOutResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_phone_number_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePhoneNumberOrder"
        o.http_method = "POST"
        o.http_request_uri = "/phone-number-orders"
        o.input = Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePhoneNumberOrderResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoom"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms"
        o.input = Shapes::ShapeRef.new(shape: CreateRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoomMembership"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships"
        o.input = Shapes::ShapeRef.new(shape: CreateRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRoomMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:create_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=create"
        o.input = Shapes::ShapeRef.new(shape: CreateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccount"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_events_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventsConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}/events-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
      end)

      api.add_operation(:delete_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePhoneNumber"
        o.http_method = "DELETE"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: DeletePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoom"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:delete_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoomMembership"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_phone_number_from_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePhoneNumberFromUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=disassociate-phone-number"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePhoneNumberFromUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociatePhoneNumberFromUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:disassociate_signin_delegate_groups_from_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateSigninDelegateGroupsFromAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}?operation=disassociate-signin-delegate-groups"
        o.input = Shapes::ShapeRef.new(shape: DisassociateSigninDelegateGroupsFromAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateSigninDelegateGroupsFromAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccount"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: GetAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/settings"
        o.input = Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBot"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}"
        o.input = Shapes::ShapeRef.new(shape: GetBotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:get_events_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventsConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}/events-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetEventsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventsConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_global_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGlobalSettings"
        o.http_method = "GET"
        o.http_request_uri = "/settings"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetGlobalSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPhoneNumber"
        o.http_method = "GET"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: GetPhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_phone_number_order, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPhoneNumberOrder"
        o.http_method = "GET"
        o.http_request_uri = "/phone-number-orders/{phoneNumberOrderId}"
        o.input = Shapes::ShapeRef.new(shape: GetPhoneNumberOrderRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPhoneNumberOrderResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_phone_number_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPhoneNumberSettings"
        o.http_method = "GET"
        o.http_request_uri = "/settings/phone-number"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetPhoneNumberSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_retention_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRetentionSettings"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/retention-settings"
        o.input = Shapes::ShapeRef.new(shape: GetRetentionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRetentionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRoom"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}"
        o.input = Shapes::ShapeRef.new(shape: GetRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUser"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: GetUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:get_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserSettings"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}/settings"
        o.input = Shapes::ShapeRef.new(shape: GetUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:invite_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InviteUsers"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users?operation=add"
        o.input = Shapes::ShapeRef.new(shape: InviteUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: InviteUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/accounts"
        o.input = Shapes::ShapeRef.new(shape: ListAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_bots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBots"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/bots"
        o.input = Shapes::ShapeRef.new(shape: ListBotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_phone_number_orders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPhoneNumberOrders"
        o.http_method = "GET"
        o.http_request_uri = "/phone-number-orders"
        o.input = Shapes::ShapeRef.new(shape: ListPhoneNumberOrdersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPhoneNumberOrdersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_phone_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPhoneNumbers"
        o.http_method = "GET"
        o.http_request_uri = "/phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: ListPhoneNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPhoneNumbersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_room_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoomMemberships"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships"
        o.input = Shapes::ShapeRef.new(shape: ListRoomMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoomMembershipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rooms, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRooms"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/rooms"
        o.input = Shapes::ShapeRef.new(shape: ListRoomsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRoomsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_supported_phone_number_countries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSupportedPhoneNumberCountries"
        o.http_method = "GET"
        o.http_request_uri = "/phone-number-countries"
        o.input = Shapes::ShapeRef.new(shape: ListSupportedPhoneNumberCountriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSupportedPhoneNumberCountriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{accountId}/users"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:logout_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LogoutUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=logout"
        o.input = Shapes::ShapeRef.new(shape: LogoutUserRequest)
        o.output = Shapes::ShapeRef.new(shape: LogoutUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:put_events_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEventsConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}/events-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutEventsConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEventsConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:put_retention_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRetentionSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/retention-settings"
        o.input = Shapes::ShapeRef.new(shape: PutRetentionSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRetentionSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:redact_conversation_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RedactConversationMessage"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/conversations/{conversationId}/messages/{messageId}?operation=redact"
        o.input = Shapes::ShapeRef.new(shape: RedactConversationMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: RedactConversationMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:redact_room_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RedactRoomMessage"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/messages/{messageId}?operation=redact"
        o.input = Shapes::ShapeRef.new(shape: RedactRoomMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: RedactRoomMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:regenerate_security_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegenerateSecurityToken"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}?operation=regenerate-security-token"
        o.input = Shapes::ShapeRef.new(shape: RegenerateSecurityTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: RegenerateSecurityTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:reset_personal_pin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetPersonalPIN"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}?operation=reset-personal-pin"
        o.input = Shapes::ShapeRef.new(shape: ResetPersonalPINRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetPersonalPINResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:restore_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestorePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}?operation=restore"
        o.input = Shapes::ShapeRef.new(shape: RestorePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: RestorePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:search_available_phone_numbers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchAvailablePhoneNumbers"
        o.http_method = "GET"
        o.http_request_uri = "/search?type=phone-numbers"
        o.input = Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchAvailablePhoneNumbersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccount"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_bot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBot"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/bots/{botId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBotRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
      end)

      api.add_operation(:update_global_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlobalSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateGlobalSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_phone_number, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePhoneNumber"
        o.http_method = "POST"
        o.http_request_uri = "/phone-numbers/{phoneNumberId}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePhoneNumberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePhoneNumberResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_phone_number_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePhoneNumberSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/settings/phone-number"
        o.input = Shapes::ShapeRef.new(shape: UpdatePhoneNumberSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_room, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoom"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoomRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoomResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_room_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoomMembership"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/rooms/{roomId}/memberships/{memberId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRoomMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRoomMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:update_user_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{accountId}/users/{userId}/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedClientException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)
    end

  end
end
