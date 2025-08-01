# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SSM
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessKeyIdType = Shapes::StringShape.new(name: 'AccessKeyIdType')
    AccessKeySecretType = Shapes::StringShape.new(name: 'AccessKeySecretType')
    AccessRequestId = Shapes::StringShape.new(name: 'AccessRequestId')
    AccessRequestStatus = Shapes::StringShape.new(name: 'AccessRequestStatus')
    AccessType = Shapes::StringShape.new(name: 'AccessType')
    Account = Shapes::StringShape.new(name: 'Account')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountSharingInfo = Shapes::StructureShape.new(name: 'AccountSharingInfo')
    AccountSharingInfoList = Shapes::ListShape.new(name: 'AccountSharingInfoList')
    Accounts = Shapes::ListShape.new(name: 'Accounts')
    Activation = Shapes::StructureShape.new(name: 'Activation')
    ActivationCode = Shapes::StringShape.new(name: 'ActivationCode')
    ActivationDescription = Shapes::StringShape.new(name: 'ActivationDescription')
    ActivationId = Shapes::StringShape.new(name: 'ActivationId')
    ActivationList = Shapes::ListShape.new(name: 'ActivationList')
    AddTagsToResourceRequest = Shapes::StructureShape.new(name: 'AddTagsToResourceRequest')
    AddTagsToResourceResult = Shapes::StructureShape.new(name: 'AddTagsToResourceResult')
    AgentErrorCode = Shapes::StringShape.new(name: 'AgentErrorCode')
    AgentType = Shapes::StringShape.new(name: 'AgentType')
    AgentVersion = Shapes::StringShape.new(name: 'AgentVersion')
    AggregatorSchemaOnly = Shapes::BooleanShape.new(name: 'AggregatorSchemaOnly')
    Alarm = Shapes::StructureShape.new(name: 'Alarm')
    AlarmConfiguration = Shapes::StructureShape.new(name: 'AlarmConfiguration')
    AlarmList = Shapes::ListShape.new(name: 'AlarmList')
    AlarmName = Shapes::StringShape.new(name: 'AlarmName')
    AlarmStateInformation = Shapes::StructureShape.new(name: 'AlarmStateInformation')
    AlarmStateInformationList = Shapes::ListShape.new(name: 'AlarmStateInformationList')
    AllowedPattern = Shapes::StringShape.new(name: 'AllowedPattern')
    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    ApplyOnlyAtCronInterval = Shapes::BooleanShape.new(name: 'ApplyOnlyAtCronInterval')
    ApproveAfterDays = Shapes::IntegerShape.new(name: 'ApproveAfterDays')
    Architecture = Shapes::StringShape.new(name: 'Architecture')
    AssociateOpsItemRelatedItemRequest = Shapes::StructureShape.new(name: 'AssociateOpsItemRelatedItemRequest')
    AssociateOpsItemRelatedItemResponse = Shapes::StructureShape.new(name: 'AssociateOpsItemRelatedItemResponse')
    AssociatedInstances = Shapes::StructureShape.new(name: 'AssociatedInstances')
    Association = Shapes::StructureShape.new(name: 'Association')
    AssociationAlreadyExists = Shapes::StructureShape.new(name: 'AssociationAlreadyExists')
    AssociationComplianceSeverity = Shapes::StringShape.new(name: 'AssociationComplianceSeverity')
    AssociationDescription = Shapes::StructureShape.new(name: 'AssociationDescription')
    AssociationDescriptionList = Shapes::ListShape.new(name: 'AssociationDescriptionList')
    AssociationDoesNotExist = Shapes::StructureShape.new(name: 'AssociationDoesNotExist')
    AssociationExecution = Shapes::StructureShape.new(name: 'AssociationExecution')
    AssociationExecutionDoesNotExist = Shapes::StructureShape.new(name: 'AssociationExecutionDoesNotExist')
    AssociationExecutionFilter = Shapes::StructureShape.new(name: 'AssociationExecutionFilter')
    AssociationExecutionFilterKey = Shapes::StringShape.new(name: 'AssociationExecutionFilterKey')
    AssociationExecutionFilterList = Shapes::ListShape.new(name: 'AssociationExecutionFilterList')
    AssociationExecutionFilterValue = Shapes::StringShape.new(name: 'AssociationExecutionFilterValue')
    AssociationExecutionId = Shapes::StringShape.new(name: 'AssociationExecutionId')
    AssociationExecutionTarget = Shapes::StructureShape.new(name: 'AssociationExecutionTarget')
    AssociationExecutionTargetsFilter = Shapes::StructureShape.new(name: 'AssociationExecutionTargetsFilter')
    AssociationExecutionTargetsFilterKey = Shapes::StringShape.new(name: 'AssociationExecutionTargetsFilterKey')
    AssociationExecutionTargetsFilterList = Shapes::ListShape.new(name: 'AssociationExecutionTargetsFilterList')
    AssociationExecutionTargetsFilterValue = Shapes::StringShape.new(name: 'AssociationExecutionTargetsFilterValue')
    AssociationExecutionTargetsList = Shapes::ListShape.new(name: 'AssociationExecutionTargetsList')
    AssociationExecutionsList = Shapes::ListShape.new(name: 'AssociationExecutionsList')
    AssociationFilter = Shapes::StructureShape.new(name: 'AssociationFilter')
    AssociationFilterKey = Shapes::StringShape.new(name: 'AssociationFilterKey')
    AssociationFilterList = Shapes::ListShape.new(name: 'AssociationFilterList')
    AssociationFilterOperatorType = Shapes::StringShape.new(name: 'AssociationFilterOperatorType')
    AssociationFilterValue = Shapes::StringShape.new(name: 'AssociationFilterValue')
    AssociationId = Shapes::StringShape.new(name: 'AssociationId')
    AssociationIdList = Shapes::ListShape.new(name: 'AssociationIdList')
    AssociationLimitExceeded = Shapes::StructureShape.new(name: 'AssociationLimitExceeded')
    AssociationList = Shapes::ListShape.new(name: 'AssociationList')
    AssociationName = Shapes::StringShape.new(name: 'AssociationName')
    AssociationOverview = Shapes::StructureShape.new(name: 'AssociationOverview')
    AssociationResourceId = Shapes::StringShape.new(name: 'AssociationResourceId')
    AssociationResourceType = Shapes::StringShape.new(name: 'AssociationResourceType')
    AssociationStatus = Shapes::StructureShape.new(name: 'AssociationStatus')
    AssociationStatusAggregatedCount = Shapes::MapShape.new(name: 'AssociationStatusAggregatedCount')
    AssociationStatusName = Shapes::StringShape.new(name: 'AssociationStatusName')
    AssociationSyncCompliance = Shapes::StringShape.new(name: 'AssociationSyncCompliance')
    AssociationVersion = Shapes::StringShape.new(name: 'AssociationVersion')
    AssociationVersionInfo = Shapes::StructureShape.new(name: 'AssociationVersionInfo')
    AssociationVersionLimitExceeded = Shapes::StructureShape.new(name: 'AssociationVersionLimitExceeded')
    AssociationVersionList = Shapes::ListShape.new(name: 'AssociationVersionList')
    AttachmentContent = Shapes::StructureShape.new(name: 'AttachmentContent')
    AttachmentContentList = Shapes::ListShape.new(name: 'AttachmentContentList')
    AttachmentHash = Shapes::StringShape.new(name: 'AttachmentHash')
    AttachmentHashType = Shapes::StringShape.new(name: 'AttachmentHashType')
    AttachmentIdentifier = Shapes::StringShape.new(name: 'AttachmentIdentifier')
    AttachmentInformation = Shapes::StructureShape.new(name: 'AttachmentInformation')
    AttachmentInformationList = Shapes::ListShape.new(name: 'AttachmentInformationList')
    AttachmentName = Shapes::StringShape.new(name: 'AttachmentName')
    AttachmentUrl = Shapes::StringShape.new(name: 'AttachmentUrl')
    AttachmentsSource = Shapes::StructureShape.new(name: 'AttachmentsSource')
    AttachmentsSourceKey = Shapes::StringShape.new(name: 'AttachmentsSourceKey')
    AttachmentsSourceList = Shapes::ListShape.new(name: 'AttachmentsSourceList')
    AttachmentsSourceValue = Shapes::StringShape.new(name: 'AttachmentsSourceValue')
    AttachmentsSourceValues = Shapes::ListShape.new(name: 'AttachmentsSourceValues')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    AutomationActionName = Shapes::StringShape.new(name: 'AutomationActionName')
    AutomationDefinitionNotApprovedException = Shapes::StructureShape.new(name: 'AutomationDefinitionNotApprovedException')
    AutomationDefinitionNotFoundException = Shapes::StructureShape.new(name: 'AutomationDefinitionNotFoundException')
    AutomationDefinitionVersionNotFoundException = Shapes::StructureShape.new(name: 'AutomationDefinitionVersionNotFoundException')
    AutomationExecution = Shapes::StructureShape.new(name: 'AutomationExecution')
    AutomationExecutionFilter = Shapes::StructureShape.new(name: 'AutomationExecutionFilter')
    AutomationExecutionFilterKey = Shapes::StringShape.new(name: 'AutomationExecutionFilterKey')
    AutomationExecutionFilterList = Shapes::ListShape.new(name: 'AutomationExecutionFilterList')
    AutomationExecutionFilterValue = Shapes::StringShape.new(name: 'AutomationExecutionFilterValue')
    AutomationExecutionFilterValueList = Shapes::ListShape.new(name: 'AutomationExecutionFilterValueList')
    AutomationExecutionId = Shapes::StringShape.new(name: 'AutomationExecutionId')
    AutomationExecutionInputs = Shapes::StructureShape.new(name: 'AutomationExecutionInputs')
    AutomationExecutionLimitExceededException = Shapes::StructureShape.new(name: 'AutomationExecutionLimitExceededException')
    AutomationExecutionMetadata = Shapes::StructureShape.new(name: 'AutomationExecutionMetadata')
    AutomationExecutionMetadataList = Shapes::ListShape.new(name: 'AutomationExecutionMetadataList')
    AutomationExecutionNotFoundException = Shapes::StructureShape.new(name: 'AutomationExecutionNotFoundException')
    AutomationExecutionPreview = Shapes::StructureShape.new(name: 'AutomationExecutionPreview')
    AutomationExecutionStatus = Shapes::StringShape.new(name: 'AutomationExecutionStatus')
    AutomationParameterKey = Shapes::StringShape.new(name: 'AutomationParameterKey')
    AutomationParameterMap = Shapes::MapShape.new(name: 'AutomationParameterMap')
    AutomationParameterValue = Shapes::StringShape.new(name: 'AutomationParameterValue')
    AutomationParameterValueList = Shapes::ListShape.new(name: 'AutomationParameterValueList')
    AutomationStepNotFoundException = Shapes::StructureShape.new(name: 'AutomationStepNotFoundException')
    AutomationSubtype = Shapes::StringShape.new(name: 'AutomationSubtype')
    AutomationTargetParameterName = Shapes::StringShape.new(name: 'AutomationTargetParameterName')
    AutomationType = Shapes::StringShape.new(name: 'AutomationType')
    BaselineDescription = Shapes::StringShape.new(name: 'BaselineDescription')
    BaselineId = Shapes::StringShape.new(name: 'BaselineId')
    BaselineName = Shapes::StringShape.new(name: 'BaselineName')
    BaselineOverride = Shapes::StructureShape.new(name: 'BaselineOverride')
    BatchErrorMessage = Shapes::StringShape.new(name: 'BatchErrorMessage')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CalendarNameOrARN = Shapes::StringShape.new(name: 'CalendarNameOrARN')
    CalendarNameOrARNList = Shapes::ListShape.new(name: 'CalendarNameOrARNList')
    CalendarState = Shapes::StringShape.new(name: 'CalendarState')
    CancelCommandRequest = Shapes::StructureShape.new(name: 'CancelCommandRequest')
    CancelCommandResult = Shapes::StructureShape.new(name: 'CancelCommandResult')
    CancelMaintenanceWindowExecutionRequest = Shapes::StructureShape.new(name: 'CancelMaintenanceWindowExecutionRequest')
    CancelMaintenanceWindowExecutionResult = Shapes::StructureShape.new(name: 'CancelMaintenanceWindowExecutionResult')
    Category = Shapes::StringShape.new(name: 'Category')
    CategoryEnumList = Shapes::ListShape.new(name: 'CategoryEnumList')
    CategoryList = Shapes::ListShape.new(name: 'CategoryList')
    ChangeDetailsValue = Shapes::StringShape.new(name: 'ChangeDetailsValue')
    ChangeRequestName = Shapes::StringShape.new(name: 'ChangeRequestName')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchLogGroupName = Shapes::StringShape.new(name: 'CloudWatchLogGroupName')
    CloudWatchOutputConfig = Shapes::StructureShape.new(name: 'CloudWatchOutputConfig')
    CloudWatchOutputEnabled = Shapes::BooleanShape.new(name: 'CloudWatchOutputEnabled')
    Command = Shapes::StructureShape.new(name: 'Command')
    CommandFilter = Shapes::StructureShape.new(name: 'CommandFilter')
    CommandFilterKey = Shapes::StringShape.new(name: 'CommandFilterKey')
    CommandFilterList = Shapes::ListShape.new(name: 'CommandFilterList')
    CommandFilterValue = Shapes::StringShape.new(name: 'CommandFilterValue')
    CommandId = Shapes::StringShape.new(name: 'CommandId')
    CommandInvocation = Shapes::StructureShape.new(name: 'CommandInvocation')
    CommandInvocationList = Shapes::ListShape.new(name: 'CommandInvocationList')
    CommandInvocationStatus = Shapes::StringShape.new(name: 'CommandInvocationStatus')
    CommandList = Shapes::ListShape.new(name: 'CommandList')
    CommandMaxResults = Shapes::IntegerShape.new(name: 'CommandMaxResults')
    CommandPlugin = Shapes::StructureShape.new(name: 'CommandPlugin')
    CommandPluginList = Shapes::ListShape.new(name: 'CommandPluginList')
    CommandPluginName = Shapes::StringShape.new(name: 'CommandPluginName')
    CommandPluginOutput = Shapes::StringShape.new(name: 'CommandPluginOutput')
    CommandPluginStatus = Shapes::StringShape.new(name: 'CommandPluginStatus')
    CommandStatus = Shapes::StringShape.new(name: 'CommandStatus')
    Comment = Shapes::StringShape.new(name: 'Comment')
    CompletedCount = Shapes::IntegerShape.new(name: 'CompletedCount')
    ComplianceExecutionId = Shapes::StringShape.new(name: 'ComplianceExecutionId')
    ComplianceExecutionSummary = Shapes::StructureShape.new(name: 'ComplianceExecutionSummary')
    ComplianceExecutionType = Shapes::StringShape.new(name: 'ComplianceExecutionType')
    ComplianceFilterValue = Shapes::StringShape.new(name: 'ComplianceFilterValue')
    ComplianceItem = Shapes::StructureShape.new(name: 'ComplianceItem')
    ComplianceItemContentHash = Shapes::StringShape.new(name: 'ComplianceItemContentHash')
    ComplianceItemDetails = Shapes::MapShape.new(name: 'ComplianceItemDetails')
    ComplianceItemEntry = Shapes::StructureShape.new(name: 'ComplianceItemEntry')
    ComplianceItemEntryList = Shapes::ListShape.new(name: 'ComplianceItemEntryList')
    ComplianceItemId = Shapes::StringShape.new(name: 'ComplianceItemId')
    ComplianceItemList = Shapes::ListShape.new(name: 'ComplianceItemList')
    ComplianceItemTitle = Shapes::StringShape.new(name: 'ComplianceItemTitle')
    ComplianceQueryOperatorType = Shapes::StringShape.new(name: 'ComplianceQueryOperatorType')
    ComplianceResourceId = Shapes::StringShape.new(name: 'ComplianceResourceId')
    ComplianceResourceIdList = Shapes::ListShape.new(name: 'ComplianceResourceIdList')
    ComplianceResourceType = Shapes::StringShape.new(name: 'ComplianceResourceType')
    ComplianceResourceTypeList = Shapes::ListShape.new(name: 'ComplianceResourceTypeList')
    ComplianceSeverity = Shapes::StringShape.new(name: 'ComplianceSeverity')
    ComplianceStatus = Shapes::StringShape.new(name: 'ComplianceStatus')
    ComplianceStringFilter = Shapes::StructureShape.new(name: 'ComplianceStringFilter')
    ComplianceStringFilterKey = Shapes::StringShape.new(name: 'ComplianceStringFilterKey')
    ComplianceStringFilterList = Shapes::ListShape.new(name: 'ComplianceStringFilterList')
    ComplianceStringFilterValueList = Shapes::ListShape.new(name: 'ComplianceStringFilterValueList')
    ComplianceSummaryCount = Shapes::IntegerShape.new(name: 'ComplianceSummaryCount')
    ComplianceSummaryItem = Shapes::StructureShape.new(name: 'ComplianceSummaryItem')
    ComplianceSummaryItemList = Shapes::ListShape.new(name: 'ComplianceSummaryItemList')
    ComplianceTypeCountLimitExceededException = Shapes::StructureShape.new(name: 'ComplianceTypeCountLimitExceededException')
    ComplianceTypeName = Shapes::StringShape.new(name: 'ComplianceTypeName')
    ComplianceUploadType = Shapes::StringShape.new(name: 'ComplianceUploadType')
    CompliantSummary = Shapes::StructureShape.new(name: 'CompliantSummary')
    ComputerName = Shapes::StringShape.new(name: 'ComputerName')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    ContentLength = Shapes::IntegerShape.new(name: 'ContentLength')
    CreateActivationRequest = Shapes::StructureShape.new(name: 'CreateActivationRequest')
    CreateActivationResult = Shapes::StructureShape.new(name: 'CreateActivationResult')
    CreateAssociationBatchRequest = Shapes::StructureShape.new(name: 'CreateAssociationBatchRequest')
    CreateAssociationBatchRequestEntries = Shapes::ListShape.new(name: 'CreateAssociationBatchRequestEntries')
    CreateAssociationBatchRequestEntry = Shapes::StructureShape.new(name: 'CreateAssociationBatchRequestEntry')
    CreateAssociationBatchResult = Shapes::StructureShape.new(name: 'CreateAssociationBatchResult')
    CreateAssociationRequest = Shapes::StructureShape.new(name: 'CreateAssociationRequest')
    CreateAssociationResult = Shapes::StructureShape.new(name: 'CreateAssociationResult')
    CreateDocumentRequest = Shapes::StructureShape.new(name: 'CreateDocumentRequest')
    CreateDocumentResult = Shapes::StructureShape.new(name: 'CreateDocumentResult')
    CreateMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'CreateMaintenanceWindowRequest')
    CreateMaintenanceWindowResult = Shapes::StructureShape.new(name: 'CreateMaintenanceWindowResult')
    CreateOpsItemRequest = Shapes::StructureShape.new(name: 'CreateOpsItemRequest')
    CreateOpsItemResponse = Shapes::StructureShape.new(name: 'CreateOpsItemResponse')
    CreateOpsMetadataRequest = Shapes::StructureShape.new(name: 'CreateOpsMetadataRequest')
    CreateOpsMetadataResult = Shapes::StructureShape.new(name: 'CreateOpsMetadataResult')
    CreatePatchBaselineRequest = Shapes::StructureShape.new(name: 'CreatePatchBaselineRequest')
    CreatePatchBaselineResult = Shapes::StructureShape.new(name: 'CreatePatchBaselineResult')
    CreateResourceDataSyncRequest = Shapes::StructureShape.new(name: 'CreateResourceDataSyncRequest')
    CreateResourceDataSyncResult = Shapes::StructureShape.new(name: 'CreateResourceDataSyncResult')
    CreatedDate = Shapes::TimestampShape.new(name: 'CreatedDate')
    Credentials = Shapes::StructureShape.new(name: 'Credentials')
    CustomSchemaCountLimitExceededException = Shapes::StructureShape.new(name: 'CustomSchemaCountLimitExceededException')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DefaultBaseline = Shapes::BooleanShape.new(name: 'DefaultBaseline')
    DefaultInstanceName = Shapes::StringShape.new(name: 'DefaultInstanceName')
    DeleteActivationRequest = Shapes::StructureShape.new(name: 'DeleteActivationRequest')
    DeleteActivationResult = Shapes::StructureShape.new(name: 'DeleteActivationResult')
    DeleteAssociationRequest = Shapes::StructureShape.new(name: 'DeleteAssociationRequest')
    DeleteAssociationResult = Shapes::StructureShape.new(name: 'DeleteAssociationResult')
    DeleteDocumentRequest = Shapes::StructureShape.new(name: 'DeleteDocumentRequest')
    DeleteDocumentResult = Shapes::StructureShape.new(name: 'DeleteDocumentResult')
    DeleteInventoryRequest = Shapes::StructureShape.new(name: 'DeleteInventoryRequest')
    DeleteInventoryResult = Shapes::StructureShape.new(name: 'DeleteInventoryResult')
    DeleteMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'DeleteMaintenanceWindowRequest')
    DeleteMaintenanceWindowResult = Shapes::StructureShape.new(name: 'DeleteMaintenanceWindowResult')
    DeleteOpsItemRequest = Shapes::StructureShape.new(name: 'DeleteOpsItemRequest')
    DeleteOpsItemResponse = Shapes::StructureShape.new(name: 'DeleteOpsItemResponse')
    DeleteOpsMetadataRequest = Shapes::StructureShape.new(name: 'DeleteOpsMetadataRequest')
    DeleteOpsMetadataResult = Shapes::StructureShape.new(name: 'DeleteOpsMetadataResult')
    DeleteParameterRequest = Shapes::StructureShape.new(name: 'DeleteParameterRequest')
    DeleteParameterResult = Shapes::StructureShape.new(name: 'DeleteParameterResult')
    DeleteParametersRequest = Shapes::StructureShape.new(name: 'DeleteParametersRequest')
    DeleteParametersResult = Shapes::StructureShape.new(name: 'DeleteParametersResult')
    DeletePatchBaselineRequest = Shapes::StructureShape.new(name: 'DeletePatchBaselineRequest')
    DeletePatchBaselineResult = Shapes::StructureShape.new(name: 'DeletePatchBaselineResult')
    DeleteResourceDataSyncRequest = Shapes::StructureShape.new(name: 'DeleteResourceDataSyncRequest')
    DeleteResourceDataSyncResult = Shapes::StructureShape.new(name: 'DeleteResourceDataSyncResult')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeliveryTimedOutCount = Shapes::IntegerShape.new(name: 'DeliveryTimedOutCount')
    DeregisterManagedInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterManagedInstanceRequest')
    DeregisterManagedInstanceResult = Shapes::StructureShape.new(name: 'DeregisterManagedInstanceResult')
    DeregisterPatchBaselineForPatchGroupRequest = Shapes::StructureShape.new(name: 'DeregisterPatchBaselineForPatchGroupRequest')
    DeregisterPatchBaselineForPatchGroupResult = Shapes::StructureShape.new(name: 'DeregisterPatchBaselineForPatchGroupResult')
    DeregisterTargetFromMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'DeregisterTargetFromMaintenanceWindowRequest')
    DeregisterTargetFromMaintenanceWindowResult = Shapes::StructureShape.new(name: 'DeregisterTargetFromMaintenanceWindowResult')
    DeregisterTaskFromMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'DeregisterTaskFromMaintenanceWindowRequest')
    DeregisterTaskFromMaintenanceWindowResult = Shapes::StructureShape.new(name: 'DeregisterTaskFromMaintenanceWindowResult')
    DescribeActivationsFilter = Shapes::StructureShape.new(name: 'DescribeActivationsFilter')
    DescribeActivationsFilterKeys = Shapes::StringShape.new(name: 'DescribeActivationsFilterKeys')
    DescribeActivationsFilterList = Shapes::ListShape.new(name: 'DescribeActivationsFilterList')
    DescribeActivationsRequest = Shapes::StructureShape.new(name: 'DescribeActivationsRequest')
    DescribeActivationsResult = Shapes::StructureShape.new(name: 'DescribeActivationsResult')
    DescribeAssociationExecutionTargetsRequest = Shapes::StructureShape.new(name: 'DescribeAssociationExecutionTargetsRequest')
    DescribeAssociationExecutionTargetsResult = Shapes::StructureShape.new(name: 'DescribeAssociationExecutionTargetsResult')
    DescribeAssociationExecutionsRequest = Shapes::StructureShape.new(name: 'DescribeAssociationExecutionsRequest')
    DescribeAssociationExecutionsResult = Shapes::StructureShape.new(name: 'DescribeAssociationExecutionsResult')
    DescribeAssociationRequest = Shapes::StructureShape.new(name: 'DescribeAssociationRequest')
    DescribeAssociationResult = Shapes::StructureShape.new(name: 'DescribeAssociationResult')
    DescribeAutomationExecutionsRequest = Shapes::StructureShape.new(name: 'DescribeAutomationExecutionsRequest')
    DescribeAutomationExecutionsResult = Shapes::StructureShape.new(name: 'DescribeAutomationExecutionsResult')
    DescribeAutomationStepExecutionsRequest = Shapes::StructureShape.new(name: 'DescribeAutomationStepExecutionsRequest')
    DescribeAutomationStepExecutionsResult = Shapes::StructureShape.new(name: 'DescribeAutomationStepExecutionsResult')
    DescribeAvailablePatchesRequest = Shapes::StructureShape.new(name: 'DescribeAvailablePatchesRequest')
    DescribeAvailablePatchesResult = Shapes::StructureShape.new(name: 'DescribeAvailablePatchesResult')
    DescribeDocumentPermissionRequest = Shapes::StructureShape.new(name: 'DescribeDocumentPermissionRequest')
    DescribeDocumentPermissionResponse = Shapes::StructureShape.new(name: 'DescribeDocumentPermissionResponse')
    DescribeDocumentRequest = Shapes::StructureShape.new(name: 'DescribeDocumentRequest')
    DescribeDocumentResult = Shapes::StructureShape.new(name: 'DescribeDocumentResult')
    DescribeEffectiveInstanceAssociationsRequest = Shapes::StructureShape.new(name: 'DescribeEffectiveInstanceAssociationsRequest')
    DescribeEffectiveInstanceAssociationsResult = Shapes::StructureShape.new(name: 'DescribeEffectiveInstanceAssociationsResult')
    DescribeEffectivePatchesForPatchBaselineRequest = Shapes::StructureShape.new(name: 'DescribeEffectivePatchesForPatchBaselineRequest')
    DescribeEffectivePatchesForPatchBaselineResult = Shapes::StructureShape.new(name: 'DescribeEffectivePatchesForPatchBaselineResult')
    DescribeInstanceAssociationsStatusRequest = Shapes::StructureShape.new(name: 'DescribeInstanceAssociationsStatusRequest')
    DescribeInstanceAssociationsStatusResult = Shapes::StructureShape.new(name: 'DescribeInstanceAssociationsStatusResult')
    DescribeInstanceInformationRequest = Shapes::StructureShape.new(name: 'DescribeInstanceInformationRequest')
    DescribeInstanceInformationResult = Shapes::StructureShape.new(name: 'DescribeInstanceInformationResult')
    DescribeInstancePatchStatesForPatchGroupRequest = Shapes::StructureShape.new(name: 'DescribeInstancePatchStatesForPatchGroupRequest')
    DescribeInstancePatchStatesForPatchGroupResult = Shapes::StructureShape.new(name: 'DescribeInstancePatchStatesForPatchGroupResult')
    DescribeInstancePatchStatesRequest = Shapes::StructureShape.new(name: 'DescribeInstancePatchStatesRequest')
    DescribeInstancePatchStatesResult = Shapes::StructureShape.new(name: 'DescribeInstancePatchStatesResult')
    DescribeInstancePatchesRequest = Shapes::StructureShape.new(name: 'DescribeInstancePatchesRequest')
    DescribeInstancePatchesResult = Shapes::StructureShape.new(name: 'DescribeInstancePatchesResult')
    DescribeInstancePropertiesMaxResults = Shapes::IntegerShape.new(name: 'DescribeInstancePropertiesMaxResults')
    DescribeInstancePropertiesRequest = Shapes::StructureShape.new(name: 'DescribeInstancePropertiesRequest')
    DescribeInstancePropertiesResult = Shapes::StructureShape.new(name: 'DescribeInstancePropertiesResult')
    DescribeInventoryDeletionsRequest = Shapes::StructureShape.new(name: 'DescribeInventoryDeletionsRequest')
    DescribeInventoryDeletionsResult = Shapes::StructureShape.new(name: 'DescribeInventoryDeletionsResult')
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionTaskInvocationsRequest')
    DescribeMaintenanceWindowExecutionTaskInvocationsResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionTaskInvocationsResult')
    DescribeMaintenanceWindowExecutionTasksRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionTasksRequest')
    DescribeMaintenanceWindowExecutionTasksResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionTasksResult')
    DescribeMaintenanceWindowExecutionsRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionsRequest')
    DescribeMaintenanceWindowExecutionsResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowExecutionsResult')
    DescribeMaintenanceWindowScheduleRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowScheduleRequest')
    DescribeMaintenanceWindowScheduleResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowScheduleResult')
    DescribeMaintenanceWindowTargetsRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowTargetsRequest')
    DescribeMaintenanceWindowTargetsResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowTargetsResult')
    DescribeMaintenanceWindowTasksRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowTasksRequest')
    DescribeMaintenanceWindowTasksResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowTasksResult')
    DescribeMaintenanceWindowsForTargetRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowsForTargetRequest')
    DescribeMaintenanceWindowsForTargetResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowsForTargetResult')
    DescribeMaintenanceWindowsRequest = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowsRequest')
    DescribeMaintenanceWindowsResult = Shapes::StructureShape.new(name: 'DescribeMaintenanceWindowsResult')
    DescribeOpsItemsRequest = Shapes::StructureShape.new(name: 'DescribeOpsItemsRequest')
    DescribeOpsItemsResponse = Shapes::StructureShape.new(name: 'DescribeOpsItemsResponse')
    DescribeParametersRequest = Shapes::StructureShape.new(name: 'DescribeParametersRequest')
    DescribeParametersResult = Shapes::StructureShape.new(name: 'DescribeParametersResult')
    DescribePatchBaselinesRequest = Shapes::StructureShape.new(name: 'DescribePatchBaselinesRequest')
    DescribePatchBaselinesResult = Shapes::StructureShape.new(name: 'DescribePatchBaselinesResult')
    DescribePatchGroupStateRequest = Shapes::StructureShape.new(name: 'DescribePatchGroupStateRequest')
    DescribePatchGroupStateResult = Shapes::StructureShape.new(name: 'DescribePatchGroupStateResult')
    DescribePatchGroupsRequest = Shapes::StructureShape.new(name: 'DescribePatchGroupsRequest')
    DescribePatchGroupsResult = Shapes::StructureShape.new(name: 'DescribePatchGroupsResult')
    DescribePatchPropertiesRequest = Shapes::StructureShape.new(name: 'DescribePatchPropertiesRequest')
    DescribePatchPropertiesResult = Shapes::StructureShape.new(name: 'DescribePatchPropertiesResult')
    DescribeSessionsRequest = Shapes::StructureShape.new(name: 'DescribeSessionsRequest')
    DescribeSessionsResponse = Shapes::StructureShape.new(name: 'DescribeSessionsResponse')
    DescriptionInDocument = Shapes::StringShape.new(name: 'DescriptionInDocument')
    DisassociateOpsItemRelatedItemRequest = Shapes::StructureShape.new(name: 'DisassociateOpsItemRelatedItemRequest')
    DisassociateOpsItemRelatedItemResponse = Shapes::StructureShape.new(name: 'DisassociateOpsItemRelatedItemResponse')
    DocumentARN = Shapes::StringShape.new(name: 'DocumentARN')
    DocumentAlreadyExists = Shapes::StructureShape.new(name: 'DocumentAlreadyExists')
    DocumentAuthor = Shapes::StringShape.new(name: 'DocumentAuthor')
    DocumentContent = Shapes::StringShape.new(name: 'DocumentContent')
    DocumentDefaultVersionDescription = Shapes::StructureShape.new(name: 'DocumentDefaultVersionDescription')
    DocumentDescription = Shapes::StructureShape.new(name: 'DocumentDescription')
    DocumentDisplayName = Shapes::StringShape.new(name: 'DocumentDisplayName')
    DocumentFilter = Shapes::StructureShape.new(name: 'DocumentFilter')
    DocumentFilterKey = Shapes::StringShape.new(name: 'DocumentFilterKey')
    DocumentFilterList = Shapes::ListShape.new(name: 'DocumentFilterList')
    DocumentFilterValue = Shapes::StringShape.new(name: 'DocumentFilterValue')
    DocumentFormat = Shapes::StringShape.new(name: 'DocumentFormat')
    DocumentHash = Shapes::StringShape.new(name: 'DocumentHash')
    DocumentHashType = Shapes::StringShape.new(name: 'DocumentHashType')
    DocumentIdentifier = Shapes::StructureShape.new(name: 'DocumentIdentifier')
    DocumentIdentifierList = Shapes::ListShape.new(name: 'DocumentIdentifierList')
    DocumentKeyValuesFilter = Shapes::StructureShape.new(name: 'DocumentKeyValuesFilter')
    DocumentKeyValuesFilterKey = Shapes::StringShape.new(name: 'DocumentKeyValuesFilterKey')
    DocumentKeyValuesFilterList = Shapes::ListShape.new(name: 'DocumentKeyValuesFilterList')
    DocumentKeyValuesFilterValue = Shapes::StringShape.new(name: 'DocumentKeyValuesFilterValue')
    DocumentKeyValuesFilterValues = Shapes::ListShape.new(name: 'DocumentKeyValuesFilterValues')
    DocumentLimitExceeded = Shapes::StructureShape.new(name: 'DocumentLimitExceeded')
    DocumentMetadataEnum = Shapes::StringShape.new(name: 'DocumentMetadataEnum')
    DocumentMetadataResponseInfo = Shapes::StructureShape.new(name: 'DocumentMetadataResponseInfo')
    DocumentName = Shapes::StringShape.new(name: 'DocumentName')
    DocumentOwner = Shapes::StringShape.new(name: 'DocumentOwner')
    DocumentParameter = Shapes::StructureShape.new(name: 'DocumentParameter')
    DocumentParameterDefaultValue = Shapes::StringShape.new(name: 'DocumentParameterDefaultValue')
    DocumentParameterDescrption = Shapes::StringShape.new(name: 'DocumentParameterDescrption')
    DocumentParameterList = Shapes::ListShape.new(name: 'DocumentParameterList')
    DocumentParameterName = Shapes::StringShape.new(name: 'DocumentParameterName')
    DocumentParameterType = Shapes::StringShape.new(name: 'DocumentParameterType')
    DocumentPermissionLimit = Shapes::StructureShape.new(name: 'DocumentPermissionLimit')
    DocumentPermissionMaxResults = Shapes::IntegerShape.new(name: 'DocumentPermissionMaxResults')
    DocumentPermissionType = Shapes::StringShape.new(name: 'DocumentPermissionType')
    DocumentRequires = Shapes::StructureShape.new(name: 'DocumentRequires')
    DocumentRequiresList = Shapes::ListShape.new(name: 'DocumentRequiresList')
    DocumentReviewAction = Shapes::StringShape.new(name: 'DocumentReviewAction')
    DocumentReviewComment = Shapes::StringShape.new(name: 'DocumentReviewComment')
    DocumentReviewCommentList = Shapes::ListShape.new(name: 'DocumentReviewCommentList')
    DocumentReviewCommentSource = Shapes::StructureShape.new(name: 'DocumentReviewCommentSource')
    DocumentReviewCommentType = Shapes::StringShape.new(name: 'DocumentReviewCommentType')
    DocumentReviewerResponseList = Shapes::ListShape.new(name: 'DocumentReviewerResponseList')
    DocumentReviewerResponseSource = Shapes::StructureShape.new(name: 'DocumentReviewerResponseSource')
    DocumentReviews = Shapes::StructureShape.new(name: 'DocumentReviews')
    DocumentSchemaVersion = Shapes::StringShape.new(name: 'DocumentSchemaVersion')
    DocumentSha1 = Shapes::StringShape.new(name: 'DocumentSha1')
    DocumentStatus = Shapes::StringShape.new(name: 'DocumentStatus')
    DocumentStatusInformation = Shapes::StringShape.new(name: 'DocumentStatusInformation')
    DocumentType = Shapes::StringShape.new(name: 'DocumentType')
    DocumentVersion = Shapes::StringShape.new(name: 'DocumentVersion')
    DocumentVersionInfo = Shapes::StructureShape.new(name: 'DocumentVersionInfo')
    DocumentVersionLimitExceeded = Shapes::StructureShape.new(name: 'DocumentVersionLimitExceeded')
    DocumentVersionList = Shapes::ListShape.new(name: 'DocumentVersionList')
    DocumentVersionName = Shapes::StringShape.new(name: 'DocumentVersionName')
    DocumentVersionNumber = Shapes::StringShape.new(name: 'DocumentVersionNumber')
    DoesNotExistException = Shapes::StructureShape.new(name: 'DoesNotExistException')
    DryRun = Shapes::BooleanShape.new(name: 'DryRun')
    DuplicateDocumentContent = Shapes::StructureShape.new(name: 'DuplicateDocumentContent')
    DuplicateDocumentVersionName = Shapes::StructureShape.new(name: 'DuplicateDocumentVersionName')
    DuplicateInstanceId = Shapes::StructureShape.new(name: 'DuplicateInstanceId')
    Duration = Shapes::IntegerShape.new(name: 'Duration')
    EffectiveInstanceAssociationMaxResults = Shapes::IntegerShape.new(name: 'EffectiveInstanceAssociationMaxResults')
    EffectivePatch = Shapes::StructureShape.new(name: 'EffectivePatch')
    EffectivePatchList = Shapes::ListShape.new(name: 'EffectivePatchList')
    ErrorCount = Shapes::IntegerShape.new(name: 'ErrorCount')
    ExcludeAccount = Shapes::StringShape.new(name: 'ExcludeAccount')
    ExcludeAccounts = Shapes::ListShape.new(name: 'ExcludeAccounts')
    ExecutionInputs = Shapes::UnionShape.new(name: 'ExecutionInputs')
    ExecutionMode = Shapes::StringShape.new(name: 'ExecutionMode')
    ExecutionPreview = Shapes::UnionShape.new(name: 'ExecutionPreview')
    ExecutionPreviewId = Shapes::StringShape.new(name: 'ExecutionPreviewId')
    ExecutionPreviewStatus = Shapes::StringShape.new(name: 'ExecutionPreviewStatus')
    ExecutionRoleName = Shapes::StringShape.new(name: 'ExecutionRoleName')
    ExpirationDate = Shapes::TimestampShape.new(name: 'ExpirationDate')
    ExternalAlarmState = Shapes::StringShape.new(name: 'ExternalAlarmState')
    FailedCreateAssociation = Shapes::StructureShape.new(name: 'FailedCreateAssociation')
    FailedCreateAssociationList = Shapes::ListShape.new(name: 'FailedCreateAssociationList')
    FailureDetails = Shapes::StructureShape.new(name: 'FailureDetails')
    Fault = Shapes::StringShape.new(name: 'Fault')
    FeatureNotAvailableException = Shapes::StructureShape.new(name: 'FeatureNotAvailableException')
    GetAccessTokenRequest = Shapes::StructureShape.new(name: 'GetAccessTokenRequest')
    GetAccessTokenResponse = Shapes::StructureShape.new(name: 'GetAccessTokenResponse')
    GetAutomationExecutionRequest = Shapes::StructureShape.new(name: 'GetAutomationExecutionRequest')
    GetAutomationExecutionResult = Shapes::StructureShape.new(name: 'GetAutomationExecutionResult')
    GetCalendarStateRequest = Shapes::StructureShape.new(name: 'GetCalendarStateRequest')
    GetCalendarStateResponse = Shapes::StructureShape.new(name: 'GetCalendarStateResponse')
    GetCommandInvocationRequest = Shapes::StructureShape.new(name: 'GetCommandInvocationRequest')
    GetCommandInvocationResult = Shapes::StructureShape.new(name: 'GetCommandInvocationResult')
    GetConnectionStatusRequest = Shapes::StructureShape.new(name: 'GetConnectionStatusRequest')
    GetConnectionStatusResponse = Shapes::StructureShape.new(name: 'GetConnectionStatusResponse')
    GetDefaultPatchBaselineRequest = Shapes::StructureShape.new(name: 'GetDefaultPatchBaselineRequest')
    GetDefaultPatchBaselineResult = Shapes::StructureShape.new(name: 'GetDefaultPatchBaselineResult')
    GetDeployablePatchSnapshotForInstanceRequest = Shapes::StructureShape.new(name: 'GetDeployablePatchSnapshotForInstanceRequest')
    GetDeployablePatchSnapshotForInstanceResult = Shapes::StructureShape.new(name: 'GetDeployablePatchSnapshotForInstanceResult')
    GetDocumentRequest = Shapes::StructureShape.new(name: 'GetDocumentRequest')
    GetDocumentResult = Shapes::StructureShape.new(name: 'GetDocumentResult')
    GetExecutionPreviewRequest = Shapes::StructureShape.new(name: 'GetExecutionPreviewRequest')
    GetExecutionPreviewResponse = Shapes::StructureShape.new(name: 'GetExecutionPreviewResponse')
    GetInventoryRequest = Shapes::StructureShape.new(name: 'GetInventoryRequest')
    GetInventoryResult = Shapes::StructureShape.new(name: 'GetInventoryResult')
    GetInventorySchemaMaxResults = Shapes::IntegerShape.new(name: 'GetInventorySchemaMaxResults')
    GetInventorySchemaRequest = Shapes::StructureShape.new(name: 'GetInventorySchemaRequest')
    GetInventorySchemaResult = Shapes::StructureShape.new(name: 'GetInventorySchemaResult')
    GetMaintenanceWindowExecutionRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionRequest')
    GetMaintenanceWindowExecutionResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionResult')
    GetMaintenanceWindowExecutionTaskInvocationRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionTaskInvocationRequest')
    GetMaintenanceWindowExecutionTaskInvocationResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionTaskInvocationResult')
    GetMaintenanceWindowExecutionTaskRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionTaskRequest')
    GetMaintenanceWindowExecutionTaskResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowExecutionTaskResult')
    GetMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowRequest')
    GetMaintenanceWindowResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowResult')
    GetMaintenanceWindowTaskRequest = Shapes::StructureShape.new(name: 'GetMaintenanceWindowTaskRequest')
    GetMaintenanceWindowTaskResult = Shapes::StructureShape.new(name: 'GetMaintenanceWindowTaskResult')
    GetOpsItemRequest = Shapes::StructureShape.new(name: 'GetOpsItemRequest')
    GetOpsItemResponse = Shapes::StructureShape.new(name: 'GetOpsItemResponse')
    GetOpsMetadataMaxResults = Shapes::IntegerShape.new(name: 'GetOpsMetadataMaxResults')
    GetOpsMetadataRequest = Shapes::StructureShape.new(name: 'GetOpsMetadataRequest')
    GetOpsMetadataResult = Shapes::StructureShape.new(name: 'GetOpsMetadataResult')
    GetOpsSummaryRequest = Shapes::StructureShape.new(name: 'GetOpsSummaryRequest')
    GetOpsSummaryResult = Shapes::StructureShape.new(name: 'GetOpsSummaryResult')
    GetParameterHistoryRequest = Shapes::StructureShape.new(name: 'GetParameterHistoryRequest')
    GetParameterHistoryResult = Shapes::StructureShape.new(name: 'GetParameterHistoryResult')
    GetParameterRequest = Shapes::StructureShape.new(name: 'GetParameterRequest')
    GetParameterResult = Shapes::StructureShape.new(name: 'GetParameterResult')
    GetParametersByPathMaxResults = Shapes::IntegerShape.new(name: 'GetParametersByPathMaxResults')
    GetParametersByPathRequest = Shapes::StructureShape.new(name: 'GetParametersByPathRequest')
    GetParametersByPathResult = Shapes::StructureShape.new(name: 'GetParametersByPathResult')
    GetParametersRequest = Shapes::StructureShape.new(name: 'GetParametersRequest')
    GetParametersResult = Shapes::StructureShape.new(name: 'GetParametersResult')
    GetPatchBaselineForPatchGroupRequest = Shapes::StructureShape.new(name: 'GetPatchBaselineForPatchGroupRequest')
    GetPatchBaselineForPatchGroupResult = Shapes::StructureShape.new(name: 'GetPatchBaselineForPatchGroupResult')
    GetPatchBaselineRequest = Shapes::StructureShape.new(name: 'GetPatchBaselineRequest')
    GetPatchBaselineResult = Shapes::StructureShape.new(name: 'GetPatchBaselineResult')
    GetResourcePoliciesRequest = Shapes::StructureShape.new(name: 'GetResourcePoliciesRequest')
    GetResourcePoliciesResponse = Shapes::StructureShape.new(name: 'GetResourcePoliciesResponse')
    GetResourcePoliciesResponseEntries = Shapes::ListShape.new(name: 'GetResourcePoliciesResponseEntries')
    GetResourcePoliciesResponseEntry = Shapes::StructureShape.new(name: 'GetResourcePoliciesResponseEntry')
    GetServiceSettingRequest = Shapes::StructureShape.new(name: 'GetServiceSettingRequest')
    GetServiceSettingResult = Shapes::StructureShape.new(name: 'GetServiceSettingResult')
    HierarchyLevelLimitExceededException = Shapes::StructureShape.new(name: 'HierarchyLevelLimitExceededException')
    HierarchyTypeMismatchException = Shapes::StructureShape.new(name: 'HierarchyTypeMismatchException')
    IPAddress = Shapes::StringShape.new(name: 'IPAddress')
    ISO8601String = Shapes::StringShape.new(name: 'ISO8601String')
    IamRole = Shapes::StringShape.new(name: 'IamRole')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    IdempotentParameterMismatch = Shapes::StructureShape.new(name: 'IdempotentParameterMismatch')
    ImpactType = Shapes::StringShape.new(name: 'ImpactType')
    IncompatiblePolicyException = Shapes::StructureShape.new(name: 'IncompatiblePolicyException')
    InstallOverrideList = Shapes::StringShape.new(name: 'InstallOverrideList')
    InstanceAggregatedAssociationOverview = Shapes::StructureShape.new(name: 'InstanceAggregatedAssociationOverview')
    InstanceAssociation = Shapes::StructureShape.new(name: 'InstanceAssociation')
    InstanceAssociationExecutionSummary = Shapes::StringShape.new(name: 'InstanceAssociationExecutionSummary')
    InstanceAssociationList = Shapes::ListShape.new(name: 'InstanceAssociationList')
    InstanceAssociationOutputLocation = Shapes::StructureShape.new(name: 'InstanceAssociationOutputLocation')
    InstanceAssociationOutputUrl = Shapes::StructureShape.new(name: 'InstanceAssociationOutputUrl')
    InstanceAssociationStatusAggregatedCount = Shapes::MapShape.new(name: 'InstanceAssociationStatusAggregatedCount')
    InstanceAssociationStatusInfo = Shapes::StructureShape.new(name: 'InstanceAssociationStatusInfo')
    InstanceAssociationStatusInfos = Shapes::ListShape.new(name: 'InstanceAssociationStatusInfos')
    InstanceCount = Shapes::IntegerShape.new(name: 'InstanceCount')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceIdList = Shapes::ListShape.new(name: 'InstanceIdList')
    InstanceInfo = Shapes::StructureShape.new(name: 'InstanceInfo')
    InstanceInformation = Shapes::StructureShape.new(name: 'InstanceInformation')
    InstanceInformationFilter = Shapes::StructureShape.new(name: 'InstanceInformationFilter')
    InstanceInformationFilterKey = Shapes::StringShape.new(name: 'InstanceInformationFilterKey')
    InstanceInformationFilterList = Shapes::ListShape.new(name: 'InstanceInformationFilterList')
    InstanceInformationFilterValue = Shapes::StringShape.new(name: 'InstanceInformationFilterValue')
    InstanceInformationFilterValueSet = Shapes::ListShape.new(name: 'InstanceInformationFilterValueSet')
    InstanceInformationList = Shapes::ListShape.new(name: 'InstanceInformationList')
    InstanceInformationStringFilter = Shapes::StructureShape.new(name: 'InstanceInformationStringFilter')
    InstanceInformationStringFilterKey = Shapes::StringShape.new(name: 'InstanceInformationStringFilterKey')
    InstanceInformationStringFilterList = Shapes::ListShape.new(name: 'InstanceInformationStringFilterList')
    InstanceName = Shapes::StringShape.new(name: 'InstanceName')
    InstancePatchState = Shapes::StructureShape.new(name: 'InstancePatchState')
    InstancePatchStateFilter = Shapes::StructureShape.new(name: 'InstancePatchStateFilter')
    InstancePatchStateFilterKey = Shapes::StringShape.new(name: 'InstancePatchStateFilterKey')
    InstancePatchStateFilterList = Shapes::ListShape.new(name: 'InstancePatchStateFilterList')
    InstancePatchStateFilterValue = Shapes::StringShape.new(name: 'InstancePatchStateFilterValue')
    InstancePatchStateFilterValues = Shapes::ListShape.new(name: 'InstancePatchStateFilterValues')
    InstancePatchStateList = Shapes::ListShape.new(name: 'InstancePatchStateList')
    InstancePatchStateOperatorType = Shapes::StringShape.new(name: 'InstancePatchStateOperatorType')
    InstancePatchStatesList = Shapes::ListShape.new(name: 'InstancePatchStatesList')
    InstanceProperties = Shapes::ListShape.new(name: 'InstanceProperties')
    InstanceProperty = Shapes::StructureShape.new(name: 'InstanceProperty')
    InstancePropertyFilter = Shapes::StructureShape.new(name: 'InstancePropertyFilter')
    InstancePropertyFilterKey = Shapes::StringShape.new(name: 'InstancePropertyFilterKey')
    InstancePropertyFilterList = Shapes::ListShape.new(name: 'InstancePropertyFilterList')
    InstancePropertyFilterOperator = Shapes::StringShape.new(name: 'InstancePropertyFilterOperator')
    InstancePropertyFilterValue = Shapes::StringShape.new(name: 'InstancePropertyFilterValue')
    InstancePropertyFilterValueSet = Shapes::ListShape.new(name: 'InstancePropertyFilterValueSet')
    InstancePropertyStringFilter = Shapes::StructureShape.new(name: 'InstancePropertyStringFilter')
    InstancePropertyStringFilterKey = Shapes::StringShape.new(name: 'InstancePropertyStringFilterKey')
    InstancePropertyStringFilterList = Shapes::ListShape.new(name: 'InstancePropertyStringFilterList')
    InstanceRole = Shapes::StringShape.new(name: 'InstanceRole')
    InstanceState = Shapes::StringShape.new(name: 'InstanceState')
    InstanceStatus = Shapes::StringShape.new(name: 'InstanceStatus')
    InstanceTagName = Shapes::StringShape.new(name: 'InstanceTagName')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstancesCount = Shapes::IntegerShape.new(name: 'InstancesCount')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidActivation = Shapes::StructureShape.new(name: 'InvalidActivation')
    InvalidActivationId = Shapes::StructureShape.new(name: 'InvalidActivationId')
    InvalidAggregatorException = Shapes::StructureShape.new(name: 'InvalidAggregatorException')
    InvalidAllowedPatternException = Shapes::StructureShape.new(name: 'InvalidAllowedPatternException')
    InvalidAssociation = Shapes::StructureShape.new(name: 'InvalidAssociation')
    InvalidAssociationVersion = Shapes::StructureShape.new(name: 'InvalidAssociationVersion')
    InvalidAutomationExecutionParametersException = Shapes::StructureShape.new(name: 'InvalidAutomationExecutionParametersException')
    InvalidAutomationSignalException = Shapes::StructureShape.new(name: 'InvalidAutomationSignalException')
    InvalidAutomationStatusUpdateException = Shapes::StructureShape.new(name: 'InvalidAutomationStatusUpdateException')
    InvalidCommandId = Shapes::StructureShape.new(name: 'InvalidCommandId')
    InvalidDeleteInventoryParametersException = Shapes::StructureShape.new(name: 'InvalidDeleteInventoryParametersException')
    InvalidDeletionIdException = Shapes::StructureShape.new(name: 'InvalidDeletionIdException')
    InvalidDocument = Shapes::StructureShape.new(name: 'InvalidDocument')
    InvalidDocumentContent = Shapes::StructureShape.new(name: 'InvalidDocumentContent')
    InvalidDocumentOperation = Shapes::StructureShape.new(name: 'InvalidDocumentOperation')
    InvalidDocumentSchemaVersion = Shapes::StructureShape.new(name: 'InvalidDocumentSchemaVersion')
    InvalidDocumentType = Shapes::StructureShape.new(name: 'InvalidDocumentType')
    InvalidDocumentVersion = Shapes::StructureShape.new(name: 'InvalidDocumentVersion')
    InvalidFilter = Shapes::StructureShape.new(name: 'InvalidFilter')
    InvalidFilterKey = Shapes::StructureShape.new(name: 'InvalidFilterKey')
    InvalidFilterOption = Shapes::StructureShape.new(name: 'InvalidFilterOption')
    InvalidFilterValue = Shapes::StructureShape.new(name: 'InvalidFilterValue')
    InvalidInstanceId = Shapes::StructureShape.new(name: 'InvalidInstanceId')
    InvalidInstanceInformationFilterValue = Shapes::StructureShape.new(name: 'InvalidInstanceInformationFilterValue')
    InvalidInstancePropertyFilterValue = Shapes::StructureShape.new(name: 'InvalidInstancePropertyFilterValue')
    InvalidInventoryGroupException = Shapes::StructureShape.new(name: 'InvalidInventoryGroupException')
    InvalidInventoryItemContextException = Shapes::StructureShape.new(name: 'InvalidInventoryItemContextException')
    InvalidInventoryRequestException = Shapes::StructureShape.new(name: 'InvalidInventoryRequestException')
    InvalidItemContentException = Shapes::StructureShape.new(name: 'InvalidItemContentException')
    InvalidKeyId = Shapes::StructureShape.new(name: 'InvalidKeyId')
    InvalidNextToken = Shapes::StructureShape.new(name: 'InvalidNextToken')
    InvalidNotificationConfig = Shapes::StructureShape.new(name: 'InvalidNotificationConfig')
    InvalidOptionException = Shapes::StructureShape.new(name: 'InvalidOptionException')
    InvalidOutputFolder = Shapes::StructureShape.new(name: 'InvalidOutputFolder')
    InvalidOutputLocation = Shapes::StructureShape.new(name: 'InvalidOutputLocation')
    InvalidParameters = Shapes::StructureShape.new(name: 'InvalidParameters')
    InvalidPermissionType = Shapes::StructureShape.new(name: 'InvalidPermissionType')
    InvalidPluginName = Shapes::StructureShape.new(name: 'InvalidPluginName')
    InvalidPolicyAttributeException = Shapes::StructureShape.new(name: 'InvalidPolicyAttributeException')
    InvalidPolicyTypeException = Shapes::StructureShape.new(name: 'InvalidPolicyTypeException')
    InvalidResourceId = Shapes::StructureShape.new(name: 'InvalidResourceId')
    InvalidResourceType = Shapes::StructureShape.new(name: 'InvalidResourceType')
    InvalidResultAttributeException = Shapes::StructureShape.new(name: 'InvalidResultAttributeException')
    InvalidRole = Shapes::StructureShape.new(name: 'InvalidRole')
    InvalidSchedule = Shapes::StructureShape.new(name: 'InvalidSchedule')
    InvalidTag = Shapes::StructureShape.new(name: 'InvalidTag')
    InvalidTarget = Shapes::StructureShape.new(name: 'InvalidTarget')
    InvalidTargetMaps = Shapes::StructureShape.new(name: 'InvalidTargetMaps')
    InvalidTypeNameException = Shapes::StructureShape.new(name: 'InvalidTypeNameException')
    InvalidUpdate = Shapes::StructureShape.new(name: 'InvalidUpdate')
    InventoryAggregator = Shapes::StructureShape.new(name: 'InventoryAggregator')
    InventoryAggregatorExpression = Shapes::StringShape.new(name: 'InventoryAggregatorExpression')
    InventoryAggregatorList = Shapes::ListShape.new(name: 'InventoryAggregatorList')
    InventoryAttributeDataType = Shapes::StringShape.new(name: 'InventoryAttributeDataType')
    InventoryDeletionLastStatusMessage = Shapes::StringShape.new(name: 'InventoryDeletionLastStatusMessage')
    InventoryDeletionLastStatusUpdateTime = Shapes::TimestampShape.new(name: 'InventoryDeletionLastStatusUpdateTime')
    InventoryDeletionStartTime = Shapes::TimestampShape.new(name: 'InventoryDeletionStartTime')
    InventoryDeletionStatus = Shapes::StringShape.new(name: 'InventoryDeletionStatus')
    InventoryDeletionStatusItem = Shapes::StructureShape.new(name: 'InventoryDeletionStatusItem')
    InventoryDeletionSummary = Shapes::StructureShape.new(name: 'InventoryDeletionSummary')
    InventoryDeletionSummaryItem = Shapes::StructureShape.new(name: 'InventoryDeletionSummaryItem')
    InventoryDeletionSummaryItems = Shapes::ListShape.new(name: 'InventoryDeletionSummaryItems')
    InventoryDeletionsList = Shapes::ListShape.new(name: 'InventoryDeletionsList')
    InventoryFilter = Shapes::StructureShape.new(name: 'InventoryFilter')
    InventoryFilterKey = Shapes::StringShape.new(name: 'InventoryFilterKey')
    InventoryFilterList = Shapes::ListShape.new(name: 'InventoryFilterList')
    InventoryFilterValue = Shapes::StringShape.new(name: 'InventoryFilterValue')
    InventoryFilterValueList = Shapes::ListShape.new(name: 'InventoryFilterValueList')
    InventoryGroup = Shapes::StructureShape.new(name: 'InventoryGroup')
    InventoryGroupList = Shapes::ListShape.new(name: 'InventoryGroupList')
    InventoryGroupName = Shapes::StringShape.new(name: 'InventoryGroupName')
    InventoryItem = Shapes::StructureShape.new(name: 'InventoryItem')
    InventoryItemAttribute = Shapes::StructureShape.new(name: 'InventoryItemAttribute')
    InventoryItemAttributeList = Shapes::ListShape.new(name: 'InventoryItemAttributeList')
    InventoryItemAttributeName = Shapes::StringShape.new(name: 'InventoryItemAttributeName')
    InventoryItemCaptureTime = Shapes::StringShape.new(name: 'InventoryItemCaptureTime')
    InventoryItemContentContext = Shapes::MapShape.new(name: 'InventoryItemContentContext')
    InventoryItemContentHash = Shapes::StringShape.new(name: 'InventoryItemContentHash')
    InventoryItemEntry = Shapes::MapShape.new(name: 'InventoryItemEntry')
    InventoryItemEntryList = Shapes::ListShape.new(name: 'InventoryItemEntryList')
    InventoryItemList = Shapes::ListShape.new(name: 'InventoryItemList')
    InventoryItemSchema = Shapes::StructureShape.new(name: 'InventoryItemSchema')
    InventoryItemSchemaResultList = Shapes::ListShape.new(name: 'InventoryItemSchemaResultList')
    InventoryItemSchemaVersion = Shapes::StringShape.new(name: 'InventoryItemSchemaVersion')
    InventoryItemTypeName = Shapes::StringShape.new(name: 'InventoryItemTypeName')
    InventoryItemTypeNameFilter = Shapes::StringShape.new(name: 'InventoryItemTypeNameFilter')
    InventoryQueryOperatorType = Shapes::StringShape.new(name: 'InventoryQueryOperatorType')
    InventoryResultEntity = Shapes::StructureShape.new(name: 'InventoryResultEntity')
    InventoryResultEntityId = Shapes::StringShape.new(name: 'InventoryResultEntityId')
    InventoryResultEntityList = Shapes::ListShape.new(name: 'InventoryResultEntityList')
    InventoryResultItem = Shapes::StructureShape.new(name: 'InventoryResultItem')
    InventoryResultItemKey = Shapes::StringShape.new(name: 'InventoryResultItemKey')
    InventoryResultItemMap = Shapes::MapShape.new(name: 'InventoryResultItemMap')
    InventorySchemaDeleteOption = Shapes::StringShape.new(name: 'InventorySchemaDeleteOption')
    InventoryTypeDisplayName = Shapes::StringShape.new(name: 'InventoryTypeDisplayName')
    InvocationDoesNotExist = Shapes::StructureShape.new(name: 'InvocationDoesNotExist')
    InvocationTraceOutput = Shapes::StringShape.new(name: 'InvocationTraceOutput')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IsSubTypeSchema = Shapes::BooleanShape.new(name: 'IsSubTypeSchema')
    ItemContentMismatchException = Shapes::StructureShape.new(name: 'ItemContentMismatchException')
    ItemSizeLimitExceededException = Shapes::StructureShape.new(name: 'ItemSizeLimitExceededException')
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    KeyName = Shapes::StringShape.new(name: 'KeyName')
    LabelParameterVersionRequest = Shapes::StructureShape.new(name: 'LabelParameterVersionRequest')
    LabelParameterVersionResult = Shapes::StructureShape.new(name: 'LabelParameterVersionResult')
    LastResourceDataSyncMessage = Shapes::StringShape.new(name: 'LastResourceDataSyncMessage')
    LastResourceDataSyncStatus = Shapes::StringShape.new(name: 'LastResourceDataSyncStatus')
    LastResourceDataSyncTime = Shapes::TimestampShape.new(name: 'LastResourceDataSyncTime')
    LastSuccessfulResourceDataSyncTime = Shapes::TimestampShape.new(name: 'LastSuccessfulResourceDataSyncTime')
    ListAssociationVersionsRequest = Shapes::StructureShape.new(name: 'ListAssociationVersionsRequest')
    ListAssociationVersionsResult = Shapes::StructureShape.new(name: 'ListAssociationVersionsResult')
    ListAssociationsRequest = Shapes::StructureShape.new(name: 'ListAssociationsRequest')
    ListAssociationsResult = Shapes::StructureShape.new(name: 'ListAssociationsResult')
    ListCommandInvocationsRequest = Shapes::StructureShape.new(name: 'ListCommandInvocationsRequest')
    ListCommandInvocationsResult = Shapes::StructureShape.new(name: 'ListCommandInvocationsResult')
    ListCommandsRequest = Shapes::StructureShape.new(name: 'ListCommandsRequest')
    ListCommandsResult = Shapes::StructureShape.new(name: 'ListCommandsResult')
    ListComplianceItemsRequest = Shapes::StructureShape.new(name: 'ListComplianceItemsRequest')
    ListComplianceItemsResult = Shapes::StructureShape.new(name: 'ListComplianceItemsResult')
    ListComplianceSummariesRequest = Shapes::StructureShape.new(name: 'ListComplianceSummariesRequest')
    ListComplianceSummariesResult = Shapes::StructureShape.new(name: 'ListComplianceSummariesResult')
    ListDocumentMetadataHistoryRequest = Shapes::StructureShape.new(name: 'ListDocumentMetadataHistoryRequest')
    ListDocumentMetadataHistoryResponse = Shapes::StructureShape.new(name: 'ListDocumentMetadataHistoryResponse')
    ListDocumentVersionsRequest = Shapes::StructureShape.new(name: 'ListDocumentVersionsRequest')
    ListDocumentVersionsResult = Shapes::StructureShape.new(name: 'ListDocumentVersionsResult')
    ListDocumentsRequest = Shapes::StructureShape.new(name: 'ListDocumentsRequest')
    ListDocumentsResult = Shapes::StructureShape.new(name: 'ListDocumentsResult')
    ListInventoryEntriesRequest = Shapes::StructureShape.new(name: 'ListInventoryEntriesRequest')
    ListInventoryEntriesResult = Shapes::StructureShape.new(name: 'ListInventoryEntriesResult')
    ListNodesRequest = Shapes::StructureShape.new(name: 'ListNodesRequest')
    ListNodesResult = Shapes::StructureShape.new(name: 'ListNodesResult')
    ListNodesSummaryRequest = Shapes::StructureShape.new(name: 'ListNodesSummaryRequest')
    ListNodesSummaryResult = Shapes::StructureShape.new(name: 'ListNodesSummaryResult')
    ListOpsItemEventsRequest = Shapes::StructureShape.new(name: 'ListOpsItemEventsRequest')
    ListOpsItemEventsResponse = Shapes::StructureShape.new(name: 'ListOpsItemEventsResponse')
    ListOpsItemRelatedItemsRequest = Shapes::StructureShape.new(name: 'ListOpsItemRelatedItemsRequest')
    ListOpsItemRelatedItemsResponse = Shapes::StructureShape.new(name: 'ListOpsItemRelatedItemsResponse')
    ListOpsMetadataMaxResults = Shapes::IntegerShape.new(name: 'ListOpsMetadataMaxResults')
    ListOpsMetadataRequest = Shapes::StructureShape.new(name: 'ListOpsMetadataRequest')
    ListOpsMetadataResult = Shapes::StructureShape.new(name: 'ListOpsMetadataResult')
    ListResourceComplianceSummariesRequest = Shapes::StructureShape.new(name: 'ListResourceComplianceSummariesRequest')
    ListResourceComplianceSummariesResult = Shapes::StructureShape.new(name: 'ListResourceComplianceSummariesResult')
    ListResourceDataSyncRequest = Shapes::StructureShape.new(name: 'ListResourceDataSyncRequest')
    ListResourceDataSyncResult = Shapes::StructureShape.new(name: 'ListResourceDataSyncResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    LoggingInfo = Shapes::StructureShape.new(name: 'LoggingInfo')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaintenanceWindowAllowUnassociatedTargets = Shapes::BooleanShape.new(name: 'MaintenanceWindowAllowUnassociatedTargets')
    MaintenanceWindowAutomationParameters = Shapes::StructureShape.new(name: 'MaintenanceWindowAutomationParameters')
    MaintenanceWindowCutoff = Shapes::IntegerShape.new(name: 'MaintenanceWindowCutoff')
    MaintenanceWindowDescription = Shapes::StringShape.new(name: 'MaintenanceWindowDescription')
    MaintenanceWindowDurationHours = Shapes::IntegerShape.new(name: 'MaintenanceWindowDurationHours')
    MaintenanceWindowEnabled = Shapes::BooleanShape.new(name: 'MaintenanceWindowEnabled')
    MaintenanceWindowExecution = Shapes::StructureShape.new(name: 'MaintenanceWindowExecution')
    MaintenanceWindowExecutionId = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionId')
    MaintenanceWindowExecutionList = Shapes::ListShape.new(name: 'MaintenanceWindowExecutionList')
    MaintenanceWindowExecutionStatus = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionStatus')
    MaintenanceWindowExecutionStatusDetails = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionStatusDetails')
    MaintenanceWindowExecutionTaskExecutionId = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionTaskExecutionId')
    MaintenanceWindowExecutionTaskId = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionTaskId')
    MaintenanceWindowExecutionTaskIdList = Shapes::ListShape.new(name: 'MaintenanceWindowExecutionTaskIdList')
    MaintenanceWindowExecutionTaskIdentity = Shapes::StructureShape.new(name: 'MaintenanceWindowExecutionTaskIdentity')
    MaintenanceWindowExecutionTaskIdentityList = Shapes::ListShape.new(name: 'MaintenanceWindowExecutionTaskIdentityList')
    MaintenanceWindowExecutionTaskInvocationId = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionTaskInvocationId')
    MaintenanceWindowExecutionTaskInvocationIdentity = Shapes::StructureShape.new(name: 'MaintenanceWindowExecutionTaskInvocationIdentity')
    MaintenanceWindowExecutionTaskInvocationIdentityList = Shapes::ListShape.new(name: 'MaintenanceWindowExecutionTaskInvocationIdentityList')
    MaintenanceWindowExecutionTaskInvocationParameters = Shapes::StringShape.new(name: 'MaintenanceWindowExecutionTaskInvocationParameters')
    MaintenanceWindowFilter = Shapes::StructureShape.new(name: 'MaintenanceWindowFilter')
    MaintenanceWindowFilterKey = Shapes::StringShape.new(name: 'MaintenanceWindowFilterKey')
    MaintenanceWindowFilterList = Shapes::ListShape.new(name: 'MaintenanceWindowFilterList')
    MaintenanceWindowFilterValue = Shapes::StringShape.new(name: 'MaintenanceWindowFilterValue')
    MaintenanceWindowFilterValues = Shapes::ListShape.new(name: 'MaintenanceWindowFilterValues')
    MaintenanceWindowId = Shapes::StringShape.new(name: 'MaintenanceWindowId')
    MaintenanceWindowIdentity = Shapes::StructureShape.new(name: 'MaintenanceWindowIdentity')
    MaintenanceWindowIdentityForTarget = Shapes::StructureShape.new(name: 'MaintenanceWindowIdentityForTarget')
    MaintenanceWindowIdentityList = Shapes::ListShape.new(name: 'MaintenanceWindowIdentityList')
    MaintenanceWindowLambdaClientContext = Shapes::StringShape.new(name: 'MaintenanceWindowLambdaClientContext')
    MaintenanceWindowLambdaParameters = Shapes::StructureShape.new(name: 'MaintenanceWindowLambdaParameters')
    MaintenanceWindowLambdaPayload = Shapes::BlobShape.new(name: 'MaintenanceWindowLambdaPayload')
    MaintenanceWindowLambdaQualifier = Shapes::StringShape.new(name: 'MaintenanceWindowLambdaQualifier')
    MaintenanceWindowMaxResults = Shapes::IntegerShape.new(name: 'MaintenanceWindowMaxResults')
    MaintenanceWindowName = Shapes::StringShape.new(name: 'MaintenanceWindowName')
    MaintenanceWindowOffset = Shapes::IntegerShape.new(name: 'MaintenanceWindowOffset')
    MaintenanceWindowResourceType = Shapes::StringShape.new(name: 'MaintenanceWindowResourceType')
    MaintenanceWindowRunCommandParameters = Shapes::StructureShape.new(name: 'MaintenanceWindowRunCommandParameters')
    MaintenanceWindowSchedule = Shapes::StringShape.new(name: 'MaintenanceWindowSchedule')
    MaintenanceWindowSearchMaxResults = Shapes::IntegerShape.new(name: 'MaintenanceWindowSearchMaxResults')
    MaintenanceWindowStepFunctionsInput = Shapes::StringShape.new(name: 'MaintenanceWindowStepFunctionsInput')
    MaintenanceWindowStepFunctionsName = Shapes::StringShape.new(name: 'MaintenanceWindowStepFunctionsName')
    MaintenanceWindowStepFunctionsParameters = Shapes::StructureShape.new(name: 'MaintenanceWindowStepFunctionsParameters')
    MaintenanceWindowStringDateTime = Shapes::StringShape.new(name: 'MaintenanceWindowStringDateTime')
    MaintenanceWindowTarget = Shapes::StructureShape.new(name: 'MaintenanceWindowTarget')
    MaintenanceWindowTargetId = Shapes::StringShape.new(name: 'MaintenanceWindowTargetId')
    MaintenanceWindowTargetList = Shapes::ListShape.new(name: 'MaintenanceWindowTargetList')
    MaintenanceWindowTask = Shapes::StructureShape.new(name: 'MaintenanceWindowTask')
    MaintenanceWindowTaskArn = Shapes::StringShape.new(name: 'MaintenanceWindowTaskArn')
    MaintenanceWindowTaskCutoffBehavior = Shapes::StringShape.new(name: 'MaintenanceWindowTaskCutoffBehavior')
    MaintenanceWindowTaskId = Shapes::StringShape.new(name: 'MaintenanceWindowTaskId')
    MaintenanceWindowTaskInvocationParameters = Shapes::StructureShape.new(name: 'MaintenanceWindowTaskInvocationParameters')
    MaintenanceWindowTaskList = Shapes::ListShape.new(name: 'MaintenanceWindowTaskList')
    MaintenanceWindowTaskParameterName = Shapes::StringShape.new(name: 'MaintenanceWindowTaskParameterName')
    MaintenanceWindowTaskParameterValue = Shapes::StringShape.new(name: 'MaintenanceWindowTaskParameterValue')
    MaintenanceWindowTaskParameterValueExpression = Shapes::StructureShape.new(name: 'MaintenanceWindowTaskParameterValueExpression')
    MaintenanceWindowTaskParameterValueList = Shapes::ListShape.new(name: 'MaintenanceWindowTaskParameterValueList')
    MaintenanceWindowTaskParameters = Shapes::MapShape.new(name: 'MaintenanceWindowTaskParameters')
    MaintenanceWindowTaskParametersList = Shapes::ListShape.new(name: 'MaintenanceWindowTaskParametersList')
    MaintenanceWindowTaskPriority = Shapes::IntegerShape.new(name: 'MaintenanceWindowTaskPriority')
    MaintenanceWindowTaskTargetId = Shapes::StringShape.new(name: 'MaintenanceWindowTaskTargetId')
    MaintenanceWindowTaskType = Shapes::StringShape.new(name: 'MaintenanceWindowTaskType')
    MaintenanceWindowTimezone = Shapes::StringShape.new(name: 'MaintenanceWindowTimezone')
    MaintenanceWindowsForTargetList = Shapes::ListShape.new(name: 'MaintenanceWindowsForTargetList')
    MalformedResourcePolicyDocumentException = Shapes::StructureShape.new(name: 'MalformedResourcePolicyDocumentException')
    ManagedInstanceId = Shapes::StringShape.new(name: 'ManagedInstanceId')
    ManagedStatus = Shapes::StringShape.new(name: 'ManagedStatus')
    MaxConcurrency = Shapes::StringShape.new(name: 'MaxConcurrency')
    MaxDocumentSizeExceeded = Shapes::StructureShape.new(name: 'MaxDocumentSizeExceeded')
    MaxErrors = Shapes::StringShape.new(name: 'MaxErrors')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxResultsEC2Compatible = Shapes::IntegerShape.new(name: 'MaxResultsEC2Compatible')
    MaxSessionDuration = Shapes::StringShape.new(name: 'MaxSessionDuration')
    MetadataKey = Shapes::StringShape.new(name: 'MetadataKey')
    MetadataKeysToDeleteList = Shapes::ListShape.new(name: 'MetadataKeysToDeleteList')
    MetadataMap = Shapes::MapShape.new(name: 'MetadataMap')
    MetadataValue = Shapes::StructureShape.new(name: 'MetadataValue')
    MetadataValueString = Shapes::StringShape.new(name: 'MetadataValueString')
    ModifyDocumentPermissionRequest = Shapes::StructureShape.new(name: 'ModifyDocumentPermissionRequest')
    ModifyDocumentPermissionResponse = Shapes::StructureShape.new(name: 'ModifyDocumentPermissionResponse')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Node = Shapes::StructureShape.new(name: 'Node')
    NodeAccountId = Shapes::StringShape.new(name: 'NodeAccountId')
    NodeAggregator = Shapes::StructureShape.new(name: 'NodeAggregator')
    NodeAggregatorList = Shapes::ListShape.new(name: 'NodeAggregatorList')
    NodeAggregatorType = Shapes::StringShape.new(name: 'NodeAggregatorType')
    NodeAttributeName = Shapes::StringShape.new(name: 'NodeAttributeName')
    NodeCaptureTime = Shapes::TimestampShape.new(name: 'NodeCaptureTime')
    NodeFilter = Shapes::StructureShape.new(name: 'NodeFilter')
    NodeFilterKey = Shapes::StringShape.new(name: 'NodeFilterKey')
    NodeFilterList = Shapes::ListShape.new(name: 'NodeFilterList')
    NodeFilterOperatorType = Shapes::StringShape.new(name: 'NodeFilterOperatorType')
    NodeFilterValue = Shapes::StringShape.new(name: 'NodeFilterValue')
    NodeFilterValueList = Shapes::ListShape.new(name: 'NodeFilterValueList')
    NodeId = Shapes::StringShape.new(name: 'NodeId')
    NodeList = Shapes::ListShape.new(name: 'NodeList')
    NodeOrganizationalUnitId = Shapes::StringShape.new(name: 'NodeOrganizationalUnitId')
    NodeOrganizationalUnitPath = Shapes::StringShape.new(name: 'NodeOrganizationalUnitPath')
    NodeOwnerInfo = Shapes::StructureShape.new(name: 'NodeOwnerInfo')
    NodeRegion = Shapes::StringShape.new(name: 'NodeRegion')
    NodeSummary = Shapes::MapShape.new(name: 'NodeSummary')
    NodeSummaryList = Shapes::ListShape.new(name: 'NodeSummaryList')
    NodeType = Shapes::UnionShape.new(name: 'NodeType')
    NodeTypeName = Shapes::StringShape.new(name: 'NodeTypeName')
    NonCompliantSummary = Shapes::StructureShape.new(name: 'NonCompliantSummary')
    NormalStringMap = Shapes::MapShape.new(name: 'NormalStringMap')
    NotificationArn = Shapes::StringShape.new(name: 'NotificationArn')
    NotificationConfig = Shapes::StructureShape.new(name: 'NotificationConfig')
    NotificationEvent = Shapes::StringShape.new(name: 'NotificationEvent')
    NotificationEventList = Shapes::ListShape.new(name: 'NotificationEventList')
    NotificationType = Shapes::StringShape.new(name: 'NotificationType')
    OperatingSystem = Shapes::StringShape.new(name: 'OperatingSystem')
    OpsAggregator = Shapes::StructureShape.new(name: 'OpsAggregator')
    OpsAggregatorList = Shapes::ListShape.new(name: 'OpsAggregatorList')
    OpsAggregatorType = Shapes::StringShape.new(name: 'OpsAggregatorType')
    OpsAggregatorValue = Shapes::StringShape.new(name: 'OpsAggregatorValue')
    OpsAggregatorValueKey = Shapes::StringShape.new(name: 'OpsAggregatorValueKey')
    OpsAggregatorValueMap = Shapes::MapShape.new(name: 'OpsAggregatorValueMap')
    OpsDataAttributeName = Shapes::StringShape.new(name: 'OpsDataAttributeName')
    OpsDataTypeName = Shapes::StringShape.new(name: 'OpsDataTypeName')
    OpsEntity = Shapes::StructureShape.new(name: 'OpsEntity')
    OpsEntityId = Shapes::StringShape.new(name: 'OpsEntityId')
    OpsEntityItem = Shapes::StructureShape.new(name: 'OpsEntityItem')
    OpsEntityItemCaptureTime = Shapes::StringShape.new(name: 'OpsEntityItemCaptureTime')
    OpsEntityItemEntry = Shapes::MapShape.new(name: 'OpsEntityItemEntry')
    OpsEntityItemEntryList = Shapes::ListShape.new(name: 'OpsEntityItemEntryList')
    OpsEntityItemKey = Shapes::StringShape.new(name: 'OpsEntityItemKey')
    OpsEntityItemMap = Shapes::MapShape.new(name: 'OpsEntityItemMap')
    OpsEntityList = Shapes::ListShape.new(name: 'OpsEntityList')
    OpsFilter = Shapes::StructureShape.new(name: 'OpsFilter')
    OpsFilterKey = Shapes::StringShape.new(name: 'OpsFilterKey')
    OpsFilterList = Shapes::ListShape.new(name: 'OpsFilterList')
    OpsFilterOperatorType = Shapes::StringShape.new(name: 'OpsFilterOperatorType')
    OpsFilterValue = Shapes::StringShape.new(name: 'OpsFilterValue')
    OpsFilterValueList = Shapes::ListShape.new(name: 'OpsFilterValueList')
    OpsItem = Shapes::StructureShape.new(name: 'OpsItem')
    OpsItemAccessDeniedException = Shapes::StructureShape.new(name: 'OpsItemAccessDeniedException')
    OpsItemAccountId = Shapes::StringShape.new(name: 'OpsItemAccountId')
    OpsItemAlreadyExistsException = Shapes::StructureShape.new(name: 'OpsItemAlreadyExistsException')
    OpsItemArn = Shapes::StringShape.new(name: 'OpsItemArn')
    OpsItemCategory = Shapes::StringShape.new(name: 'OpsItemCategory')
    OpsItemConflictException = Shapes::StructureShape.new(name: 'OpsItemConflictException')
    OpsItemDataKey = Shapes::StringShape.new(name: 'OpsItemDataKey')
    OpsItemDataType = Shapes::StringShape.new(name: 'OpsItemDataType')
    OpsItemDataValue = Shapes::StructureShape.new(name: 'OpsItemDataValue')
    OpsItemDataValueString = Shapes::StringShape.new(name: 'OpsItemDataValueString')
    OpsItemDescription = Shapes::StringShape.new(name: 'OpsItemDescription')
    OpsItemEventFilter = Shapes::StructureShape.new(name: 'OpsItemEventFilter')
    OpsItemEventFilterKey = Shapes::StringShape.new(name: 'OpsItemEventFilterKey')
    OpsItemEventFilterOperator = Shapes::StringShape.new(name: 'OpsItemEventFilterOperator')
    OpsItemEventFilterValue = Shapes::StringShape.new(name: 'OpsItemEventFilterValue')
    OpsItemEventFilterValues = Shapes::ListShape.new(name: 'OpsItemEventFilterValues')
    OpsItemEventFilters = Shapes::ListShape.new(name: 'OpsItemEventFilters')
    OpsItemEventMaxResults = Shapes::IntegerShape.new(name: 'OpsItemEventMaxResults')
    OpsItemEventSummaries = Shapes::ListShape.new(name: 'OpsItemEventSummaries')
    OpsItemEventSummary = Shapes::StructureShape.new(name: 'OpsItemEventSummary')
    OpsItemFilter = Shapes::StructureShape.new(name: 'OpsItemFilter')
    OpsItemFilterKey = Shapes::StringShape.new(name: 'OpsItemFilterKey')
    OpsItemFilterOperator = Shapes::StringShape.new(name: 'OpsItemFilterOperator')
    OpsItemFilterValue = Shapes::StringShape.new(name: 'OpsItemFilterValue')
    OpsItemFilterValues = Shapes::ListShape.new(name: 'OpsItemFilterValues')
    OpsItemFilters = Shapes::ListShape.new(name: 'OpsItemFilters')
    OpsItemId = Shapes::StringShape.new(name: 'OpsItemId')
    OpsItemIdentity = Shapes::StructureShape.new(name: 'OpsItemIdentity')
    OpsItemInvalidParameterException = Shapes::StructureShape.new(name: 'OpsItemInvalidParameterException')
    OpsItemLimitExceededException = Shapes::StructureShape.new(name: 'OpsItemLimitExceededException')
    OpsItemMaxResults = Shapes::IntegerShape.new(name: 'OpsItemMaxResults')
    OpsItemNotFoundException = Shapes::StructureShape.new(name: 'OpsItemNotFoundException')
    OpsItemNotification = Shapes::StructureShape.new(name: 'OpsItemNotification')
    OpsItemNotifications = Shapes::ListShape.new(name: 'OpsItemNotifications')
    OpsItemOperationalData = Shapes::MapShape.new(name: 'OpsItemOperationalData')
    OpsItemOpsDataKeysList = Shapes::ListShape.new(name: 'OpsItemOpsDataKeysList')
    OpsItemParameterNamesList = Shapes::ListShape.new(name: 'OpsItemParameterNamesList')
    OpsItemPriority = Shapes::IntegerShape.new(name: 'OpsItemPriority')
    OpsItemRelatedItemAlreadyExistsException = Shapes::StructureShape.new(name: 'OpsItemRelatedItemAlreadyExistsException')
    OpsItemRelatedItemAssociationId = Shapes::StringShape.new(name: 'OpsItemRelatedItemAssociationId')
    OpsItemRelatedItemAssociationNotFoundException = Shapes::StructureShape.new(name: 'OpsItemRelatedItemAssociationNotFoundException')
    OpsItemRelatedItemAssociationResourceType = Shapes::StringShape.new(name: 'OpsItemRelatedItemAssociationResourceType')
    OpsItemRelatedItemAssociationResourceUri = Shapes::StringShape.new(name: 'OpsItemRelatedItemAssociationResourceUri')
    OpsItemRelatedItemAssociationType = Shapes::StringShape.new(name: 'OpsItemRelatedItemAssociationType')
    OpsItemRelatedItemSummaries = Shapes::ListShape.new(name: 'OpsItemRelatedItemSummaries')
    OpsItemRelatedItemSummary = Shapes::StructureShape.new(name: 'OpsItemRelatedItemSummary')
    OpsItemRelatedItemsFilter = Shapes::StructureShape.new(name: 'OpsItemRelatedItemsFilter')
    OpsItemRelatedItemsFilterKey = Shapes::StringShape.new(name: 'OpsItemRelatedItemsFilterKey')
    OpsItemRelatedItemsFilterOperator = Shapes::StringShape.new(name: 'OpsItemRelatedItemsFilterOperator')
    OpsItemRelatedItemsFilterValue = Shapes::StringShape.new(name: 'OpsItemRelatedItemsFilterValue')
    OpsItemRelatedItemsFilterValues = Shapes::ListShape.new(name: 'OpsItemRelatedItemsFilterValues')
    OpsItemRelatedItemsFilters = Shapes::ListShape.new(name: 'OpsItemRelatedItemsFilters')
    OpsItemRelatedItemsMaxResults = Shapes::IntegerShape.new(name: 'OpsItemRelatedItemsMaxResults')
    OpsItemSeverity = Shapes::StringShape.new(name: 'OpsItemSeverity')
    OpsItemSource = Shapes::StringShape.new(name: 'OpsItemSource')
    OpsItemStatus = Shapes::StringShape.new(name: 'OpsItemStatus')
    OpsItemSummaries = Shapes::ListShape.new(name: 'OpsItemSummaries')
    OpsItemSummary = Shapes::StructureShape.new(name: 'OpsItemSummary')
    OpsItemTitle = Shapes::StringShape.new(name: 'OpsItemTitle')
    OpsItemType = Shapes::StringShape.new(name: 'OpsItemType')
    OpsMetadata = Shapes::StructureShape.new(name: 'OpsMetadata')
    OpsMetadataAlreadyExistsException = Shapes::StructureShape.new(name: 'OpsMetadataAlreadyExistsException')
    OpsMetadataArn = Shapes::StringShape.new(name: 'OpsMetadataArn')
    OpsMetadataFilter = Shapes::StructureShape.new(name: 'OpsMetadataFilter')
    OpsMetadataFilterKey = Shapes::StringShape.new(name: 'OpsMetadataFilterKey')
    OpsMetadataFilterList = Shapes::ListShape.new(name: 'OpsMetadataFilterList')
    OpsMetadataFilterValue = Shapes::StringShape.new(name: 'OpsMetadataFilterValue')
    OpsMetadataFilterValueList = Shapes::ListShape.new(name: 'OpsMetadataFilterValueList')
    OpsMetadataInvalidArgumentException = Shapes::StructureShape.new(name: 'OpsMetadataInvalidArgumentException')
    OpsMetadataKeyLimitExceededException = Shapes::StructureShape.new(name: 'OpsMetadataKeyLimitExceededException')
    OpsMetadataLimitExceededException = Shapes::StructureShape.new(name: 'OpsMetadataLimitExceededException')
    OpsMetadataList = Shapes::ListShape.new(name: 'OpsMetadataList')
    OpsMetadataNotFoundException = Shapes::StructureShape.new(name: 'OpsMetadataNotFoundException')
    OpsMetadataResourceId = Shapes::StringShape.new(name: 'OpsMetadataResourceId')
    OpsMetadataTooManyUpdatesException = Shapes::StructureShape.new(name: 'OpsMetadataTooManyUpdatesException')
    OpsResultAttribute = Shapes::StructureShape.new(name: 'OpsResultAttribute')
    OpsResultAttributeList = Shapes::ListShape.new(name: 'OpsResultAttributeList')
    OutputSource = Shapes::StructureShape.new(name: 'OutputSource')
    OutputSourceId = Shapes::StringShape.new(name: 'OutputSourceId')
    OutputSourceType = Shapes::StringShape.new(name: 'OutputSourceType')
    OwnerInformation = Shapes::StringShape.new(name: 'OwnerInformation')
    PSParameterName = Shapes::StringShape.new(name: 'PSParameterName')
    PSParameterSelector = Shapes::StringShape.new(name: 'PSParameterSelector')
    PSParameterValue = Shapes::StringShape.new(name: 'PSParameterValue')
    PSParameterVersion = Shapes::IntegerShape.new(name: 'PSParameterVersion')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParameterAlreadyExists = Shapes::StructureShape.new(name: 'ParameterAlreadyExists')
    ParameterDataType = Shapes::StringShape.new(name: 'ParameterDataType')
    ParameterDescription = Shapes::StringShape.new(name: 'ParameterDescription')
    ParameterHistory = Shapes::StructureShape.new(name: 'ParameterHistory')
    ParameterHistoryList = Shapes::ListShape.new(name: 'ParameterHistoryList')
    ParameterInlinePolicy = Shapes::StructureShape.new(name: 'ParameterInlinePolicy')
    ParameterKeyId = Shapes::StringShape.new(name: 'ParameterKeyId')
    ParameterLabel = Shapes::StringShape.new(name: 'ParameterLabel')
    ParameterLabelList = Shapes::ListShape.new(name: 'ParameterLabelList')
    ParameterLimitExceeded = Shapes::StructureShape.new(name: 'ParameterLimitExceeded')
    ParameterList = Shapes::ListShape.new(name: 'ParameterList')
    ParameterMaxVersionLimitExceeded = Shapes::StructureShape.new(name: 'ParameterMaxVersionLimitExceeded')
    ParameterMetadata = Shapes::StructureShape.new(name: 'ParameterMetadata')
    ParameterMetadataList = Shapes::ListShape.new(name: 'ParameterMetadataList')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterNameList = Shapes::ListShape.new(name: 'ParameterNameList')
    ParameterNotFound = Shapes::StructureShape.new(name: 'ParameterNotFound')
    ParameterPatternMismatchException = Shapes::StructureShape.new(name: 'ParameterPatternMismatchException')
    ParameterPolicies = Shapes::StringShape.new(name: 'ParameterPolicies')
    ParameterPolicyList = Shapes::ListShape.new(name: 'ParameterPolicyList')
    ParameterStringFilter = Shapes::StructureShape.new(name: 'ParameterStringFilter')
    ParameterStringFilterKey = Shapes::StringShape.new(name: 'ParameterStringFilterKey')
    ParameterStringFilterList = Shapes::ListShape.new(name: 'ParameterStringFilterList')
    ParameterStringFilterValue = Shapes::StringShape.new(name: 'ParameterStringFilterValue')
    ParameterStringFilterValueList = Shapes::ListShape.new(name: 'ParameterStringFilterValueList')
    ParameterStringQueryOption = Shapes::StringShape.new(name: 'ParameterStringQueryOption')
    ParameterTier = Shapes::StringShape.new(name: 'ParameterTier')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    ParameterValueList = Shapes::ListShape.new(name: 'ParameterValueList')
    ParameterVersionLabelLimitExceeded = Shapes::StructureShape.new(name: 'ParameterVersionLabelLimitExceeded')
    ParameterVersionNotFound = Shapes::StructureShape.new(name: 'ParameterVersionNotFound')
    Parameters = Shapes::MapShape.new(name: 'Parameters')
    ParametersFilter = Shapes::StructureShape.new(name: 'ParametersFilter')
    ParametersFilterKey = Shapes::StringShape.new(name: 'ParametersFilterKey')
    ParametersFilterList = Shapes::ListShape.new(name: 'ParametersFilterList')
    ParametersFilterValue = Shapes::StringShape.new(name: 'ParametersFilterValue')
    ParametersFilterValueList = Shapes::ListShape.new(name: 'ParametersFilterValueList')
    ParentStepDetails = Shapes::StructureShape.new(name: 'ParentStepDetails')
    Patch = Shapes::StructureShape.new(name: 'Patch')
    PatchAction = Shapes::StringShape.new(name: 'PatchAction')
    PatchAdvisoryId = Shapes::StringShape.new(name: 'PatchAdvisoryId')
    PatchAdvisoryIdList = Shapes::ListShape.new(name: 'PatchAdvisoryIdList')
    PatchArch = Shapes::StringShape.new(name: 'PatchArch')
    PatchAvailableSecurityUpdateCount = Shapes::IntegerShape.new(name: 'PatchAvailableSecurityUpdateCount')
    PatchBaselineIdentity = Shapes::StructureShape.new(name: 'PatchBaselineIdentity')
    PatchBaselineIdentityList = Shapes::ListShape.new(name: 'PatchBaselineIdentityList')
    PatchBaselineMaxResults = Shapes::IntegerShape.new(name: 'PatchBaselineMaxResults')
    PatchBugzillaId = Shapes::StringShape.new(name: 'PatchBugzillaId')
    PatchBugzillaIdList = Shapes::ListShape.new(name: 'PatchBugzillaIdList')
    PatchCVEId = Shapes::StringShape.new(name: 'PatchCVEId')
    PatchCVEIdList = Shapes::ListShape.new(name: 'PatchCVEIdList')
    PatchCVEIds = Shapes::StringShape.new(name: 'PatchCVEIds')
    PatchClassification = Shapes::StringShape.new(name: 'PatchClassification')
    PatchComplianceData = Shapes::StructureShape.new(name: 'PatchComplianceData')
    PatchComplianceDataList = Shapes::ListShape.new(name: 'PatchComplianceDataList')
    PatchComplianceDataState = Shapes::StringShape.new(name: 'PatchComplianceDataState')
    PatchComplianceLevel = Shapes::StringShape.new(name: 'PatchComplianceLevel')
    PatchComplianceMaxResults = Shapes::IntegerShape.new(name: 'PatchComplianceMaxResults')
    PatchComplianceStatus = Shapes::StringShape.new(name: 'PatchComplianceStatus')
    PatchContentUrl = Shapes::StringShape.new(name: 'PatchContentUrl')
    PatchCriticalNonCompliantCount = Shapes::IntegerShape.new(name: 'PatchCriticalNonCompliantCount')
    PatchDeploymentStatus = Shapes::StringShape.new(name: 'PatchDeploymentStatus')
    PatchDescription = Shapes::StringShape.new(name: 'PatchDescription')
    PatchEpoch = Shapes::IntegerShape.new(name: 'PatchEpoch')
    PatchFailedCount = Shapes::IntegerShape.new(name: 'PatchFailedCount')
    PatchFilter = Shapes::StructureShape.new(name: 'PatchFilter')
    PatchFilterGroup = Shapes::StructureShape.new(name: 'PatchFilterGroup')
    PatchFilterKey = Shapes::StringShape.new(name: 'PatchFilterKey')
    PatchFilterList = Shapes::ListShape.new(name: 'PatchFilterList')
    PatchFilterValue = Shapes::StringShape.new(name: 'PatchFilterValue')
    PatchFilterValueList = Shapes::ListShape.new(name: 'PatchFilterValueList')
    PatchGroup = Shapes::StringShape.new(name: 'PatchGroup')
    PatchGroupList = Shapes::ListShape.new(name: 'PatchGroupList')
    PatchGroupPatchBaselineMapping = Shapes::StructureShape.new(name: 'PatchGroupPatchBaselineMapping')
    PatchGroupPatchBaselineMappingList = Shapes::ListShape.new(name: 'PatchGroupPatchBaselineMappingList')
    PatchId = Shapes::StringShape.new(name: 'PatchId')
    PatchIdList = Shapes::ListShape.new(name: 'PatchIdList')
    PatchInstalledCount = Shapes::IntegerShape.new(name: 'PatchInstalledCount')
    PatchInstalledOtherCount = Shapes::IntegerShape.new(name: 'PatchInstalledOtherCount')
    PatchInstalledPendingRebootCount = Shapes::IntegerShape.new(name: 'PatchInstalledPendingRebootCount')
    PatchInstalledRejectedCount = Shapes::IntegerShape.new(name: 'PatchInstalledRejectedCount')
    PatchKbNumber = Shapes::StringShape.new(name: 'PatchKbNumber')
    PatchLanguage = Shapes::StringShape.new(name: 'PatchLanguage')
    PatchList = Shapes::ListShape.new(name: 'PatchList')
    PatchMissingCount = Shapes::IntegerShape.new(name: 'PatchMissingCount')
    PatchMsrcNumber = Shapes::StringShape.new(name: 'PatchMsrcNumber')
    PatchMsrcSeverity = Shapes::StringShape.new(name: 'PatchMsrcSeverity')
    PatchName = Shapes::StringShape.new(name: 'PatchName')
    PatchNotApplicableCount = Shapes::IntegerShape.new(name: 'PatchNotApplicableCount')
    PatchOperationType = Shapes::StringShape.new(name: 'PatchOperationType')
    PatchOrchestratorFilter = Shapes::StructureShape.new(name: 'PatchOrchestratorFilter')
    PatchOrchestratorFilterKey = Shapes::StringShape.new(name: 'PatchOrchestratorFilterKey')
    PatchOrchestratorFilterList = Shapes::ListShape.new(name: 'PatchOrchestratorFilterList')
    PatchOrchestratorFilterValue = Shapes::StringShape.new(name: 'PatchOrchestratorFilterValue')
    PatchOrchestratorFilterValues = Shapes::ListShape.new(name: 'PatchOrchestratorFilterValues')
    PatchOtherNonCompliantCount = Shapes::IntegerShape.new(name: 'PatchOtherNonCompliantCount')
    PatchProduct = Shapes::StringShape.new(name: 'PatchProduct')
    PatchProductFamily = Shapes::StringShape.new(name: 'PatchProductFamily')
    PatchPropertiesList = Shapes::ListShape.new(name: 'PatchPropertiesList')
    PatchProperty = Shapes::StringShape.new(name: 'PatchProperty')
    PatchPropertyEntry = Shapes::MapShape.new(name: 'PatchPropertyEntry')
    PatchRelease = Shapes::StringShape.new(name: 'PatchRelease')
    PatchRepository = Shapes::StringShape.new(name: 'PatchRepository')
    PatchRule = Shapes::StructureShape.new(name: 'PatchRule')
    PatchRuleGroup = Shapes::StructureShape.new(name: 'PatchRuleGroup')
    PatchRuleList = Shapes::ListShape.new(name: 'PatchRuleList')
    PatchSecurityNonCompliantCount = Shapes::IntegerShape.new(name: 'PatchSecurityNonCompliantCount')
    PatchSet = Shapes::StringShape.new(name: 'PatchSet')
    PatchSeverity = Shapes::StringShape.new(name: 'PatchSeverity')
    PatchSource = Shapes::StructureShape.new(name: 'PatchSource')
    PatchSourceConfiguration = Shapes::StringShape.new(name: 'PatchSourceConfiguration')
    PatchSourceList = Shapes::ListShape.new(name: 'PatchSourceList')
    PatchSourceName = Shapes::StringShape.new(name: 'PatchSourceName')
    PatchSourceProduct = Shapes::StringShape.new(name: 'PatchSourceProduct')
    PatchSourceProductList = Shapes::ListShape.new(name: 'PatchSourceProductList')
    PatchStatus = Shapes::StructureShape.new(name: 'PatchStatus')
    PatchStringDateTime = Shapes::StringShape.new(name: 'PatchStringDateTime')
    PatchTitle = Shapes::StringShape.new(name: 'PatchTitle')
    PatchUnreportedNotApplicableCount = Shapes::IntegerShape.new(name: 'PatchUnreportedNotApplicableCount')
    PatchVendor = Shapes::StringShape.new(name: 'PatchVendor')
    PatchVersion = Shapes::StringShape.new(name: 'PatchVersion')
    PingStatus = Shapes::StringShape.new(name: 'PingStatus')
    PlatformName = Shapes::StringShape.new(name: 'PlatformName')
    PlatformType = Shapes::StringShape.new(name: 'PlatformType')
    PlatformTypeList = Shapes::ListShape.new(name: 'PlatformTypeList')
    PlatformVersion = Shapes::StringShape.new(name: 'PlatformVersion')
    PoliciesLimitExceededException = Shapes::StructureShape.new(name: 'PoliciesLimitExceededException')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PolicyHash = Shapes::StringShape.new(name: 'PolicyHash')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    Product = Shapes::StringShape.new(name: 'Product')
    ProgressCounters = Shapes::StructureShape.new(name: 'ProgressCounters')
    PutComplianceItemsRequest = Shapes::StructureShape.new(name: 'PutComplianceItemsRequest')
    PutComplianceItemsResult = Shapes::StructureShape.new(name: 'PutComplianceItemsResult')
    PutInventoryMessage = Shapes::StringShape.new(name: 'PutInventoryMessage')
    PutInventoryRequest = Shapes::StructureShape.new(name: 'PutInventoryRequest')
    PutInventoryResult = Shapes::StructureShape.new(name: 'PutInventoryResult')
    PutParameterRequest = Shapes::StructureShape.new(name: 'PutParameterRequest')
    PutParameterResult = Shapes::StructureShape.new(name: 'PutParameterResult')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    RebootOption = Shapes::StringShape.new(name: 'RebootOption')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    Regions = Shapes::ListShape.new(name: 'Regions')
    RegisterDefaultPatchBaselineRequest = Shapes::StructureShape.new(name: 'RegisterDefaultPatchBaselineRequest')
    RegisterDefaultPatchBaselineResult = Shapes::StructureShape.new(name: 'RegisterDefaultPatchBaselineResult')
    RegisterPatchBaselineForPatchGroupRequest = Shapes::StructureShape.new(name: 'RegisterPatchBaselineForPatchGroupRequest')
    RegisterPatchBaselineForPatchGroupResult = Shapes::StructureShape.new(name: 'RegisterPatchBaselineForPatchGroupResult')
    RegisterTargetWithMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'RegisterTargetWithMaintenanceWindowRequest')
    RegisterTargetWithMaintenanceWindowResult = Shapes::StructureShape.new(name: 'RegisterTargetWithMaintenanceWindowResult')
    RegisterTaskWithMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'RegisterTaskWithMaintenanceWindowRequest')
    RegisterTaskWithMaintenanceWindowResult = Shapes::StructureShape.new(name: 'RegisterTaskWithMaintenanceWindowResult')
    RegistrationLimit = Shapes::IntegerShape.new(name: 'RegistrationLimit')
    RegistrationMetadataItem = Shapes::StructureShape.new(name: 'RegistrationMetadataItem')
    RegistrationMetadataKey = Shapes::StringShape.new(name: 'RegistrationMetadataKey')
    RegistrationMetadataList = Shapes::ListShape.new(name: 'RegistrationMetadataList')
    RegistrationMetadataValue = Shapes::StringShape.new(name: 'RegistrationMetadataValue')
    RegistrationsCount = Shapes::IntegerShape.new(name: 'RegistrationsCount')
    RelatedOpsItem = Shapes::StructureShape.new(name: 'RelatedOpsItem')
    RelatedOpsItems = Shapes::ListShape.new(name: 'RelatedOpsItems')
    RemainingCount = Shapes::IntegerShape.new(name: 'RemainingCount')
    RemoveTagsFromResourceRequest = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceRequest')
    RemoveTagsFromResourceResult = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceResult')
    RequireType = Shapes::StringShape.new(name: 'RequireType')
    ResetServiceSettingRequest = Shapes::StructureShape.new(name: 'ResetServiceSettingRequest')
    ResetServiceSettingResult = Shapes::StructureShape.new(name: 'ResetServiceSettingResult')
    ResolvedTargets = Shapes::StructureShape.new(name: 'ResolvedTargets')
    ResourceArnString = Shapes::StringShape.new(name: 'ResourceArnString')
    ResourceComplianceSummaryItem = Shapes::StructureShape.new(name: 'ResourceComplianceSummaryItem')
    ResourceComplianceSummaryItemList = Shapes::ListShape.new(name: 'ResourceComplianceSummaryItemList')
    ResourceCount = Shapes::IntegerShape.new(name: 'ResourceCount')
    ResourceCountByStatus = Shapes::StringShape.new(name: 'ResourceCountByStatus')
    ResourceDataSyncAWSKMSKeyARN = Shapes::StringShape.new(name: 'ResourceDataSyncAWSKMSKeyARN')
    ResourceDataSyncAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceDataSyncAlreadyExistsException')
    ResourceDataSyncAwsOrganizationsSource = Shapes::StructureShape.new(name: 'ResourceDataSyncAwsOrganizationsSource')
    ResourceDataSyncConflictException = Shapes::StructureShape.new(name: 'ResourceDataSyncConflictException')
    ResourceDataSyncCountExceededException = Shapes::StructureShape.new(name: 'ResourceDataSyncCountExceededException')
    ResourceDataSyncCreatedTime = Shapes::TimestampShape.new(name: 'ResourceDataSyncCreatedTime')
    ResourceDataSyncDestinationDataSharing = Shapes::StructureShape.new(name: 'ResourceDataSyncDestinationDataSharing')
    ResourceDataSyncDestinationDataSharingType = Shapes::StringShape.new(name: 'ResourceDataSyncDestinationDataSharingType')
    ResourceDataSyncEnableAllOpsDataSources = Shapes::BooleanShape.new(name: 'ResourceDataSyncEnableAllOpsDataSources')
    ResourceDataSyncIncludeFutureRegions = Shapes::BooleanShape.new(name: 'ResourceDataSyncIncludeFutureRegions')
    ResourceDataSyncInvalidConfigurationException = Shapes::StructureShape.new(name: 'ResourceDataSyncInvalidConfigurationException')
    ResourceDataSyncItem = Shapes::StructureShape.new(name: 'ResourceDataSyncItem')
    ResourceDataSyncItemList = Shapes::ListShape.new(name: 'ResourceDataSyncItemList')
    ResourceDataSyncLastModifiedTime = Shapes::TimestampShape.new(name: 'ResourceDataSyncLastModifiedTime')
    ResourceDataSyncName = Shapes::StringShape.new(name: 'ResourceDataSyncName')
    ResourceDataSyncNotFoundException = Shapes::StructureShape.new(name: 'ResourceDataSyncNotFoundException')
    ResourceDataSyncOrganizationSourceType = Shapes::StringShape.new(name: 'ResourceDataSyncOrganizationSourceType')
    ResourceDataSyncOrganizationalUnit = Shapes::StructureShape.new(name: 'ResourceDataSyncOrganizationalUnit')
    ResourceDataSyncOrganizationalUnitId = Shapes::StringShape.new(name: 'ResourceDataSyncOrganizationalUnitId')
    ResourceDataSyncOrganizationalUnitList = Shapes::ListShape.new(name: 'ResourceDataSyncOrganizationalUnitList')
    ResourceDataSyncS3BucketName = Shapes::StringShape.new(name: 'ResourceDataSyncS3BucketName')
    ResourceDataSyncS3Destination = Shapes::StructureShape.new(name: 'ResourceDataSyncS3Destination')
    ResourceDataSyncS3Format = Shapes::StringShape.new(name: 'ResourceDataSyncS3Format')
    ResourceDataSyncS3Prefix = Shapes::StringShape.new(name: 'ResourceDataSyncS3Prefix')
    ResourceDataSyncS3Region = Shapes::StringShape.new(name: 'ResourceDataSyncS3Region')
    ResourceDataSyncSource = Shapes::StructureShape.new(name: 'ResourceDataSyncSource')
    ResourceDataSyncSourceRegion = Shapes::StringShape.new(name: 'ResourceDataSyncSourceRegion')
    ResourceDataSyncSourceRegionList = Shapes::ListShape.new(name: 'ResourceDataSyncSourceRegionList')
    ResourceDataSyncSourceType = Shapes::StringShape.new(name: 'ResourceDataSyncSourceType')
    ResourceDataSyncSourceWithState = Shapes::StructureShape.new(name: 'ResourceDataSyncSourceWithState')
    ResourceDataSyncState = Shapes::StringShape.new(name: 'ResourceDataSyncState')
    ResourceDataSyncType = Shapes::StringShape.new(name: 'ResourceDataSyncType')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicyConflictException = Shapes::StructureShape.new(name: 'ResourcePolicyConflictException')
    ResourcePolicyInvalidParameterException = Shapes::StructureShape.new(name: 'ResourcePolicyInvalidParameterException')
    ResourcePolicyLimitExceededException = Shapes::StructureShape.new(name: 'ResourcePolicyLimitExceededException')
    ResourcePolicyMaxResults = Shapes::IntegerShape.new(name: 'ResourcePolicyMaxResults')
    ResourcePolicyNotFoundException = Shapes::StructureShape.new(name: 'ResourcePolicyNotFoundException')
    ResourcePolicyParameterNamesList = Shapes::ListShape.new(name: 'ResourcePolicyParameterNamesList')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeForTagging = Shapes::StringShape.new(name: 'ResourceTypeForTagging')
    ResponseCode = Shapes::IntegerShape.new(name: 'ResponseCode')
    ResultAttribute = Shapes::StructureShape.new(name: 'ResultAttribute')
    ResultAttributeList = Shapes::ListShape.new(name: 'ResultAttributeList')
    ResumeSessionRequest = Shapes::StructureShape.new(name: 'ResumeSessionRequest')
    ResumeSessionResponse = Shapes::StructureShape.new(name: 'ResumeSessionResponse')
    ReviewInformation = Shapes::StructureShape.new(name: 'ReviewInformation')
    ReviewInformationList = Shapes::ListShape.new(name: 'ReviewInformationList')
    ReviewStatus = Shapes::StringShape.new(name: 'ReviewStatus')
    Reviewer = Shapes::StringShape.new(name: 'Reviewer')
    Runbook = Shapes::StructureShape.new(name: 'Runbook')
    Runbooks = Shapes::ListShape.new(name: 'Runbooks')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
    S3OutputLocation = Shapes::StructureShape.new(name: 'S3OutputLocation')
    S3OutputUrl = Shapes::StructureShape.new(name: 'S3OutputUrl')
    S3Region = Shapes::StringShape.new(name: 'S3Region')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    ScheduleOffset = Shapes::IntegerShape.new(name: 'ScheduleOffset')
    ScheduledWindowExecution = Shapes::StructureShape.new(name: 'ScheduledWindowExecution')
    ScheduledWindowExecutionList = Shapes::ListShape.new(name: 'ScheduledWindowExecutionList')
    SendAutomationSignalRequest = Shapes::StructureShape.new(name: 'SendAutomationSignalRequest')
    SendAutomationSignalResult = Shapes::StructureShape.new(name: 'SendAutomationSignalResult')
    SendCommandRequest = Shapes::StructureShape.new(name: 'SendCommandRequest')
    SendCommandResult = Shapes::StructureShape.new(name: 'SendCommandResult')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceRole = Shapes::StringShape.new(name: 'ServiceRole')
    ServiceSetting = Shapes::StructureShape.new(name: 'ServiceSetting')
    ServiceSettingId = Shapes::StringShape.new(name: 'ServiceSettingId')
    ServiceSettingNotFound = Shapes::StructureShape.new(name: 'ServiceSettingNotFound')
    ServiceSettingValue = Shapes::StringShape.new(name: 'ServiceSettingValue')
    Session = Shapes::StructureShape.new(name: 'Session')
    SessionDetails = Shapes::StringShape.new(name: 'SessionDetails')
    SessionFilter = Shapes::StructureShape.new(name: 'SessionFilter')
    SessionFilterKey = Shapes::StringShape.new(name: 'SessionFilterKey')
    SessionFilterList = Shapes::ListShape.new(name: 'SessionFilterList')
    SessionFilterValue = Shapes::StringShape.new(name: 'SessionFilterValue')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionList = Shapes::ListShape.new(name: 'SessionList')
    SessionManagerCloudWatchOutputUrl = Shapes::StringShape.new(name: 'SessionManagerCloudWatchOutputUrl')
    SessionManagerOutputUrl = Shapes::StructureShape.new(name: 'SessionManagerOutputUrl')
    SessionManagerParameterName = Shapes::StringShape.new(name: 'SessionManagerParameterName')
    SessionManagerParameterValue = Shapes::StringShape.new(name: 'SessionManagerParameterValue')
    SessionManagerParameterValueList = Shapes::ListShape.new(name: 'SessionManagerParameterValueList')
    SessionManagerParameters = Shapes::MapShape.new(name: 'SessionManagerParameters')
    SessionManagerS3OutputUrl = Shapes::StringShape.new(name: 'SessionManagerS3OutputUrl')
    SessionMaxResults = Shapes::IntegerShape.new(name: 'SessionMaxResults')
    SessionOwner = Shapes::StringShape.new(name: 'SessionOwner')
    SessionReason = Shapes::StringShape.new(name: 'SessionReason')
    SessionState = Shapes::StringShape.new(name: 'SessionState')
    SessionStatus = Shapes::StringShape.new(name: 'SessionStatus')
    SessionTarget = Shapes::StringShape.new(name: 'SessionTarget')
    SessionTokenType = Shapes::StringShape.new(name: 'SessionTokenType')
    SeveritySummary = Shapes::StructureShape.new(name: 'SeveritySummary')
    SharedDocumentVersion = Shapes::StringShape.new(name: 'SharedDocumentVersion')
    SignalType = Shapes::StringShape.new(name: 'SignalType')
    SnapshotDownloadUrl = Shapes::StringShape.new(name: 'SnapshotDownloadUrl')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    SourceId = Shapes::StringShape.new(name: 'SourceId')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StandardErrorContent = Shapes::StringShape.new(name: 'StandardErrorContent')
    StandardOutputContent = Shapes::StringShape.new(name: 'StandardOutputContent')
    StartAccessRequestRequest = Shapes::StructureShape.new(name: 'StartAccessRequestRequest')
    StartAccessRequestResponse = Shapes::StructureShape.new(name: 'StartAccessRequestResponse')
    StartAssociationsOnceRequest = Shapes::StructureShape.new(name: 'StartAssociationsOnceRequest')
    StartAssociationsOnceResult = Shapes::StructureShape.new(name: 'StartAssociationsOnceResult')
    StartAutomationExecutionRequest = Shapes::StructureShape.new(name: 'StartAutomationExecutionRequest')
    StartAutomationExecutionResult = Shapes::StructureShape.new(name: 'StartAutomationExecutionResult')
    StartChangeRequestExecutionRequest = Shapes::StructureShape.new(name: 'StartChangeRequestExecutionRequest')
    StartChangeRequestExecutionResult = Shapes::StructureShape.new(name: 'StartChangeRequestExecutionResult')
    StartExecutionPreviewRequest = Shapes::StructureShape.new(name: 'StartExecutionPreviewRequest')
    StartExecutionPreviewResponse = Shapes::StructureShape.new(name: 'StartExecutionPreviewResponse')
    StartSessionRequest = Shapes::StructureShape.new(name: 'StartSessionRequest')
    StartSessionResponse = Shapes::StructureShape.new(name: 'StartSessionResponse')
    StatusAdditionalInfo = Shapes::StringShape.new(name: 'StatusAdditionalInfo')
    StatusDetails = Shapes::StringShape.new(name: 'StatusDetails')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StatusName = Shapes::StringShape.new(name: 'StatusName')
    StatusUnchanged = Shapes::StructureShape.new(name: 'StatusUnchanged')
    StepExecution = Shapes::StructureShape.new(name: 'StepExecution')
    StepExecutionFilter = Shapes::StructureShape.new(name: 'StepExecutionFilter')
    StepExecutionFilterKey = Shapes::StringShape.new(name: 'StepExecutionFilterKey')
    StepExecutionFilterList = Shapes::ListShape.new(name: 'StepExecutionFilterList')
    StepExecutionFilterValue = Shapes::StringShape.new(name: 'StepExecutionFilterValue')
    StepExecutionFilterValueList = Shapes::ListShape.new(name: 'StepExecutionFilterValueList')
    StepExecutionList = Shapes::ListShape.new(name: 'StepExecutionList')
    StepPreviewMap = Shapes::MapShape.new(name: 'StepPreviewMap')
    StopAutomationExecutionRequest = Shapes::StructureShape.new(name: 'StopAutomationExecutionRequest')
    StopAutomationExecutionResult = Shapes::StructureShape.new(name: 'StopAutomationExecutionResult')
    StopType = Shapes::StringShape.new(name: 'StopType')
    StreamUrl = Shapes::StringShape.new(name: 'StreamUrl')
    String = Shapes::StringShape.new(name: 'String')
    String1to256 = Shapes::StringShape.new(name: 'String1to256')
    StringDateTime = Shapes::StringShape.new(name: 'StringDateTime')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubTypeCountLimitExceededException = Shapes::StructureShape.new(name: 'SubTypeCountLimitExceededException')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetCount = Shapes::IntegerShape.new(name: 'TargetCount')
    TargetInUseException = Shapes::StructureShape.new(name: 'TargetInUseException')
    TargetKey = Shapes::StringShape.new(name: 'TargetKey')
    TargetLocation = Shapes::StructureShape.new(name: 'TargetLocation')
    TargetLocations = Shapes::ListShape.new(name: 'TargetLocations')
    TargetLocationsURL = Shapes::StringShape.new(name: 'TargetLocationsURL')
    TargetMap = Shapes::MapShape.new(name: 'TargetMap')
    TargetMapKey = Shapes::StringShape.new(name: 'TargetMapKey')
    TargetMapValue = Shapes::StringShape.new(name: 'TargetMapValue')
    TargetMapValueList = Shapes::ListShape.new(name: 'TargetMapValueList')
    TargetMaps = Shapes::ListShape.new(name: 'TargetMaps')
    TargetNotConnected = Shapes::StructureShape.new(name: 'TargetNotConnected')
    TargetParameterList = Shapes::ListShape.new(name: 'TargetParameterList')
    TargetPreview = Shapes::StructureShape.new(name: 'TargetPreview')
    TargetPreviewList = Shapes::ListShape.new(name: 'TargetPreviewList')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    TargetValue = Shapes::StringShape.new(name: 'TargetValue')
    TargetValues = Shapes::ListShape.new(name: 'TargetValues')
    Targets = Shapes::ListShape.new(name: 'Targets')
    TerminateSessionRequest = Shapes::StructureShape.new(name: 'TerminateSessionRequest')
    TerminateSessionResponse = Shapes::StructureShape.new(name: 'TerminateSessionResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeoutSeconds = Shapes::IntegerShape.new(name: 'TimeoutSeconds')
    TokenValue = Shapes::StringShape.new(name: 'TokenValue')
    TooManyTagsError = Shapes::StructureShape.new(name: 'TooManyTagsError')
    TooManyUpdates = Shapes::StructureShape.new(name: 'TooManyUpdates')
    TotalCount = Shapes::IntegerShape.new(name: 'TotalCount')
    TotalSizeLimitExceededException = Shapes::StructureShape.new(name: 'TotalSizeLimitExceededException')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UnlabelParameterVersionRequest = Shapes::StructureShape.new(name: 'UnlabelParameterVersionRequest')
    UnlabelParameterVersionResult = Shapes::StructureShape.new(name: 'UnlabelParameterVersionResult')
    UnsupportedCalendarException = Shapes::StructureShape.new(name: 'UnsupportedCalendarException')
    UnsupportedFeatureRequiredException = Shapes::StructureShape.new(name: 'UnsupportedFeatureRequiredException')
    UnsupportedInventoryItemContextException = Shapes::StructureShape.new(name: 'UnsupportedInventoryItemContextException')
    UnsupportedInventorySchemaVersionException = Shapes::StructureShape.new(name: 'UnsupportedInventorySchemaVersionException')
    UnsupportedOperatingSystem = Shapes::StructureShape.new(name: 'UnsupportedOperatingSystem')
    UnsupportedOperationException = Shapes::StructureShape.new(name: 'UnsupportedOperationException')
    UnsupportedParameterType = Shapes::StructureShape.new(name: 'UnsupportedParameterType')
    UnsupportedPlatformType = Shapes::StructureShape.new(name: 'UnsupportedPlatformType')
    UpdateAssociationRequest = Shapes::StructureShape.new(name: 'UpdateAssociationRequest')
    UpdateAssociationResult = Shapes::StructureShape.new(name: 'UpdateAssociationResult')
    UpdateAssociationStatusRequest = Shapes::StructureShape.new(name: 'UpdateAssociationStatusRequest')
    UpdateAssociationStatusResult = Shapes::StructureShape.new(name: 'UpdateAssociationStatusResult')
    UpdateDocumentDefaultVersionRequest = Shapes::StructureShape.new(name: 'UpdateDocumentDefaultVersionRequest')
    UpdateDocumentDefaultVersionResult = Shapes::StructureShape.new(name: 'UpdateDocumentDefaultVersionResult')
    UpdateDocumentMetadataRequest = Shapes::StructureShape.new(name: 'UpdateDocumentMetadataRequest')
    UpdateDocumentMetadataResponse = Shapes::StructureShape.new(name: 'UpdateDocumentMetadataResponse')
    UpdateDocumentRequest = Shapes::StructureShape.new(name: 'UpdateDocumentRequest')
    UpdateDocumentResult = Shapes::StructureShape.new(name: 'UpdateDocumentResult')
    UpdateMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowRequest')
    UpdateMaintenanceWindowResult = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowResult')
    UpdateMaintenanceWindowTargetRequest = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowTargetRequest')
    UpdateMaintenanceWindowTargetResult = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowTargetResult')
    UpdateMaintenanceWindowTaskRequest = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowTaskRequest')
    UpdateMaintenanceWindowTaskResult = Shapes::StructureShape.new(name: 'UpdateMaintenanceWindowTaskResult')
    UpdateManagedInstanceRoleRequest = Shapes::StructureShape.new(name: 'UpdateManagedInstanceRoleRequest')
    UpdateManagedInstanceRoleResult = Shapes::StructureShape.new(name: 'UpdateManagedInstanceRoleResult')
    UpdateOpsItemRequest = Shapes::StructureShape.new(name: 'UpdateOpsItemRequest')
    UpdateOpsItemResponse = Shapes::StructureShape.new(name: 'UpdateOpsItemResponse')
    UpdateOpsMetadataRequest = Shapes::StructureShape.new(name: 'UpdateOpsMetadataRequest')
    UpdateOpsMetadataResult = Shapes::StructureShape.new(name: 'UpdateOpsMetadataResult')
    UpdatePatchBaselineRequest = Shapes::StructureShape.new(name: 'UpdatePatchBaselineRequest')
    UpdatePatchBaselineResult = Shapes::StructureShape.new(name: 'UpdatePatchBaselineResult')
    UpdateResourceDataSyncRequest = Shapes::StructureShape.new(name: 'UpdateResourceDataSyncRequest')
    UpdateResourceDataSyncResult = Shapes::StructureShape.new(name: 'UpdateResourceDataSyncResult')
    UpdateServiceSettingRequest = Shapes::StructureShape.new(name: 'UpdateServiceSettingRequest')
    UpdateServiceSettingResult = Shapes::StructureShape.new(name: 'UpdateServiceSettingResult')
    Url = Shapes::StringShape.new(name: 'Url')
    ValidNextStep = Shapes::StringShape.new(name: 'ValidNextStep')
    ValidNextStepList = Shapes::ListShape.new(name: 'ValidNextStepList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Version = Shapes::StringShape.new(name: 'Version')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountSharingInfo.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AccountSharingInfo.add_member(:shared_document_version, Shapes::ShapeRef.new(shape: SharedDocumentVersion, location_name: "SharedDocumentVersion"))
    AccountSharingInfo.struct_class = Types::AccountSharingInfo

    AccountSharingInfoList.member = Shapes::ShapeRef.new(shape: AccountSharingInfo)

    Accounts.member = Shapes::ShapeRef.new(shape: Account)

    Activation.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, location_name: "ActivationId"))
    Activation.add_member(:description, Shapes::ShapeRef.new(shape: ActivationDescription, location_name: "Description"))
    Activation.add_member(:default_instance_name, Shapes::ShapeRef.new(shape: DefaultInstanceName, location_name: "DefaultInstanceName"))
    Activation.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "IamRole"))
    Activation.add_member(:registration_limit, Shapes::ShapeRef.new(shape: RegistrationLimit, location_name: "RegistrationLimit"))
    Activation.add_member(:registrations_count, Shapes::ShapeRef.new(shape: RegistrationsCount, location_name: "RegistrationsCount"))
    Activation.add_member(:expiration_date, Shapes::ShapeRef.new(shape: ExpirationDate, location_name: "ExpirationDate"))
    Activation.add_member(:expired, Shapes::ShapeRef.new(shape: Boolean, location_name: "Expired"))
    Activation.add_member(:created_date, Shapes::ShapeRef.new(shape: CreatedDate, location_name: "CreatedDate"))
    Activation.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    Activation.struct_class = Types::Activation

    ActivationList.member = Shapes::ShapeRef.new(shape: Activation)

    AddTagsToResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
    AddTagsToResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    AddTagsToResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToResourceRequest.struct_class = Types::AddTagsToResourceRequest

    AddTagsToResourceResult.struct_class = Types::AddTagsToResourceResult

    Alarm.add_member(:name, Shapes::ShapeRef.new(shape: AlarmName, required: true, location_name: "Name"))
    Alarm.struct_class = Types::Alarm

    AlarmConfiguration.add_member(:ignore_poll_alarm_failure, Shapes::ShapeRef.new(shape: Boolean, location_name: "IgnorePollAlarmFailure"))
    AlarmConfiguration.add_member(:alarms, Shapes::ShapeRef.new(shape: AlarmList, required: true, location_name: "Alarms"))
    AlarmConfiguration.struct_class = Types::AlarmConfiguration

    AlarmList.member = Shapes::ShapeRef.new(shape: Alarm)

    AlarmStateInformation.add_member(:name, Shapes::ShapeRef.new(shape: AlarmName, required: true, location_name: "Name"))
    AlarmStateInformation.add_member(:state, Shapes::ShapeRef.new(shape: ExternalAlarmState, required: true, location_name: "State"))
    AlarmStateInformation.struct_class = Types::AlarmStateInformation

    AlarmStateInformationList.member = Shapes::ShapeRef.new(shape: AlarmStateInformation)

    AlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    AssociateOpsItemRelatedItemRequest.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: OpsItemId, required: true, location_name: "OpsItemId"))
    AssociateOpsItemRelatedItemRequest.add_member(:association_type, Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationType, required: true, location_name: "AssociationType"))
    AssociateOpsItemRelatedItemRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationResourceType, required: true, location_name: "ResourceType"))
    AssociateOpsItemRelatedItemRequest.add_member(:resource_uri, Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationResourceUri, required: true, location_name: "ResourceUri"))
    AssociateOpsItemRelatedItemRequest.struct_class = Types::AssociateOpsItemRelatedItemRequest

    AssociateOpsItemRelatedItemResponse.add_member(:association_id, Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationId, location_name: "AssociationId"))
    AssociateOpsItemRelatedItemResponse.struct_class = Types::AssociateOpsItemRelatedItemResponse

    AssociatedInstances.struct_class = Types::AssociatedInstances

    Association.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    Association.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    Association.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    Association.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    Association.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    Association.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    Association.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastExecutionDate"))
    Association.add_member(:overview, Shapes::ShapeRef.new(shape: AssociationOverview, location_name: "Overview"))
    Association.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    Association.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    Association.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: ScheduleOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    Association.add_member(:duration, Shapes::ShapeRef.new(shape: Duration, location_name: "Duration", metadata: {"box" => true}))
    Association.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps", metadata: {"box" => true}))
    Association.struct_class = Types::Association

    AssociationAlreadyExists.struct_class = Types::AssociationAlreadyExists

    AssociationDescription.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    AssociationDescription.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    AssociationDescription.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    AssociationDescription.add_member(:date, Shapes::ShapeRef.new(shape: DateTime, location_name: "Date"))
    AssociationDescription.add_member(:last_update_association_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastUpdateAssociationDate"))
    AssociationDescription.add_member(:status, Shapes::ShapeRef.new(shape: AssociationStatus, location_name: "Status"))
    AssociationDescription.add_member(:overview, Shapes::ShapeRef.new(shape: AssociationOverview, location_name: "Overview"))
    AssociationDescription.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    AssociationDescription.add_member(:automation_target_parameter_name, Shapes::ShapeRef.new(shape: AutomationTargetParameterName, location_name: "AutomationTargetParameterName"))
    AssociationDescription.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    AssociationDescription.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociationDescription.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    AssociationDescription.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    AssociationDescription.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    AssociationDescription.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastExecutionDate"))
    AssociationDescription.add_member(:last_successful_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastSuccessfulExecutionDate"))
    AssociationDescription.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    AssociationDescription.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    AssociationDescription.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    AssociationDescription.add_member(:compliance_severity, Shapes::ShapeRef.new(shape: AssociationComplianceSeverity, location_name: "ComplianceSeverity"))
    AssociationDescription.add_member(:sync_compliance, Shapes::ShapeRef.new(shape: AssociationSyncCompliance, location_name: "SyncCompliance"))
    AssociationDescription.add_member(:apply_only_at_cron_interval, Shapes::ShapeRef.new(shape: ApplyOnlyAtCronInterval, location_name: "ApplyOnlyAtCronInterval"))
    AssociationDescription.add_member(:calendar_names, Shapes::ShapeRef.new(shape: CalendarNameOrARNList, location_name: "CalendarNames"))
    AssociationDescription.add_member(:target_locations, Shapes::ShapeRef.new(shape: TargetLocations, location_name: "TargetLocations"))
    AssociationDescription.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: ScheduleOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    AssociationDescription.add_member(:duration, Shapes::ShapeRef.new(shape: Duration, location_name: "Duration", metadata: {"box" => true}))
    AssociationDescription.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps", metadata: {"box" => true}))
    AssociationDescription.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    AssociationDescription.add_member(:triggered_alarms, Shapes::ShapeRef.new(shape: AlarmStateInformationList, location_name: "TriggeredAlarms"))
    AssociationDescription.struct_class = Types::AssociationDescription

    AssociationDescriptionList.member = Shapes::ShapeRef.new(shape: AssociationDescription)

    AssociationDoesNotExist.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AssociationDoesNotExist.struct_class = Types::AssociationDoesNotExist

    AssociationExecution.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociationExecution.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    AssociationExecution.add_member(:execution_id, Shapes::ShapeRef.new(shape: AssociationExecutionId, location_name: "ExecutionId"))
    AssociationExecution.add_member(:status, Shapes::ShapeRef.new(shape: StatusName, location_name: "Status"))
    AssociationExecution.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    AssociationExecution.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    AssociationExecution.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastExecutionDate"))
    AssociationExecution.add_member(:resource_count_by_status, Shapes::ShapeRef.new(shape: ResourceCountByStatus, location_name: "ResourceCountByStatus"))
    AssociationExecution.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    AssociationExecution.add_member(:triggered_alarms, Shapes::ShapeRef.new(shape: AlarmStateInformationList, location_name: "TriggeredAlarms"))
    AssociationExecution.struct_class = Types::AssociationExecution

    AssociationExecutionDoesNotExist.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AssociationExecutionDoesNotExist.struct_class = Types::AssociationExecutionDoesNotExist

    AssociationExecutionFilter.add_member(:key, Shapes::ShapeRef.new(shape: AssociationExecutionFilterKey, required: true, location_name: "Key"))
    AssociationExecutionFilter.add_member(:value, Shapes::ShapeRef.new(shape: AssociationExecutionFilterValue, required: true, location_name: "Value"))
    AssociationExecutionFilter.add_member(:type, Shapes::ShapeRef.new(shape: AssociationFilterOperatorType, required: true, location_name: "Type"))
    AssociationExecutionFilter.struct_class = Types::AssociationExecutionFilter

    AssociationExecutionFilterList.member = Shapes::ShapeRef.new(shape: AssociationExecutionFilter)

    AssociationExecutionTarget.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociationExecutionTarget.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    AssociationExecutionTarget.add_member(:execution_id, Shapes::ShapeRef.new(shape: AssociationExecutionId, location_name: "ExecutionId"))
    AssociationExecutionTarget.add_member(:resource_id, Shapes::ShapeRef.new(shape: AssociationResourceId, location_name: "ResourceId"))
    AssociationExecutionTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: AssociationResourceType, location_name: "ResourceType"))
    AssociationExecutionTarget.add_member(:status, Shapes::ShapeRef.new(shape: StatusName, location_name: "Status"))
    AssociationExecutionTarget.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    AssociationExecutionTarget.add_member(:last_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastExecutionDate"))
    AssociationExecutionTarget.add_member(:output_source, Shapes::ShapeRef.new(shape: OutputSource, location_name: "OutputSource"))
    AssociationExecutionTarget.struct_class = Types::AssociationExecutionTarget

    AssociationExecutionTargetsFilter.add_member(:key, Shapes::ShapeRef.new(shape: AssociationExecutionTargetsFilterKey, required: true, location_name: "Key"))
    AssociationExecutionTargetsFilter.add_member(:value, Shapes::ShapeRef.new(shape: AssociationExecutionTargetsFilterValue, required: true, location_name: "Value"))
    AssociationExecutionTargetsFilter.struct_class = Types::AssociationExecutionTargetsFilter

    AssociationExecutionTargetsFilterList.member = Shapes::ShapeRef.new(shape: AssociationExecutionTargetsFilter)

    AssociationExecutionTargetsList.member = Shapes::ShapeRef.new(shape: AssociationExecutionTarget)

    AssociationExecutionsList.member = Shapes::ShapeRef.new(shape: AssociationExecution)

    AssociationFilter.add_member(:key, Shapes::ShapeRef.new(shape: AssociationFilterKey, required: true, location_name: "key"))
    AssociationFilter.add_member(:value, Shapes::ShapeRef.new(shape: AssociationFilterValue, required: true, location_name: "value"))
    AssociationFilter.struct_class = Types::AssociationFilter

    AssociationFilterList.member = Shapes::ShapeRef.new(shape: AssociationFilter)

    AssociationIdList.member = Shapes::ShapeRef.new(shape: AssociationId)

    AssociationLimitExceeded.struct_class = Types::AssociationLimitExceeded

    AssociationList.member = Shapes::ShapeRef.new(shape: Association)

    AssociationOverview.add_member(:status, Shapes::ShapeRef.new(shape: StatusName, location_name: "Status"))
    AssociationOverview.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    AssociationOverview.add_member(:association_status_aggregated_count, Shapes::ShapeRef.new(shape: AssociationStatusAggregatedCount, location_name: "AssociationStatusAggregatedCount"))
    AssociationOverview.struct_class = Types::AssociationOverview

    AssociationStatus.add_member(:date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "Date"))
    AssociationStatus.add_member(:name, Shapes::ShapeRef.new(shape: AssociationStatusName, required: true, location_name: "Name"))
    AssociationStatus.add_member(:message, Shapes::ShapeRef.new(shape: StatusMessage, required: true, location_name: "Message"))
    AssociationStatus.add_member(:additional_info, Shapes::ShapeRef.new(shape: StatusAdditionalInfo, location_name: "AdditionalInfo"))
    AssociationStatus.struct_class = Types::AssociationStatus

    AssociationStatusAggregatedCount.key = Shapes::ShapeRef.new(shape: StatusName)
    AssociationStatusAggregatedCount.value = Shapes::ShapeRef.new(shape: InstanceCount)

    AssociationVersionInfo.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    AssociationVersionInfo.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    AssociationVersionInfo.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    AssociationVersionInfo.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    AssociationVersionInfo.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    AssociationVersionInfo.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    AssociationVersionInfo.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    AssociationVersionInfo.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    AssociationVersionInfo.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    AssociationVersionInfo.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    AssociationVersionInfo.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    AssociationVersionInfo.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    AssociationVersionInfo.add_member(:compliance_severity, Shapes::ShapeRef.new(shape: AssociationComplianceSeverity, location_name: "ComplianceSeverity"))
    AssociationVersionInfo.add_member(:sync_compliance, Shapes::ShapeRef.new(shape: AssociationSyncCompliance, location_name: "SyncCompliance"))
    AssociationVersionInfo.add_member(:apply_only_at_cron_interval, Shapes::ShapeRef.new(shape: ApplyOnlyAtCronInterval, location_name: "ApplyOnlyAtCronInterval"))
    AssociationVersionInfo.add_member(:calendar_names, Shapes::ShapeRef.new(shape: CalendarNameOrARNList, location_name: "CalendarNames"))
    AssociationVersionInfo.add_member(:target_locations, Shapes::ShapeRef.new(shape: TargetLocations, location_name: "TargetLocations"))
    AssociationVersionInfo.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: ScheduleOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    AssociationVersionInfo.add_member(:duration, Shapes::ShapeRef.new(shape: Duration, location_name: "Duration", metadata: {"box" => true}))
    AssociationVersionInfo.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps", metadata: {"box" => true}))
    AssociationVersionInfo.struct_class = Types::AssociationVersionInfo

    AssociationVersionLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AssociationVersionLimitExceeded.struct_class = Types::AssociationVersionLimitExceeded

    AssociationVersionList.member = Shapes::ShapeRef.new(shape: AssociationVersionInfo)

    AttachmentContent.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentName, location_name: "Name"))
    AttachmentContent.add_member(:size, Shapes::ShapeRef.new(shape: ContentLength, location_name: "Size"))
    AttachmentContent.add_member(:hash, Shapes::ShapeRef.new(shape: AttachmentHash, location_name: "Hash"))
    AttachmentContent.add_member(:hash_type, Shapes::ShapeRef.new(shape: AttachmentHashType, location_name: "HashType"))
    AttachmentContent.add_member(:url, Shapes::ShapeRef.new(shape: AttachmentUrl, location_name: "Url"))
    AttachmentContent.struct_class = Types::AttachmentContent

    AttachmentContentList.member = Shapes::ShapeRef.new(shape: AttachmentContent)

    AttachmentInformation.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentName, location_name: "Name"))
    AttachmentInformation.struct_class = Types::AttachmentInformation

    AttachmentInformationList.member = Shapes::ShapeRef.new(shape: AttachmentInformation)

    AttachmentsSource.add_member(:key, Shapes::ShapeRef.new(shape: AttachmentsSourceKey, location_name: "Key"))
    AttachmentsSource.add_member(:values, Shapes::ShapeRef.new(shape: AttachmentsSourceValues, location_name: "Values"))
    AttachmentsSource.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentIdentifier, location_name: "Name"))
    AttachmentsSource.struct_class = Types::AttachmentsSource

    AttachmentsSourceList.member = Shapes::ShapeRef.new(shape: AttachmentsSource)

    AttachmentsSourceValues.member = Shapes::ShapeRef.new(shape: AttachmentsSourceValue)

    AutomationDefinitionNotApprovedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AutomationDefinitionNotApprovedException.struct_class = Types::AutomationDefinitionNotApprovedException

    AutomationDefinitionNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AutomationDefinitionNotFoundException.struct_class = Types::AutomationDefinitionNotFoundException

    AutomationDefinitionVersionNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AutomationDefinitionVersionNotFoundException.struct_class = Types::AutomationDefinitionVersionNotFoundException

    AutomationExecution.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "AutomationExecutionId"))
    AutomationExecution.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    AutomationExecution.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    AutomationExecution.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionStartTime"))
    AutomationExecution.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionEndTime"))
    AutomationExecution.add_member(:automation_execution_status, Shapes::ShapeRef.new(shape: AutomationExecutionStatus, location_name: "AutomationExecutionStatus"))
    AutomationExecution.add_member(:step_executions, Shapes::ShapeRef.new(shape: StepExecutionList, location_name: "StepExecutions"))
    AutomationExecution.add_member(:step_executions_truncated, Shapes::ShapeRef.new(shape: Boolean, location_name: "StepExecutionsTruncated"))
    AutomationExecution.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    AutomationExecution.add_member(:outputs, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Outputs"))
    AutomationExecution.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    AutomationExecution.add_member(:mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "Mode"))
    AutomationExecution.add_member(:parent_automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "ParentAutomationExecutionId"))
    AutomationExecution.add_member(:executed_by, Shapes::ShapeRef.new(shape: String, location_name: "ExecutedBy"))
    AutomationExecution.add_member(:current_step_name, Shapes::ShapeRef.new(shape: String, location_name: "CurrentStepName"))
    AutomationExecution.add_member(:current_action, Shapes::ShapeRef.new(shape: String, location_name: "CurrentAction"))
    AutomationExecution.add_member(:target_parameter_name, Shapes::ShapeRef.new(shape: AutomationParameterKey, location_name: "TargetParameterName"))
    AutomationExecution.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    AutomationExecution.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps"))
    AutomationExecution.add_member(:resolved_targets, Shapes::ShapeRef.new(shape: ResolvedTargets, location_name: "ResolvedTargets"))
    AutomationExecution.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    AutomationExecution.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    AutomationExecution.add_member(:target, Shapes::ShapeRef.new(shape: String, location_name: "Target"))
    AutomationExecution.add_member(:target_locations, Shapes::ShapeRef.new(shape: TargetLocations, location_name: "TargetLocations", metadata: {"box" => true}))
    AutomationExecution.add_member(:progress_counters, Shapes::ShapeRef.new(shape: ProgressCounters, location_name: "ProgressCounters"))
    AutomationExecution.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    AutomationExecution.add_member(:triggered_alarms, Shapes::ShapeRef.new(shape: AlarmStateInformationList, location_name: "TriggeredAlarms"))
    AutomationExecution.add_member(:target_locations_url, Shapes::ShapeRef.new(shape: TargetLocationsURL, location_name: "TargetLocationsURL"))
    AutomationExecution.add_member(:automation_subtype, Shapes::ShapeRef.new(shape: AutomationSubtype, location_name: "AutomationSubtype"))
    AutomationExecution.add_member(:scheduled_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ScheduledTime"))
    AutomationExecution.add_member(:runbooks, Shapes::ShapeRef.new(shape: Runbooks, location_name: "Runbooks"))
    AutomationExecution.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: String, location_name: "OpsItemId"))
    AutomationExecution.add_member(:association_id, Shapes::ShapeRef.new(shape: String, location_name: "AssociationId"))
    AutomationExecution.add_member(:change_request_name, Shapes::ShapeRef.new(shape: ChangeRequestName, location_name: "ChangeRequestName"))
    AutomationExecution.add_member(:variables, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Variables"))
    AutomationExecution.struct_class = Types::AutomationExecution

    AutomationExecutionFilter.add_member(:key, Shapes::ShapeRef.new(shape: AutomationExecutionFilterKey, required: true, location_name: "Key"))
    AutomationExecutionFilter.add_member(:values, Shapes::ShapeRef.new(shape: AutomationExecutionFilterValueList, required: true, location_name: "Values"))
    AutomationExecutionFilter.struct_class = Types::AutomationExecutionFilter

    AutomationExecutionFilterList.member = Shapes::ShapeRef.new(shape: AutomationExecutionFilter)

    AutomationExecutionFilterValueList.member = Shapes::ShapeRef.new(shape: AutomationExecutionFilterValue)

    AutomationExecutionInputs.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    AutomationExecutionInputs.add_member(:target_parameter_name, Shapes::ShapeRef.new(shape: AutomationParameterKey, location_name: "TargetParameterName"))
    AutomationExecutionInputs.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    AutomationExecutionInputs.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps"))
    AutomationExecutionInputs.add_member(:target_locations, Shapes::ShapeRef.new(shape: TargetLocations, location_name: "TargetLocations"))
    AutomationExecutionInputs.add_member(:target_locations_url, Shapes::ShapeRef.new(shape: TargetLocationsURL, location_name: "TargetLocationsURL"))
    AutomationExecutionInputs.struct_class = Types::AutomationExecutionInputs

    AutomationExecutionLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AutomationExecutionLimitExceededException.struct_class = Types::AutomationExecutionLimitExceededException

    AutomationExecutionMetadata.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "AutomationExecutionId"))
    AutomationExecutionMetadata.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    AutomationExecutionMetadata.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    AutomationExecutionMetadata.add_member(:automation_execution_status, Shapes::ShapeRef.new(shape: AutomationExecutionStatus, location_name: "AutomationExecutionStatus"))
    AutomationExecutionMetadata.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionStartTime"))
    AutomationExecutionMetadata.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionEndTime"))
    AutomationExecutionMetadata.add_member(:executed_by, Shapes::ShapeRef.new(shape: String, location_name: "ExecutedBy"))
    AutomationExecutionMetadata.add_member(:log_file, Shapes::ShapeRef.new(shape: String, location_name: "LogFile"))
    AutomationExecutionMetadata.add_member(:outputs, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Outputs"))
    AutomationExecutionMetadata.add_member(:mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "Mode"))
    AutomationExecutionMetadata.add_member(:parent_automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "ParentAutomationExecutionId"))
    AutomationExecutionMetadata.add_member(:current_step_name, Shapes::ShapeRef.new(shape: String, location_name: "CurrentStepName"))
    AutomationExecutionMetadata.add_member(:current_action, Shapes::ShapeRef.new(shape: String, location_name: "CurrentAction"))
    AutomationExecutionMetadata.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    AutomationExecutionMetadata.add_member(:target_parameter_name, Shapes::ShapeRef.new(shape: AutomationParameterKey, location_name: "TargetParameterName"))
    AutomationExecutionMetadata.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    AutomationExecutionMetadata.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps"))
    AutomationExecutionMetadata.add_member(:resolved_targets, Shapes::ShapeRef.new(shape: ResolvedTargets, location_name: "ResolvedTargets"))
    AutomationExecutionMetadata.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    AutomationExecutionMetadata.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    AutomationExecutionMetadata.add_member(:target, Shapes::ShapeRef.new(shape: String, location_name: "Target"))
    AutomationExecutionMetadata.add_member(:automation_type, Shapes::ShapeRef.new(shape: AutomationType, location_name: "AutomationType"))
    AutomationExecutionMetadata.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    AutomationExecutionMetadata.add_member(:triggered_alarms, Shapes::ShapeRef.new(shape: AlarmStateInformationList, location_name: "TriggeredAlarms"))
    AutomationExecutionMetadata.add_member(:target_locations_url, Shapes::ShapeRef.new(shape: TargetLocationsURL, location_name: "TargetLocationsURL"))
    AutomationExecutionMetadata.add_member(:automation_subtype, Shapes::ShapeRef.new(shape: AutomationSubtype, location_name: "AutomationSubtype"))
    AutomationExecutionMetadata.add_member(:scheduled_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ScheduledTime"))
    AutomationExecutionMetadata.add_member(:runbooks, Shapes::ShapeRef.new(shape: Runbooks, location_name: "Runbooks"))
    AutomationExecutionMetadata.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: String, location_name: "OpsItemId"))
    AutomationExecutionMetadata.add_member(:association_id, Shapes::ShapeRef.new(shape: String, location_name: "AssociationId"))
    AutomationExecutionMetadata.add_member(:change_request_name, Shapes::ShapeRef.new(shape: ChangeRequestName, location_name: "ChangeRequestName"))
    AutomationExecutionMetadata.struct_class = Types::AutomationExecutionMetadata

    AutomationExecutionMetadataList.member = Shapes::ShapeRef.new(shape: AutomationExecutionMetadata)

    AutomationExecutionNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AutomationExecutionNotFoundException.struct_class = Types::AutomationExecutionNotFoundException

    AutomationExecutionPreview.add_member(:step_previews, Shapes::ShapeRef.new(shape: StepPreviewMap, location_name: "StepPreviews"))
    AutomationExecutionPreview.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "Regions"))
    AutomationExecutionPreview.add_member(:target_previews, Shapes::ShapeRef.new(shape: TargetPreviewList, location_name: "TargetPreviews"))
    AutomationExecutionPreview.add_member(:total_accounts, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalAccounts"))
    AutomationExecutionPreview.struct_class = Types::AutomationExecutionPreview

    AutomationParameterMap.key = Shapes::ShapeRef.new(shape: AutomationParameterKey)
    AutomationParameterMap.value = Shapes::ShapeRef.new(shape: AutomationParameterValueList)

    AutomationParameterValueList.member = Shapes::ShapeRef.new(shape: AutomationParameterValue)

    AutomationStepNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AutomationStepNotFoundException.struct_class = Types::AutomationStepNotFoundException

    BaselineOverride.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    BaselineOverride.add_member(:global_filters, Shapes::ShapeRef.new(shape: PatchFilterGroup, location_name: "GlobalFilters"))
    BaselineOverride.add_member(:approval_rules, Shapes::ShapeRef.new(shape: PatchRuleGroup, location_name: "ApprovalRules"))
    BaselineOverride.add_member(:approved_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "ApprovedPatches"))
    BaselineOverride.add_member(:approved_patches_compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ApprovedPatchesComplianceLevel"))
    BaselineOverride.add_member(:rejected_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "RejectedPatches"))
    BaselineOverride.add_member(:rejected_patches_action, Shapes::ShapeRef.new(shape: PatchAction, location_name: "RejectedPatchesAction"))
    BaselineOverride.add_member(:approved_patches_enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApprovedPatchesEnableNonSecurity"))
    BaselineOverride.add_member(:sources, Shapes::ShapeRef.new(shape: PatchSourceList, location_name: "Sources"))
    BaselineOverride.add_member(:available_security_updates_compliance_status, Shapes::ShapeRef.new(shape: PatchComplianceStatus, location_name: "AvailableSecurityUpdatesComplianceStatus"))
    BaselineOverride.struct_class = Types::BaselineOverride

    CalendarNameOrARNList.member = Shapes::ShapeRef.new(shape: CalendarNameOrARN)

    CancelCommandRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, required: true, location_name: "CommandId"))
    CancelCommandRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "InstanceIds"))
    CancelCommandRequest.struct_class = Types::CancelCommandRequest

    CancelCommandResult.struct_class = Types::CancelCommandResult

    CancelMaintenanceWindowExecutionRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    CancelMaintenanceWindowExecutionRequest.struct_class = Types::CancelMaintenanceWindowExecutionRequest

    CancelMaintenanceWindowExecutionResult.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    CancelMaintenanceWindowExecutionResult.struct_class = Types::CancelMaintenanceWindowExecutionResult

    CategoryEnumList.member = Shapes::ShapeRef.new(shape: Category)

    CategoryList.member = Shapes::ShapeRef.new(shape: Category)

    CloudWatchOutputConfig.add_member(:cloud_watch_log_group_name, Shapes::ShapeRef.new(shape: CloudWatchLogGroupName, location_name: "CloudWatchLogGroupName"))
    CloudWatchOutputConfig.add_member(:cloud_watch_output_enabled, Shapes::ShapeRef.new(shape: CloudWatchOutputEnabled, location_name: "CloudWatchOutputEnabled"))
    CloudWatchOutputConfig.struct_class = Types::CloudWatchOutputConfig

    Command.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    Command.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    Command.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    Command.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    Command.add_member(:expires_after, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpiresAfter"))
    Command.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    Command.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "InstanceIds"))
    Command.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    Command.add_member(:requested_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "RequestedDateTime"))
    Command.add_member(:status, Shapes::ShapeRef.new(shape: CommandStatus, location_name: "Status"))
    Command.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    Command.add_member(:output_s3_region, Shapes::ShapeRef.new(shape: S3Region, location_name: "OutputS3Region"))
    Command.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    Command.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    Command.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    Command.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    Command.add_member(:target_count, Shapes::ShapeRef.new(shape: TargetCount, location_name: "TargetCount"))
    Command.add_member(:completed_count, Shapes::ShapeRef.new(shape: CompletedCount, location_name: "CompletedCount"))
    Command.add_member(:error_count, Shapes::ShapeRef.new(shape: ErrorCount, location_name: "ErrorCount"))
    Command.add_member(:delivery_timed_out_count, Shapes::ShapeRef.new(shape: DeliveryTimedOutCount, location_name: "DeliveryTimedOutCount"))
    Command.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRole"))
    Command.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    Command.add_member(:cloud_watch_output_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, location_name: "CloudWatchOutputConfig"))
    Command.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: TimeoutSeconds, location_name: "TimeoutSeconds"))
    Command.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    Command.add_member(:triggered_alarms, Shapes::ShapeRef.new(shape: AlarmStateInformationList, location_name: "TriggeredAlarms"))
    Command.struct_class = Types::Command

    CommandFilter.add_member(:key, Shapes::ShapeRef.new(shape: CommandFilterKey, required: true, location_name: "key"))
    CommandFilter.add_member(:value, Shapes::ShapeRef.new(shape: CommandFilterValue, required: true, location_name: "value"))
    CommandFilter.struct_class = Types::CommandFilter

    CommandFilterList.member = Shapes::ShapeRef.new(shape: CommandFilter)

    CommandInvocation.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    CommandInvocation.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    CommandInvocation.add_member(:instance_name, Shapes::ShapeRef.new(shape: InstanceTagName, location_name: "InstanceName"))
    CommandInvocation.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    CommandInvocation.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    CommandInvocation.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    CommandInvocation.add_member(:requested_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "RequestedDateTime"))
    CommandInvocation.add_member(:status, Shapes::ShapeRef.new(shape: CommandInvocationStatus, location_name: "Status"))
    CommandInvocation.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    CommandInvocation.add_member(:trace_output, Shapes::ShapeRef.new(shape: InvocationTraceOutput, location_name: "TraceOutput"))
    CommandInvocation.add_member(:standard_output_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardOutputUrl"))
    CommandInvocation.add_member(:standard_error_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardErrorUrl"))
    CommandInvocation.add_member(:command_plugins, Shapes::ShapeRef.new(shape: CommandPluginList, location_name: "CommandPlugins"))
    CommandInvocation.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRole"))
    CommandInvocation.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    CommandInvocation.add_member(:cloud_watch_output_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, location_name: "CloudWatchOutputConfig"))
    CommandInvocation.struct_class = Types::CommandInvocation

    CommandInvocationList.member = Shapes::ShapeRef.new(shape: CommandInvocation)

    CommandList.member = Shapes::ShapeRef.new(shape: Command)

    CommandPlugin.add_member(:name, Shapes::ShapeRef.new(shape: CommandPluginName, location_name: "Name"))
    CommandPlugin.add_member(:status, Shapes::ShapeRef.new(shape: CommandPluginStatus, location_name: "Status"))
    CommandPlugin.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    CommandPlugin.add_member(:response_code, Shapes::ShapeRef.new(shape: ResponseCode, location_name: "ResponseCode"))
    CommandPlugin.add_member(:response_start_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ResponseStartDateTime"))
    CommandPlugin.add_member(:response_finish_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ResponseFinishDateTime"))
    CommandPlugin.add_member(:output, Shapes::ShapeRef.new(shape: CommandPluginOutput, location_name: "Output"))
    CommandPlugin.add_member(:standard_output_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardOutputUrl"))
    CommandPlugin.add_member(:standard_error_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardErrorUrl"))
    CommandPlugin.add_member(:output_s3_region, Shapes::ShapeRef.new(shape: S3Region, location_name: "OutputS3Region"))
    CommandPlugin.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    CommandPlugin.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    CommandPlugin.struct_class = Types::CommandPlugin

    CommandPluginList.member = Shapes::ShapeRef.new(shape: CommandPlugin)

    ComplianceExecutionSummary.add_member(:execution_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "ExecutionTime"))
    ComplianceExecutionSummary.add_member(:execution_id, Shapes::ShapeRef.new(shape: ComplianceExecutionId, location_name: "ExecutionId"))
    ComplianceExecutionSummary.add_member(:execution_type, Shapes::ShapeRef.new(shape: ComplianceExecutionType, location_name: "ExecutionType"))
    ComplianceExecutionSummary.struct_class = Types::ComplianceExecutionSummary

    ComplianceItem.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceTypeName, location_name: "ComplianceType"))
    ComplianceItem.add_member(:resource_type, Shapes::ShapeRef.new(shape: ComplianceResourceType, location_name: "ResourceType"))
    ComplianceItem.add_member(:resource_id, Shapes::ShapeRef.new(shape: ComplianceResourceId, location_name: "ResourceId"))
    ComplianceItem.add_member(:id, Shapes::ShapeRef.new(shape: ComplianceItemId, location_name: "Id"))
    ComplianceItem.add_member(:title, Shapes::ShapeRef.new(shape: ComplianceItemTitle, location_name: "Title"))
    ComplianceItem.add_member(:status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "Status"))
    ComplianceItem.add_member(:severity, Shapes::ShapeRef.new(shape: ComplianceSeverity, location_name: "Severity"))
    ComplianceItem.add_member(:execution_summary, Shapes::ShapeRef.new(shape: ComplianceExecutionSummary, location_name: "ExecutionSummary"))
    ComplianceItem.add_member(:details, Shapes::ShapeRef.new(shape: ComplianceItemDetails, location_name: "Details"))
    ComplianceItem.struct_class = Types::ComplianceItem

    ComplianceItemDetails.key = Shapes::ShapeRef.new(shape: AttributeName)
    ComplianceItemDetails.value = Shapes::ShapeRef.new(shape: AttributeValue)

    ComplianceItemEntry.add_member(:id, Shapes::ShapeRef.new(shape: ComplianceItemId, location_name: "Id"))
    ComplianceItemEntry.add_member(:title, Shapes::ShapeRef.new(shape: ComplianceItemTitle, location_name: "Title"))
    ComplianceItemEntry.add_member(:severity, Shapes::ShapeRef.new(shape: ComplianceSeverity, required: true, location_name: "Severity"))
    ComplianceItemEntry.add_member(:status, Shapes::ShapeRef.new(shape: ComplianceStatus, required: true, location_name: "Status"))
    ComplianceItemEntry.add_member(:details, Shapes::ShapeRef.new(shape: ComplianceItemDetails, location_name: "Details"))
    ComplianceItemEntry.struct_class = Types::ComplianceItemEntry

    ComplianceItemEntryList.member = Shapes::ShapeRef.new(shape: ComplianceItemEntry)

    ComplianceItemList.member = Shapes::ShapeRef.new(shape: ComplianceItem)

    ComplianceResourceIdList.member = Shapes::ShapeRef.new(shape: ComplianceResourceId)

    ComplianceResourceTypeList.member = Shapes::ShapeRef.new(shape: ComplianceResourceType)

    ComplianceStringFilter.add_member(:key, Shapes::ShapeRef.new(shape: ComplianceStringFilterKey, location_name: "Key"))
    ComplianceStringFilter.add_member(:values, Shapes::ShapeRef.new(shape: ComplianceStringFilterValueList, location_name: "Values"))
    ComplianceStringFilter.add_member(:type, Shapes::ShapeRef.new(shape: ComplianceQueryOperatorType, location_name: "Type"))
    ComplianceStringFilter.struct_class = Types::ComplianceStringFilter

    ComplianceStringFilterList.member = Shapes::ShapeRef.new(shape: ComplianceStringFilter)

    ComplianceStringFilterValueList.member = Shapes::ShapeRef.new(shape: ComplianceFilterValue)

    ComplianceSummaryItem.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceTypeName, location_name: "ComplianceType"))
    ComplianceSummaryItem.add_member(:compliant_summary, Shapes::ShapeRef.new(shape: CompliantSummary, location_name: "CompliantSummary"))
    ComplianceSummaryItem.add_member(:non_compliant_summary, Shapes::ShapeRef.new(shape: NonCompliantSummary, location_name: "NonCompliantSummary"))
    ComplianceSummaryItem.struct_class = Types::ComplianceSummaryItem

    ComplianceSummaryItemList.member = Shapes::ShapeRef.new(shape: ComplianceSummaryItem)

    ComplianceTypeCountLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ComplianceTypeCountLimitExceededException.struct_class = Types::ComplianceTypeCountLimitExceededException

    CompliantSummary.add_member(:compliant_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "CompliantCount"))
    CompliantSummary.add_member(:severity_summary, Shapes::ShapeRef.new(shape: SeveritySummary, location_name: "SeveritySummary"))
    CompliantSummary.struct_class = Types::CompliantSummary

    CreateActivationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ActivationDescription, location_name: "Description"))
    CreateActivationRequest.add_member(:default_instance_name, Shapes::ShapeRef.new(shape: DefaultInstanceName, location_name: "DefaultInstanceName"))
    CreateActivationRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, required: true, location_name: "IamRole"))
    CreateActivationRequest.add_member(:registration_limit, Shapes::ShapeRef.new(shape: RegistrationLimit, location_name: "RegistrationLimit", metadata: {"box" => true}))
    CreateActivationRequest.add_member(:expiration_date, Shapes::ShapeRef.new(shape: ExpirationDate, location_name: "ExpirationDate"))
    CreateActivationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateActivationRequest.add_member(:registration_metadata, Shapes::ShapeRef.new(shape: RegistrationMetadataList, location_name: "RegistrationMetadata"))
    CreateActivationRequest.struct_class = Types::CreateActivationRequest

    CreateActivationResult.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, location_name: "ActivationId"))
    CreateActivationResult.add_member(:activation_code, Shapes::ShapeRef.new(shape: ActivationCode, location_name: "ActivationCode"))
    CreateActivationResult.struct_class = Types::CreateActivationResult

    CreateAssociationBatchRequest.add_member(:entries, Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntries, required: true, location_name: "Entries"))
    CreateAssociationBatchRequest.struct_class = Types::CreateAssociationBatchRequest

    CreateAssociationBatchRequestEntries.member = Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntry)

    CreateAssociationBatchRequestEntry.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
    CreateAssociationBatchRequestEntry.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    CreateAssociationBatchRequestEntry.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateAssociationBatchRequestEntry.add_member(:automation_target_parameter_name, Shapes::ShapeRef.new(shape: AutomationTargetParameterName, location_name: "AutomationTargetParameterName"))
    CreateAssociationBatchRequestEntry.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    CreateAssociationBatchRequestEntry.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    CreateAssociationBatchRequestEntry.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    CreateAssociationBatchRequestEntry.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    CreateAssociationBatchRequestEntry.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    CreateAssociationBatchRequestEntry.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    CreateAssociationBatchRequestEntry.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    CreateAssociationBatchRequestEntry.add_member(:compliance_severity, Shapes::ShapeRef.new(shape: AssociationComplianceSeverity, location_name: "ComplianceSeverity"))
    CreateAssociationBatchRequestEntry.add_member(:sync_compliance, Shapes::ShapeRef.new(shape: AssociationSyncCompliance, location_name: "SyncCompliance"))
    CreateAssociationBatchRequestEntry.add_member(:apply_only_at_cron_interval, Shapes::ShapeRef.new(shape: ApplyOnlyAtCronInterval, location_name: "ApplyOnlyAtCronInterval"))
    CreateAssociationBatchRequestEntry.add_member(:calendar_names, Shapes::ShapeRef.new(shape: CalendarNameOrARNList, location_name: "CalendarNames"))
    CreateAssociationBatchRequestEntry.add_member(:target_locations, Shapes::ShapeRef.new(shape: TargetLocations, location_name: "TargetLocations"))
    CreateAssociationBatchRequestEntry.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: ScheduleOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    CreateAssociationBatchRequestEntry.add_member(:duration, Shapes::ShapeRef.new(shape: Duration, location_name: "Duration", metadata: {"box" => true}))
    CreateAssociationBatchRequestEntry.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps", metadata: {"box" => true}))
    CreateAssociationBatchRequestEntry.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    CreateAssociationBatchRequestEntry.struct_class = Types::CreateAssociationBatchRequestEntry

    CreateAssociationBatchResult.add_member(:successful, Shapes::ShapeRef.new(shape: AssociationDescriptionList, location_name: "Successful"))
    CreateAssociationBatchResult.add_member(:failed, Shapes::ShapeRef.new(shape: FailedCreateAssociationList, location_name: "Failed"))
    CreateAssociationBatchResult.struct_class = Types::CreateAssociationBatchResult

    CreateAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
    CreateAssociationRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    CreateAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    CreateAssociationRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateAssociationRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    CreateAssociationRequest.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    CreateAssociationRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    CreateAssociationRequest.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    CreateAssociationRequest.add_member(:automation_target_parameter_name, Shapes::ShapeRef.new(shape: AutomationTargetParameterName, location_name: "AutomationTargetParameterName"))
    CreateAssociationRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    CreateAssociationRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    CreateAssociationRequest.add_member(:compliance_severity, Shapes::ShapeRef.new(shape: AssociationComplianceSeverity, location_name: "ComplianceSeverity"))
    CreateAssociationRequest.add_member(:sync_compliance, Shapes::ShapeRef.new(shape: AssociationSyncCompliance, location_name: "SyncCompliance"))
    CreateAssociationRequest.add_member(:apply_only_at_cron_interval, Shapes::ShapeRef.new(shape: ApplyOnlyAtCronInterval, location_name: "ApplyOnlyAtCronInterval"))
    CreateAssociationRequest.add_member(:calendar_names, Shapes::ShapeRef.new(shape: CalendarNameOrARNList, location_name: "CalendarNames"))
    CreateAssociationRequest.add_member(:target_locations, Shapes::ShapeRef.new(shape: TargetLocations, location_name: "TargetLocations"))
    CreateAssociationRequest.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: ScheduleOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    CreateAssociationRequest.add_member(:duration, Shapes::ShapeRef.new(shape: Duration, location_name: "Duration", metadata: {"box" => true}))
    CreateAssociationRequest.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps", metadata: {"box" => true}))
    CreateAssociationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", metadata: {"box" => true}))
    CreateAssociationRequest.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    CreateAssociationRequest.struct_class = Types::CreateAssociationRequest

    CreateAssociationResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
    CreateAssociationResult.struct_class = Types::CreateAssociationResult

    CreateDocumentRequest.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, required: true, location_name: "Content"))
    CreateDocumentRequest.add_member(:requires, Shapes::ShapeRef.new(shape: DocumentRequiresList, location_name: "Requires"))
    CreateDocumentRequest.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentsSourceList, location_name: "Attachments"))
    CreateDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    CreateDocumentRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DocumentDisplayName, location_name: "DisplayName"))
    CreateDocumentRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "VersionName"))
    CreateDocumentRequest.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    CreateDocumentRequest.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    CreateDocumentRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    CreateDocumentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDocumentRequest.struct_class = Types::CreateDocumentRequest

    CreateDocumentResult.add_member(:document_description, Shapes::ShapeRef.new(shape: DocumentDescription, location_name: "DocumentDescription"))
    CreateDocumentResult.struct_class = Types::CreateDocumentResult

    CreateMaintenanceWindowRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, required: true, location_name: "Name"))
    CreateMaintenanceWindowRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    CreateMaintenanceWindowRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "StartDate"))
    CreateMaintenanceWindowRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "EndDate"))
    CreateMaintenanceWindowRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, required: true, location_name: "Schedule"))
    CreateMaintenanceWindowRequest.add_member(:schedule_timezone, Shapes::ShapeRef.new(shape: MaintenanceWindowTimezone, location_name: "ScheduleTimezone"))
    CreateMaintenanceWindowRequest.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: MaintenanceWindowOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    CreateMaintenanceWindowRequest.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, required: true, location_name: "Duration"))
    CreateMaintenanceWindowRequest.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, required: true, location_name: "Cutoff"))
    CreateMaintenanceWindowRequest.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, required: true, location_name: "AllowUnassociatedTargets"))
    CreateMaintenanceWindowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateMaintenanceWindowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMaintenanceWindowRequest.struct_class = Types::CreateMaintenanceWindowRequest

    CreateMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    CreateMaintenanceWindowResult.struct_class = Types::CreateMaintenanceWindowResult

    CreateOpsItemRequest.add_member(:description, Shapes::ShapeRef.new(shape: OpsItemDescription, required: true, location_name: "Description"))
    CreateOpsItemRequest.add_member(:ops_item_type, Shapes::ShapeRef.new(shape: OpsItemType, location_name: "OpsItemType"))
    CreateOpsItemRequest.add_member(:operational_data, Shapes::ShapeRef.new(shape: OpsItemOperationalData, location_name: "OperationalData"))
    CreateOpsItemRequest.add_member(:notifications, Shapes::ShapeRef.new(shape: OpsItemNotifications, location_name: "Notifications"))
    CreateOpsItemRequest.add_member(:priority, Shapes::ShapeRef.new(shape: OpsItemPriority, location_name: "Priority"))
    CreateOpsItemRequest.add_member(:related_ops_items, Shapes::ShapeRef.new(shape: RelatedOpsItems, location_name: "RelatedOpsItems"))
    CreateOpsItemRequest.add_member(:source, Shapes::ShapeRef.new(shape: OpsItemSource, required: true, location_name: "Source"))
    CreateOpsItemRequest.add_member(:title, Shapes::ShapeRef.new(shape: OpsItemTitle, required: true, location_name: "Title"))
    CreateOpsItemRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateOpsItemRequest.add_member(:category, Shapes::ShapeRef.new(shape: OpsItemCategory, location_name: "Category"))
    CreateOpsItemRequest.add_member(:severity, Shapes::ShapeRef.new(shape: OpsItemSeverity, location_name: "Severity"))
    CreateOpsItemRequest.add_member(:actual_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ActualStartTime"))
    CreateOpsItemRequest.add_member(:actual_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ActualEndTime"))
    CreateOpsItemRequest.add_member(:planned_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "PlannedStartTime"))
    CreateOpsItemRequest.add_member(:planned_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "PlannedEndTime"))
    CreateOpsItemRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: OpsItemAccountId, location_name: "AccountId"))
    CreateOpsItemRequest.struct_class = Types::CreateOpsItemRequest

    CreateOpsItemResponse.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: String, location_name: "OpsItemId"))
    CreateOpsItemResponse.add_member(:ops_item_arn, Shapes::ShapeRef.new(shape: OpsItemArn, location_name: "OpsItemArn"))
    CreateOpsItemResponse.struct_class = Types::CreateOpsItemResponse

    CreateOpsMetadataRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: OpsMetadataResourceId, required: true, location_name: "ResourceId"))
    CreateOpsMetadataRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "Metadata"))
    CreateOpsMetadataRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateOpsMetadataRequest.struct_class = Types::CreateOpsMetadataRequest

    CreateOpsMetadataResult.add_member(:ops_metadata_arn, Shapes::ShapeRef.new(shape: OpsMetadataArn, location_name: "OpsMetadataArn"))
    CreateOpsMetadataResult.struct_class = Types::CreateOpsMetadataResult

    CreatePatchBaselineRequest.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    CreatePatchBaselineRequest.add_member(:name, Shapes::ShapeRef.new(shape: BaselineName, required: true, location_name: "Name"))
    CreatePatchBaselineRequest.add_member(:global_filters, Shapes::ShapeRef.new(shape: PatchFilterGroup, location_name: "GlobalFilters"))
    CreatePatchBaselineRequest.add_member(:approval_rules, Shapes::ShapeRef.new(shape: PatchRuleGroup, location_name: "ApprovalRules"))
    CreatePatchBaselineRequest.add_member(:approved_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "ApprovedPatches"))
    CreatePatchBaselineRequest.add_member(:approved_patches_compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ApprovedPatchesComplianceLevel"))
    CreatePatchBaselineRequest.add_member(:approved_patches_enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApprovedPatchesEnableNonSecurity", metadata: {"box" => true}))
    CreatePatchBaselineRequest.add_member(:rejected_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "RejectedPatches"))
    CreatePatchBaselineRequest.add_member(:rejected_patches_action, Shapes::ShapeRef.new(shape: PatchAction, location_name: "RejectedPatchesAction"))
    CreatePatchBaselineRequest.add_member(:description, Shapes::ShapeRef.new(shape: BaselineDescription, location_name: "Description"))
    CreatePatchBaselineRequest.add_member(:sources, Shapes::ShapeRef.new(shape: PatchSourceList, location_name: "Sources"))
    CreatePatchBaselineRequest.add_member(:available_security_updates_compliance_status, Shapes::ShapeRef.new(shape: PatchComplianceStatus, location_name: "AvailableSecurityUpdatesComplianceStatus"))
    CreatePatchBaselineRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreatePatchBaselineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreatePatchBaselineRequest.struct_class = Types::CreatePatchBaselineRequest

    CreatePatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    CreatePatchBaselineResult.struct_class = Types::CreatePatchBaselineResult

    CreateResourceDataSyncRequest.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, required: true, location_name: "SyncName"))
    CreateResourceDataSyncRequest.add_member(:s3_destination, Shapes::ShapeRef.new(shape: ResourceDataSyncS3Destination, location_name: "S3Destination"))
    CreateResourceDataSyncRequest.add_member(:sync_type, Shapes::ShapeRef.new(shape: ResourceDataSyncType, location_name: "SyncType"))
    CreateResourceDataSyncRequest.add_member(:sync_source, Shapes::ShapeRef.new(shape: ResourceDataSyncSource, location_name: "SyncSource"))
    CreateResourceDataSyncRequest.struct_class = Types::CreateResourceDataSyncRequest

    CreateResourceDataSyncResult.struct_class = Types::CreateResourceDataSyncResult

    Credentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: AccessKeyIdType, required: true, location_name: "AccessKeyId"))
    Credentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: AccessKeySecretType, required: true, location_name: "SecretAccessKey"))
    Credentials.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionTokenType, required: true, location_name: "SessionToken"))
    Credentials.add_member(:expiration_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "ExpirationTime"))
    Credentials.struct_class = Types::Credentials

    CustomSchemaCountLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    CustomSchemaCountLimitExceededException.struct_class = Types::CustomSchemaCountLimitExceededException

    DeleteActivationRequest.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, required: true, location_name: "ActivationId"))
    DeleteActivationRequest.struct_class = Types::DeleteActivationRequest

    DeleteActivationResult.struct_class = Types::DeleteActivationResult

    DeleteAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    DeleteAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    DeleteAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    DeleteAssociationRequest.struct_class = Types::DeleteAssociationRequest

    DeleteAssociationResult.struct_class = Types::DeleteAssociationResult

    DeleteDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    DeleteDocumentRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DeleteDocumentRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "VersionName"))
    DeleteDocumentRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "Force"))
    DeleteDocumentRequest.struct_class = Types::DeleteDocumentRequest

    DeleteDocumentResult.struct_class = Types::DeleteDocumentResult

    DeleteInventoryRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    DeleteInventoryRequest.add_member(:schema_delete_option, Shapes::ShapeRef.new(shape: InventorySchemaDeleteOption, location_name: "SchemaDeleteOption"))
    DeleteInventoryRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    DeleteInventoryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: UUID, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    DeleteInventoryRequest.struct_class = Types::DeleteInventoryRequest

    DeleteInventoryResult.add_member(:deletion_id, Shapes::ShapeRef.new(shape: UUID, location_name: "DeletionId"))
    DeleteInventoryResult.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, location_name: "TypeName"))
    DeleteInventoryResult.add_member(:deletion_summary, Shapes::ShapeRef.new(shape: InventoryDeletionSummary, location_name: "DeletionSummary"))
    DeleteInventoryResult.struct_class = Types::DeleteInventoryResult

    DeleteMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DeleteMaintenanceWindowRequest.struct_class = Types::DeleteMaintenanceWindowRequest

    DeleteMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    DeleteMaintenanceWindowResult.struct_class = Types::DeleteMaintenanceWindowResult

    DeleteOpsItemRequest.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: OpsItemId, required: true, location_name: "OpsItemId"))
    DeleteOpsItemRequest.struct_class = Types::DeleteOpsItemRequest

    DeleteOpsItemResponse.struct_class = Types::DeleteOpsItemResponse

    DeleteOpsMetadataRequest.add_member(:ops_metadata_arn, Shapes::ShapeRef.new(shape: OpsMetadataArn, required: true, location_name: "OpsMetadataArn"))
    DeleteOpsMetadataRequest.struct_class = Types::DeleteOpsMetadataRequest

    DeleteOpsMetadataResult.struct_class = Types::DeleteOpsMetadataResult

    DeleteParameterRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    DeleteParameterRequest.struct_class = Types::DeleteParameterRequest

    DeleteParameterResult.struct_class = Types::DeleteParameterResult

    DeleteParametersRequest.add_member(:names, Shapes::ShapeRef.new(shape: ParameterNameList, required: true, location_name: "Names"))
    DeleteParametersRequest.struct_class = Types::DeleteParametersRequest

    DeleteParametersResult.add_member(:deleted_parameters, Shapes::ShapeRef.new(shape: ParameterNameList, location_name: "DeletedParameters"))
    DeleteParametersResult.add_member(:invalid_parameters, Shapes::ShapeRef.new(shape: ParameterNameList, location_name: "InvalidParameters"))
    DeleteParametersResult.struct_class = Types::DeleteParametersResult

    DeletePatchBaselineRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    DeletePatchBaselineRequest.struct_class = Types::DeletePatchBaselineRequest

    DeletePatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    DeletePatchBaselineResult.struct_class = Types::DeletePatchBaselineResult

    DeleteResourceDataSyncRequest.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, required: true, location_name: "SyncName"))
    DeleteResourceDataSyncRequest.add_member(:sync_type, Shapes::ShapeRef.new(shape: ResourceDataSyncType, location_name: "SyncType"))
    DeleteResourceDataSyncRequest.struct_class = Types::DeleteResourceDataSyncRequest

    DeleteResourceDataSyncResult.struct_class = Types::DeleteResourceDataSyncResult

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    DeleteResourcePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location_name: "PolicyId"))
    DeleteResourcePolicyRequest.add_member(:policy_hash, Shapes::ShapeRef.new(shape: PolicyHash, required: true, location_name: "PolicyHash"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeregisterManagedInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ManagedInstanceId, required: true, location_name: "InstanceId"))
    DeregisterManagedInstanceRequest.struct_class = Types::DeregisterManagedInstanceRequest

    DeregisterManagedInstanceResult.struct_class = Types::DeregisterManagedInstanceResult

    DeregisterPatchBaselineForPatchGroupRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    DeregisterPatchBaselineForPatchGroupRequest.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    DeregisterPatchBaselineForPatchGroupRequest.struct_class = Types::DeregisterPatchBaselineForPatchGroupRequest

    DeregisterPatchBaselineForPatchGroupResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    DeregisterPatchBaselineForPatchGroupResult.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, location_name: "PatchGroup"))
    DeregisterPatchBaselineForPatchGroupResult.struct_class = Types::DeregisterPatchBaselineForPatchGroupResult

    DeregisterTargetFromMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DeregisterTargetFromMaintenanceWindowRequest.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, required: true, location_name: "WindowTargetId"))
    DeregisterTargetFromMaintenanceWindowRequest.add_member(:safe, Shapes::ShapeRef.new(shape: Boolean, location_name: "Safe", metadata: {"box" => true}))
    DeregisterTargetFromMaintenanceWindowRequest.struct_class = Types::DeregisterTargetFromMaintenanceWindowRequest

    DeregisterTargetFromMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    DeregisterTargetFromMaintenanceWindowResult.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, location_name: "WindowTargetId"))
    DeregisterTargetFromMaintenanceWindowResult.struct_class = Types::DeregisterTargetFromMaintenanceWindowResult

    DeregisterTaskFromMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DeregisterTaskFromMaintenanceWindowRequest.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, required: true, location_name: "WindowTaskId"))
    DeregisterTaskFromMaintenanceWindowRequest.struct_class = Types::DeregisterTaskFromMaintenanceWindowRequest

    DeregisterTaskFromMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    DeregisterTaskFromMaintenanceWindowResult.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    DeregisterTaskFromMaintenanceWindowResult.struct_class = Types::DeregisterTaskFromMaintenanceWindowResult

    DescribeActivationsFilter.add_member(:filter_key, Shapes::ShapeRef.new(shape: DescribeActivationsFilterKeys, location_name: "FilterKey"))
    DescribeActivationsFilter.add_member(:filter_values, Shapes::ShapeRef.new(shape: StringList, location_name: "FilterValues"))
    DescribeActivationsFilter.struct_class = Types::DescribeActivationsFilter

    DescribeActivationsFilterList.member = Shapes::ShapeRef.new(shape: DescribeActivationsFilter)

    DescribeActivationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeActivationsFilterList, location_name: "Filters"))
    DescribeActivationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeActivationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeActivationsRequest.struct_class = Types::DescribeActivationsRequest

    DescribeActivationsResult.add_member(:activation_list, Shapes::ShapeRef.new(shape: ActivationList, location_name: "ActivationList"))
    DescribeActivationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeActivationsResult.struct_class = Types::DescribeActivationsResult

    DescribeAssociationExecutionTargetsRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "AssociationId"))
    DescribeAssociationExecutionTargetsRequest.add_member(:execution_id, Shapes::ShapeRef.new(shape: AssociationExecutionId, required: true, location_name: "ExecutionId"))
    DescribeAssociationExecutionTargetsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AssociationExecutionTargetsFilterList, location_name: "Filters"))
    DescribeAssociationExecutionTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeAssociationExecutionTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAssociationExecutionTargetsRequest.struct_class = Types::DescribeAssociationExecutionTargetsRequest

    DescribeAssociationExecutionTargetsResult.add_member(:association_execution_targets, Shapes::ShapeRef.new(shape: AssociationExecutionTargetsList, location_name: "AssociationExecutionTargets"))
    DescribeAssociationExecutionTargetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAssociationExecutionTargetsResult.struct_class = Types::DescribeAssociationExecutionTargetsResult

    DescribeAssociationExecutionsRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "AssociationId"))
    DescribeAssociationExecutionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AssociationExecutionFilterList, location_name: "Filters"))
    DescribeAssociationExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeAssociationExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAssociationExecutionsRequest.struct_class = Types::DescribeAssociationExecutionsRequest

    DescribeAssociationExecutionsResult.add_member(:association_executions, Shapes::ShapeRef.new(shape: AssociationExecutionsList, location_name: "AssociationExecutions"))
    DescribeAssociationExecutionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAssociationExecutionsResult.struct_class = Types::DescribeAssociationExecutionsResult

    DescribeAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    DescribeAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    DescribeAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    DescribeAssociationRequest.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    DescribeAssociationRequest.struct_class = Types::DescribeAssociationRequest

    DescribeAssociationResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
    DescribeAssociationResult.struct_class = Types::DescribeAssociationResult

    DescribeAutomationExecutionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AutomationExecutionFilterList, location_name: "Filters"))
    DescribeAutomationExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeAutomationExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAutomationExecutionsRequest.struct_class = Types::DescribeAutomationExecutionsRequest

    DescribeAutomationExecutionsResult.add_member(:automation_execution_metadata_list, Shapes::ShapeRef.new(shape: AutomationExecutionMetadataList, location_name: "AutomationExecutionMetadataList"))
    DescribeAutomationExecutionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAutomationExecutionsResult.struct_class = Types::DescribeAutomationExecutionsResult

    DescribeAutomationStepExecutionsRequest.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, required: true, location_name: "AutomationExecutionId"))
    DescribeAutomationStepExecutionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: StepExecutionFilterList, location_name: "Filters"))
    DescribeAutomationStepExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAutomationStepExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeAutomationStepExecutionsRequest.add_member(:reverse_order, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReverseOrder", metadata: {"box" => true}))
    DescribeAutomationStepExecutionsRequest.struct_class = Types::DescribeAutomationStepExecutionsRequest

    DescribeAutomationStepExecutionsResult.add_member(:step_executions, Shapes::ShapeRef.new(shape: StepExecutionList, location_name: "StepExecutions"))
    DescribeAutomationStepExecutionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAutomationStepExecutionsResult.struct_class = Types::DescribeAutomationStepExecutionsResult

    DescribeAvailablePatchesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterList, location_name: "Filters"))
    DescribeAvailablePatchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchBaselineMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeAvailablePatchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAvailablePatchesRequest.struct_class = Types::DescribeAvailablePatchesRequest

    DescribeAvailablePatchesResult.add_member(:patches, Shapes::ShapeRef.new(shape: PatchList, location_name: "Patches"))
    DescribeAvailablePatchesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAvailablePatchesResult.struct_class = Types::DescribeAvailablePatchesResult

    DescribeDocumentPermissionRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    DescribeDocumentPermissionRequest.add_member(:permission_type, Shapes::ShapeRef.new(shape: DocumentPermissionType, required: true, location_name: "PermissionType"))
    DescribeDocumentPermissionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DocumentPermissionMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeDocumentPermissionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDocumentPermissionRequest.struct_class = Types::DescribeDocumentPermissionRequest

    DescribeDocumentPermissionResponse.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
    DescribeDocumentPermissionResponse.add_member(:account_sharing_info_list, Shapes::ShapeRef.new(shape: AccountSharingInfoList, location_name: "AccountSharingInfoList"))
    DescribeDocumentPermissionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeDocumentPermissionResponse.struct_class = Types::DescribeDocumentPermissionResponse

    DescribeDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
    DescribeDocumentRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DescribeDocumentRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "VersionName"))
    DescribeDocumentRequest.struct_class = Types::DescribeDocumentRequest

    DescribeDocumentResult.add_member(:document, Shapes::ShapeRef.new(shape: DocumentDescription, location_name: "Document"))
    DescribeDocumentResult.struct_class = Types::DescribeDocumentResult

    DescribeEffectiveInstanceAssociationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    DescribeEffectiveInstanceAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: EffectiveInstanceAssociationMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeEffectiveInstanceAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEffectiveInstanceAssociationsRequest.struct_class = Types::DescribeEffectiveInstanceAssociationsRequest

    DescribeEffectiveInstanceAssociationsResult.add_member(:associations, Shapes::ShapeRef.new(shape: InstanceAssociationList, location_name: "Associations"))
    DescribeEffectiveInstanceAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEffectiveInstanceAssociationsResult.struct_class = Types::DescribeEffectiveInstanceAssociationsResult

    DescribeEffectivePatchesForPatchBaselineRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    DescribeEffectivePatchesForPatchBaselineRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchBaselineMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeEffectivePatchesForPatchBaselineRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEffectivePatchesForPatchBaselineRequest.struct_class = Types::DescribeEffectivePatchesForPatchBaselineRequest

    DescribeEffectivePatchesForPatchBaselineResult.add_member(:effective_patches, Shapes::ShapeRef.new(shape: EffectivePatchList, location_name: "EffectivePatches"))
    DescribeEffectivePatchesForPatchBaselineResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEffectivePatchesForPatchBaselineResult.struct_class = Types::DescribeEffectivePatchesForPatchBaselineResult

    DescribeInstanceAssociationsStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    DescribeInstanceAssociationsStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeInstanceAssociationsStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstanceAssociationsStatusRequest.struct_class = Types::DescribeInstanceAssociationsStatusRequest

    DescribeInstanceAssociationsStatusResult.add_member(:instance_association_status_infos, Shapes::ShapeRef.new(shape: InstanceAssociationStatusInfos, location_name: "InstanceAssociationStatusInfos"))
    DescribeInstanceAssociationsStatusResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstanceAssociationsStatusResult.struct_class = Types::DescribeInstanceAssociationsStatusResult

    DescribeInstanceInformationRequest.add_member(:instance_information_filter_list, Shapes::ShapeRef.new(shape: InstanceInformationFilterList, location_name: "InstanceInformationFilterList"))
    DescribeInstanceInformationRequest.add_member(:filters, Shapes::ShapeRef.new(shape: InstanceInformationStringFilterList, location_name: "Filters"))
    DescribeInstanceInformationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsEC2Compatible, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeInstanceInformationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstanceInformationRequest.struct_class = Types::DescribeInstanceInformationRequest

    DescribeInstanceInformationResult.add_member(:instance_information_list, Shapes::ShapeRef.new(shape: InstanceInformationList, location_name: "InstanceInformationList"))
    DescribeInstanceInformationResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstanceInformationResult.struct_class = Types::DescribeInstanceInformationResult

    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:filters, Shapes::ShapeRef.new(shape: InstancePatchStateFilterList, location_name: "Filters"))
    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchStatesForPatchGroupRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchComplianceMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeInstancePatchStatesForPatchGroupRequest.struct_class = Types::DescribeInstancePatchStatesForPatchGroupRequest

    DescribeInstancePatchStatesForPatchGroupResult.add_member(:instance_patch_states, Shapes::ShapeRef.new(shape: InstancePatchStatesList, location_name: "InstancePatchStates"))
    DescribeInstancePatchStatesForPatchGroupResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchStatesForPatchGroupResult.struct_class = Types::DescribeInstancePatchStatesForPatchGroupResult

    DescribeInstancePatchStatesRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, required: true, location_name: "InstanceIds"))
    DescribeInstancePatchStatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchStatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchComplianceMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeInstancePatchStatesRequest.struct_class = Types::DescribeInstancePatchStatesRequest

    DescribeInstancePatchStatesResult.add_member(:instance_patch_states, Shapes::ShapeRef.new(shape: InstancePatchStateList, location_name: "InstancePatchStates"))
    DescribeInstancePatchStatesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchStatesResult.struct_class = Types::DescribeInstancePatchStatesResult

    DescribeInstancePatchesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    DescribeInstancePatchesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterList, location_name: "Filters"))
    DescribeInstancePatchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchComplianceMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeInstancePatchesRequest.struct_class = Types::DescribeInstancePatchesRequest

    DescribeInstancePatchesResult.add_member(:patches, Shapes::ShapeRef.new(shape: PatchComplianceDataList, location_name: "Patches"))
    DescribeInstancePatchesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePatchesResult.struct_class = Types::DescribeInstancePatchesResult

    DescribeInstancePropertiesRequest.add_member(:instance_property_filter_list, Shapes::ShapeRef.new(shape: InstancePropertyFilterList, location_name: "InstancePropertyFilterList"))
    DescribeInstancePropertiesRequest.add_member(:filters_with_operator, Shapes::ShapeRef.new(shape: InstancePropertyStringFilterList, location_name: "FiltersWithOperator"))
    DescribeInstancePropertiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DescribeInstancePropertiesMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeInstancePropertiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePropertiesRequest.struct_class = Types::DescribeInstancePropertiesRequest

    DescribeInstancePropertiesResult.add_member(:instance_properties, Shapes::ShapeRef.new(shape: InstanceProperties, location_name: "InstanceProperties"))
    DescribeInstancePropertiesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancePropertiesResult.struct_class = Types::DescribeInstancePropertiesResult

    DescribeInventoryDeletionsRequest.add_member(:deletion_id, Shapes::ShapeRef.new(shape: UUID, location_name: "DeletionId"))
    DescribeInventoryDeletionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInventoryDeletionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeInventoryDeletionsRequest.struct_class = Types::DescribeInventoryDeletionsRequest

    DescribeInventoryDeletionsResult.add_member(:inventory_deletions, Shapes::ShapeRef.new(shape: InventoryDeletionsList, location_name: "InventoryDeletions"))
    DescribeInventoryDeletionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInventoryDeletionsResult.struct_class = Types::DescribeInventoryDeletionsResult

    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, required: true, location_name: "TaskId"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionTaskInvocationsRequest.struct_class = Types::DescribeMaintenanceWindowExecutionTaskInvocationsRequest

    DescribeMaintenanceWindowExecutionTaskInvocationsResult.add_member(:window_execution_task_invocation_identities, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationIdentityList, location_name: "WindowExecutionTaskInvocationIdentities"))
    DescribeMaintenanceWindowExecutionTaskInvocationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionTaskInvocationsResult.struct_class = Types::DescribeMaintenanceWindowExecutionTaskInvocationsResult

    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeMaintenanceWindowExecutionTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionTasksRequest.struct_class = Types::DescribeMaintenanceWindowExecutionTasksRequest

    DescribeMaintenanceWindowExecutionTasksResult.add_member(:window_execution_task_identities, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskIdentityList, location_name: "WindowExecutionTaskIdentities"))
    DescribeMaintenanceWindowExecutionTasksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionTasksResult.struct_class = Types::DescribeMaintenanceWindowExecutionTasksResult

    DescribeMaintenanceWindowExecutionsRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DescribeMaintenanceWindowExecutionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeMaintenanceWindowExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionsRequest.struct_class = Types::DescribeMaintenanceWindowExecutionsRequest

    DescribeMaintenanceWindowExecutionsResult.add_member(:window_executions, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionList, location_name: "WindowExecutions"))
    DescribeMaintenanceWindowExecutionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowExecutionsResult.struct_class = Types::DescribeMaintenanceWindowExecutionsResult

    DescribeMaintenanceWindowScheduleRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    DescribeMaintenanceWindowScheduleRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    DescribeMaintenanceWindowScheduleRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: MaintenanceWindowResourceType, location_name: "ResourceType"))
    DescribeMaintenanceWindowScheduleRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowScheduleRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowSearchMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeMaintenanceWindowScheduleRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowScheduleRequest.struct_class = Types::DescribeMaintenanceWindowScheduleRequest

    DescribeMaintenanceWindowScheduleResult.add_member(:scheduled_window_executions, Shapes::ShapeRef.new(shape: ScheduledWindowExecutionList, location_name: "ScheduledWindowExecutions"))
    DescribeMaintenanceWindowScheduleResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowScheduleResult.struct_class = Types::DescribeMaintenanceWindowScheduleResult

    DescribeMaintenanceWindowTargetsRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DescribeMaintenanceWindowTargetsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowTargetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeMaintenanceWindowTargetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowTargetsRequest.struct_class = Types::DescribeMaintenanceWindowTargetsRequest

    DescribeMaintenanceWindowTargetsResult.add_member(:targets, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetList, location_name: "Targets"))
    DescribeMaintenanceWindowTargetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowTargetsResult.struct_class = Types::DescribeMaintenanceWindowTargetsResult

    DescribeMaintenanceWindowTasksRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    DescribeMaintenanceWindowTasksRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeMaintenanceWindowTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowTasksRequest.struct_class = Types::DescribeMaintenanceWindowTasksRequest

    DescribeMaintenanceWindowTasksResult.add_member(:tasks, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskList, location_name: "Tasks"))
    DescribeMaintenanceWindowTasksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowTasksResult.struct_class = Types::DescribeMaintenanceWindowTasksResult

    DescribeMaintenanceWindowsForTargetRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, required: true, location_name: "Targets"))
    DescribeMaintenanceWindowsForTargetRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: MaintenanceWindowResourceType, required: true, location_name: "ResourceType"))
    DescribeMaintenanceWindowsForTargetRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowSearchMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeMaintenanceWindowsForTargetRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowsForTargetRequest.struct_class = Types::DescribeMaintenanceWindowsForTargetRequest

    DescribeMaintenanceWindowsForTargetResult.add_member(:window_identities, Shapes::ShapeRef.new(shape: MaintenanceWindowsForTargetList, location_name: "WindowIdentities"))
    DescribeMaintenanceWindowsForTargetResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowsForTargetResult.struct_class = Types::DescribeMaintenanceWindowsForTargetResult

    DescribeMaintenanceWindowsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterList, location_name: "Filters"))
    DescribeMaintenanceWindowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaintenanceWindowMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeMaintenanceWindowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowsRequest.struct_class = Types::DescribeMaintenanceWindowsRequest

    DescribeMaintenanceWindowsResult.add_member(:window_identities, Shapes::ShapeRef.new(shape: MaintenanceWindowIdentityList, location_name: "WindowIdentities"))
    DescribeMaintenanceWindowsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeMaintenanceWindowsResult.struct_class = Types::DescribeMaintenanceWindowsResult

    DescribeOpsItemsRequest.add_member(:ops_item_filters, Shapes::ShapeRef.new(shape: OpsItemFilters, location_name: "OpsItemFilters"))
    DescribeOpsItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OpsItemMaxResults, location_name: "MaxResults"))
    DescribeOpsItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeOpsItemsRequest.struct_class = Types::DescribeOpsItemsRequest

    DescribeOpsItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeOpsItemsResponse.add_member(:ops_item_summaries, Shapes::ShapeRef.new(shape: OpsItemSummaries, location_name: "OpsItemSummaries"))
    DescribeOpsItemsResponse.struct_class = Types::DescribeOpsItemsResponse

    DescribeParametersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ParametersFilterList, location_name: "Filters"))
    DescribeParametersRequest.add_member(:parameter_filters, Shapes::ShapeRef.new(shape: ParameterStringFilterList, location_name: "ParameterFilters"))
    DescribeParametersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeParametersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeParametersRequest.add_member(:shared, Shapes::ShapeRef.new(shape: Boolean, location_name: "Shared", metadata: {"box" => true}))
    DescribeParametersRequest.struct_class = Types::DescribeParametersRequest

    DescribeParametersResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterMetadataList, location_name: "Parameters"))
    DescribeParametersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeParametersResult.struct_class = Types::DescribeParametersResult

    DescribePatchBaselinesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterList, location_name: "Filters"))
    DescribePatchBaselinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchBaselineMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribePatchBaselinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePatchBaselinesRequest.struct_class = Types::DescribePatchBaselinesRequest

    DescribePatchBaselinesResult.add_member(:baseline_identities, Shapes::ShapeRef.new(shape: PatchBaselineIdentityList, location_name: "BaselineIdentities"))
    DescribePatchBaselinesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePatchBaselinesResult.struct_class = Types::DescribePatchBaselinesResult

    DescribePatchGroupStateRequest.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    DescribePatchGroupStateRequest.struct_class = Types::DescribePatchGroupStateRequest

    DescribePatchGroupStateResult.add_member(:instances, Shapes::ShapeRef.new(shape: Integer, location_name: "Instances"))
    DescribePatchGroupStateResult.add_member(:instances_with_installed_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithInstalledPatches"))
    DescribePatchGroupStateResult.add_member(:instances_with_installed_other_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithInstalledOtherPatches"))
    DescribePatchGroupStateResult.add_member(:instances_with_installed_pending_reboot_patches, Shapes::ShapeRef.new(shape: InstancesCount, location_name: "InstancesWithInstalledPendingRebootPatches", metadata: {"box" => true}))
    DescribePatchGroupStateResult.add_member(:instances_with_installed_rejected_patches, Shapes::ShapeRef.new(shape: InstancesCount, location_name: "InstancesWithInstalledRejectedPatches", metadata: {"box" => true}))
    DescribePatchGroupStateResult.add_member(:instances_with_missing_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithMissingPatches"))
    DescribePatchGroupStateResult.add_member(:instances_with_failed_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithFailedPatches"))
    DescribePatchGroupStateResult.add_member(:instances_with_not_applicable_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithNotApplicablePatches"))
    DescribePatchGroupStateResult.add_member(:instances_with_unreported_not_applicable_patches, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithUnreportedNotApplicablePatches", metadata: {"box" => true}))
    DescribePatchGroupStateResult.add_member(:instances_with_critical_non_compliant_patches, Shapes::ShapeRef.new(shape: InstancesCount, location_name: "InstancesWithCriticalNonCompliantPatches", metadata: {"box" => true}))
    DescribePatchGroupStateResult.add_member(:instances_with_security_non_compliant_patches, Shapes::ShapeRef.new(shape: InstancesCount, location_name: "InstancesWithSecurityNonCompliantPatches", metadata: {"box" => true}))
    DescribePatchGroupStateResult.add_member(:instances_with_other_non_compliant_patches, Shapes::ShapeRef.new(shape: InstancesCount, location_name: "InstancesWithOtherNonCompliantPatches", metadata: {"box" => true}))
    DescribePatchGroupStateResult.add_member(:instances_with_available_security_updates, Shapes::ShapeRef.new(shape: Integer, location_name: "InstancesWithAvailableSecurityUpdates", metadata: {"box" => true}))
    DescribePatchGroupStateResult.struct_class = Types::DescribePatchGroupStateResult

    DescribePatchGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PatchBaselineMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribePatchGroupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterList, location_name: "Filters"))
    DescribePatchGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePatchGroupsRequest.struct_class = Types::DescribePatchGroupsRequest

    DescribePatchGroupsResult.add_member(:mappings, Shapes::ShapeRef.new(shape: PatchGroupPatchBaselineMappingList, location_name: "Mappings"))
    DescribePatchGroupsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePatchGroupsResult.struct_class = Types::DescribePatchGroupsResult

    DescribePatchPropertiesRequest.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, required: true, location_name: "OperatingSystem"))
    DescribePatchPropertiesRequest.add_member(:property, Shapes::ShapeRef.new(shape: PatchProperty, required: true, location_name: "Property"))
    DescribePatchPropertiesRequest.add_member(:patch_set, Shapes::ShapeRef.new(shape: PatchSet, location_name: "PatchSet"))
    DescribePatchPropertiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribePatchPropertiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePatchPropertiesRequest.struct_class = Types::DescribePatchPropertiesRequest

    DescribePatchPropertiesResult.add_member(:properties, Shapes::ShapeRef.new(shape: PatchPropertiesList, location_name: "Properties"))
    DescribePatchPropertiesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePatchPropertiesResult.struct_class = Types::DescribePatchPropertiesResult

    DescribeSessionsRequest.add_member(:state, Shapes::ShapeRef.new(shape: SessionState, required: true, location_name: "State"))
    DescribeSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SessionMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    DescribeSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSessionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SessionFilterList, location_name: "Filters"))
    DescribeSessionsRequest.struct_class = Types::DescribeSessionsRequest

    DescribeSessionsResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: SessionList, location_name: "Sessions"))
    DescribeSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeSessionsResponse.struct_class = Types::DescribeSessionsResponse

    DisassociateOpsItemRelatedItemRequest.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: OpsItemId, required: true, location_name: "OpsItemId"))
    DisassociateOpsItemRelatedItemRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationId, required: true, location_name: "AssociationId"))
    DisassociateOpsItemRelatedItemRequest.struct_class = Types::DisassociateOpsItemRelatedItemRequest

    DisassociateOpsItemRelatedItemResponse.struct_class = Types::DisassociateOpsItemRelatedItemResponse

    DocumentAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DocumentAlreadyExists.struct_class = Types::DocumentAlreadyExists

    DocumentDefaultVersionDescription.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    DocumentDefaultVersionDescription.add_member(:default_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DefaultVersion"))
    DocumentDefaultVersionDescription.add_member(:default_version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "DefaultVersionName"))
    DocumentDefaultVersionDescription.struct_class = Types::DocumentDefaultVersionDescription

    DocumentDescription.add_member(:sha_1, Shapes::ShapeRef.new(shape: DocumentSha1, location_name: "Sha1"))
    DocumentDescription.add_member(:hash, Shapes::ShapeRef.new(shape: DocumentHash, location_name: "Hash"))
    DocumentDescription.add_member(:hash_type, Shapes::ShapeRef.new(shape: DocumentHashType, location_name: "HashType"))
    DocumentDescription.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    DocumentDescription.add_member(:display_name, Shapes::ShapeRef.new(shape: DocumentDisplayName, location_name: "DisplayName"))
    DocumentDescription.add_member(:version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "VersionName"))
    DocumentDescription.add_member(:owner, Shapes::ShapeRef.new(shape: DocumentOwner, location_name: "Owner"))
    DocumentDescription.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    DocumentDescription.add_member(:status, Shapes::ShapeRef.new(shape: DocumentStatus, location_name: "Status"))
    DocumentDescription.add_member(:status_information, Shapes::ShapeRef.new(shape: DocumentStatusInformation, location_name: "StatusInformation"))
    DocumentDescription.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DocumentDescription.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionInDocument, location_name: "Description"))
    DocumentDescription.add_member(:parameters, Shapes::ShapeRef.new(shape: DocumentParameterList, location_name: "Parameters"))
    DocumentDescription.add_member(:platform_types, Shapes::ShapeRef.new(shape: PlatformTypeList, location_name: "PlatformTypes"))
    DocumentDescription.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    DocumentDescription.add_member(:schema_version, Shapes::ShapeRef.new(shape: DocumentSchemaVersion, location_name: "SchemaVersion"))
    DocumentDescription.add_member(:latest_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "LatestVersion"))
    DocumentDescription.add_member(:default_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DefaultVersion"))
    DocumentDescription.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    DocumentDescription.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    DocumentDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    DocumentDescription.add_member(:attachments_information, Shapes::ShapeRef.new(shape: AttachmentInformationList, location_name: "AttachmentsInformation"))
    DocumentDescription.add_member(:requires, Shapes::ShapeRef.new(shape: DocumentRequiresList, location_name: "Requires"))
    DocumentDescription.add_member(:author, Shapes::ShapeRef.new(shape: DocumentAuthor, location_name: "Author"))
    DocumentDescription.add_member(:review_information, Shapes::ShapeRef.new(shape: ReviewInformationList, location_name: "ReviewInformation"))
    DocumentDescription.add_member(:approved_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "ApprovedVersion"))
    DocumentDescription.add_member(:pending_review_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "PendingReviewVersion"))
    DocumentDescription.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    DocumentDescription.add_member(:category, Shapes::ShapeRef.new(shape: CategoryList, location_name: "Category"))
    DocumentDescription.add_member(:category_enum, Shapes::ShapeRef.new(shape: CategoryEnumList, location_name: "CategoryEnum"))
    DocumentDescription.struct_class = Types::DocumentDescription

    DocumentFilter.add_member(:key, Shapes::ShapeRef.new(shape: DocumentFilterKey, required: true, location_name: "key"))
    DocumentFilter.add_member(:value, Shapes::ShapeRef.new(shape: DocumentFilterValue, required: true, location_name: "value"))
    DocumentFilter.struct_class = Types::DocumentFilter

    DocumentFilterList.member = Shapes::ShapeRef.new(shape: DocumentFilter)

    DocumentIdentifier.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    DocumentIdentifier.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    DocumentIdentifier.add_member(:display_name, Shapes::ShapeRef.new(shape: DocumentDisplayName, location_name: "DisplayName"))
    DocumentIdentifier.add_member(:owner, Shapes::ShapeRef.new(shape: DocumentOwner, location_name: "Owner"))
    DocumentIdentifier.add_member(:version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "VersionName"))
    DocumentIdentifier.add_member(:platform_types, Shapes::ShapeRef.new(shape: PlatformTypeList, location_name: "PlatformTypes"))
    DocumentIdentifier.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DocumentIdentifier.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    DocumentIdentifier.add_member(:schema_version, Shapes::ShapeRef.new(shape: DocumentSchemaVersion, location_name: "SchemaVersion"))
    DocumentIdentifier.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    DocumentIdentifier.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    DocumentIdentifier.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    DocumentIdentifier.add_member(:requires, Shapes::ShapeRef.new(shape: DocumentRequiresList, location_name: "Requires"))
    DocumentIdentifier.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    DocumentIdentifier.add_member(:author, Shapes::ShapeRef.new(shape: DocumentAuthor, location_name: "Author"))
    DocumentIdentifier.struct_class = Types::DocumentIdentifier

    DocumentIdentifierList.member = Shapes::ShapeRef.new(shape: DocumentIdentifier)

    DocumentKeyValuesFilter.add_member(:key, Shapes::ShapeRef.new(shape: DocumentKeyValuesFilterKey, location_name: "Key"))
    DocumentKeyValuesFilter.add_member(:values, Shapes::ShapeRef.new(shape: DocumentKeyValuesFilterValues, location_name: "Values"))
    DocumentKeyValuesFilter.struct_class = Types::DocumentKeyValuesFilter

    DocumentKeyValuesFilterList.member = Shapes::ShapeRef.new(shape: DocumentKeyValuesFilter)

    DocumentKeyValuesFilterValues.member = Shapes::ShapeRef.new(shape: DocumentKeyValuesFilterValue)

    DocumentLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DocumentLimitExceeded.struct_class = Types::DocumentLimitExceeded

    DocumentMetadataResponseInfo.add_member(:reviewer_response, Shapes::ShapeRef.new(shape: DocumentReviewerResponseList, location_name: "ReviewerResponse"))
    DocumentMetadataResponseInfo.struct_class = Types::DocumentMetadataResponseInfo

    DocumentParameter.add_member(:name, Shapes::ShapeRef.new(shape: DocumentParameterName, location_name: "Name"))
    DocumentParameter.add_member(:type, Shapes::ShapeRef.new(shape: DocumentParameterType, location_name: "Type"))
    DocumentParameter.add_member(:description, Shapes::ShapeRef.new(shape: DocumentParameterDescrption, location_name: "Description"))
    DocumentParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: DocumentParameterDefaultValue, location_name: "DefaultValue"))
    DocumentParameter.struct_class = Types::DocumentParameter

    DocumentParameterList.member = Shapes::ShapeRef.new(shape: DocumentParameter)

    DocumentPermissionLimit.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DocumentPermissionLimit.struct_class = Types::DocumentPermissionLimit

    DocumentRequires.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
    DocumentRequires.add_member(:version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "Version"))
    DocumentRequires.add_member(:require_type, Shapes::ShapeRef.new(shape: RequireType, location_name: "RequireType"))
    DocumentRequires.add_member(:version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "VersionName"))
    DocumentRequires.struct_class = Types::DocumentRequires

    DocumentRequiresList.member = Shapes::ShapeRef.new(shape: DocumentRequires)

    DocumentReviewCommentList.member = Shapes::ShapeRef.new(shape: DocumentReviewCommentSource)

    DocumentReviewCommentSource.add_member(:type, Shapes::ShapeRef.new(shape: DocumentReviewCommentType, location_name: "Type"))
    DocumentReviewCommentSource.add_member(:content, Shapes::ShapeRef.new(shape: DocumentReviewComment, location_name: "Content"))
    DocumentReviewCommentSource.struct_class = Types::DocumentReviewCommentSource

    DocumentReviewerResponseList.member = Shapes::ShapeRef.new(shape: DocumentReviewerResponseSource)

    DocumentReviewerResponseSource.add_member(:create_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreateTime"))
    DocumentReviewerResponseSource.add_member(:updated_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "UpdatedTime"))
    DocumentReviewerResponseSource.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    DocumentReviewerResponseSource.add_member(:comment, Shapes::ShapeRef.new(shape: DocumentReviewCommentList, location_name: "Comment"))
    DocumentReviewerResponseSource.add_member(:reviewer, Shapes::ShapeRef.new(shape: Reviewer, location_name: "Reviewer"))
    DocumentReviewerResponseSource.struct_class = Types::DocumentReviewerResponseSource

    DocumentReviews.add_member(:action, Shapes::ShapeRef.new(shape: DocumentReviewAction, required: true, location_name: "Action"))
    DocumentReviews.add_member(:comment, Shapes::ShapeRef.new(shape: DocumentReviewCommentList, location_name: "Comment"))
    DocumentReviews.struct_class = Types::DocumentReviews

    DocumentVersionInfo.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    DocumentVersionInfo.add_member(:display_name, Shapes::ShapeRef.new(shape: DocumentDisplayName, location_name: "DisplayName"))
    DocumentVersionInfo.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    DocumentVersionInfo.add_member(:version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "VersionName"))
    DocumentVersionInfo.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    DocumentVersionInfo.add_member(:is_default_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDefaultVersion"))
    DocumentVersionInfo.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    DocumentVersionInfo.add_member(:status, Shapes::ShapeRef.new(shape: DocumentStatus, location_name: "Status"))
    DocumentVersionInfo.add_member(:status_information, Shapes::ShapeRef.new(shape: DocumentStatusInformation, location_name: "StatusInformation"))
    DocumentVersionInfo.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    DocumentVersionInfo.struct_class = Types::DocumentVersionInfo

    DocumentVersionLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DocumentVersionLimitExceeded.struct_class = Types::DocumentVersionLimitExceeded

    DocumentVersionList.member = Shapes::ShapeRef.new(shape: DocumentVersionInfo)

    DoesNotExistException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DoesNotExistException.struct_class = Types::DoesNotExistException

    DuplicateDocumentContent.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DuplicateDocumentContent.struct_class = Types::DuplicateDocumentContent

    DuplicateDocumentVersionName.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DuplicateDocumentVersionName.struct_class = Types::DuplicateDocumentVersionName

    DuplicateInstanceId.struct_class = Types::DuplicateInstanceId

    EffectivePatch.add_member(:patch, Shapes::ShapeRef.new(shape: Patch, location_name: "Patch"))
    EffectivePatch.add_member(:patch_status, Shapes::ShapeRef.new(shape: PatchStatus, location_name: "PatchStatus"))
    EffectivePatch.struct_class = Types::EffectivePatch

    EffectivePatchList.member = Shapes::ShapeRef.new(shape: EffectivePatch)

    ExcludeAccounts.member = Shapes::ShapeRef.new(shape: ExcludeAccount)

    ExecutionInputs.add_member(:automation, Shapes::ShapeRef.new(shape: AutomationExecutionInputs, location_name: "Automation"))
    ExecutionInputs.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExecutionInputs.add_member_subclass(:automation, Types::ExecutionInputs::Automation)
    ExecutionInputs.add_member_subclass(:unknown, Types::ExecutionInputs::Unknown)
    ExecutionInputs.struct_class = Types::ExecutionInputs

    ExecutionPreview.add_member(:automation, Shapes::ShapeRef.new(shape: AutomationExecutionPreview, location_name: "Automation"))
    ExecutionPreview.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ExecutionPreview.add_member_subclass(:automation, Types::ExecutionPreview::Automation)
    ExecutionPreview.add_member_subclass(:unknown, Types::ExecutionPreview::Unknown)
    ExecutionPreview.struct_class = Types::ExecutionPreview

    FailedCreateAssociation.add_member(:entry, Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntry, location_name: "Entry"))
    FailedCreateAssociation.add_member(:message, Shapes::ShapeRef.new(shape: BatchErrorMessage, location_name: "Message"))
    FailedCreateAssociation.add_member(:fault, Shapes::ShapeRef.new(shape: Fault, location_name: "Fault"))
    FailedCreateAssociation.struct_class = Types::FailedCreateAssociation

    FailedCreateAssociationList.member = Shapes::ShapeRef.new(shape: FailedCreateAssociation)

    FailureDetails.add_member(:failure_stage, Shapes::ShapeRef.new(shape: String, location_name: "FailureStage"))
    FailureDetails.add_member(:failure_type, Shapes::ShapeRef.new(shape: String, location_name: "FailureType"))
    FailureDetails.add_member(:details, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Details"))
    FailureDetails.struct_class = Types::FailureDetails

    FeatureNotAvailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    FeatureNotAvailableException.struct_class = Types::FeatureNotAvailableException

    GetAccessTokenRequest.add_member(:access_request_id, Shapes::ShapeRef.new(shape: AccessRequestId, required: true, location_name: "AccessRequestId"))
    GetAccessTokenRequest.struct_class = Types::GetAccessTokenRequest

    GetAccessTokenResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, location_name: "Credentials"))
    GetAccessTokenResponse.add_member(:access_request_status, Shapes::ShapeRef.new(shape: AccessRequestStatus, location_name: "AccessRequestStatus"))
    GetAccessTokenResponse.struct_class = Types::GetAccessTokenResponse

    GetAutomationExecutionRequest.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, required: true, location_name: "AutomationExecutionId"))
    GetAutomationExecutionRequest.struct_class = Types::GetAutomationExecutionRequest

    GetAutomationExecutionResult.add_member(:automation_execution, Shapes::ShapeRef.new(shape: AutomationExecution, location_name: "AutomationExecution"))
    GetAutomationExecutionResult.struct_class = Types::GetAutomationExecutionResult

    GetCalendarStateRequest.add_member(:calendar_names, Shapes::ShapeRef.new(shape: CalendarNameOrARNList, required: true, location_name: "CalendarNames"))
    GetCalendarStateRequest.add_member(:at_time, Shapes::ShapeRef.new(shape: ISO8601String, location_name: "AtTime"))
    GetCalendarStateRequest.struct_class = Types::GetCalendarStateRequest

    GetCalendarStateResponse.add_member(:state, Shapes::ShapeRef.new(shape: CalendarState, location_name: "State"))
    GetCalendarStateResponse.add_member(:at_time, Shapes::ShapeRef.new(shape: ISO8601String, location_name: "AtTime"))
    GetCalendarStateResponse.add_member(:next_transition_time, Shapes::ShapeRef.new(shape: ISO8601String, location_name: "NextTransitionTime"))
    GetCalendarStateResponse.struct_class = Types::GetCalendarStateResponse

    GetCommandInvocationRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, required: true, location_name: "CommandId"))
    GetCommandInvocationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    GetCommandInvocationRequest.add_member(:plugin_name, Shapes::ShapeRef.new(shape: CommandPluginName, location_name: "PluginName"))
    GetCommandInvocationRequest.struct_class = Types::GetCommandInvocationRequest

    GetCommandInvocationResult.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    GetCommandInvocationResult.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    GetCommandInvocationResult.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    GetCommandInvocationResult.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    GetCommandInvocationResult.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    GetCommandInvocationResult.add_member(:plugin_name, Shapes::ShapeRef.new(shape: CommandPluginName, location_name: "PluginName"))
    GetCommandInvocationResult.add_member(:response_code, Shapes::ShapeRef.new(shape: ResponseCode, location_name: "ResponseCode"))
    GetCommandInvocationResult.add_member(:execution_start_date_time, Shapes::ShapeRef.new(shape: StringDateTime, location_name: "ExecutionStartDateTime"))
    GetCommandInvocationResult.add_member(:execution_elapsed_time, Shapes::ShapeRef.new(shape: StringDateTime, location_name: "ExecutionElapsedTime"))
    GetCommandInvocationResult.add_member(:execution_end_date_time, Shapes::ShapeRef.new(shape: StringDateTime, location_name: "ExecutionEndDateTime"))
    GetCommandInvocationResult.add_member(:status, Shapes::ShapeRef.new(shape: CommandInvocationStatus, location_name: "Status"))
    GetCommandInvocationResult.add_member(:status_details, Shapes::ShapeRef.new(shape: StatusDetails, location_name: "StatusDetails"))
    GetCommandInvocationResult.add_member(:standard_output_content, Shapes::ShapeRef.new(shape: StandardOutputContent, location_name: "StandardOutputContent"))
    GetCommandInvocationResult.add_member(:standard_output_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardOutputUrl"))
    GetCommandInvocationResult.add_member(:standard_error_content, Shapes::ShapeRef.new(shape: StandardErrorContent, location_name: "StandardErrorContent"))
    GetCommandInvocationResult.add_member(:standard_error_url, Shapes::ShapeRef.new(shape: Url, location_name: "StandardErrorUrl"))
    GetCommandInvocationResult.add_member(:cloud_watch_output_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, location_name: "CloudWatchOutputConfig"))
    GetCommandInvocationResult.struct_class = Types::GetCommandInvocationResult

    GetConnectionStatusRequest.add_member(:target, Shapes::ShapeRef.new(shape: SessionTarget, required: true, location_name: "Target"))
    GetConnectionStatusRequest.struct_class = Types::GetConnectionStatusRequest

    GetConnectionStatusResponse.add_member(:target, Shapes::ShapeRef.new(shape: SessionTarget, location_name: "Target"))
    GetConnectionStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "Status"))
    GetConnectionStatusResponse.struct_class = Types::GetConnectionStatusResponse

    GetDefaultPatchBaselineRequest.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    GetDefaultPatchBaselineRequest.struct_class = Types::GetDefaultPatchBaselineRequest

    GetDefaultPatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    GetDefaultPatchBaselineResult.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    GetDefaultPatchBaselineResult.struct_class = Types::GetDefaultPatchBaselineResult

    GetDeployablePatchSnapshotForInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    GetDeployablePatchSnapshotForInstanceRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, required: true, location_name: "SnapshotId"))
    GetDeployablePatchSnapshotForInstanceRequest.add_member(:baseline_override, Shapes::ShapeRef.new(shape: BaselineOverride, location_name: "BaselineOverride"))
    GetDeployablePatchSnapshotForInstanceRequest.struct_class = Types::GetDeployablePatchSnapshotForInstanceRequest

    GetDeployablePatchSnapshotForInstanceResult.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    GetDeployablePatchSnapshotForInstanceResult.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    GetDeployablePatchSnapshotForInstanceResult.add_member(:snapshot_download_url, Shapes::ShapeRef.new(shape: SnapshotDownloadUrl, location_name: "SnapshotDownloadUrl"))
    GetDeployablePatchSnapshotForInstanceResult.add_member(:product, Shapes::ShapeRef.new(shape: Product, location_name: "Product"))
    GetDeployablePatchSnapshotForInstanceResult.struct_class = Types::GetDeployablePatchSnapshotForInstanceResult

    GetDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
    GetDocumentRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "VersionName"))
    GetDocumentRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    GetDocumentRequest.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    GetDocumentRequest.struct_class = Types::GetDocumentRequest

    GetDocumentResult.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    GetDocumentResult.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    GetDocumentResult.add_member(:display_name, Shapes::ShapeRef.new(shape: DocumentDisplayName, location_name: "DisplayName"))
    GetDocumentResult.add_member(:version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "VersionName"))
    GetDocumentResult.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    GetDocumentResult.add_member(:status, Shapes::ShapeRef.new(shape: DocumentStatus, location_name: "Status"))
    GetDocumentResult.add_member(:status_information, Shapes::ShapeRef.new(shape: DocumentStatusInformation, location_name: "StatusInformation"))
    GetDocumentResult.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, location_name: "Content"))
    GetDocumentResult.add_member(:document_type, Shapes::ShapeRef.new(shape: DocumentType, location_name: "DocumentType"))
    GetDocumentResult.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    GetDocumentResult.add_member(:requires, Shapes::ShapeRef.new(shape: DocumentRequiresList, location_name: "Requires"))
    GetDocumentResult.add_member(:attachments_content, Shapes::ShapeRef.new(shape: AttachmentContentList, location_name: "AttachmentsContent"))
    GetDocumentResult.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    GetDocumentResult.struct_class = Types::GetDocumentResult

    GetExecutionPreviewRequest.add_member(:execution_preview_id, Shapes::ShapeRef.new(shape: ExecutionPreviewId, required: true, location_name: "ExecutionPreviewId"))
    GetExecutionPreviewRequest.struct_class = Types::GetExecutionPreviewRequest

    GetExecutionPreviewResponse.add_member(:execution_preview_id, Shapes::ShapeRef.new(shape: ExecutionPreviewId, location_name: "ExecutionPreviewId"))
    GetExecutionPreviewResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndedAt"))
    GetExecutionPreviewResponse.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionPreviewStatus, location_name: "Status"))
    GetExecutionPreviewResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    GetExecutionPreviewResponse.add_member(:execution_preview, Shapes::ShapeRef.new(shape: ExecutionPreview, location_name: "ExecutionPreview"))
    GetExecutionPreviewResponse.struct_class = Types::GetExecutionPreviewResponse

    GetInventoryRequest.add_member(:filters, Shapes::ShapeRef.new(shape: InventoryFilterList, location_name: "Filters"))
    GetInventoryRequest.add_member(:aggregators, Shapes::ShapeRef.new(shape: InventoryAggregatorList, location_name: "Aggregators"))
    GetInventoryRequest.add_member(:result_attributes, Shapes::ShapeRef.new(shape: ResultAttributeList, location_name: "ResultAttributes"))
    GetInventoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInventoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetInventoryRequest.struct_class = Types::GetInventoryRequest

    GetInventoryResult.add_member(:entities, Shapes::ShapeRef.new(shape: InventoryResultEntityList, location_name: "Entities"))
    GetInventoryResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInventoryResult.struct_class = Types::GetInventoryResult

    GetInventorySchemaRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeNameFilter, location_name: "TypeName"))
    GetInventorySchemaRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInventorySchemaRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetInventorySchemaMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetInventorySchemaRequest.add_member(:aggregator, Shapes::ShapeRef.new(shape: AggregatorSchemaOnly, location_name: "Aggregator"))
    GetInventorySchemaRequest.add_member(:sub_type, Shapes::ShapeRef.new(shape: IsSubTypeSchema, location_name: "SubType", metadata: {"box" => true}))
    GetInventorySchemaRequest.struct_class = Types::GetInventorySchemaRequest

    GetInventorySchemaResult.add_member(:schemas, Shapes::ShapeRef.new(shape: InventoryItemSchemaResultList, location_name: "Schemas"))
    GetInventorySchemaResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInventorySchemaResult.struct_class = Types::GetInventorySchemaResult

    GetMaintenanceWindowExecutionRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionRequest.struct_class = Types::GetMaintenanceWindowExecutionRequest

    GetMaintenanceWindowExecutionResult.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionResult.add_member(:task_ids, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskIdList, location_name: "TaskIds"))
    GetMaintenanceWindowExecutionResult.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    GetMaintenanceWindowExecutionResult.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    GetMaintenanceWindowExecutionResult.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    GetMaintenanceWindowExecutionResult.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    GetMaintenanceWindowExecutionResult.struct_class = Types::GetMaintenanceWindowExecutionResult

    GetMaintenanceWindowExecutionTaskInvocationRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, required: true, location_name: "TaskId"))
    GetMaintenanceWindowExecutionTaskInvocationRequest.add_member(:invocation_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationId, required: true, location_name: "InvocationId"))
    GetMaintenanceWindowExecutionTaskInvocationRequest.struct_class = Types::GetMaintenanceWindowExecutionTaskInvocationRequest

    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:task_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, location_name: "TaskExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:invocation_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationId, location_name: "InvocationId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskExecutionId, location_name: "ExecutionId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "TaskType"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationParameters, location_name: "Parameters"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    GetMaintenanceWindowExecutionTaskInvocationResult.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskTargetId, location_name: "WindowTargetId"))
    GetMaintenanceWindowExecutionTaskInvocationResult.struct_class = Types::GetMaintenanceWindowExecutionTaskInvocationResult

    GetMaintenanceWindowExecutionTaskRequest.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, required: true, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, required: true, location_name: "TaskId"))
    GetMaintenanceWindowExecutionTaskRequest.struct_class = Types::GetMaintenanceWindowExecutionTaskRequest

    GetMaintenanceWindowExecutionTaskResult.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:task_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, location_name: "TaskExecutionId"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRole"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "Type"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParametersList, location_name: "TaskParameters"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    GetMaintenanceWindowExecutionTaskResult.add_member(:triggered_alarms, Shapes::ShapeRef.new(shape: AlarmStateInformationList, location_name: "TriggeredAlarms"))
    GetMaintenanceWindowExecutionTaskResult.struct_class = Types::GetMaintenanceWindowExecutionTaskResult

    GetMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    GetMaintenanceWindowRequest.struct_class = Types::GetMaintenanceWindowRequest

    GetMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    GetMaintenanceWindowResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    GetMaintenanceWindowResult.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    GetMaintenanceWindowResult.add_member(:start_date, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "StartDate"))
    GetMaintenanceWindowResult.add_member(:end_date, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "EndDate"))
    GetMaintenanceWindowResult.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, location_name: "Schedule"))
    GetMaintenanceWindowResult.add_member(:schedule_timezone, Shapes::ShapeRef.new(shape: MaintenanceWindowTimezone, location_name: "ScheduleTimezone"))
    GetMaintenanceWindowResult.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: MaintenanceWindowOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    GetMaintenanceWindowResult.add_member(:next_execution_time, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "NextExecutionTime"))
    GetMaintenanceWindowResult.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration"))
    GetMaintenanceWindowResult.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff"))
    GetMaintenanceWindowResult.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, location_name: "AllowUnassociatedTargets"))
    GetMaintenanceWindowResult.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled"))
    GetMaintenanceWindowResult.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    GetMaintenanceWindowResult.add_member(:modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedDate"))
    GetMaintenanceWindowResult.struct_class = Types::GetMaintenanceWindowResult

    GetMaintenanceWindowTaskRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    GetMaintenanceWindowTaskRequest.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, required: true, location_name: "WindowTaskId"))
    GetMaintenanceWindowTaskRequest.struct_class = Types::GetMaintenanceWindowTaskRequest

    GetMaintenanceWindowTaskResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    GetMaintenanceWindowTaskResult.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    GetMaintenanceWindowTaskResult.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    GetMaintenanceWindowTaskResult.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    GetMaintenanceWindowTaskResult.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    GetMaintenanceWindowTaskResult.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "TaskType"))
    GetMaintenanceWindowTaskResult.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    GetMaintenanceWindowTaskResult.add_member(:task_invocation_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskInvocationParameters, location_name: "TaskInvocationParameters"))
    GetMaintenanceWindowTaskResult.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority"))
    GetMaintenanceWindowTaskResult.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    GetMaintenanceWindowTaskResult.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    GetMaintenanceWindowTaskResult.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    GetMaintenanceWindowTaskResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    GetMaintenanceWindowTaskResult.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    GetMaintenanceWindowTaskResult.add_member(:cutoff_behavior, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskCutoffBehavior, location_name: "CutoffBehavior", metadata: {"box" => true}))
    GetMaintenanceWindowTaskResult.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    GetMaintenanceWindowTaskResult.struct_class = Types::GetMaintenanceWindowTaskResult

    GetOpsItemRequest.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: OpsItemId, required: true, location_name: "OpsItemId"))
    GetOpsItemRequest.add_member(:ops_item_arn, Shapes::ShapeRef.new(shape: OpsItemArn, location_name: "OpsItemArn"))
    GetOpsItemRequest.struct_class = Types::GetOpsItemRequest

    GetOpsItemResponse.add_member(:ops_item, Shapes::ShapeRef.new(shape: OpsItem, location_name: "OpsItem"))
    GetOpsItemResponse.struct_class = Types::GetOpsItemResponse

    GetOpsMetadataRequest.add_member(:ops_metadata_arn, Shapes::ShapeRef.new(shape: OpsMetadataArn, required: true, location_name: "OpsMetadataArn"))
    GetOpsMetadataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetOpsMetadataMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetOpsMetadataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetOpsMetadataRequest.struct_class = Types::GetOpsMetadataRequest

    GetOpsMetadataResult.add_member(:resource_id, Shapes::ShapeRef.new(shape: OpsMetadataResourceId, location_name: "ResourceId"))
    GetOpsMetadataResult.add_member(:metadata, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "Metadata"))
    GetOpsMetadataResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetOpsMetadataResult.struct_class = Types::GetOpsMetadataResult

    GetOpsSummaryRequest.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, location_name: "SyncName"))
    GetOpsSummaryRequest.add_member(:filters, Shapes::ShapeRef.new(shape: OpsFilterList, location_name: "Filters"))
    GetOpsSummaryRequest.add_member(:aggregators, Shapes::ShapeRef.new(shape: OpsAggregatorList, location_name: "Aggregators"))
    GetOpsSummaryRequest.add_member(:result_attributes, Shapes::ShapeRef.new(shape: OpsResultAttributeList, location_name: "ResultAttributes"))
    GetOpsSummaryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetOpsSummaryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetOpsSummaryRequest.struct_class = Types::GetOpsSummaryRequest

    GetOpsSummaryResult.add_member(:entities, Shapes::ShapeRef.new(shape: OpsEntityList, location_name: "Entities"))
    GetOpsSummaryResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetOpsSummaryResult.struct_class = Types::GetOpsSummaryResult

    GetParameterHistoryRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    GetParameterHistoryRequest.add_member(:with_decryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithDecryption", metadata: {"box" => true}))
    GetParameterHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetParameterHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetParameterHistoryRequest.struct_class = Types::GetParameterHistoryRequest

    GetParameterHistoryResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterHistoryList, location_name: "Parameters"))
    GetParameterHistoryResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetParameterHistoryResult.struct_class = Types::GetParameterHistoryResult

    GetParameterRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    GetParameterRequest.add_member(:with_decryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithDecryption", metadata: {"box" => true}))
    GetParameterRequest.struct_class = Types::GetParameterRequest

    GetParameterResult.add_member(:parameter, Shapes::ShapeRef.new(shape: Parameter, location_name: "Parameter"))
    GetParameterResult.struct_class = Types::GetParameterResult

    GetParametersByPathRequest.add_member(:path, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Path"))
    GetParametersByPathRequest.add_member(:recursive, Shapes::ShapeRef.new(shape: Boolean, location_name: "Recursive", metadata: {"box" => true}))
    GetParametersByPathRequest.add_member(:parameter_filters, Shapes::ShapeRef.new(shape: ParameterStringFilterList, location_name: "ParameterFilters"))
    GetParametersByPathRequest.add_member(:with_decryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithDecryption", metadata: {"box" => true}))
    GetParametersByPathRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetParametersByPathMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetParametersByPathRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetParametersByPathRequest.struct_class = Types::GetParametersByPathRequest

    GetParametersByPathResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "Parameters"))
    GetParametersByPathResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetParametersByPathResult.struct_class = Types::GetParametersByPathResult

    GetParametersRequest.add_member(:names, Shapes::ShapeRef.new(shape: ParameterNameList, required: true, location_name: "Names"))
    GetParametersRequest.add_member(:with_decryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "WithDecryption", metadata: {"box" => true}))
    GetParametersRequest.struct_class = Types::GetParametersRequest

    GetParametersResult.add_member(:parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "Parameters"))
    GetParametersResult.add_member(:invalid_parameters, Shapes::ShapeRef.new(shape: ParameterNameList, location_name: "InvalidParameters"))
    GetParametersResult.struct_class = Types::GetParametersResult

    GetPatchBaselineForPatchGroupRequest.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    GetPatchBaselineForPatchGroupRequest.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    GetPatchBaselineForPatchGroupRequest.struct_class = Types::GetPatchBaselineForPatchGroupRequest

    GetPatchBaselineForPatchGroupResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    GetPatchBaselineForPatchGroupResult.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, location_name: "PatchGroup"))
    GetPatchBaselineForPatchGroupResult.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    GetPatchBaselineForPatchGroupResult.struct_class = Types::GetPatchBaselineForPatchGroupResult

    GetPatchBaselineRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    GetPatchBaselineRequest.struct_class = Types::GetPatchBaselineRequest

    GetPatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    GetPatchBaselineResult.add_member(:name, Shapes::ShapeRef.new(shape: BaselineName, location_name: "Name"))
    GetPatchBaselineResult.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    GetPatchBaselineResult.add_member(:global_filters, Shapes::ShapeRef.new(shape: PatchFilterGroup, location_name: "GlobalFilters"))
    GetPatchBaselineResult.add_member(:approval_rules, Shapes::ShapeRef.new(shape: PatchRuleGroup, location_name: "ApprovalRules"))
    GetPatchBaselineResult.add_member(:approved_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "ApprovedPatches"))
    GetPatchBaselineResult.add_member(:approved_patches_compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ApprovedPatchesComplianceLevel"))
    GetPatchBaselineResult.add_member(:approved_patches_enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApprovedPatchesEnableNonSecurity", metadata: {"box" => true}))
    GetPatchBaselineResult.add_member(:rejected_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "RejectedPatches"))
    GetPatchBaselineResult.add_member(:rejected_patches_action, Shapes::ShapeRef.new(shape: PatchAction, location_name: "RejectedPatchesAction"))
    GetPatchBaselineResult.add_member(:patch_groups, Shapes::ShapeRef.new(shape: PatchGroupList, location_name: "PatchGroups"))
    GetPatchBaselineResult.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    GetPatchBaselineResult.add_member(:modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedDate"))
    GetPatchBaselineResult.add_member(:description, Shapes::ShapeRef.new(shape: BaselineDescription, location_name: "Description"))
    GetPatchBaselineResult.add_member(:sources, Shapes::ShapeRef.new(shape: PatchSourceList, location_name: "Sources"))
    GetPatchBaselineResult.add_member(:available_security_updates_compliance_status, Shapes::ShapeRef.new(shape: PatchComplianceStatus, location_name: "AvailableSecurityUpdatesComplianceStatus"))
    GetPatchBaselineResult.struct_class = Types::GetPatchBaselineResult

    GetResourcePoliciesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    GetResourcePoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetResourcePoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResourcePolicyMaxResults, location_name: "MaxResults"))
    GetResourcePoliciesRequest.struct_class = Types::GetResourcePoliciesRequest

    GetResourcePoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetResourcePoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: GetResourcePoliciesResponseEntries, location_name: "Policies"))
    GetResourcePoliciesResponse.struct_class = Types::GetResourcePoliciesResponse

    GetResourcePoliciesResponseEntries.member = Shapes::ShapeRef.new(shape: GetResourcePoliciesResponseEntry)

    GetResourcePoliciesResponseEntry.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    GetResourcePoliciesResponseEntry.add_member(:policy_hash, Shapes::ShapeRef.new(shape: PolicyHash, location_name: "PolicyHash"))
    GetResourcePoliciesResponseEntry.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetResourcePoliciesResponseEntry.struct_class = Types::GetResourcePoliciesResponseEntry

    GetServiceSettingRequest.add_member(:setting_id, Shapes::ShapeRef.new(shape: ServiceSettingId, required: true, location_name: "SettingId"))
    GetServiceSettingRequest.struct_class = Types::GetServiceSettingRequest

    GetServiceSettingResult.add_member(:service_setting, Shapes::ShapeRef.new(shape: ServiceSetting, location_name: "ServiceSetting"))
    GetServiceSettingResult.struct_class = Types::GetServiceSettingResult

    HierarchyLevelLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    HierarchyLevelLimitExceededException.struct_class = Types::HierarchyLevelLimitExceededException

    HierarchyTypeMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    HierarchyTypeMismatchException.struct_class = Types::HierarchyTypeMismatchException

    IdempotentParameterMismatch.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    IdempotentParameterMismatch.struct_class = Types::IdempotentParameterMismatch

    IncompatiblePolicyException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    IncompatiblePolicyException.struct_class = Types::IncompatiblePolicyException

    InstanceAggregatedAssociationOverview.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    InstanceAggregatedAssociationOverview.add_member(:instance_association_status_aggregated_count, Shapes::ShapeRef.new(shape: InstanceAssociationStatusAggregatedCount, location_name: "InstanceAssociationStatusAggregatedCount"))
    InstanceAggregatedAssociationOverview.struct_class = Types::InstanceAggregatedAssociationOverview

    InstanceAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    InstanceAssociation.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceAssociation.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, location_name: "Content"))
    InstanceAssociation.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    InstanceAssociation.struct_class = Types::InstanceAssociation

    InstanceAssociationList.member = Shapes::ShapeRef.new(shape: InstanceAssociation)

    InstanceAssociationOutputLocation.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3OutputLocation, location_name: "S3Location"))
    InstanceAssociationOutputLocation.struct_class = Types::InstanceAssociationOutputLocation

    InstanceAssociationOutputUrl.add_member(:s3_output_url, Shapes::ShapeRef.new(shape: S3OutputUrl, location_name: "S3OutputUrl"))
    InstanceAssociationOutputUrl.struct_class = Types::InstanceAssociationOutputUrl

    InstanceAssociationStatusAggregatedCount.key = Shapes::ShapeRef.new(shape: StatusName)
    InstanceAssociationStatusAggregatedCount.value = Shapes::ShapeRef.new(shape: InstanceCount)

    InstanceAssociationStatusInfo.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    InstanceAssociationStatusInfo.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    InstanceAssociationStatusInfo.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    InstanceAssociationStatusInfo.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    InstanceAssociationStatusInfo.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceAssociationStatusInfo.add_member(:execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionDate"))
    InstanceAssociationStatusInfo.add_member(:status, Shapes::ShapeRef.new(shape: StatusName, location_name: "Status"))
    InstanceAssociationStatusInfo.add_member(:detailed_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "DetailedStatus"))
    InstanceAssociationStatusInfo.add_member(:execution_summary, Shapes::ShapeRef.new(shape: InstanceAssociationExecutionSummary, location_name: "ExecutionSummary"))
    InstanceAssociationStatusInfo.add_member(:error_code, Shapes::ShapeRef.new(shape: AgentErrorCode, location_name: "ErrorCode"))
    InstanceAssociationStatusInfo.add_member(:output_url, Shapes::ShapeRef.new(shape: InstanceAssociationOutputUrl, location_name: "OutputUrl"))
    InstanceAssociationStatusInfo.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    InstanceAssociationStatusInfo.struct_class = Types::InstanceAssociationStatusInfo

    InstanceAssociationStatusInfos.member = Shapes::ShapeRef.new(shape: InstanceAssociationStatusInfo)

    InstanceIdList.member = Shapes::ShapeRef.new(shape: InstanceId)

    InstanceInfo.add_member(:agent_type, Shapes::ShapeRef.new(shape: AgentType, location_name: "AgentType"))
    InstanceInfo.add_member(:agent_version, Shapes::ShapeRef.new(shape: AgentVersion, location_name: "AgentVersion"))
    InstanceInfo.add_member(:computer_name, Shapes::ShapeRef.new(shape: ComputerName, location_name: "ComputerName"))
    InstanceInfo.add_member(:instance_status, Shapes::ShapeRef.new(shape: InstanceStatus, location_name: "InstanceStatus"))
    InstanceInfo.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    InstanceInfo.add_member(:managed_status, Shapes::ShapeRef.new(shape: ManagedStatus, location_name: "ManagedStatus"))
    InstanceInfo.add_member(:platform_type, Shapes::ShapeRef.new(shape: PlatformType, location_name: "PlatformType"))
    InstanceInfo.add_member(:platform_name, Shapes::ShapeRef.new(shape: PlatformName, location_name: "PlatformName"))
    InstanceInfo.add_member(:platform_version, Shapes::ShapeRef.new(shape: PlatformVersion, location_name: "PlatformVersion"))
    InstanceInfo.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    InstanceInfo.struct_class = Types::InstanceInfo

    InstanceInformation.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceInformation.add_member(:ping_status, Shapes::ShapeRef.new(shape: PingStatus, location_name: "PingStatus"))
    InstanceInformation.add_member(:last_ping_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastPingDateTime", metadata: {"box" => true}))
    InstanceInformation.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, location_name: "AgentVersion"))
    InstanceInformation.add_member(:is_latest_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsLatestVersion", metadata: {"box" => true}))
    InstanceInformation.add_member(:platform_type, Shapes::ShapeRef.new(shape: PlatformType, location_name: "PlatformType"))
    InstanceInformation.add_member(:platform_name, Shapes::ShapeRef.new(shape: String, location_name: "PlatformName"))
    InstanceInformation.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "PlatformVersion"))
    InstanceInformation.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, location_name: "ActivationId"))
    InstanceInformation.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "IamRole"))
    InstanceInformation.add_member(:registration_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "RegistrationDate", metadata: {"box" => true}))
    InstanceInformation.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    InstanceInformation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    InstanceInformation.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "IPAddress"))
    InstanceInformation.add_member(:computer_name, Shapes::ShapeRef.new(shape: ComputerName, location_name: "ComputerName"))
    InstanceInformation.add_member(:association_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "AssociationStatus"))
    InstanceInformation.add_member(:last_association_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastAssociationExecutionDate"))
    InstanceInformation.add_member(:last_successful_association_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastSuccessfulAssociationExecutionDate"))
    InstanceInformation.add_member(:association_overview, Shapes::ShapeRef.new(shape: InstanceAggregatedAssociationOverview, location_name: "AssociationOverview"))
    InstanceInformation.add_member(:source_id, Shapes::ShapeRef.new(shape: SourceId, location_name: "SourceId"))
    InstanceInformation.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    InstanceInformation.struct_class = Types::InstanceInformation

    InstanceInformationFilter.add_member(:key, Shapes::ShapeRef.new(shape: InstanceInformationFilterKey, required: true, location_name: "key"))
    InstanceInformationFilter.add_member(:value_set, Shapes::ShapeRef.new(shape: InstanceInformationFilterValueSet, required: true, location_name: "valueSet"))
    InstanceInformationFilter.struct_class = Types::InstanceInformationFilter

    InstanceInformationFilterList.member = Shapes::ShapeRef.new(shape: InstanceInformationFilter)

    InstanceInformationFilterValueSet.member = Shapes::ShapeRef.new(shape: InstanceInformationFilterValue)

    InstanceInformationList.member = Shapes::ShapeRef.new(shape: InstanceInformation)

    InstanceInformationStringFilter.add_member(:key, Shapes::ShapeRef.new(shape: InstanceInformationStringFilterKey, required: true, location_name: "Key"))
    InstanceInformationStringFilter.add_member(:values, Shapes::ShapeRef.new(shape: InstanceInformationFilterValueSet, required: true, location_name: "Values"))
    InstanceInformationStringFilter.struct_class = Types::InstanceInformationStringFilter

    InstanceInformationStringFilterList.member = Shapes::ShapeRef.new(shape: InstanceInformationStringFilter)

    InstancePatchState.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    InstancePatchState.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    InstancePatchState.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    InstancePatchState.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "SnapshotId"))
    InstancePatchState.add_member(:install_override_list, Shapes::ShapeRef.new(shape: InstallOverrideList, location_name: "InstallOverrideList"))
    InstancePatchState.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    InstancePatchState.add_member(:installed_count, Shapes::ShapeRef.new(shape: PatchInstalledCount, location_name: "InstalledCount"))
    InstancePatchState.add_member(:installed_other_count, Shapes::ShapeRef.new(shape: PatchInstalledOtherCount, location_name: "InstalledOtherCount"))
    InstancePatchState.add_member(:installed_pending_reboot_count, Shapes::ShapeRef.new(shape: PatchInstalledPendingRebootCount, location_name: "InstalledPendingRebootCount", metadata: {"box" => true}))
    InstancePatchState.add_member(:installed_rejected_count, Shapes::ShapeRef.new(shape: PatchInstalledRejectedCount, location_name: "InstalledRejectedCount", metadata: {"box" => true}))
    InstancePatchState.add_member(:missing_count, Shapes::ShapeRef.new(shape: PatchMissingCount, location_name: "MissingCount"))
    InstancePatchState.add_member(:failed_count, Shapes::ShapeRef.new(shape: PatchFailedCount, location_name: "FailedCount"))
    InstancePatchState.add_member(:unreported_not_applicable_count, Shapes::ShapeRef.new(shape: PatchUnreportedNotApplicableCount, location_name: "UnreportedNotApplicableCount", metadata: {"box" => true}))
    InstancePatchState.add_member(:not_applicable_count, Shapes::ShapeRef.new(shape: PatchNotApplicableCount, location_name: "NotApplicableCount"))
    InstancePatchState.add_member(:available_security_update_count, Shapes::ShapeRef.new(shape: PatchAvailableSecurityUpdateCount, location_name: "AvailableSecurityUpdateCount", metadata: {"box" => true}))
    InstancePatchState.add_member(:operation_start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "OperationStartTime"))
    InstancePatchState.add_member(:operation_end_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "OperationEndTime"))
    InstancePatchState.add_member(:operation, Shapes::ShapeRef.new(shape: PatchOperationType, required: true, location_name: "Operation"))
    InstancePatchState.add_member(:last_no_reboot_install_operation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastNoRebootInstallOperationTime"))
    InstancePatchState.add_member(:reboot_option, Shapes::ShapeRef.new(shape: RebootOption, location_name: "RebootOption"))
    InstancePatchState.add_member(:critical_non_compliant_count, Shapes::ShapeRef.new(shape: PatchCriticalNonCompliantCount, location_name: "CriticalNonCompliantCount", metadata: {"box" => true}))
    InstancePatchState.add_member(:security_non_compliant_count, Shapes::ShapeRef.new(shape: PatchSecurityNonCompliantCount, location_name: "SecurityNonCompliantCount", metadata: {"box" => true}))
    InstancePatchState.add_member(:other_non_compliant_count, Shapes::ShapeRef.new(shape: PatchOtherNonCompliantCount, location_name: "OtherNonCompliantCount", metadata: {"box" => true}))
    InstancePatchState.struct_class = Types::InstancePatchState

    InstancePatchStateFilter.add_member(:key, Shapes::ShapeRef.new(shape: InstancePatchStateFilterKey, required: true, location_name: "Key"))
    InstancePatchStateFilter.add_member(:values, Shapes::ShapeRef.new(shape: InstancePatchStateFilterValues, required: true, location_name: "Values"))
    InstancePatchStateFilter.add_member(:type, Shapes::ShapeRef.new(shape: InstancePatchStateOperatorType, required: true, location_name: "Type"))
    InstancePatchStateFilter.struct_class = Types::InstancePatchStateFilter

    InstancePatchStateFilterList.member = Shapes::ShapeRef.new(shape: InstancePatchStateFilter)

    InstancePatchStateFilterValues.member = Shapes::ShapeRef.new(shape: InstancePatchStateFilterValue)

    InstancePatchStateList.member = Shapes::ShapeRef.new(shape: InstancePatchState)

    InstancePatchStatesList.member = Shapes::ShapeRef.new(shape: InstancePatchState)

    InstanceProperties.member = Shapes::ShapeRef.new(shape: InstanceProperty)

    InstanceProperty.add_member(:name, Shapes::ShapeRef.new(shape: InstanceName, location_name: "Name"))
    InstanceProperty.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceProperty.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "InstanceType"))
    InstanceProperty.add_member(:instance_role, Shapes::ShapeRef.new(shape: InstanceRole, location_name: "InstanceRole"))
    InstanceProperty.add_member(:key_name, Shapes::ShapeRef.new(shape: KeyName, location_name: "KeyName"))
    InstanceProperty.add_member(:instance_state, Shapes::ShapeRef.new(shape: InstanceState, location_name: "InstanceState"))
    InstanceProperty.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "Architecture"))
    InstanceProperty.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "IPAddress"))
    InstanceProperty.add_member(:launch_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LaunchTime"))
    InstanceProperty.add_member(:ping_status, Shapes::ShapeRef.new(shape: PingStatus, location_name: "PingStatus"))
    InstanceProperty.add_member(:last_ping_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastPingDateTime"))
    InstanceProperty.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, location_name: "AgentVersion"))
    InstanceProperty.add_member(:platform_type, Shapes::ShapeRef.new(shape: PlatformType, location_name: "PlatformType"))
    InstanceProperty.add_member(:platform_name, Shapes::ShapeRef.new(shape: PlatformName, location_name: "PlatformName"))
    InstanceProperty.add_member(:platform_version, Shapes::ShapeRef.new(shape: PlatformVersion, location_name: "PlatformVersion"))
    InstanceProperty.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, location_name: "ActivationId"))
    InstanceProperty.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "IamRole"))
    InstanceProperty.add_member(:registration_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "RegistrationDate"))
    InstanceProperty.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    InstanceProperty.add_member(:computer_name, Shapes::ShapeRef.new(shape: ComputerName, location_name: "ComputerName"))
    InstanceProperty.add_member(:association_status, Shapes::ShapeRef.new(shape: StatusName, location_name: "AssociationStatus"))
    InstanceProperty.add_member(:last_association_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastAssociationExecutionDate"))
    InstanceProperty.add_member(:last_successful_association_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastSuccessfulAssociationExecutionDate"))
    InstanceProperty.add_member(:association_overview, Shapes::ShapeRef.new(shape: InstanceAggregatedAssociationOverview, location_name: "AssociationOverview"))
    InstanceProperty.add_member(:source_id, Shapes::ShapeRef.new(shape: SourceId, location_name: "SourceId"))
    InstanceProperty.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    InstanceProperty.struct_class = Types::InstanceProperty

    InstancePropertyFilter.add_member(:key, Shapes::ShapeRef.new(shape: InstancePropertyFilterKey, required: true, location_name: "key"))
    InstancePropertyFilter.add_member(:value_set, Shapes::ShapeRef.new(shape: InstancePropertyFilterValueSet, required: true, location_name: "valueSet"))
    InstancePropertyFilter.struct_class = Types::InstancePropertyFilter

    InstancePropertyFilterList.member = Shapes::ShapeRef.new(shape: InstancePropertyFilter)

    InstancePropertyFilterValueSet.member = Shapes::ShapeRef.new(shape: InstancePropertyFilterValue)

    InstancePropertyStringFilter.add_member(:key, Shapes::ShapeRef.new(shape: InstancePropertyStringFilterKey, required: true, location_name: "Key"))
    InstancePropertyStringFilter.add_member(:values, Shapes::ShapeRef.new(shape: InstancePropertyFilterValueSet, required: true, location_name: "Values"))
    InstancePropertyStringFilter.add_member(:operator, Shapes::ShapeRef.new(shape: InstancePropertyFilterOperator, location_name: "Operator"))
    InstancePropertyStringFilter.struct_class = Types::InstancePropertyStringFilter

    InstancePropertyStringFilterList.member = Shapes::ShapeRef.new(shape: InstancePropertyStringFilter)

    InternalServerError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerError.struct_class = Types::InternalServerError

    InvalidActivation.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidActivation.struct_class = Types::InvalidActivation

    InvalidActivationId.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidActivationId.struct_class = Types::InvalidActivationId

    InvalidAggregatorException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidAggregatorException.struct_class = Types::InvalidAggregatorException

    InvalidAllowedPatternException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidAllowedPatternException.struct_class = Types::InvalidAllowedPatternException

    InvalidAssociation.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidAssociation.struct_class = Types::InvalidAssociation

    InvalidAssociationVersion.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidAssociationVersion.struct_class = Types::InvalidAssociationVersion

    InvalidAutomationExecutionParametersException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidAutomationExecutionParametersException.struct_class = Types::InvalidAutomationExecutionParametersException

    InvalidAutomationSignalException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidAutomationSignalException.struct_class = Types::InvalidAutomationSignalException

    InvalidAutomationStatusUpdateException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidAutomationStatusUpdateException.struct_class = Types::InvalidAutomationStatusUpdateException

    InvalidCommandId.struct_class = Types::InvalidCommandId

    InvalidDeleteInventoryParametersException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidDeleteInventoryParametersException.struct_class = Types::InvalidDeleteInventoryParametersException

    InvalidDeletionIdException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidDeletionIdException.struct_class = Types::InvalidDeletionIdException

    InvalidDocument.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidDocument.struct_class = Types::InvalidDocument

    InvalidDocumentContent.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidDocumentContent.struct_class = Types::InvalidDocumentContent

    InvalidDocumentOperation.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidDocumentOperation.struct_class = Types::InvalidDocumentOperation

    InvalidDocumentSchemaVersion.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidDocumentSchemaVersion.struct_class = Types::InvalidDocumentSchemaVersion

    InvalidDocumentType.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidDocumentType.struct_class = Types::InvalidDocumentType

    InvalidDocumentVersion.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidDocumentVersion.struct_class = Types::InvalidDocumentVersion

    InvalidFilter.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidFilter.struct_class = Types::InvalidFilter

    InvalidFilterKey.struct_class = Types::InvalidFilterKey

    InvalidFilterOption.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidFilterOption.struct_class = Types::InvalidFilterOption

    InvalidFilterValue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidFilterValue.struct_class = Types::InvalidFilterValue

    InvalidInstanceId.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidInstanceId.struct_class = Types::InvalidInstanceId

    InvalidInstanceInformationFilterValue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidInstanceInformationFilterValue.struct_class = Types::InvalidInstanceInformationFilterValue

    InvalidInstancePropertyFilterValue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidInstancePropertyFilterValue.struct_class = Types::InvalidInstancePropertyFilterValue

    InvalidInventoryGroupException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidInventoryGroupException.struct_class = Types::InvalidInventoryGroupException

    InvalidInventoryItemContextException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidInventoryItemContextException.struct_class = Types::InvalidInventoryItemContextException

    InvalidInventoryRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidInventoryRequestException.struct_class = Types::InvalidInventoryRequestException

    InvalidItemContentException.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, location_name: "TypeName"))
    InvalidItemContentException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidItemContentException.struct_class = Types::InvalidItemContentException

    InvalidKeyId.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidKeyId.struct_class = Types::InvalidKeyId

    InvalidNextToken.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidNextToken.struct_class = Types::InvalidNextToken

    InvalidNotificationConfig.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidNotificationConfig.struct_class = Types::InvalidNotificationConfig

    InvalidOptionException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidOptionException.struct_class = Types::InvalidOptionException

    InvalidOutputFolder.struct_class = Types::InvalidOutputFolder

    InvalidOutputLocation.struct_class = Types::InvalidOutputLocation

    InvalidParameters.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidParameters.struct_class = Types::InvalidParameters

    InvalidPermissionType.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidPermissionType.struct_class = Types::InvalidPermissionType

    InvalidPluginName.struct_class = Types::InvalidPluginName

    InvalidPolicyAttributeException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidPolicyAttributeException.struct_class = Types::InvalidPolicyAttributeException

    InvalidPolicyTypeException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidPolicyTypeException.struct_class = Types::InvalidPolicyTypeException

    InvalidResourceId.struct_class = Types::InvalidResourceId

    InvalidResourceType.struct_class = Types::InvalidResourceType

    InvalidResultAttributeException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidResultAttributeException.struct_class = Types::InvalidResultAttributeException

    InvalidRole.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidRole.struct_class = Types::InvalidRole

    InvalidSchedule.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidSchedule.struct_class = Types::InvalidSchedule

    InvalidTag.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidTag.struct_class = Types::InvalidTag

    InvalidTarget.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidTarget.struct_class = Types::InvalidTarget

    InvalidTargetMaps.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidTargetMaps.struct_class = Types::InvalidTargetMaps

    InvalidTypeNameException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidTypeNameException.struct_class = Types::InvalidTypeNameException

    InvalidUpdate.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidUpdate.struct_class = Types::InvalidUpdate

    InventoryAggregator.add_member(:expression, Shapes::ShapeRef.new(shape: InventoryAggregatorExpression, location_name: "Expression"))
    InventoryAggregator.add_member(:aggregators, Shapes::ShapeRef.new(shape: InventoryAggregatorList, location_name: "Aggregators"))
    InventoryAggregator.add_member(:groups, Shapes::ShapeRef.new(shape: InventoryGroupList, location_name: "Groups"))
    InventoryAggregator.struct_class = Types::InventoryAggregator

    InventoryAggregatorList.member = Shapes::ShapeRef.new(shape: InventoryAggregator)

    InventoryDeletionStatusItem.add_member(:deletion_id, Shapes::ShapeRef.new(shape: UUID, location_name: "DeletionId"))
    InventoryDeletionStatusItem.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, location_name: "TypeName"))
    InventoryDeletionStatusItem.add_member(:deletion_start_time, Shapes::ShapeRef.new(shape: InventoryDeletionStartTime, location_name: "DeletionStartTime"))
    InventoryDeletionStatusItem.add_member(:last_status, Shapes::ShapeRef.new(shape: InventoryDeletionStatus, location_name: "LastStatus"))
    InventoryDeletionStatusItem.add_member(:last_status_message, Shapes::ShapeRef.new(shape: InventoryDeletionLastStatusMessage, location_name: "LastStatusMessage"))
    InventoryDeletionStatusItem.add_member(:deletion_summary, Shapes::ShapeRef.new(shape: InventoryDeletionSummary, location_name: "DeletionSummary"))
    InventoryDeletionStatusItem.add_member(:last_status_update_time, Shapes::ShapeRef.new(shape: InventoryDeletionLastStatusUpdateTime, location_name: "LastStatusUpdateTime"))
    InventoryDeletionStatusItem.struct_class = Types::InventoryDeletionStatusItem

    InventoryDeletionSummary.add_member(:total_count, Shapes::ShapeRef.new(shape: TotalCount, location_name: "TotalCount"))
    InventoryDeletionSummary.add_member(:remaining_count, Shapes::ShapeRef.new(shape: RemainingCount, location_name: "RemainingCount"))
    InventoryDeletionSummary.add_member(:summary_items, Shapes::ShapeRef.new(shape: InventoryDeletionSummaryItems, location_name: "SummaryItems"))
    InventoryDeletionSummary.struct_class = Types::InventoryDeletionSummary

    InventoryDeletionSummaryItem.add_member(:version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, location_name: "Version"))
    InventoryDeletionSummaryItem.add_member(:count, Shapes::ShapeRef.new(shape: ResourceCount, location_name: "Count"))
    InventoryDeletionSummaryItem.add_member(:remaining_count, Shapes::ShapeRef.new(shape: RemainingCount, location_name: "RemainingCount"))
    InventoryDeletionSummaryItem.struct_class = Types::InventoryDeletionSummaryItem

    InventoryDeletionSummaryItems.member = Shapes::ShapeRef.new(shape: InventoryDeletionSummaryItem)

    InventoryDeletionsList.member = Shapes::ShapeRef.new(shape: InventoryDeletionStatusItem)

    InventoryFilter.add_member(:key, Shapes::ShapeRef.new(shape: InventoryFilterKey, required: true, location_name: "Key"))
    InventoryFilter.add_member(:values, Shapes::ShapeRef.new(shape: InventoryFilterValueList, required: true, location_name: "Values"))
    InventoryFilter.add_member(:type, Shapes::ShapeRef.new(shape: InventoryQueryOperatorType, location_name: "Type"))
    InventoryFilter.struct_class = Types::InventoryFilter

    InventoryFilterList.member = Shapes::ShapeRef.new(shape: InventoryFilter)

    InventoryFilterValueList.member = Shapes::ShapeRef.new(shape: InventoryFilterValue)

    InventoryGroup.add_member(:name, Shapes::ShapeRef.new(shape: InventoryGroupName, required: true, location_name: "Name"))
    InventoryGroup.add_member(:filters, Shapes::ShapeRef.new(shape: InventoryFilterList, required: true, location_name: "Filters"))
    InventoryGroup.struct_class = Types::InventoryGroup

    InventoryGroupList.member = Shapes::ShapeRef.new(shape: InventoryGroup)

    InventoryItem.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    InventoryItem.add_member(:schema_version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, required: true, location_name: "SchemaVersion"))
    InventoryItem.add_member(:capture_time, Shapes::ShapeRef.new(shape: InventoryItemCaptureTime, required: true, location_name: "CaptureTime"))
    InventoryItem.add_member(:content_hash, Shapes::ShapeRef.new(shape: InventoryItemContentHash, location_name: "ContentHash"))
    InventoryItem.add_member(:content, Shapes::ShapeRef.new(shape: InventoryItemEntryList, location_name: "Content"))
    InventoryItem.add_member(:context, Shapes::ShapeRef.new(shape: InventoryItemContentContext, location_name: "Context"))
    InventoryItem.struct_class = Types::InventoryItem

    InventoryItemAttribute.add_member(:name, Shapes::ShapeRef.new(shape: InventoryItemAttributeName, required: true, location_name: "Name"))
    InventoryItemAttribute.add_member(:data_type, Shapes::ShapeRef.new(shape: InventoryAttributeDataType, required: true, location_name: "DataType"))
    InventoryItemAttribute.struct_class = Types::InventoryItemAttribute

    InventoryItemAttributeList.member = Shapes::ShapeRef.new(shape: InventoryItemAttribute)

    InventoryItemContentContext.key = Shapes::ShapeRef.new(shape: AttributeName)
    InventoryItemContentContext.value = Shapes::ShapeRef.new(shape: AttributeValue)

    InventoryItemEntry.key = Shapes::ShapeRef.new(shape: AttributeName)
    InventoryItemEntry.value = Shapes::ShapeRef.new(shape: AttributeValue)

    InventoryItemEntryList.member = Shapes::ShapeRef.new(shape: InventoryItemEntry)

    InventoryItemList.member = Shapes::ShapeRef.new(shape: InventoryItem)

    InventoryItemSchema.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    InventoryItemSchema.add_member(:version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, location_name: "Version"))
    InventoryItemSchema.add_member(:attributes, Shapes::ShapeRef.new(shape: InventoryItemAttributeList, required: true, location_name: "Attributes"))
    InventoryItemSchema.add_member(:display_name, Shapes::ShapeRef.new(shape: InventoryTypeDisplayName, location_name: "DisplayName"))
    InventoryItemSchema.struct_class = Types::InventoryItemSchema

    InventoryItemSchemaResultList.member = Shapes::ShapeRef.new(shape: InventoryItemSchema)

    InventoryResultEntity.add_member(:id, Shapes::ShapeRef.new(shape: InventoryResultEntityId, location_name: "Id"))
    InventoryResultEntity.add_member(:data, Shapes::ShapeRef.new(shape: InventoryResultItemMap, location_name: "Data"))
    InventoryResultEntity.struct_class = Types::InventoryResultEntity

    InventoryResultEntityList.member = Shapes::ShapeRef.new(shape: InventoryResultEntity)

    InventoryResultItem.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    InventoryResultItem.add_member(:schema_version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, required: true, location_name: "SchemaVersion"))
    InventoryResultItem.add_member(:capture_time, Shapes::ShapeRef.new(shape: InventoryItemCaptureTime, location_name: "CaptureTime"))
    InventoryResultItem.add_member(:content_hash, Shapes::ShapeRef.new(shape: InventoryItemContentHash, location_name: "ContentHash"))
    InventoryResultItem.add_member(:content, Shapes::ShapeRef.new(shape: InventoryItemEntryList, required: true, location_name: "Content"))
    InventoryResultItem.struct_class = Types::InventoryResultItem

    InventoryResultItemMap.key = Shapes::ShapeRef.new(shape: InventoryResultItemKey)
    InventoryResultItemMap.value = Shapes::ShapeRef.new(shape: InventoryResultItem)

    InvocationDoesNotExist.struct_class = Types::InvocationDoesNotExist

    ItemContentMismatchException.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, location_name: "TypeName"))
    ItemContentMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ItemContentMismatchException.struct_class = Types::ItemContentMismatchException

    ItemSizeLimitExceededException.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, location_name: "TypeName"))
    ItemSizeLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ItemSizeLimitExceededException.struct_class = Types::ItemSizeLimitExceededException

    KeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    LabelParameterVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    LabelParameterVersionRequest.add_member(:parameter_version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "ParameterVersion", metadata: {"box" => true}))
    LabelParameterVersionRequest.add_member(:labels, Shapes::ShapeRef.new(shape: ParameterLabelList, required: true, location_name: "Labels"))
    LabelParameterVersionRequest.struct_class = Types::LabelParameterVersionRequest

    LabelParameterVersionResult.add_member(:invalid_labels, Shapes::ShapeRef.new(shape: ParameterLabelList, location_name: "InvalidLabels"))
    LabelParameterVersionResult.add_member(:parameter_version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "ParameterVersion"))
    LabelParameterVersionResult.struct_class = Types::LabelParameterVersionResult

    ListAssociationVersionsRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "AssociationId"))
    ListAssociationVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListAssociationVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociationVersionsRequest.struct_class = Types::ListAssociationVersionsRequest

    ListAssociationVersionsResult.add_member(:association_versions, Shapes::ShapeRef.new(shape: AssociationVersionList, location_name: "AssociationVersions"))
    ListAssociationVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociationVersionsResult.struct_class = Types::ListAssociationVersionsResult

    ListAssociationsRequest.add_member(:association_filter_list, Shapes::ShapeRef.new(shape: AssociationFilterList, location_name: "AssociationFilterList"))
    ListAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociationsRequest.struct_class = Types::ListAssociationsRequest

    ListAssociationsResult.add_member(:associations, Shapes::ShapeRef.new(shape: AssociationList, location_name: "Associations"))
    ListAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAssociationsResult.struct_class = Types::ListAssociationsResult

    ListCommandInvocationsRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    ListCommandInvocationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    ListCommandInvocationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CommandMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListCommandInvocationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCommandInvocationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: CommandFilterList, location_name: "Filters"))
    ListCommandInvocationsRequest.add_member(:details, Shapes::ShapeRef.new(shape: Boolean, location_name: "Details"))
    ListCommandInvocationsRequest.struct_class = Types::ListCommandInvocationsRequest

    ListCommandInvocationsResult.add_member(:command_invocations, Shapes::ShapeRef.new(shape: CommandInvocationList, location_name: "CommandInvocations"))
    ListCommandInvocationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCommandInvocationsResult.struct_class = Types::ListCommandInvocationsResult

    ListCommandsRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
    ListCommandsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    ListCommandsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CommandMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListCommandsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCommandsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: CommandFilterList, location_name: "Filters"))
    ListCommandsRequest.struct_class = Types::ListCommandsRequest

    ListCommandsResult.add_member(:commands, Shapes::ShapeRef.new(shape: CommandList, location_name: "Commands"))
    ListCommandsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCommandsResult.struct_class = Types::ListCommandsResult

    ListComplianceItemsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ComplianceStringFilterList, location_name: "Filters"))
    ListComplianceItemsRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ComplianceResourceIdList, location_name: "ResourceIds"))
    ListComplianceItemsRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: ComplianceResourceTypeList, location_name: "ResourceTypes"))
    ListComplianceItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComplianceItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListComplianceItemsRequest.struct_class = Types::ListComplianceItemsRequest

    ListComplianceItemsResult.add_member(:compliance_items, Shapes::ShapeRef.new(shape: ComplianceItemList, location_name: "ComplianceItems"))
    ListComplianceItemsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComplianceItemsResult.struct_class = Types::ListComplianceItemsResult

    ListComplianceSummariesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ComplianceStringFilterList, location_name: "Filters"))
    ListComplianceSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComplianceSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListComplianceSummariesRequest.struct_class = Types::ListComplianceSummariesRequest

    ListComplianceSummariesResult.add_member(:compliance_summary_items, Shapes::ShapeRef.new(shape: ComplianceSummaryItemList, location_name: "ComplianceSummaryItems"))
    ListComplianceSummariesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListComplianceSummariesResult.struct_class = Types::ListComplianceSummariesResult

    ListDocumentMetadataHistoryRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    ListDocumentMetadataHistoryRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    ListDocumentMetadataHistoryRequest.add_member(:metadata, Shapes::ShapeRef.new(shape: DocumentMetadataEnum, required: true, location_name: "Metadata"))
    ListDocumentMetadataHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentMetadataHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListDocumentMetadataHistoryRequest.struct_class = Types::ListDocumentMetadataHistoryRequest

    ListDocumentMetadataHistoryResponse.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
    ListDocumentMetadataHistoryResponse.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    ListDocumentMetadataHistoryResponse.add_member(:author, Shapes::ShapeRef.new(shape: DocumentAuthor, location_name: "Author"))
    ListDocumentMetadataHistoryResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: DocumentMetadataResponseInfo, location_name: "Metadata"))
    ListDocumentMetadataHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentMetadataHistoryResponse.struct_class = Types::ListDocumentMetadataHistoryResponse

    ListDocumentVersionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
    ListDocumentVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListDocumentVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentVersionsRequest.struct_class = Types::ListDocumentVersionsRequest

    ListDocumentVersionsResult.add_member(:document_versions, Shapes::ShapeRef.new(shape: DocumentVersionList, location_name: "DocumentVersions"))
    ListDocumentVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentVersionsResult.struct_class = Types::ListDocumentVersionsResult

    ListDocumentsRequest.add_member(:document_filter_list, Shapes::ShapeRef.new(shape: DocumentFilterList, location_name: "DocumentFilterList"))
    ListDocumentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DocumentKeyValuesFilterList, location_name: "Filters"))
    ListDocumentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListDocumentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentsRequest.struct_class = Types::ListDocumentsRequest

    ListDocumentsResult.add_member(:document_identifiers, Shapes::ShapeRef.new(shape: DocumentIdentifierList, location_name: "DocumentIdentifiers"))
    ListDocumentsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDocumentsResult.struct_class = Types::ListDocumentsResult

    ListInventoryEntriesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    ListInventoryEntriesRequest.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    ListInventoryEntriesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: InventoryFilterList, location_name: "Filters"))
    ListInventoryEntriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInventoryEntriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListInventoryEntriesRequest.struct_class = Types::ListInventoryEntriesRequest

    ListInventoryEntriesResult.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, location_name: "TypeName"))
    ListInventoryEntriesResult.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    ListInventoryEntriesResult.add_member(:schema_version, Shapes::ShapeRef.new(shape: InventoryItemSchemaVersion, location_name: "SchemaVersion"))
    ListInventoryEntriesResult.add_member(:capture_time, Shapes::ShapeRef.new(shape: InventoryItemCaptureTime, location_name: "CaptureTime"))
    ListInventoryEntriesResult.add_member(:entries, Shapes::ShapeRef.new(shape: InventoryItemEntryList, location_name: "Entries"))
    ListInventoryEntriesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInventoryEntriesResult.struct_class = Types::ListInventoryEntriesResult

    ListNodesRequest.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, location_name: "SyncName"))
    ListNodesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: NodeFilterList, location_name: "Filters"))
    ListNodesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNodesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListNodesRequest.struct_class = Types::ListNodesRequest

    ListNodesResult.add_member(:nodes, Shapes::ShapeRef.new(shape: NodeList, location_name: "Nodes"))
    ListNodesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNodesResult.struct_class = Types::ListNodesResult

    ListNodesSummaryRequest.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, location_name: "SyncName"))
    ListNodesSummaryRequest.add_member(:filters, Shapes::ShapeRef.new(shape: NodeFilterList, location_name: "Filters"))
    ListNodesSummaryRequest.add_member(:aggregators, Shapes::ShapeRef.new(shape: NodeAggregatorList, required: true, location_name: "Aggregators"))
    ListNodesSummaryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNodesSummaryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListNodesSummaryRequest.struct_class = Types::ListNodesSummaryRequest

    ListNodesSummaryResult.add_member(:summary, Shapes::ShapeRef.new(shape: NodeSummaryList, location_name: "Summary"))
    ListNodesSummaryResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNodesSummaryResult.struct_class = Types::ListNodesSummaryResult

    ListOpsItemEventsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: OpsItemEventFilters, location_name: "Filters"))
    ListOpsItemEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OpsItemEventMaxResults, location_name: "MaxResults"))
    ListOpsItemEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpsItemEventsRequest.struct_class = Types::ListOpsItemEventsRequest

    ListOpsItemEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpsItemEventsResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: OpsItemEventSummaries, location_name: "Summaries"))
    ListOpsItemEventsResponse.struct_class = Types::ListOpsItemEventsResponse

    ListOpsItemRelatedItemsRequest.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: OpsItemId, location_name: "OpsItemId"))
    ListOpsItemRelatedItemsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: OpsItemRelatedItemsFilters, location_name: "Filters"))
    ListOpsItemRelatedItemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: OpsItemRelatedItemsMaxResults, location_name: "MaxResults"))
    ListOpsItemRelatedItemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpsItemRelatedItemsRequest.struct_class = Types::ListOpsItemRelatedItemsRequest

    ListOpsItemRelatedItemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpsItemRelatedItemsResponse.add_member(:summaries, Shapes::ShapeRef.new(shape: OpsItemRelatedItemSummaries, location_name: "Summaries"))
    ListOpsItemRelatedItemsResponse.struct_class = Types::ListOpsItemRelatedItemsResponse

    ListOpsMetadataRequest.add_member(:filters, Shapes::ShapeRef.new(shape: OpsMetadataFilterList, location_name: "Filters"))
    ListOpsMetadataRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOpsMetadataMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListOpsMetadataRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOpsMetadataRequest.struct_class = Types::ListOpsMetadataRequest

    ListOpsMetadataResult.add_member(:ops_metadata_list, Shapes::ShapeRef.new(shape: OpsMetadataList, location_name: "OpsMetadataList"))
    ListOpsMetadataResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOpsMetadataResult.struct_class = Types::ListOpsMetadataResult

    ListResourceComplianceSummariesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ComplianceStringFilterList, location_name: "Filters"))
    ListResourceComplianceSummariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceComplianceSummariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListResourceComplianceSummariesRequest.struct_class = Types::ListResourceComplianceSummariesRequest

    ListResourceComplianceSummariesResult.add_member(:resource_compliance_summary_items, Shapes::ShapeRef.new(shape: ResourceComplianceSummaryItemList, location_name: "ResourceComplianceSummaryItems"))
    ListResourceComplianceSummariesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceComplianceSummariesResult.struct_class = Types::ListResourceComplianceSummariesResult

    ListResourceDataSyncRequest.add_member(:sync_type, Shapes::ShapeRef.new(shape: ResourceDataSyncType, location_name: "SyncType"))
    ListResourceDataSyncRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceDataSyncRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListResourceDataSyncRequest.struct_class = Types::ListResourceDataSyncRequest

    ListResourceDataSyncResult.add_member(:resource_data_sync_items, Shapes::ShapeRef.new(shape: ResourceDataSyncItemList, location_name: "ResourceDataSyncItems"))
    ListResourceDataSyncResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceDataSyncResult.struct_class = Types::ListResourceDataSyncResult

    ListTagsForResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
    ListTagsForResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    LoggingInfo.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, required: true, location_name: "S3BucketName"))
    LoggingInfo.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "S3KeyPrefix"))
    LoggingInfo.add_member(:s3_region, Shapes::ShapeRef.new(shape: S3Region, required: true, location_name: "S3Region"))
    LoggingInfo.struct_class = Types::LoggingInfo

    MaintenanceWindowAutomationParameters.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    MaintenanceWindowAutomationParameters.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    MaintenanceWindowAutomationParameters.struct_class = Types::MaintenanceWindowAutomationParameters

    MaintenanceWindowExecution.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    MaintenanceWindowExecution.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    MaintenanceWindowExecution.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    MaintenanceWindowExecution.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    MaintenanceWindowExecution.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    MaintenanceWindowExecution.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    MaintenanceWindowExecution.struct_class = Types::MaintenanceWindowExecution

    MaintenanceWindowExecutionList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowExecution)

    MaintenanceWindowExecutionTaskIdList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId)

    MaintenanceWindowExecutionTaskIdentity.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:task_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, location_name: "TaskExecutionId"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "TaskType"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    MaintenanceWindowExecutionTaskIdentity.add_member(:triggered_alarms, Shapes::ShapeRef.new(shape: AlarmStateInformationList, location_name: "TriggeredAlarms"))
    MaintenanceWindowExecutionTaskIdentity.struct_class = Types::MaintenanceWindowExecutionTaskIdentity

    MaintenanceWindowExecutionTaskIdentityList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskIdentity)

    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:window_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionId, location_name: "WindowExecutionId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:task_execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskId, location_name: "TaskExecutionId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:invocation_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationId, location_name: "InvocationId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:execution_id, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskExecutionId, location_name: "ExecutionId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "TaskType"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationParameters, location_name: "Parameters"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:status, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatus, location_name: "Status"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:status_details, Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionStatusDetails, location_name: "StatusDetails"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    MaintenanceWindowExecutionTaskInvocationIdentity.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskTargetId, location_name: "WindowTargetId"))
    MaintenanceWindowExecutionTaskInvocationIdentity.struct_class = Types::MaintenanceWindowExecutionTaskInvocationIdentity

    MaintenanceWindowExecutionTaskInvocationIdentityList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowExecutionTaskInvocationIdentity)

    MaintenanceWindowFilter.add_member(:key, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterKey, location_name: "Key"))
    MaintenanceWindowFilter.add_member(:values, Shapes::ShapeRef.new(shape: MaintenanceWindowFilterValues, location_name: "Values"))
    MaintenanceWindowFilter.struct_class = Types::MaintenanceWindowFilter

    MaintenanceWindowFilterList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowFilter)

    MaintenanceWindowFilterValues.member = Shapes::ShapeRef.new(shape: MaintenanceWindowFilterValue)

    MaintenanceWindowIdentity.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    MaintenanceWindowIdentity.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    MaintenanceWindowIdentity.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    MaintenanceWindowIdentity.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled"))
    MaintenanceWindowIdentity.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration"))
    MaintenanceWindowIdentity.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff"))
    MaintenanceWindowIdentity.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, location_name: "Schedule"))
    MaintenanceWindowIdentity.add_member(:schedule_timezone, Shapes::ShapeRef.new(shape: MaintenanceWindowTimezone, location_name: "ScheduleTimezone"))
    MaintenanceWindowIdentity.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: MaintenanceWindowOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    MaintenanceWindowIdentity.add_member(:end_date, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "EndDate"))
    MaintenanceWindowIdentity.add_member(:start_date, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "StartDate"))
    MaintenanceWindowIdentity.add_member(:next_execution_time, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "NextExecutionTime"))
    MaintenanceWindowIdentity.struct_class = Types::MaintenanceWindowIdentity

    MaintenanceWindowIdentityForTarget.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    MaintenanceWindowIdentityForTarget.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    MaintenanceWindowIdentityForTarget.struct_class = Types::MaintenanceWindowIdentityForTarget

    MaintenanceWindowIdentityList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowIdentity)

    MaintenanceWindowLambdaParameters.add_member(:client_context, Shapes::ShapeRef.new(shape: MaintenanceWindowLambdaClientContext, location_name: "ClientContext"))
    MaintenanceWindowLambdaParameters.add_member(:qualifier, Shapes::ShapeRef.new(shape: MaintenanceWindowLambdaQualifier, location_name: "Qualifier"))
    MaintenanceWindowLambdaParameters.add_member(:payload, Shapes::ShapeRef.new(shape: MaintenanceWindowLambdaPayload, location_name: "Payload"))
    MaintenanceWindowLambdaParameters.struct_class = Types::MaintenanceWindowLambdaParameters

    MaintenanceWindowRunCommandParameters.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    MaintenanceWindowRunCommandParameters.add_member(:cloud_watch_output_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, location_name: "CloudWatchOutputConfig"))
    MaintenanceWindowRunCommandParameters.add_member(:document_hash, Shapes::ShapeRef.new(shape: DocumentHash, location_name: "DocumentHash"))
    MaintenanceWindowRunCommandParameters.add_member(:document_hash_type, Shapes::ShapeRef.new(shape: DocumentHashType, location_name: "DocumentHashType"))
    MaintenanceWindowRunCommandParameters.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    MaintenanceWindowRunCommandParameters.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    MaintenanceWindowRunCommandParameters.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    MaintenanceWindowRunCommandParameters.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    MaintenanceWindowRunCommandParameters.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    MaintenanceWindowRunCommandParameters.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    MaintenanceWindowRunCommandParameters.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: TimeoutSeconds, location_name: "TimeoutSeconds", metadata: {"box" => true}))
    MaintenanceWindowRunCommandParameters.struct_class = Types::MaintenanceWindowRunCommandParameters

    MaintenanceWindowStepFunctionsParameters.add_member(:input, Shapes::ShapeRef.new(shape: MaintenanceWindowStepFunctionsInput, location_name: "Input"))
    MaintenanceWindowStepFunctionsParameters.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowStepFunctionsName, location_name: "Name"))
    MaintenanceWindowStepFunctionsParameters.struct_class = Types::MaintenanceWindowStepFunctionsParameters

    MaintenanceWindowTarget.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    MaintenanceWindowTarget.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, location_name: "WindowTargetId"))
    MaintenanceWindowTarget.add_member(:resource_type, Shapes::ShapeRef.new(shape: MaintenanceWindowResourceType, location_name: "ResourceType"))
    MaintenanceWindowTarget.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    MaintenanceWindowTarget.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    MaintenanceWindowTarget.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    MaintenanceWindowTarget.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    MaintenanceWindowTarget.struct_class = Types::MaintenanceWindowTarget

    MaintenanceWindowTargetList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowTarget)

    MaintenanceWindowTask.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    MaintenanceWindowTask.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    MaintenanceWindowTask.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    MaintenanceWindowTask.add_member(:type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, location_name: "Type"))
    MaintenanceWindowTask.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    MaintenanceWindowTask.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    MaintenanceWindowTask.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority"))
    MaintenanceWindowTask.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    MaintenanceWindowTask.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    MaintenanceWindowTask.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    MaintenanceWindowTask.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    MaintenanceWindowTask.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    MaintenanceWindowTask.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    MaintenanceWindowTask.add_member(:cutoff_behavior, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskCutoffBehavior, location_name: "CutoffBehavior", metadata: {"box" => true}))
    MaintenanceWindowTask.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    MaintenanceWindowTask.struct_class = Types::MaintenanceWindowTask

    MaintenanceWindowTaskInvocationParameters.add_member(:run_command, Shapes::ShapeRef.new(shape: MaintenanceWindowRunCommandParameters, location_name: "RunCommand"))
    MaintenanceWindowTaskInvocationParameters.add_member(:automation, Shapes::ShapeRef.new(shape: MaintenanceWindowAutomationParameters, location_name: "Automation"))
    MaintenanceWindowTaskInvocationParameters.add_member(:step_functions, Shapes::ShapeRef.new(shape: MaintenanceWindowStepFunctionsParameters, location_name: "StepFunctions"))
    MaintenanceWindowTaskInvocationParameters.add_member(:lambda, Shapes::ShapeRef.new(shape: MaintenanceWindowLambdaParameters, location_name: "Lambda"))
    MaintenanceWindowTaskInvocationParameters.struct_class = Types::MaintenanceWindowTaskInvocationParameters

    MaintenanceWindowTaskList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowTask)

    MaintenanceWindowTaskParameterValueExpression.add_member(:values, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameterValueList, location_name: "Values"))
    MaintenanceWindowTaskParameterValueExpression.struct_class = Types::MaintenanceWindowTaskParameterValueExpression

    MaintenanceWindowTaskParameterValueList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameterValue)

    MaintenanceWindowTaskParameters.key = Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameterName)
    MaintenanceWindowTaskParameters.value = Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameterValueExpression)

    MaintenanceWindowTaskParametersList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters)

    MaintenanceWindowsForTargetList.member = Shapes::ShapeRef.new(shape: MaintenanceWindowIdentityForTarget)

    MalformedResourcePolicyDocumentException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    MalformedResourcePolicyDocumentException.struct_class = Types::MalformedResourcePolicyDocumentException

    MaxDocumentSizeExceeded.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    MaxDocumentSizeExceeded.struct_class = Types::MaxDocumentSizeExceeded

    MetadataKeysToDeleteList.member = Shapes::ShapeRef.new(shape: MetadataKey)

    MetadataMap.key = Shapes::ShapeRef.new(shape: MetadataKey)
    MetadataMap.value = Shapes::ShapeRef.new(shape: MetadataValue)

    MetadataValue.add_member(:value, Shapes::ShapeRef.new(shape: MetadataValueString, location_name: "Value"))
    MetadataValue.struct_class = Types::MetadataValue

    ModifyDocumentPermissionRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    ModifyDocumentPermissionRequest.add_member(:permission_type, Shapes::ShapeRef.new(shape: DocumentPermissionType, required: true, location_name: "PermissionType"))
    ModifyDocumentPermissionRequest.add_member(:account_ids_to_add, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIdsToAdd"))
    ModifyDocumentPermissionRequest.add_member(:account_ids_to_remove, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIdsToRemove"))
    ModifyDocumentPermissionRequest.add_member(:shared_document_version, Shapes::ShapeRef.new(shape: SharedDocumentVersion, location_name: "SharedDocumentVersion"))
    ModifyDocumentPermissionRequest.struct_class = Types::ModifyDocumentPermissionRequest

    ModifyDocumentPermissionResponse.struct_class = Types::ModifyDocumentPermissionResponse

    Node.add_member(:capture_time, Shapes::ShapeRef.new(shape: NodeCaptureTime, location_name: "CaptureTime"))
    Node.add_member(:id, Shapes::ShapeRef.new(shape: NodeId, location_name: "Id"))
    Node.add_member(:owner, Shapes::ShapeRef.new(shape: NodeOwnerInfo, location_name: "Owner"))
    Node.add_member(:region, Shapes::ShapeRef.new(shape: NodeRegion, location_name: "Region"))
    Node.add_member(:node_type, Shapes::ShapeRef.new(shape: NodeType, location_name: "NodeType"))
    Node.struct_class = Types::Node

    NodeAggregator.add_member(:aggregator_type, Shapes::ShapeRef.new(shape: NodeAggregatorType, required: true, location_name: "AggregatorType"))
    NodeAggregator.add_member(:type_name, Shapes::ShapeRef.new(shape: NodeTypeName, required: true, location_name: "TypeName"))
    NodeAggregator.add_member(:attribute_name, Shapes::ShapeRef.new(shape: NodeAttributeName, required: true, location_name: "AttributeName"))
    NodeAggregator.add_member(:aggregators, Shapes::ShapeRef.new(shape: NodeAggregatorList, location_name: "Aggregators"))
    NodeAggregator.struct_class = Types::NodeAggregator

    NodeAggregatorList.member = Shapes::ShapeRef.new(shape: NodeAggregator)

    NodeFilter.add_member(:key, Shapes::ShapeRef.new(shape: NodeFilterKey, required: true, location_name: "Key"))
    NodeFilter.add_member(:values, Shapes::ShapeRef.new(shape: NodeFilterValueList, required: true, location_name: "Values"))
    NodeFilter.add_member(:type, Shapes::ShapeRef.new(shape: NodeFilterOperatorType, location_name: "Type"))
    NodeFilter.struct_class = Types::NodeFilter

    NodeFilterList.member = Shapes::ShapeRef.new(shape: NodeFilter)

    NodeFilterValueList.member = Shapes::ShapeRef.new(shape: NodeFilterValue)

    NodeList.member = Shapes::ShapeRef.new(shape: Node)

    NodeOwnerInfo.add_member(:account_id, Shapes::ShapeRef.new(shape: NodeAccountId, location_name: "AccountId"))
    NodeOwnerInfo.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: NodeOrganizationalUnitId, location_name: "OrganizationalUnitId"))
    NodeOwnerInfo.add_member(:organizational_unit_path, Shapes::ShapeRef.new(shape: NodeOrganizationalUnitPath, location_name: "OrganizationalUnitPath"))
    NodeOwnerInfo.struct_class = Types::NodeOwnerInfo

    NodeSummary.key = Shapes::ShapeRef.new(shape: AttributeName)
    NodeSummary.value = Shapes::ShapeRef.new(shape: AttributeValue)

    NodeSummaryList.member = Shapes::ShapeRef.new(shape: NodeSummary)

    NodeType.add_member(:instance, Shapes::ShapeRef.new(shape: InstanceInfo, location_name: "Instance"))
    NodeType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NodeType.add_member_subclass(:instance, Types::NodeType::Instance)
    NodeType.add_member_subclass(:unknown, Types::NodeType::Unknown)
    NodeType.struct_class = Types::NodeType

    NonCompliantSummary.add_member(:non_compliant_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "NonCompliantCount"))
    NonCompliantSummary.add_member(:severity_summary, Shapes::ShapeRef.new(shape: SeveritySummary, location_name: "SeveritySummary"))
    NonCompliantSummary.struct_class = Types::NonCompliantSummary

    NormalStringMap.key = Shapes::ShapeRef.new(shape: String)
    NormalStringMap.value = Shapes::ShapeRef.new(shape: String)

    NotificationConfig.add_member(:notification_arn, Shapes::ShapeRef.new(shape: NotificationArn, location_name: "NotificationArn"))
    NotificationConfig.add_member(:notification_events, Shapes::ShapeRef.new(shape: NotificationEventList, location_name: "NotificationEvents"))
    NotificationConfig.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, location_name: "NotificationType"))
    NotificationConfig.struct_class = Types::NotificationConfig

    NotificationEventList.member = Shapes::ShapeRef.new(shape: NotificationEvent)

    OpsAggregator.add_member(:aggregator_type, Shapes::ShapeRef.new(shape: OpsAggregatorType, location_name: "AggregatorType"))
    OpsAggregator.add_member(:type_name, Shapes::ShapeRef.new(shape: OpsDataTypeName, location_name: "TypeName"))
    OpsAggregator.add_member(:attribute_name, Shapes::ShapeRef.new(shape: OpsDataAttributeName, location_name: "AttributeName"))
    OpsAggregator.add_member(:values, Shapes::ShapeRef.new(shape: OpsAggregatorValueMap, location_name: "Values"))
    OpsAggregator.add_member(:filters, Shapes::ShapeRef.new(shape: OpsFilterList, location_name: "Filters"))
    OpsAggregator.add_member(:aggregators, Shapes::ShapeRef.new(shape: OpsAggregatorList, location_name: "Aggregators"))
    OpsAggregator.struct_class = Types::OpsAggregator

    OpsAggregatorList.member = Shapes::ShapeRef.new(shape: OpsAggregator)

    OpsAggregatorValueMap.key = Shapes::ShapeRef.new(shape: OpsAggregatorValueKey)
    OpsAggregatorValueMap.value = Shapes::ShapeRef.new(shape: OpsAggregatorValue)

    OpsEntity.add_member(:id, Shapes::ShapeRef.new(shape: OpsEntityId, location_name: "Id"))
    OpsEntity.add_member(:data, Shapes::ShapeRef.new(shape: OpsEntityItemMap, location_name: "Data"))
    OpsEntity.struct_class = Types::OpsEntity

    OpsEntityItem.add_member(:capture_time, Shapes::ShapeRef.new(shape: OpsEntityItemCaptureTime, location_name: "CaptureTime"))
    OpsEntityItem.add_member(:content, Shapes::ShapeRef.new(shape: OpsEntityItemEntryList, location_name: "Content"))
    OpsEntityItem.struct_class = Types::OpsEntityItem

    OpsEntityItemEntry.key = Shapes::ShapeRef.new(shape: AttributeName)
    OpsEntityItemEntry.value = Shapes::ShapeRef.new(shape: AttributeValue)

    OpsEntityItemEntryList.member = Shapes::ShapeRef.new(shape: OpsEntityItemEntry)

    OpsEntityItemMap.key = Shapes::ShapeRef.new(shape: OpsEntityItemKey)
    OpsEntityItemMap.value = Shapes::ShapeRef.new(shape: OpsEntityItem)

    OpsEntityList.member = Shapes::ShapeRef.new(shape: OpsEntity)

    OpsFilter.add_member(:key, Shapes::ShapeRef.new(shape: OpsFilterKey, required: true, location_name: "Key"))
    OpsFilter.add_member(:values, Shapes::ShapeRef.new(shape: OpsFilterValueList, required: true, location_name: "Values"))
    OpsFilter.add_member(:type, Shapes::ShapeRef.new(shape: OpsFilterOperatorType, location_name: "Type"))
    OpsFilter.struct_class = Types::OpsFilter

    OpsFilterList.member = Shapes::ShapeRef.new(shape: OpsFilter)

    OpsFilterValueList.member = Shapes::ShapeRef.new(shape: OpsFilterValue)

    OpsItem.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "CreatedBy"))
    OpsItem.add_member(:ops_item_type, Shapes::ShapeRef.new(shape: OpsItemType, location_name: "OpsItemType"))
    OpsItem.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    OpsItem.add_member(:description, Shapes::ShapeRef.new(shape: OpsItemDescription, location_name: "Description"))
    OpsItem.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedBy"))
    OpsItem.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    OpsItem.add_member(:notifications, Shapes::ShapeRef.new(shape: OpsItemNotifications, location_name: "Notifications"))
    OpsItem.add_member(:priority, Shapes::ShapeRef.new(shape: OpsItemPriority, location_name: "Priority"))
    OpsItem.add_member(:related_ops_items, Shapes::ShapeRef.new(shape: RelatedOpsItems, location_name: "RelatedOpsItems"))
    OpsItem.add_member(:status, Shapes::ShapeRef.new(shape: OpsItemStatus, location_name: "Status"))
    OpsItem.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: OpsItemId, location_name: "OpsItemId"))
    OpsItem.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    OpsItem.add_member(:title, Shapes::ShapeRef.new(shape: OpsItemTitle, location_name: "Title"))
    OpsItem.add_member(:source, Shapes::ShapeRef.new(shape: OpsItemSource, location_name: "Source"))
    OpsItem.add_member(:operational_data, Shapes::ShapeRef.new(shape: OpsItemOperationalData, location_name: "OperationalData"))
    OpsItem.add_member(:category, Shapes::ShapeRef.new(shape: OpsItemCategory, location_name: "Category"))
    OpsItem.add_member(:severity, Shapes::ShapeRef.new(shape: OpsItemSeverity, location_name: "Severity"))
    OpsItem.add_member(:actual_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ActualStartTime"))
    OpsItem.add_member(:actual_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ActualEndTime"))
    OpsItem.add_member(:planned_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "PlannedStartTime"))
    OpsItem.add_member(:planned_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "PlannedEndTime"))
    OpsItem.add_member(:ops_item_arn, Shapes::ShapeRef.new(shape: OpsItemArn, location_name: "OpsItemArn"))
    OpsItem.struct_class = Types::OpsItem

    OpsItemAccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    OpsItemAccessDeniedException.struct_class = Types::OpsItemAccessDeniedException

    OpsItemAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    OpsItemAlreadyExistsException.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: String, location_name: "OpsItemId"))
    OpsItemAlreadyExistsException.struct_class = Types::OpsItemAlreadyExistsException

    OpsItemConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    OpsItemConflictException.struct_class = Types::OpsItemConflictException

    OpsItemDataValue.add_member(:value, Shapes::ShapeRef.new(shape: OpsItemDataValueString, location_name: "Value"))
    OpsItemDataValue.add_member(:type, Shapes::ShapeRef.new(shape: OpsItemDataType, location_name: "Type"))
    OpsItemDataValue.struct_class = Types::OpsItemDataValue

    OpsItemEventFilter.add_member(:key, Shapes::ShapeRef.new(shape: OpsItemEventFilterKey, required: true, location_name: "Key"))
    OpsItemEventFilter.add_member(:values, Shapes::ShapeRef.new(shape: OpsItemEventFilterValues, required: true, location_name: "Values"))
    OpsItemEventFilter.add_member(:operator, Shapes::ShapeRef.new(shape: OpsItemEventFilterOperator, required: true, location_name: "Operator"))
    OpsItemEventFilter.struct_class = Types::OpsItemEventFilter

    OpsItemEventFilterValues.member = Shapes::ShapeRef.new(shape: OpsItemEventFilterValue)

    OpsItemEventFilters.member = Shapes::ShapeRef.new(shape: OpsItemEventFilter)

    OpsItemEventSummaries.member = Shapes::ShapeRef.new(shape: OpsItemEventSummary)

    OpsItemEventSummary.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: String, location_name: "OpsItemId"))
    OpsItemEventSummary.add_member(:event_id, Shapes::ShapeRef.new(shape: String, location_name: "EventId"))
    OpsItemEventSummary.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    OpsItemEventSummary.add_member(:detail_type, Shapes::ShapeRef.new(shape: String, location_name: "DetailType"))
    OpsItemEventSummary.add_member(:detail, Shapes::ShapeRef.new(shape: String, location_name: "Detail"))
    OpsItemEventSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: OpsItemIdentity, location_name: "CreatedBy"))
    OpsItemEventSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    OpsItemEventSummary.struct_class = Types::OpsItemEventSummary

    OpsItemFilter.add_member(:key, Shapes::ShapeRef.new(shape: OpsItemFilterKey, required: true, location_name: "Key"))
    OpsItemFilter.add_member(:values, Shapes::ShapeRef.new(shape: OpsItemFilterValues, required: true, location_name: "Values"))
    OpsItemFilter.add_member(:operator, Shapes::ShapeRef.new(shape: OpsItemFilterOperator, required: true, location_name: "Operator"))
    OpsItemFilter.struct_class = Types::OpsItemFilter

    OpsItemFilterValues.member = Shapes::ShapeRef.new(shape: OpsItemFilterValue)

    OpsItemFilters.member = Shapes::ShapeRef.new(shape: OpsItemFilter)

    OpsItemIdentity.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    OpsItemIdentity.struct_class = Types::OpsItemIdentity

    OpsItemInvalidParameterException.add_member(:parameter_names, Shapes::ShapeRef.new(shape: OpsItemParameterNamesList, location_name: "ParameterNames"))
    OpsItemInvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    OpsItemInvalidParameterException.struct_class = Types::OpsItemInvalidParameterException

    OpsItemLimitExceededException.add_member(:resource_types, Shapes::ShapeRef.new(shape: OpsItemParameterNamesList, location_name: "ResourceTypes"))
    OpsItemLimitExceededException.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, location_name: "Limit"))
    OpsItemLimitExceededException.add_member(:limit_type, Shapes::ShapeRef.new(shape: String, location_name: "LimitType"))
    OpsItemLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    OpsItemLimitExceededException.struct_class = Types::OpsItemLimitExceededException

    OpsItemNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    OpsItemNotFoundException.struct_class = Types::OpsItemNotFoundException

    OpsItemNotification.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    OpsItemNotification.struct_class = Types::OpsItemNotification

    OpsItemNotifications.member = Shapes::ShapeRef.new(shape: OpsItemNotification)

    OpsItemOperationalData.key = Shapes::ShapeRef.new(shape: OpsItemDataKey)
    OpsItemOperationalData.value = Shapes::ShapeRef.new(shape: OpsItemDataValue)

    OpsItemOpsDataKeysList.member = Shapes::ShapeRef.new(shape: String)

    OpsItemParameterNamesList.member = Shapes::ShapeRef.new(shape: String)

    OpsItemRelatedItemAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    OpsItemRelatedItemAlreadyExistsException.add_member(:resource_uri, Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationResourceUri, location_name: "ResourceUri"))
    OpsItemRelatedItemAlreadyExistsException.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: OpsItemId, location_name: "OpsItemId"))
    OpsItemRelatedItemAlreadyExistsException.struct_class = Types::OpsItemRelatedItemAlreadyExistsException

    OpsItemRelatedItemAssociationNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    OpsItemRelatedItemAssociationNotFoundException.struct_class = Types::OpsItemRelatedItemAssociationNotFoundException

    OpsItemRelatedItemSummaries.member = Shapes::ShapeRef.new(shape: OpsItemRelatedItemSummary)

    OpsItemRelatedItemSummary.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: OpsItemId, location_name: "OpsItemId"))
    OpsItemRelatedItemSummary.add_member(:association_id, Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationId, location_name: "AssociationId"))
    OpsItemRelatedItemSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationResourceType, location_name: "ResourceType"))
    OpsItemRelatedItemSummary.add_member(:association_type, Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationType, location_name: "AssociationType"))
    OpsItemRelatedItemSummary.add_member(:resource_uri, Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationResourceUri, location_name: "ResourceUri"))
    OpsItemRelatedItemSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: OpsItemIdentity, location_name: "CreatedBy"))
    OpsItemRelatedItemSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    OpsItemRelatedItemSummary.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: OpsItemIdentity, location_name: "LastModifiedBy"))
    OpsItemRelatedItemSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    OpsItemRelatedItemSummary.struct_class = Types::OpsItemRelatedItemSummary

    OpsItemRelatedItemsFilter.add_member(:key, Shapes::ShapeRef.new(shape: OpsItemRelatedItemsFilterKey, required: true, location_name: "Key"))
    OpsItemRelatedItemsFilter.add_member(:values, Shapes::ShapeRef.new(shape: OpsItemRelatedItemsFilterValues, required: true, location_name: "Values"))
    OpsItemRelatedItemsFilter.add_member(:operator, Shapes::ShapeRef.new(shape: OpsItemRelatedItemsFilterOperator, required: true, location_name: "Operator"))
    OpsItemRelatedItemsFilter.struct_class = Types::OpsItemRelatedItemsFilter

    OpsItemRelatedItemsFilterValues.member = Shapes::ShapeRef.new(shape: OpsItemRelatedItemsFilterValue)

    OpsItemRelatedItemsFilters.member = Shapes::ShapeRef.new(shape: OpsItemRelatedItemsFilter)

    OpsItemSummaries.member = Shapes::ShapeRef.new(shape: OpsItemSummary)

    OpsItemSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "CreatedBy"))
    OpsItemSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedTime"))
    OpsItemSummary.add_member(:last_modified_by, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedBy"))
    OpsItemSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedTime"))
    OpsItemSummary.add_member(:priority, Shapes::ShapeRef.new(shape: OpsItemPriority, location_name: "Priority"))
    OpsItemSummary.add_member(:source, Shapes::ShapeRef.new(shape: OpsItemSource, location_name: "Source"))
    OpsItemSummary.add_member(:status, Shapes::ShapeRef.new(shape: OpsItemStatus, location_name: "Status"))
    OpsItemSummary.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: OpsItemId, location_name: "OpsItemId"))
    OpsItemSummary.add_member(:title, Shapes::ShapeRef.new(shape: OpsItemTitle, location_name: "Title"))
    OpsItemSummary.add_member(:operational_data, Shapes::ShapeRef.new(shape: OpsItemOperationalData, location_name: "OperationalData"))
    OpsItemSummary.add_member(:category, Shapes::ShapeRef.new(shape: OpsItemCategory, location_name: "Category"))
    OpsItemSummary.add_member(:severity, Shapes::ShapeRef.new(shape: OpsItemSeverity, location_name: "Severity"))
    OpsItemSummary.add_member(:ops_item_type, Shapes::ShapeRef.new(shape: OpsItemType, location_name: "OpsItemType"))
    OpsItemSummary.add_member(:actual_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ActualStartTime"))
    OpsItemSummary.add_member(:actual_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ActualEndTime"))
    OpsItemSummary.add_member(:planned_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "PlannedStartTime"))
    OpsItemSummary.add_member(:planned_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "PlannedEndTime"))
    OpsItemSummary.struct_class = Types::OpsItemSummary

    OpsMetadata.add_member(:resource_id, Shapes::ShapeRef.new(shape: OpsMetadataResourceId, location_name: "ResourceId"))
    OpsMetadata.add_member(:ops_metadata_arn, Shapes::ShapeRef.new(shape: OpsMetadataArn, location_name: "OpsMetadataArn"))
    OpsMetadata.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    OpsMetadata.add_member(:last_modified_user, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedUser"))
    OpsMetadata.add_member(:creation_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationDate"))
    OpsMetadata.struct_class = Types::OpsMetadata

    OpsMetadataAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    OpsMetadataAlreadyExistsException.struct_class = Types::OpsMetadataAlreadyExistsException

    OpsMetadataFilter.add_member(:key, Shapes::ShapeRef.new(shape: OpsMetadataFilterKey, required: true, location_name: "Key"))
    OpsMetadataFilter.add_member(:values, Shapes::ShapeRef.new(shape: OpsMetadataFilterValueList, required: true, location_name: "Values"))
    OpsMetadataFilter.struct_class = Types::OpsMetadataFilter

    OpsMetadataFilterList.member = Shapes::ShapeRef.new(shape: OpsMetadataFilter)

    OpsMetadataFilterValueList.member = Shapes::ShapeRef.new(shape: OpsMetadataFilterValue)

    OpsMetadataInvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    OpsMetadataInvalidArgumentException.struct_class = Types::OpsMetadataInvalidArgumentException

    OpsMetadataKeyLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    OpsMetadataKeyLimitExceededException.struct_class = Types::OpsMetadataKeyLimitExceededException

    OpsMetadataLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    OpsMetadataLimitExceededException.struct_class = Types::OpsMetadataLimitExceededException

    OpsMetadataList.member = Shapes::ShapeRef.new(shape: OpsMetadata)

    OpsMetadataNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    OpsMetadataNotFoundException.struct_class = Types::OpsMetadataNotFoundException

    OpsMetadataTooManyUpdatesException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    OpsMetadataTooManyUpdatesException.struct_class = Types::OpsMetadataTooManyUpdatesException

    OpsResultAttribute.add_member(:type_name, Shapes::ShapeRef.new(shape: OpsDataTypeName, required: true, location_name: "TypeName"))
    OpsResultAttribute.struct_class = Types::OpsResultAttribute

    OpsResultAttributeList.member = Shapes::ShapeRef.new(shape: OpsResultAttribute)

    OutputSource.add_member(:output_source_id, Shapes::ShapeRef.new(shape: OutputSourceId, location_name: "OutputSourceId"))
    OutputSource.add_member(:output_source_type, Shapes::ShapeRef.new(shape: OutputSourceType, location_name: "OutputSourceType"))
    OutputSource.struct_class = Types::OutputSource

    Parameter.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, location_name: "Name"))
    Parameter.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "Type"))
    Parameter.add_member(:value, Shapes::ShapeRef.new(shape: PSParameterValue, location_name: "Value"))
    Parameter.add_member(:version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "Version"))
    Parameter.add_member(:selector, Shapes::ShapeRef.new(shape: PSParameterSelector, location_name: "Selector"))
    Parameter.add_member(:source_result, Shapes::ShapeRef.new(shape: String, location_name: "SourceResult"))
    Parameter.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    Parameter.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    Parameter.add_member(:data_type, Shapes::ShapeRef.new(shape: ParameterDataType, location_name: "DataType"))
    Parameter.struct_class = Types::Parameter

    ParameterAlreadyExists.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ParameterAlreadyExists.struct_class = Types::ParameterAlreadyExists

    ParameterHistory.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, location_name: "Name"))
    ParameterHistory.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "Type"))
    ParameterHistory.add_member(:key_id, Shapes::ShapeRef.new(shape: ParameterKeyId, location_name: "KeyId"))
    ParameterHistory.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    ParameterHistory.add_member(:last_modified_user, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedUser"))
    ParameterHistory.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "Description"))
    ParameterHistory.add_member(:value, Shapes::ShapeRef.new(shape: PSParameterValue, location_name: "Value"))
    ParameterHistory.add_member(:allowed_pattern, Shapes::ShapeRef.new(shape: AllowedPattern, location_name: "AllowedPattern"))
    ParameterHistory.add_member(:version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "Version"))
    ParameterHistory.add_member(:labels, Shapes::ShapeRef.new(shape: ParameterLabelList, location_name: "Labels"))
    ParameterHistory.add_member(:tier, Shapes::ShapeRef.new(shape: ParameterTier, location_name: "Tier"))
    ParameterHistory.add_member(:policies, Shapes::ShapeRef.new(shape: ParameterPolicyList, location_name: "Policies"))
    ParameterHistory.add_member(:data_type, Shapes::ShapeRef.new(shape: ParameterDataType, location_name: "DataType"))
    ParameterHistory.struct_class = Types::ParameterHistory

    ParameterHistoryList.member = Shapes::ShapeRef.new(shape: ParameterHistory)

    ParameterInlinePolicy.add_member(:policy_text, Shapes::ShapeRef.new(shape: String, location_name: "PolicyText"))
    ParameterInlinePolicy.add_member(:policy_type, Shapes::ShapeRef.new(shape: String, location_name: "PolicyType"))
    ParameterInlinePolicy.add_member(:policy_status, Shapes::ShapeRef.new(shape: String, location_name: "PolicyStatus"))
    ParameterInlinePolicy.struct_class = Types::ParameterInlinePolicy

    ParameterLabelList.member = Shapes::ShapeRef.new(shape: ParameterLabel)

    ParameterLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ParameterLimitExceeded.struct_class = Types::ParameterLimitExceeded

    ParameterList.member = Shapes::ShapeRef.new(shape: Parameter)

    ParameterMaxVersionLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ParameterMaxVersionLimitExceeded.struct_class = Types::ParameterMaxVersionLimitExceeded

    ParameterMetadata.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, location_name: "Name"))
    ParameterMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    ParameterMetadata.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "Type"))
    ParameterMetadata.add_member(:key_id, Shapes::ShapeRef.new(shape: ParameterKeyId, location_name: "KeyId"))
    ParameterMetadata.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    ParameterMetadata.add_member(:last_modified_user, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedUser"))
    ParameterMetadata.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "Description"))
    ParameterMetadata.add_member(:allowed_pattern, Shapes::ShapeRef.new(shape: AllowedPattern, location_name: "AllowedPattern"))
    ParameterMetadata.add_member(:version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "Version"))
    ParameterMetadata.add_member(:tier, Shapes::ShapeRef.new(shape: ParameterTier, location_name: "Tier"))
    ParameterMetadata.add_member(:policies, Shapes::ShapeRef.new(shape: ParameterPolicyList, location_name: "Policies"))
    ParameterMetadata.add_member(:data_type, Shapes::ShapeRef.new(shape: ParameterDataType, location_name: "DataType"))
    ParameterMetadata.struct_class = Types::ParameterMetadata

    ParameterMetadataList.member = Shapes::ShapeRef.new(shape: ParameterMetadata)

    ParameterNameList.member = Shapes::ShapeRef.new(shape: PSParameterName)

    ParameterNotFound.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ParameterNotFound.struct_class = Types::ParameterNotFound

    ParameterPatternMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ParameterPatternMismatchException.struct_class = Types::ParameterPatternMismatchException

    ParameterPolicyList.member = Shapes::ShapeRef.new(shape: ParameterInlinePolicy)

    ParameterStringFilter.add_member(:key, Shapes::ShapeRef.new(shape: ParameterStringFilterKey, required: true, location_name: "Key"))
    ParameterStringFilter.add_member(:option, Shapes::ShapeRef.new(shape: ParameterStringQueryOption, location_name: "Option"))
    ParameterStringFilter.add_member(:values, Shapes::ShapeRef.new(shape: ParameterStringFilterValueList, location_name: "Values"))
    ParameterStringFilter.struct_class = Types::ParameterStringFilter

    ParameterStringFilterList.member = Shapes::ShapeRef.new(shape: ParameterStringFilter)

    ParameterStringFilterValueList.member = Shapes::ShapeRef.new(shape: ParameterStringFilterValue)

    ParameterValueList.member = Shapes::ShapeRef.new(shape: ParameterValue)

    ParameterVersionLabelLimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ParameterVersionLabelLimitExceeded.struct_class = Types::ParameterVersionLabelLimitExceeded

    ParameterVersionNotFound.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ParameterVersionNotFound.struct_class = Types::ParameterVersionNotFound

    Parameters.key = Shapes::ShapeRef.new(shape: ParameterName)
    Parameters.value = Shapes::ShapeRef.new(shape: ParameterValueList)

    ParametersFilter.add_member(:key, Shapes::ShapeRef.new(shape: ParametersFilterKey, required: true, location_name: "Key"))
    ParametersFilter.add_member(:values, Shapes::ShapeRef.new(shape: ParametersFilterValueList, required: true, location_name: "Values"))
    ParametersFilter.struct_class = Types::ParametersFilter

    ParametersFilterList.member = Shapes::ShapeRef.new(shape: ParametersFilter)

    ParametersFilterValueList.member = Shapes::ShapeRef.new(shape: ParametersFilterValue)

    ParentStepDetails.add_member(:step_execution_id, Shapes::ShapeRef.new(shape: String, location_name: "StepExecutionId"))
    ParentStepDetails.add_member(:step_name, Shapes::ShapeRef.new(shape: String, location_name: "StepName"))
    ParentStepDetails.add_member(:action, Shapes::ShapeRef.new(shape: AutomationActionName, location_name: "Action"))
    ParentStepDetails.add_member(:iteration, Shapes::ShapeRef.new(shape: Integer, location_name: "Iteration", metadata: {"box" => true}))
    ParentStepDetails.add_member(:iterator_value, Shapes::ShapeRef.new(shape: String, location_name: "IteratorValue"))
    ParentStepDetails.struct_class = Types::ParentStepDetails

    Patch.add_member(:id, Shapes::ShapeRef.new(shape: PatchId, location_name: "Id"))
    Patch.add_member(:release_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ReleaseDate"))
    Patch.add_member(:title, Shapes::ShapeRef.new(shape: PatchTitle, location_name: "Title"))
    Patch.add_member(:description, Shapes::ShapeRef.new(shape: PatchDescription, location_name: "Description"))
    Patch.add_member(:content_url, Shapes::ShapeRef.new(shape: PatchContentUrl, location_name: "ContentUrl"))
    Patch.add_member(:vendor, Shapes::ShapeRef.new(shape: PatchVendor, location_name: "Vendor"))
    Patch.add_member(:product_family, Shapes::ShapeRef.new(shape: PatchProductFamily, location_name: "ProductFamily"))
    Patch.add_member(:product, Shapes::ShapeRef.new(shape: PatchProduct, location_name: "Product"))
    Patch.add_member(:classification, Shapes::ShapeRef.new(shape: PatchClassification, location_name: "Classification"))
    Patch.add_member(:msrc_severity, Shapes::ShapeRef.new(shape: PatchMsrcSeverity, location_name: "MsrcSeverity"))
    Patch.add_member(:kb_number, Shapes::ShapeRef.new(shape: PatchKbNumber, location_name: "KbNumber"))
    Patch.add_member(:msrc_number, Shapes::ShapeRef.new(shape: PatchMsrcNumber, location_name: "MsrcNumber"))
    Patch.add_member(:language, Shapes::ShapeRef.new(shape: PatchLanguage, location_name: "Language"))
    Patch.add_member(:advisory_ids, Shapes::ShapeRef.new(shape: PatchAdvisoryIdList, location_name: "AdvisoryIds"))
    Patch.add_member(:bugzilla_ids, Shapes::ShapeRef.new(shape: PatchBugzillaIdList, location_name: "BugzillaIds"))
    Patch.add_member(:cve_ids, Shapes::ShapeRef.new(shape: PatchCVEIdList, location_name: "CVEIds"))
    Patch.add_member(:name, Shapes::ShapeRef.new(shape: PatchName, location_name: "Name"))
    Patch.add_member(:epoch, Shapes::ShapeRef.new(shape: PatchEpoch, location_name: "Epoch"))
    Patch.add_member(:version, Shapes::ShapeRef.new(shape: PatchVersion, location_name: "Version"))
    Patch.add_member(:release, Shapes::ShapeRef.new(shape: PatchRelease, location_name: "Release"))
    Patch.add_member(:arch, Shapes::ShapeRef.new(shape: PatchArch, location_name: "Arch"))
    Patch.add_member(:severity, Shapes::ShapeRef.new(shape: PatchSeverity, location_name: "Severity"))
    Patch.add_member(:repository, Shapes::ShapeRef.new(shape: PatchRepository, location_name: "Repository"))
    Patch.struct_class = Types::Patch

    PatchAdvisoryIdList.member = Shapes::ShapeRef.new(shape: PatchAdvisoryId)

    PatchBaselineIdentity.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    PatchBaselineIdentity.add_member(:baseline_name, Shapes::ShapeRef.new(shape: BaselineName, location_name: "BaselineName"))
    PatchBaselineIdentity.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    PatchBaselineIdentity.add_member(:baseline_description, Shapes::ShapeRef.new(shape: BaselineDescription, location_name: "BaselineDescription"))
    PatchBaselineIdentity.add_member(:default_baseline, Shapes::ShapeRef.new(shape: DefaultBaseline, location_name: "DefaultBaseline"))
    PatchBaselineIdentity.struct_class = Types::PatchBaselineIdentity

    PatchBaselineIdentityList.member = Shapes::ShapeRef.new(shape: PatchBaselineIdentity)

    PatchBugzillaIdList.member = Shapes::ShapeRef.new(shape: PatchBugzillaId)

    PatchCVEIdList.member = Shapes::ShapeRef.new(shape: PatchCVEId)

    PatchComplianceData.add_member(:title, Shapes::ShapeRef.new(shape: PatchTitle, required: true, location_name: "Title"))
    PatchComplianceData.add_member(:kb_id, Shapes::ShapeRef.new(shape: PatchKbNumber, required: true, location_name: "KBId"))
    PatchComplianceData.add_member(:classification, Shapes::ShapeRef.new(shape: PatchClassification, required: true, location_name: "Classification"))
    PatchComplianceData.add_member(:severity, Shapes::ShapeRef.new(shape: PatchSeverity, required: true, location_name: "Severity"))
    PatchComplianceData.add_member(:state, Shapes::ShapeRef.new(shape: PatchComplianceDataState, required: true, location_name: "State"))
    PatchComplianceData.add_member(:installed_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "InstalledTime"))
    PatchComplianceData.add_member(:cve_ids, Shapes::ShapeRef.new(shape: PatchCVEIds, location_name: "CVEIds"))
    PatchComplianceData.struct_class = Types::PatchComplianceData

    PatchComplianceDataList.member = Shapes::ShapeRef.new(shape: PatchComplianceData)

    PatchFilter.add_member(:key, Shapes::ShapeRef.new(shape: PatchFilterKey, required: true, location_name: "Key"))
    PatchFilter.add_member(:values, Shapes::ShapeRef.new(shape: PatchFilterValueList, required: true, location_name: "Values"))
    PatchFilter.struct_class = Types::PatchFilter

    PatchFilterGroup.add_member(:patch_filters, Shapes::ShapeRef.new(shape: PatchFilterList, required: true, location_name: "PatchFilters"))
    PatchFilterGroup.struct_class = Types::PatchFilterGroup

    PatchFilterList.member = Shapes::ShapeRef.new(shape: PatchFilter)

    PatchFilterValueList.member = Shapes::ShapeRef.new(shape: PatchFilterValue)

    PatchGroupList.member = Shapes::ShapeRef.new(shape: PatchGroup)

    PatchGroupPatchBaselineMapping.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, location_name: "PatchGroup"))
    PatchGroupPatchBaselineMapping.add_member(:baseline_identity, Shapes::ShapeRef.new(shape: PatchBaselineIdentity, location_name: "BaselineIdentity"))
    PatchGroupPatchBaselineMapping.struct_class = Types::PatchGroupPatchBaselineMapping

    PatchGroupPatchBaselineMappingList.member = Shapes::ShapeRef.new(shape: PatchGroupPatchBaselineMapping)

    PatchIdList.member = Shapes::ShapeRef.new(shape: PatchId)

    PatchList.member = Shapes::ShapeRef.new(shape: Patch)

    PatchOrchestratorFilter.add_member(:key, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterKey, location_name: "Key"))
    PatchOrchestratorFilter.add_member(:values, Shapes::ShapeRef.new(shape: PatchOrchestratorFilterValues, location_name: "Values"))
    PatchOrchestratorFilter.struct_class = Types::PatchOrchestratorFilter

    PatchOrchestratorFilterList.member = Shapes::ShapeRef.new(shape: PatchOrchestratorFilter)

    PatchOrchestratorFilterValues.member = Shapes::ShapeRef.new(shape: PatchOrchestratorFilterValue)

    PatchPropertiesList.member = Shapes::ShapeRef.new(shape: PatchPropertyEntry)

    PatchPropertyEntry.key = Shapes::ShapeRef.new(shape: AttributeName)
    PatchPropertyEntry.value = Shapes::ShapeRef.new(shape: AttributeValue)

    PatchRule.add_member(:patch_filter_group, Shapes::ShapeRef.new(shape: PatchFilterGroup, required: true, location_name: "PatchFilterGroup"))
    PatchRule.add_member(:compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ComplianceLevel"))
    PatchRule.add_member(:approve_after_days, Shapes::ShapeRef.new(shape: ApproveAfterDays, location_name: "ApproveAfterDays", metadata: {"box" => true}))
    PatchRule.add_member(:approve_until_date, Shapes::ShapeRef.new(shape: PatchStringDateTime, location_name: "ApproveUntilDate", metadata: {"box" => true}))
    PatchRule.add_member(:enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableNonSecurity", metadata: {"box" => true}))
    PatchRule.struct_class = Types::PatchRule

    PatchRuleGroup.add_member(:patch_rules, Shapes::ShapeRef.new(shape: PatchRuleList, required: true, location_name: "PatchRules"))
    PatchRuleGroup.struct_class = Types::PatchRuleGroup

    PatchRuleList.member = Shapes::ShapeRef.new(shape: PatchRule)

    PatchSource.add_member(:name, Shapes::ShapeRef.new(shape: PatchSourceName, required: true, location_name: "Name"))
    PatchSource.add_member(:products, Shapes::ShapeRef.new(shape: PatchSourceProductList, required: true, location_name: "Products"))
    PatchSource.add_member(:configuration, Shapes::ShapeRef.new(shape: PatchSourceConfiguration, required: true, location_name: "Configuration"))
    PatchSource.struct_class = Types::PatchSource

    PatchSourceList.member = Shapes::ShapeRef.new(shape: PatchSource)

    PatchSourceProductList.member = Shapes::ShapeRef.new(shape: PatchSourceProduct)

    PatchStatus.add_member(:deployment_status, Shapes::ShapeRef.new(shape: PatchDeploymentStatus, location_name: "DeploymentStatus"))
    PatchStatus.add_member(:compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ComplianceLevel"))
    PatchStatus.add_member(:approval_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ApprovalDate"))
    PatchStatus.struct_class = Types::PatchStatus

    PlatformTypeList.member = Shapes::ShapeRef.new(shape: PlatformType)

    PoliciesLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    PoliciesLimitExceededException.struct_class = Types::PoliciesLimitExceededException

    ProgressCounters.add_member(:total_steps, Shapes::ShapeRef.new(shape: Integer, location_name: "TotalSteps"))
    ProgressCounters.add_member(:success_steps, Shapes::ShapeRef.new(shape: Integer, location_name: "SuccessSteps"))
    ProgressCounters.add_member(:failed_steps, Shapes::ShapeRef.new(shape: Integer, location_name: "FailedSteps"))
    ProgressCounters.add_member(:cancelled_steps, Shapes::ShapeRef.new(shape: Integer, location_name: "CancelledSteps"))
    ProgressCounters.add_member(:timed_out_steps, Shapes::ShapeRef.new(shape: Integer, location_name: "TimedOutSteps"))
    ProgressCounters.struct_class = Types::ProgressCounters

    PutComplianceItemsRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ComplianceResourceId, required: true, location_name: "ResourceId"))
    PutComplianceItemsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ComplianceResourceType, required: true, location_name: "ResourceType"))
    PutComplianceItemsRequest.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceTypeName, required: true, location_name: "ComplianceType"))
    PutComplianceItemsRequest.add_member(:execution_summary, Shapes::ShapeRef.new(shape: ComplianceExecutionSummary, required: true, location_name: "ExecutionSummary"))
    PutComplianceItemsRequest.add_member(:items, Shapes::ShapeRef.new(shape: ComplianceItemEntryList, required: true, location_name: "Items"))
    PutComplianceItemsRequest.add_member(:item_content_hash, Shapes::ShapeRef.new(shape: ComplianceItemContentHash, location_name: "ItemContentHash"))
    PutComplianceItemsRequest.add_member(:upload_type, Shapes::ShapeRef.new(shape: ComplianceUploadType, location_name: "UploadType", metadata: {"box" => true}))
    PutComplianceItemsRequest.struct_class = Types::PutComplianceItemsRequest

    PutComplianceItemsResult.struct_class = Types::PutComplianceItemsResult

    PutInventoryRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    PutInventoryRequest.add_member(:items, Shapes::ShapeRef.new(shape: InventoryItemList, required: true, location_name: "Items"))
    PutInventoryRequest.struct_class = Types::PutInventoryRequest

    PutInventoryResult.add_member(:message, Shapes::ShapeRef.new(shape: PutInventoryMessage, location_name: "Message"))
    PutInventoryResult.struct_class = Types::PutInventoryResult

    PutParameterRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    PutParameterRequest.add_member(:description, Shapes::ShapeRef.new(shape: ParameterDescription, location_name: "Description"))
    PutParameterRequest.add_member(:value, Shapes::ShapeRef.new(shape: PSParameterValue, required: true, location_name: "Value"))
    PutParameterRequest.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, location_name: "Type"))
    PutParameterRequest.add_member(:key_id, Shapes::ShapeRef.new(shape: ParameterKeyId, location_name: "KeyId"))
    PutParameterRequest.add_member(:overwrite, Shapes::ShapeRef.new(shape: Boolean, location_name: "Overwrite", metadata: {"box" => true}))
    PutParameterRequest.add_member(:allowed_pattern, Shapes::ShapeRef.new(shape: AllowedPattern, location_name: "AllowedPattern"))
    PutParameterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    PutParameterRequest.add_member(:tier, Shapes::ShapeRef.new(shape: ParameterTier, location_name: "Tier"))
    PutParameterRequest.add_member(:policies, Shapes::ShapeRef.new(shape: ParameterPolicies, location_name: "Policies"))
    PutParameterRequest.add_member(:data_type, Shapes::ShapeRef.new(shape: ParameterDataType, location_name: "DataType"))
    PutParameterRequest.struct_class = Types::PutParameterRequest

    PutParameterResult.add_member(:version, Shapes::ShapeRef.new(shape: PSParameterVersion, location_name: "Version"))
    PutParameterResult.add_member(:tier, Shapes::ShapeRef.new(shape: ParameterTier, location_name: "Tier"))
    PutParameterResult.struct_class = Types::PutParameterResult

    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArnString, required: true, location_name: "ResourceArn"))
    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutResourcePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    PutResourcePolicyRequest.add_member(:policy_hash, Shapes::ShapeRef.new(shape: PolicyHash, location_name: "PolicyHash"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    PutResourcePolicyResponse.add_member(:policy_hash, Shapes::ShapeRef.new(shape: PolicyHash, location_name: "PolicyHash"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    Regions.member = Shapes::ShapeRef.new(shape: Region)

    RegisterDefaultPatchBaselineRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    RegisterDefaultPatchBaselineRequest.struct_class = Types::RegisterDefaultPatchBaselineRequest

    RegisterDefaultPatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    RegisterDefaultPatchBaselineResult.struct_class = Types::RegisterDefaultPatchBaselineResult

    RegisterPatchBaselineForPatchGroupRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    RegisterPatchBaselineForPatchGroupRequest.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, required: true, location_name: "PatchGroup"))
    RegisterPatchBaselineForPatchGroupRequest.struct_class = Types::RegisterPatchBaselineForPatchGroupRequest

    RegisterPatchBaselineForPatchGroupResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    RegisterPatchBaselineForPatchGroupResult.add_member(:patch_group, Shapes::ShapeRef.new(shape: PatchGroup, location_name: "PatchGroup"))
    RegisterPatchBaselineForPatchGroupResult.struct_class = Types::RegisterPatchBaselineForPatchGroupResult

    RegisterTargetWithMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: MaintenanceWindowResourceType, required: true, location_name: "ResourceType"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, required: true, location_name: "Targets"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    RegisterTargetWithMaintenanceWindowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    RegisterTargetWithMaintenanceWindowRequest.struct_class = Types::RegisterTargetWithMaintenanceWindowRequest

    RegisterTargetWithMaintenanceWindowResult.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, location_name: "WindowTargetId"))
    RegisterTargetWithMaintenanceWindowResult.struct_class = Types::RegisterTargetWithMaintenanceWindowResult

    RegisterTaskWithMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets", metadata: {"box" => true}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, required: true, location_name: "TaskArn"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_type, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskType, required: true, location_name: "TaskType"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:task_invocation_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskInvocationParameters, location_name: "TaskInvocationParameters"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority", metadata: {"box" => true}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency", metadata: {"box" => true}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors", metadata: {"box" => true}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:cutoff_behavior, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskCutoffBehavior, location_name: "CutoffBehavior", metadata: {"box" => true}))
    RegisterTaskWithMaintenanceWindowRequest.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    RegisterTaskWithMaintenanceWindowRequest.struct_class = Types::RegisterTaskWithMaintenanceWindowRequest

    RegisterTaskWithMaintenanceWindowResult.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    RegisterTaskWithMaintenanceWindowResult.struct_class = Types::RegisterTaskWithMaintenanceWindowResult

    RegistrationMetadataItem.add_member(:key, Shapes::ShapeRef.new(shape: RegistrationMetadataKey, required: true, location_name: "Key"))
    RegistrationMetadataItem.add_member(:value, Shapes::ShapeRef.new(shape: RegistrationMetadataValue, required: true, location_name: "Value"))
    RegistrationMetadataItem.struct_class = Types::RegistrationMetadataItem

    RegistrationMetadataList.member = Shapes::ShapeRef.new(shape: RegistrationMetadataItem)

    RelatedOpsItem.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OpsItemId"))
    RelatedOpsItem.struct_class = Types::RelatedOpsItem

    RelatedOpsItems.member = Shapes::ShapeRef.new(shape: RelatedOpsItem)

    RemoveTagsFromResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
    RemoveTagsFromResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    RemoveTagsFromResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceRequest.struct_class = Types::RemoveTagsFromResourceRequest

    RemoveTagsFromResourceResult.struct_class = Types::RemoveTagsFromResourceResult

    ResetServiceSettingRequest.add_member(:setting_id, Shapes::ShapeRef.new(shape: ServiceSettingId, required: true, location_name: "SettingId"))
    ResetServiceSettingRequest.struct_class = Types::ResetServiceSettingRequest

    ResetServiceSettingResult.add_member(:service_setting, Shapes::ShapeRef.new(shape: ServiceSetting, location_name: "ServiceSetting"))
    ResetServiceSettingResult.struct_class = Types::ResetServiceSettingResult

    ResolvedTargets.add_member(:parameter_values, Shapes::ShapeRef.new(shape: TargetParameterList, location_name: "ParameterValues"))
    ResolvedTargets.add_member(:truncated, Shapes::ShapeRef.new(shape: Boolean, location_name: "Truncated"))
    ResolvedTargets.struct_class = Types::ResolvedTargets

    ResourceComplianceSummaryItem.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceTypeName, location_name: "ComplianceType"))
    ResourceComplianceSummaryItem.add_member(:resource_type, Shapes::ShapeRef.new(shape: ComplianceResourceType, location_name: "ResourceType"))
    ResourceComplianceSummaryItem.add_member(:resource_id, Shapes::ShapeRef.new(shape: ComplianceResourceId, location_name: "ResourceId"))
    ResourceComplianceSummaryItem.add_member(:status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "Status"))
    ResourceComplianceSummaryItem.add_member(:overall_severity, Shapes::ShapeRef.new(shape: ComplianceSeverity, location_name: "OverallSeverity"))
    ResourceComplianceSummaryItem.add_member(:execution_summary, Shapes::ShapeRef.new(shape: ComplianceExecutionSummary, location_name: "ExecutionSummary"))
    ResourceComplianceSummaryItem.add_member(:compliant_summary, Shapes::ShapeRef.new(shape: CompliantSummary, location_name: "CompliantSummary"))
    ResourceComplianceSummaryItem.add_member(:non_compliant_summary, Shapes::ShapeRef.new(shape: NonCompliantSummary, location_name: "NonCompliantSummary"))
    ResourceComplianceSummaryItem.struct_class = Types::ResourceComplianceSummaryItem

    ResourceComplianceSummaryItemList.member = Shapes::ShapeRef.new(shape: ResourceComplianceSummaryItem)

    ResourceDataSyncAlreadyExistsException.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, location_name: "SyncName"))
    ResourceDataSyncAlreadyExistsException.struct_class = Types::ResourceDataSyncAlreadyExistsException

    ResourceDataSyncAwsOrganizationsSource.add_member(:organization_source_type, Shapes::ShapeRef.new(shape: ResourceDataSyncOrganizationSourceType, required: true, location_name: "OrganizationSourceType"))
    ResourceDataSyncAwsOrganizationsSource.add_member(:organizational_units, Shapes::ShapeRef.new(shape: ResourceDataSyncOrganizationalUnitList, location_name: "OrganizationalUnits"))
    ResourceDataSyncAwsOrganizationsSource.struct_class = Types::ResourceDataSyncAwsOrganizationsSource

    ResourceDataSyncConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceDataSyncConflictException.struct_class = Types::ResourceDataSyncConflictException

    ResourceDataSyncCountExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceDataSyncCountExceededException.struct_class = Types::ResourceDataSyncCountExceededException

    ResourceDataSyncDestinationDataSharing.add_member(:destination_data_sharing_type, Shapes::ShapeRef.new(shape: ResourceDataSyncDestinationDataSharingType, location_name: "DestinationDataSharingType"))
    ResourceDataSyncDestinationDataSharing.struct_class = Types::ResourceDataSyncDestinationDataSharing

    ResourceDataSyncInvalidConfigurationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceDataSyncInvalidConfigurationException.struct_class = Types::ResourceDataSyncInvalidConfigurationException

    ResourceDataSyncItem.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, location_name: "SyncName"))
    ResourceDataSyncItem.add_member(:sync_type, Shapes::ShapeRef.new(shape: ResourceDataSyncType, location_name: "SyncType"))
    ResourceDataSyncItem.add_member(:sync_source, Shapes::ShapeRef.new(shape: ResourceDataSyncSourceWithState, location_name: "SyncSource"))
    ResourceDataSyncItem.add_member(:s3_destination, Shapes::ShapeRef.new(shape: ResourceDataSyncS3Destination, location_name: "S3Destination"))
    ResourceDataSyncItem.add_member(:last_sync_time, Shapes::ShapeRef.new(shape: LastResourceDataSyncTime, location_name: "LastSyncTime"))
    ResourceDataSyncItem.add_member(:last_successful_sync_time, Shapes::ShapeRef.new(shape: LastSuccessfulResourceDataSyncTime, location_name: "LastSuccessfulSyncTime"))
    ResourceDataSyncItem.add_member(:sync_last_modified_time, Shapes::ShapeRef.new(shape: ResourceDataSyncLastModifiedTime, location_name: "SyncLastModifiedTime"))
    ResourceDataSyncItem.add_member(:last_status, Shapes::ShapeRef.new(shape: LastResourceDataSyncStatus, location_name: "LastStatus"))
    ResourceDataSyncItem.add_member(:sync_created_time, Shapes::ShapeRef.new(shape: ResourceDataSyncCreatedTime, location_name: "SyncCreatedTime"))
    ResourceDataSyncItem.add_member(:last_sync_status_message, Shapes::ShapeRef.new(shape: LastResourceDataSyncMessage, location_name: "LastSyncStatusMessage"))
    ResourceDataSyncItem.struct_class = Types::ResourceDataSyncItem

    ResourceDataSyncItemList.member = Shapes::ShapeRef.new(shape: ResourceDataSyncItem)

    ResourceDataSyncNotFoundException.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, location_name: "SyncName"))
    ResourceDataSyncNotFoundException.add_member(:sync_type, Shapes::ShapeRef.new(shape: ResourceDataSyncType, location_name: "SyncType"))
    ResourceDataSyncNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceDataSyncNotFoundException.struct_class = Types::ResourceDataSyncNotFoundException

    ResourceDataSyncOrganizationalUnit.add_member(:organizational_unit_id, Shapes::ShapeRef.new(shape: ResourceDataSyncOrganizationalUnitId, location_name: "OrganizationalUnitId"))
    ResourceDataSyncOrganizationalUnit.struct_class = Types::ResourceDataSyncOrganizationalUnit

    ResourceDataSyncOrganizationalUnitList.member = Shapes::ShapeRef.new(shape: ResourceDataSyncOrganizationalUnit)

    ResourceDataSyncS3Destination.add_member(:bucket_name, Shapes::ShapeRef.new(shape: ResourceDataSyncS3BucketName, required: true, location_name: "BucketName"))
    ResourceDataSyncS3Destination.add_member(:prefix, Shapes::ShapeRef.new(shape: ResourceDataSyncS3Prefix, location_name: "Prefix"))
    ResourceDataSyncS3Destination.add_member(:sync_format, Shapes::ShapeRef.new(shape: ResourceDataSyncS3Format, required: true, location_name: "SyncFormat"))
    ResourceDataSyncS3Destination.add_member(:region, Shapes::ShapeRef.new(shape: ResourceDataSyncS3Region, required: true, location_name: "Region"))
    ResourceDataSyncS3Destination.add_member(:awskms_key_arn, Shapes::ShapeRef.new(shape: ResourceDataSyncAWSKMSKeyARN, location_name: "AWSKMSKeyARN"))
    ResourceDataSyncS3Destination.add_member(:destination_data_sharing, Shapes::ShapeRef.new(shape: ResourceDataSyncDestinationDataSharing, location_name: "DestinationDataSharing"))
    ResourceDataSyncS3Destination.struct_class = Types::ResourceDataSyncS3Destination

    ResourceDataSyncSource.add_member(:source_type, Shapes::ShapeRef.new(shape: ResourceDataSyncSourceType, required: true, location_name: "SourceType"))
    ResourceDataSyncSource.add_member(:aws_organizations_source, Shapes::ShapeRef.new(shape: ResourceDataSyncAwsOrganizationsSource, location_name: "AwsOrganizationsSource"))
    ResourceDataSyncSource.add_member(:source_regions, Shapes::ShapeRef.new(shape: ResourceDataSyncSourceRegionList, required: true, location_name: "SourceRegions"))
    ResourceDataSyncSource.add_member(:include_future_regions, Shapes::ShapeRef.new(shape: ResourceDataSyncIncludeFutureRegions, location_name: "IncludeFutureRegions"))
    ResourceDataSyncSource.add_member(:enable_all_ops_data_sources, Shapes::ShapeRef.new(shape: ResourceDataSyncEnableAllOpsDataSources, location_name: "EnableAllOpsDataSources"))
    ResourceDataSyncSource.struct_class = Types::ResourceDataSyncSource

    ResourceDataSyncSourceRegionList.member = Shapes::ShapeRef.new(shape: ResourceDataSyncSourceRegion)

    ResourceDataSyncSourceWithState.add_member(:source_type, Shapes::ShapeRef.new(shape: ResourceDataSyncSourceType, location_name: "SourceType"))
    ResourceDataSyncSourceWithState.add_member(:aws_organizations_source, Shapes::ShapeRef.new(shape: ResourceDataSyncAwsOrganizationsSource, location_name: "AwsOrganizationsSource"))
    ResourceDataSyncSourceWithState.add_member(:source_regions, Shapes::ShapeRef.new(shape: ResourceDataSyncSourceRegionList, location_name: "SourceRegions"))
    ResourceDataSyncSourceWithState.add_member(:include_future_regions, Shapes::ShapeRef.new(shape: ResourceDataSyncIncludeFutureRegions, location_name: "IncludeFutureRegions"))
    ResourceDataSyncSourceWithState.add_member(:state, Shapes::ShapeRef.new(shape: ResourceDataSyncState, location_name: "State"))
    ResourceDataSyncSourceWithState.add_member(:enable_all_ops_data_sources, Shapes::ShapeRef.new(shape: ResourceDataSyncEnableAllOpsDataSources, location_name: "EnableAllOpsDataSources"))
    ResourceDataSyncSourceWithState.struct_class = Types::ResourceDataSyncSourceWithState

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePolicyConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourcePolicyConflictException.struct_class = Types::ResourcePolicyConflictException

    ResourcePolicyInvalidParameterException.add_member(:parameter_names, Shapes::ShapeRef.new(shape: ResourcePolicyParameterNamesList, location_name: "ParameterNames"))
    ResourcePolicyInvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourcePolicyInvalidParameterException.struct_class = Types::ResourcePolicyInvalidParameterException

    ResourcePolicyLimitExceededException.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, location_name: "Limit"))
    ResourcePolicyLimitExceededException.add_member(:limit_type, Shapes::ShapeRef.new(shape: String, location_name: "LimitType"))
    ResourcePolicyLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourcePolicyLimitExceededException.struct_class = Types::ResourcePolicyLimitExceededException

    ResourcePolicyNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourcePolicyNotFoundException.struct_class = Types::ResourcePolicyNotFoundException

    ResourcePolicyParameterNamesList.member = Shapes::ShapeRef.new(shape: String)

    ResultAttribute.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, required: true, location_name: "TypeName"))
    ResultAttribute.struct_class = Types::ResultAttribute

    ResultAttributeList.member = Shapes::ShapeRef.new(shape: ResultAttribute)

    ResumeSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    ResumeSessionRequest.struct_class = Types::ResumeSessionRequest

    ResumeSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    ResumeSessionResponse.add_member(:token_value, Shapes::ShapeRef.new(shape: TokenValue, location_name: "TokenValue"))
    ResumeSessionResponse.add_member(:stream_url, Shapes::ShapeRef.new(shape: StreamUrl, location_name: "StreamUrl"))
    ResumeSessionResponse.struct_class = Types::ResumeSessionResponse

    ReviewInformation.add_member(:reviewed_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ReviewedTime"))
    ReviewInformation.add_member(:status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "Status"))
    ReviewInformation.add_member(:reviewer, Shapes::ShapeRef.new(shape: Reviewer, location_name: "Reviewer"))
    ReviewInformation.struct_class = Types::ReviewInformation

    ReviewInformationList.member = Shapes::ShapeRef.new(shape: ReviewInformation)

    Runbook.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "DocumentName"))
    Runbook.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion", metadata: {"box" => true}))
    Runbook.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    Runbook.add_member(:target_parameter_name, Shapes::ShapeRef.new(shape: AutomationParameterKey, location_name: "TargetParameterName"))
    Runbook.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    Runbook.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps"))
    Runbook.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    Runbook.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    Runbook.add_member(:target_locations, Shapes::ShapeRef.new(shape: TargetLocations, location_name: "TargetLocations", metadata: {"box" => true}))
    Runbook.struct_class = Types::Runbook

    Runbooks.member = Shapes::ShapeRef.new(shape: Runbook)

    S3OutputLocation.add_member(:output_s3_region, Shapes::ShapeRef.new(shape: S3Region, location_name: "OutputS3Region"))
    S3OutputLocation.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    S3OutputLocation.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    S3OutputLocation.struct_class = Types::S3OutputLocation

    S3OutputUrl.add_member(:output_url, Shapes::ShapeRef.new(shape: Url, location_name: "OutputUrl"))
    S3OutputUrl.struct_class = Types::S3OutputUrl

    ScheduledWindowExecution.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    ScheduledWindowExecution.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    ScheduledWindowExecution.add_member(:execution_time, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "ExecutionTime"))
    ScheduledWindowExecution.struct_class = Types::ScheduledWindowExecution

    ScheduledWindowExecutionList.member = Shapes::ShapeRef.new(shape: ScheduledWindowExecution)

    SendAutomationSignalRequest.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, required: true, location_name: "AutomationExecutionId"))
    SendAutomationSignalRequest.add_member(:signal_type, Shapes::ShapeRef.new(shape: SignalType, required: true, location_name: "SignalType"))
    SendAutomationSignalRequest.add_member(:payload, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Payload"))
    SendAutomationSignalRequest.struct_class = Types::SendAutomationSignalRequest

    SendAutomationSignalResult.struct_class = Types::SendAutomationSignalResult

    SendCommandRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "InstanceIds"))
    SendCommandRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    SendCommandRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "DocumentName"))
    SendCommandRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    SendCommandRequest.add_member(:document_hash, Shapes::ShapeRef.new(shape: DocumentHash, location_name: "DocumentHash"))
    SendCommandRequest.add_member(:document_hash_type, Shapes::ShapeRef.new(shape: DocumentHashType, location_name: "DocumentHashType"))
    SendCommandRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: TimeoutSeconds, location_name: "TimeoutSeconds", metadata: {"box" => true}))
    SendCommandRequest.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
    SendCommandRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    SendCommandRequest.add_member(:output_s3_region, Shapes::ShapeRef.new(shape: S3Region, location_name: "OutputS3Region"))
    SendCommandRequest.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
    SendCommandRequest.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
    SendCommandRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    SendCommandRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    SendCommandRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    SendCommandRequest.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
    SendCommandRequest.add_member(:cloud_watch_output_config, Shapes::ShapeRef.new(shape: CloudWatchOutputConfig, location_name: "CloudWatchOutputConfig"))
    SendCommandRequest.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    SendCommandRequest.struct_class = Types::SendCommandRequest

    SendCommandResult.add_member(:command, Shapes::ShapeRef.new(shape: Command, location_name: "Command"))
    SendCommandResult.struct_class = Types::SendCommandResult

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceSetting.add_member(:setting_id, Shapes::ShapeRef.new(shape: ServiceSettingId, location_name: "SettingId"))
    ServiceSetting.add_member(:setting_value, Shapes::ShapeRef.new(shape: ServiceSettingValue, location_name: "SettingValue"))
    ServiceSetting.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    ServiceSetting.add_member(:last_modified_user, Shapes::ShapeRef.new(shape: String, location_name: "LastModifiedUser"))
    ServiceSetting.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "ARN"))
    ServiceSetting.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ServiceSetting.struct_class = Types::ServiceSetting

    ServiceSettingNotFound.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceSettingNotFound.struct_class = Types::ServiceSettingNotFound

    Session.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    Session.add_member(:target, Shapes::ShapeRef.new(shape: SessionTarget, location_name: "Target"))
    Session.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "Status"))
    Session.add_member(:start_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartDate"))
    Session.add_member(:end_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndDate"))
    Session.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
    Session.add_member(:owner, Shapes::ShapeRef.new(shape: SessionOwner, location_name: "Owner"))
    Session.add_member(:reason, Shapes::ShapeRef.new(shape: SessionReason, location_name: "Reason"))
    Session.add_member(:details, Shapes::ShapeRef.new(shape: SessionDetails, location_name: "Details"))
    Session.add_member(:output_url, Shapes::ShapeRef.new(shape: SessionManagerOutputUrl, location_name: "OutputUrl"))
    Session.add_member(:max_session_duration, Shapes::ShapeRef.new(shape: MaxSessionDuration, location_name: "MaxSessionDuration"))
    Session.add_member(:access_type, Shapes::ShapeRef.new(shape: AccessType, location_name: "AccessType"))
    Session.struct_class = Types::Session

    SessionFilter.add_member(:key, Shapes::ShapeRef.new(shape: SessionFilterKey, required: true, location_name: "key"))
    SessionFilter.add_member(:value, Shapes::ShapeRef.new(shape: SessionFilterValue, required: true, location_name: "value"))
    SessionFilter.struct_class = Types::SessionFilter

    SessionFilterList.member = Shapes::ShapeRef.new(shape: SessionFilter)

    SessionList.member = Shapes::ShapeRef.new(shape: Session)

    SessionManagerOutputUrl.add_member(:s3_output_url, Shapes::ShapeRef.new(shape: SessionManagerS3OutputUrl, location_name: "S3OutputUrl"))
    SessionManagerOutputUrl.add_member(:cloud_watch_output_url, Shapes::ShapeRef.new(shape: SessionManagerCloudWatchOutputUrl, location_name: "CloudWatchOutputUrl"))
    SessionManagerOutputUrl.struct_class = Types::SessionManagerOutputUrl

    SessionManagerParameterValueList.member = Shapes::ShapeRef.new(shape: SessionManagerParameterValue)

    SessionManagerParameters.key = Shapes::ShapeRef.new(shape: SessionManagerParameterName)
    SessionManagerParameters.value = Shapes::ShapeRef.new(shape: SessionManagerParameterValueList)

    SeveritySummary.add_member(:critical_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "CriticalCount"))
    SeveritySummary.add_member(:high_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "HighCount"))
    SeveritySummary.add_member(:medium_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "MediumCount"))
    SeveritySummary.add_member(:low_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "LowCount"))
    SeveritySummary.add_member(:informational_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "InformationalCount"))
    SeveritySummary.add_member(:unspecified_count, Shapes::ShapeRef.new(shape: ComplianceSummaryCount, location_name: "UnspecifiedCount"))
    SeveritySummary.struct_class = Types::SeveritySummary

    StartAccessRequestRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String1to256, required: true, location_name: "Reason"))
    StartAccessRequestRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, required: true, location_name: "Targets"))
    StartAccessRequestRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartAccessRequestRequest.struct_class = Types::StartAccessRequestRequest

    StartAccessRequestResponse.add_member(:access_request_id, Shapes::ShapeRef.new(shape: AccessRequestId, location_name: "AccessRequestId"))
    StartAccessRequestResponse.struct_class = Types::StartAccessRequestResponse

    StartAssociationsOnceRequest.add_member(:association_ids, Shapes::ShapeRef.new(shape: AssociationIdList, required: true, location_name: "AssociationIds"))
    StartAssociationsOnceRequest.struct_class = Types::StartAssociationsOnceRequest

    StartAssociationsOnceResult.struct_class = Types::StartAssociationsOnceResult

    StartAutomationExecutionRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "DocumentName"))
    StartAutomationExecutionRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion", metadata: {"box" => true}))
    StartAutomationExecutionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    StartAutomationExecutionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken"))
    StartAutomationExecutionRequest.add_member(:mode, Shapes::ShapeRef.new(shape: ExecutionMode, location_name: "Mode"))
    StartAutomationExecutionRequest.add_member(:target_parameter_name, Shapes::ShapeRef.new(shape: AutomationParameterKey, location_name: "TargetParameterName"))
    StartAutomationExecutionRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    StartAutomationExecutionRequest.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps"))
    StartAutomationExecutionRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    StartAutomationExecutionRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    StartAutomationExecutionRequest.add_member(:target_locations, Shapes::ShapeRef.new(shape: TargetLocations, location_name: "TargetLocations", metadata: {"box" => true}))
    StartAutomationExecutionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartAutomationExecutionRequest.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    StartAutomationExecutionRequest.add_member(:target_locations_url, Shapes::ShapeRef.new(shape: TargetLocationsURL, location_name: "TargetLocationsURL"))
    StartAutomationExecutionRequest.struct_class = Types::StartAutomationExecutionRequest

    StartAutomationExecutionResult.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "AutomationExecutionId"))
    StartAutomationExecutionResult.struct_class = Types::StartAutomationExecutionResult

    StartChangeRequestExecutionRequest.add_member(:scheduled_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ScheduledTime"))
    StartChangeRequestExecutionRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "DocumentName"))
    StartChangeRequestExecutionRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion", metadata: {"box" => true}))
    StartChangeRequestExecutionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Parameters"))
    StartChangeRequestExecutionRequest.add_member(:change_request_name, Shapes::ShapeRef.new(shape: ChangeRequestName, location_name: "ChangeRequestName"))
    StartChangeRequestExecutionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken"))
    StartChangeRequestExecutionRequest.add_member(:auto_approve, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoApprove"))
    StartChangeRequestExecutionRequest.add_member(:runbooks, Shapes::ShapeRef.new(shape: Runbooks, required: true, location_name: "Runbooks"))
    StartChangeRequestExecutionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartChangeRequestExecutionRequest.add_member(:scheduled_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ScheduledEndTime"))
    StartChangeRequestExecutionRequest.add_member(:change_details, Shapes::ShapeRef.new(shape: ChangeDetailsValue, location_name: "ChangeDetails"))
    StartChangeRequestExecutionRequest.struct_class = Types::StartChangeRequestExecutionRequest

    StartChangeRequestExecutionResult.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, location_name: "AutomationExecutionId"))
    StartChangeRequestExecutionResult.struct_class = Types::StartChangeRequestExecutionResult

    StartExecutionPreviewRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "DocumentName"))
    StartExecutionPreviewRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    StartExecutionPreviewRequest.add_member(:execution_inputs, Shapes::ShapeRef.new(shape: ExecutionInputs, location_name: "ExecutionInputs"))
    StartExecutionPreviewRequest.struct_class = Types::StartExecutionPreviewRequest

    StartExecutionPreviewResponse.add_member(:execution_preview_id, Shapes::ShapeRef.new(shape: ExecutionPreviewId, location_name: "ExecutionPreviewId"))
    StartExecutionPreviewResponse.struct_class = Types::StartExecutionPreviewResponse

    StartSessionRequest.add_member(:target, Shapes::ShapeRef.new(shape: SessionTarget, required: true, location_name: "Target"))
    StartSessionRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "DocumentName"))
    StartSessionRequest.add_member(:reason, Shapes::ShapeRef.new(shape: SessionReason, location_name: "Reason"))
    StartSessionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: SessionManagerParameters, location_name: "Parameters"))
    StartSessionRequest.struct_class = Types::StartSessionRequest

    StartSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    StartSessionResponse.add_member(:token_value, Shapes::ShapeRef.new(shape: TokenValue, location_name: "TokenValue"))
    StartSessionResponse.add_member(:stream_url, Shapes::ShapeRef.new(shape: StreamUrl, location_name: "StreamUrl"))
    StartSessionResponse.struct_class = Types::StartSessionResponse

    StatusUnchanged.struct_class = Types::StatusUnchanged

    StepExecution.add_member(:step_name, Shapes::ShapeRef.new(shape: String, location_name: "StepName"))
    StepExecution.add_member(:action, Shapes::ShapeRef.new(shape: AutomationActionName, location_name: "Action"))
    StepExecution.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "TimeoutSeconds", metadata: {"box" => true}))
    StepExecution.add_member(:on_failure, Shapes::ShapeRef.new(shape: String, location_name: "OnFailure"))
    StepExecution.add_member(:max_attempts, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxAttempts", metadata: {"box" => true}))
    StepExecution.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionStartTime"))
    StepExecution.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExecutionEndTime"))
    StepExecution.add_member(:step_status, Shapes::ShapeRef.new(shape: AutomationExecutionStatus, location_name: "StepStatus"))
    StepExecution.add_member(:response_code, Shapes::ShapeRef.new(shape: String, location_name: "ResponseCode"))
    StepExecution.add_member(:inputs, Shapes::ShapeRef.new(shape: NormalStringMap, location_name: "Inputs"))
    StepExecution.add_member(:outputs, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "Outputs"))
    StepExecution.add_member(:response, Shapes::ShapeRef.new(shape: String, location_name: "Response"))
    StepExecution.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    StepExecution.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, location_name: "FailureDetails"))
    StepExecution.add_member(:step_execution_id, Shapes::ShapeRef.new(shape: String, location_name: "StepExecutionId"))
    StepExecution.add_member(:overridden_parameters, Shapes::ShapeRef.new(shape: AutomationParameterMap, location_name: "OverriddenParameters"))
    StepExecution.add_member(:is_end, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsEnd", metadata: {"box" => true}))
    StepExecution.add_member(:next_step, Shapes::ShapeRef.new(shape: String, location_name: "NextStep", metadata: {"box" => true}))
    StepExecution.add_member(:is_critical, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsCritical", metadata: {"box" => true}))
    StepExecution.add_member(:valid_next_steps, Shapes::ShapeRef.new(shape: ValidNextStepList, location_name: "ValidNextSteps"))
    StepExecution.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets", metadata: {"box" => true}))
    StepExecution.add_member(:target_location, Shapes::ShapeRef.new(shape: TargetLocation, location_name: "TargetLocation", metadata: {"box" => true}))
    StepExecution.add_member(:triggered_alarms, Shapes::ShapeRef.new(shape: AlarmStateInformationList, location_name: "TriggeredAlarms"))
    StepExecution.add_member(:parent_step_details, Shapes::ShapeRef.new(shape: ParentStepDetails, location_name: "ParentStepDetails"))
    StepExecution.struct_class = Types::StepExecution

    StepExecutionFilter.add_member(:key, Shapes::ShapeRef.new(shape: StepExecutionFilterKey, required: true, location_name: "Key"))
    StepExecutionFilter.add_member(:values, Shapes::ShapeRef.new(shape: StepExecutionFilterValueList, required: true, location_name: "Values"))
    StepExecutionFilter.struct_class = Types::StepExecutionFilter

    StepExecutionFilterList.member = Shapes::ShapeRef.new(shape: StepExecutionFilter)

    StepExecutionFilterValueList.member = Shapes::ShapeRef.new(shape: StepExecutionFilterValue)

    StepExecutionList.member = Shapes::ShapeRef.new(shape: StepExecution)

    StepPreviewMap.key = Shapes::ShapeRef.new(shape: ImpactType)
    StepPreviewMap.value = Shapes::ShapeRef.new(shape: Integer)

    StopAutomationExecutionRequest.add_member(:automation_execution_id, Shapes::ShapeRef.new(shape: AutomationExecutionId, required: true, location_name: "AutomationExecutionId"))
    StopAutomationExecutionRequest.add_member(:type, Shapes::ShapeRef.new(shape: StopType, location_name: "Type"))
    StopAutomationExecutionRequest.struct_class = Types::StopAutomationExecutionRequest

    StopAutomationExecutionResult.struct_class = Types::StopAutomationExecutionResult

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubTypeCountLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SubTypeCountLimitExceededException.struct_class = Types::SubTypeCountLimitExceededException

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    Target.add_member(:key, Shapes::ShapeRef.new(shape: TargetKey, location_name: "Key"))
    Target.add_member(:values, Shapes::ShapeRef.new(shape: TargetValues, location_name: "Values"))
    Target.struct_class = Types::Target

    TargetInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TargetInUseException.struct_class = Types::TargetInUseException

    TargetLocation.add_member(:accounts, Shapes::ShapeRef.new(shape: Accounts, location_name: "Accounts"))
    TargetLocation.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, location_name: "Regions"))
    TargetLocation.add_member(:target_location_max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "TargetLocationMaxConcurrency", metadata: {"box" => true}))
    TargetLocation.add_member(:target_location_max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "TargetLocationMaxErrors", metadata: {"box" => true}))
    TargetLocation.add_member(:execution_role_name, Shapes::ShapeRef.new(shape: ExecutionRoleName, location_name: "ExecutionRoleName", metadata: {"box" => true}))
    TargetLocation.add_member(:target_location_alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "TargetLocationAlarmConfiguration", metadata: {"box" => true}))
    TargetLocation.add_member(:include_child_organization_units, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeChildOrganizationUnits"))
    TargetLocation.add_member(:exclude_accounts, Shapes::ShapeRef.new(shape: ExcludeAccounts, location_name: "ExcludeAccounts"))
    TargetLocation.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    TargetLocation.add_member(:targets_max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "TargetsMaxConcurrency"))
    TargetLocation.add_member(:targets_max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "TargetsMaxErrors"))
    TargetLocation.struct_class = Types::TargetLocation

    TargetLocations.member = Shapes::ShapeRef.new(shape: TargetLocation)

    TargetMap.key = Shapes::ShapeRef.new(shape: TargetMapKey)
    TargetMap.value = Shapes::ShapeRef.new(shape: TargetMapValueList)

    TargetMapValueList.member = Shapes::ShapeRef.new(shape: TargetMapValue)

    TargetMaps.member = Shapes::ShapeRef.new(shape: TargetMap)

    TargetNotConnected.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TargetNotConnected.struct_class = Types::TargetNotConnected

    TargetParameterList.member = Shapes::ShapeRef.new(shape: ParameterValue)

    TargetPreview.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    TargetPreview.add_member(:target_type, Shapes::ShapeRef.new(shape: String, location_name: "TargetType"))
    TargetPreview.struct_class = Types::TargetPreview

    TargetPreviewList.member = Shapes::ShapeRef.new(shape: TargetPreview)

    TargetValues.member = Shapes::ShapeRef.new(shape: TargetValue)

    Targets.member = Shapes::ShapeRef.new(shape: Target)

    TerminateSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    TerminateSessionRequest.struct_class = Types::TerminateSessionRequest

    TerminateSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    TerminateSessionResponse.struct_class = Types::TerminateSessionResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsError.struct_class = Types::TooManyTagsError

    TooManyUpdates.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyUpdates.struct_class = Types::TooManyUpdates

    TotalSizeLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TotalSizeLimitExceededException.struct_class = Types::TotalSizeLimitExceededException

    UnlabelParameterVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: PSParameterName, required: true, location_name: "Name"))
    UnlabelParameterVersionRequest.add_member(:parameter_version, Shapes::ShapeRef.new(shape: PSParameterVersion, required: true, location_name: "ParameterVersion", metadata: {"box" => true}))
    UnlabelParameterVersionRequest.add_member(:labels, Shapes::ShapeRef.new(shape: ParameterLabelList, required: true, location_name: "Labels"))
    UnlabelParameterVersionRequest.struct_class = Types::UnlabelParameterVersionRequest

    UnlabelParameterVersionResult.add_member(:removed_labels, Shapes::ShapeRef.new(shape: ParameterLabelList, location_name: "RemovedLabels"))
    UnlabelParameterVersionResult.add_member(:invalid_labels, Shapes::ShapeRef.new(shape: ParameterLabelList, location_name: "InvalidLabels"))
    UnlabelParameterVersionResult.struct_class = Types::UnlabelParameterVersionResult

    UnsupportedCalendarException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedCalendarException.struct_class = Types::UnsupportedCalendarException

    UnsupportedFeatureRequiredException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedFeatureRequiredException.struct_class = Types::UnsupportedFeatureRequiredException

    UnsupportedInventoryItemContextException.add_member(:type_name, Shapes::ShapeRef.new(shape: InventoryItemTypeName, location_name: "TypeName"))
    UnsupportedInventoryItemContextException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedInventoryItemContextException.struct_class = Types::UnsupportedInventoryItemContextException

    UnsupportedInventorySchemaVersionException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedInventorySchemaVersionException.struct_class = Types::UnsupportedInventorySchemaVersionException

    UnsupportedOperatingSystem.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedOperatingSystem.struct_class = Types::UnsupportedOperatingSystem

    UnsupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedOperationException.struct_class = Types::UnsupportedOperationException

    UnsupportedParameterType.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnsupportedParameterType.struct_class = Types::UnsupportedParameterType

    UnsupportedPlatformType.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedPlatformType.struct_class = Types::UnsupportedPlatformType

    UpdateAssociationRequest.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, required: true, location_name: "AssociationId"))
    UpdateAssociationRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    UpdateAssociationRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    UpdateAssociationRequest.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, location_name: "ScheduleExpression"))
    UpdateAssociationRequest.add_member(:output_location, Shapes::ShapeRef.new(shape: InstanceAssociationOutputLocation, location_name: "OutputLocation"))
    UpdateAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
    UpdateAssociationRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateAssociationRequest.add_member(:association_name, Shapes::ShapeRef.new(shape: AssociationName, location_name: "AssociationName"))
    UpdateAssociationRequest.add_member(:association_version, Shapes::ShapeRef.new(shape: AssociationVersion, location_name: "AssociationVersion"))
    UpdateAssociationRequest.add_member(:automation_target_parameter_name, Shapes::ShapeRef.new(shape: AutomationTargetParameterName, location_name: "AutomationTargetParameterName"))
    UpdateAssociationRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    UpdateAssociationRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    UpdateAssociationRequest.add_member(:compliance_severity, Shapes::ShapeRef.new(shape: AssociationComplianceSeverity, location_name: "ComplianceSeverity"))
    UpdateAssociationRequest.add_member(:sync_compliance, Shapes::ShapeRef.new(shape: AssociationSyncCompliance, location_name: "SyncCompliance"))
    UpdateAssociationRequest.add_member(:apply_only_at_cron_interval, Shapes::ShapeRef.new(shape: ApplyOnlyAtCronInterval, location_name: "ApplyOnlyAtCronInterval"))
    UpdateAssociationRequest.add_member(:calendar_names, Shapes::ShapeRef.new(shape: CalendarNameOrARNList, location_name: "CalendarNames"))
    UpdateAssociationRequest.add_member(:target_locations, Shapes::ShapeRef.new(shape: TargetLocations, location_name: "TargetLocations"))
    UpdateAssociationRequest.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: ScheduleOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    UpdateAssociationRequest.add_member(:duration, Shapes::ShapeRef.new(shape: Duration, location_name: "Duration", metadata: {"box" => true}))
    UpdateAssociationRequest.add_member(:target_maps, Shapes::ShapeRef.new(shape: TargetMaps, location_name: "TargetMaps", metadata: {"box" => true}))
    UpdateAssociationRequest.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    UpdateAssociationRequest.struct_class = Types::UpdateAssociationRequest

    UpdateAssociationResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
    UpdateAssociationResult.struct_class = Types::UpdateAssociationResult

    UpdateAssociationStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
    UpdateAssociationStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    UpdateAssociationStatusRequest.add_member(:association_status, Shapes::ShapeRef.new(shape: AssociationStatus, required: true, location_name: "AssociationStatus"))
    UpdateAssociationStatusRequest.struct_class = Types::UpdateAssociationStatusRequest

    UpdateAssociationStatusResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
    UpdateAssociationStatusResult.struct_class = Types::UpdateAssociationStatusResult

    UpdateDocumentDefaultVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    UpdateDocumentDefaultVersionRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersionNumber, required: true, location_name: "DocumentVersion"))
    UpdateDocumentDefaultVersionRequest.struct_class = Types::UpdateDocumentDefaultVersionRequest

    UpdateDocumentDefaultVersionResult.add_member(:description, Shapes::ShapeRef.new(shape: DocumentDefaultVersionDescription, location_name: "Description"))
    UpdateDocumentDefaultVersionResult.struct_class = Types::UpdateDocumentDefaultVersionResult

    UpdateDocumentMetadataRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    UpdateDocumentMetadataRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    UpdateDocumentMetadataRequest.add_member(:document_reviews, Shapes::ShapeRef.new(shape: DocumentReviews, required: true, location_name: "DocumentReviews"))
    UpdateDocumentMetadataRequest.struct_class = Types::UpdateDocumentMetadataRequest

    UpdateDocumentMetadataResponse.struct_class = Types::UpdateDocumentMetadataResponse

    UpdateDocumentRequest.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, required: true, location_name: "Content"))
    UpdateDocumentRequest.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentsSourceList, location_name: "Attachments"))
    UpdateDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
    UpdateDocumentRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DocumentDisplayName, location_name: "DisplayName"))
    UpdateDocumentRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: DocumentVersionName, location_name: "VersionName"))
    UpdateDocumentRequest.add_member(:document_version, Shapes::ShapeRef.new(shape: DocumentVersion, location_name: "DocumentVersion"))
    UpdateDocumentRequest.add_member(:document_format, Shapes::ShapeRef.new(shape: DocumentFormat, location_name: "DocumentFormat"))
    UpdateDocumentRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "TargetType"))
    UpdateDocumentRequest.struct_class = Types::UpdateDocumentRequest

    UpdateDocumentResult.add_member(:document_description, Shapes::ShapeRef.new(shape: DocumentDescription, location_name: "DocumentDescription"))
    UpdateDocumentResult.struct_class = Types::UpdateDocumentResult

    UpdateMaintenanceWindowRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    UpdateMaintenanceWindowRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowRequest.add_member(:start_date, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "StartDate"))
    UpdateMaintenanceWindowRequest.add_member(:end_date, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "EndDate"))
    UpdateMaintenanceWindowRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, location_name: "Schedule"))
    UpdateMaintenanceWindowRequest.add_member(:schedule_timezone, Shapes::ShapeRef.new(shape: MaintenanceWindowTimezone, location_name: "ScheduleTimezone"))
    UpdateMaintenanceWindowRequest.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: MaintenanceWindowOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    UpdateMaintenanceWindowRequest.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration", metadata: {"box" => true}))
    UpdateMaintenanceWindowRequest.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff", metadata: {"box" => true}))
    UpdateMaintenanceWindowRequest.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, location_name: "AllowUnassociatedTargets", metadata: {"box" => true}))
    UpdateMaintenanceWindowRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled", metadata: {"box" => true}))
    UpdateMaintenanceWindowRequest.add_member(:replace, Shapes::ShapeRef.new(shape: Boolean, location_name: "Replace", metadata: {"box" => true}))
    UpdateMaintenanceWindowRequest.struct_class = Types::UpdateMaintenanceWindowRequest

    UpdateMaintenanceWindowResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    UpdateMaintenanceWindowResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowResult.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowResult.add_member(:start_date, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "StartDate"))
    UpdateMaintenanceWindowResult.add_member(:end_date, Shapes::ShapeRef.new(shape: MaintenanceWindowStringDateTime, location_name: "EndDate"))
    UpdateMaintenanceWindowResult.add_member(:schedule, Shapes::ShapeRef.new(shape: MaintenanceWindowSchedule, location_name: "Schedule"))
    UpdateMaintenanceWindowResult.add_member(:schedule_timezone, Shapes::ShapeRef.new(shape: MaintenanceWindowTimezone, location_name: "ScheduleTimezone"))
    UpdateMaintenanceWindowResult.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: MaintenanceWindowOffset, location_name: "ScheduleOffset", metadata: {"box" => true}))
    UpdateMaintenanceWindowResult.add_member(:duration, Shapes::ShapeRef.new(shape: MaintenanceWindowDurationHours, location_name: "Duration"))
    UpdateMaintenanceWindowResult.add_member(:cutoff, Shapes::ShapeRef.new(shape: MaintenanceWindowCutoff, location_name: "Cutoff"))
    UpdateMaintenanceWindowResult.add_member(:allow_unassociated_targets, Shapes::ShapeRef.new(shape: MaintenanceWindowAllowUnassociatedTargets, location_name: "AllowUnassociatedTargets"))
    UpdateMaintenanceWindowResult.add_member(:enabled, Shapes::ShapeRef.new(shape: MaintenanceWindowEnabled, location_name: "Enabled"))
    UpdateMaintenanceWindowResult.struct_class = Types::UpdateMaintenanceWindowResult

    UpdateMaintenanceWindowTargetRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    UpdateMaintenanceWindowTargetRequest.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, required: true, location_name: "WindowTargetId"))
    UpdateMaintenanceWindowTargetRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateMaintenanceWindowTargetRequest.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    UpdateMaintenanceWindowTargetRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowTargetRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowTargetRequest.add_member(:replace, Shapes::ShapeRef.new(shape: Boolean, location_name: "Replace", metadata: {"box" => true}))
    UpdateMaintenanceWindowTargetRequest.struct_class = Types::UpdateMaintenanceWindowTargetRequest

    UpdateMaintenanceWindowTargetResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    UpdateMaintenanceWindowTargetResult.add_member(:window_target_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTargetId, location_name: "WindowTargetId"))
    UpdateMaintenanceWindowTargetResult.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateMaintenanceWindowTargetResult.add_member(:owner_information, Shapes::ShapeRef.new(shape: OwnerInformation, location_name: "OwnerInformation"))
    UpdateMaintenanceWindowTargetResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowTargetResult.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowTargetResult.struct_class = Types::UpdateMaintenanceWindowTargetResult

    UpdateMaintenanceWindowTaskRequest.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, required: true, location_name: "WindowId"))
    UpdateMaintenanceWindowTaskRequest.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, required: true, location_name: "WindowTaskId"))
    UpdateMaintenanceWindowTaskRequest.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateMaintenanceWindowTaskRequest.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    UpdateMaintenanceWindowTaskRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    UpdateMaintenanceWindowTaskRequest.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    UpdateMaintenanceWindowTaskRequest.add_member(:task_invocation_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskInvocationParameters, location_name: "TaskInvocationParameters"))
    UpdateMaintenanceWindowTaskRequest.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority", metadata: {"box" => true}))
    UpdateMaintenanceWindowTaskRequest.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    UpdateMaintenanceWindowTaskRequest.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    UpdateMaintenanceWindowTaskRequest.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    UpdateMaintenanceWindowTaskRequest.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowTaskRequest.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowTaskRequest.add_member(:replace, Shapes::ShapeRef.new(shape: Boolean, location_name: "Replace", metadata: {"box" => true}))
    UpdateMaintenanceWindowTaskRequest.add_member(:cutoff_behavior, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskCutoffBehavior, location_name: "CutoffBehavior", metadata: {"box" => true}))
    UpdateMaintenanceWindowTaskRequest.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    UpdateMaintenanceWindowTaskRequest.struct_class = Types::UpdateMaintenanceWindowTaskRequest

    UpdateMaintenanceWindowTaskResult.add_member(:window_id, Shapes::ShapeRef.new(shape: MaintenanceWindowId, location_name: "WindowId"))
    UpdateMaintenanceWindowTaskResult.add_member(:window_task_id, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskId, location_name: "WindowTaskId"))
    UpdateMaintenanceWindowTaskResult.add_member(:targets, Shapes::ShapeRef.new(shape: Targets, location_name: "Targets"))
    UpdateMaintenanceWindowTaskResult.add_member(:task_arn, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskArn, location_name: "TaskArn"))
    UpdateMaintenanceWindowTaskResult.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
    UpdateMaintenanceWindowTaskResult.add_member(:task_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskParameters, location_name: "TaskParameters"))
    UpdateMaintenanceWindowTaskResult.add_member(:task_invocation_parameters, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskInvocationParameters, location_name: "TaskInvocationParameters"))
    UpdateMaintenanceWindowTaskResult.add_member(:priority, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskPriority, location_name: "Priority"))
    UpdateMaintenanceWindowTaskResult.add_member(:max_concurrency, Shapes::ShapeRef.new(shape: MaxConcurrency, location_name: "MaxConcurrency"))
    UpdateMaintenanceWindowTaskResult.add_member(:max_errors, Shapes::ShapeRef.new(shape: MaxErrors, location_name: "MaxErrors"))
    UpdateMaintenanceWindowTaskResult.add_member(:logging_info, Shapes::ShapeRef.new(shape: LoggingInfo, location_name: "LoggingInfo"))
    UpdateMaintenanceWindowTaskResult.add_member(:name, Shapes::ShapeRef.new(shape: MaintenanceWindowName, location_name: "Name"))
    UpdateMaintenanceWindowTaskResult.add_member(:description, Shapes::ShapeRef.new(shape: MaintenanceWindowDescription, location_name: "Description"))
    UpdateMaintenanceWindowTaskResult.add_member(:cutoff_behavior, Shapes::ShapeRef.new(shape: MaintenanceWindowTaskCutoffBehavior, location_name: "CutoffBehavior", metadata: {"box" => true}))
    UpdateMaintenanceWindowTaskResult.add_member(:alarm_configuration, Shapes::ShapeRef.new(shape: AlarmConfiguration, location_name: "AlarmConfiguration"))
    UpdateMaintenanceWindowTaskResult.struct_class = Types::UpdateMaintenanceWindowTaskResult

    UpdateManagedInstanceRoleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ManagedInstanceId, required: true, location_name: "InstanceId"))
    UpdateManagedInstanceRoleRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, required: true, location_name: "IamRole"))
    UpdateManagedInstanceRoleRequest.struct_class = Types::UpdateManagedInstanceRoleRequest

    UpdateManagedInstanceRoleResult.struct_class = Types::UpdateManagedInstanceRoleResult

    UpdateOpsItemRequest.add_member(:description, Shapes::ShapeRef.new(shape: OpsItemDescription, location_name: "Description"))
    UpdateOpsItemRequest.add_member(:operational_data, Shapes::ShapeRef.new(shape: OpsItemOperationalData, location_name: "OperationalData"))
    UpdateOpsItemRequest.add_member(:operational_data_to_delete, Shapes::ShapeRef.new(shape: OpsItemOpsDataKeysList, location_name: "OperationalDataToDelete"))
    UpdateOpsItemRequest.add_member(:notifications, Shapes::ShapeRef.new(shape: OpsItemNotifications, location_name: "Notifications"))
    UpdateOpsItemRequest.add_member(:priority, Shapes::ShapeRef.new(shape: OpsItemPriority, location_name: "Priority"))
    UpdateOpsItemRequest.add_member(:related_ops_items, Shapes::ShapeRef.new(shape: RelatedOpsItems, location_name: "RelatedOpsItems"))
    UpdateOpsItemRequest.add_member(:status, Shapes::ShapeRef.new(shape: OpsItemStatus, location_name: "Status"))
    UpdateOpsItemRequest.add_member(:ops_item_id, Shapes::ShapeRef.new(shape: OpsItemId, required: true, location_name: "OpsItemId"))
    UpdateOpsItemRequest.add_member(:title, Shapes::ShapeRef.new(shape: OpsItemTitle, location_name: "Title"))
    UpdateOpsItemRequest.add_member(:category, Shapes::ShapeRef.new(shape: OpsItemCategory, location_name: "Category"))
    UpdateOpsItemRequest.add_member(:severity, Shapes::ShapeRef.new(shape: OpsItemSeverity, location_name: "Severity"))
    UpdateOpsItemRequest.add_member(:actual_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ActualStartTime"))
    UpdateOpsItemRequest.add_member(:actual_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ActualEndTime"))
    UpdateOpsItemRequest.add_member(:planned_start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "PlannedStartTime"))
    UpdateOpsItemRequest.add_member(:planned_end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "PlannedEndTime"))
    UpdateOpsItemRequest.add_member(:ops_item_arn, Shapes::ShapeRef.new(shape: OpsItemArn, location_name: "OpsItemArn"))
    UpdateOpsItemRequest.struct_class = Types::UpdateOpsItemRequest

    UpdateOpsItemResponse.struct_class = Types::UpdateOpsItemResponse

    UpdateOpsMetadataRequest.add_member(:ops_metadata_arn, Shapes::ShapeRef.new(shape: OpsMetadataArn, required: true, location_name: "OpsMetadataArn"))
    UpdateOpsMetadataRequest.add_member(:metadata_to_update, Shapes::ShapeRef.new(shape: MetadataMap, location_name: "MetadataToUpdate"))
    UpdateOpsMetadataRequest.add_member(:keys_to_delete, Shapes::ShapeRef.new(shape: MetadataKeysToDeleteList, location_name: "KeysToDelete"))
    UpdateOpsMetadataRequest.struct_class = Types::UpdateOpsMetadataRequest

    UpdateOpsMetadataResult.add_member(:ops_metadata_arn, Shapes::ShapeRef.new(shape: OpsMetadataArn, location_name: "OpsMetadataArn"))
    UpdateOpsMetadataResult.struct_class = Types::UpdateOpsMetadataResult

    UpdatePatchBaselineRequest.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, required: true, location_name: "BaselineId"))
    UpdatePatchBaselineRequest.add_member(:name, Shapes::ShapeRef.new(shape: BaselineName, location_name: "Name"))
    UpdatePatchBaselineRequest.add_member(:global_filters, Shapes::ShapeRef.new(shape: PatchFilterGroup, location_name: "GlobalFilters"))
    UpdatePatchBaselineRequest.add_member(:approval_rules, Shapes::ShapeRef.new(shape: PatchRuleGroup, location_name: "ApprovalRules"))
    UpdatePatchBaselineRequest.add_member(:approved_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "ApprovedPatches"))
    UpdatePatchBaselineRequest.add_member(:approved_patches_compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ApprovedPatchesComplianceLevel"))
    UpdatePatchBaselineRequest.add_member(:approved_patches_enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApprovedPatchesEnableNonSecurity", metadata: {"box" => true}))
    UpdatePatchBaselineRequest.add_member(:rejected_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "RejectedPatches"))
    UpdatePatchBaselineRequest.add_member(:rejected_patches_action, Shapes::ShapeRef.new(shape: PatchAction, location_name: "RejectedPatchesAction"))
    UpdatePatchBaselineRequest.add_member(:description, Shapes::ShapeRef.new(shape: BaselineDescription, location_name: "Description"))
    UpdatePatchBaselineRequest.add_member(:sources, Shapes::ShapeRef.new(shape: PatchSourceList, location_name: "Sources"))
    UpdatePatchBaselineRequest.add_member(:available_security_updates_compliance_status, Shapes::ShapeRef.new(shape: PatchComplianceStatus, location_name: "AvailableSecurityUpdatesComplianceStatus"))
    UpdatePatchBaselineRequest.add_member(:replace, Shapes::ShapeRef.new(shape: Boolean, location_name: "Replace", metadata: {"box" => true}))
    UpdatePatchBaselineRequest.struct_class = Types::UpdatePatchBaselineRequest

    UpdatePatchBaselineResult.add_member(:baseline_id, Shapes::ShapeRef.new(shape: BaselineId, location_name: "BaselineId"))
    UpdatePatchBaselineResult.add_member(:name, Shapes::ShapeRef.new(shape: BaselineName, location_name: "Name"))
    UpdatePatchBaselineResult.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    UpdatePatchBaselineResult.add_member(:global_filters, Shapes::ShapeRef.new(shape: PatchFilterGroup, location_name: "GlobalFilters"))
    UpdatePatchBaselineResult.add_member(:approval_rules, Shapes::ShapeRef.new(shape: PatchRuleGroup, location_name: "ApprovalRules"))
    UpdatePatchBaselineResult.add_member(:approved_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "ApprovedPatches"))
    UpdatePatchBaselineResult.add_member(:approved_patches_compliance_level, Shapes::ShapeRef.new(shape: PatchComplianceLevel, location_name: "ApprovedPatchesComplianceLevel"))
    UpdatePatchBaselineResult.add_member(:approved_patches_enable_non_security, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApprovedPatchesEnableNonSecurity", metadata: {"box" => true}))
    UpdatePatchBaselineResult.add_member(:rejected_patches, Shapes::ShapeRef.new(shape: PatchIdList, location_name: "RejectedPatches"))
    UpdatePatchBaselineResult.add_member(:rejected_patches_action, Shapes::ShapeRef.new(shape: PatchAction, location_name: "RejectedPatchesAction"))
    UpdatePatchBaselineResult.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    UpdatePatchBaselineResult.add_member(:modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedDate"))
    UpdatePatchBaselineResult.add_member(:description, Shapes::ShapeRef.new(shape: BaselineDescription, location_name: "Description"))
    UpdatePatchBaselineResult.add_member(:sources, Shapes::ShapeRef.new(shape: PatchSourceList, location_name: "Sources"))
    UpdatePatchBaselineResult.add_member(:available_security_updates_compliance_status, Shapes::ShapeRef.new(shape: PatchComplianceStatus, location_name: "AvailableSecurityUpdatesComplianceStatus"))
    UpdatePatchBaselineResult.struct_class = Types::UpdatePatchBaselineResult

    UpdateResourceDataSyncRequest.add_member(:sync_name, Shapes::ShapeRef.new(shape: ResourceDataSyncName, required: true, location_name: "SyncName"))
    UpdateResourceDataSyncRequest.add_member(:sync_type, Shapes::ShapeRef.new(shape: ResourceDataSyncType, required: true, location_name: "SyncType"))
    UpdateResourceDataSyncRequest.add_member(:sync_source, Shapes::ShapeRef.new(shape: ResourceDataSyncSource, required: true, location_name: "SyncSource"))
    UpdateResourceDataSyncRequest.struct_class = Types::UpdateResourceDataSyncRequest

    UpdateResourceDataSyncResult.struct_class = Types::UpdateResourceDataSyncResult

    UpdateServiceSettingRequest.add_member(:setting_id, Shapes::ShapeRef.new(shape: ServiceSettingId, required: true, location_name: "SettingId"))
    UpdateServiceSettingRequest.add_member(:setting_value, Shapes::ShapeRef.new(shape: ServiceSettingValue, required: true, location_name: "SettingValue"))
    UpdateServiceSettingRequest.struct_class = Types::UpdateServiceSettingRequest

    UpdateServiceSettingResult.struct_class = Types::UpdateServiceSettingResult

    ValidNextStepList.member = Shapes::ShapeRef.new(shape: ValidNextStep)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.add_member(:reason_code, Shapes::ShapeRef.new(shape: String, location_name: "ReasonCode"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-11-06"

      api.metadata = {
        "apiVersion" => "2014-11-06",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "ssm",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "Amazon SSM",
        "serviceFullName" => "Amazon Simple Systems Manager (SSM)",
        "serviceId" => "SSM",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonSSM",
        "uid" => "ssm-2014-11-06",
      }

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AddTagsToResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsError)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:associate_ops_item_related_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateOpsItemRelatedItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateOpsItemRelatedItemRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateOpsItemRelatedItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemRelatedItemAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemConflictException)
      end)

      api.add_operation(:cancel_command, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelCommand"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelCommandRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelCommandResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateInstanceId)
      end)

      api.add_operation(:cancel_maintenance_window_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelMaintenanceWindowExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelMaintenanceWindowExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelMaintenanceWindowExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
      end)

      api.add_operation(:create_activation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateActivation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateActivationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateActivationResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: AssociationAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: AssociationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlatformType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOutputLocation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTarget)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSchedule)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetMaps)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTag)
      end)

      api.add_operation(:create_association_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssociationBatch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAssociationBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssociationBatchResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: AssociationLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlatformType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOutputLocation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTarget)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSchedule)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetMaps)
      end)

      api.add_operation(:create_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDocumentResult)
        o.errors << Shapes::ShapeRef.new(shape: DocumentAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: MaxDocumentSizeExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentContent)
        o.errors << Shapes::ShapeRef.new(shape: DocumentLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentSchemaVersion)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:create_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_ops_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOpsItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOpsItemRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOpsItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemAccessDeniedException)
      end)

      api.add_operation(:create_ops_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOpsMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOpsMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOpsMetadataResult)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataTooManyUpdatesException)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataInvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:create_resource_data_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceDataSync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceDataSyncRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceDataSyncResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncCountExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncInvalidConfigurationException)
      end)

      api.add_operation(:delete_activation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteActivation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteActivationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteActivationResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidActivationId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidActivation)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:delete_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:delete_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDocumentResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentOperation)
        o.errors << Shapes::ShapeRef.new(shape: AssociatedInstances)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:delete_inventory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInventory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInventoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInventoryResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOptionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeleteInventoryParametersException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInventoryRequestException)
      end)

      api.add_operation(:delete_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_ops_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOpsItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOpsItemRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOpsItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemInvalidParameterException)
      end)

      api.add_operation(:delete_ops_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOpsMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOpsMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOpsMetadataResult)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataInvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteParameterResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ParameterNotFound)
      end)

      api.add_operation(:delete_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteParametersResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_resource_data_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourceDataSync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceDataSyncRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourceDataSyncResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncInvalidConfigurationException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedResourcePolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyNotFoundException)
      end)

      api.add_operation(:deregister_managed_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterManagedInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterManagedInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterManagedInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:deregister_patch_baseline_for_patch_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterPatchBaselineForPatchGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterPatchBaselineForPatchGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterPatchBaselineForPatchGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:deregister_target_from_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterTargetFromMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTargetFromMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTargetFromMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: TargetInUseException)
      end)

      api.add_operation(:deregister_task_from_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterTaskFromMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTaskFromMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTaskFromMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_activations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeActivations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeActivationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeActivationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAssociationVersion)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
      end)

      api.add_operation(:describe_association_execution_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssociationExecutionTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssociationExecutionTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssociationExecutionTargetsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: AssociationExecutionDoesNotExist)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_association_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssociationExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssociationExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssociationExecutionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_automation_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutomationExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAutomationExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAutomationExecutionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_automation_step_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutomationStepExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAutomationStepExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAutomationStepExecutionsResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_available_patches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAvailablePatches"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAvailablePatchesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAvailablePatchesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDocumentResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
      end)

      api.add_operation(:describe_document_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDocumentPermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDocumentPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDocumentPermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPermissionType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentOperation)
      end)

      api.add_operation(:describe_effective_instance_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEffectiveInstanceAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEffectiveInstanceAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEffectiveInstanceAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_effective_patches_for_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEffectivePatchesForPatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEffectivePatchesForPatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEffectivePatchesForPatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperatingSystem)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_instance_associations_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceAssociationsStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceAssociationsStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceAssociationsStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_instance_information, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceInformation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceInformationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceInformationResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceInformationFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_instance_patch_states, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstancePatchStates"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancePatchStatesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancePatchStatesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_instance_patch_states_for_patch_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstancePatchStatesForPatchGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancePatchStatesForPatchGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancePatchStatesForPatchGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_instance_patches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstancePatches"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancePatchesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancePatchesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_instance_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancePropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancePropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidActivationId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstancePropertyFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_inventory_deletions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInventoryDeletions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInventoryDeletionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInventoryDeletionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeletionIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_maintenance_window_execution_task_invocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowExecutionTaskInvocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionTaskInvocationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionTaskInvocationsResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_maintenance_window_execution_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowExecutionTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionTasksResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_maintenance_window_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowExecutionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_maintenance_window_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowScheduleResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_maintenance_window_targets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowTargets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowTargetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowTargetsResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_maintenance_window_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowTasksResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_maintenance_windows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindows"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_maintenance_windows_for_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMaintenanceWindowsForTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowsForTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMaintenanceWindowsForTargetResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_ops_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOpsItems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOpsItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOpsItemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeParametersResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterOption)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_patch_baselines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePatchBaselines"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePatchBaselinesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePatchBaselinesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_patch_group_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePatchGroupState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePatchGroupStateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePatchGroupStateResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:describe_patch_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePatchGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePatchGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePatchGroupsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_patch_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePatchProperties"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePatchPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePatchPropertiesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:disassociate_ops_item_related_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateOpsItemRelatedItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateOpsItemRelatedItemRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateOpsItemRelatedItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemRelatedItemAssociationNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemConflictException)
      end)

      api.add_operation(:get_access_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessToken"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAccessTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_automation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAutomationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomationExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_calendar_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCalendarState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCalendarStateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCalendarStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentType)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedCalendarException)
      end)

      api.add_operation(:get_command_invocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCommandInvocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCommandInvocationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCommandInvocationResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPluginName)
        o.errors << Shapes::ShapeRef.new(shape: InvocationDoesNotExist)
      end)

      api.add_operation(:get_connection_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_default_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDefaultPatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDefaultPatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDefaultPatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_deployable_patch_snapshot_for_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployablePatchSnapshotForInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDeployablePatchSnapshotForInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeployablePatchSnapshotForInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperatingSystem)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureRequiredException)
      end)

      api.add_operation(:get_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDocumentResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
      end)

      api.add_operation(:get_execution_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExecutionPreview"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetExecutionPreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExecutionPreviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_inventory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInventory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInventoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInventoryResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInventoryGroupException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAggregatorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResultAttributeException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_inventory_schema, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInventorySchema"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInventorySchemaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInventorySchemaResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_maintenance_window_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMaintenanceWindowExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_maintenance_window_execution_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMaintenanceWindowExecutionTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionTaskResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_maintenance_window_execution_task_invocation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMaintenanceWindowExecutionTaskInvocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionTaskInvocationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMaintenanceWindowExecutionTaskInvocationResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_maintenance_window_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMaintenanceWindowTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMaintenanceWindowTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMaintenanceWindowTaskResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_ops_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOpsItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOpsItemRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOpsItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemAccessDeniedException)
      end)

      api.add_operation(:get_ops_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOpsMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOpsMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOpsMetadataResult)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataInvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_ops_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOpsSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOpsSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOpsSummaryResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAggregatorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParameterResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyId)
        o.errors << Shapes::ShapeRef.new(shape: ParameterNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ParameterVersionNotFound)
      end)

      api.add_operation(:get_parameter_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParameterHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParameterHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParameterHistoryResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ParameterNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyId)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParametersResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_parameters_by_path, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParametersByPath"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetParametersByPathRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParametersByPathResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterOption)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterValue)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_patch_baseline_for_patch_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPatchBaselineForPatchGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPatchBaselineForPatchGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPatchBaselineForPatchGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_resource_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_service_setting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServiceSetting"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceSettingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceSettingResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceSettingNotFound)
      end)

      api.add_operation(:label_parameter_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "LabelParameterVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: LabelParameterVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: LabelParameterVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
        o.errors << Shapes::ShapeRef.new(shape: ParameterNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ParameterVersionNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ParameterVersionLabelLimitExceeded)
      end)

      api.add_operation(:list_association_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociationVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociationVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociationVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_command_invocations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCommandInvocations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCommandInvocationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCommandInvocationsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_commands, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCommands"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCommandsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCommandsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_compliance_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComplianceItems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComplianceItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComplianceItemsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_compliance_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComplianceSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComplianceSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComplianceSummariesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_document_metadata_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDocumentMetadataHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDocumentMetadataHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDocumentMetadataHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:list_document_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDocumentVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDocumentVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDocumentVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_documents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDocuments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDocumentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDocumentsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_inventory_entries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInventoryEntries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInventoryEntriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInventoryEntriesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
      end)

      api.add_operation(:list_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNodes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNodesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNodesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_nodes_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNodesSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNodesSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNodesSummaryResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAggregatorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ops_item_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOpsItemEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOpsItemEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOpsItemEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemInvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ops_item_related_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOpsItemRelatedItems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOpsItemRelatedItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOpsItemRelatedItemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemInvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_ops_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOpsMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOpsMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOpsMetadataResult)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataInvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_compliance_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceComplianceSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceComplianceSummariesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceComplianceSummariesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_data_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceDataSync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceDataSyncRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceDataSyncResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncInvalidConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
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
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:modify_document_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDocumentPermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDocumentPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: ModifyDocumentPermissionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPermissionType)
        o.errors << Shapes::ShapeRef.new(shape: DocumentPermissionLimit)
        o.errors << Shapes::ShapeRef.new(shape: DocumentLimitExceeded)
      end)

      api.add_operation(:put_compliance_items, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutComplianceItems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutComplianceItemsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutComplianceItemsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidItemContentException)
        o.errors << Shapes::ShapeRef.new(shape: TotalSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ItemSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ComplianceTypeCountLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
      end)

      api.add_operation(:put_inventory, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutInventory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutInventoryRequest)
        o.output = Shapes::ShapeRef.new(shape: PutInventoryResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidItemContentException)
        o.errors << Shapes::ShapeRef.new(shape: TotalSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ItemSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ItemContentMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: CustomSchemaCountLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedInventorySchemaVersionException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedInventoryItemContextException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInventoryItemContextException)
        o.errors << Shapes::ShapeRef.new(shape: SubTypeCountLimitExceededException)
      end)

      api.add_operation(:put_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutParameter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: PutParameterResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKeyId)
        o.errors << Shapes::ShapeRef.new(shape: ParameterLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
        o.errors << Shapes::ShapeRef.new(shape: ParameterAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: HierarchyLevelLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: HierarchyTypeMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAllowedPatternException)
        o.errors << Shapes::ShapeRef.new(shape: ParameterMaxVersionLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ParameterPatternMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedParameterType)
        o.errors << Shapes::ShapeRef.new(shape: PoliciesLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPolicyTypeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPolicyAttributeException)
        o.errors << Shapes::ShapeRef.new(shape: IncompatiblePolicyException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MalformedResourcePolicyDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: ResourcePolicyNotFoundException)
      end)

      api.add_operation(:register_default_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterDefaultPatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterDefaultPatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterDefaultPatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:register_patch_baseline_for_patch_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterPatchBaselineForPatchGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterPatchBaselineForPatchGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterPatchBaselineForPatchGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:register_target_with_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterTargetWithMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterTargetWithMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterTargetWithMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:register_task_with_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterTaskWithMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterTaskWithMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterTaskWithMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FeatureNotAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:reset_service_setting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetServiceSetting"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetServiceSettingRequest)
        o.output = Shapes::ShapeRef.new(shape: ResetServiceSettingResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceSettingNotFound)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:resume_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResumeSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: ResumeSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:send_automation_signal, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendAutomationSignal"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendAutomationSignalRequest)
        o.output = Shapes::ShapeRef.new(shape: SendAutomationSignalResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AutomationStepNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutomationSignalException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:send_command, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendCommand"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendCommandRequest)
        o.output = Shapes::ShapeRef.new(shape: SendCommandResult)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOutputFolder)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlatformType)
        o.errors << Shapes::ShapeRef.new(shape: MaxDocumentSizeExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRole)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNotificationConfig)
      end)

      api.add_operation(:start_access_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAccessRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAccessRequestRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAccessRequestResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_associations_once, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAssociationsOnce"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAssociationsOnceRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAssociationsOnceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAssociation)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
      end)

      api.add_operation(:start_automation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAutomationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAutomationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAutomationExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationDefinitionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutomationExecutionParametersException)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AutomationDefinitionVersionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTarget)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:start_change_request_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartChangeRequestExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartChangeRequestExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartChangeRequestExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationDefinitionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutomationExecutionParametersException)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AutomationDefinitionVersionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatch)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: AutomationDefinitionNotApprovedException)
      end)

      api.add_operation(:start_execution_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExecutionPreview"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartExecutionPreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: StartExecutionPreviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotConnected)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:stop_automation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAutomationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopAutomationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopAutomationExecutionResult)
        o.errors << Shapes::ShapeRef.new(shape: AutomationExecutionNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAutomationStatusUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:terminate_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: TerminateSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:unlabel_parameter_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnlabelParameterVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UnlabelParameterVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UnlabelParameterVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
        o.errors << Shapes::ShapeRef.new(shape: ParameterNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ParameterVersionNotFound)
      end)

      api.add_operation(:update_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSchedule)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOutputLocation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: InvalidUpdate)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTarget)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAssociationVersion)
        o.errors << Shapes::ShapeRef.new(shape: AssociationVersionLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetMaps)
      end)

      api.add_operation(:update_association_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssociationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssociationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssociationStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: StatusUnchanged)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:update_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDocumentResult)
        o.errors << Shapes::ShapeRef.new(shape: MaxDocumentSizeExceeded)
        o.errors << Shapes::ShapeRef.new(shape: DocumentVersionLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateDocumentContent)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateDocumentVersionName)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentContent)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentSchemaVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentOperation)
      end)

      api.add_operation(:update_document_default_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDocumentDefaultVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDocumentDefaultVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDocumentDefaultVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentSchemaVersion)
      end)

      api.add_operation(:update_document_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDocumentMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDocumentMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDocumentMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentVersion)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)

      api.add_operation(:update_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_maintenance_window_target, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMaintenanceWindowTarget"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowTargetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowTargetResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_maintenance_window_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMaintenanceWindowTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMaintenanceWindowTaskResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_managed_instance_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateManagedInstanceRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateManagedInstanceRoleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateManagedInstanceRoleResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_ops_item, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOpsItem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateOpsItemRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOpsItemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemInvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: OpsItemConflictException)
      end)

      api.add_operation(:update_ops_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOpsMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateOpsMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOpsMetadataResult)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataInvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataKeyLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: OpsMetadataTooManyUpdatesException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_patch_baseline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePatchBaseline"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePatchBaselineRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePatchBaselineResult)
        o.errors << Shapes::ShapeRef.new(shape: DoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_resource_data_sync, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourceDataSync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceDataSyncRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceDataSyncResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncInvalidConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDataSyncConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:update_service_setting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceSetting"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceSettingRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceSettingResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceSettingNotFound)
        o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
      end)
    end

  end
end
