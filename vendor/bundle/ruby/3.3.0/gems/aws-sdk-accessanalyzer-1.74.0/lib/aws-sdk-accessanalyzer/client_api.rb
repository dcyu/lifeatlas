# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AccessAnalyzer
  # @api private
  module ClientApi

    include Seahorse::Model

    Access = Shapes::StructureShape.new(name: 'Access')
    AccessActionsList = Shapes::ListShape.new(name: 'AccessActionsList')
    AccessCheckPolicyDocument = Shapes::StringShape.new(name: 'AccessCheckPolicyDocument')
    AccessCheckPolicyType = Shapes::StringShape.new(name: 'AccessCheckPolicyType')
    AccessCheckResourceType = Shapes::StringShape.new(name: 'AccessCheckResourceType')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessPointArn = Shapes::StringShape.new(name: 'AccessPointArn')
    AccessPointPolicy = Shapes::StringShape.new(name: 'AccessPointPolicy')
    AccessPreview = Shapes::StructureShape.new(name: 'AccessPreview')
    AccessPreviewFinding = Shapes::StructureShape.new(name: 'AccessPreviewFinding')
    AccessPreviewFindingId = Shapes::StringShape.new(name: 'AccessPreviewFindingId')
    AccessPreviewFindingsList = Shapes::ListShape.new(name: 'AccessPreviewFindingsList')
    AccessPreviewId = Shapes::StringShape.new(name: 'AccessPreviewId')
    AccessPreviewStatus = Shapes::StringShape.new(name: 'AccessPreviewStatus')
    AccessPreviewStatusReason = Shapes::StructureShape.new(name: 'AccessPreviewStatusReason')
    AccessPreviewStatusReasonCode = Shapes::StringShape.new(name: 'AccessPreviewStatusReasonCode')
    AccessPreviewSummary = Shapes::StructureShape.new(name: 'AccessPreviewSummary')
    AccessPreviewsList = Shapes::ListShape.new(name: 'AccessPreviewsList')
    AccessResourcesList = Shapes::ListShape.new(name: 'AccessResourcesList')
    AccountAggregations = Shapes::ListShape.new(name: 'AccountAggregations')
    AccountIdsList = Shapes::ListShape.new(name: 'AccountIdsList')
    AclCanonicalId = Shapes::StringShape.new(name: 'AclCanonicalId')
    AclGrantee = Shapes::UnionShape.new(name: 'AclGrantee')
    AclPermission = Shapes::StringShape.new(name: 'AclPermission')
    AclUri = Shapes::StringShape.new(name: 'AclUri')
    Action = Shapes::StringShape.new(name: 'Action')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    AnalysisRule = Shapes::StructureShape.new(name: 'AnalysisRule')
    AnalysisRuleCriteria = Shapes::StructureShape.new(name: 'AnalysisRuleCriteria')
    AnalysisRuleCriteriaList = Shapes::ListShape.new(name: 'AnalysisRuleCriteriaList')
    AnalyzedResource = Shapes::StructureShape.new(name: 'AnalyzedResource')
    AnalyzedResourceSummary = Shapes::StructureShape.new(name: 'AnalyzedResourceSummary')
    AnalyzedResourcesList = Shapes::ListShape.new(name: 'AnalyzedResourcesList')
    AnalyzerArn = Shapes::StringShape.new(name: 'AnalyzerArn')
    AnalyzerConfiguration = Shapes::UnionShape.new(name: 'AnalyzerConfiguration')
    AnalyzerStatus = Shapes::StringShape.new(name: 'AnalyzerStatus')
    AnalyzerSummary = Shapes::StructureShape.new(name: 'AnalyzerSummary')
    AnalyzersList = Shapes::ListShape.new(name: 'AnalyzersList')
    ApplyArchiveRuleRequest = Shapes::StructureShape.new(name: 'ApplyArchiveRuleRequest')
    ArchiveRuleSummary = Shapes::StructureShape.new(name: 'ArchiveRuleSummary')
    ArchiveRulesList = Shapes::ListShape.new(name: 'ArchiveRulesList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelPolicyGenerationRequest = Shapes::StructureShape.new(name: 'CancelPolicyGenerationRequest')
    CancelPolicyGenerationResponse = Shapes::StructureShape.new(name: 'CancelPolicyGenerationResponse')
    CheckAccessNotGrantedRequest = Shapes::StructureShape.new(name: 'CheckAccessNotGrantedRequest')
    CheckAccessNotGrantedRequestAccessList = Shapes::ListShape.new(name: 'CheckAccessNotGrantedRequestAccessList')
    CheckAccessNotGrantedResponse = Shapes::StructureShape.new(name: 'CheckAccessNotGrantedResponse')
    CheckAccessNotGrantedResult = Shapes::StringShape.new(name: 'CheckAccessNotGrantedResult')
    CheckNoNewAccessRequest = Shapes::StructureShape.new(name: 'CheckNoNewAccessRequest')
    CheckNoNewAccessResponse = Shapes::StructureShape.new(name: 'CheckNoNewAccessResponse')
    CheckNoNewAccessResult = Shapes::StringShape.new(name: 'CheckNoNewAccessResult')
    CheckNoPublicAccessRequest = Shapes::StructureShape.new(name: 'CheckNoPublicAccessRequest')
    CheckNoPublicAccessResponse = Shapes::StructureShape.new(name: 'CheckNoPublicAccessResponse')
    CheckNoPublicAccessResult = Shapes::StringShape.new(name: 'CheckNoPublicAccessResult')
    CloudTrailArn = Shapes::StringShape.new(name: 'CloudTrailArn')
    CloudTrailDetails = Shapes::StructureShape.new(name: 'CloudTrailDetails')
    CloudTrailProperties = Shapes::StructureShape.new(name: 'CloudTrailProperties')
    ConditionKeyMap = Shapes::MapShape.new(name: 'ConditionKeyMap')
    Configuration = Shapes::UnionShape.new(name: 'Configuration')
    ConfigurationsMap = Shapes::MapShape.new(name: 'ConfigurationsMap')
    ConfigurationsMapKey = Shapes::StringShape.new(name: 'ConfigurationsMapKey')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAccessPreviewRequest = Shapes::StructureShape.new(name: 'CreateAccessPreviewRequest')
    CreateAccessPreviewResponse = Shapes::StructureShape.new(name: 'CreateAccessPreviewResponse')
    CreateAnalyzerRequest = Shapes::StructureShape.new(name: 'CreateAnalyzerRequest')
    CreateAnalyzerResponse = Shapes::StructureShape.new(name: 'CreateAnalyzerResponse')
    CreateArchiveRuleRequest = Shapes::StructureShape.new(name: 'CreateArchiveRuleRequest')
    Criterion = Shapes::StructureShape.new(name: 'Criterion')
    DeleteAnalyzerRequest = Shapes::StructureShape.new(name: 'DeleteAnalyzerRequest')
    DeleteArchiveRuleRequest = Shapes::StructureShape.new(name: 'DeleteArchiveRuleRequest')
    DynamodbStreamConfiguration = Shapes::StructureShape.new(name: 'DynamodbStreamConfiguration')
    DynamodbStreamPolicy = Shapes::StringShape.new(name: 'DynamodbStreamPolicy')
    DynamodbTableConfiguration = Shapes::StructureShape.new(name: 'DynamodbTableConfiguration')
    DynamodbTablePolicy = Shapes::StringShape.new(name: 'DynamodbTablePolicy')
    EbsGroup = Shapes::StringShape.new(name: 'EbsGroup')
    EbsGroupList = Shapes::ListShape.new(name: 'EbsGroupList')
    EbsSnapshotConfiguration = Shapes::StructureShape.new(name: 'EbsSnapshotConfiguration')
    EbsSnapshotDataEncryptionKeyId = Shapes::StringShape.new(name: 'EbsSnapshotDataEncryptionKeyId')
    EbsUserId = Shapes::StringShape.new(name: 'EbsUserId')
    EbsUserIdList = Shapes::ListShape.new(name: 'EbsUserIdList')
    EcrRepositoryConfiguration = Shapes::StructureShape.new(name: 'EcrRepositoryConfiguration')
    EcrRepositoryPolicy = Shapes::StringShape.new(name: 'EcrRepositoryPolicy')
    EfsFileSystemConfiguration = Shapes::StructureShape.new(name: 'EfsFileSystemConfiguration')
    EfsFileSystemPolicy = Shapes::StringShape.new(name: 'EfsFileSystemPolicy')
    ExternalAccessDetails = Shapes::StructureShape.new(name: 'ExternalAccessDetails')
    ExternalAccessFindingsStatistics = Shapes::StructureShape.new(name: 'ExternalAccessFindingsStatistics')
    FilterCriteriaMap = Shapes::MapShape.new(name: 'FilterCriteriaMap')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingAggregationAccountDetails = Shapes::StructureShape.new(name: 'FindingAggregationAccountDetails')
    FindingAggregationAccountDetailsMap = Shapes::MapShape.new(name: 'FindingAggregationAccountDetailsMap')
    FindingChangeType = Shapes::StringShape.new(name: 'FindingChangeType')
    FindingDetails = Shapes::UnionShape.new(name: 'FindingDetails')
    FindingDetailsList = Shapes::ListShape.new(name: 'FindingDetailsList')
    FindingId = Shapes::StringShape.new(name: 'FindingId')
    FindingIdList = Shapes::ListShape.new(name: 'FindingIdList')
    FindingSource = Shapes::StructureShape.new(name: 'FindingSource')
    FindingSourceDetail = Shapes::StructureShape.new(name: 'FindingSourceDetail')
    FindingSourceList = Shapes::ListShape.new(name: 'FindingSourceList')
    FindingSourceType = Shapes::StringShape.new(name: 'FindingSourceType')
    FindingStatus = Shapes::StringShape.new(name: 'FindingStatus')
    FindingStatusUpdate = Shapes::StringShape.new(name: 'FindingStatusUpdate')
    FindingSummary = Shapes::StructureShape.new(name: 'FindingSummary')
    FindingSummaryV2 = Shapes::StructureShape.new(name: 'FindingSummaryV2')
    FindingType = Shapes::StringShape.new(name: 'FindingType')
    FindingsList = Shapes::ListShape.new(name: 'FindingsList')
    FindingsListV2 = Shapes::ListShape.new(name: 'FindingsListV2')
    FindingsStatistics = Shapes::UnionShape.new(name: 'FindingsStatistics')
    FindingsStatisticsList = Shapes::ListShape.new(name: 'FindingsStatisticsList')
    GenerateFindingRecommendationRequest = Shapes::StructureShape.new(name: 'GenerateFindingRecommendationRequest')
    GenerateFindingRecommendationRequestIdString = Shapes::StringShape.new(name: 'GenerateFindingRecommendationRequestIdString')
    GeneratedPolicy = Shapes::StructureShape.new(name: 'GeneratedPolicy')
    GeneratedPolicyList = Shapes::ListShape.new(name: 'GeneratedPolicyList')
    GeneratedPolicyProperties = Shapes::StructureShape.new(name: 'GeneratedPolicyProperties')
    GeneratedPolicyResult = Shapes::StructureShape.new(name: 'GeneratedPolicyResult')
    GetAccessPreviewRequest = Shapes::StructureShape.new(name: 'GetAccessPreviewRequest')
    GetAccessPreviewResponse = Shapes::StructureShape.new(name: 'GetAccessPreviewResponse')
    GetAnalyzedResourceRequest = Shapes::StructureShape.new(name: 'GetAnalyzedResourceRequest')
    GetAnalyzedResourceResponse = Shapes::StructureShape.new(name: 'GetAnalyzedResourceResponse')
    GetAnalyzerRequest = Shapes::StructureShape.new(name: 'GetAnalyzerRequest')
    GetAnalyzerResponse = Shapes::StructureShape.new(name: 'GetAnalyzerResponse')
    GetArchiveRuleRequest = Shapes::StructureShape.new(name: 'GetArchiveRuleRequest')
    GetArchiveRuleResponse = Shapes::StructureShape.new(name: 'GetArchiveRuleResponse')
    GetFindingRecommendationRequest = Shapes::StructureShape.new(name: 'GetFindingRecommendationRequest')
    GetFindingRecommendationRequestIdString = Shapes::StringShape.new(name: 'GetFindingRecommendationRequestIdString')
    GetFindingRecommendationRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'GetFindingRecommendationRequestMaxResultsInteger')
    GetFindingRecommendationResponse = Shapes::StructureShape.new(name: 'GetFindingRecommendationResponse')
    GetFindingRequest = Shapes::StructureShape.new(name: 'GetFindingRequest')
    GetFindingResponse = Shapes::StructureShape.new(name: 'GetFindingResponse')
    GetFindingV2Request = Shapes::StructureShape.new(name: 'GetFindingV2Request')
    GetFindingV2Response = Shapes::StructureShape.new(name: 'GetFindingV2Response')
    GetFindingsStatisticsRequest = Shapes::StructureShape.new(name: 'GetFindingsStatisticsRequest')
    GetFindingsStatisticsResponse = Shapes::StructureShape.new(name: 'GetFindingsStatisticsResponse')
    GetGeneratedPolicyRequest = Shapes::StructureShape.new(name: 'GetGeneratedPolicyRequest')
    GetGeneratedPolicyResponse = Shapes::StructureShape.new(name: 'GetGeneratedPolicyResponse')
    GranteePrincipal = Shapes::StringShape.new(name: 'GranteePrincipal')
    IamRoleConfiguration = Shapes::StructureShape.new(name: 'IamRoleConfiguration')
    IamTrustPolicy = Shapes::StringShape.new(name: 'IamTrustPolicy')
    InlineArchiveRule = Shapes::StructureShape.new(name: 'InlineArchiveRule')
    InlineArchiveRulesList = Shapes::ListShape.new(name: 'InlineArchiveRulesList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalAccessAnalysisRule = Shapes::StructureShape.new(name: 'InternalAccessAnalysisRule')
    InternalAccessAnalysisRuleCriteria = Shapes::StructureShape.new(name: 'InternalAccessAnalysisRuleCriteria')
    InternalAccessAnalysisRuleCriteriaList = Shapes::ListShape.new(name: 'InternalAccessAnalysisRuleCriteriaList')
    InternalAccessConfiguration = Shapes::StructureShape.new(name: 'InternalAccessConfiguration')
    InternalAccessDetails = Shapes::StructureShape.new(name: 'InternalAccessDetails')
    InternalAccessFindingsStatistics = Shapes::StructureShape.new(name: 'InternalAccessFindingsStatistics')
    InternalAccessResourceTypeDetails = Shapes::StructureShape.new(name: 'InternalAccessResourceTypeDetails')
    InternalAccessResourceTypeStatisticsMap = Shapes::MapShape.new(name: 'InternalAccessResourceTypeStatisticsMap')
    InternalAccessType = Shapes::StringShape.new(name: 'InternalAccessType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InternetConfiguration = Shapes::StructureShape.new(name: 'InternetConfiguration')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    IssueCode = Shapes::StringShape.new(name: 'IssueCode')
    IssuingAccount = Shapes::StringShape.new(name: 'IssuingAccount')
    JobDetails = Shapes::StructureShape.new(name: 'JobDetails')
    JobError = Shapes::StructureShape.new(name: 'JobError')
    JobErrorCode = Shapes::StringShape.new(name: 'JobErrorCode')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    KmsConstraintsKey = Shapes::StringShape.new(name: 'KmsConstraintsKey')
    KmsConstraintsMap = Shapes::MapShape.new(name: 'KmsConstraintsMap')
    KmsConstraintsValue = Shapes::StringShape.new(name: 'KmsConstraintsValue')
    KmsGrantConfiguration = Shapes::StructureShape.new(name: 'KmsGrantConfiguration')
    KmsGrantConfigurationsList = Shapes::ListShape.new(name: 'KmsGrantConfigurationsList')
    KmsGrantConstraints = Shapes::StructureShape.new(name: 'KmsGrantConstraints')
    KmsGrantOperation = Shapes::StringShape.new(name: 'KmsGrantOperation')
    KmsGrantOperationsList = Shapes::ListShape.new(name: 'KmsGrantOperationsList')
    KmsKeyConfiguration = Shapes::StructureShape.new(name: 'KmsKeyConfiguration')
    KmsKeyPoliciesMap = Shapes::MapShape.new(name: 'KmsKeyPoliciesMap')
    KmsKeyPolicy = Shapes::StringShape.new(name: 'KmsKeyPolicy')
    LearnMoreLink = Shapes::StringShape.new(name: 'LearnMoreLink')
    ListAccessPreviewFindingsRequest = Shapes::StructureShape.new(name: 'ListAccessPreviewFindingsRequest')
    ListAccessPreviewFindingsResponse = Shapes::StructureShape.new(name: 'ListAccessPreviewFindingsResponse')
    ListAccessPreviewsRequest = Shapes::StructureShape.new(name: 'ListAccessPreviewsRequest')
    ListAccessPreviewsResponse = Shapes::StructureShape.new(name: 'ListAccessPreviewsResponse')
    ListAnalyzedResourcesRequest = Shapes::StructureShape.new(name: 'ListAnalyzedResourcesRequest')
    ListAnalyzedResourcesResponse = Shapes::StructureShape.new(name: 'ListAnalyzedResourcesResponse')
    ListAnalyzersRequest = Shapes::StructureShape.new(name: 'ListAnalyzersRequest')
    ListAnalyzersResponse = Shapes::StructureShape.new(name: 'ListAnalyzersResponse')
    ListArchiveRulesRequest = Shapes::StructureShape.new(name: 'ListArchiveRulesRequest')
    ListArchiveRulesResponse = Shapes::StructureShape.new(name: 'ListArchiveRulesResponse')
    ListFindingsRequest = Shapes::StructureShape.new(name: 'ListFindingsRequest')
    ListFindingsResponse = Shapes::StructureShape.new(name: 'ListFindingsResponse')
    ListFindingsV2Request = Shapes::StructureShape.new(name: 'ListFindingsV2Request')
    ListFindingsV2Response = Shapes::StructureShape.new(name: 'ListFindingsV2Response')
    ListPolicyGenerationsRequest = Shapes::StructureShape.new(name: 'ListPolicyGenerationsRequest')
    ListPolicyGenerationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListPolicyGenerationsRequestMaxResultsInteger')
    ListPolicyGenerationsResponse = Shapes::StructureShape.new(name: 'ListPolicyGenerationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Locale = Shapes::StringShape.new(name: 'Locale')
    Location = Shapes::StructureShape.new(name: 'Location')
    LocationList = Shapes::ListShape.new(name: 'LocationList')
    Name = Shapes::StringShape.new(name: 'Name')
    NetworkOriginConfiguration = Shapes::UnionShape.new(name: 'NetworkOriginConfiguration')
    OrderBy = Shapes::StringShape.new(name: 'OrderBy')
    PathElement = Shapes::UnionShape.new(name: 'PathElement')
    PathElementList = Shapes::ListShape.new(name: 'PathElementList')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PolicyGeneration = Shapes::StructureShape.new(name: 'PolicyGeneration')
    PolicyGenerationDetails = Shapes::StructureShape.new(name: 'PolicyGenerationDetails')
    PolicyGenerationList = Shapes::ListShape.new(name: 'PolicyGenerationList')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyType = Shapes::StringShape.new(name: 'PolicyType')
    Position = Shapes::StructureShape.new(name: 'Position')
    PrincipalArn = Shapes::StringShape.new(name: 'PrincipalArn')
    PrincipalMap = Shapes::MapShape.new(name: 'PrincipalMap')
    PrincipalType = Shapes::StringShape.new(name: 'PrincipalType')
    RdsDbClusterSnapshotAccountId = Shapes::StringShape.new(name: 'RdsDbClusterSnapshotAccountId')
    RdsDbClusterSnapshotAccountIdsList = Shapes::ListShape.new(name: 'RdsDbClusterSnapshotAccountIdsList')
    RdsDbClusterSnapshotAttributeName = Shapes::StringShape.new(name: 'RdsDbClusterSnapshotAttributeName')
    RdsDbClusterSnapshotAttributeValue = Shapes::UnionShape.new(name: 'RdsDbClusterSnapshotAttributeValue')
    RdsDbClusterSnapshotAttributesMap = Shapes::MapShape.new(name: 'RdsDbClusterSnapshotAttributesMap')
    RdsDbClusterSnapshotConfiguration = Shapes::StructureShape.new(name: 'RdsDbClusterSnapshotConfiguration')
    RdsDbClusterSnapshotKmsKeyId = Shapes::StringShape.new(name: 'RdsDbClusterSnapshotKmsKeyId')
    RdsDbSnapshotAccountId = Shapes::StringShape.new(name: 'RdsDbSnapshotAccountId')
    RdsDbSnapshotAccountIdsList = Shapes::ListShape.new(name: 'RdsDbSnapshotAccountIdsList')
    RdsDbSnapshotAttributeName = Shapes::StringShape.new(name: 'RdsDbSnapshotAttributeName')
    RdsDbSnapshotAttributeValue = Shapes::UnionShape.new(name: 'RdsDbSnapshotAttributeValue')
    RdsDbSnapshotAttributesMap = Shapes::MapShape.new(name: 'RdsDbSnapshotAttributesMap')
    RdsDbSnapshotConfiguration = Shapes::StructureShape.new(name: 'RdsDbSnapshotConfiguration')
    RdsDbSnapshotKmsKeyId = Shapes::StringShape.new(name: 'RdsDbSnapshotKmsKeyId')
    ReasonCode = Shapes::StringShape.new(name: 'ReasonCode')
    ReasonSummary = Shapes::StructureShape.new(name: 'ReasonSummary')
    ReasonSummaryList = Shapes::ListShape.new(name: 'ReasonSummaryList')
    RecommendationError = Shapes::StructureShape.new(name: 'RecommendationError')
    RecommendationType = Shapes::StringShape.new(name: 'RecommendationType')
    RecommendedRemediationAction = Shapes::StringShape.new(name: 'RecommendedRemediationAction')
    RecommendedStep = Shapes::UnionShape.new(name: 'RecommendedStep')
    RecommendedStepList = Shapes::ListShape.new(name: 'RecommendedStepList')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    Resource = Shapes::StringShape.new(name: 'Resource')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnsList = Shapes::ListShape.new(name: 'ResourceArnsList')
    ResourceControlPolicyRestriction = Shapes::StringShape.new(name: 'ResourceControlPolicyRestriction')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeDetails = Shapes::StructureShape.new(name: 'ResourceTypeDetails')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    ResourceTypeStatisticsMap = Shapes::MapShape.new(name: 'ResourceTypeStatisticsMap')
    RetiringPrincipal = Shapes::StringShape.new(name: 'RetiringPrincipal')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3AccessPointConfiguration = Shapes::StructureShape.new(name: 'S3AccessPointConfiguration')
    S3AccessPointConfigurationsMap = Shapes::MapShape.new(name: 'S3AccessPointConfigurationsMap')
    S3BucketAclGrantConfiguration = Shapes::StructureShape.new(name: 'S3BucketAclGrantConfiguration')
    S3BucketAclGrantConfigurationsList = Shapes::ListShape.new(name: 'S3BucketAclGrantConfigurationsList')
    S3BucketConfiguration = Shapes::StructureShape.new(name: 'S3BucketConfiguration')
    S3BucketPolicy = Shapes::StringShape.new(name: 'S3BucketPolicy')
    S3ExpressDirectoryAccessPointArn = Shapes::StringShape.new(name: 'S3ExpressDirectoryAccessPointArn')
    S3ExpressDirectoryAccessPointConfiguration = Shapes::StructureShape.new(name: 'S3ExpressDirectoryAccessPointConfiguration')
    S3ExpressDirectoryAccessPointConfigurationsMap = Shapes::MapShape.new(name: 'S3ExpressDirectoryAccessPointConfigurationsMap')
    S3ExpressDirectoryBucketConfiguration = Shapes::StructureShape.new(name: 'S3ExpressDirectoryBucketConfiguration')
    S3ExpressDirectoryBucketPolicy = Shapes::StringShape.new(name: 'S3ExpressDirectoryBucketPolicy')
    S3PublicAccessBlockConfiguration = Shapes::StructureShape.new(name: 'S3PublicAccessBlockConfiguration')
    SecretsManagerSecretConfiguration = Shapes::StructureShape.new(name: 'SecretsManagerSecretConfiguration')
    SecretsManagerSecretKmsId = Shapes::StringShape.new(name: 'SecretsManagerSecretKmsId')
    SecretsManagerSecretPolicy = Shapes::StringShape.new(name: 'SecretsManagerSecretPolicy')
    ServiceControlPolicyRestriction = Shapes::StringShape.new(name: 'ServiceControlPolicyRestriction')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SharedViaList = Shapes::ListShape.new(name: 'SharedViaList')
    SnsTopicConfiguration = Shapes::StructureShape.new(name: 'SnsTopicConfiguration')
    SnsTopicPolicy = Shapes::StringShape.new(name: 'SnsTopicPolicy')
    SortCriteria = Shapes::StructureShape.new(name: 'SortCriteria')
    Span = Shapes::StructureShape.new(name: 'Span')
    SqsQueueConfiguration = Shapes::StructureShape.new(name: 'SqsQueueConfiguration')
    SqsQueuePolicy = Shapes::StringShape.new(name: 'SqsQueuePolicy')
    StartPolicyGenerationRequest = Shapes::StructureShape.new(name: 'StartPolicyGenerationRequest')
    StartPolicyGenerationResponse = Shapes::StructureShape.new(name: 'StartPolicyGenerationResponse')
    StartResourceScanRequest = Shapes::StructureShape.new(name: 'StartResourceScanRequest')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusReason = Shapes::StructureShape.new(name: 'StatusReason')
    String = Shapes::StringShape.new(name: 'String')
    Substring = Shapes::StructureShape.new(name: 'Substring')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagsList = Shapes::ListShape.new(name: 'TagsList')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    Token = Shapes::StringShape.new(name: 'Token')
    Trail = Shapes::StructureShape.new(name: 'Trail')
    TrailList = Shapes::ListShape.new(name: 'TrailList')
    TrailProperties = Shapes::StructureShape.new(name: 'TrailProperties')
    TrailPropertiesList = Shapes::ListShape.new(name: 'TrailPropertiesList')
    Type = Shapes::StringShape.new(name: 'Type')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UnusedAccessConfiguration = Shapes::StructureShape.new(name: 'UnusedAccessConfiguration')
    UnusedAccessFindingsStatistics = Shapes::StructureShape.new(name: 'UnusedAccessFindingsStatistics')
    UnusedAccessTypeStatistics = Shapes::StructureShape.new(name: 'UnusedAccessTypeStatistics')
    UnusedAccessTypeStatisticsList = Shapes::ListShape.new(name: 'UnusedAccessTypeStatisticsList')
    UnusedAction = Shapes::StructureShape.new(name: 'UnusedAction')
    UnusedActionList = Shapes::ListShape.new(name: 'UnusedActionList')
    UnusedIamRoleDetails = Shapes::StructureShape.new(name: 'UnusedIamRoleDetails')
    UnusedIamUserAccessKeyDetails = Shapes::StructureShape.new(name: 'UnusedIamUserAccessKeyDetails')
    UnusedIamUserPasswordDetails = Shapes::StructureShape.new(name: 'UnusedIamUserPasswordDetails')
    UnusedPermissionDetails = Shapes::StructureShape.new(name: 'UnusedPermissionDetails')
    UnusedPermissionsRecommendedStep = Shapes::StructureShape.new(name: 'UnusedPermissionsRecommendedStep')
    UpdateAnalyzerRequest = Shapes::StructureShape.new(name: 'UpdateAnalyzerRequest')
    UpdateAnalyzerResponse = Shapes::StructureShape.new(name: 'UpdateAnalyzerResponse')
    UpdateArchiveRuleRequest = Shapes::StructureShape.new(name: 'UpdateArchiveRuleRequest')
    UpdateFindingsRequest = Shapes::StructureShape.new(name: 'UpdateFindingsRequest')
    ValidatePolicyFinding = Shapes::StructureShape.new(name: 'ValidatePolicyFinding')
    ValidatePolicyFindingList = Shapes::ListShape.new(name: 'ValidatePolicyFindingList')
    ValidatePolicyFindingType = Shapes::StringShape.new(name: 'ValidatePolicyFindingType')
    ValidatePolicyRequest = Shapes::StructureShape.new(name: 'ValidatePolicyRequest')
    ValidatePolicyResourceType = Shapes::StringShape.new(name: 'ValidatePolicyResourceType')
    ValidatePolicyResponse = Shapes::StructureShape.new(name: 'ValidatePolicyResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    ValueList = Shapes::ListShape.new(name: 'ValueList')
    VpcConfiguration = Shapes::StructureShape.new(name: 'VpcConfiguration')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    Access.add_member(:actions, Shapes::ShapeRef.new(shape: AccessActionsList, location_name: "actions"))
    Access.add_member(:resources, Shapes::ShapeRef.new(shape: AccessResourcesList, location_name: "resources"))
    Access.struct_class = Types::Access

    AccessActionsList.member = Shapes::ShapeRef.new(shape: Action)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessPreview.add_member(:id, Shapes::ShapeRef.new(shape: AccessPreviewId, required: true, location_name: "id"))
    AccessPreview.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    AccessPreview.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationsMap, required: true, location_name: "configurations"))
    AccessPreview.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AccessPreview.add_member(:status, Shapes::ShapeRef.new(shape: AccessPreviewStatus, required: true, location_name: "status"))
    AccessPreview.add_member(:status_reason, Shapes::ShapeRef.new(shape: AccessPreviewStatusReason, location_name: "statusReason"))
    AccessPreview.struct_class = Types::AccessPreview

    AccessPreviewFinding.add_member(:id, Shapes::ShapeRef.new(shape: AccessPreviewFindingId, required: true, location_name: "id"))
    AccessPreviewFinding.add_member(:existing_finding_id, Shapes::ShapeRef.new(shape: FindingId, location_name: "existingFindingId"))
    AccessPreviewFinding.add_member(:existing_finding_status, Shapes::ShapeRef.new(shape: FindingStatus, location_name: "existingFindingStatus"))
    AccessPreviewFinding.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalMap, location_name: "principal"))
    AccessPreviewFinding.add_member(:action, Shapes::ShapeRef.new(shape: ActionList, location_name: "action"))
    AccessPreviewFinding.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: "condition"))
    AccessPreviewFinding.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    AccessPreviewFinding.add_member(:is_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPublic"))
    AccessPreviewFinding.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    AccessPreviewFinding.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AccessPreviewFinding.add_member(:change_type, Shapes::ShapeRef.new(shape: FindingChangeType, required: true, location_name: "changeType"))
    AccessPreviewFinding.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    AccessPreviewFinding.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    AccessPreviewFinding.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    AccessPreviewFinding.add_member(:sources, Shapes::ShapeRef.new(shape: FindingSourceList, location_name: "sources"))
    AccessPreviewFinding.add_member(:resource_control_policy_restriction, Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: "resourceControlPolicyRestriction"))
    AccessPreviewFinding.struct_class = Types::AccessPreviewFinding

    AccessPreviewFindingsList.member = Shapes::ShapeRef.new(shape: AccessPreviewFinding)

    AccessPreviewStatusReason.add_member(:code, Shapes::ShapeRef.new(shape: AccessPreviewStatusReasonCode, required: true, location_name: "code"))
    AccessPreviewStatusReason.struct_class = Types::AccessPreviewStatusReason

    AccessPreviewSummary.add_member(:id, Shapes::ShapeRef.new(shape: AccessPreviewId, required: true, location_name: "id"))
    AccessPreviewSummary.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    AccessPreviewSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AccessPreviewSummary.add_member(:status, Shapes::ShapeRef.new(shape: AccessPreviewStatus, required: true, location_name: "status"))
    AccessPreviewSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: AccessPreviewStatusReason, location_name: "statusReason"))
    AccessPreviewSummary.struct_class = Types::AccessPreviewSummary

    AccessPreviewsList.member = Shapes::ShapeRef.new(shape: AccessPreviewSummary)

    AccessResourcesList.member = Shapes::ShapeRef.new(shape: Resource)

    AccountAggregations.member = Shapes::ShapeRef.new(shape: FindingAggregationAccountDetails)

    AccountIdsList.member = Shapes::ShapeRef.new(shape: String)

    AclGrantee.add_member(:id, Shapes::ShapeRef.new(shape: AclCanonicalId, location_name: "id"))
    AclGrantee.add_member(:uri, Shapes::ShapeRef.new(shape: AclUri, location_name: "uri"))
    AclGrantee.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AclGrantee.add_member_subclass(:id, Types::AclGrantee::Id)
    AclGrantee.add_member_subclass(:uri, Types::AclGrantee::Uri)
    AclGrantee.add_member_subclass(:unknown, Types::AclGrantee::Unknown)
    AclGrantee.struct_class = Types::AclGrantee

    ActionList.member = Shapes::ShapeRef.new(shape: String)

    AnalysisRule.add_member(:exclusions, Shapes::ShapeRef.new(shape: AnalysisRuleCriteriaList, location_name: "exclusions"))
    AnalysisRule.struct_class = Types::AnalysisRule

    AnalysisRuleCriteria.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdsList, location_name: "accountIds"))
    AnalysisRuleCriteria.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "resourceTags"))
    AnalysisRuleCriteria.struct_class = Types::AnalysisRuleCriteria

    AnalysisRuleCriteriaList.member = Shapes::ShapeRef.new(shape: AnalysisRuleCriteria)

    AnalyzedResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    AnalyzedResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    AnalyzedResource.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AnalyzedResource.add_member(:analyzed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "analyzedAt"))
    AnalyzedResource.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AnalyzedResource.add_member(:is_public, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isPublic"))
    AnalyzedResource.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, location_name: "actions"))
    AnalyzedResource.add_member(:shared_via, Shapes::ShapeRef.new(shape: SharedViaList, location_name: "sharedVia"))
    AnalyzedResource.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, location_name: "status"))
    AnalyzedResource.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    AnalyzedResource.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    AnalyzedResource.struct_class = Types::AnalyzedResource

    AnalyzedResourceSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    AnalyzedResourceSummary.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    AnalyzedResourceSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    AnalyzedResourceSummary.struct_class = Types::AnalyzedResourceSummary

    AnalyzedResourcesList.member = Shapes::ShapeRef.new(shape: AnalyzedResourceSummary)

    AnalyzerConfiguration.add_member(:unused_access, Shapes::ShapeRef.new(shape: UnusedAccessConfiguration, location_name: "unusedAccess"))
    AnalyzerConfiguration.add_member(:internal_access, Shapes::ShapeRef.new(shape: InternalAccessConfiguration, location_name: "internalAccess"))
    AnalyzerConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalyzerConfiguration.add_member_subclass(:unused_access, Types::AnalyzerConfiguration::UnusedAccess)
    AnalyzerConfiguration.add_member_subclass(:internal_access, Types::AnalyzerConfiguration::InternalAccess)
    AnalyzerConfiguration.add_member_subclass(:unknown, Types::AnalyzerConfiguration::Unknown)
    AnalyzerConfiguration.struct_class = Types::AnalyzerConfiguration

    AnalyzerSummary.add_member(:arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "arn"))
    AnalyzerSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AnalyzerSummary.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "type"))
    AnalyzerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AnalyzerSummary.add_member(:last_resource_analyzed, Shapes::ShapeRef.new(shape: String, location_name: "lastResourceAnalyzed"))
    AnalyzerSummary.add_member(:last_resource_analyzed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastResourceAnalyzedAt"))
    AnalyzerSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    AnalyzerSummary.add_member(:status, Shapes::ShapeRef.new(shape: AnalyzerStatus, required: true, location_name: "status"))
    AnalyzerSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    AnalyzerSummary.add_member(:configuration, Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: "configuration"))
    AnalyzerSummary.struct_class = Types::AnalyzerSummary

    AnalyzersList.member = Shapes::ShapeRef.new(shape: AnalyzerSummary)

    ApplyArchiveRuleRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    ApplyArchiveRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "ruleName"))
    ApplyArchiveRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ApplyArchiveRuleRequest.struct_class = Types::ApplyArchiveRuleRequest

    ArchiveRuleSummary.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "ruleName"))
    ArchiveRuleSummary.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, required: true, location_name: "filter"))
    ArchiveRuleSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ArchiveRuleSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ArchiveRuleSummary.struct_class = Types::ArchiveRuleSummary

    ArchiveRulesList.member = Shapes::ShapeRef.new(shape: ArchiveRuleSummary)

    CancelPolicyGenerationRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    CancelPolicyGenerationRequest.struct_class = Types::CancelPolicyGenerationRequest

    CancelPolicyGenerationResponse.struct_class = Types::CancelPolicyGenerationResponse

    CheckAccessNotGrantedRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, required: true, location_name: "policyDocument"))
    CheckAccessNotGrantedRequest.add_member(:access, Shapes::ShapeRef.new(shape: CheckAccessNotGrantedRequestAccessList, required: true, location_name: "access"))
    CheckAccessNotGrantedRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: AccessCheckPolicyType, required: true, location_name: "policyType"))
    CheckAccessNotGrantedRequest.struct_class = Types::CheckAccessNotGrantedRequest

    CheckAccessNotGrantedRequestAccessList.member = Shapes::ShapeRef.new(shape: Access)

    CheckAccessNotGrantedResponse.add_member(:result, Shapes::ShapeRef.new(shape: CheckAccessNotGrantedResult, location_name: "result"))
    CheckAccessNotGrantedResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    CheckAccessNotGrantedResponse.add_member(:reasons, Shapes::ShapeRef.new(shape: ReasonSummaryList, location_name: "reasons"))
    CheckAccessNotGrantedResponse.struct_class = Types::CheckAccessNotGrantedResponse

    CheckNoNewAccessRequest.add_member(:new_policy_document, Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, required: true, location_name: "newPolicyDocument"))
    CheckNoNewAccessRequest.add_member(:existing_policy_document, Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, required: true, location_name: "existingPolicyDocument"))
    CheckNoNewAccessRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: AccessCheckPolicyType, required: true, location_name: "policyType"))
    CheckNoNewAccessRequest.struct_class = Types::CheckNoNewAccessRequest

    CheckNoNewAccessResponse.add_member(:result, Shapes::ShapeRef.new(shape: CheckNoNewAccessResult, location_name: "result"))
    CheckNoNewAccessResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    CheckNoNewAccessResponse.add_member(:reasons, Shapes::ShapeRef.new(shape: ReasonSummaryList, location_name: "reasons"))
    CheckNoNewAccessResponse.struct_class = Types::CheckNoNewAccessResponse

    CheckNoPublicAccessRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, required: true, location_name: "policyDocument"))
    CheckNoPublicAccessRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: AccessCheckResourceType, required: true, location_name: "resourceType"))
    CheckNoPublicAccessRequest.struct_class = Types::CheckNoPublicAccessRequest

    CheckNoPublicAccessResponse.add_member(:result, Shapes::ShapeRef.new(shape: CheckNoPublicAccessResult, location_name: "result"))
    CheckNoPublicAccessResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    CheckNoPublicAccessResponse.add_member(:reasons, Shapes::ShapeRef.new(shape: ReasonSummaryList, location_name: "reasons"))
    CheckNoPublicAccessResponse.struct_class = Types::CheckNoPublicAccessResponse

    CloudTrailDetails.add_member(:trails, Shapes::ShapeRef.new(shape: TrailList, required: true, location_name: "trails"))
    CloudTrailDetails.add_member(:access_role, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "accessRole"))
    CloudTrailDetails.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    CloudTrailDetails.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    CloudTrailDetails.struct_class = Types::CloudTrailDetails

    CloudTrailProperties.add_member(:trail_properties, Shapes::ShapeRef.new(shape: TrailPropertiesList, required: true, location_name: "trailProperties"))
    CloudTrailProperties.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    CloudTrailProperties.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    CloudTrailProperties.struct_class = Types::CloudTrailProperties

    ConditionKeyMap.key = Shapes::ShapeRef.new(shape: String)
    ConditionKeyMap.value = Shapes::ShapeRef.new(shape: String)

    Configuration.add_member(:ebs_snapshot, Shapes::ShapeRef.new(shape: EbsSnapshotConfiguration, location_name: "ebsSnapshot"))
    Configuration.add_member(:ecr_repository, Shapes::ShapeRef.new(shape: EcrRepositoryConfiguration, location_name: "ecrRepository"))
    Configuration.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRoleConfiguration, location_name: "iamRole"))
    Configuration.add_member(:efs_file_system, Shapes::ShapeRef.new(shape: EfsFileSystemConfiguration, location_name: "efsFileSystem"))
    Configuration.add_member(:kms_key, Shapes::ShapeRef.new(shape: KmsKeyConfiguration, location_name: "kmsKey"))
    Configuration.add_member(:rds_db_cluster_snapshot, Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotConfiguration, location_name: "rdsDbClusterSnapshot"))
    Configuration.add_member(:rds_db_snapshot, Shapes::ShapeRef.new(shape: RdsDbSnapshotConfiguration, location_name: "rdsDbSnapshot"))
    Configuration.add_member(:secrets_manager_secret, Shapes::ShapeRef.new(shape: SecretsManagerSecretConfiguration, location_name: "secretsManagerSecret"))
    Configuration.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3BucketConfiguration, location_name: "s3Bucket"))
    Configuration.add_member(:sns_topic, Shapes::ShapeRef.new(shape: SnsTopicConfiguration, location_name: "snsTopic"))
    Configuration.add_member(:sqs_queue, Shapes::ShapeRef.new(shape: SqsQueueConfiguration, location_name: "sqsQueue"))
    Configuration.add_member(:s3_express_directory_bucket, Shapes::ShapeRef.new(shape: S3ExpressDirectoryBucketConfiguration, location_name: "s3ExpressDirectoryBucket"))
    Configuration.add_member(:dynamodb_stream, Shapes::ShapeRef.new(shape: DynamodbStreamConfiguration, location_name: "dynamodbStream"))
    Configuration.add_member(:dynamodb_table, Shapes::ShapeRef.new(shape: DynamodbTableConfiguration, location_name: "dynamodbTable"))
    Configuration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Configuration.add_member_subclass(:ebs_snapshot, Types::Configuration::EbsSnapshot)
    Configuration.add_member_subclass(:ecr_repository, Types::Configuration::EcrRepository)
    Configuration.add_member_subclass(:iam_role, Types::Configuration::IamRole)
    Configuration.add_member_subclass(:efs_file_system, Types::Configuration::EfsFileSystem)
    Configuration.add_member_subclass(:kms_key, Types::Configuration::KmsKey)
    Configuration.add_member_subclass(:rds_db_cluster_snapshot, Types::Configuration::RdsDbClusterSnapshot)
    Configuration.add_member_subclass(:rds_db_snapshot, Types::Configuration::RdsDbSnapshot)
    Configuration.add_member_subclass(:secrets_manager_secret, Types::Configuration::SecretsManagerSecret)
    Configuration.add_member_subclass(:s3_bucket, Types::Configuration::S3Bucket)
    Configuration.add_member_subclass(:sns_topic, Types::Configuration::SnsTopic)
    Configuration.add_member_subclass(:sqs_queue, Types::Configuration::SqsQueue)
    Configuration.add_member_subclass(:s3_express_directory_bucket, Types::Configuration::S3ExpressDirectoryBucket)
    Configuration.add_member_subclass(:dynamodb_stream, Types::Configuration::DynamodbStream)
    Configuration.add_member_subclass(:dynamodb_table, Types::Configuration::DynamodbTable)
    Configuration.add_member_subclass(:unknown, Types::Configuration::Unknown)
    Configuration.struct_class = Types::Configuration

    ConfigurationsMap.key = Shapes::ShapeRef.new(shape: ConfigurationsMapKey)
    ConfigurationsMap.value = Shapes::ShapeRef.new(shape: Configuration)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateAccessPreviewRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    CreateAccessPreviewRequest.add_member(:configurations, Shapes::ShapeRef.new(shape: ConfigurationsMap, required: true, location_name: "configurations"))
    CreateAccessPreviewRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAccessPreviewRequest.struct_class = Types::CreateAccessPreviewRequest

    CreateAccessPreviewResponse.add_member(:id, Shapes::ShapeRef.new(shape: AccessPreviewId, required: true, location_name: "id"))
    CreateAccessPreviewResponse.struct_class = Types::CreateAccessPreviewResponse

    CreateAnalyzerRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "analyzerName"))
    CreateAnalyzerRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "type"))
    CreateAnalyzerRequest.add_member(:archive_rules, Shapes::ShapeRef.new(shape: InlineArchiveRulesList, location_name: "archiveRules"))
    CreateAnalyzerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateAnalyzerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAnalyzerRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: "configuration"))
    CreateAnalyzerRequest.struct_class = Types::CreateAnalyzerRequest

    CreateAnalyzerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: "arn"))
    CreateAnalyzerResponse.struct_class = Types::CreateAnalyzerResponse

    CreateArchiveRuleRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    CreateArchiveRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "ruleName"))
    CreateArchiveRuleRequest.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, required: true, location_name: "filter"))
    CreateArchiveRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateArchiveRuleRequest.struct_class = Types::CreateArchiveRuleRequest

    Criterion.add_member(:eq, Shapes::ShapeRef.new(shape: ValueList, location_name: "eq"))
    Criterion.add_member(:neq, Shapes::ShapeRef.new(shape: ValueList, location_name: "neq"))
    Criterion.add_member(:contains, Shapes::ShapeRef.new(shape: ValueList, location_name: "contains"))
    Criterion.add_member(:exists, Shapes::ShapeRef.new(shape: Boolean, location_name: "exists"))
    Criterion.struct_class = Types::Criterion

    DeleteAnalyzerRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    DeleteAnalyzerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAnalyzerRequest.struct_class = Types::DeleteAnalyzerRequest

    DeleteArchiveRuleRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    DeleteArchiveRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ruleName"))
    DeleteArchiveRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteArchiveRuleRequest.struct_class = Types::DeleteArchiveRuleRequest

    DynamodbStreamConfiguration.add_member(:stream_policy, Shapes::ShapeRef.new(shape: DynamodbStreamPolicy, location_name: "streamPolicy"))
    DynamodbStreamConfiguration.struct_class = Types::DynamodbStreamConfiguration

    DynamodbTableConfiguration.add_member(:table_policy, Shapes::ShapeRef.new(shape: DynamodbTablePolicy, location_name: "tablePolicy"))
    DynamodbTableConfiguration.struct_class = Types::DynamodbTableConfiguration

    EbsGroupList.member = Shapes::ShapeRef.new(shape: EbsGroup)

    EbsSnapshotConfiguration.add_member(:user_ids, Shapes::ShapeRef.new(shape: EbsUserIdList, location_name: "userIds"))
    EbsSnapshotConfiguration.add_member(:groups, Shapes::ShapeRef.new(shape: EbsGroupList, location_name: "groups"))
    EbsSnapshotConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EbsSnapshotDataEncryptionKeyId, location_name: "kmsKeyId"))
    EbsSnapshotConfiguration.struct_class = Types::EbsSnapshotConfiguration

    EbsUserIdList.member = Shapes::ShapeRef.new(shape: EbsUserId)

    EcrRepositoryConfiguration.add_member(:repository_policy, Shapes::ShapeRef.new(shape: EcrRepositoryPolicy, location_name: "repositoryPolicy"))
    EcrRepositoryConfiguration.struct_class = Types::EcrRepositoryConfiguration

    EfsFileSystemConfiguration.add_member(:file_system_policy, Shapes::ShapeRef.new(shape: EfsFileSystemPolicy, location_name: "fileSystemPolicy"))
    EfsFileSystemConfiguration.struct_class = Types::EfsFileSystemConfiguration

    ExternalAccessDetails.add_member(:action, Shapes::ShapeRef.new(shape: ActionList, location_name: "action"))
    ExternalAccessDetails.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionKeyMap, required: true, location_name: "condition"))
    ExternalAccessDetails.add_member(:is_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPublic"))
    ExternalAccessDetails.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalMap, location_name: "principal"))
    ExternalAccessDetails.add_member(:sources, Shapes::ShapeRef.new(shape: FindingSourceList, location_name: "sources"))
    ExternalAccessDetails.add_member(:resource_control_policy_restriction, Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: "resourceControlPolicyRestriction"))
    ExternalAccessDetails.struct_class = Types::ExternalAccessDetails

    ExternalAccessFindingsStatistics.add_member(:resource_type_statistics, Shapes::ShapeRef.new(shape: ResourceTypeStatisticsMap, location_name: "resourceTypeStatistics"))
    ExternalAccessFindingsStatistics.add_member(:total_active_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalActiveFindings"))
    ExternalAccessFindingsStatistics.add_member(:total_archived_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalArchivedFindings"))
    ExternalAccessFindingsStatistics.add_member(:total_resolved_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalResolvedFindings"))
    ExternalAccessFindingsStatistics.struct_class = Types::ExternalAccessFindingsStatistics

    FilterCriteriaMap.key = Shapes::ShapeRef.new(shape: String)
    FilterCriteriaMap.value = Shapes::ShapeRef.new(shape: Criterion)

    Finding.add_member(:id, Shapes::ShapeRef.new(shape: FindingId, required: true, location_name: "id"))
    Finding.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalMap, location_name: "principal"))
    Finding.add_member(:action, Shapes::ShapeRef.new(shape: ActionList, location_name: "action"))
    Finding.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    Finding.add_member(:is_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPublic"))
    Finding.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    Finding.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionKeyMap, required: true, location_name: "condition"))
    Finding.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Finding.add_member(:analyzed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "analyzedAt"))
    Finding.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    Finding.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    Finding.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    Finding.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    Finding.add_member(:sources, Shapes::ShapeRef.new(shape: FindingSourceList, location_name: "sources"))
    Finding.add_member(:resource_control_policy_restriction, Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: "resourceControlPolicyRestriction"))
    Finding.struct_class = Types::Finding

    FindingAggregationAccountDetails.add_member(:account, Shapes::ShapeRef.new(shape: String, location_name: "account"))
    FindingAggregationAccountDetails.add_member(:number_of_active_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfActiveFindings"))
    FindingAggregationAccountDetails.add_member(:details, Shapes::ShapeRef.new(shape: FindingAggregationAccountDetailsMap, location_name: "details"))
    FindingAggregationAccountDetails.struct_class = Types::FindingAggregationAccountDetails

    FindingAggregationAccountDetailsMap.key = Shapes::ShapeRef.new(shape: String)
    FindingAggregationAccountDetailsMap.value = Shapes::ShapeRef.new(shape: Integer)

    FindingDetails.add_member(:internal_access_details, Shapes::ShapeRef.new(shape: InternalAccessDetails, location_name: "internalAccessDetails"))
    FindingDetails.add_member(:external_access_details, Shapes::ShapeRef.new(shape: ExternalAccessDetails, location_name: "externalAccessDetails"))
    FindingDetails.add_member(:unused_permission_details, Shapes::ShapeRef.new(shape: UnusedPermissionDetails, location_name: "unusedPermissionDetails"))
    FindingDetails.add_member(:unused_iam_user_access_key_details, Shapes::ShapeRef.new(shape: UnusedIamUserAccessKeyDetails, location_name: "unusedIamUserAccessKeyDetails"))
    FindingDetails.add_member(:unused_iam_role_details, Shapes::ShapeRef.new(shape: UnusedIamRoleDetails, location_name: "unusedIamRoleDetails"))
    FindingDetails.add_member(:unused_iam_user_password_details, Shapes::ShapeRef.new(shape: UnusedIamUserPasswordDetails, location_name: "unusedIamUserPasswordDetails"))
    FindingDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FindingDetails.add_member_subclass(:internal_access_details, Types::FindingDetails::InternalAccessDetails)
    FindingDetails.add_member_subclass(:external_access_details, Types::FindingDetails::ExternalAccessDetails)
    FindingDetails.add_member_subclass(:unused_permission_details, Types::FindingDetails::UnusedPermissionDetails)
    FindingDetails.add_member_subclass(:unused_iam_user_access_key_details, Types::FindingDetails::UnusedIamUserAccessKeyDetails)
    FindingDetails.add_member_subclass(:unused_iam_role_details, Types::FindingDetails::UnusedIamRoleDetails)
    FindingDetails.add_member_subclass(:unused_iam_user_password_details, Types::FindingDetails::UnusedIamUserPasswordDetails)
    FindingDetails.add_member_subclass(:unknown, Types::FindingDetails::Unknown)
    FindingDetails.struct_class = Types::FindingDetails

    FindingDetailsList.member = Shapes::ShapeRef.new(shape: FindingDetails)

    FindingIdList.member = Shapes::ShapeRef.new(shape: FindingId)

    FindingSource.add_member(:type, Shapes::ShapeRef.new(shape: FindingSourceType, required: true, location_name: "type"))
    FindingSource.add_member(:detail, Shapes::ShapeRef.new(shape: FindingSourceDetail, location_name: "detail"))
    FindingSource.struct_class = Types::FindingSource

    FindingSourceDetail.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: String, location_name: "accessPointArn"))
    FindingSourceDetail.add_member(:access_point_account, Shapes::ShapeRef.new(shape: String, location_name: "accessPointAccount"))
    FindingSourceDetail.struct_class = Types::FindingSourceDetail

    FindingSourceList.member = Shapes::ShapeRef.new(shape: FindingSource)

    FindingSummary.add_member(:id, Shapes::ShapeRef.new(shape: FindingId, required: true, location_name: "id"))
    FindingSummary.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalMap, location_name: "principal"))
    FindingSummary.add_member(:action, Shapes::ShapeRef.new(shape: ActionList, location_name: "action"))
    FindingSummary.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    FindingSummary.add_member(:is_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPublic"))
    FindingSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    FindingSummary.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionKeyMap, required: true, location_name: "condition"))
    FindingSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    FindingSummary.add_member(:analyzed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "analyzedAt"))
    FindingSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    FindingSummary.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    FindingSummary.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    FindingSummary.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    FindingSummary.add_member(:sources, Shapes::ShapeRef.new(shape: FindingSourceList, location_name: "sources"))
    FindingSummary.add_member(:resource_control_policy_restriction, Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: "resourceControlPolicyRestriction"))
    FindingSummary.struct_class = Types::FindingSummary

    FindingSummaryV2.add_member(:analyzed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "analyzedAt"))
    FindingSummaryV2.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    FindingSummaryV2.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    FindingSummaryV2.add_member(:id, Shapes::ShapeRef.new(shape: FindingId, required: true, location_name: "id"))
    FindingSummaryV2.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    FindingSummaryV2.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    FindingSummaryV2.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    FindingSummaryV2.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    FindingSummaryV2.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    FindingSummaryV2.add_member(:finding_type, Shapes::ShapeRef.new(shape: FindingType, location_name: "findingType"))
    FindingSummaryV2.struct_class = Types::FindingSummaryV2

    FindingsList.member = Shapes::ShapeRef.new(shape: FindingSummary)

    FindingsListV2.member = Shapes::ShapeRef.new(shape: FindingSummaryV2)

    FindingsStatistics.add_member(:external_access_findings_statistics, Shapes::ShapeRef.new(shape: ExternalAccessFindingsStatistics, location_name: "externalAccessFindingsStatistics"))
    FindingsStatistics.add_member(:internal_access_findings_statistics, Shapes::ShapeRef.new(shape: InternalAccessFindingsStatistics, location_name: "internalAccessFindingsStatistics"))
    FindingsStatistics.add_member(:unused_access_findings_statistics, Shapes::ShapeRef.new(shape: UnusedAccessFindingsStatistics, location_name: "unusedAccessFindingsStatistics"))
    FindingsStatistics.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FindingsStatistics.add_member_subclass(:external_access_findings_statistics, Types::FindingsStatistics::ExternalAccessFindingsStatistics)
    FindingsStatistics.add_member_subclass(:internal_access_findings_statistics, Types::FindingsStatistics::InternalAccessFindingsStatistics)
    FindingsStatistics.add_member_subclass(:unused_access_findings_statistics, Types::FindingsStatistics::UnusedAccessFindingsStatistics)
    FindingsStatistics.add_member_subclass(:unknown, Types::FindingsStatistics::Unknown)
    FindingsStatistics.struct_class = Types::FindingsStatistics

    FindingsStatisticsList.member = Shapes::ShapeRef.new(shape: FindingsStatistics)

    GenerateFindingRecommendationRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location: "querystring", location_name: "analyzerArn"))
    GenerateFindingRecommendationRequest.add_member(:id, Shapes::ShapeRef.new(shape: GenerateFindingRecommendationRequestIdString, required: true, location: "uri", location_name: "id"))
    GenerateFindingRecommendationRequest.struct_class = Types::GenerateFindingRecommendationRequest

    GeneratedPolicy.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policy"))
    GeneratedPolicy.struct_class = Types::GeneratedPolicy

    GeneratedPolicyList.member = Shapes::ShapeRef.new(shape: GeneratedPolicy)

    GeneratedPolicyProperties.add_member(:is_complete, Shapes::ShapeRef.new(shape: Boolean, location_name: "isComplete"))
    GeneratedPolicyProperties.add_member(:principal_arn, Shapes::ShapeRef.new(shape: PrincipalArn, required: true, location_name: "principalArn"))
    GeneratedPolicyProperties.add_member(:cloud_trail_properties, Shapes::ShapeRef.new(shape: CloudTrailProperties, location_name: "cloudTrailProperties"))
    GeneratedPolicyProperties.struct_class = Types::GeneratedPolicyProperties

    GeneratedPolicyResult.add_member(:properties, Shapes::ShapeRef.new(shape: GeneratedPolicyProperties, required: true, location_name: "properties"))
    GeneratedPolicyResult.add_member(:generated_policies, Shapes::ShapeRef.new(shape: GeneratedPolicyList, location_name: "generatedPolicies"))
    GeneratedPolicyResult.struct_class = Types::GeneratedPolicyResult

    GetAccessPreviewRequest.add_member(:access_preview_id, Shapes::ShapeRef.new(shape: AccessPreviewId, required: true, location: "uri", location_name: "accessPreviewId"))
    GetAccessPreviewRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location: "querystring", location_name: "analyzerArn"))
    GetAccessPreviewRequest.struct_class = Types::GetAccessPreviewRequest

    GetAccessPreviewResponse.add_member(:access_preview, Shapes::ShapeRef.new(shape: AccessPreview, required: true, location_name: "accessPreview"))
    GetAccessPreviewResponse.struct_class = Types::GetAccessPreviewResponse

    GetAnalyzedResourceRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location: "querystring", location_name: "analyzerArn"))
    GetAnalyzedResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "querystring", location_name: "resourceArn"))
    GetAnalyzedResourceRequest.struct_class = Types::GetAnalyzedResourceRequest

    GetAnalyzedResourceResponse.add_member(:resource, Shapes::ShapeRef.new(shape: AnalyzedResource, location_name: "resource"))
    GetAnalyzedResourceResponse.struct_class = Types::GetAnalyzedResourceResponse

    GetAnalyzerRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    GetAnalyzerRequest.struct_class = Types::GetAnalyzerRequest

    GetAnalyzerResponse.add_member(:analyzer, Shapes::ShapeRef.new(shape: AnalyzerSummary, required: true, location_name: "analyzer"))
    GetAnalyzerResponse.struct_class = Types::GetAnalyzerResponse

    GetArchiveRuleRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    GetArchiveRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ruleName"))
    GetArchiveRuleRequest.struct_class = Types::GetArchiveRuleRequest

    GetArchiveRuleResponse.add_member(:archive_rule, Shapes::ShapeRef.new(shape: ArchiveRuleSummary, required: true, location_name: "archiveRule"))
    GetArchiveRuleResponse.struct_class = Types::GetArchiveRuleResponse

    GetFindingRecommendationRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location: "querystring", location_name: "analyzerArn"))
    GetFindingRecommendationRequest.add_member(:id, Shapes::ShapeRef.new(shape: GetFindingRecommendationRequestIdString, required: true, location: "uri", location_name: "id"))
    GetFindingRecommendationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: GetFindingRecommendationRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    GetFindingRecommendationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    GetFindingRecommendationRequest.struct_class = Types::GetFindingRecommendationRequest

    GetFindingRecommendationResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedAt"))
    GetFindingRecommendationResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedAt"))
    GetFindingRecommendationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    GetFindingRecommendationResponse.add_member(:error, Shapes::ShapeRef.new(shape: RecommendationError, location_name: "error"))
    GetFindingRecommendationResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    GetFindingRecommendationResponse.add_member(:recommended_steps, Shapes::ShapeRef.new(shape: RecommendedStepList, location_name: "recommendedSteps"))
    GetFindingRecommendationResponse.add_member(:recommendation_type, Shapes::ShapeRef.new(shape: RecommendationType, required: true, location_name: "recommendationType"))
    GetFindingRecommendationResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    GetFindingRecommendationResponse.struct_class = Types::GetFindingRecommendationResponse

    GetFindingRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location: "querystring", location_name: "analyzerArn"))
    GetFindingRequest.add_member(:id, Shapes::ShapeRef.new(shape: FindingId, required: true, location: "uri", location_name: "id"))
    GetFindingRequest.struct_class = Types::GetFindingRequest

    GetFindingResponse.add_member(:finding, Shapes::ShapeRef.new(shape: Finding, location_name: "finding"))
    GetFindingResponse.struct_class = Types::GetFindingResponse

    GetFindingV2Request.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location: "querystring", location_name: "analyzerArn"))
    GetFindingV2Request.add_member(:id, Shapes::ShapeRef.new(shape: FindingId, required: true, location: "uri", location_name: "id"))
    GetFindingV2Request.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    GetFindingV2Request.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    GetFindingV2Request.struct_class = Types::GetFindingV2Request

    GetFindingV2Response.add_member(:analyzed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "analyzedAt"))
    GetFindingV2Response.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetFindingV2Response.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    GetFindingV2Response.add_member(:id, Shapes::ShapeRef.new(shape: FindingId, required: true, location_name: "id"))
    GetFindingV2Response.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    GetFindingV2Response.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    GetFindingV2Response.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    GetFindingV2Response.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    GetFindingV2Response.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    GetFindingV2Response.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    GetFindingV2Response.add_member(:finding_details, Shapes::ShapeRef.new(shape: FindingDetailsList, required: true, location_name: "findingDetails"))
    GetFindingV2Response.add_member(:finding_type, Shapes::ShapeRef.new(shape: FindingType, location_name: "findingType"))
    GetFindingV2Response.struct_class = Types::GetFindingV2Response

    GetFindingsStatisticsRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    GetFindingsStatisticsRequest.struct_class = Types::GetFindingsStatisticsRequest

    GetFindingsStatisticsResponse.add_member(:findings_statistics, Shapes::ShapeRef.new(shape: FindingsStatisticsList, location_name: "findingsStatistics"))
    GetFindingsStatisticsResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetFindingsStatisticsResponse.struct_class = Types::GetFindingsStatisticsResponse

    GetGeneratedPolicyRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetGeneratedPolicyRequest.add_member(:include_resource_placeholders, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeResourcePlaceholders"))
    GetGeneratedPolicyRequest.add_member(:include_service_level_template, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeServiceLevelTemplate"))
    GetGeneratedPolicyRequest.struct_class = Types::GetGeneratedPolicyRequest

    GetGeneratedPolicyResponse.add_member(:job_details, Shapes::ShapeRef.new(shape: JobDetails, required: true, location_name: "jobDetails"))
    GetGeneratedPolicyResponse.add_member(:generated_policy_result, Shapes::ShapeRef.new(shape: GeneratedPolicyResult, required: true, location_name: "generatedPolicyResult"))
    GetGeneratedPolicyResponse.struct_class = Types::GetGeneratedPolicyResponse

    IamRoleConfiguration.add_member(:trust_policy, Shapes::ShapeRef.new(shape: IamTrustPolicy, location_name: "trustPolicy"))
    IamRoleConfiguration.struct_class = Types::IamRoleConfiguration

    InlineArchiveRule.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "ruleName"))
    InlineArchiveRule.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, required: true, location_name: "filter"))
    InlineArchiveRule.struct_class = Types::InlineArchiveRule

    InlineArchiveRulesList.member = Shapes::ShapeRef.new(shape: InlineArchiveRule)

    InternalAccessAnalysisRule.add_member(:inclusions, Shapes::ShapeRef.new(shape: InternalAccessAnalysisRuleCriteriaList, location_name: "inclusions"))
    InternalAccessAnalysisRule.struct_class = Types::InternalAccessAnalysisRule

    InternalAccessAnalysisRuleCriteria.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdsList, location_name: "accountIds"))
    InternalAccessAnalysisRuleCriteria.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "resourceTypes"))
    InternalAccessAnalysisRuleCriteria.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnsList, location_name: "resourceArns"))
    InternalAccessAnalysisRuleCriteria.struct_class = Types::InternalAccessAnalysisRuleCriteria

    InternalAccessAnalysisRuleCriteriaList.member = Shapes::ShapeRef.new(shape: InternalAccessAnalysisRuleCriteria)

    InternalAccessConfiguration.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: InternalAccessAnalysisRule, location_name: "analysisRule"))
    InternalAccessConfiguration.struct_class = Types::InternalAccessConfiguration

    InternalAccessDetails.add_member(:action, Shapes::ShapeRef.new(shape: ActionList, location_name: "action"))
    InternalAccessDetails.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: "condition"))
    InternalAccessDetails.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalMap, location_name: "principal"))
    InternalAccessDetails.add_member(:principal_owner_account, Shapes::ShapeRef.new(shape: String, location_name: "principalOwnerAccount"))
    InternalAccessDetails.add_member(:access_type, Shapes::ShapeRef.new(shape: InternalAccessType, location_name: "accessType"))
    InternalAccessDetails.add_member(:principal_type, Shapes::ShapeRef.new(shape: PrincipalType, location_name: "principalType"))
    InternalAccessDetails.add_member(:sources, Shapes::ShapeRef.new(shape: FindingSourceList, location_name: "sources"))
    InternalAccessDetails.add_member(:resource_control_policy_restriction, Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: "resourceControlPolicyRestriction"))
    InternalAccessDetails.add_member(:service_control_policy_restriction, Shapes::ShapeRef.new(shape: ServiceControlPolicyRestriction, location_name: "serviceControlPolicyRestriction"))
    InternalAccessDetails.struct_class = Types::InternalAccessDetails

    InternalAccessFindingsStatistics.add_member(:resource_type_statistics, Shapes::ShapeRef.new(shape: InternalAccessResourceTypeStatisticsMap, location_name: "resourceTypeStatistics"))
    InternalAccessFindingsStatistics.add_member(:total_active_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalActiveFindings"))
    InternalAccessFindingsStatistics.add_member(:total_archived_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalArchivedFindings"))
    InternalAccessFindingsStatistics.add_member(:total_resolved_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalResolvedFindings"))
    InternalAccessFindingsStatistics.struct_class = Types::InternalAccessFindingsStatistics

    InternalAccessResourceTypeDetails.add_member(:total_active_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalActiveFindings"))
    InternalAccessResourceTypeDetails.add_member(:total_resolved_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalResolvedFindings"))
    InternalAccessResourceTypeDetails.add_member(:total_archived_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalArchivedFindings"))
    InternalAccessResourceTypeDetails.struct_class = Types::InternalAccessResourceTypeDetails

    InternalAccessResourceTypeStatisticsMap.key = Shapes::ShapeRef.new(shape: ResourceType)
    InternalAccessResourceTypeStatisticsMap.value = Shapes::ShapeRef.new(shape: InternalAccessResourceTypeDetails)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    InternetConfiguration.struct_class = Types::InternetConfiguration

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    JobDetails.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobDetails.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    JobDetails.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedOn"))
    JobDetails.add_member(:completed_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedOn"))
    JobDetails.add_member(:job_error, Shapes::ShapeRef.new(shape: JobError, location_name: "jobError"))
    JobDetails.struct_class = Types::JobDetails

    JobError.add_member(:code, Shapes::ShapeRef.new(shape: JobErrorCode, required: true, location_name: "code"))
    JobError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    JobError.struct_class = Types::JobError

    KmsConstraintsMap.key = Shapes::ShapeRef.new(shape: KmsConstraintsKey)
    KmsConstraintsMap.value = Shapes::ShapeRef.new(shape: KmsConstraintsValue)

    KmsGrantConfiguration.add_member(:operations, Shapes::ShapeRef.new(shape: KmsGrantOperationsList, required: true, location_name: "operations"))
    KmsGrantConfiguration.add_member(:grantee_principal, Shapes::ShapeRef.new(shape: GranteePrincipal, required: true, location_name: "granteePrincipal"))
    KmsGrantConfiguration.add_member(:retiring_principal, Shapes::ShapeRef.new(shape: RetiringPrincipal, location_name: "retiringPrincipal"))
    KmsGrantConfiguration.add_member(:constraints, Shapes::ShapeRef.new(shape: KmsGrantConstraints, location_name: "constraints"))
    KmsGrantConfiguration.add_member(:issuing_account, Shapes::ShapeRef.new(shape: IssuingAccount, required: true, location_name: "issuingAccount"))
    KmsGrantConfiguration.struct_class = Types::KmsGrantConfiguration

    KmsGrantConfigurationsList.member = Shapes::ShapeRef.new(shape: KmsGrantConfiguration)

    KmsGrantConstraints.add_member(:encryption_context_equals, Shapes::ShapeRef.new(shape: KmsConstraintsMap, location_name: "encryptionContextEquals"))
    KmsGrantConstraints.add_member(:encryption_context_subset, Shapes::ShapeRef.new(shape: KmsConstraintsMap, location_name: "encryptionContextSubset"))
    KmsGrantConstraints.struct_class = Types::KmsGrantConstraints

    KmsGrantOperationsList.member = Shapes::ShapeRef.new(shape: KmsGrantOperation)

    KmsKeyConfiguration.add_member(:key_policies, Shapes::ShapeRef.new(shape: KmsKeyPoliciesMap, location_name: "keyPolicies"))
    KmsKeyConfiguration.add_member(:grants, Shapes::ShapeRef.new(shape: KmsGrantConfigurationsList, location_name: "grants"))
    KmsKeyConfiguration.struct_class = Types::KmsKeyConfiguration

    KmsKeyPoliciesMap.key = Shapes::ShapeRef.new(shape: PolicyName)
    KmsKeyPoliciesMap.value = Shapes::ShapeRef.new(shape: KmsKeyPolicy)

    ListAccessPreviewFindingsRequest.add_member(:access_preview_id, Shapes::ShapeRef.new(shape: AccessPreviewId, required: true, location: "uri", location_name: "accessPreviewId"))
    ListAccessPreviewFindingsRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    ListAccessPreviewFindingsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: "filter"))
    ListAccessPreviewFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAccessPreviewFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListAccessPreviewFindingsRequest.struct_class = Types::ListAccessPreviewFindingsRequest

    ListAccessPreviewFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: AccessPreviewFindingsList, required: true, location_name: "findings"))
    ListAccessPreviewFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAccessPreviewFindingsResponse.struct_class = Types::ListAccessPreviewFindingsResponse

    ListAccessPreviewsRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location: "querystring", location_name: "analyzerArn"))
    ListAccessPreviewsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListAccessPreviewsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListAccessPreviewsRequest.struct_class = Types::ListAccessPreviewsRequest

    ListAccessPreviewsResponse.add_member(:access_previews, Shapes::ShapeRef.new(shape: AccessPreviewsList, required: true, location_name: "accessPreviews"))
    ListAccessPreviewsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAccessPreviewsResponse.struct_class = Types::ListAccessPreviewsResponse

    ListAnalyzedResourcesRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    ListAnalyzedResourcesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ListAnalyzedResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAnalyzedResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListAnalyzedResourcesRequest.struct_class = Types::ListAnalyzedResourcesRequest

    ListAnalyzedResourcesResponse.add_member(:analyzed_resources, Shapes::ShapeRef.new(shape: AnalyzedResourcesList, required: true, location_name: "analyzedResources"))
    ListAnalyzedResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAnalyzedResourcesResponse.struct_class = Types::ListAnalyzedResourcesResponse

    ListAnalyzersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListAnalyzersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListAnalyzersRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, location: "querystring", location_name: "type"))
    ListAnalyzersRequest.struct_class = Types::ListAnalyzersRequest

    ListAnalyzersResponse.add_member(:analyzers, Shapes::ShapeRef.new(shape: AnalyzersList, required: true, location_name: "analyzers"))
    ListAnalyzersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAnalyzersResponse.struct_class = Types::ListAnalyzersResponse

    ListArchiveRulesRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    ListArchiveRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListArchiveRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListArchiveRulesRequest.struct_class = Types::ListArchiveRulesRequest

    ListArchiveRulesResponse.add_member(:archive_rules, Shapes::ShapeRef.new(shape: ArchiveRulesList, required: true, location_name: "archiveRules"))
    ListArchiveRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListArchiveRulesResponse.struct_class = Types::ListArchiveRulesResponse

    ListFindingsRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    ListFindingsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: "filter"))
    ListFindingsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sort"))
    ListFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListFindingsRequest.struct_class = Types::ListFindingsRequest

    ListFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: FindingsList, required: true, location_name: "findings"))
    ListFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListFindingsResponse.struct_class = Types::ListFindingsResponse

    ListFindingsV2Request.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    ListFindingsV2Request.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: "filter"))
    ListFindingsV2Request.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListFindingsV2Request.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListFindingsV2Request.add_member(:sort, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sort"))
    ListFindingsV2Request.struct_class = Types::ListFindingsV2Request

    ListFindingsV2Response.add_member(:findings, Shapes::ShapeRef.new(shape: FindingsListV2, required: true, location_name: "findings"))
    ListFindingsV2Response.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListFindingsV2Response.struct_class = Types::ListFindingsV2Response

    ListPolicyGenerationsRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: PrincipalArn, location: "querystring", location_name: "principalArn"))
    ListPolicyGenerationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPolicyGenerationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListPolicyGenerationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListPolicyGenerationsRequest.struct_class = Types::ListPolicyGenerationsRequest

    ListPolicyGenerationsResponse.add_member(:policy_generations, Shapes::ShapeRef.new(shape: PolicyGenerationList, required: true, location_name: "policyGenerations"))
    ListPolicyGenerationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListPolicyGenerationsResponse.struct_class = Types::ListPolicyGenerationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Location.add_member(:path, Shapes::ShapeRef.new(shape: PathElementList, required: true, location_name: "path"))
    Location.add_member(:span, Shapes::ShapeRef.new(shape: Span, required: true, location_name: "span"))
    Location.struct_class = Types::Location

    LocationList.member = Shapes::ShapeRef.new(shape: Location)

    NetworkOriginConfiguration.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "vpcConfiguration"))
    NetworkOriginConfiguration.add_member(:internet_configuration, Shapes::ShapeRef.new(shape: InternetConfiguration, location_name: "internetConfiguration"))
    NetworkOriginConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NetworkOriginConfiguration.add_member_subclass(:vpc_configuration, Types::NetworkOriginConfiguration::VpcConfiguration)
    NetworkOriginConfiguration.add_member_subclass(:internet_configuration, Types::NetworkOriginConfiguration::InternetConfiguration)
    NetworkOriginConfiguration.add_member_subclass(:unknown, Types::NetworkOriginConfiguration::Unknown)
    NetworkOriginConfiguration.struct_class = Types::NetworkOriginConfiguration

    PathElement.add_member(:index, Shapes::ShapeRef.new(shape: Integer, location_name: "index"))
    PathElement.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "key"))
    PathElement.add_member(:substring, Shapes::ShapeRef.new(shape: Substring, location_name: "substring"))
    PathElement.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    PathElement.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PathElement.add_member_subclass(:index, Types::PathElement::Index)
    PathElement.add_member_subclass(:key, Types::PathElement::Key)
    PathElement.add_member_subclass(:substring, Types::PathElement::Substring)
    PathElement.add_member_subclass(:value, Types::PathElement::Value)
    PathElement.add_member_subclass(:unknown, Types::PathElement::Unknown)
    PathElement.struct_class = Types::PathElement

    PathElementList.member = Shapes::ShapeRef.new(shape: PathElement)

    PolicyGeneration.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    PolicyGeneration.add_member(:principal_arn, Shapes::ShapeRef.new(shape: PrincipalArn, required: true, location_name: "principalArn"))
    PolicyGeneration.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    PolicyGeneration.add_member(:started_on, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedOn"))
    PolicyGeneration.add_member(:completed_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedOn"))
    PolicyGeneration.struct_class = Types::PolicyGeneration

    PolicyGenerationDetails.add_member(:principal_arn, Shapes::ShapeRef.new(shape: PrincipalArn, required: true, location_name: "principalArn"))
    PolicyGenerationDetails.struct_class = Types::PolicyGenerationDetails

    PolicyGenerationList.member = Shapes::ShapeRef.new(shape: PolicyGeneration)

    Position.add_member(:line, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "line"))
    Position.add_member(:column, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "column"))
    Position.add_member(:offset, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "offset"))
    Position.struct_class = Types::Position

    PrincipalMap.key = Shapes::ShapeRef.new(shape: String)
    PrincipalMap.value = Shapes::ShapeRef.new(shape: String)

    RdsDbClusterSnapshotAccountIdsList.member = Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAccountId)

    RdsDbClusterSnapshotAttributeValue.add_member(:account_ids, Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAccountIdsList, location_name: "accountIds"))
    RdsDbClusterSnapshotAttributeValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RdsDbClusterSnapshotAttributeValue.add_member_subclass(:account_ids, Types::RdsDbClusterSnapshotAttributeValue::AccountIds)
    RdsDbClusterSnapshotAttributeValue.add_member_subclass(:unknown, Types::RdsDbClusterSnapshotAttributeValue::Unknown)
    RdsDbClusterSnapshotAttributeValue.struct_class = Types::RdsDbClusterSnapshotAttributeValue

    RdsDbClusterSnapshotAttributesMap.key = Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAttributeName)
    RdsDbClusterSnapshotAttributesMap.value = Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAttributeValue)

    RdsDbClusterSnapshotConfiguration.add_member(:attributes, Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAttributesMap, location_name: "attributes"))
    RdsDbClusterSnapshotConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotKmsKeyId, location_name: "kmsKeyId"))
    RdsDbClusterSnapshotConfiguration.struct_class = Types::RdsDbClusterSnapshotConfiguration

    RdsDbSnapshotAccountIdsList.member = Shapes::ShapeRef.new(shape: RdsDbSnapshotAccountId)

    RdsDbSnapshotAttributeValue.add_member(:account_ids, Shapes::ShapeRef.new(shape: RdsDbSnapshotAccountIdsList, location_name: "accountIds"))
    RdsDbSnapshotAttributeValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RdsDbSnapshotAttributeValue.add_member_subclass(:account_ids, Types::RdsDbSnapshotAttributeValue::AccountIds)
    RdsDbSnapshotAttributeValue.add_member_subclass(:unknown, Types::RdsDbSnapshotAttributeValue::Unknown)
    RdsDbSnapshotAttributeValue.struct_class = Types::RdsDbSnapshotAttributeValue

    RdsDbSnapshotAttributesMap.key = Shapes::ShapeRef.new(shape: RdsDbSnapshotAttributeName)
    RdsDbSnapshotAttributesMap.value = Shapes::ShapeRef.new(shape: RdsDbSnapshotAttributeValue)

    RdsDbSnapshotConfiguration.add_member(:attributes, Shapes::ShapeRef.new(shape: RdsDbSnapshotAttributesMap, location_name: "attributes"))
    RdsDbSnapshotConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: RdsDbSnapshotKmsKeyId, location_name: "kmsKeyId"))
    RdsDbSnapshotConfiguration.struct_class = Types::RdsDbSnapshotConfiguration

    ReasonSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ReasonSummary.add_member(:statement_index, Shapes::ShapeRef.new(shape: Integer, location_name: "statementIndex"))
    ReasonSummary.add_member(:statement_id, Shapes::ShapeRef.new(shape: String, location_name: "statementId"))
    ReasonSummary.struct_class = Types::ReasonSummary

    ReasonSummaryList.member = Shapes::ShapeRef.new(shape: ReasonSummary)

    RecommendationError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    RecommendationError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RecommendationError.struct_class = Types::RecommendationError

    RecommendedStep.add_member(:unused_permissions_recommended_step, Shapes::ShapeRef.new(shape: UnusedPermissionsRecommendedStep, location_name: "unusedPermissionsRecommendedStep"))
    RecommendedStep.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RecommendedStep.add_member_subclass(:unused_permissions_recommended_step, Types::RecommendedStep::UnusedPermissionsRecommendedStep)
    RecommendedStep.add_member_subclass(:unknown, Types::RecommendedStep::Unknown)
    RecommendedStep.struct_class = Types::RecommendedStep

    RecommendedStepList.member = Shapes::ShapeRef.new(shape: RecommendedStep)

    RegionList.member = Shapes::ShapeRef.new(shape: String)

    ResourceArnsList.member = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTypeDetails.add_member(:total_active_public, Shapes::ShapeRef.new(shape: Integer, location_name: "totalActivePublic"))
    ResourceTypeDetails.add_member(:total_active_cross_account, Shapes::ShapeRef.new(shape: Integer, location_name: "totalActiveCrossAccount"))
    ResourceTypeDetails.struct_class = Types::ResourceTypeDetails

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResourceTypeStatisticsMap.key = Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypeStatisticsMap.value = Shapes::ShapeRef.new(shape: ResourceTypeDetails)

    S3AccessPointConfiguration.add_member(:access_point_policy, Shapes::ShapeRef.new(shape: AccessPointPolicy, location_name: "accessPointPolicy"))
    S3AccessPointConfiguration.add_member(:public_access_block, Shapes::ShapeRef.new(shape: S3PublicAccessBlockConfiguration, location_name: "publicAccessBlock"))
    S3AccessPointConfiguration.add_member(:network_origin, Shapes::ShapeRef.new(shape: NetworkOriginConfiguration, location_name: "networkOrigin"))
    S3AccessPointConfiguration.struct_class = Types::S3AccessPointConfiguration

    S3AccessPointConfigurationsMap.key = Shapes::ShapeRef.new(shape: AccessPointArn)
    S3AccessPointConfigurationsMap.value = Shapes::ShapeRef.new(shape: S3AccessPointConfiguration)

    S3BucketAclGrantConfiguration.add_member(:permission, Shapes::ShapeRef.new(shape: AclPermission, required: true, location_name: "permission"))
    S3BucketAclGrantConfiguration.add_member(:grantee, Shapes::ShapeRef.new(shape: AclGrantee, required: true, location_name: "grantee"))
    S3BucketAclGrantConfiguration.struct_class = Types::S3BucketAclGrantConfiguration

    S3BucketAclGrantConfigurationsList.member = Shapes::ShapeRef.new(shape: S3BucketAclGrantConfiguration)

    S3BucketConfiguration.add_member(:bucket_policy, Shapes::ShapeRef.new(shape: S3BucketPolicy, location_name: "bucketPolicy"))
    S3BucketConfiguration.add_member(:bucket_acl_grants, Shapes::ShapeRef.new(shape: S3BucketAclGrantConfigurationsList, location_name: "bucketAclGrants"))
    S3BucketConfiguration.add_member(:bucket_public_access_block, Shapes::ShapeRef.new(shape: S3PublicAccessBlockConfiguration, location_name: "bucketPublicAccessBlock"))
    S3BucketConfiguration.add_member(:access_points, Shapes::ShapeRef.new(shape: S3AccessPointConfigurationsMap, location_name: "accessPoints"))
    S3BucketConfiguration.struct_class = Types::S3BucketConfiguration

    S3ExpressDirectoryAccessPointConfiguration.add_member(:access_point_policy, Shapes::ShapeRef.new(shape: AccessPointPolicy, location_name: "accessPointPolicy"))
    S3ExpressDirectoryAccessPointConfiguration.add_member(:network_origin, Shapes::ShapeRef.new(shape: NetworkOriginConfiguration, location_name: "networkOrigin"))
    S3ExpressDirectoryAccessPointConfiguration.struct_class = Types::S3ExpressDirectoryAccessPointConfiguration

    S3ExpressDirectoryAccessPointConfigurationsMap.key = Shapes::ShapeRef.new(shape: S3ExpressDirectoryAccessPointArn)
    S3ExpressDirectoryAccessPointConfigurationsMap.value = Shapes::ShapeRef.new(shape: S3ExpressDirectoryAccessPointConfiguration)

    S3ExpressDirectoryBucketConfiguration.add_member(:bucket_policy, Shapes::ShapeRef.new(shape: S3ExpressDirectoryBucketPolicy, location_name: "bucketPolicy"))
    S3ExpressDirectoryBucketConfiguration.add_member(:access_points, Shapes::ShapeRef.new(shape: S3ExpressDirectoryAccessPointConfigurationsMap, location_name: "accessPoints"))
    S3ExpressDirectoryBucketConfiguration.struct_class = Types::S3ExpressDirectoryBucketConfiguration

    S3PublicAccessBlockConfiguration.add_member(:ignore_public_acls, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "ignorePublicAcls"))
    S3PublicAccessBlockConfiguration.add_member(:restrict_public_buckets, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "restrictPublicBuckets"))
    S3PublicAccessBlockConfiguration.struct_class = Types::S3PublicAccessBlockConfiguration

    SecretsManagerSecretConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: SecretsManagerSecretKmsId, location_name: "kmsKeyId"))
    SecretsManagerSecretConfiguration.add_member(:secret_policy, Shapes::ShapeRef.new(shape: SecretsManagerSecretPolicy, location_name: "secretPolicy"))
    SecretsManagerSecretConfiguration.struct_class = Types::SecretsManagerSecretConfiguration

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SharedViaList.member = Shapes::ShapeRef.new(shape: String)

    SnsTopicConfiguration.add_member(:topic_policy, Shapes::ShapeRef.new(shape: SnsTopicPolicy, location_name: "topicPolicy"))
    SnsTopicConfiguration.struct_class = Types::SnsTopicConfiguration

    SortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, location_name: "attributeName"))
    SortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    SortCriteria.struct_class = Types::SortCriteria

    Span.add_member(:start, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "start"))
    Span.add_member(:end, Shapes::ShapeRef.new(shape: Position, required: true, location_name: "end"))
    Span.struct_class = Types::Span

    SqsQueueConfiguration.add_member(:queue_policy, Shapes::ShapeRef.new(shape: SqsQueuePolicy, location_name: "queuePolicy"))
    SqsQueueConfiguration.struct_class = Types::SqsQueueConfiguration

    StartPolicyGenerationRequest.add_member(:policy_generation_details, Shapes::ShapeRef.new(shape: PolicyGenerationDetails, required: true, location_name: "policyGenerationDetails"))
    StartPolicyGenerationRequest.add_member(:cloud_trail_details, Shapes::ShapeRef.new(shape: CloudTrailDetails, location_name: "cloudTrailDetails"))
    StartPolicyGenerationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartPolicyGenerationRequest.struct_class = Types::StartPolicyGenerationRequest

    StartPolicyGenerationResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    StartPolicyGenerationResponse.struct_class = Types::StartPolicyGenerationResponse

    StartResourceScanRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    StartResourceScanRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    StartResourceScanRequest.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, location_name: "resourceOwnerAccount"))
    StartResourceScanRequest.struct_class = Types::StartResourceScanRequest

    StatusReason.add_member(:code, Shapes::ShapeRef.new(shape: ReasonCode, required: true, location_name: "code"))
    StatusReason.struct_class = Types::StatusReason

    Substring.add_member(:start, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "start"))
    Substring.add_member(:length, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "length"))
    Substring.struct_class = Types::Substring

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsList.member = Shapes::ShapeRef.new(shape: TagsMap)

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Trail.add_member(:cloud_trail_arn, Shapes::ShapeRef.new(shape: CloudTrailArn, required: true, location_name: "cloudTrailArn"))
    Trail.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    Trail.add_member(:all_regions, Shapes::ShapeRef.new(shape: Boolean, location_name: "allRegions"))
    Trail.struct_class = Types::Trail

    TrailList.member = Shapes::ShapeRef.new(shape: Trail)

    TrailProperties.add_member(:cloud_trail_arn, Shapes::ShapeRef.new(shape: CloudTrailArn, required: true, location_name: "cloudTrailArn"))
    TrailProperties.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    TrailProperties.add_member(:all_regions, Shapes::ShapeRef.new(shape: Boolean, location_name: "allRegions"))
    TrailProperties.struct_class = Types::TrailProperties

    TrailPropertiesList.member = Shapes::ShapeRef.new(shape: TrailProperties)

    UnprocessableEntityException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    UnprocessableEntityException.struct_class = Types::UnprocessableEntityException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UnusedAccessConfiguration.add_member(:unused_access_age, Shapes::ShapeRef.new(shape: Integer, location_name: "unusedAccessAge"))
    UnusedAccessConfiguration.add_member(:analysis_rule, Shapes::ShapeRef.new(shape: AnalysisRule, location_name: "analysisRule"))
    UnusedAccessConfiguration.struct_class = Types::UnusedAccessConfiguration

    UnusedAccessFindingsStatistics.add_member(:unused_access_type_statistics, Shapes::ShapeRef.new(shape: UnusedAccessTypeStatisticsList, location_name: "unusedAccessTypeStatistics"))
    UnusedAccessFindingsStatistics.add_member(:top_accounts, Shapes::ShapeRef.new(shape: AccountAggregations, location_name: "topAccounts"))
    UnusedAccessFindingsStatistics.add_member(:total_active_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalActiveFindings"))
    UnusedAccessFindingsStatistics.add_member(:total_archived_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalArchivedFindings"))
    UnusedAccessFindingsStatistics.add_member(:total_resolved_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalResolvedFindings"))
    UnusedAccessFindingsStatistics.struct_class = Types::UnusedAccessFindingsStatistics

    UnusedAccessTypeStatistics.add_member(:unused_access_type, Shapes::ShapeRef.new(shape: String, location_name: "unusedAccessType"))
    UnusedAccessTypeStatistics.add_member(:total, Shapes::ShapeRef.new(shape: Integer, location_name: "total"))
    UnusedAccessTypeStatistics.struct_class = Types::UnusedAccessTypeStatistics

    UnusedAccessTypeStatisticsList.member = Shapes::ShapeRef.new(shape: UnusedAccessTypeStatistics)

    UnusedAction.add_member(:action, Shapes::ShapeRef.new(shape: String, required: true, location_name: "action"))
    UnusedAction.add_member(:last_accessed, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastAccessed"))
    UnusedAction.struct_class = Types::UnusedAction

    UnusedActionList.member = Shapes::ShapeRef.new(shape: UnusedAction)

    UnusedIamRoleDetails.add_member(:last_accessed, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastAccessed"))
    UnusedIamRoleDetails.struct_class = Types::UnusedIamRoleDetails

    UnusedIamUserAccessKeyDetails.add_member(:access_key_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accessKeyId"))
    UnusedIamUserAccessKeyDetails.add_member(:last_accessed, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastAccessed"))
    UnusedIamUserAccessKeyDetails.struct_class = Types::UnusedIamUserAccessKeyDetails

    UnusedIamUserPasswordDetails.add_member(:last_accessed, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastAccessed"))
    UnusedIamUserPasswordDetails.struct_class = Types::UnusedIamUserPasswordDetails

    UnusedPermissionDetails.add_member(:actions, Shapes::ShapeRef.new(shape: UnusedActionList, location_name: "actions"))
    UnusedPermissionDetails.add_member(:service_namespace, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceNamespace"))
    UnusedPermissionDetails.add_member(:last_accessed, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastAccessed"))
    UnusedPermissionDetails.struct_class = Types::UnusedPermissionDetails

    UnusedPermissionsRecommendedStep.add_member(:policy_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "policyUpdatedAt"))
    UnusedPermissionsRecommendedStep.add_member(:recommended_action, Shapes::ShapeRef.new(shape: RecommendedRemediationAction, required: true, location_name: "recommendedAction"))
    UnusedPermissionsRecommendedStep.add_member(:recommended_policy, Shapes::ShapeRef.new(shape: String, location_name: "recommendedPolicy"))
    UnusedPermissionsRecommendedStep.add_member(:existing_policy_id, Shapes::ShapeRef.new(shape: String, location_name: "existingPolicyId"))
    UnusedPermissionsRecommendedStep.struct_class = Types::UnusedPermissionsRecommendedStep

    UpdateAnalyzerRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    UpdateAnalyzerRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: "configuration"))
    UpdateAnalyzerRequest.struct_class = Types::UpdateAnalyzerRequest

    UpdateAnalyzerResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: "configuration"))
    UpdateAnalyzerResponse.struct_class = Types::UpdateAnalyzerResponse

    UpdateArchiveRuleRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    UpdateArchiveRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ruleName"))
    UpdateArchiveRuleRequest.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, required: true, location_name: "filter"))
    UpdateArchiveRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateArchiveRuleRequest.struct_class = Types::UpdateArchiveRuleRequest

    UpdateFindingsRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    UpdateFindingsRequest.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatusUpdate, required: true, location_name: "status"))
    UpdateFindingsRequest.add_member(:ids, Shapes::ShapeRef.new(shape: FindingIdList, location_name: "ids"))
    UpdateFindingsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    UpdateFindingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateFindingsRequest.struct_class = Types::UpdateFindingsRequest

    ValidatePolicyFinding.add_member(:finding_details, Shapes::ShapeRef.new(shape: String, required: true, location_name: "findingDetails"))
    ValidatePolicyFinding.add_member(:finding_type, Shapes::ShapeRef.new(shape: ValidatePolicyFindingType, required: true, location_name: "findingType"))
    ValidatePolicyFinding.add_member(:issue_code, Shapes::ShapeRef.new(shape: IssueCode, required: true, location_name: "issueCode"))
    ValidatePolicyFinding.add_member(:learn_more_link, Shapes::ShapeRef.new(shape: LearnMoreLink, required: true, location_name: "learnMoreLink"))
    ValidatePolicyFinding.add_member(:locations, Shapes::ShapeRef.new(shape: LocationList, required: true, location_name: "locations"))
    ValidatePolicyFinding.struct_class = Types::ValidatePolicyFinding

    ValidatePolicyFindingList.member = Shapes::ShapeRef.new(shape: ValidatePolicyFinding)

    ValidatePolicyRequest.add_member(:locale, Shapes::ShapeRef.new(shape: Locale, location_name: "locale"))
    ValidatePolicyRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ValidatePolicyRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ValidatePolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policyDocument"))
    ValidatePolicyRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "policyType"))
    ValidatePolicyRequest.add_member(:validate_policy_resource_type, Shapes::ShapeRef.new(shape: ValidatePolicyResourceType, location_name: "validatePolicyResourceType"))
    ValidatePolicyRequest.struct_class = Types::ValidatePolicyRequest

    ValidatePolicyResponse.add_member(:findings, Shapes::ShapeRef.new(shape: ValidatePolicyFindingList, required: true, location_name: "findings"))
    ValidatePolicyResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ValidatePolicyResponse.struct_class = Types::ValidatePolicyResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    ValueList.member = Shapes::ShapeRef.new(shape: String)

    VpcConfiguration.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "vpcId"))
    VpcConfiguration.struct_class = Types::VpcConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-11-01"

      api.metadata = {
        "apiVersion" => "2019-11-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "access-analyzer",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Access Analyzer",
        "serviceId" => "AccessAnalyzer",
        "signatureVersion" => "v4",
        "signingName" => "access-analyzer",
        "uid" => "accessanalyzer-2019-11-01",
      }

      api.add_operation(:apply_archive_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApplyArchiveRule"
        o.http_method = "PUT"
        o.http_request_uri = "/archive-rule"
        o.input = Shapes::ShapeRef.new(shape: ApplyArchiveRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:cancel_policy_generation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelPolicyGeneration"
        o.http_method = "PUT"
        o.http_request_uri = "/policy/generation/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: CancelPolicyGenerationRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelPolicyGenerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:check_access_not_granted, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckAccessNotGranted"
        o.http_method = "POST"
        o.http_request_uri = "/policy/check-access-not-granted"
        o.input = Shapes::ShapeRef.new(shape: CheckAccessNotGrantedRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckAccessNotGrantedResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:check_no_new_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckNoNewAccess"
        o.http_method = "POST"
        o.http_request_uri = "/policy/check-no-new-access"
        o.input = Shapes::ShapeRef.new(shape: CheckNoNewAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckNoNewAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:check_no_public_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckNoPublicAccess"
        o.http_method = "POST"
        o.http_request_uri = "/policy/check-no-public-access"
        o.input = Shapes::ShapeRef.new(shape: CheckNoPublicAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: CheckNoPublicAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_access_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessPreview"
        o.http_method = "PUT"
        o.http_request_uri = "/access-preview"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessPreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessPreviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_analyzer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAnalyzer"
        o.http_method = "PUT"
        o.http_request_uri = "/analyzer"
        o.input = Shapes::ShapeRef.new(shape: CreateAnalyzerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAnalyzerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_archive_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateArchiveRule"
        o.http_method = "PUT"
        o.http_request_uri = "/analyzer/{analyzerName}/archive-rule"
        o.input = Shapes::ShapeRef.new(shape: CreateArchiveRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_analyzer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnalyzer"
        o.http_method = "DELETE"
        o.http_request_uri = "/analyzer/{analyzerName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAnalyzerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_archive_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteArchiveRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/analyzer/{analyzerName}/archive-rule/{ruleName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteArchiveRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:generate_finding_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateFindingRecommendation"
        o.http_method = "POST"
        o.http_request_uri = "/recommendation/{id}"
        o.input = Shapes::ShapeRef.new(shape: GenerateFindingRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_access_preview, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessPreview"
        o.http_method = "GET"
        o.http_request_uri = "/access-preview/{accessPreviewId}"
        o.input = Shapes::ShapeRef.new(shape: GetAccessPreviewRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessPreviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_analyzed_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnalyzedResource"
        o.http_method = "GET"
        o.http_request_uri = "/analyzed-resource"
        o.input = Shapes::ShapeRef.new(shape: GetAnalyzedResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnalyzedResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_analyzer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnalyzer"
        o.http_method = "GET"
        o.http_request_uri = "/analyzer/{analyzerName}"
        o.input = Shapes::ShapeRef.new(shape: GetAnalyzerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnalyzerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_archive_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArchiveRule"
        o.http_method = "GET"
        o.http_request_uri = "/analyzer/{analyzerName}/archive-rule/{ruleName}"
        o.input = Shapes::ShapeRef.new(shape: GetArchiveRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetArchiveRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_finding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFinding"
        o.http_method = "GET"
        o.http_request_uri = "/finding/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetFindingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_finding_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingRecommendation"
        o.http_method = "GET"
        o.http_request_uri = "/recommendation/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetFindingRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_finding_v2, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingV2"
        o.http_method = "GET"
        o.http_request_uri = "/findingv2/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetFindingV2Request)
        o.output = Shapes::ShapeRef.new(shape: GetFindingV2Response)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_findings_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingsStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/analyzer/findings/statistics"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_generated_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGeneratedPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/policy/generation/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: GetGeneratedPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGeneratedPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_access_preview_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessPreviewFindings"
        o.http_method = "POST"
        o.http_request_uri = "/access-preview/{accessPreviewId}"
        o.input = Shapes::ShapeRef.new(shape: ListAccessPreviewFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessPreviewFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_access_previews, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessPreviews"
        o.http_method = "GET"
        o.http_request_uri = "/access-preview"
        o.input = Shapes::ShapeRef.new(shape: ListAccessPreviewsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessPreviewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_analyzed_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnalyzedResources"
        o.http_method = "POST"
        o.http_request_uri = "/analyzed-resource"
        o.input = Shapes::ShapeRef.new(shape: ListAnalyzedResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnalyzedResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_analyzers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnalyzers"
        o.http_method = "GET"
        o.http_request_uri = "/analyzer"
        o.input = Shapes::ShapeRef.new(shape: ListAnalyzersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnalyzersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_archive_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListArchiveRules"
        o.http_method = "GET"
        o.http_request_uri = "/analyzer/{analyzerName}/archive-rule"
        o.input = Shapes::ShapeRef.new(shape: ListArchiveRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListArchiveRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindings"
        o.http_method = "POST"
        o.http_request_uri = "/finding"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_findings_v2, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindingsV2"
        o.http_method = "POST"
        o.http_request_uri = "/findingv2"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsV2Request)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsV2Response)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policy_generations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyGenerations"
        o.http_method = "GET"
        o.http_request_uri = "/policy/generation"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyGenerationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyGenerationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_policy_generation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPolicyGeneration"
        o.http_method = "PUT"
        o.http_request_uri = "/policy/generation"
        o.input = Shapes::ShapeRef.new(shape: StartPolicyGenerationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPolicyGenerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_resource_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartResourceScan"
        o.http_method = "POST"
        o.http_request_uri = "/resource/scan"
        o.input = Shapes::ShapeRef.new(shape: StartResourceScanRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_analyzer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnalyzer"
        o.http_method = "PUT"
        o.http_request_uri = "/analyzer/{analyzerName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAnalyzerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAnalyzerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_archive_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateArchiveRule"
        o.http_method = "PUT"
        o.http_request_uri = "/analyzer/{analyzerName}/archive-rule/{ruleName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateArchiveRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFindings"
        o.http_method = "PUT"
        o.http_request_uri = "/finding"
        o.input = Shapes::ShapeRef.new(shape: UpdateFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:validate_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/policy/validation"
        o.input = Shapes::ShapeRef.new(shape: ValidatePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: ValidatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
