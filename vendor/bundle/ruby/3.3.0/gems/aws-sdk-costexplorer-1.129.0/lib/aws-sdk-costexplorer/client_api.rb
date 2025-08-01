# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CostExplorer
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountScope = Shapes::StringShape.new(name: 'AccountScope')
    AmortizedRecurringFee = Shapes::StringShape.new(name: 'AmortizedRecurringFee')
    AmortizedUpfrontFee = Shapes::StringShape.new(name: 'AmortizedUpfrontFee')
    AnalysisDetails = Shapes::StructureShape.new(name: 'AnalysisDetails')
    AnalysisId = Shapes::StringShape.new(name: 'AnalysisId')
    AnalysisIds = Shapes::ListShape.new(name: 'AnalysisIds')
    AnalysisNotFoundException = Shapes::StructureShape.new(name: 'AnalysisNotFoundException')
    AnalysisStatus = Shapes::StringShape.new(name: 'AnalysisStatus')
    AnalysisSummary = Shapes::StructureShape.new(name: 'AnalysisSummary')
    AnalysisSummaryList = Shapes::ListShape.new(name: 'AnalysisSummaryList')
    AnalysisType = Shapes::StringShape.new(name: 'AnalysisType')
    Anomalies = Shapes::ListShape.new(name: 'Anomalies')
    Anomaly = Shapes::StructureShape.new(name: 'Anomaly')
    AnomalyDateInterval = Shapes::StructureShape.new(name: 'AnomalyDateInterval')
    AnomalyFeedbackType = Shapes::StringShape.new(name: 'AnomalyFeedbackType')
    AnomalyMonitor = Shapes::StructureShape.new(name: 'AnomalyMonitor')
    AnomalyMonitors = Shapes::ListShape.new(name: 'AnomalyMonitors')
    AnomalyScore = Shapes::StructureShape.new(name: 'AnomalyScore')
    AnomalySubscription = Shapes::StructureShape.new(name: 'AnomalySubscription')
    AnomalySubscriptionFrequency = Shapes::StringShape.new(name: 'AnomalySubscriptionFrequency')
    AnomalySubscriptions = Shapes::ListShape.new(name: 'AnomalySubscriptions')
    ApproximateUsageRecordsPerService = Shapes::MapShape.new(name: 'ApproximateUsageRecordsPerService')
    ApproximationDimension = Shapes::StringShape.new(name: 'ApproximationDimension')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AttributeType = Shapes::StringShape.new(name: 'AttributeType')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    BackfillLimitExceededException = Shapes::StructureShape.new(name: 'BackfillLimitExceededException')
    BillExpirationException = Shapes::StructureShape.new(name: 'BillExpirationException')
    BillingViewArn = Shapes::StringShape.new(name: 'BillingViewArn')
    CommitmentPurchaseAnalysisConfiguration = Shapes::StructureShape.new(name: 'CommitmentPurchaseAnalysisConfiguration')
    ComparisonMetricValue = Shapes::StructureShape.new(name: 'ComparisonMetricValue')
    ComparisonMetrics = Shapes::MapShape.new(name: 'ComparisonMetrics')
    Context = Shapes::StringShape.new(name: 'Context')
    CostAllocationTag = Shapes::StructureShape.new(name: 'CostAllocationTag')
    CostAllocationTagBackfillRequest = Shapes::StructureShape.new(name: 'CostAllocationTagBackfillRequest')
    CostAllocationTagBackfillRequestList = Shapes::ListShape.new(name: 'CostAllocationTagBackfillRequestList')
    CostAllocationTagBackfillStatus = Shapes::StringShape.new(name: 'CostAllocationTagBackfillStatus')
    CostAllocationTagKeyList = Shapes::ListShape.new(name: 'CostAllocationTagKeyList')
    CostAllocationTagList = Shapes::ListShape.new(name: 'CostAllocationTagList')
    CostAllocationTagStatus = Shapes::StringShape.new(name: 'CostAllocationTagStatus')
    CostAllocationTagStatusEntry = Shapes::StructureShape.new(name: 'CostAllocationTagStatusEntry')
    CostAllocationTagStatusList = Shapes::ListShape.new(name: 'CostAllocationTagStatusList')
    CostAllocationTagType = Shapes::StringShape.new(name: 'CostAllocationTagType')
    CostAllocationTagsMaxResults = Shapes::IntegerShape.new(name: 'CostAllocationTagsMaxResults')
    CostAndUsageComparison = Shapes::StructureShape.new(name: 'CostAndUsageComparison')
    CostAndUsageComparisons = Shapes::ListShape.new(name: 'CostAndUsageComparisons')
    CostAndUsageComparisonsMaxResults = Shapes::IntegerShape.new(name: 'CostAndUsageComparisonsMaxResults')
    CostCategory = Shapes::StructureShape.new(name: 'CostCategory')
    CostCategoryInheritedValueDimension = Shapes::StructureShape.new(name: 'CostCategoryInheritedValueDimension')
    CostCategoryInheritedValueDimensionName = Shapes::StringShape.new(name: 'CostCategoryInheritedValueDimensionName')
    CostCategoryMaxResults = Shapes::IntegerShape.new(name: 'CostCategoryMaxResults')
    CostCategoryName = Shapes::StringShape.new(name: 'CostCategoryName')
    CostCategoryNamesList = Shapes::ListShape.new(name: 'CostCategoryNamesList')
    CostCategoryProcessingStatus = Shapes::StructureShape.new(name: 'CostCategoryProcessingStatus')
    CostCategoryProcessingStatusList = Shapes::ListShape.new(name: 'CostCategoryProcessingStatusList')
    CostCategoryReference = Shapes::StructureShape.new(name: 'CostCategoryReference')
    CostCategoryReferencesList = Shapes::ListShape.new(name: 'CostCategoryReferencesList')
    CostCategoryRule = Shapes::StructureShape.new(name: 'CostCategoryRule')
    CostCategoryRuleType = Shapes::StringShape.new(name: 'CostCategoryRuleType')
    CostCategoryRuleVersion = Shapes::StringShape.new(name: 'CostCategoryRuleVersion')
    CostCategoryRulesList = Shapes::ListShape.new(name: 'CostCategoryRulesList')
    CostCategorySplitChargeMethod = Shapes::StringShape.new(name: 'CostCategorySplitChargeMethod')
    CostCategorySplitChargeRule = Shapes::StructureShape.new(name: 'CostCategorySplitChargeRule')
    CostCategorySplitChargeRuleParameter = Shapes::StructureShape.new(name: 'CostCategorySplitChargeRuleParameter')
    CostCategorySplitChargeRuleParameterType = Shapes::StringShape.new(name: 'CostCategorySplitChargeRuleParameterType')
    CostCategorySplitChargeRuleParameterValuesList = Shapes::ListShape.new(name: 'CostCategorySplitChargeRuleParameterValuesList')
    CostCategorySplitChargeRuleParametersList = Shapes::ListShape.new(name: 'CostCategorySplitChargeRuleParametersList')
    CostCategorySplitChargeRuleTargetsList = Shapes::ListShape.new(name: 'CostCategorySplitChargeRuleTargetsList')
    CostCategorySplitChargeRulesList = Shapes::ListShape.new(name: 'CostCategorySplitChargeRulesList')
    CostCategoryStatus = Shapes::StringShape.new(name: 'CostCategoryStatus')
    CostCategoryStatusComponent = Shapes::StringShape.new(name: 'CostCategoryStatusComponent')
    CostCategoryValue = Shapes::StringShape.new(name: 'CostCategoryValue')
    CostCategoryValues = Shapes::StructureShape.new(name: 'CostCategoryValues')
    CostCategoryValuesList = Shapes::ListShape.new(name: 'CostCategoryValuesList')
    CostComparisonDriver = Shapes::StructureShape.new(name: 'CostComparisonDriver')
    CostComparisonDrivers = Shapes::ListShape.new(name: 'CostComparisonDrivers')
    CostComparisonDriversMaxResults = Shapes::IntegerShape.new(name: 'CostComparisonDriversMaxResults')
    CostDriver = Shapes::StructureShape.new(name: 'CostDriver')
    CostDrivers = Shapes::ListShape.new(name: 'CostDrivers')
    Coverage = Shapes::StructureShape.new(name: 'Coverage')
    CoverageByTime = Shapes::StructureShape.new(name: 'CoverageByTime')
    CoverageCost = Shapes::StructureShape.new(name: 'CoverageCost')
    CoverageHours = Shapes::StructureShape.new(name: 'CoverageHours')
    CoverageHoursPercentage = Shapes::StringShape.new(name: 'CoverageHoursPercentage')
    CoverageNormalizedUnits = Shapes::StructureShape.new(name: 'CoverageNormalizedUnits')
    CoverageNormalizedUnitsPercentage = Shapes::StringShape.new(name: 'CoverageNormalizedUnitsPercentage')
    CoveragesByTime = Shapes::ListShape.new(name: 'CoveragesByTime')
    CreateAnomalyMonitorRequest = Shapes::StructureShape.new(name: 'CreateAnomalyMonitorRequest')
    CreateAnomalyMonitorResponse = Shapes::StructureShape.new(name: 'CreateAnomalyMonitorResponse')
    CreateAnomalySubscriptionRequest = Shapes::StructureShape.new(name: 'CreateAnomalySubscriptionRequest')
    CreateAnomalySubscriptionResponse = Shapes::StructureShape.new(name: 'CreateAnomalySubscriptionResponse')
    CreateCostCategoryDefinitionRequest = Shapes::StructureShape.new(name: 'CreateCostCategoryDefinitionRequest')
    CreateCostCategoryDefinitionResponse = Shapes::StructureShape.new(name: 'CreateCostCategoryDefinitionResponse')
    CurrentInstance = Shapes::StructureShape.new(name: 'CurrentInstance')
    DataUnavailableException = Shapes::StructureShape.new(name: 'DataUnavailableException')
    DateInterval = Shapes::StructureShape.new(name: 'DateInterval')
    DeleteAnomalyMonitorRequest = Shapes::StructureShape.new(name: 'DeleteAnomalyMonitorRequest')
    DeleteAnomalyMonitorResponse = Shapes::StructureShape.new(name: 'DeleteAnomalyMonitorResponse')
    DeleteAnomalySubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteAnomalySubscriptionRequest')
    DeleteAnomalySubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteAnomalySubscriptionResponse')
    DeleteCostCategoryDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteCostCategoryDefinitionRequest')
    DeleteCostCategoryDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteCostCategoryDefinitionResponse')
    DescribeCostCategoryDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeCostCategoryDefinitionRequest')
    DescribeCostCategoryDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeCostCategoryDefinitionResponse')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    DimensionValues = Shapes::StructureShape.new(name: 'DimensionValues')
    DimensionValuesWithAttributes = Shapes::StructureShape.new(name: 'DimensionValuesWithAttributes')
    DimensionValuesWithAttributesList = Shapes::ListShape.new(name: 'DimensionValuesWithAttributesList')
    DiskResourceUtilization = Shapes::StructureShape.new(name: 'DiskResourceUtilization')
    DynamoDBCapacityDetails = Shapes::StructureShape.new(name: 'DynamoDBCapacityDetails')
    EBSResourceUtilization = Shapes::StructureShape.new(name: 'EBSResourceUtilization')
    EC2InstanceDetails = Shapes::StructureShape.new(name: 'EC2InstanceDetails')
    EC2ResourceDetails = Shapes::StructureShape.new(name: 'EC2ResourceDetails')
    EC2ResourceUtilization = Shapes::StructureShape.new(name: 'EC2ResourceUtilization')
    EC2Specification = Shapes::StructureShape.new(name: 'EC2Specification')
    ESInstanceDetails = Shapes::StructureShape.new(name: 'ESInstanceDetails')
    ElastiCacheInstanceDetails = Shapes::StructureShape.new(name: 'ElastiCacheInstanceDetails')
    Entity = Shapes::StringShape.new(name: 'Entity')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Estimated = Shapes::BooleanShape.new(name: 'Estimated')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    Expressions = Shapes::ListShape.new(name: 'Expressions')
    FindingReasonCode = Shapes::StringShape.new(name: 'FindingReasonCode')
    FindingReasonCodes = Shapes::ListShape.new(name: 'FindingReasonCodes')
    ForecastResult = Shapes::StructureShape.new(name: 'ForecastResult')
    ForecastResultsByTime = Shapes::ListShape.new(name: 'ForecastResultsByTime')
    GenerationExistsException = Shapes::StructureShape.new(name: 'GenerationExistsException')
    GenerationStatus = Shapes::StringShape.new(name: 'GenerationStatus')
    GenerationSummary = Shapes::StructureShape.new(name: 'GenerationSummary')
    GenerationSummaryList = Shapes::ListShape.new(name: 'GenerationSummaryList')
    GenericBoolean = Shapes::BooleanShape.new(name: 'GenericBoolean')
    GenericDouble = Shapes::FloatShape.new(name: 'GenericDouble')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    GetAnomaliesRequest = Shapes::StructureShape.new(name: 'GetAnomaliesRequest')
    GetAnomaliesResponse = Shapes::StructureShape.new(name: 'GetAnomaliesResponse')
    GetAnomalyMonitorsRequest = Shapes::StructureShape.new(name: 'GetAnomalyMonitorsRequest')
    GetAnomalyMonitorsResponse = Shapes::StructureShape.new(name: 'GetAnomalyMonitorsResponse')
    GetAnomalySubscriptionsRequest = Shapes::StructureShape.new(name: 'GetAnomalySubscriptionsRequest')
    GetAnomalySubscriptionsResponse = Shapes::StructureShape.new(name: 'GetAnomalySubscriptionsResponse')
    GetApproximateUsageRecordsRequest = Shapes::StructureShape.new(name: 'GetApproximateUsageRecordsRequest')
    GetApproximateUsageRecordsResponse = Shapes::StructureShape.new(name: 'GetApproximateUsageRecordsResponse')
    GetCommitmentPurchaseAnalysisRequest = Shapes::StructureShape.new(name: 'GetCommitmentPurchaseAnalysisRequest')
    GetCommitmentPurchaseAnalysisResponse = Shapes::StructureShape.new(name: 'GetCommitmentPurchaseAnalysisResponse')
    GetCostAndUsageComparisonsRequest = Shapes::StructureShape.new(name: 'GetCostAndUsageComparisonsRequest')
    GetCostAndUsageComparisonsResponse = Shapes::StructureShape.new(name: 'GetCostAndUsageComparisonsResponse')
    GetCostAndUsageRequest = Shapes::StructureShape.new(name: 'GetCostAndUsageRequest')
    GetCostAndUsageResponse = Shapes::StructureShape.new(name: 'GetCostAndUsageResponse')
    GetCostAndUsageWithResourcesRequest = Shapes::StructureShape.new(name: 'GetCostAndUsageWithResourcesRequest')
    GetCostAndUsageWithResourcesResponse = Shapes::StructureShape.new(name: 'GetCostAndUsageWithResourcesResponse')
    GetCostCategoriesRequest = Shapes::StructureShape.new(name: 'GetCostCategoriesRequest')
    GetCostCategoriesResponse = Shapes::StructureShape.new(name: 'GetCostCategoriesResponse')
    GetCostComparisonDriversRequest = Shapes::StructureShape.new(name: 'GetCostComparisonDriversRequest')
    GetCostComparisonDriversResponse = Shapes::StructureShape.new(name: 'GetCostComparisonDriversResponse')
    GetCostForecastRequest = Shapes::StructureShape.new(name: 'GetCostForecastRequest')
    GetCostForecastResponse = Shapes::StructureShape.new(name: 'GetCostForecastResponse')
    GetDimensionValuesRequest = Shapes::StructureShape.new(name: 'GetDimensionValuesRequest')
    GetDimensionValuesResponse = Shapes::StructureShape.new(name: 'GetDimensionValuesResponse')
    GetReservationCoverageRequest = Shapes::StructureShape.new(name: 'GetReservationCoverageRequest')
    GetReservationCoverageResponse = Shapes::StructureShape.new(name: 'GetReservationCoverageResponse')
    GetReservationPurchaseRecommendationRequest = Shapes::StructureShape.new(name: 'GetReservationPurchaseRecommendationRequest')
    GetReservationPurchaseRecommendationResponse = Shapes::StructureShape.new(name: 'GetReservationPurchaseRecommendationResponse')
    GetReservationUtilizationRequest = Shapes::StructureShape.new(name: 'GetReservationUtilizationRequest')
    GetReservationUtilizationResponse = Shapes::StructureShape.new(name: 'GetReservationUtilizationResponse')
    GetRightsizingRecommendationRequest = Shapes::StructureShape.new(name: 'GetRightsizingRecommendationRequest')
    GetRightsizingRecommendationResponse = Shapes::StructureShape.new(name: 'GetRightsizingRecommendationResponse')
    GetSavingsPlanPurchaseRecommendationDetailsRequest = Shapes::StructureShape.new(name: 'GetSavingsPlanPurchaseRecommendationDetailsRequest')
    GetSavingsPlanPurchaseRecommendationDetailsResponse = Shapes::StructureShape.new(name: 'GetSavingsPlanPurchaseRecommendationDetailsResponse')
    GetSavingsPlansCoverageRequest = Shapes::StructureShape.new(name: 'GetSavingsPlansCoverageRequest')
    GetSavingsPlansCoverageResponse = Shapes::StructureShape.new(name: 'GetSavingsPlansCoverageResponse')
    GetSavingsPlansPurchaseRecommendationRequest = Shapes::StructureShape.new(name: 'GetSavingsPlansPurchaseRecommendationRequest')
    GetSavingsPlansPurchaseRecommendationResponse = Shapes::StructureShape.new(name: 'GetSavingsPlansPurchaseRecommendationResponse')
    GetSavingsPlansUtilizationDetailsRequest = Shapes::StructureShape.new(name: 'GetSavingsPlansUtilizationDetailsRequest')
    GetSavingsPlansUtilizationDetailsResponse = Shapes::StructureShape.new(name: 'GetSavingsPlansUtilizationDetailsResponse')
    GetSavingsPlansUtilizationRequest = Shapes::StructureShape.new(name: 'GetSavingsPlansUtilizationRequest')
    GetSavingsPlansUtilizationResponse = Shapes::StructureShape.new(name: 'GetSavingsPlansUtilizationResponse')
    GetTagsRequest = Shapes::StructureShape.new(name: 'GetTagsRequest')
    GetTagsResponse = Shapes::StructureShape.new(name: 'GetTagsResponse')
    GetUsageForecastRequest = Shapes::StructureShape.new(name: 'GetUsageForecastRequest')
    GetUsageForecastResponse = Shapes::StructureShape.new(name: 'GetUsageForecastResponse')
    Granularity = Shapes::StringShape.new(name: 'Granularity')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupDefinition = Shapes::StructureShape.new(name: 'GroupDefinition')
    GroupDefinitionKey = Shapes::StringShape.new(name: 'GroupDefinitionKey')
    GroupDefinitionType = Shapes::StringShape.new(name: 'GroupDefinitionType')
    GroupDefinitions = Shapes::ListShape.new(name: 'GroupDefinitions')
    Groups = Shapes::ListShape.new(name: 'Groups')
    Impact = Shapes::StructureShape.new(name: 'Impact')
    InstanceDetails = Shapes::StructureShape.new(name: 'InstanceDetails')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    Key = Shapes::StringShape.new(name: 'Key')
    Keys = Shapes::ListShape.new(name: 'Keys')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListCommitmentPurchaseAnalysesRequest = Shapes::StructureShape.new(name: 'ListCommitmentPurchaseAnalysesRequest')
    ListCommitmentPurchaseAnalysesResponse = Shapes::StructureShape.new(name: 'ListCommitmentPurchaseAnalysesResponse')
    ListCostAllocationTagBackfillHistoryRequest = Shapes::StructureShape.new(name: 'ListCostAllocationTagBackfillHistoryRequest')
    ListCostAllocationTagBackfillHistoryResponse = Shapes::StructureShape.new(name: 'ListCostAllocationTagBackfillHistoryResponse')
    ListCostAllocationTagsRequest = Shapes::StructureShape.new(name: 'ListCostAllocationTagsRequest')
    ListCostAllocationTagsResponse = Shapes::StructureShape.new(name: 'ListCostAllocationTagsResponse')
    ListCostCategoryDefinitionsRequest = Shapes::StructureShape.new(name: 'ListCostCategoryDefinitionsRequest')
    ListCostCategoryDefinitionsResponse = Shapes::StructureShape.new(name: 'ListCostCategoryDefinitionsResponse')
    ListSavingsPlansPurchaseRecommendationGenerationRequest = Shapes::StructureShape.new(name: 'ListSavingsPlansPurchaseRecommendationGenerationRequest')
    ListSavingsPlansPurchaseRecommendationGenerationResponse = Shapes::StructureShape.new(name: 'ListSavingsPlansPurchaseRecommendationGenerationResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LookbackPeriodInDays = Shapes::StringShape.new(name: 'LookbackPeriodInDays')
    MatchOption = Shapes::StringShape.new(name: 'MatchOption')
    MatchOptions = Shapes::ListShape.new(name: 'MatchOptions')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemoryDBInstanceDetails = Shapes::StructureShape.new(name: 'MemoryDBInstanceDetails')
    Metric = Shapes::StringShape.new(name: 'Metric')
    MetricAmount = Shapes::StringShape.new(name: 'MetricAmount')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNames = Shapes::ListShape.new(name: 'MetricNames')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    MetricValue = Shapes::StructureShape.new(name: 'MetricValue')
    Metrics = Shapes::MapShape.new(name: 'Metrics')
    MetricsOverLookbackPeriod = Shapes::ListShape.new(name: 'MetricsOverLookbackPeriod')
    ModifyRecommendationDetail = Shapes::StructureShape.new(name: 'ModifyRecommendationDetail')
    MonitorArnList = Shapes::ListShape.new(name: 'MonitorArnList')
    MonitorDimension = Shapes::StringShape.new(name: 'MonitorDimension')
    MonitorType = Shapes::StringShape.new(name: 'MonitorType')
    NetRISavings = Shapes::StringShape.new(name: 'NetRISavings')
    NetworkResourceUtilization = Shapes::StructureShape.new(name: 'NetworkResourceUtilization')
    NextPageToken = Shapes::StringShape.new(name: 'NextPageToken')
    NonNegativeInteger = Shapes::IntegerShape.new(name: 'NonNegativeInteger')
    NonNegativeLong = Shapes::IntegerShape.new(name: 'NonNegativeLong')
    NullableNonNegativeDouble = Shapes::FloatShape.new(name: 'NullableNonNegativeDouble')
    NumericOperator = Shapes::StringShape.new(name: 'NumericOperator')
    OfferingClass = Shapes::StringShape.new(name: 'OfferingClass')
    OnDemandCost = Shapes::StringShape.new(name: 'OnDemandCost')
    OnDemandCostOfRIHoursUsed = Shapes::StringShape.new(name: 'OnDemandCostOfRIHoursUsed')
    OnDemandHours = Shapes::StringShape.new(name: 'OnDemandHours')
    OnDemandNormalizedUnits = Shapes::StringShape.new(name: 'OnDemandNormalizedUnits')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    PaymentOption = Shapes::StringShape.new(name: 'PaymentOption')
    PlatformDifference = Shapes::StringShape.new(name: 'PlatformDifference')
    PlatformDifferences = Shapes::ListShape.new(name: 'PlatformDifferences')
    PredictionIntervalLevel = Shapes::IntegerShape.new(name: 'PredictionIntervalLevel')
    ProvideAnomalyFeedbackRequest = Shapes::StructureShape.new(name: 'ProvideAnomalyFeedbackRequest')
    ProvideAnomalyFeedbackResponse = Shapes::StructureShape.new(name: 'ProvideAnomalyFeedbackResponse')
    PurchasedHours = Shapes::StringShape.new(name: 'PurchasedHours')
    PurchasedUnits = Shapes::StringShape.new(name: 'PurchasedUnits')
    RDSInstanceDetails = Shapes::StructureShape.new(name: 'RDSInstanceDetails')
    RICostForUnusedHours = Shapes::StringShape.new(name: 'RICostForUnusedHours')
    RealizedSavings = Shapes::StringShape.new(name: 'RealizedSavings')
    RecommendationDetailData = Shapes::StructureShape.new(name: 'RecommendationDetailData')
    RecommendationDetailHourlyMetrics = Shapes::StructureShape.new(name: 'RecommendationDetailHourlyMetrics')
    RecommendationDetailId = Shapes::StringShape.new(name: 'RecommendationDetailId')
    RecommendationId = Shapes::StringShape.new(name: 'RecommendationId')
    RecommendationIdList = Shapes::ListShape.new(name: 'RecommendationIdList')
    RecommendationTarget = Shapes::StringShape.new(name: 'RecommendationTarget')
    RedshiftInstanceDetails = Shapes::StructureShape.new(name: 'RedshiftInstanceDetails')
    RequestChangedException = Shapes::StructureShape.new(name: 'RequestChangedException')
    ReservationAggregates = Shapes::StructureShape.new(name: 'ReservationAggregates')
    ReservationCoverageGroup = Shapes::StructureShape.new(name: 'ReservationCoverageGroup')
    ReservationCoverageGroups = Shapes::ListShape.new(name: 'ReservationCoverageGroups')
    ReservationGroupKey = Shapes::StringShape.new(name: 'ReservationGroupKey')
    ReservationGroupValue = Shapes::StringShape.new(name: 'ReservationGroupValue')
    ReservationPurchaseRecommendation = Shapes::StructureShape.new(name: 'ReservationPurchaseRecommendation')
    ReservationPurchaseRecommendationDetail = Shapes::StructureShape.new(name: 'ReservationPurchaseRecommendationDetail')
    ReservationPurchaseRecommendationDetails = Shapes::ListShape.new(name: 'ReservationPurchaseRecommendationDetails')
    ReservationPurchaseRecommendationMetadata = Shapes::StructureShape.new(name: 'ReservationPurchaseRecommendationMetadata')
    ReservationPurchaseRecommendationSummary = Shapes::StructureShape.new(name: 'ReservationPurchaseRecommendationSummary')
    ReservationPurchaseRecommendations = Shapes::ListShape.new(name: 'ReservationPurchaseRecommendations')
    ReservationUtilizationGroup = Shapes::StructureShape.new(name: 'ReservationUtilizationGroup')
    ReservationUtilizationGroups = Shapes::ListShape.new(name: 'ReservationUtilizationGroups')
    ReservedCapacityDetails = Shapes::StructureShape.new(name: 'ReservedCapacityDetails')
    ReservedHours = Shapes::StringShape.new(name: 'ReservedHours')
    ReservedNormalizedUnits = Shapes::StringShape.new(name: 'ReservedNormalizedUnits')
    ResourceDetails = Shapes::StructureShape.new(name: 'ResourceDetails')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagKeyList = Shapes::ListShape.new(name: 'ResourceTagKeyList')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    ResourceUtilization = Shapes::StructureShape.new(name: 'ResourceUtilization')
    ResultByTime = Shapes::StructureShape.new(name: 'ResultByTime')
    ResultsByTime = Shapes::ListShape.new(name: 'ResultsByTime')
    RightsizingRecommendation = Shapes::StructureShape.new(name: 'RightsizingRecommendation')
    RightsizingRecommendationConfiguration = Shapes::StructureShape.new(name: 'RightsizingRecommendationConfiguration')
    RightsizingRecommendationList = Shapes::ListShape.new(name: 'RightsizingRecommendationList')
    RightsizingRecommendationMetadata = Shapes::StructureShape.new(name: 'RightsizingRecommendationMetadata')
    RightsizingRecommendationSummary = Shapes::StructureShape.new(name: 'RightsizingRecommendationSummary')
    RightsizingType = Shapes::StringShape.new(name: 'RightsizingType')
    RootCause = Shapes::StructureShape.new(name: 'RootCause')
    RootCauseImpact = Shapes::StructureShape.new(name: 'RootCauseImpact')
    RootCauses = Shapes::ListShape.new(name: 'RootCauses')
    SavingsPlanArn = Shapes::StringShape.new(name: 'SavingsPlanArn')
    SavingsPlans = Shapes::StructureShape.new(name: 'SavingsPlans')
    SavingsPlansAmortizedCommitment = Shapes::StructureShape.new(name: 'SavingsPlansAmortizedCommitment')
    SavingsPlansCommitment = Shapes::FloatShape.new(name: 'SavingsPlansCommitment')
    SavingsPlansCoverage = Shapes::StructureShape.new(name: 'SavingsPlansCoverage')
    SavingsPlansCoverageData = Shapes::StructureShape.new(name: 'SavingsPlansCoverageData')
    SavingsPlansCoverages = Shapes::ListShape.new(name: 'SavingsPlansCoverages')
    SavingsPlansDataType = Shapes::StringShape.new(name: 'SavingsPlansDataType')
    SavingsPlansDataTypes = Shapes::ListShape.new(name: 'SavingsPlansDataTypes')
    SavingsPlansDetails = Shapes::StructureShape.new(name: 'SavingsPlansDetails')
    SavingsPlansId = Shapes::StringShape.new(name: 'SavingsPlansId')
    SavingsPlansPurchaseAnalysisConfiguration = Shapes::StructureShape.new(name: 'SavingsPlansPurchaseAnalysisConfiguration')
    SavingsPlansPurchaseAnalysisDetails = Shapes::StructureShape.new(name: 'SavingsPlansPurchaseAnalysisDetails')
    SavingsPlansPurchaseRecommendation = Shapes::StructureShape.new(name: 'SavingsPlansPurchaseRecommendation')
    SavingsPlansPurchaseRecommendationDetail = Shapes::StructureShape.new(name: 'SavingsPlansPurchaseRecommendationDetail')
    SavingsPlansPurchaseRecommendationDetailList = Shapes::ListShape.new(name: 'SavingsPlansPurchaseRecommendationDetailList')
    SavingsPlansPurchaseRecommendationMetadata = Shapes::StructureShape.new(name: 'SavingsPlansPurchaseRecommendationMetadata')
    SavingsPlansPurchaseRecommendationSummary = Shapes::StructureShape.new(name: 'SavingsPlansPurchaseRecommendationSummary')
    SavingsPlansSavings = Shapes::StructureShape.new(name: 'SavingsPlansSavings')
    SavingsPlansToAdd = Shapes::ListShape.new(name: 'SavingsPlansToAdd')
    SavingsPlansToExclude = Shapes::ListShape.new(name: 'SavingsPlansToExclude')
    SavingsPlansUtilization = Shapes::StructureShape.new(name: 'SavingsPlansUtilization')
    SavingsPlansUtilizationAggregates = Shapes::StructureShape.new(name: 'SavingsPlansUtilizationAggregates')
    SavingsPlansUtilizationByTime = Shapes::StructureShape.new(name: 'SavingsPlansUtilizationByTime')
    SavingsPlansUtilizationDetail = Shapes::StructureShape.new(name: 'SavingsPlansUtilizationDetail')
    SavingsPlansUtilizationDetails = Shapes::ListShape.new(name: 'SavingsPlansUtilizationDetails')
    SavingsPlansUtilizationsByTime = Shapes::ListShape.new(name: 'SavingsPlansUtilizationsByTime')
    SearchString = Shapes::StringShape.new(name: 'SearchString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceSpecification = Shapes::StructureShape.new(name: 'ServiceSpecification')
    SortDefinition = Shapes::StructureShape.new(name: 'SortDefinition')
    SortDefinitionKey = Shapes::StringShape.new(name: 'SortDefinitionKey')
    SortDefinitions = Shapes::ListShape.new(name: 'SortDefinitions')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartCommitmentPurchaseAnalysisRequest = Shapes::StructureShape.new(name: 'StartCommitmentPurchaseAnalysisRequest')
    StartCommitmentPurchaseAnalysisResponse = Shapes::StructureShape.new(name: 'StartCommitmentPurchaseAnalysisResponse')
    StartCostAllocationTagBackfillRequest = Shapes::StructureShape.new(name: 'StartCostAllocationTagBackfillRequest')
    StartCostAllocationTagBackfillResponse = Shapes::StructureShape.new(name: 'StartCostAllocationTagBackfillResponse')
    StartSavingsPlansPurchaseRecommendationGenerationRequest = Shapes::StructureShape.new(name: 'StartSavingsPlansPurchaseRecommendationGenerationRequest')
    StartSavingsPlansPurchaseRecommendationGenerationResponse = Shapes::StructureShape.new(name: 'StartSavingsPlansPurchaseRecommendationGenerationResponse')
    Subscriber = Shapes::StructureShape.new(name: 'Subscriber')
    SubscriberAddress = Shapes::StringShape.new(name: 'SubscriberAddress')
    SubscriberStatus = Shapes::StringShape.new(name: 'SubscriberStatus')
    SubscriberType = Shapes::StringShape.new(name: 'SubscriberType')
    Subscribers = Shapes::ListShape.new(name: 'Subscribers')
    SupportedSavingsPlansType = Shapes::StringShape.new(name: 'SupportedSavingsPlansType')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValues = Shapes::StructureShape.new(name: 'TagValues')
    TagValuesList = Shapes::ListShape.new(name: 'TagValuesList')
    TargetInstance = Shapes::StructureShape.new(name: 'TargetInstance')
    TargetInstancesList = Shapes::ListShape.new(name: 'TargetInstancesList')
    TermInYears = Shapes::StringShape.new(name: 'TermInYears')
    TerminateRecommendationDetail = Shapes::StructureShape.new(name: 'TerminateRecommendationDetail')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TotalActualHours = Shapes::StringShape.new(name: 'TotalActualHours')
    TotalActualUnits = Shapes::StringShape.new(name: 'TotalActualUnits')
    TotalAmortizedFee = Shapes::StringShape.new(name: 'TotalAmortizedFee')
    TotalImpactFilter = Shapes::StructureShape.new(name: 'TotalImpactFilter')
    TotalPotentialRISavings = Shapes::StringShape.new(name: 'TotalPotentialRISavings')
    TotalRunningHours = Shapes::StringShape.new(name: 'TotalRunningHours')
    TotalRunningNormalizedUnits = Shapes::StringShape.new(name: 'TotalRunningNormalizedUnits')
    UnknownMonitorException = Shapes::StructureShape.new(name: 'UnknownMonitorException')
    UnknownSubscriptionException = Shapes::StructureShape.new(name: 'UnknownSubscriptionException')
    UnrealizedSavings = Shapes::StringShape.new(name: 'UnrealizedSavings')
    UnresolvableUsageUnitException = Shapes::StructureShape.new(name: 'UnresolvableUsageUnitException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UnusedHours = Shapes::StringShape.new(name: 'UnusedHours')
    UnusedUnits = Shapes::StringShape.new(name: 'UnusedUnits')
    UpdateAnomalyMonitorRequest = Shapes::StructureShape.new(name: 'UpdateAnomalyMonitorRequest')
    UpdateAnomalyMonitorResponse = Shapes::StructureShape.new(name: 'UpdateAnomalyMonitorResponse')
    UpdateAnomalySubscriptionRequest = Shapes::StructureShape.new(name: 'UpdateAnomalySubscriptionRequest')
    UpdateAnomalySubscriptionResponse = Shapes::StructureShape.new(name: 'UpdateAnomalySubscriptionResponse')
    UpdateCostAllocationTagsStatusError = Shapes::StructureShape.new(name: 'UpdateCostAllocationTagsStatusError')
    UpdateCostAllocationTagsStatusErrors = Shapes::ListShape.new(name: 'UpdateCostAllocationTagsStatusErrors')
    UpdateCostAllocationTagsStatusRequest = Shapes::StructureShape.new(name: 'UpdateCostAllocationTagsStatusRequest')
    UpdateCostAllocationTagsStatusResponse = Shapes::StructureShape.new(name: 'UpdateCostAllocationTagsStatusResponse')
    UpdateCostCategoryDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateCostCategoryDefinitionRequest')
    UpdateCostCategoryDefinitionResponse = Shapes::StructureShape.new(name: 'UpdateCostCategoryDefinitionResponse')
    UsageServices = Shapes::ListShape.new(name: 'UsageServices')
    UtilizationByTime = Shapes::StructureShape.new(name: 'UtilizationByTime')
    UtilizationPercentage = Shapes::StringShape.new(name: 'UtilizationPercentage')
    UtilizationPercentageInUnits = Shapes::StringShape.new(name: 'UtilizationPercentageInUnits')
    UtilizationsByTime = Shapes::ListShape.new(name: 'UtilizationsByTime')
    Value = Shapes::StringShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')
    YearMonthDay = Shapes::StringShape.new(name: 'YearMonthDay')
    ZonedDateTime = Shapes::StringShape.new(name: 'ZonedDateTime')

    AnalysisDetails.add_member(:savings_plans_purchase_analysis_details, Shapes::ShapeRef.new(shape: SavingsPlansPurchaseAnalysisDetails, location_name: "SavingsPlansPurchaseAnalysisDetails"))
    AnalysisDetails.struct_class = Types::AnalysisDetails

    AnalysisIds.member = Shapes::ShapeRef.new(shape: AnalysisId)

    AnalysisNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AnalysisNotFoundException.struct_class = Types::AnalysisNotFoundException

    AnalysisSummary.add_member(:estimated_completion_time, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EstimatedCompletionTime"))
    AnalysisSummary.add_member(:analysis_completion_time, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "AnalysisCompletionTime"))
    AnalysisSummary.add_member(:analysis_started_time, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "AnalysisStartedTime"))
    AnalysisSummary.add_member(:analysis_status, Shapes::ShapeRef.new(shape: AnalysisStatus, location_name: "AnalysisStatus"))
    AnalysisSummary.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    AnalysisSummary.add_member(:analysis_id, Shapes::ShapeRef.new(shape: AnalysisId, location_name: "AnalysisId"))
    AnalysisSummary.add_member(:commitment_purchase_analysis_configuration, Shapes::ShapeRef.new(shape: CommitmentPurchaseAnalysisConfiguration, location_name: "CommitmentPurchaseAnalysisConfiguration"))
    AnalysisSummary.struct_class = Types::AnalysisSummary

    AnalysisSummaryList.member = Shapes::ShapeRef.new(shape: AnalysisSummary)

    Anomalies.member = Shapes::ShapeRef.new(shape: Anomaly)

    Anomaly.add_member(:anomaly_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AnomalyId"))
    Anomaly.add_member(:anomaly_start_date, Shapes::ShapeRef.new(shape: YearMonthDay, location_name: "AnomalyStartDate"))
    Anomaly.add_member(:anomaly_end_date, Shapes::ShapeRef.new(shape: YearMonthDay, location_name: "AnomalyEndDate"))
    Anomaly.add_member(:dimension_value, Shapes::ShapeRef.new(shape: GenericString, location_name: "DimensionValue"))
    Anomaly.add_member(:root_causes, Shapes::ShapeRef.new(shape: RootCauses, location_name: "RootCauses"))
    Anomaly.add_member(:anomaly_score, Shapes::ShapeRef.new(shape: AnomalyScore, required: true, location_name: "AnomalyScore"))
    Anomaly.add_member(:impact, Shapes::ShapeRef.new(shape: Impact, required: true, location_name: "Impact"))
    Anomaly.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "MonitorArn"))
    Anomaly.add_member(:feedback, Shapes::ShapeRef.new(shape: AnomalyFeedbackType, location_name: "Feedback"))
    Anomaly.struct_class = Types::Anomaly

    AnomalyDateInterval.add_member(:start_date, Shapes::ShapeRef.new(shape: YearMonthDay, required: true, location_name: "StartDate"))
    AnomalyDateInterval.add_member(:end_date, Shapes::ShapeRef.new(shape: YearMonthDay, location_name: "EndDate"))
    AnomalyDateInterval.struct_class = Types::AnomalyDateInterval

    AnomalyMonitor.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "MonitorArn"))
    AnomalyMonitor.add_member(:monitor_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "MonitorName"))
    AnomalyMonitor.add_member(:creation_date, Shapes::ShapeRef.new(shape: YearMonthDay, location_name: "CreationDate"))
    AnomalyMonitor.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: YearMonthDay, location_name: "LastUpdatedDate"))
    AnomalyMonitor.add_member(:last_evaluated_date, Shapes::ShapeRef.new(shape: YearMonthDay, location_name: "LastEvaluatedDate"))
    AnomalyMonitor.add_member(:monitor_type, Shapes::ShapeRef.new(shape: MonitorType, required: true, location_name: "MonitorType"))
    AnomalyMonitor.add_member(:monitor_dimension, Shapes::ShapeRef.new(shape: MonitorDimension, location_name: "MonitorDimension"))
    AnomalyMonitor.add_member(:monitor_specification, Shapes::ShapeRef.new(shape: Expression, location_name: "MonitorSpecification"))
    AnomalyMonitor.add_member(:dimensional_value_count, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "DimensionalValueCount"))
    AnomalyMonitor.struct_class = Types::AnomalyMonitor

    AnomalyMonitors.member = Shapes::ShapeRef.new(shape: AnomalyMonitor)

    AnomalyScore.add_member(:max_score, Shapes::ShapeRef.new(shape: GenericDouble, required: true, location_name: "MaxScore"))
    AnomalyScore.add_member(:current_score, Shapes::ShapeRef.new(shape: GenericDouble, required: true, location_name: "CurrentScore"))
    AnomalyScore.struct_class = Types::AnomalyScore

    AnomalySubscription.add_member(:subscription_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "SubscriptionArn"))
    AnomalySubscription.add_member(:account_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "AccountId"))
    AnomalySubscription.add_member(:monitor_arn_list, Shapes::ShapeRef.new(shape: MonitorArnList, required: true, location_name: "MonitorArnList"))
    AnomalySubscription.add_member(:subscribers, Shapes::ShapeRef.new(shape: Subscribers, required: true, location_name: "Subscribers"))
    AnomalySubscription.add_member(:threshold, Shapes::ShapeRef.new(shape: NullableNonNegativeDouble, deprecated: true, location_name: "Threshold", metadata: {"deprecatedMessage" => "Threshold has been deprecated in favor of ThresholdExpression"}))
    AnomalySubscription.add_member(:frequency, Shapes::ShapeRef.new(shape: AnomalySubscriptionFrequency, required: true, location_name: "Frequency"))
    AnomalySubscription.add_member(:subscription_name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "SubscriptionName"))
    AnomalySubscription.add_member(:threshold_expression, Shapes::ShapeRef.new(shape: Expression, location_name: "ThresholdExpression"))
    AnomalySubscription.struct_class = Types::AnomalySubscription

    AnomalySubscriptions.member = Shapes::ShapeRef.new(shape: AnomalySubscription)

    ApproximateUsageRecordsPerService.key = Shapes::ShapeRef.new(shape: GenericString)
    ApproximateUsageRecordsPerService.value = Shapes::ShapeRef.new(shape: NonNegativeLong)

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeType)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    BackfillLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BackfillLimitExceededException.struct_class = Types::BackfillLimitExceededException

    BillExpirationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BillExpirationException.struct_class = Types::BillExpirationException

    CommitmentPurchaseAnalysisConfiguration.add_member(:savings_plans_purchase_analysis_configuration, Shapes::ShapeRef.new(shape: SavingsPlansPurchaseAnalysisConfiguration, location_name: "SavingsPlansPurchaseAnalysisConfiguration"))
    CommitmentPurchaseAnalysisConfiguration.struct_class = Types::CommitmentPurchaseAnalysisConfiguration

    ComparisonMetricValue.add_member(:baseline_time_period_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "BaselineTimePeriodAmount"))
    ComparisonMetricValue.add_member(:comparison_time_period_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "ComparisonTimePeriodAmount"))
    ComparisonMetricValue.add_member(:difference, Shapes::ShapeRef.new(shape: GenericString, location_name: "Difference"))
    ComparisonMetricValue.add_member(:unit, Shapes::ShapeRef.new(shape: GenericString, location_name: "Unit"))
    ComparisonMetricValue.struct_class = Types::ComparisonMetricValue

    ComparisonMetrics.key = Shapes::ShapeRef.new(shape: MetricName)
    ComparisonMetrics.value = Shapes::ShapeRef.new(shape: ComparisonMetricValue)

    CostAllocationTag.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "TagKey"))
    CostAllocationTag.add_member(:type, Shapes::ShapeRef.new(shape: CostAllocationTagType, required: true, location_name: "Type"))
    CostAllocationTag.add_member(:status, Shapes::ShapeRef.new(shape: CostAllocationTagStatus, required: true, location_name: "Status"))
    CostAllocationTag.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "LastUpdatedDate"))
    CostAllocationTag.add_member(:last_used_date, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "LastUsedDate"))
    CostAllocationTag.struct_class = Types::CostAllocationTag

    CostAllocationTagBackfillRequest.add_member(:backfill_from, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "BackfillFrom"))
    CostAllocationTagBackfillRequest.add_member(:requested_at, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "RequestedAt"))
    CostAllocationTagBackfillRequest.add_member(:completed_at, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "CompletedAt"))
    CostAllocationTagBackfillRequest.add_member(:backfill_status, Shapes::ShapeRef.new(shape: CostAllocationTagBackfillStatus, location_name: "BackfillStatus"))
    CostAllocationTagBackfillRequest.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "LastUpdatedAt"))
    CostAllocationTagBackfillRequest.struct_class = Types::CostAllocationTagBackfillRequest

    CostAllocationTagBackfillRequestList.member = Shapes::ShapeRef.new(shape: CostAllocationTagBackfillRequest)

    CostAllocationTagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    CostAllocationTagList.member = Shapes::ShapeRef.new(shape: CostAllocationTag)

    CostAllocationTagStatusEntry.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "TagKey"))
    CostAllocationTagStatusEntry.add_member(:status, Shapes::ShapeRef.new(shape: CostAllocationTagStatus, required: true, location_name: "Status"))
    CostAllocationTagStatusEntry.struct_class = Types::CostAllocationTagStatusEntry

    CostAllocationTagStatusList.member = Shapes::ShapeRef.new(shape: CostAllocationTagStatusEntry)

    CostAndUsageComparison.add_member(:cost_and_usage_selector, Shapes::ShapeRef.new(shape: Expression, location_name: "CostAndUsageSelector"))
    CostAndUsageComparison.add_member(:metrics, Shapes::ShapeRef.new(shape: ComparisonMetrics, location_name: "Metrics"))
    CostAndUsageComparison.struct_class = Types::CostAndUsageComparison

    CostAndUsageComparisons.member = Shapes::ShapeRef.new(shape: CostAndUsageComparison)

    CostCategory.add_member(:cost_category_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CostCategoryArn"))
    CostCategory.add_member(:effective_start, Shapes::ShapeRef.new(shape: ZonedDateTime, required: true, location_name: "EffectiveStart"))
    CostCategory.add_member(:effective_end, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EffectiveEnd"))
    CostCategory.add_member(:name, Shapes::ShapeRef.new(shape: CostCategoryName, required: true, location_name: "Name"))
    CostCategory.add_member(:rule_version, Shapes::ShapeRef.new(shape: CostCategoryRuleVersion, required: true, location_name: "RuleVersion"))
    CostCategory.add_member(:rules, Shapes::ShapeRef.new(shape: CostCategoryRulesList, required: true, location_name: "Rules"))
    CostCategory.add_member(:split_charge_rules, Shapes::ShapeRef.new(shape: CostCategorySplitChargeRulesList, location_name: "SplitChargeRules"))
    CostCategory.add_member(:processing_status, Shapes::ShapeRef.new(shape: CostCategoryProcessingStatusList, location_name: "ProcessingStatus"))
    CostCategory.add_member(:default_value, Shapes::ShapeRef.new(shape: CostCategoryValue, location_name: "DefaultValue"))
    CostCategory.struct_class = Types::CostCategory

    CostCategoryInheritedValueDimension.add_member(:dimension_name, Shapes::ShapeRef.new(shape: CostCategoryInheritedValueDimensionName, location_name: "DimensionName"))
    CostCategoryInheritedValueDimension.add_member(:dimension_key, Shapes::ShapeRef.new(shape: GenericString, location_name: "DimensionKey"))
    CostCategoryInheritedValueDimension.struct_class = Types::CostCategoryInheritedValueDimension

    CostCategoryNamesList.member = Shapes::ShapeRef.new(shape: CostCategoryName)

    CostCategoryProcessingStatus.add_member(:component, Shapes::ShapeRef.new(shape: CostCategoryStatusComponent, location_name: "Component"))
    CostCategoryProcessingStatus.add_member(:status, Shapes::ShapeRef.new(shape: CostCategoryStatus, location_name: "Status"))
    CostCategoryProcessingStatus.struct_class = Types::CostCategoryProcessingStatus

    CostCategoryProcessingStatusList.member = Shapes::ShapeRef.new(shape: CostCategoryProcessingStatus)

    CostCategoryReference.add_member(:cost_category_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CostCategoryArn"))
    CostCategoryReference.add_member(:name, Shapes::ShapeRef.new(shape: CostCategoryName, location_name: "Name"))
    CostCategoryReference.add_member(:effective_start, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EffectiveStart"))
    CostCategoryReference.add_member(:effective_end, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EffectiveEnd"))
    CostCategoryReference.add_member(:number_of_rules, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "NumberOfRules"))
    CostCategoryReference.add_member(:processing_status, Shapes::ShapeRef.new(shape: CostCategoryProcessingStatusList, location_name: "ProcessingStatus"))
    CostCategoryReference.add_member(:values, Shapes::ShapeRef.new(shape: CostCategoryValuesList, location_name: "Values"))
    CostCategoryReference.add_member(:default_value, Shapes::ShapeRef.new(shape: CostCategoryValue, location_name: "DefaultValue"))
    CostCategoryReference.struct_class = Types::CostCategoryReference

    CostCategoryReferencesList.member = Shapes::ShapeRef.new(shape: CostCategoryReference)

    CostCategoryRule.add_member(:value, Shapes::ShapeRef.new(shape: CostCategoryValue, location_name: "Value"))
    CostCategoryRule.add_member(:rule, Shapes::ShapeRef.new(shape: Expression, location_name: "Rule"))
    CostCategoryRule.add_member(:inherited_value, Shapes::ShapeRef.new(shape: CostCategoryInheritedValueDimension, location_name: "InheritedValue"))
    CostCategoryRule.add_member(:type, Shapes::ShapeRef.new(shape: CostCategoryRuleType, location_name: "Type"))
    CostCategoryRule.struct_class = Types::CostCategoryRule

    CostCategoryRulesList.member = Shapes::ShapeRef.new(shape: CostCategoryRule)

    CostCategorySplitChargeRule.add_member(:source, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Source"))
    CostCategorySplitChargeRule.add_member(:targets, Shapes::ShapeRef.new(shape: CostCategorySplitChargeRuleTargetsList, required: true, location_name: "Targets"))
    CostCategorySplitChargeRule.add_member(:method, Shapes::ShapeRef.new(shape: CostCategorySplitChargeMethod, required: true, location_name: "Method"))
    CostCategorySplitChargeRule.add_member(:parameters, Shapes::ShapeRef.new(shape: CostCategorySplitChargeRuleParametersList, location_name: "Parameters"))
    CostCategorySplitChargeRule.struct_class = Types::CostCategorySplitChargeRule

    CostCategorySplitChargeRuleParameter.add_member(:type, Shapes::ShapeRef.new(shape: CostCategorySplitChargeRuleParameterType, required: true, location_name: "Type"))
    CostCategorySplitChargeRuleParameter.add_member(:values, Shapes::ShapeRef.new(shape: CostCategorySplitChargeRuleParameterValuesList, required: true, location_name: "Values"))
    CostCategorySplitChargeRuleParameter.struct_class = Types::CostCategorySplitChargeRuleParameter

    CostCategorySplitChargeRuleParameterValuesList.member = Shapes::ShapeRef.new(shape: GenericString)

    CostCategorySplitChargeRuleParametersList.member = Shapes::ShapeRef.new(shape: CostCategorySplitChargeRuleParameter)

    CostCategorySplitChargeRuleTargetsList.member = Shapes::ShapeRef.new(shape: GenericString)

    CostCategorySplitChargeRulesList.member = Shapes::ShapeRef.new(shape: CostCategorySplitChargeRule)

    CostCategoryValues.add_member(:key, Shapes::ShapeRef.new(shape: CostCategoryName, location_name: "Key"))
    CostCategoryValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, location_name: "Values"))
    CostCategoryValues.add_member(:match_options, Shapes::ShapeRef.new(shape: MatchOptions, location_name: "MatchOptions"))
    CostCategoryValues.struct_class = Types::CostCategoryValues

    CostCategoryValuesList.member = Shapes::ShapeRef.new(shape: CostCategoryValue)

    CostComparisonDriver.add_member(:cost_selector, Shapes::ShapeRef.new(shape: Expression, location_name: "CostSelector"))
    CostComparisonDriver.add_member(:metrics, Shapes::ShapeRef.new(shape: ComparisonMetrics, location_name: "Metrics"))
    CostComparisonDriver.add_member(:cost_drivers, Shapes::ShapeRef.new(shape: CostDrivers, location_name: "CostDrivers"))
    CostComparisonDriver.struct_class = Types::CostComparisonDriver

    CostComparisonDrivers.member = Shapes::ShapeRef.new(shape: CostComparisonDriver)

    CostDriver.add_member(:type, Shapes::ShapeRef.new(shape: GenericString, location_name: "Type"))
    CostDriver.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    CostDriver.add_member(:metrics, Shapes::ShapeRef.new(shape: ComparisonMetrics, location_name: "Metrics"))
    CostDriver.struct_class = Types::CostDriver

    CostDrivers.member = Shapes::ShapeRef.new(shape: CostDriver)

    Coverage.add_member(:coverage_hours, Shapes::ShapeRef.new(shape: CoverageHours, location_name: "CoverageHours"))
    Coverage.add_member(:coverage_normalized_units, Shapes::ShapeRef.new(shape: CoverageNormalizedUnits, location_name: "CoverageNormalizedUnits"))
    Coverage.add_member(:coverage_cost, Shapes::ShapeRef.new(shape: CoverageCost, location_name: "CoverageCost"))
    Coverage.struct_class = Types::Coverage

    CoverageByTime.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, location_name: "TimePeriod"))
    CoverageByTime.add_member(:groups, Shapes::ShapeRef.new(shape: ReservationCoverageGroups, location_name: "Groups"))
    CoverageByTime.add_member(:total, Shapes::ShapeRef.new(shape: Coverage, location_name: "Total"))
    CoverageByTime.struct_class = Types::CoverageByTime

    CoverageCost.add_member(:on_demand_cost, Shapes::ShapeRef.new(shape: OnDemandCost, location_name: "OnDemandCost"))
    CoverageCost.struct_class = Types::CoverageCost

    CoverageHours.add_member(:on_demand_hours, Shapes::ShapeRef.new(shape: OnDemandHours, location_name: "OnDemandHours"))
    CoverageHours.add_member(:reserved_hours, Shapes::ShapeRef.new(shape: ReservedHours, location_name: "ReservedHours"))
    CoverageHours.add_member(:total_running_hours, Shapes::ShapeRef.new(shape: TotalRunningHours, location_name: "TotalRunningHours"))
    CoverageHours.add_member(:coverage_hours_percentage, Shapes::ShapeRef.new(shape: CoverageHoursPercentage, location_name: "CoverageHoursPercentage"))
    CoverageHours.struct_class = Types::CoverageHours

    CoverageNormalizedUnits.add_member(:on_demand_normalized_units, Shapes::ShapeRef.new(shape: OnDemandNormalizedUnits, location_name: "OnDemandNormalizedUnits"))
    CoverageNormalizedUnits.add_member(:reserved_normalized_units, Shapes::ShapeRef.new(shape: ReservedNormalizedUnits, location_name: "ReservedNormalizedUnits"))
    CoverageNormalizedUnits.add_member(:total_running_normalized_units, Shapes::ShapeRef.new(shape: TotalRunningNormalizedUnits, location_name: "TotalRunningNormalizedUnits"))
    CoverageNormalizedUnits.add_member(:coverage_normalized_units_percentage, Shapes::ShapeRef.new(shape: CoverageNormalizedUnitsPercentage, location_name: "CoverageNormalizedUnitsPercentage"))
    CoverageNormalizedUnits.struct_class = Types::CoverageNormalizedUnits

    CoveragesByTime.member = Shapes::ShapeRef.new(shape: CoverageByTime)

    CreateAnomalyMonitorRequest.add_member(:anomaly_monitor, Shapes::ShapeRef.new(shape: AnomalyMonitor, required: true, location_name: "AnomalyMonitor"))
    CreateAnomalyMonitorRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    CreateAnomalyMonitorRequest.struct_class = Types::CreateAnomalyMonitorRequest

    CreateAnomalyMonitorResponse.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "MonitorArn"))
    CreateAnomalyMonitorResponse.struct_class = Types::CreateAnomalyMonitorResponse

    CreateAnomalySubscriptionRequest.add_member(:anomaly_subscription, Shapes::ShapeRef.new(shape: AnomalySubscription, required: true, location_name: "AnomalySubscription"))
    CreateAnomalySubscriptionRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    CreateAnomalySubscriptionRequest.struct_class = Types::CreateAnomalySubscriptionRequest

    CreateAnomalySubscriptionResponse.add_member(:subscription_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "SubscriptionArn"))
    CreateAnomalySubscriptionResponse.struct_class = Types::CreateAnomalySubscriptionResponse

    CreateCostCategoryDefinitionRequest.add_member(:name, Shapes::ShapeRef.new(shape: CostCategoryName, required: true, location_name: "Name"))
    CreateCostCategoryDefinitionRequest.add_member(:effective_start, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EffectiveStart"))
    CreateCostCategoryDefinitionRequest.add_member(:rule_version, Shapes::ShapeRef.new(shape: CostCategoryRuleVersion, required: true, location_name: "RuleVersion"))
    CreateCostCategoryDefinitionRequest.add_member(:rules, Shapes::ShapeRef.new(shape: CostCategoryRulesList, required: true, location_name: "Rules"))
    CreateCostCategoryDefinitionRequest.add_member(:default_value, Shapes::ShapeRef.new(shape: CostCategoryValue, location_name: "DefaultValue"))
    CreateCostCategoryDefinitionRequest.add_member(:split_charge_rules, Shapes::ShapeRef.new(shape: CostCategorySplitChargeRulesList, location_name: "SplitChargeRules"))
    CreateCostCategoryDefinitionRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    CreateCostCategoryDefinitionRequest.struct_class = Types::CreateCostCategoryDefinitionRequest

    CreateCostCategoryDefinitionResponse.add_member(:cost_category_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CostCategoryArn"))
    CreateCostCategoryDefinitionResponse.add_member(:effective_start, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EffectiveStart"))
    CreateCostCategoryDefinitionResponse.struct_class = Types::CreateCostCategoryDefinitionResponse

    CurrentInstance.add_member(:resource_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "ResourceId"))
    CurrentInstance.add_member(:instance_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceName"))
    CurrentInstance.add_member(:tags, Shapes::ShapeRef.new(shape: TagValuesList, location_name: "Tags"))
    CurrentInstance.add_member(:resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "ResourceDetails"))
    CurrentInstance.add_member(:resource_utilization, Shapes::ShapeRef.new(shape: ResourceUtilization, location_name: "ResourceUtilization"))
    CurrentInstance.add_member(:reservation_covered_hours_in_lookback_period, Shapes::ShapeRef.new(shape: GenericString, location_name: "ReservationCoveredHoursInLookbackPeriod"))
    CurrentInstance.add_member(:savings_plans_covered_hours_in_lookback_period, Shapes::ShapeRef.new(shape: GenericString, location_name: "SavingsPlansCoveredHoursInLookbackPeriod"))
    CurrentInstance.add_member(:on_demand_hours_in_lookback_period, Shapes::ShapeRef.new(shape: GenericString, location_name: "OnDemandHoursInLookbackPeriod"))
    CurrentInstance.add_member(:total_running_hours_in_lookback_period, Shapes::ShapeRef.new(shape: GenericString, location_name: "TotalRunningHoursInLookbackPeriod"))
    CurrentInstance.add_member(:monthly_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "MonthlyCost"))
    CurrentInstance.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    CurrentInstance.struct_class = Types::CurrentInstance

    DataUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DataUnavailableException.struct_class = Types::DataUnavailableException

    DateInterval.add_member(:start, Shapes::ShapeRef.new(shape: YearMonthDay, required: true, location_name: "Start"))
    DateInterval.add_member(:end, Shapes::ShapeRef.new(shape: YearMonthDay, required: true, location_name: "End"))
    DateInterval.struct_class = Types::DateInterval

    DeleteAnomalyMonitorRequest.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "MonitorArn"))
    DeleteAnomalyMonitorRequest.struct_class = Types::DeleteAnomalyMonitorRequest

    DeleteAnomalyMonitorResponse.struct_class = Types::DeleteAnomalyMonitorResponse

    DeleteAnomalySubscriptionRequest.add_member(:subscription_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "SubscriptionArn"))
    DeleteAnomalySubscriptionRequest.struct_class = Types::DeleteAnomalySubscriptionRequest

    DeleteAnomalySubscriptionResponse.struct_class = Types::DeleteAnomalySubscriptionResponse

    DeleteCostCategoryDefinitionRequest.add_member(:cost_category_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CostCategoryArn"))
    DeleteCostCategoryDefinitionRequest.struct_class = Types::DeleteCostCategoryDefinitionRequest

    DeleteCostCategoryDefinitionResponse.add_member(:cost_category_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CostCategoryArn"))
    DeleteCostCategoryDefinitionResponse.add_member(:effective_end, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EffectiveEnd"))
    DeleteCostCategoryDefinitionResponse.struct_class = Types::DeleteCostCategoryDefinitionResponse

    DescribeCostCategoryDefinitionRequest.add_member(:cost_category_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CostCategoryArn"))
    DescribeCostCategoryDefinitionRequest.add_member(:effective_on, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EffectiveOn"))
    DescribeCostCategoryDefinitionRequest.struct_class = Types::DescribeCostCategoryDefinitionRequest

    DescribeCostCategoryDefinitionResponse.add_member(:cost_category, Shapes::ShapeRef.new(shape: CostCategory, location_name: "CostCategory"))
    DescribeCostCategoryDefinitionResponse.struct_class = Types::DescribeCostCategoryDefinitionResponse

    DimensionValues.add_member(:key, Shapes::ShapeRef.new(shape: Dimension, location_name: "Key"))
    DimensionValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, location_name: "Values"))
    DimensionValues.add_member(:match_options, Shapes::ShapeRef.new(shape: MatchOptions, location_name: "MatchOptions"))
    DimensionValues.struct_class = Types::DimensionValues

    DimensionValuesWithAttributes.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value"))
    DimensionValuesWithAttributes.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    DimensionValuesWithAttributes.struct_class = Types::DimensionValuesWithAttributes

    DimensionValuesWithAttributesList.member = Shapes::ShapeRef.new(shape: DimensionValuesWithAttributes)

    DiskResourceUtilization.add_member(:disk_read_ops_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "DiskReadOpsPerSecond"))
    DiskResourceUtilization.add_member(:disk_write_ops_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "DiskWriteOpsPerSecond"))
    DiskResourceUtilization.add_member(:disk_read_bytes_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "DiskReadBytesPerSecond"))
    DiskResourceUtilization.add_member(:disk_write_bytes_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "DiskWriteBytesPerSecond"))
    DiskResourceUtilization.struct_class = Types::DiskResourceUtilization

    DynamoDBCapacityDetails.add_member(:capacity_units, Shapes::ShapeRef.new(shape: GenericString, location_name: "CapacityUnits"))
    DynamoDBCapacityDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    DynamoDBCapacityDetails.struct_class = Types::DynamoDBCapacityDetails

    EBSResourceUtilization.add_member(:ebs_read_ops_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "EbsReadOpsPerSecond"))
    EBSResourceUtilization.add_member(:ebs_write_ops_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "EbsWriteOpsPerSecond"))
    EBSResourceUtilization.add_member(:ebs_read_bytes_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "EbsReadBytesPerSecond"))
    EBSResourceUtilization.add_member(:ebs_write_bytes_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "EbsWriteBytesPerSecond"))
    EBSResourceUtilization.struct_class = Types::EBSResourceUtilization

    EC2InstanceDetails.add_member(:family, Shapes::ShapeRef.new(shape: GenericString, location_name: "Family"))
    EC2InstanceDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceType"))
    EC2InstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    EC2InstanceDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: GenericString, location_name: "AvailabilityZone"))
    EC2InstanceDetails.add_member(:platform, Shapes::ShapeRef.new(shape: GenericString, location_name: "Platform"))
    EC2InstanceDetails.add_member(:tenancy, Shapes::ShapeRef.new(shape: GenericString, location_name: "Tenancy"))
    EC2InstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    EC2InstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    EC2InstanceDetails.struct_class = Types::EC2InstanceDetails

    EC2ResourceDetails.add_member(:hourly_on_demand_rate, Shapes::ShapeRef.new(shape: GenericString, location_name: "HourlyOnDemandRate"))
    EC2ResourceDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceType"))
    EC2ResourceDetails.add_member(:platform, Shapes::ShapeRef.new(shape: GenericString, location_name: "Platform"))
    EC2ResourceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    EC2ResourceDetails.add_member(:sku, Shapes::ShapeRef.new(shape: GenericString, location_name: "Sku"))
    EC2ResourceDetails.add_member(:memory, Shapes::ShapeRef.new(shape: GenericString, location_name: "Memory"))
    EC2ResourceDetails.add_member(:network_performance, Shapes::ShapeRef.new(shape: GenericString, location_name: "NetworkPerformance"))
    EC2ResourceDetails.add_member(:storage, Shapes::ShapeRef.new(shape: GenericString, location_name: "Storage"))
    EC2ResourceDetails.add_member(:vcpu, Shapes::ShapeRef.new(shape: GenericString, location_name: "Vcpu"))
    EC2ResourceDetails.struct_class = Types::EC2ResourceDetails

    EC2ResourceUtilization.add_member(:max_cpu_utilization_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "MaxCpuUtilizationPercentage"))
    EC2ResourceUtilization.add_member(:max_memory_utilization_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "MaxMemoryUtilizationPercentage"))
    EC2ResourceUtilization.add_member(:max_storage_utilization_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "MaxStorageUtilizationPercentage"))
    EC2ResourceUtilization.add_member(:ebs_resource_utilization, Shapes::ShapeRef.new(shape: EBSResourceUtilization, location_name: "EBSResourceUtilization"))
    EC2ResourceUtilization.add_member(:disk_resource_utilization, Shapes::ShapeRef.new(shape: DiskResourceUtilization, location_name: "DiskResourceUtilization"))
    EC2ResourceUtilization.add_member(:network_resource_utilization, Shapes::ShapeRef.new(shape: NetworkResourceUtilization, location_name: "NetworkResourceUtilization"))
    EC2ResourceUtilization.struct_class = Types::EC2ResourceUtilization

    EC2Specification.add_member(:offering_class, Shapes::ShapeRef.new(shape: OfferingClass, location_name: "OfferingClass"))
    EC2Specification.struct_class = Types::EC2Specification

    ESInstanceDetails.add_member(:instance_class, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceClass"))
    ESInstanceDetails.add_member(:instance_size, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceSize"))
    ESInstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    ESInstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    ESInstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    ESInstanceDetails.struct_class = Types::ESInstanceDetails

    ElastiCacheInstanceDetails.add_member(:family, Shapes::ShapeRef.new(shape: GenericString, location_name: "Family"))
    ElastiCacheInstanceDetails.add_member(:node_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "NodeType"))
    ElastiCacheInstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    ElastiCacheInstanceDetails.add_member(:product_description, Shapes::ShapeRef.new(shape: GenericString, location_name: "ProductDescription"))
    ElastiCacheInstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    ElastiCacheInstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    ElastiCacheInstanceDetails.struct_class = Types::ElastiCacheInstanceDetails

    Expression.add_member(:or, Shapes::ShapeRef.new(shape: Expressions, location_name: "Or"))
    Expression.add_member(:and, Shapes::ShapeRef.new(shape: Expressions, location_name: "And"))
    Expression.add_member(:not, Shapes::ShapeRef.new(shape: Expression, location_name: "Not"))
    Expression.add_member(:dimensions, Shapes::ShapeRef.new(shape: DimensionValues, location_name: "Dimensions"))
    Expression.add_member(:tags, Shapes::ShapeRef.new(shape: TagValues, location_name: "Tags"))
    Expression.add_member(:cost_categories, Shapes::ShapeRef.new(shape: CostCategoryValues, location_name: "CostCategories"))
    Expression.struct_class = Types::Expression

    Expressions.member = Shapes::ShapeRef.new(shape: Expression)

    FindingReasonCodes.member = Shapes::ShapeRef.new(shape: FindingReasonCode)

    ForecastResult.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, location_name: "TimePeriod"))
    ForecastResult.add_member(:mean_value, Shapes::ShapeRef.new(shape: GenericString, location_name: "MeanValue"))
    ForecastResult.add_member(:prediction_interval_lower_bound, Shapes::ShapeRef.new(shape: GenericString, location_name: "PredictionIntervalLowerBound"))
    ForecastResult.add_member(:prediction_interval_upper_bound, Shapes::ShapeRef.new(shape: GenericString, location_name: "PredictionIntervalUpperBound"))
    ForecastResult.struct_class = Types::ForecastResult

    ForecastResultsByTime.member = Shapes::ShapeRef.new(shape: ForecastResult)

    GenerationExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    GenerationExistsException.struct_class = Types::GenerationExistsException

    GenerationSummary.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, location_name: "RecommendationId"))
    GenerationSummary.add_member(:generation_status, Shapes::ShapeRef.new(shape: GenerationStatus, location_name: "GenerationStatus"))
    GenerationSummary.add_member(:generation_started_time, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "GenerationStartedTime"))
    GenerationSummary.add_member(:generation_completion_time, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "GenerationCompletionTime"))
    GenerationSummary.add_member(:estimated_completion_time, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EstimatedCompletionTime"))
    GenerationSummary.struct_class = Types::GenerationSummary

    GenerationSummaryList.member = Shapes::ShapeRef.new(shape: GenerationSummary)

    GetAnomaliesRequest.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "MonitorArn"))
    GetAnomaliesRequest.add_member(:date_interval, Shapes::ShapeRef.new(shape: AnomalyDateInterval, required: true, location_name: "DateInterval"))
    GetAnomaliesRequest.add_member(:feedback, Shapes::ShapeRef.new(shape: AnomalyFeedbackType, location_name: "Feedback"))
    GetAnomaliesRequest.add_member(:total_impact, Shapes::ShapeRef.new(shape: TotalImpactFilter, location_name: "TotalImpact"))
    GetAnomaliesRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetAnomaliesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults", metadata: {"box" => true}))
    GetAnomaliesRequest.struct_class = Types::GetAnomaliesRequest

    GetAnomaliesResponse.add_member(:anomalies, Shapes::ShapeRef.new(shape: Anomalies, required: true, location_name: "Anomalies"))
    GetAnomaliesResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetAnomaliesResponse.struct_class = Types::GetAnomaliesResponse

    GetAnomalyMonitorsRequest.add_member(:monitor_arn_list, Shapes::ShapeRef.new(shape: Values, location_name: "MonitorArnList"))
    GetAnomalyMonitorsRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetAnomalyMonitorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults", metadata: {"box" => true}))
    GetAnomalyMonitorsRequest.struct_class = Types::GetAnomalyMonitorsRequest

    GetAnomalyMonitorsResponse.add_member(:anomaly_monitors, Shapes::ShapeRef.new(shape: AnomalyMonitors, required: true, location_name: "AnomalyMonitors"))
    GetAnomalyMonitorsResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetAnomalyMonitorsResponse.struct_class = Types::GetAnomalyMonitorsResponse

    GetAnomalySubscriptionsRequest.add_member(:subscription_arn_list, Shapes::ShapeRef.new(shape: Values, location_name: "SubscriptionArnList"))
    GetAnomalySubscriptionsRequest.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "MonitorArn"))
    GetAnomalySubscriptionsRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetAnomalySubscriptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults", metadata: {"box" => true}))
    GetAnomalySubscriptionsRequest.struct_class = Types::GetAnomalySubscriptionsRequest

    GetAnomalySubscriptionsResponse.add_member(:anomaly_subscriptions, Shapes::ShapeRef.new(shape: AnomalySubscriptions, required: true, location_name: "AnomalySubscriptions"))
    GetAnomalySubscriptionsResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetAnomalySubscriptionsResponse.struct_class = Types::GetAnomalySubscriptionsResponse

    GetApproximateUsageRecordsRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, required: true, location_name: "Granularity"))
    GetApproximateUsageRecordsRequest.add_member(:services, Shapes::ShapeRef.new(shape: UsageServices, location_name: "Services"))
    GetApproximateUsageRecordsRequest.add_member(:approximation_dimension, Shapes::ShapeRef.new(shape: ApproximationDimension, required: true, location_name: "ApproximationDimension"))
    GetApproximateUsageRecordsRequest.struct_class = Types::GetApproximateUsageRecordsRequest

    GetApproximateUsageRecordsResponse.add_member(:services, Shapes::ShapeRef.new(shape: ApproximateUsageRecordsPerService, location_name: "Services"))
    GetApproximateUsageRecordsResponse.add_member(:total_records, Shapes::ShapeRef.new(shape: NonNegativeLong, location_name: "TotalRecords"))
    GetApproximateUsageRecordsResponse.add_member(:lookback_period, Shapes::ShapeRef.new(shape: DateInterval, location_name: "LookbackPeriod"))
    GetApproximateUsageRecordsResponse.struct_class = Types::GetApproximateUsageRecordsResponse

    GetCommitmentPurchaseAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: AnalysisId, required: true, location_name: "AnalysisId"))
    GetCommitmentPurchaseAnalysisRequest.struct_class = Types::GetCommitmentPurchaseAnalysisRequest

    GetCommitmentPurchaseAnalysisResponse.add_member(:estimated_completion_time, Shapes::ShapeRef.new(shape: ZonedDateTime, required: true, location_name: "EstimatedCompletionTime"))
    GetCommitmentPurchaseAnalysisResponse.add_member(:analysis_completion_time, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "AnalysisCompletionTime"))
    GetCommitmentPurchaseAnalysisResponse.add_member(:analysis_started_time, Shapes::ShapeRef.new(shape: ZonedDateTime, required: true, location_name: "AnalysisStartedTime"))
    GetCommitmentPurchaseAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: AnalysisId, required: true, location_name: "AnalysisId"))
    GetCommitmentPurchaseAnalysisResponse.add_member(:analysis_status, Shapes::ShapeRef.new(shape: AnalysisStatus, required: true, location_name: "AnalysisStatus"))
    GetCommitmentPurchaseAnalysisResponse.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    GetCommitmentPurchaseAnalysisResponse.add_member(:analysis_details, Shapes::ShapeRef.new(shape: AnalysisDetails, location_name: "AnalysisDetails"))
    GetCommitmentPurchaseAnalysisResponse.add_member(:commitment_purchase_analysis_configuration, Shapes::ShapeRef.new(shape: CommitmentPurchaseAnalysisConfiguration, required: true, location_name: "CommitmentPurchaseAnalysisConfiguration"))
    GetCommitmentPurchaseAnalysisResponse.struct_class = Types::GetCommitmentPurchaseAnalysisResponse

    GetCostAndUsageComparisonsRequest.add_member(:billing_view_arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "BillingViewArn"))
    GetCostAndUsageComparisonsRequest.add_member(:baseline_time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "BaselineTimePeriod"))
    GetCostAndUsageComparisonsRequest.add_member(:comparison_time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "ComparisonTimePeriod"))
    GetCostAndUsageComparisonsRequest.add_member(:metric_for_comparison, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricForComparison"))
    GetCostAndUsageComparisonsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetCostAndUsageComparisonsRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupBy"))
    GetCostAndUsageComparisonsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CostAndUsageComparisonsMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetCostAndUsageComparisonsRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostAndUsageComparisonsRequest.struct_class = Types::GetCostAndUsageComparisonsRequest

    GetCostAndUsageComparisonsResponse.add_member(:cost_and_usage_comparisons, Shapes::ShapeRef.new(shape: CostAndUsageComparisons, location_name: "CostAndUsageComparisons"))
    GetCostAndUsageComparisonsResponse.add_member(:total_cost_and_usage, Shapes::ShapeRef.new(shape: ComparisonMetrics, location_name: "TotalCostAndUsage"))
    GetCostAndUsageComparisonsResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostAndUsageComparisonsResponse.struct_class = Types::GetCostAndUsageComparisonsResponse

    GetCostAndUsageRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetCostAndUsageRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, required: true, location_name: "Granularity"))
    GetCostAndUsageRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetCostAndUsageRequest.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricNames, required: true, location_name: "Metrics"))
    GetCostAndUsageRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupBy"))
    GetCostAndUsageRequest.add_member(:billing_view_arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "BillingViewArn"))
    GetCostAndUsageRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostAndUsageRequest.struct_class = Types::GetCostAndUsageRequest

    GetCostAndUsageResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostAndUsageResponse.add_member(:group_definitions, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupDefinitions"))
    GetCostAndUsageResponse.add_member(:results_by_time, Shapes::ShapeRef.new(shape: ResultsByTime, location_name: "ResultsByTime"))
    GetCostAndUsageResponse.add_member(:dimension_value_attributes, Shapes::ShapeRef.new(shape: DimensionValuesWithAttributesList, location_name: "DimensionValueAttributes"))
    GetCostAndUsageResponse.struct_class = Types::GetCostAndUsageResponse

    GetCostAndUsageWithResourcesRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetCostAndUsageWithResourcesRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, required: true, location_name: "Granularity"))
    GetCostAndUsageWithResourcesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Filter"))
    GetCostAndUsageWithResourcesRequest.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricNames, location_name: "Metrics"))
    GetCostAndUsageWithResourcesRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupBy"))
    GetCostAndUsageWithResourcesRequest.add_member(:billing_view_arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "BillingViewArn"))
    GetCostAndUsageWithResourcesRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostAndUsageWithResourcesRequest.struct_class = Types::GetCostAndUsageWithResourcesRequest

    GetCostAndUsageWithResourcesResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostAndUsageWithResourcesResponse.add_member(:group_definitions, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupDefinitions"))
    GetCostAndUsageWithResourcesResponse.add_member(:results_by_time, Shapes::ShapeRef.new(shape: ResultsByTime, location_name: "ResultsByTime"))
    GetCostAndUsageWithResourcesResponse.add_member(:dimension_value_attributes, Shapes::ShapeRef.new(shape: DimensionValuesWithAttributesList, location_name: "DimensionValueAttributes"))
    GetCostAndUsageWithResourcesResponse.struct_class = Types::GetCostAndUsageWithResourcesResponse

    GetCostCategoriesRequest.add_member(:search_string, Shapes::ShapeRef.new(shape: SearchString, location_name: "SearchString"))
    GetCostCategoriesRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetCostCategoriesRequest.add_member(:cost_category_name, Shapes::ShapeRef.new(shape: CostCategoryName, location_name: "CostCategoryName"))
    GetCostCategoriesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetCostCategoriesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortDefinitions, location_name: "SortBy"))
    GetCostCategoriesRequest.add_member(:billing_view_arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "BillingViewArn"))
    GetCostCategoriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetCostCategoriesRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostCategoriesRequest.struct_class = Types::GetCostCategoriesRequest

    GetCostCategoriesResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostCategoriesResponse.add_member(:cost_category_names, Shapes::ShapeRef.new(shape: CostCategoryNamesList, location_name: "CostCategoryNames"))
    GetCostCategoriesResponse.add_member(:cost_category_values, Shapes::ShapeRef.new(shape: CostCategoryValuesList, location_name: "CostCategoryValues"))
    GetCostCategoriesResponse.add_member(:return_size, Shapes::ShapeRef.new(shape: PageSize, required: true, location_name: "ReturnSize"))
    GetCostCategoriesResponse.add_member(:total_size, Shapes::ShapeRef.new(shape: PageSize, required: true, location_name: "TotalSize"))
    GetCostCategoriesResponse.struct_class = Types::GetCostCategoriesResponse

    GetCostComparisonDriversRequest.add_member(:billing_view_arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "BillingViewArn"))
    GetCostComparisonDriversRequest.add_member(:baseline_time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "BaselineTimePeriod"))
    GetCostComparisonDriversRequest.add_member(:comparison_time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "ComparisonTimePeriod"))
    GetCostComparisonDriversRequest.add_member(:metric_for_comparison, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricForComparison"))
    GetCostComparisonDriversRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetCostComparisonDriversRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupBy"))
    GetCostComparisonDriversRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CostComparisonDriversMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetCostComparisonDriversRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostComparisonDriversRequest.struct_class = Types::GetCostComparisonDriversRequest

    GetCostComparisonDriversResponse.add_member(:cost_comparison_drivers, Shapes::ShapeRef.new(shape: CostComparisonDrivers, location_name: "CostComparisonDrivers"))
    GetCostComparisonDriversResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetCostComparisonDriversResponse.struct_class = Types::GetCostComparisonDriversResponse

    GetCostForecastRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetCostForecastRequest.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, required: true, location_name: "Metric"))
    GetCostForecastRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, required: true, location_name: "Granularity"))
    GetCostForecastRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetCostForecastRequest.add_member(:billing_view_arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "BillingViewArn"))
    GetCostForecastRequest.add_member(:prediction_interval_level, Shapes::ShapeRef.new(shape: PredictionIntervalLevel, location_name: "PredictionIntervalLevel"))
    GetCostForecastRequest.struct_class = Types::GetCostForecastRequest

    GetCostForecastResponse.add_member(:total, Shapes::ShapeRef.new(shape: MetricValue, location_name: "Total"))
    GetCostForecastResponse.add_member(:forecast_results_by_time, Shapes::ShapeRef.new(shape: ForecastResultsByTime, location_name: "ForecastResultsByTime"))
    GetCostForecastResponse.struct_class = Types::GetCostForecastResponse

    GetDimensionValuesRequest.add_member(:search_string, Shapes::ShapeRef.new(shape: SearchString, location_name: "SearchString"))
    GetDimensionValuesRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetDimensionValuesRequest.add_member(:dimension, Shapes::ShapeRef.new(shape: Dimension, required: true, location_name: "Dimension"))
    GetDimensionValuesRequest.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "Context"))
    GetDimensionValuesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetDimensionValuesRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortDefinitions, location_name: "SortBy"))
    GetDimensionValuesRequest.add_member(:billing_view_arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "BillingViewArn"))
    GetDimensionValuesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetDimensionValuesRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetDimensionValuesRequest.struct_class = Types::GetDimensionValuesRequest

    GetDimensionValuesResponse.add_member(:dimension_values, Shapes::ShapeRef.new(shape: DimensionValuesWithAttributesList, required: true, location_name: "DimensionValues"))
    GetDimensionValuesResponse.add_member(:return_size, Shapes::ShapeRef.new(shape: PageSize, required: true, location_name: "ReturnSize"))
    GetDimensionValuesResponse.add_member(:total_size, Shapes::ShapeRef.new(shape: PageSize, required: true, location_name: "TotalSize"))
    GetDimensionValuesResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetDimensionValuesResponse.struct_class = Types::GetDimensionValuesResponse

    GetReservationCoverageRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetReservationCoverageRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupBy"))
    GetReservationCoverageRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "Granularity"))
    GetReservationCoverageRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetReservationCoverageRequest.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricNames, location_name: "Metrics"))
    GetReservationCoverageRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationCoverageRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortDefinition, location_name: "SortBy"))
    GetReservationCoverageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetReservationCoverageRequest.struct_class = Types::GetReservationCoverageRequest

    GetReservationCoverageResponse.add_member(:coverages_by_time, Shapes::ShapeRef.new(shape: CoveragesByTime, required: true, location_name: "CoveragesByTime"))
    GetReservationCoverageResponse.add_member(:total, Shapes::ShapeRef.new(shape: Coverage, location_name: "Total"))
    GetReservationCoverageResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationCoverageResponse.struct_class = Types::GetReservationCoverageResponse

    GetReservationPurchaseRecommendationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "AccountId"))
    GetReservationPurchaseRecommendationRequest.add_member(:service, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Service"))
    GetReservationPurchaseRecommendationRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetReservationPurchaseRecommendationRequest.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "AccountScope"))
    GetReservationPurchaseRecommendationRequest.add_member(:lookback_period_in_days, Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: "LookbackPeriodInDays"))
    GetReservationPurchaseRecommendationRequest.add_member(:term_in_years, Shapes::ShapeRef.new(shape: TermInYears, location_name: "TermInYears"))
    GetReservationPurchaseRecommendationRequest.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, location_name: "PaymentOption"))
    GetReservationPurchaseRecommendationRequest.add_member(:service_specification, Shapes::ShapeRef.new(shape: ServiceSpecification, location_name: "ServiceSpecification"))
    GetReservationPurchaseRecommendationRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "PageSize"))
    GetReservationPurchaseRecommendationRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationPurchaseRecommendationRequest.struct_class = Types::GetReservationPurchaseRecommendationRequest

    GetReservationPurchaseRecommendationResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationMetadata, location_name: "Metadata"))
    GetReservationPurchaseRecommendationResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendations, location_name: "Recommendations"))
    GetReservationPurchaseRecommendationResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationPurchaseRecommendationResponse.struct_class = Types::GetReservationPurchaseRecommendationResponse

    GetReservationUtilizationRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetReservationUtilizationRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupBy"))
    GetReservationUtilizationRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "Granularity"))
    GetReservationUtilizationRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetReservationUtilizationRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortDefinition, location_name: "SortBy"))
    GetReservationUtilizationRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationUtilizationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetReservationUtilizationRequest.struct_class = Types::GetReservationUtilizationRequest

    GetReservationUtilizationResponse.add_member(:utilizations_by_time, Shapes::ShapeRef.new(shape: UtilizationsByTime, required: true, location_name: "UtilizationsByTime"))
    GetReservationUtilizationResponse.add_member(:total, Shapes::ShapeRef.new(shape: ReservationAggregates, location_name: "Total"))
    GetReservationUtilizationResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetReservationUtilizationResponse.struct_class = Types::GetReservationUtilizationResponse

    GetRightsizingRecommendationRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetRightsizingRecommendationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RightsizingRecommendationConfiguration, location_name: "Configuration"))
    GetRightsizingRecommendationRequest.add_member(:service, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Service"))
    GetRightsizingRecommendationRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "PageSize"))
    GetRightsizingRecommendationRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetRightsizingRecommendationRequest.struct_class = Types::GetRightsizingRecommendationRequest

    GetRightsizingRecommendationResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: RightsizingRecommendationMetadata, location_name: "Metadata"))
    GetRightsizingRecommendationResponse.add_member(:summary, Shapes::ShapeRef.new(shape: RightsizingRecommendationSummary, location_name: "Summary"))
    GetRightsizingRecommendationResponse.add_member(:rightsizing_recommendations, Shapes::ShapeRef.new(shape: RightsizingRecommendationList, location_name: "RightsizingRecommendations"))
    GetRightsizingRecommendationResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetRightsizingRecommendationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: RightsizingRecommendationConfiguration, location_name: "Configuration"))
    GetRightsizingRecommendationResponse.struct_class = Types::GetRightsizingRecommendationResponse

    GetSavingsPlanPurchaseRecommendationDetailsRequest.add_member(:recommendation_detail_id, Shapes::ShapeRef.new(shape: RecommendationDetailId, required: true, location_name: "RecommendationDetailId"))
    GetSavingsPlanPurchaseRecommendationDetailsRequest.struct_class = Types::GetSavingsPlanPurchaseRecommendationDetailsRequest

    GetSavingsPlanPurchaseRecommendationDetailsResponse.add_member(:recommendation_detail_id, Shapes::ShapeRef.new(shape: RecommendationDetailId, location_name: "RecommendationDetailId"))
    GetSavingsPlanPurchaseRecommendationDetailsResponse.add_member(:recommendation_detail_data, Shapes::ShapeRef.new(shape: RecommendationDetailData, location_name: "RecommendationDetailData"))
    GetSavingsPlanPurchaseRecommendationDetailsResponse.struct_class = Types::GetSavingsPlanPurchaseRecommendationDetailsResponse

    GetSavingsPlansCoverageRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetSavingsPlansCoverageRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupDefinitions, location_name: "GroupBy"))
    GetSavingsPlansCoverageRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "Granularity"))
    GetSavingsPlansCoverageRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetSavingsPlansCoverageRequest.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricNames, location_name: "Metrics"))
    GetSavingsPlansCoverageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    GetSavingsPlansCoverageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetSavingsPlansCoverageRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortDefinition, location_name: "SortBy"))
    GetSavingsPlansCoverageRequest.struct_class = Types::GetSavingsPlansCoverageRequest

    GetSavingsPlansCoverageResponse.add_member(:savings_plans_coverages, Shapes::ShapeRef.new(shape: SavingsPlansCoverages, required: true, location_name: "SavingsPlansCoverages"))
    GetSavingsPlansCoverageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    GetSavingsPlansCoverageResponse.struct_class = Types::GetSavingsPlansCoverageResponse

    GetSavingsPlansPurchaseRecommendationRequest.add_member(:savings_plans_type, Shapes::ShapeRef.new(shape: SupportedSavingsPlansType, required: true, location_name: "SavingsPlansType"))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:term_in_years, Shapes::ShapeRef.new(shape: TermInYears, required: true, location_name: "TermInYears"))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, required: true, location_name: "PaymentOption"))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "AccountScope"))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "PageSize"))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:lookback_period_in_days, Shapes::ShapeRef.new(shape: LookbackPeriodInDays, required: true, location_name: "LookbackPeriodInDays"))
    GetSavingsPlansPurchaseRecommendationRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetSavingsPlansPurchaseRecommendationRequest.struct_class = Types::GetSavingsPlansPurchaseRecommendationRequest

    GetSavingsPlansPurchaseRecommendationResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: SavingsPlansPurchaseRecommendationMetadata, location_name: "Metadata"))
    GetSavingsPlansPurchaseRecommendationResponse.add_member(:savings_plans_purchase_recommendation, Shapes::ShapeRef.new(shape: SavingsPlansPurchaseRecommendation, location_name: "SavingsPlansPurchaseRecommendation"))
    GetSavingsPlansPurchaseRecommendationResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetSavingsPlansPurchaseRecommendationResponse.struct_class = Types::GetSavingsPlansPurchaseRecommendationResponse

    GetSavingsPlansUtilizationDetailsRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetSavingsPlansUtilizationDetailsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetSavingsPlansUtilizationDetailsRequest.add_member(:data_type, Shapes::ShapeRef.new(shape: SavingsPlansDataTypes, location_name: "DataType"))
    GetSavingsPlansUtilizationDetailsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    GetSavingsPlansUtilizationDetailsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    GetSavingsPlansUtilizationDetailsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortDefinition, location_name: "SortBy"))
    GetSavingsPlansUtilizationDetailsRequest.struct_class = Types::GetSavingsPlansUtilizationDetailsRequest

    GetSavingsPlansUtilizationDetailsResponse.add_member(:savings_plans_utilization_details, Shapes::ShapeRef.new(shape: SavingsPlansUtilizationDetails, required: true, location_name: "SavingsPlansUtilizationDetails"))
    GetSavingsPlansUtilizationDetailsResponse.add_member(:total, Shapes::ShapeRef.new(shape: SavingsPlansUtilizationAggregates, location_name: "Total"))
    GetSavingsPlansUtilizationDetailsResponse.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetSavingsPlansUtilizationDetailsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    GetSavingsPlansUtilizationDetailsResponse.struct_class = Types::GetSavingsPlansUtilizationDetailsResponse

    GetSavingsPlansUtilizationRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetSavingsPlansUtilizationRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, location_name: "Granularity"))
    GetSavingsPlansUtilizationRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetSavingsPlansUtilizationRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortDefinition, location_name: "SortBy"))
    GetSavingsPlansUtilizationRequest.struct_class = Types::GetSavingsPlansUtilizationRequest

    GetSavingsPlansUtilizationResponse.add_member(:savings_plans_utilizations_by_time, Shapes::ShapeRef.new(shape: SavingsPlansUtilizationsByTime, location_name: "SavingsPlansUtilizationsByTime"))
    GetSavingsPlansUtilizationResponse.add_member(:total, Shapes::ShapeRef.new(shape: SavingsPlansUtilizationAggregates, required: true, location_name: "Total"))
    GetSavingsPlansUtilizationResponse.struct_class = Types::GetSavingsPlansUtilizationResponse

    GetTagsRequest.add_member(:search_string, Shapes::ShapeRef.new(shape: SearchString, location_name: "SearchString"))
    GetTagsRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetTagsRequest.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "TagKey"))
    GetTagsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetTagsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortDefinitions, location_name: "SortBy"))
    GetTagsRequest.add_member(:billing_view_arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "BillingViewArn"))
    GetTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetTagsRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetTagsRequest.struct_class = Types::GetTagsRequest

    GetTagsResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    GetTagsResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    GetTagsResponse.add_member(:return_size, Shapes::ShapeRef.new(shape: PageSize, required: true, location_name: "ReturnSize"))
    GetTagsResponse.add_member(:total_size, Shapes::ShapeRef.new(shape: PageSize, required: true, location_name: "TotalSize"))
    GetTagsResponse.struct_class = Types::GetTagsResponse

    GetUsageForecastRequest.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    GetUsageForecastRequest.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, required: true, location_name: "Metric"))
    GetUsageForecastRequest.add_member(:granularity, Shapes::ShapeRef.new(shape: Granularity, required: true, location_name: "Granularity"))
    GetUsageForecastRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Expression, location_name: "Filter"))
    GetUsageForecastRequest.add_member(:billing_view_arn, Shapes::ShapeRef.new(shape: BillingViewArn, location_name: "BillingViewArn"))
    GetUsageForecastRequest.add_member(:prediction_interval_level, Shapes::ShapeRef.new(shape: PredictionIntervalLevel, location_name: "PredictionIntervalLevel"))
    GetUsageForecastRequest.struct_class = Types::GetUsageForecastRequest

    GetUsageForecastResponse.add_member(:total, Shapes::ShapeRef.new(shape: MetricValue, location_name: "Total"))
    GetUsageForecastResponse.add_member(:forecast_results_by_time, Shapes::ShapeRef.new(shape: ForecastResultsByTime, location_name: "ForecastResultsByTime"))
    GetUsageForecastResponse.struct_class = Types::GetUsageForecastResponse

    Group.add_member(:keys, Shapes::ShapeRef.new(shape: Keys, location_name: "Keys"))
    Group.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    Group.struct_class = Types::Group

    GroupDefinition.add_member(:type, Shapes::ShapeRef.new(shape: GroupDefinitionType, location_name: "Type"))
    GroupDefinition.add_member(:key, Shapes::ShapeRef.new(shape: GroupDefinitionKey, location_name: "Key"))
    GroupDefinition.struct_class = Types::GroupDefinition

    GroupDefinitions.member = Shapes::ShapeRef.new(shape: GroupDefinition)

    Groups.member = Shapes::ShapeRef.new(shape: Group)

    Impact.add_member(:max_impact, Shapes::ShapeRef.new(shape: GenericDouble, required: true, location_name: "MaxImpact"))
    Impact.add_member(:total_impact, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "TotalImpact"))
    Impact.add_member(:total_actual_spend, Shapes::ShapeRef.new(shape: NullableNonNegativeDouble, location_name: "TotalActualSpend"))
    Impact.add_member(:total_expected_spend, Shapes::ShapeRef.new(shape: NullableNonNegativeDouble, location_name: "TotalExpectedSpend"))
    Impact.add_member(:total_impact_percentage, Shapes::ShapeRef.new(shape: NullableNonNegativeDouble, location_name: "TotalImpactPercentage"))
    Impact.struct_class = Types::Impact

    InstanceDetails.add_member(:ec2_instance_details, Shapes::ShapeRef.new(shape: EC2InstanceDetails, location_name: "EC2InstanceDetails"))
    InstanceDetails.add_member(:rds_instance_details, Shapes::ShapeRef.new(shape: RDSInstanceDetails, location_name: "RDSInstanceDetails"))
    InstanceDetails.add_member(:redshift_instance_details, Shapes::ShapeRef.new(shape: RedshiftInstanceDetails, location_name: "RedshiftInstanceDetails"))
    InstanceDetails.add_member(:elasticache_instance_details, Shapes::ShapeRef.new(shape: ElastiCacheInstanceDetails, location_name: "ElastiCacheInstanceDetails"))
    InstanceDetails.add_member(:es_instance_details, Shapes::ShapeRef.new(shape: ESInstanceDetails, location_name: "ESInstanceDetails"))
    InstanceDetails.add_member(:memory_db_instance_details, Shapes::ShapeRef.new(shape: MemoryDBInstanceDetails, location_name: "MemoryDBInstanceDetails"))
    InstanceDetails.struct_class = Types::InstanceDetails

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    Keys.member = Shapes::ShapeRef.new(shape: Key)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListCommitmentPurchaseAnalysesRequest.add_member(:analysis_status, Shapes::ShapeRef.new(shape: AnalysisStatus, location_name: "AnalysisStatus"))
    ListCommitmentPurchaseAnalysesRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    ListCommitmentPurchaseAnalysesRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "PageSize"))
    ListCommitmentPurchaseAnalysesRequest.add_member(:analysis_ids, Shapes::ShapeRef.new(shape: AnalysisIds, location_name: "AnalysisIds"))
    ListCommitmentPurchaseAnalysesRequest.struct_class = Types::ListCommitmentPurchaseAnalysesRequest

    ListCommitmentPurchaseAnalysesResponse.add_member(:analysis_summary_list, Shapes::ShapeRef.new(shape: AnalysisSummaryList, location_name: "AnalysisSummaryList"))
    ListCommitmentPurchaseAnalysesResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    ListCommitmentPurchaseAnalysesResponse.struct_class = Types::ListCommitmentPurchaseAnalysesResponse

    ListCostAllocationTagBackfillHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListCostAllocationTagBackfillHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CostAllocationTagsMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListCostAllocationTagBackfillHistoryRequest.struct_class = Types::ListCostAllocationTagBackfillHistoryRequest

    ListCostAllocationTagBackfillHistoryResponse.add_member(:backfill_requests, Shapes::ShapeRef.new(shape: CostAllocationTagBackfillRequestList, location_name: "BackfillRequests"))
    ListCostAllocationTagBackfillHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListCostAllocationTagBackfillHistoryResponse.struct_class = Types::ListCostAllocationTagBackfillHistoryResponse

    ListCostAllocationTagsRequest.add_member(:status, Shapes::ShapeRef.new(shape: CostAllocationTagStatus, location_name: "Status"))
    ListCostAllocationTagsRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: CostAllocationTagKeyList, location_name: "TagKeys"))
    ListCostAllocationTagsRequest.add_member(:type, Shapes::ShapeRef.new(shape: CostAllocationTagType, location_name: "Type"))
    ListCostAllocationTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListCostAllocationTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CostAllocationTagsMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListCostAllocationTagsRequest.struct_class = Types::ListCostAllocationTagsRequest

    ListCostAllocationTagsResponse.add_member(:cost_allocation_tags, Shapes::ShapeRef.new(shape: CostAllocationTagList, location_name: "CostAllocationTags"))
    ListCostAllocationTagsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListCostAllocationTagsResponse.struct_class = Types::ListCostAllocationTagsResponse

    ListCostCategoryDefinitionsRequest.add_member(:effective_on, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EffectiveOn"))
    ListCostCategoryDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListCostCategoryDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CostCategoryMaxResults, location_name: "MaxResults", metadata: {"box" => true}))
    ListCostCategoryDefinitionsRequest.struct_class = Types::ListCostCategoryDefinitionsRequest

    ListCostCategoryDefinitionsResponse.add_member(:cost_category_references, Shapes::ShapeRef.new(shape: CostCategoryReferencesList, location_name: "CostCategoryReferences"))
    ListCostCategoryDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextToken"))
    ListCostCategoryDefinitionsResponse.struct_class = Types::ListCostCategoryDefinitionsResponse

    ListSavingsPlansPurchaseRecommendationGenerationRequest.add_member(:generation_status, Shapes::ShapeRef.new(shape: GenerationStatus, location_name: "GenerationStatus"))
    ListSavingsPlansPurchaseRecommendationGenerationRequest.add_member(:recommendation_ids, Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: "RecommendationIds"))
    ListSavingsPlansPurchaseRecommendationGenerationRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: NonNegativeInteger, location_name: "PageSize"))
    ListSavingsPlansPurchaseRecommendationGenerationRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    ListSavingsPlansPurchaseRecommendationGenerationRequest.struct_class = Types::ListSavingsPlansPurchaseRecommendationGenerationRequest

    ListSavingsPlansPurchaseRecommendationGenerationResponse.add_member(:generation_summary_list, Shapes::ShapeRef.new(shape: GenerationSummaryList, location_name: "GenerationSummaryList"))
    ListSavingsPlansPurchaseRecommendationGenerationResponse.add_member(:next_page_token, Shapes::ShapeRef.new(shape: NextPageToken, location_name: "NextPageToken"))
    ListSavingsPlansPurchaseRecommendationGenerationResponse.struct_class = Types::ListSavingsPlansPurchaseRecommendationGenerationResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MatchOptions.member = Shapes::ShapeRef.new(shape: MatchOption)

    MemoryDBInstanceDetails.add_member(:family, Shapes::ShapeRef.new(shape: GenericString, location_name: "Family"))
    MemoryDBInstanceDetails.add_member(:node_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "NodeType"))
    MemoryDBInstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    MemoryDBInstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    MemoryDBInstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    MemoryDBInstanceDetails.struct_class = Types::MemoryDBInstanceDetails

    MetricNames.member = Shapes::ShapeRef.new(shape: MetricName)

    MetricValue.add_member(:amount, Shapes::ShapeRef.new(shape: MetricAmount, location_name: "Amount"))
    MetricValue.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "Unit"))
    MetricValue.struct_class = Types::MetricValue

    Metrics.key = Shapes::ShapeRef.new(shape: MetricName)
    Metrics.value = Shapes::ShapeRef.new(shape: MetricValue)

    MetricsOverLookbackPeriod.member = Shapes::ShapeRef.new(shape: RecommendationDetailHourlyMetrics)

    ModifyRecommendationDetail.add_member(:target_instances, Shapes::ShapeRef.new(shape: TargetInstancesList, location_name: "TargetInstances"))
    ModifyRecommendationDetail.struct_class = Types::ModifyRecommendationDetail

    MonitorArnList.member = Shapes::ShapeRef.new(shape: Arn)

    NetworkResourceUtilization.add_member(:network_in_bytes_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "NetworkInBytesPerSecond"))
    NetworkResourceUtilization.add_member(:network_out_bytes_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "NetworkOutBytesPerSecond"))
    NetworkResourceUtilization.add_member(:network_packets_in_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "NetworkPacketsInPerSecond"))
    NetworkResourceUtilization.add_member(:network_packets_out_per_second, Shapes::ShapeRef.new(shape: GenericString, location_name: "NetworkPacketsOutPerSecond"))
    NetworkResourceUtilization.struct_class = Types::NetworkResourceUtilization

    PlatformDifferences.member = Shapes::ShapeRef.new(shape: PlatformDifference)

    ProvideAnomalyFeedbackRequest.add_member(:anomaly_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AnomalyId"))
    ProvideAnomalyFeedbackRequest.add_member(:feedback, Shapes::ShapeRef.new(shape: AnomalyFeedbackType, required: true, location_name: "Feedback"))
    ProvideAnomalyFeedbackRequest.struct_class = Types::ProvideAnomalyFeedbackRequest

    ProvideAnomalyFeedbackResponse.add_member(:anomaly_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AnomalyId"))
    ProvideAnomalyFeedbackResponse.struct_class = Types::ProvideAnomalyFeedbackResponse

    RDSInstanceDetails.add_member(:family, Shapes::ShapeRef.new(shape: GenericString, location_name: "Family"))
    RDSInstanceDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceType"))
    RDSInstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    RDSInstanceDetails.add_member(:database_engine, Shapes::ShapeRef.new(shape: GenericString, location_name: "DatabaseEngine"))
    RDSInstanceDetails.add_member(:database_edition, Shapes::ShapeRef.new(shape: GenericString, location_name: "DatabaseEdition"))
    RDSInstanceDetails.add_member(:deployment_option, Shapes::ShapeRef.new(shape: GenericString, location_name: "DeploymentOption"))
    RDSInstanceDetails.add_member(:license_model, Shapes::ShapeRef.new(shape: GenericString, location_name: "LicenseModel"))
    RDSInstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    RDSInstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    RDSInstanceDetails.struct_class = Types::RDSInstanceDetails

    RecommendationDetailData.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "AccountScope"))
    RecommendationDetailData.add_member(:lookback_period_in_days, Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: "LookbackPeriodInDays"))
    RecommendationDetailData.add_member(:savings_plans_type, Shapes::ShapeRef.new(shape: SupportedSavingsPlansType, location_name: "SavingsPlansType"))
    RecommendationDetailData.add_member(:term_in_years, Shapes::ShapeRef.new(shape: TermInYears, location_name: "TermInYears"))
    RecommendationDetailData.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, location_name: "PaymentOption"))
    RecommendationDetailData.add_member(:account_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "AccountId"))
    RecommendationDetailData.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    RecommendationDetailData.add_member(:instance_family, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceFamily"))
    RecommendationDetailData.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    RecommendationDetailData.add_member(:offering_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "OfferingId"))
    RecommendationDetailData.add_member(:generation_timestamp, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "GenerationTimestamp"))
    RecommendationDetailData.add_member(:latest_usage_timestamp, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "LatestUsageTimestamp"))
    RecommendationDetailData.add_member(:current_average_hourly_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentAverageHourlyOnDemandSpend"))
    RecommendationDetailData.add_member(:current_maximum_hourly_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentMaximumHourlyOnDemandSpend"))
    RecommendationDetailData.add_member(:current_minimum_hourly_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentMinimumHourlyOnDemandSpend"))
    RecommendationDetailData.add_member(:estimated_average_utilization, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedAverageUtilization"))
    RecommendationDetailData.add_member(:estimated_monthly_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlySavingsAmount"))
    RecommendationDetailData.add_member(:estimated_on_demand_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedOnDemandCost"))
    RecommendationDetailData.add_member(:estimated_on_demand_cost_with_current_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedOnDemandCostWithCurrentCommitment"))
    RecommendationDetailData.add_member(:estimated_roi, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedROI"))
    RecommendationDetailData.add_member(:estimated_sp_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedSPCost"))
    RecommendationDetailData.add_member(:estimated_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedSavingsAmount"))
    RecommendationDetailData.add_member(:estimated_savings_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedSavingsPercentage"))
    RecommendationDetailData.add_member(:existing_hourly_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExistingHourlyCommitment"))
    RecommendationDetailData.add_member(:hourly_commitment_to_purchase, Shapes::ShapeRef.new(shape: GenericString, location_name: "HourlyCommitmentToPurchase"))
    RecommendationDetailData.add_member(:upfront_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "UpfrontCost"))
    RecommendationDetailData.add_member(:current_average_coverage, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentAverageCoverage"))
    RecommendationDetailData.add_member(:estimated_average_coverage, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedAverageCoverage"))
    RecommendationDetailData.add_member(:metrics_over_lookback_period, Shapes::ShapeRef.new(shape: MetricsOverLookbackPeriod, location_name: "MetricsOverLookbackPeriod"))
    RecommendationDetailData.struct_class = Types::RecommendationDetailData

    RecommendationDetailHourlyMetrics.add_member(:start_time, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "StartTime"))
    RecommendationDetailHourlyMetrics.add_member(:estimated_on_demand_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedOnDemandCost"))
    RecommendationDetailHourlyMetrics.add_member(:current_coverage, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentCoverage"))
    RecommendationDetailHourlyMetrics.add_member(:estimated_coverage, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedCoverage"))
    RecommendationDetailHourlyMetrics.add_member(:estimated_new_commitment_utilization, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedNewCommitmentUtilization"))
    RecommendationDetailHourlyMetrics.struct_class = Types::RecommendationDetailHourlyMetrics

    RecommendationIdList.member = Shapes::ShapeRef.new(shape: RecommendationId)

    RedshiftInstanceDetails.add_member(:family, Shapes::ShapeRef.new(shape: GenericString, location_name: "Family"))
    RedshiftInstanceDetails.add_member(:node_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "NodeType"))
    RedshiftInstanceDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    RedshiftInstanceDetails.add_member(:current_generation, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "CurrentGeneration"))
    RedshiftInstanceDetails.add_member(:size_flex_eligible, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "SizeFlexEligible"))
    RedshiftInstanceDetails.struct_class = Types::RedshiftInstanceDetails

    RequestChangedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RequestChangedException.struct_class = Types::RequestChangedException

    ReservationAggregates.add_member(:utilization_percentage, Shapes::ShapeRef.new(shape: UtilizationPercentage, location_name: "UtilizationPercentage"))
    ReservationAggregates.add_member(:utilization_percentage_in_units, Shapes::ShapeRef.new(shape: UtilizationPercentageInUnits, location_name: "UtilizationPercentageInUnits"))
    ReservationAggregates.add_member(:purchased_hours, Shapes::ShapeRef.new(shape: PurchasedHours, location_name: "PurchasedHours"))
    ReservationAggregates.add_member(:purchased_units, Shapes::ShapeRef.new(shape: PurchasedUnits, location_name: "PurchasedUnits"))
    ReservationAggregates.add_member(:total_actual_hours, Shapes::ShapeRef.new(shape: TotalActualHours, location_name: "TotalActualHours"))
    ReservationAggregates.add_member(:total_actual_units, Shapes::ShapeRef.new(shape: TotalActualUnits, location_name: "TotalActualUnits"))
    ReservationAggregates.add_member(:unused_hours, Shapes::ShapeRef.new(shape: UnusedHours, location_name: "UnusedHours"))
    ReservationAggregates.add_member(:unused_units, Shapes::ShapeRef.new(shape: UnusedUnits, location_name: "UnusedUnits"))
    ReservationAggregates.add_member(:on_demand_cost_of_ri_hours_used, Shapes::ShapeRef.new(shape: OnDemandCostOfRIHoursUsed, location_name: "OnDemandCostOfRIHoursUsed"))
    ReservationAggregates.add_member(:net_ri_savings, Shapes::ShapeRef.new(shape: NetRISavings, location_name: "NetRISavings"))
    ReservationAggregates.add_member(:total_potential_ri_savings, Shapes::ShapeRef.new(shape: TotalPotentialRISavings, location_name: "TotalPotentialRISavings"))
    ReservationAggregates.add_member(:amortized_upfront_fee, Shapes::ShapeRef.new(shape: AmortizedUpfrontFee, location_name: "AmortizedUpfrontFee"))
    ReservationAggregates.add_member(:amortized_recurring_fee, Shapes::ShapeRef.new(shape: AmortizedRecurringFee, location_name: "AmortizedRecurringFee"))
    ReservationAggregates.add_member(:total_amortized_fee, Shapes::ShapeRef.new(shape: TotalAmortizedFee, location_name: "TotalAmortizedFee"))
    ReservationAggregates.add_member(:ri_cost_for_unused_hours, Shapes::ShapeRef.new(shape: RICostForUnusedHours, location_name: "RICostForUnusedHours"))
    ReservationAggregates.add_member(:realized_savings, Shapes::ShapeRef.new(shape: RealizedSavings, location_name: "RealizedSavings"))
    ReservationAggregates.add_member(:unrealized_savings, Shapes::ShapeRef.new(shape: UnrealizedSavings, location_name: "UnrealizedSavings"))
    ReservationAggregates.struct_class = Types::ReservationAggregates

    ReservationCoverageGroup.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    ReservationCoverageGroup.add_member(:coverage, Shapes::ShapeRef.new(shape: Coverage, location_name: "Coverage"))
    ReservationCoverageGroup.struct_class = Types::ReservationCoverageGroup

    ReservationCoverageGroups.member = Shapes::ShapeRef.new(shape: ReservationCoverageGroup)

    ReservationPurchaseRecommendation.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "AccountScope"))
    ReservationPurchaseRecommendation.add_member(:lookback_period_in_days, Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: "LookbackPeriodInDays"))
    ReservationPurchaseRecommendation.add_member(:term_in_years, Shapes::ShapeRef.new(shape: TermInYears, location_name: "TermInYears"))
    ReservationPurchaseRecommendation.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, location_name: "PaymentOption"))
    ReservationPurchaseRecommendation.add_member(:service_specification, Shapes::ShapeRef.new(shape: ServiceSpecification, location_name: "ServiceSpecification"))
    ReservationPurchaseRecommendation.add_member(:recommendation_details, Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationDetails, location_name: "RecommendationDetails"))
    ReservationPurchaseRecommendation.add_member(:recommendation_summary, Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationSummary, location_name: "RecommendationSummary"))
    ReservationPurchaseRecommendation.struct_class = Types::ReservationPurchaseRecommendation

    ReservationPurchaseRecommendationDetail.add_member(:account_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "AccountId"))
    ReservationPurchaseRecommendationDetail.add_member(:instance_details, Shapes::ShapeRef.new(shape: InstanceDetails, location_name: "InstanceDetails"))
    ReservationPurchaseRecommendationDetail.add_member(:recommended_number_of_instances_to_purchase, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecommendedNumberOfInstancesToPurchase"))
    ReservationPurchaseRecommendationDetail.add_member(:recommended_normalized_units_to_purchase, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecommendedNormalizedUnitsToPurchase"))
    ReservationPurchaseRecommendationDetail.add_member(:minimum_number_of_instances_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "MinimumNumberOfInstancesUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:minimum_normalized_units_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "MinimumNormalizedUnitsUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:maximum_number_of_instances_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "MaximumNumberOfInstancesUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:maximum_normalized_units_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "MaximumNormalizedUnitsUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:average_number_of_instances_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "AverageNumberOfInstancesUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:average_normalized_units_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "AverageNormalizedUnitsUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:average_utilization, Shapes::ShapeRef.new(shape: GenericString, location_name: "AverageUtilization"))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_break_even_in_months, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedBreakEvenInMonths"))
    ReservationPurchaseRecommendationDetail.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_monthly_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlySavingsAmount"))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_monthly_savings_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlySavingsPercentage"))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_monthly_on_demand_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlyOnDemandCost"))
    ReservationPurchaseRecommendationDetail.add_member(:estimated_reservation_cost_for_lookback_period, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedReservationCostForLookbackPeriod"))
    ReservationPurchaseRecommendationDetail.add_member(:upfront_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "UpfrontCost"))
    ReservationPurchaseRecommendationDetail.add_member(:recurring_standard_monthly_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecurringStandardMonthlyCost"))
    ReservationPurchaseRecommendationDetail.add_member(:reserved_capacity_details, Shapes::ShapeRef.new(shape: ReservedCapacityDetails, location_name: "ReservedCapacityDetails"))
    ReservationPurchaseRecommendationDetail.add_member(:recommended_number_of_capacity_units_to_purchase, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecommendedNumberOfCapacityUnitsToPurchase"))
    ReservationPurchaseRecommendationDetail.add_member(:minimum_number_of_capacity_units_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "MinimumNumberOfCapacityUnitsUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:maximum_number_of_capacity_units_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "MaximumNumberOfCapacityUnitsUsedPerHour"))
    ReservationPurchaseRecommendationDetail.add_member(:average_number_of_capacity_units_used_per_hour, Shapes::ShapeRef.new(shape: GenericString, location_name: "AverageNumberOfCapacityUnitsUsedPerHour"))
    ReservationPurchaseRecommendationDetail.struct_class = Types::ReservationPurchaseRecommendationDetail

    ReservationPurchaseRecommendationDetails.member = Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendationDetail)

    ReservationPurchaseRecommendationMetadata.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecommendationId"))
    ReservationPurchaseRecommendationMetadata.add_member(:generation_timestamp, Shapes::ShapeRef.new(shape: GenericString, location_name: "GenerationTimestamp"))
    ReservationPurchaseRecommendationMetadata.add_member(:additional_metadata, Shapes::ShapeRef.new(shape: GenericString, location_name: "AdditionalMetadata"))
    ReservationPurchaseRecommendationMetadata.struct_class = Types::ReservationPurchaseRecommendationMetadata

    ReservationPurchaseRecommendationSummary.add_member(:total_estimated_monthly_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "TotalEstimatedMonthlySavingsAmount"))
    ReservationPurchaseRecommendationSummary.add_member(:total_estimated_monthly_savings_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "TotalEstimatedMonthlySavingsPercentage"))
    ReservationPurchaseRecommendationSummary.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    ReservationPurchaseRecommendationSummary.struct_class = Types::ReservationPurchaseRecommendationSummary

    ReservationPurchaseRecommendations.member = Shapes::ShapeRef.new(shape: ReservationPurchaseRecommendation)

    ReservationUtilizationGroup.add_member(:key, Shapes::ShapeRef.new(shape: ReservationGroupKey, location_name: "Key"))
    ReservationUtilizationGroup.add_member(:value, Shapes::ShapeRef.new(shape: ReservationGroupValue, location_name: "Value"))
    ReservationUtilizationGroup.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    ReservationUtilizationGroup.add_member(:utilization, Shapes::ShapeRef.new(shape: ReservationAggregates, location_name: "Utilization"))
    ReservationUtilizationGroup.struct_class = Types::ReservationUtilizationGroup

    ReservationUtilizationGroups.member = Shapes::ShapeRef.new(shape: ReservationUtilizationGroup)

    ReservedCapacityDetails.add_member(:dynamo_db_capacity_details, Shapes::ShapeRef.new(shape: DynamoDBCapacityDetails, location_name: "DynamoDBCapacityDetails"))
    ReservedCapacityDetails.struct_class = Types::ReservedCapacityDetails

    ResourceDetails.add_member(:ec2_resource_details, Shapes::ShapeRef.new(shape: EC2ResourceDetails, location_name: "EC2ResourceDetails"))
    ResourceDetails.struct_class = Types::ResourceDetails

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: ResourceTagKey, required: true, location_name: "Key"))
    ResourceTag.add_member(:value, Shapes::ShapeRef.new(shape: ResourceTagValue, required: true, location_name: "Value"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTagKeyList.member = Shapes::ShapeRef.new(shape: ResourceTagKey)

    ResourceTagList.member = Shapes::ShapeRef.new(shape: ResourceTag)

    ResourceUtilization.add_member(:ec2_resource_utilization, Shapes::ShapeRef.new(shape: EC2ResourceUtilization, location_name: "EC2ResourceUtilization"))
    ResourceUtilization.struct_class = Types::ResourceUtilization

    ResultByTime.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, location_name: "TimePeriod"))
    ResultByTime.add_member(:total, Shapes::ShapeRef.new(shape: Metrics, location_name: "Total"))
    ResultByTime.add_member(:groups, Shapes::ShapeRef.new(shape: Groups, location_name: "Groups"))
    ResultByTime.add_member(:estimated, Shapes::ShapeRef.new(shape: Estimated, location_name: "Estimated"))
    ResultByTime.struct_class = Types::ResultByTime

    ResultsByTime.member = Shapes::ShapeRef.new(shape: ResultByTime)

    RightsizingRecommendation.add_member(:account_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "AccountId"))
    RightsizingRecommendation.add_member(:current_instance, Shapes::ShapeRef.new(shape: CurrentInstance, location_name: "CurrentInstance"))
    RightsizingRecommendation.add_member(:rightsizing_type, Shapes::ShapeRef.new(shape: RightsizingType, location_name: "RightsizingType"))
    RightsizingRecommendation.add_member(:modify_recommendation_detail, Shapes::ShapeRef.new(shape: ModifyRecommendationDetail, location_name: "ModifyRecommendationDetail"))
    RightsizingRecommendation.add_member(:terminate_recommendation_detail, Shapes::ShapeRef.new(shape: TerminateRecommendationDetail, location_name: "TerminateRecommendationDetail"))
    RightsizingRecommendation.add_member(:finding_reason_codes, Shapes::ShapeRef.new(shape: FindingReasonCodes, location_name: "FindingReasonCodes"))
    RightsizingRecommendation.struct_class = Types::RightsizingRecommendation

    RightsizingRecommendationConfiguration.add_member(:recommendation_target, Shapes::ShapeRef.new(shape: RecommendationTarget, required: true, location_name: "RecommendationTarget"))
    RightsizingRecommendationConfiguration.add_member(:benefits_considered, Shapes::ShapeRef.new(shape: GenericBoolean, required: true, location_name: "BenefitsConsidered"))
    RightsizingRecommendationConfiguration.struct_class = Types::RightsizingRecommendationConfiguration

    RightsizingRecommendationList.member = Shapes::ShapeRef.new(shape: RightsizingRecommendation)

    RightsizingRecommendationMetadata.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecommendationId"))
    RightsizingRecommendationMetadata.add_member(:generation_timestamp, Shapes::ShapeRef.new(shape: GenericString, location_name: "GenerationTimestamp"))
    RightsizingRecommendationMetadata.add_member(:lookback_period_in_days, Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: "LookbackPeriodInDays"))
    RightsizingRecommendationMetadata.add_member(:additional_metadata, Shapes::ShapeRef.new(shape: GenericString, location_name: "AdditionalMetadata"))
    RightsizingRecommendationMetadata.struct_class = Types::RightsizingRecommendationMetadata

    RightsizingRecommendationSummary.add_member(:total_recommendation_count, Shapes::ShapeRef.new(shape: GenericString, location_name: "TotalRecommendationCount"))
    RightsizingRecommendationSummary.add_member(:estimated_total_monthly_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedTotalMonthlySavingsAmount"))
    RightsizingRecommendationSummary.add_member(:savings_currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "SavingsCurrencyCode"))
    RightsizingRecommendationSummary.add_member(:savings_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "SavingsPercentage"))
    RightsizingRecommendationSummary.struct_class = Types::RightsizingRecommendationSummary

    RootCause.add_member(:service, Shapes::ShapeRef.new(shape: GenericString, location_name: "Service"))
    RootCause.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    RootCause.add_member(:linked_account, Shapes::ShapeRef.new(shape: GenericString, location_name: "LinkedAccount"))
    RootCause.add_member(:linked_account_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "LinkedAccountName"))
    RootCause.add_member(:usage_type, Shapes::ShapeRef.new(shape: GenericString, location_name: "UsageType"))
    RootCause.add_member(:impact, Shapes::ShapeRef.new(shape: RootCauseImpact, location_name: "Impact"))
    RootCause.struct_class = Types::RootCause

    RootCauseImpact.add_member(:contribution, Shapes::ShapeRef.new(shape: GenericDouble, required: true, location_name: "Contribution"))
    RootCauseImpact.struct_class = Types::RootCauseImpact

    RootCauses.member = Shapes::ShapeRef.new(shape: RootCause)

    SavingsPlans.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, location_name: "PaymentOption"))
    SavingsPlans.add_member(:savings_plans_type, Shapes::ShapeRef.new(shape: SupportedSavingsPlansType, location_name: "SavingsPlansType"))
    SavingsPlans.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    SavingsPlans.add_member(:instance_family, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceFamily"))
    SavingsPlans.add_member(:term_in_years, Shapes::ShapeRef.new(shape: TermInYears, location_name: "TermInYears"))
    SavingsPlans.add_member(:savings_plans_commitment, Shapes::ShapeRef.new(shape: SavingsPlansCommitment, location_name: "SavingsPlansCommitment"))
    SavingsPlans.add_member(:offering_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "OfferingId"))
    SavingsPlans.struct_class = Types::SavingsPlans

    SavingsPlansAmortizedCommitment.add_member(:amortized_recurring_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "AmortizedRecurringCommitment"))
    SavingsPlansAmortizedCommitment.add_member(:amortized_upfront_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "AmortizedUpfrontCommitment"))
    SavingsPlansAmortizedCommitment.add_member(:total_amortized_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "TotalAmortizedCommitment"))
    SavingsPlansAmortizedCommitment.struct_class = Types::SavingsPlansAmortizedCommitment

    SavingsPlansCoverage.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    SavingsPlansCoverage.add_member(:coverage, Shapes::ShapeRef.new(shape: SavingsPlansCoverageData, location_name: "Coverage"))
    SavingsPlansCoverage.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, location_name: "TimePeriod"))
    SavingsPlansCoverage.struct_class = Types::SavingsPlansCoverage

    SavingsPlansCoverageData.add_member(:spend_covered_by_savings_plans, Shapes::ShapeRef.new(shape: GenericString, location_name: "SpendCoveredBySavingsPlans"))
    SavingsPlansCoverageData.add_member(:on_demand_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "OnDemandCost"))
    SavingsPlansCoverageData.add_member(:total_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "TotalCost"))
    SavingsPlansCoverageData.add_member(:coverage_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "CoveragePercentage"))
    SavingsPlansCoverageData.struct_class = Types::SavingsPlansCoverageData

    SavingsPlansCoverages.member = Shapes::ShapeRef.new(shape: SavingsPlansCoverage)

    SavingsPlansDataTypes.member = Shapes::ShapeRef.new(shape: SavingsPlansDataType)

    SavingsPlansDetails.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    SavingsPlansDetails.add_member(:instance_family, Shapes::ShapeRef.new(shape: GenericString, location_name: "InstanceFamily"))
    SavingsPlansDetails.add_member(:offering_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "OfferingId"))
    SavingsPlansDetails.struct_class = Types::SavingsPlansDetails

    SavingsPlansPurchaseAnalysisConfiguration.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "AccountScope"))
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:analysis_type, Shapes::ShapeRef.new(shape: AnalysisType, required: true, location_name: "AnalysisType"))
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:savings_plans_to_add, Shapes::ShapeRef.new(shape: SavingsPlansToAdd, required: true, location_name: "SavingsPlansToAdd"))
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:savings_plans_to_exclude, Shapes::ShapeRef.new(shape: SavingsPlansToExclude, location_name: "SavingsPlansToExclude"))
    SavingsPlansPurchaseAnalysisConfiguration.add_member(:look_back_time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "LookBackTimePeriod"))
    SavingsPlansPurchaseAnalysisConfiguration.struct_class = Types::SavingsPlansPurchaseAnalysisConfiguration

    SavingsPlansPurchaseAnalysisDetails.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:lookback_period_in_hours, Shapes::ShapeRef.new(shape: GenericString, location_name: "LookbackPeriodInHours"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:current_average_coverage, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentAverageCoverage"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:current_average_hourly_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentAverageHourlyOnDemandSpend"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:current_maximum_hourly_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentMaximumHourlyOnDemandSpend"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:current_minimum_hourly_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentMinimumHourlyOnDemandSpend"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:current_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentOnDemandSpend"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:existing_hourly_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "ExistingHourlyCommitment"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:hourly_commitment_to_purchase, Shapes::ShapeRef.new(shape: GenericString, location_name: "HourlyCommitmentToPurchase"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_average_coverage, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedAverageCoverage"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_average_utilization, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedAverageUtilization"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_monthly_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlySavingsAmount"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_on_demand_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedOnDemandCost"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_on_demand_cost_with_current_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedOnDemandCostWithCurrentCommitment"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_roi, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedROI"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedSavingsAmount"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_savings_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedSavingsPercentage"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:estimated_commitment_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedCommitmentCost"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:latest_usage_timestamp, Shapes::ShapeRef.new(shape: GenericString, location_name: "LatestUsageTimestamp"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:upfront_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "UpfrontCost"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:additional_metadata, Shapes::ShapeRef.new(shape: GenericString, location_name: "AdditionalMetadata"))
    SavingsPlansPurchaseAnalysisDetails.add_member(:metrics_over_lookback_period, Shapes::ShapeRef.new(shape: MetricsOverLookbackPeriod, location_name: "MetricsOverLookbackPeriod"))
    SavingsPlansPurchaseAnalysisDetails.struct_class = Types::SavingsPlansPurchaseAnalysisDetails

    SavingsPlansPurchaseRecommendation.add_member(:account_scope, Shapes::ShapeRef.new(shape: AccountScope, location_name: "AccountScope"))
    SavingsPlansPurchaseRecommendation.add_member(:savings_plans_type, Shapes::ShapeRef.new(shape: SupportedSavingsPlansType, location_name: "SavingsPlansType"))
    SavingsPlansPurchaseRecommendation.add_member(:term_in_years, Shapes::ShapeRef.new(shape: TermInYears, location_name: "TermInYears"))
    SavingsPlansPurchaseRecommendation.add_member(:payment_option, Shapes::ShapeRef.new(shape: PaymentOption, location_name: "PaymentOption"))
    SavingsPlansPurchaseRecommendation.add_member(:lookback_period_in_days, Shapes::ShapeRef.new(shape: LookbackPeriodInDays, location_name: "LookbackPeriodInDays"))
    SavingsPlansPurchaseRecommendation.add_member(:savings_plans_purchase_recommendation_details, Shapes::ShapeRef.new(shape: SavingsPlansPurchaseRecommendationDetailList, location_name: "SavingsPlansPurchaseRecommendationDetails"))
    SavingsPlansPurchaseRecommendation.add_member(:savings_plans_purchase_recommendation_summary, Shapes::ShapeRef.new(shape: SavingsPlansPurchaseRecommendationSummary, location_name: "SavingsPlansPurchaseRecommendationSummary"))
    SavingsPlansPurchaseRecommendation.struct_class = Types::SavingsPlansPurchaseRecommendation

    SavingsPlansPurchaseRecommendationDetail.add_member(:savings_plans_details, Shapes::ShapeRef.new(shape: SavingsPlansDetails, location_name: "SavingsPlansDetails"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:account_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "AccountId"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:upfront_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "UpfrontCost"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_roi, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedROI"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_sp_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedSPCost"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_on_demand_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedOnDemandCost"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_on_demand_cost_with_current_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedOnDemandCostWithCurrentCommitment"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedSavingsAmount"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_savings_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedSavingsPercentage"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:hourly_commitment_to_purchase, Shapes::ShapeRef.new(shape: GenericString, location_name: "HourlyCommitmentToPurchase"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_average_utilization, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedAverageUtilization"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:estimated_monthly_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlySavingsAmount"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:current_minimum_hourly_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentMinimumHourlyOnDemandSpend"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:current_maximum_hourly_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentMaximumHourlyOnDemandSpend"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:current_average_hourly_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentAverageHourlyOnDemandSpend"))
    SavingsPlansPurchaseRecommendationDetail.add_member(:recommendation_detail_id, Shapes::ShapeRef.new(shape: RecommendationDetailId, location_name: "RecommendationDetailId"))
    SavingsPlansPurchaseRecommendationDetail.struct_class = Types::SavingsPlansPurchaseRecommendationDetail

    SavingsPlansPurchaseRecommendationDetailList.member = Shapes::ShapeRef.new(shape: SavingsPlansPurchaseRecommendationDetail)

    SavingsPlansPurchaseRecommendationMetadata.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "RecommendationId"))
    SavingsPlansPurchaseRecommendationMetadata.add_member(:generation_timestamp, Shapes::ShapeRef.new(shape: GenericString, location_name: "GenerationTimestamp"))
    SavingsPlansPurchaseRecommendationMetadata.add_member(:additional_metadata, Shapes::ShapeRef.new(shape: GenericString, location_name: "AdditionalMetadata"))
    SavingsPlansPurchaseRecommendationMetadata.struct_class = Types::SavingsPlansPurchaseRecommendationMetadata

    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_roi, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedROI"))
    SavingsPlansPurchaseRecommendationSummary.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_total_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedTotalCost"))
    SavingsPlansPurchaseRecommendationSummary.add_member(:current_on_demand_spend, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrentOnDemandSpend"))
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedSavingsAmount"))
    SavingsPlansPurchaseRecommendationSummary.add_member(:total_recommendation_count, Shapes::ShapeRef.new(shape: GenericString, location_name: "TotalRecommendationCount"))
    SavingsPlansPurchaseRecommendationSummary.add_member(:daily_commitment_to_purchase, Shapes::ShapeRef.new(shape: GenericString, location_name: "DailyCommitmentToPurchase"))
    SavingsPlansPurchaseRecommendationSummary.add_member(:hourly_commitment_to_purchase, Shapes::ShapeRef.new(shape: GenericString, location_name: "HourlyCommitmentToPurchase"))
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_savings_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedSavingsPercentage"))
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_monthly_savings_amount, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlySavingsAmount"))
    SavingsPlansPurchaseRecommendationSummary.add_member(:estimated_on_demand_cost_with_current_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedOnDemandCostWithCurrentCommitment"))
    SavingsPlansPurchaseRecommendationSummary.struct_class = Types::SavingsPlansPurchaseRecommendationSummary

    SavingsPlansSavings.add_member(:net_savings, Shapes::ShapeRef.new(shape: GenericString, location_name: "NetSavings"))
    SavingsPlansSavings.add_member(:on_demand_cost_equivalent, Shapes::ShapeRef.new(shape: GenericString, location_name: "OnDemandCostEquivalent"))
    SavingsPlansSavings.struct_class = Types::SavingsPlansSavings

    SavingsPlansToAdd.member = Shapes::ShapeRef.new(shape: SavingsPlans)

    SavingsPlansToExclude.member = Shapes::ShapeRef.new(shape: SavingsPlansId)

    SavingsPlansUtilization.add_member(:total_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "TotalCommitment"))
    SavingsPlansUtilization.add_member(:used_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "UsedCommitment"))
    SavingsPlansUtilization.add_member(:unused_commitment, Shapes::ShapeRef.new(shape: GenericString, location_name: "UnusedCommitment"))
    SavingsPlansUtilization.add_member(:utilization_percentage, Shapes::ShapeRef.new(shape: GenericString, location_name: "UtilizationPercentage"))
    SavingsPlansUtilization.struct_class = Types::SavingsPlansUtilization

    SavingsPlansUtilizationAggregates.add_member(:utilization, Shapes::ShapeRef.new(shape: SavingsPlansUtilization, required: true, location_name: "Utilization"))
    SavingsPlansUtilizationAggregates.add_member(:savings, Shapes::ShapeRef.new(shape: SavingsPlansSavings, location_name: "Savings"))
    SavingsPlansUtilizationAggregates.add_member(:amortized_commitment, Shapes::ShapeRef.new(shape: SavingsPlansAmortizedCommitment, location_name: "AmortizedCommitment"))
    SavingsPlansUtilizationAggregates.struct_class = Types::SavingsPlansUtilizationAggregates

    SavingsPlansUtilizationByTime.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, required: true, location_name: "TimePeriod"))
    SavingsPlansUtilizationByTime.add_member(:utilization, Shapes::ShapeRef.new(shape: SavingsPlansUtilization, required: true, location_name: "Utilization"))
    SavingsPlansUtilizationByTime.add_member(:savings, Shapes::ShapeRef.new(shape: SavingsPlansSavings, location_name: "Savings"))
    SavingsPlansUtilizationByTime.add_member(:amortized_commitment, Shapes::ShapeRef.new(shape: SavingsPlansAmortizedCommitment, location_name: "AmortizedCommitment"))
    SavingsPlansUtilizationByTime.struct_class = Types::SavingsPlansUtilizationByTime

    SavingsPlansUtilizationDetail.add_member(:savings_plan_arn, Shapes::ShapeRef.new(shape: SavingsPlanArn, location_name: "SavingsPlanArn"))
    SavingsPlansUtilizationDetail.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    SavingsPlansUtilizationDetail.add_member(:utilization, Shapes::ShapeRef.new(shape: SavingsPlansUtilization, location_name: "Utilization"))
    SavingsPlansUtilizationDetail.add_member(:savings, Shapes::ShapeRef.new(shape: SavingsPlansSavings, location_name: "Savings"))
    SavingsPlansUtilizationDetail.add_member(:amortized_commitment, Shapes::ShapeRef.new(shape: SavingsPlansAmortizedCommitment, location_name: "AmortizedCommitment"))
    SavingsPlansUtilizationDetail.struct_class = Types::SavingsPlansUtilizationDetail

    SavingsPlansUtilizationDetails.member = Shapes::ShapeRef.new(shape: SavingsPlansUtilizationDetail)

    SavingsPlansUtilizationsByTime.member = Shapes::ShapeRef.new(shape: SavingsPlansUtilizationByTime)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceSpecification.add_member(:ec2_specification, Shapes::ShapeRef.new(shape: EC2Specification, location_name: "EC2Specification"))
    ServiceSpecification.struct_class = Types::ServiceSpecification

    SortDefinition.add_member(:key, Shapes::ShapeRef.new(shape: SortDefinitionKey, required: true, location_name: "Key"))
    SortDefinition.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    SortDefinition.struct_class = Types::SortDefinition

    SortDefinitions.member = Shapes::ShapeRef.new(shape: SortDefinition)

    StartCommitmentPurchaseAnalysisRequest.add_member(:commitment_purchase_analysis_configuration, Shapes::ShapeRef.new(shape: CommitmentPurchaseAnalysisConfiguration, required: true, location_name: "CommitmentPurchaseAnalysisConfiguration"))
    StartCommitmentPurchaseAnalysisRequest.struct_class = Types::StartCommitmentPurchaseAnalysisRequest

    StartCommitmentPurchaseAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: AnalysisId, required: true, location_name: "AnalysisId"))
    StartCommitmentPurchaseAnalysisResponse.add_member(:analysis_started_time, Shapes::ShapeRef.new(shape: ZonedDateTime, required: true, location_name: "AnalysisStartedTime"))
    StartCommitmentPurchaseAnalysisResponse.add_member(:estimated_completion_time, Shapes::ShapeRef.new(shape: ZonedDateTime, required: true, location_name: "EstimatedCompletionTime"))
    StartCommitmentPurchaseAnalysisResponse.struct_class = Types::StartCommitmentPurchaseAnalysisResponse

    StartCostAllocationTagBackfillRequest.add_member(:backfill_from, Shapes::ShapeRef.new(shape: ZonedDateTime, required: true, location_name: "BackfillFrom"))
    StartCostAllocationTagBackfillRequest.struct_class = Types::StartCostAllocationTagBackfillRequest

    StartCostAllocationTagBackfillResponse.add_member(:backfill_request, Shapes::ShapeRef.new(shape: CostAllocationTagBackfillRequest, location_name: "BackfillRequest"))
    StartCostAllocationTagBackfillResponse.struct_class = Types::StartCostAllocationTagBackfillResponse

    StartSavingsPlansPurchaseRecommendationGenerationRequest.struct_class = Types::StartSavingsPlansPurchaseRecommendationGenerationRequest

    StartSavingsPlansPurchaseRecommendationGenerationResponse.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, location_name: "RecommendationId"))
    StartSavingsPlansPurchaseRecommendationGenerationResponse.add_member(:generation_started_time, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "GenerationStartedTime"))
    StartSavingsPlansPurchaseRecommendationGenerationResponse.add_member(:estimated_completion_time, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EstimatedCompletionTime"))
    StartSavingsPlansPurchaseRecommendationGenerationResponse.struct_class = Types::StartSavingsPlansPurchaseRecommendationGenerationResponse

    Subscriber.add_member(:address, Shapes::ShapeRef.new(shape: SubscriberAddress, location_name: "Address"))
    Subscriber.add_member(:type, Shapes::ShapeRef.new(shape: SubscriberType, location_name: "Type"))
    Subscriber.add_member(:status, Shapes::ShapeRef.new(shape: SubscriberStatus, location_name: "Status"))
    Subscriber.struct_class = Types::Subscriber

    Subscribers.member = Shapes::ShapeRef.new(shape: Subscriber)

    TagList.member = Shapes::ShapeRef.new(shape: Entity)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, required: true, location_name: "ResourceTags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagValues.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    TagValues.add_member(:values, Shapes::ShapeRef.new(shape: Values, location_name: "Values"))
    TagValues.add_member(:match_options, Shapes::ShapeRef.new(shape: MatchOptions, location_name: "MatchOptions"))
    TagValues.struct_class = Types::TagValues

    TagValuesList.member = Shapes::ShapeRef.new(shape: TagValues)

    TargetInstance.add_member(:estimated_monthly_cost, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlyCost"))
    TargetInstance.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlySavings"))
    TargetInstance.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    TargetInstance.add_member(:default_target_instance, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "DefaultTargetInstance"))
    TargetInstance.add_member(:resource_details, Shapes::ShapeRef.new(shape: ResourceDetails, location_name: "ResourceDetails"))
    TargetInstance.add_member(:expected_resource_utilization, Shapes::ShapeRef.new(shape: ResourceUtilization, location_name: "ExpectedResourceUtilization"))
    TargetInstance.add_member(:platform_differences, Shapes::ShapeRef.new(shape: PlatformDifferences, location_name: "PlatformDifferences"))
    TargetInstance.struct_class = Types::TargetInstance

    TargetInstancesList.member = Shapes::ShapeRef.new(shape: TargetInstance)

    TerminateRecommendationDetail.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: GenericString, location_name: "EstimatedMonthlySavings"))
    TerminateRecommendationDetail.add_member(:currency_code, Shapes::ShapeRef.new(shape: GenericString, location_name: "CurrencyCode"))
    TerminateRecommendationDetail.struct_class = Types::TerminateRecommendationDetail

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: Arn, location_name: "ResourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TotalImpactFilter.add_member(:numeric_operator, Shapes::ShapeRef.new(shape: NumericOperator, required: true, location_name: "NumericOperator"))
    TotalImpactFilter.add_member(:start_value, Shapes::ShapeRef.new(shape: GenericDouble, required: true, location_name: "StartValue"))
    TotalImpactFilter.add_member(:end_value, Shapes::ShapeRef.new(shape: GenericDouble, location_name: "EndValue"))
    TotalImpactFilter.struct_class = Types::TotalImpactFilter

    UnknownMonitorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnknownMonitorException.struct_class = Types::UnknownMonitorException

    UnknownSubscriptionException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnknownSubscriptionException.struct_class = Types::UnknownSubscriptionException

    UnresolvableUsageUnitException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnresolvableUsageUnitException.struct_class = Types::UnresolvableUsageUnitException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:resource_tag_keys, Shapes::ShapeRef.new(shape: ResourceTagKeyList, required: true, location_name: "ResourceTagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAnomalyMonitorRequest.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "MonitorArn"))
    UpdateAnomalyMonitorRequest.add_member(:monitor_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "MonitorName"))
    UpdateAnomalyMonitorRequest.struct_class = Types::UpdateAnomalyMonitorRequest

    UpdateAnomalyMonitorResponse.add_member(:monitor_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "MonitorArn"))
    UpdateAnomalyMonitorResponse.struct_class = Types::UpdateAnomalyMonitorResponse

    UpdateAnomalySubscriptionRequest.add_member(:subscription_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "SubscriptionArn"))
    UpdateAnomalySubscriptionRequest.add_member(:threshold, Shapes::ShapeRef.new(shape: NullableNonNegativeDouble, deprecated: true, location_name: "Threshold", metadata: {"deprecatedMessage" => "Threshold has been deprecated in favor of ThresholdExpression"}))
    UpdateAnomalySubscriptionRequest.add_member(:frequency, Shapes::ShapeRef.new(shape: AnomalySubscriptionFrequency, location_name: "Frequency"))
    UpdateAnomalySubscriptionRequest.add_member(:monitor_arn_list, Shapes::ShapeRef.new(shape: MonitorArnList, location_name: "MonitorArnList"))
    UpdateAnomalySubscriptionRequest.add_member(:subscribers, Shapes::ShapeRef.new(shape: Subscribers, location_name: "Subscribers"))
    UpdateAnomalySubscriptionRequest.add_member(:subscription_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "SubscriptionName"))
    UpdateAnomalySubscriptionRequest.add_member(:threshold_expression, Shapes::ShapeRef.new(shape: Expression, location_name: "ThresholdExpression"))
    UpdateAnomalySubscriptionRequest.struct_class = Types::UpdateAnomalySubscriptionRequest

    UpdateAnomalySubscriptionResponse.add_member(:subscription_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "SubscriptionArn"))
    UpdateAnomalySubscriptionResponse.struct_class = Types::UpdateAnomalySubscriptionResponse

    UpdateCostAllocationTagsStatusError.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "TagKey"))
    UpdateCostAllocationTagsStatusError.add_member(:code, Shapes::ShapeRef.new(shape: GenericString, location_name: "Code"))
    UpdateCostAllocationTagsStatusError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UpdateCostAllocationTagsStatusError.struct_class = Types::UpdateCostAllocationTagsStatusError

    UpdateCostAllocationTagsStatusErrors.member = Shapes::ShapeRef.new(shape: UpdateCostAllocationTagsStatusError)

    UpdateCostAllocationTagsStatusRequest.add_member(:cost_allocation_tags_status, Shapes::ShapeRef.new(shape: CostAllocationTagStatusList, required: true, location_name: "CostAllocationTagsStatus"))
    UpdateCostAllocationTagsStatusRequest.struct_class = Types::UpdateCostAllocationTagsStatusRequest

    UpdateCostAllocationTagsStatusResponse.add_member(:errors, Shapes::ShapeRef.new(shape: UpdateCostAllocationTagsStatusErrors, location_name: "Errors"))
    UpdateCostAllocationTagsStatusResponse.struct_class = Types::UpdateCostAllocationTagsStatusResponse

    UpdateCostCategoryDefinitionRequest.add_member(:cost_category_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CostCategoryArn"))
    UpdateCostCategoryDefinitionRequest.add_member(:effective_start, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EffectiveStart"))
    UpdateCostCategoryDefinitionRequest.add_member(:rule_version, Shapes::ShapeRef.new(shape: CostCategoryRuleVersion, required: true, location_name: "RuleVersion"))
    UpdateCostCategoryDefinitionRequest.add_member(:rules, Shapes::ShapeRef.new(shape: CostCategoryRulesList, required: true, location_name: "Rules"))
    UpdateCostCategoryDefinitionRequest.add_member(:default_value, Shapes::ShapeRef.new(shape: CostCategoryValue, location_name: "DefaultValue"))
    UpdateCostCategoryDefinitionRequest.add_member(:split_charge_rules, Shapes::ShapeRef.new(shape: CostCategorySplitChargeRulesList, location_name: "SplitChargeRules"))
    UpdateCostCategoryDefinitionRequest.struct_class = Types::UpdateCostCategoryDefinitionRequest

    UpdateCostCategoryDefinitionResponse.add_member(:cost_category_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CostCategoryArn"))
    UpdateCostCategoryDefinitionResponse.add_member(:effective_start, Shapes::ShapeRef.new(shape: ZonedDateTime, location_name: "EffectiveStart"))
    UpdateCostCategoryDefinitionResponse.struct_class = Types::UpdateCostCategoryDefinitionResponse

    UsageServices.member = Shapes::ShapeRef.new(shape: GenericString)

    UtilizationByTime.add_member(:time_period, Shapes::ShapeRef.new(shape: DateInterval, location_name: "TimePeriod"))
    UtilizationByTime.add_member(:groups, Shapes::ShapeRef.new(shape: ReservationUtilizationGroups, location_name: "Groups"))
    UtilizationByTime.add_member(:total, Shapes::ShapeRef.new(shape: ReservationAggregates, location_name: "Total"))
    UtilizationByTime.struct_class = Types::UtilizationByTime

    UtilizationsByTime.member = Shapes::ShapeRef.new(shape: UtilizationByTime)

    Values.member = Shapes::ShapeRef.new(shape: Value)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-25"

      api.metadata = {
        "apiVersion" => "2017-10-25",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "ce",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "AWS Cost Explorer",
        "serviceFullName" => "AWS Cost Explorer Service",
        "serviceId" => "Cost Explorer",
        "signatureVersion" => "v4",
        "signingName" => "ce",
        "targetPrefix" => "AWSInsightsIndexService",
        "uid" => "ce-2017-10-25",
      }

      api.add_operation(:create_anomaly_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAnomalyMonitor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAnomalyMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAnomalyMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_anomaly_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAnomalySubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAnomalySubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAnomalySubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnknownMonitorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_cost_category_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCostCategoryDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCostCategoryDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCostCategoryDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_anomaly_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnomalyMonitor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAnomalyMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAnomalyMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownMonitorException)
      end)

      api.add_operation(:delete_anomaly_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnomalySubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAnomalySubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAnomalySubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownSubscriptionException)
      end)

      api.add_operation(:delete_cost_category_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCostCategoryDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCostCategoryDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCostCategoryDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:describe_cost_category_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCostCategoryDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCostCategoryDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCostCategoryDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_anomalies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnomalies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAnomaliesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnomaliesResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:get_anomaly_monitors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnomalyMonitors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAnomalyMonitorsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnomalyMonitorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownMonitorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:get_anomaly_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnomalySubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAnomalySubscriptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnomalySubscriptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownSubscriptionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:get_approximate_usage_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApproximateUsageRecords"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetApproximateUsageRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApproximateUsageRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
      end)

      api.add_operation(:get_commitment_purchase_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCommitmentPurchaseAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCommitmentPurchaseAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCommitmentPurchaseAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AnalysisNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
      end)

      api.add_operation(:get_cost_and_usage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCostAndUsage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCostAndUsageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCostAndUsageResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BillExpirationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: RequestChangedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_cost_and_usage_comparisons, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCostAndUsageComparisons"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCostAndUsageComparisonsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCostAndUsageComparisonsResponse)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:get_cost_and_usage_with_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCostAndUsageWithResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCostAndUsageWithResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCostAndUsageWithResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BillExpirationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: RequestChangedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_cost_categories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCostCategories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCostCategoriesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCostCategoriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BillExpirationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: RequestChangedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_cost_comparison_drivers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCostComparisonDrivers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCostComparisonDriversRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCostComparisonDriversResponse)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_page_token" => "next_page_token"
          }
        )
      end)

      api.add_operation(:get_cost_forecast, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCostForecast"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCostForecastRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCostForecastResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_dimension_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDimensionValues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDimensionValuesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDimensionValuesResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BillExpirationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: RequestChangedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_reservation_coverage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReservationCoverage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReservationCoverageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReservationCoverageResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:get_reservation_purchase_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReservationPurchaseRecommendation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReservationPurchaseRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReservationPurchaseRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:get_reservation_utilization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReservationUtilization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReservationUtilizationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReservationUtilizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:get_rightsizing_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRightsizingRecommendation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRightsizingRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRightsizingRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:get_savings_plan_purchase_recommendation_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSavingsPlanPurchaseRecommendationDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSavingsPlanPurchaseRecommendationDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSavingsPlanPurchaseRecommendationDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
      end)

      api.add_operation(:get_savings_plans_coverage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSavingsPlansCoverage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSavingsPlansCoverageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSavingsPlansCoverageResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_savings_plans_purchase_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSavingsPlansPurchaseRecommendation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSavingsPlansPurchaseRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSavingsPlansPurchaseRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:get_savings_plans_utilization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSavingsPlansUtilization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSavingsPlansUtilizationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSavingsPlansUtilizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
      end)

      api.add_operation(:get_savings_plans_utilization_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSavingsPlansUtilizationDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSavingsPlansUtilizationDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSavingsPlansUtilizationDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BillExpirationException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: RequestChangedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_usage_forecast, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUsageForecast"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUsageForecastRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUsageForecastResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnresolvableUsageUnitException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_commitment_purchase_analyses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCommitmentPurchaseAnalyses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCommitmentPurchaseAnalysesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCommitmentPurchaseAnalysesResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
      end)

      api.add_operation(:list_cost_allocation_tag_backfill_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCostAllocationTagBackfillHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCostAllocationTagBackfillHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCostAllocationTagBackfillHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cost_allocation_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCostAllocationTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCostAllocationTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCostAllocationTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cost_category_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCostCategoryDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCostCategoryDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCostCategoryDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_savings_plans_purchase_recommendation_generation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSavingsPlansPurchaseRecommendationGeneration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSavingsPlansPurchaseRecommendationGenerationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSavingsPlansPurchaseRecommendationGenerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:provide_anomaly_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ProvideAnomalyFeedback"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ProvideAnomalyFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: ProvideAnomalyFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:start_commitment_purchase_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCommitmentPurchaseAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartCommitmentPurchaseAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCommitmentPurchaseAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: GenerationExistsException)
      end)

      api.add_operation(:start_cost_allocation_tag_backfill, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCostAllocationTagBackfill"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartCostAllocationTagBackfillRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCostAllocationTagBackfillResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: BackfillLimitExceededException)
      end)

      api.add_operation(:start_savings_plans_purchase_recommendation_generation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSavingsPlansPurchaseRecommendationGeneration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartSavingsPlansPurchaseRecommendationGenerationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSavingsPlansPurchaseRecommendationGenerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: GenerationExistsException)
        o.errors << Shapes::ShapeRef.new(shape: DataUnavailableException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_anomaly_monitor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnomalyMonitor"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAnomalyMonitorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAnomalyMonitorResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownMonitorException)
      end)

      api.add_operation(:update_anomaly_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnomalySubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAnomalySubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAnomalySubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownMonitorException)
        o.errors << Shapes::ShapeRef.new(shape: UnknownSubscriptionException)
      end)

      api.add_operation(:update_cost_allocation_tags_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCostAllocationTagsStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCostAllocationTagsStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCostAllocationTagsStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_cost_category_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCostCategoryDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCostCategoryDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCostCategoryDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)
    end

  end
end
