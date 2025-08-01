# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AutoScaling
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceleratorCountRequest = Shapes::StructureShape.new(name: 'AcceleratorCountRequest')
    AcceleratorManufacturer = Shapes::StringShape.new(name: 'AcceleratorManufacturer')
    AcceleratorManufacturers = Shapes::ListShape.new(name: 'AcceleratorManufacturers')
    AcceleratorName = Shapes::StringShape.new(name: 'AcceleratorName')
    AcceleratorNames = Shapes::ListShape.new(name: 'AcceleratorNames')
    AcceleratorTotalMemoryMiBRequest = Shapes::StructureShape.new(name: 'AcceleratorTotalMemoryMiBRequest')
    AcceleratorType = Shapes::StringShape.new(name: 'AcceleratorType')
    AcceleratorTypes = Shapes::ListShape.new(name: 'AcceleratorTypes')
    ActiveInstanceRefreshNotFoundFault = Shapes::StructureShape.new(name: 'ActiveInstanceRefreshNotFoundFault', error: {"code" => "ActiveInstanceRefreshNotFound", "httpStatusCode" => 400, "senderFault" => true})
    Activities = Shapes::ListShape.new(name: 'Activities')
    ActivitiesType = Shapes::StructureShape.new(name: 'ActivitiesType')
    Activity = Shapes::StructureShape.new(name: 'Activity')
    ActivityIds = Shapes::ListShape.new(name: 'ActivityIds')
    ActivityType = Shapes::StructureShape.new(name: 'ActivityType')
    AdjustmentType = Shapes::StructureShape.new(name: 'AdjustmentType')
    AdjustmentTypes = Shapes::ListShape.new(name: 'AdjustmentTypes')
    Alarm = Shapes::StructureShape.new(name: 'Alarm')
    AlarmList = Shapes::ListShape.new(name: 'AlarmList')
    AlarmSpecification = Shapes::StructureShape.new(name: 'AlarmSpecification')
    Alarms = Shapes::ListShape.new(name: 'Alarms')
    AllowedInstanceType = Shapes::StringShape.new(name: 'AllowedInstanceType')
    AllowedInstanceTypes = Shapes::ListShape.new(name: 'AllowedInstanceTypes')
    AlreadyExistsFault = Shapes::StructureShape.new(name: 'AlreadyExistsFault', error: {"code" => "AlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    AnyPrintableAsciiStringMaxLen4000 = Shapes::StringShape.new(name: 'AnyPrintableAsciiStringMaxLen4000')
    AsciiStringMaxLen255 = Shapes::StringShape.new(name: 'AsciiStringMaxLen255')
    AssociatePublicIpAddress = Shapes::BooleanShape.new(name: 'AssociatePublicIpAddress')
    AttachInstancesQuery = Shapes::StructureShape.new(name: 'AttachInstancesQuery')
    AttachLoadBalancerTargetGroupsResultType = Shapes::StructureShape.new(name: 'AttachLoadBalancerTargetGroupsResultType')
    AttachLoadBalancerTargetGroupsType = Shapes::StructureShape.new(name: 'AttachLoadBalancerTargetGroupsType')
    AttachLoadBalancersResultType = Shapes::StructureShape.new(name: 'AttachLoadBalancersResultType')
    AttachLoadBalancersType = Shapes::StructureShape.new(name: 'AttachLoadBalancersType')
    AttachTrafficSourcesResultType = Shapes::StructureShape.new(name: 'AttachTrafficSourcesResultType')
    AttachTrafficSourcesType = Shapes::StructureShape.new(name: 'AttachTrafficSourcesType')
    AutoRollback = Shapes::BooleanShape.new(name: 'AutoRollback')
    AutoScalingGroup = Shapes::StructureShape.new(name: 'AutoScalingGroup')
    AutoScalingGroupDesiredCapacity = Shapes::IntegerShape.new(name: 'AutoScalingGroupDesiredCapacity')
    AutoScalingGroupMaxSize = Shapes::IntegerShape.new(name: 'AutoScalingGroupMaxSize')
    AutoScalingGroupMinSize = Shapes::IntegerShape.new(name: 'AutoScalingGroupMinSize')
    AutoScalingGroupNames = Shapes::ListShape.new(name: 'AutoScalingGroupNames')
    AutoScalingGroupNamesType = Shapes::StructureShape.new(name: 'AutoScalingGroupNamesType')
    AutoScalingGroupPredictedCapacity = Shapes::IntegerShape.new(name: 'AutoScalingGroupPredictedCapacity')
    AutoScalingGroupState = Shapes::StringShape.new(name: 'AutoScalingGroupState')
    AutoScalingGroups = Shapes::ListShape.new(name: 'AutoScalingGroups')
    AutoScalingGroupsType = Shapes::StructureShape.new(name: 'AutoScalingGroupsType')
    AutoScalingInstanceDetails = Shapes::StructureShape.new(name: 'AutoScalingInstanceDetails')
    AutoScalingInstances = Shapes::ListShape.new(name: 'AutoScalingInstances')
    AutoScalingInstancesType = Shapes::StructureShape.new(name: 'AutoScalingInstancesType')
    AutoScalingNotificationTypes = Shapes::ListShape.new(name: 'AutoScalingNotificationTypes')
    AvailabilityZoneDistribution = Shapes::StructureShape.new(name: 'AvailabilityZoneDistribution')
    AvailabilityZoneImpairmentPolicy = Shapes::StructureShape.new(name: 'AvailabilityZoneImpairmentPolicy')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    BakeTime = Shapes::IntegerShape.new(name: 'BakeTime')
    BareMetal = Shapes::StringShape.new(name: 'BareMetal')
    BaselineEbsBandwidthMbpsRequest = Shapes::StructureShape.new(name: 'BaselineEbsBandwidthMbpsRequest')
    BaselinePerformanceFactorsRequest = Shapes::StructureShape.new(name: 'BaselinePerformanceFactorsRequest')
    BatchDeleteScheduledActionAnswer = Shapes::StructureShape.new(name: 'BatchDeleteScheduledActionAnswer')
    BatchDeleteScheduledActionType = Shapes::StructureShape.new(name: 'BatchDeleteScheduledActionType')
    BatchPutScheduledUpdateGroupActionAnswer = Shapes::StructureShape.new(name: 'BatchPutScheduledUpdateGroupActionAnswer')
    BatchPutScheduledUpdateGroupActionType = Shapes::StructureShape.new(name: 'BatchPutScheduledUpdateGroupActionType')
    BlockDeviceEbsDeleteOnTermination = Shapes::BooleanShape.new(name: 'BlockDeviceEbsDeleteOnTermination')
    BlockDeviceEbsEncrypted = Shapes::BooleanShape.new(name: 'BlockDeviceEbsEncrypted')
    BlockDeviceEbsIops = Shapes::IntegerShape.new(name: 'BlockDeviceEbsIops')
    BlockDeviceEbsThroughput = Shapes::IntegerShape.new(name: 'BlockDeviceEbsThroughput')
    BlockDeviceEbsVolumeSize = Shapes::IntegerShape.new(name: 'BlockDeviceEbsVolumeSize')
    BlockDeviceEbsVolumeType = Shapes::StringShape.new(name: 'BlockDeviceEbsVolumeType')
    BlockDeviceMapping = Shapes::StructureShape.new(name: 'BlockDeviceMapping')
    BlockDeviceMappings = Shapes::ListShape.new(name: 'BlockDeviceMappings')
    BurstablePerformance = Shapes::StringShape.new(name: 'BurstablePerformance')
    CancelInstanceRefreshAnswer = Shapes::StructureShape.new(name: 'CancelInstanceRefreshAnswer')
    CancelInstanceRefreshType = Shapes::StructureShape.new(name: 'CancelInstanceRefreshType')
    CapacityDistributionStrategy = Shapes::StringShape.new(name: 'CapacityDistributionStrategy')
    CapacityForecast = Shapes::StructureShape.new(name: 'CapacityForecast')
    CapacityRebalanceEnabled = Shapes::BooleanShape.new(name: 'CapacityRebalanceEnabled')
    CapacityReservationIds = Shapes::ListShape.new(name: 'CapacityReservationIds')
    CapacityReservationPreference = Shapes::StringShape.new(name: 'CapacityReservationPreference')
    CapacityReservationResourceGroupArns = Shapes::ListShape.new(name: 'CapacityReservationResourceGroupArns')
    CapacityReservationSpecification = Shapes::StructureShape.new(name: 'CapacityReservationSpecification')
    CapacityReservationTarget = Shapes::StructureShape.new(name: 'CapacityReservationTarget')
    CheckpointDelay = Shapes::IntegerShape.new(name: 'CheckpointDelay')
    CheckpointPercentages = Shapes::ListShape.new(name: 'CheckpointPercentages')
    ClassicLinkVPCSecurityGroups = Shapes::ListShape.new(name: 'ClassicLinkVPCSecurityGroups')
    CompleteLifecycleActionAnswer = Shapes::StructureShape.new(name: 'CompleteLifecycleActionAnswer')
    CompleteLifecycleActionType = Shapes::StructureShape.new(name: 'CompleteLifecycleActionType')
    Context = Shapes::StringShape.new(name: 'Context')
    Cooldown = Shapes::IntegerShape.new(name: 'Cooldown')
    CpuManufacturer = Shapes::StringShape.new(name: 'CpuManufacturer')
    CpuManufacturers = Shapes::ListShape.new(name: 'CpuManufacturers')
    CpuPerformanceFactorRequest = Shapes::StructureShape.new(name: 'CpuPerformanceFactorRequest')
    CreateAutoScalingGroupType = Shapes::StructureShape.new(name: 'CreateAutoScalingGroupType')
    CreateLaunchConfigurationType = Shapes::StructureShape.new(name: 'CreateLaunchConfigurationType')
    CreateOrUpdateTagsType = Shapes::StructureShape.new(name: 'CreateOrUpdateTagsType')
    CustomizedMetricSpecification = Shapes::StructureShape.new(name: 'CustomizedMetricSpecification')
    DefaultInstanceWarmup = Shapes::IntegerShape.new(name: 'DefaultInstanceWarmup')
    DeleteAutoScalingGroupType = Shapes::StructureShape.new(name: 'DeleteAutoScalingGroupType')
    DeleteLifecycleHookAnswer = Shapes::StructureShape.new(name: 'DeleteLifecycleHookAnswer')
    DeleteLifecycleHookType = Shapes::StructureShape.new(name: 'DeleteLifecycleHookType')
    DeleteNotificationConfigurationType = Shapes::StructureShape.new(name: 'DeleteNotificationConfigurationType')
    DeletePolicyType = Shapes::StructureShape.new(name: 'DeletePolicyType')
    DeleteScheduledActionType = Shapes::StructureShape.new(name: 'DeleteScheduledActionType')
    DeleteTagsType = Shapes::StructureShape.new(name: 'DeleteTagsType')
    DeleteWarmPoolAnswer = Shapes::StructureShape.new(name: 'DeleteWarmPoolAnswer')
    DeleteWarmPoolType = Shapes::StructureShape.new(name: 'DeleteWarmPoolType')
    DescribeAccountLimitsAnswer = Shapes::StructureShape.new(name: 'DescribeAccountLimitsAnswer')
    DescribeAdjustmentTypesAnswer = Shapes::StructureShape.new(name: 'DescribeAdjustmentTypesAnswer')
    DescribeAutoScalingInstancesType = Shapes::StructureShape.new(name: 'DescribeAutoScalingInstancesType')
    DescribeAutoScalingNotificationTypesAnswer = Shapes::StructureShape.new(name: 'DescribeAutoScalingNotificationTypesAnswer')
    DescribeInstanceRefreshesAnswer = Shapes::StructureShape.new(name: 'DescribeInstanceRefreshesAnswer')
    DescribeInstanceRefreshesType = Shapes::StructureShape.new(name: 'DescribeInstanceRefreshesType')
    DescribeLifecycleHookTypesAnswer = Shapes::StructureShape.new(name: 'DescribeLifecycleHookTypesAnswer')
    DescribeLifecycleHooksAnswer = Shapes::StructureShape.new(name: 'DescribeLifecycleHooksAnswer')
    DescribeLifecycleHooksType = Shapes::StructureShape.new(name: 'DescribeLifecycleHooksType')
    DescribeLoadBalancerTargetGroupsRequest = Shapes::StructureShape.new(name: 'DescribeLoadBalancerTargetGroupsRequest')
    DescribeLoadBalancerTargetGroupsResponse = Shapes::StructureShape.new(name: 'DescribeLoadBalancerTargetGroupsResponse')
    DescribeLoadBalancersRequest = Shapes::StructureShape.new(name: 'DescribeLoadBalancersRequest')
    DescribeLoadBalancersResponse = Shapes::StructureShape.new(name: 'DescribeLoadBalancersResponse')
    DescribeMetricCollectionTypesAnswer = Shapes::StructureShape.new(name: 'DescribeMetricCollectionTypesAnswer')
    DescribeNotificationConfigurationsAnswer = Shapes::StructureShape.new(name: 'DescribeNotificationConfigurationsAnswer')
    DescribeNotificationConfigurationsType = Shapes::StructureShape.new(name: 'DescribeNotificationConfigurationsType')
    DescribePoliciesType = Shapes::StructureShape.new(name: 'DescribePoliciesType')
    DescribeScalingActivitiesType = Shapes::StructureShape.new(name: 'DescribeScalingActivitiesType')
    DescribeScheduledActionsType = Shapes::StructureShape.new(name: 'DescribeScheduledActionsType')
    DescribeTagsType = Shapes::StructureShape.new(name: 'DescribeTagsType')
    DescribeTerminationPolicyTypesAnswer = Shapes::StructureShape.new(name: 'DescribeTerminationPolicyTypesAnswer')
    DescribeTrafficSourcesRequest = Shapes::StructureShape.new(name: 'DescribeTrafficSourcesRequest')
    DescribeTrafficSourcesResponse = Shapes::StructureShape.new(name: 'DescribeTrafficSourcesResponse')
    DescribeWarmPoolAnswer = Shapes::StructureShape.new(name: 'DescribeWarmPoolAnswer')
    DescribeWarmPoolType = Shapes::StructureShape.new(name: 'DescribeWarmPoolType')
    DesiredConfiguration = Shapes::StructureShape.new(name: 'DesiredConfiguration')
    DetachInstancesAnswer = Shapes::StructureShape.new(name: 'DetachInstancesAnswer')
    DetachInstancesQuery = Shapes::StructureShape.new(name: 'DetachInstancesQuery')
    DetachLoadBalancerTargetGroupsResultType = Shapes::StructureShape.new(name: 'DetachLoadBalancerTargetGroupsResultType')
    DetachLoadBalancerTargetGroupsType = Shapes::StructureShape.new(name: 'DetachLoadBalancerTargetGroupsType')
    DetachLoadBalancersResultType = Shapes::StructureShape.new(name: 'DetachLoadBalancersResultType')
    DetachLoadBalancersType = Shapes::StructureShape.new(name: 'DetachLoadBalancersType')
    DetachTrafficSourcesResultType = Shapes::StructureShape.new(name: 'DetachTrafficSourcesResultType')
    DetachTrafficSourcesType = Shapes::StructureShape.new(name: 'DetachTrafficSourcesType')
    DisableMetricsCollectionQuery = Shapes::StructureShape.new(name: 'DisableMetricsCollectionQuery')
    DisableScaleIn = Shapes::BooleanShape.new(name: 'DisableScaleIn')
    Ebs = Shapes::StructureShape.new(name: 'Ebs')
    EbsOptimized = Shapes::BooleanShape.new(name: 'EbsOptimized')
    EnableMetricsCollectionQuery = Shapes::StructureShape.new(name: 'EnableMetricsCollectionQuery')
    EnabledMetric = Shapes::StructureShape.new(name: 'EnabledMetric')
    EnabledMetrics = Shapes::ListShape.new(name: 'EnabledMetrics')
    EnterStandbyAnswer = Shapes::StructureShape.new(name: 'EnterStandbyAnswer')
    EnterStandbyQuery = Shapes::StructureShape.new(name: 'EnterStandbyQuery')
    EstimatedInstanceWarmup = Shapes::IntegerShape.new(name: 'EstimatedInstanceWarmup')
    ExcludedInstance = Shapes::StringShape.new(name: 'ExcludedInstance')
    ExcludedInstanceTypes = Shapes::ListShape.new(name: 'ExcludedInstanceTypes')
    ExecutePolicyType = Shapes::StructureShape.new(name: 'ExecutePolicyType')
    ExitStandbyAnswer = Shapes::StructureShape.new(name: 'ExitStandbyAnswer')
    ExitStandbyQuery = Shapes::StructureShape.new(name: 'ExitStandbyQuery')
    FailedScheduledUpdateGroupActionRequest = Shapes::StructureShape.new(name: 'FailedScheduledUpdateGroupActionRequest')
    FailedScheduledUpdateGroupActionRequests = Shapes::ListShape.new(name: 'FailedScheduledUpdateGroupActionRequests')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    Filters = Shapes::ListShape.new(name: 'Filters')
    ForceDelete = Shapes::BooleanShape.new(name: 'ForceDelete')
    GetPredictiveScalingForecastAnswer = Shapes::StructureShape.new(name: 'GetPredictiveScalingForecastAnswer')
    GetPredictiveScalingForecastType = Shapes::StructureShape.new(name: 'GetPredictiveScalingForecastType')
    GlobalTimeout = Shapes::IntegerShape.new(name: 'GlobalTimeout')
    HealthCheckGracePeriod = Shapes::IntegerShape.new(name: 'HealthCheckGracePeriod')
    HeartbeatTimeout = Shapes::IntegerShape.new(name: 'HeartbeatTimeout')
    HonorCooldown = Shapes::BooleanShape.new(name: 'HonorCooldown')
    ImpairedZoneHealthCheckBehavior = Shapes::StringShape.new(name: 'ImpairedZoneHealthCheckBehavior')
    IncludeDeletedGroups = Shapes::BooleanShape.new(name: 'IncludeDeletedGroups')
    IncludeInstances = Shapes::BooleanShape.new(name: 'IncludeInstances')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceGeneration = Shapes::StringShape.new(name: 'InstanceGeneration')
    InstanceGenerations = Shapes::ListShape.new(name: 'InstanceGenerations')
    InstanceIds = Shapes::ListShape.new(name: 'InstanceIds')
    InstanceMaintenancePolicy = Shapes::StructureShape.new(name: 'InstanceMaintenancePolicy')
    InstanceMetadataEndpointState = Shapes::StringShape.new(name: 'InstanceMetadataEndpointState')
    InstanceMetadataHttpPutResponseHopLimit = Shapes::IntegerShape.new(name: 'InstanceMetadataHttpPutResponseHopLimit')
    InstanceMetadataHttpTokensState = Shapes::StringShape.new(name: 'InstanceMetadataHttpTokensState')
    InstanceMetadataOptions = Shapes::StructureShape.new(name: 'InstanceMetadataOptions')
    InstanceMonitoring = Shapes::StructureShape.new(name: 'InstanceMonitoring')
    InstanceProtected = Shapes::BooleanShape.new(name: 'InstanceProtected')
    InstanceRefresh = Shapes::StructureShape.new(name: 'InstanceRefresh')
    InstanceRefreshIds = Shapes::ListShape.new(name: 'InstanceRefreshIds')
    InstanceRefreshInProgressFault = Shapes::StructureShape.new(name: 'InstanceRefreshInProgressFault', error: {"code" => "InstanceRefreshInProgress", "httpStatusCode" => 400, "senderFault" => true})
    InstanceRefreshLivePoolProgress = Shapes::StructureShape.new(name: 'InstanceRefreshLivePoolProgress')
    InstanceRefreshProgressDetails = Shapes::StructureShape.new(name: 'InstanceRefreshProgressDetails')
    InstanceRefreshStatus = Shapes::StringShape.new(name: 'InstanceRefreshStatus')
    InstanceRefreshWarmPoolProgress = Shapes::StructureShape.new(name: 'InstanceRefreshWarmPoolProgress')
    InstanceRefreshes = Shapes::ListShape.new(name: 'InstanceRefreshes')
    InstanceRequirements = Shapes::StructureShape.new(name: 'InstanceRequirements')
    InstanceReusePolicy = Shapes::StructureShape.new(name: 'InstanceReusePolicy')
    Instances = Shapes::ListShape.new(name: 'Instances')
    InstancesDistribution = Shapes::StructureShape.new(name: 'InstancesDistribution')
    InstancesToUpdate = Shapes::IntegerShape.new(name: 'InstancesToUpdate')
    IntPercent = Shapes::IntegerShape.new(name: 'IntPercent')
    IntPercent100To200 = Shapes::IntegerShape.new(name: 'IntPercent100To200')
    IntPercent100To200Resettable = Shapes::IntegerShape.new(name: 'IntPercent100To200Resettable')
    IntPercentResettable = Shapes::IntegerShape.new(name: 'IntPercentResettable')
    InvalidNextToken = Shapes::StructureShape.new(name: 'InvalidNextToken', error: {"code" => "InvalidNextToken", "httpStatusCode" => 400, "senderFault" => true})
    IrreversibleInstanceRefreshFault = Shapes::StructureShape.new(name: 'IrreversibleInstanceRefreshFault', error: {"code" => "IrreversibleInstanceRefresh", "httpStatusCode" => 400, "senderFault" => true})
    LaunchConfiguration = Shapes::StructureShape.new(name: 'LaunchConfiguration')
    LaunchConfigurationNameType = Shapes::StructureShape.new(name: 'LaunchConfigurationNameType')
    LaunchConfigurationNames = Shapes::ListShape.new(name: 'LaunchConfigurationNames')
    LaunchConfigurationNamesType = Shapes::StructureShape.new(name: 'LaunchConfigurationNamesType')
    LaunchConfigurations = Shapes::ListShape.new(name: 'LaunchConfigurations')
    LaunchConfigurationsType = Shapes::StructureShape.new(name: 'LaunchConfigurationsType')
    LaunchTemplate = Shapes::StructureShape.new(name: 'LaunchTemplate')
    LaunchTemplateName = Shapes::StringShape.new(name: 'LaunchTemplateName')
    LaunchTemplateOverrides = Shapes::StructureShape.new(name: 'LaunchTemplateOverrides')
    LaunchTemplateSpecification = Shapes::StructureShape.new(name: 'LaunchTemplateSpecification')
    LifecycleActionResult = Shapes::StringShape.new(name: 'LifecycleActionResult')
    LifecycleActionToken = Shapes::StringShape.new(name: 'LifecycleActionToken')
    LifecycleHook = Shapes::StructureShape.new(name: 'LifecycleHook')
    LifecycleHookNames = Shapes::ListShape.new(name: 'LifecycleHookNames')
    LifecycleHookSpecification = Shapes::StructureShape.new(name: 'LifecycleHookSpecification')
    LifecycleHookSpecifications = Shapes::ListShape.new(name: 'LifecycleHookSpecifications')
    LifecycleHooks = Shapes::ListShape.new(name: 'LifecycleHooks')
    LifecycleState = Shapes::StringShape.new(name: 'LifecycleState')
    LifecycleTransition = Shapes::StringShape.new(name: 'LifecycleTransition')
    LimitExceededFault = Shapes::StructureShape.new(name: 'LimitExceededFault', error: {"code" => "LimitExceeded", "httpStatusCode" => 400, "senderFault" => true})
    LoadBalancerNames = Shapes::ListShape.new(name: 'LoadBalancerNames')
    LoadBalancerState = Shapes::StructureShape.new(name: 'LoadBalancerState')
    LoadBalancerStates = Shapes::ListShape.new(name: 'LoadBalancerStates')
    LoadBalancerTargetGroupState = Shapes::StructureShape.new(name: 'LoadBalancerTargetGroupState')
    LoadBalancerTargetGroupStates = Shapes::ListShape.new(name: 'LoadBalancerTargetGroupStates')
    LoadForecast = Shapes::StructureShape.new(name: 'LoadForecast')
    LoadForecasts = Shapes::ListShape.new(name: 'LoadForecasts')
    LocalStorage = Shapes::StringShape.new(name: 'LocalStorage')
    LocalStorageType = Shapes::StringShape.new(name: 'LocalStorageType')
    LocalStorageTypes = Shapes::ListShape.new(name: 'LocalStorageTypes')
    MaxGroupPreparedCapacity = Shapes::IntegerShape.new(name: 'MaxGroupPreparedCapacity')
    MaxInstanceLifetime = Shapes::IntegerShape.new(name: 'MaxInstanceLifetime')
    MaxNumberOfAutoScalingGroups = Shapes::IntegerShape.new(name: 'MaxNumberOfAutoScalingGroups')
    MaxNumberOfLaunchConfigurations = Shapes::IntegerShape.new(name: 'MaxNumberOfLaunchConfigurations')
    MaxRecords = Shapes::IntegerShape.new(name: 'MaxRecords')
    MemoryGiBPerVCpuRequest = Shapes::StructureShape.new(name: 'MemoryGiBPerVCpuRequest')
    MemoryMiBRequest = Shapes::StructureShape.new(name: 'MemoryMiBRequest')
    Metric = Shapes::StructureShape.new(name: 'Metric')
    MetricCollectionType = Shapes::StructureShape.new(name: 'MetricCollectionType')
    MetricCollectionTypes = Shapes::ListShape.new(name: 'MetricCollectionTypes')
    MetricDataQueries = Shapes::ListShape.new(name: 'MetricDataQueries')
    MetricDataQuery = Shapes::StructureShape.new(name: 'MetricDataQuery')
    MetricDimension = Shapes::StructureShape.new(name: 'MetricDimension')
    MetricDimensionName = Shapes::StringShape.new(name: 'MetricDimensionName')
    MetricDimensionValue = Shapes::StringShape.new(name: 'MetricDimensionValue')
    MetricDimensions = Shapes::ListShape.new(name: 'MetricDimensions')
    MetricGranularityInSeconds = Shapes::IntegerShape.new(name: 'MetricGranularityInSeconds')
    MetricGranularityType = Shapes::StructureShape.new(name: 'MetricGranularityType')
    MetricGranularityTypes = Shapes::ListShape.new(name: 'MetricGranularityTypes')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNamespace = Shapes::StringShape.new(name: 'MetricNamespace')
    MetricScale = Shapes::FloatShape.new(name: 'MetricScale')
    MetricStat = Shapes::StructureShape.new(name: 'MetricStat')
    MetricStatistic = Shapes::StringShape.new(name: 'MetricStatistic')
    MetricType = Shapes::StringShape.new(name: 'MetricType')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    Metrics = Shapes::ListShape.new(name: 'Metrics')
    MinAdjustmentMagnitude = Shapes::IntegerShape.new(name: 'MinAdjustmentMagnitude')
    MinAdjustmentStep = Shapes::IntegerShape.new(name: 'MinAdjustmentStep')
    MixedInstanceSpotPrice = Shapes::StringShape.new(name: 'MixedInstanceSpotPrice')
    MixedInstancesPolicy = Shapes::StructureShape.new(name: 'MixedInstancesPolicy')
    MonitoringEnabled = Shapes::BooleanShape.new(name: 'MonitoringEnabled')
    NetworkBandwidthGbpsRequest = Shapes::StructureShape.new(name: 'NetworkBandwidthGbpsRequest')
    NetworkInterfaceCountRequest = Shapes::StructureShape.new(name: 'NetworkInterfaceCountRequest')
    NoDevice = Shapes::BooleanShape.new(name: 'NoDevice')
    NonZeroIntPercent = Shapes::IntegerShape.new(name: 'NonZeroIntPercent')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    NotificationConfigurations = Shapes::ListShape.new(name: 'NotificationConfigurations')
    NotificationTargetResourceName = Shapes::StringShape.new(name: 'NotificationTargetResourceName')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NullablePositiveDouble = Shapes::FloatShape.new(name: 'NullablePositiveDouble')
    NullablePositiveInteger = Shapes::IntegerShape.new(name: 'NullablePositiveInteger')
    NumberOfAutoScalingGroups = Shapes::IntegerShape.new(name: 'NumberOfAutoScalingGroups')
    NumberOfLaunchConfigurations = Shapes::IntegerShape.new(name: 'NumberOfLaunchConfigurations')
    OnDemandBaseCapacity = Shapes::IntegerShape.new(name: 'OnDemandBaseCapacity')
    OnDemandPercentageAboveBaseCapacity = Shapes::IntegerShape.new(name: 'OnDemandPercentageAboveBaseCapacity')
    Overrides = Shapes::ListShape.new(name: 'Overrides')
    PerformanceFactorReferenceRequest = Shapes::StructureShape.new(name: 'PerformanceFactorReferenceRequest')
    PerformanceFactorReferenceSetRequest = Shapes::ListShape.new(name: 'PerformanceFactorReferenceSetRequest')
    PoliciesType = Shapes::StructureShape.new(name: 'PoliciesType')
    PolicyARNType = Shapes::StructureShape.new(name: 'PolicyARNType')
    PolicyIncrement = Shapes::IntegerShape.new(name: 'PolicyIncrement')
    PolicyNames = Shapes::ListShape.new(name: 'PolicyNames')
    PolicyTypes = Shapes::ListShape.new(name: 'PolicyTypes')
    PredefinedLoadMetricType = Shapes::StringShape.new(name: 'PredefinedLoadMetricType')
    PredefinedMetricPairType = Shapes::StringShape.new(name: 'PredefinedMetricPairType')
    PredefinedMetricSpecification = Shapes::StructureShape.new(name: 'PredefinedMetricSpecification')
    PredefinedScalingMetricType = Shapes::StringShape.new(name: 'PredefinedScalingMetricType')
    PredictiveScalingConfiguration = Shapes::StructureShape.new(name: 'PredictiveScalingConfiguration')
    PredictiveScalingCustomizedCapacityMetric = Shapes::StructureShape.new(name: 'PredictiveScalingCustomizedCapacityMetric')
    PredictiveScalingCustomizedLoadMetric = Shapes::StructureShape.new(name: 'PredictiveScalingCustomizedLoadMetric')
    PredictiveScalingCustomizedScalingMetric = Shapes::StructureShape.new(name: 'PredictiveScalingCustomizedScalingMetric')
    PredictiveScalingForecastTimestamps = Shapes::ListShape.new(name: 'PredictiveScalingForecastTimestamps')
    PredictiveScalingForecastValues = Shapes::ListShape.new(name: 'PredictiveScalingForecastValues')
    PredictiveScalingMaxCapacityBreachBehavior = Shapes::StringShape.new(name: 'PredictiveScalingMaxCapacityBreachBehavior')
    PredictiveScalingMaxCapacityBuffer = Shapes::IntegerShape.new(name: 'PredictiveScalingMaxCapacityBuffer')
    PredictiveScalingMetricSpecification = Shapes::StructureShape.new(name: 'PredictiveScalingMetricSpecification')
    PredictiveScalingMetricSpecifications = Shapes::ListShape.new(name: 'PredictiveScalingMetricSpecifications')
    PredictiveScalingMode = Shapes::StringShape.new(name: 'PredictiveScalingMode')
    PredictiveScalingPredefinedLoadMetric = Shapes::StructureShape.new(name: 'PredictiveScalingPredefinedLoadMetric')
    PredictiveScalingPredefinedMetricPair = Shapes::StructureShape.new(name: 'PredictiveScalingPredefinedMetricPair')
    PredictiveScalingPredefinedScalingMetric = Shapes::StructureShape.new(name: 'PredictiveScalingPredefinedScalingMetric')
    PredictiveScalingSchedulingBufferTime = Shapes::IntegerShape.new(name: 'PredictiveScalingSchedulingBufferTime')
    ProcessNames = Shapes::ListShape.new(name: 'ProcessNames')
    ProcessType = Shapes::StructureShape.new(name: 'ProcessType')
    Processes = Shapes::ListShape.new(name: 'Processes')
    ProcessesType = Shapes::StructureShape.new(name: 'ProcessesType')
    Progress = Shapes::IntegerShape.new(name: 'Progress')
    PropagateAtLaunch = Shapes::BooleanShape.new(name: 'PropagateAtLaunch')
    ProtectedFromScaleIn = Shapes::BooleanShape.new(name: 'ProtectedFromScaleIn')
    PutLifecycleHookAnswer = Shapes::StructureShape.new(name: 'PutLifecycleHookAnswer')
    PutLifecycleHookType = Shapes::StructureShape.new(name: 'PutLifecycleHookType')
    PutNotificationConfigurationType = Shapes::StructureShape.new(name: 'PutNotificationConfigurationType')
    PutScalingPolicyType = Shapes::StructureShape.new(name: 'PutScalingPolicyType')
    PutScheduledUpdateGroupActionType = Shapes::StructureShape.new(name: 'PutScheduledUpdateGroupActionType')
    PutWarmPoolAnswer = Shapes::StructureShape.new(name: 'PutWarmPoolAnswer')
    PutWarmPoolType = Shapes::StructureShape.new(name: 'PutWarmPoolType')
    RecordLifecycleActionHeartbeatAnswer = Shapes::StructureShape.new(name: 'RecordLifecycleActionHeartbeatAnswer')
    RecordLifecycleActionHeartbeatType = Shapes::StructureShape.new(name: 'RecordLifecycleActionHeartbeatType')
    RefreshInstanceWarmup = Shapes::IntegerShape.new(name: 'RefreshInstanceWarmup')
    RefreshPreferences = Shapes::StructureShape.new(name: 'RefreshPreferences')
    RefreshStrategy = Shapes::StringShape.new(name: 'RefreshStrategy')
    ResourceContentionFault = Shapes::StructureShape.new(name: 'ResourceContentionFault', error: {"code" => "ResourceContention", "httpStatusCode" => 500, "senderFault" => true})
    ResourceInUseFault = Shapes::StructureShape.new(name: 'ResourceInUseFault', error: {"code" => "ResourceInUse", "httpStatusCode" => 400, "senderFault" => true})
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ReturnData = Shapes::BooleanShape.new(name: 'ReturnData')
    ReuseOnScaleIn = Shapes::BooleanShape.new(name: 'ReuseOnScaleIn')
    RollbackDetails = Shapes::StructureShape.new(name: 'RollbackDetails')
    RollbackInstanceRefreshAnswer = Shapes::StructureShape.new(name: 'RollbackInstanceRefreshAnswer')
    RollbackInstanceRefreshType = Shapes::StructureShape.new(name: 'RollbackInstanceRefreshType')
    ScaleInProtectedInstances = Shapes::StringShape.new(name: 'ScaleInProtectedInstances')
    ScalingActivityInProgressFault = Shapes::StructureShape.new(name: 'ScalingActivityInProgressFault', error: {"code" => "ScalingActivityInProgress", "httpStatusCode" => 400, "senderFault" => true})
    ScalingActivityStatusCode = Shapes::StringShape.new(name: 'ScalingActivityStatusCode')
    ScalingPolicies = Shapes::ListShape.new(name: 'ScalingPolicies')
    ScalingPolicy = Shapes::StructureShape.new(name: 'ScalingPolicy')
    ScalingPolicyEnabled = Shapes::BooleanShape.new(name: 'ScalingPolicyEnabled')
    ScalingProcessQuery = Shapes::StructureShape.new(name: 'ScalingProcessQuery')
    ScheduledActionNames = Shapes::ListShape.new(name: 'ScheduledActionNames')
    ScheduledActionsType = Shapes::StructureShape.new(name: 'ScheduledActionsType')
    ScheduledUpdateGroupAction = Shapes::StructureShape.new(name: 'ScheduledUpdateGroupAction')
    ScheduledUpdateGroupActionRequest = Shapes::StructureShape.new(name: 'ScheduledUpdateGroupActionRequest')
    ScheduledUpdateGroupActionRequests = Shapes::ListShape.new(name: 'ScheduledUpdateGroupActionRequests')
    ScheduledUpdateGroupActions = Shapes::ListShape.new(name: 'ScheduledUpdateGroupActions')
    SecurityGroups = Shapes::ListShape.new(name: 'SecurityGroups')
    ServiceLinkedRoleFailure = Shapes::StructureShape.new(name: 'ServiceLinkedRoleFailure', error: {"code" => "ServiceLinkedRoleFailure", "httpStatusCode" => 500, "senderFault" => true})
    SetDesiredCapacityType = Shapes::StructureShape.new(name: 'SetDesiredCapacityType')
    SetInstanceHealthQuery = Shapes::StructureShape.new(name: 'SetInstanceHealthQuery')
    SetInstanceProtectionAnswer = Shapes::StructureShape.new(name: 'SetInstanceProtectionAnswer')
    SetInstanceProtectionQuery = Shapes::StructureShape.new(name: 'SetInstanceProtectionQuery')
    ShouldDecrementDesiredCapacity = Shapes::BooleanShape.new(name: 'ShouldDecrementDesiredCapacity')
    ShouldRespectGracePeriod = Shapes::BooleanShape.new(name: 'ShouldRespectGracePeriod')
    SkipMatching = Shapes::BooleanShape.new(name: 'SkipMatching')
    SkipZonalShiftValidation = Shapes::BooleanShape.new(name: 'SkipZonalShiftValidation')
    SpotInstancePools = Shapes::IntegerShape.new(name: 'SpotInstancePools')
    SpotPrice = Shapes::StringShape.new(name: 'SpotPrice')
    StandbyInstances = Shapes::StringShape.new(name: 'StandbyInstances')
    StartInstanceRefreshAnswer = Shapes::StructureShape.new(name: 'StartInstanceRefreshAnswer')
    StartInstanceRefreshType = Shapes::StructureShape.new(name: 'StartInstanceRefreshType')
    StepAdjustment = Shapes::StructureShape.new(name: 'StepAdjustment')
    StepAdjustments = Shapes::ListShape.new(name: 'StepAdjustments')
    String = Shapes::StringShape.new(name: 'String')
    SuspendedProcess = Shapes::StructureShape.new(name: 'SuspendedProcess')
    SuspendedProcesses = Shapes::ListShape.new(name: 'SuspendedProcesses')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagDescription = Shapes::StructureShape.new(name: 'TagDescription')
    TagDescriptionList = Shapes::ListShape.new(name: 'TagDescriptionList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TagsType = Shapes::StructureShape.new(name: 'TagsType')
    TargetGroupARNs = Shapes::ListShape.new(name: 'TargetGroupARNs')
    TargetTrackingConfiguration = Shapes::StructureShape.new(name: 'TargetTrackingConfiguration')
    TargetTrackingMetricDataQueries = Shapes::ListShape.new(name: 'TargetTrackingMetricDataQueries')
    TargetTrackingMetricDataQuery = Shapes::StructureShape.new(name: 'TargetTrackingMetricDataQuery')
    TargetTrackingMetricStat = Shapes::StructureShape.new(name: 'TargetTrackingMetricStat')
    TerminateInstanceInAutoScalingGroupType = Shapes::StructureShape.new(name: 'TerminateInstanceInAutoScalingGroupType')
    TerminationPolicies = Shapes::ListShape.new(name: 'TerminationPolicies')
    TimestampType = Shapes::TimestampShape.new(name: 'TimestampType')
    TotalLocalStorageGBRequest = Shapes::StructureShape.new(name: 'TotalLocalStorageGBRequest')
    TrafficSourceIdentifier = Shapes::StructureShape.new(name: 'TrafficSourceIdentifier')
    TrafficSourceState = Shapes::StructureShape.new(name: 'TrafficSourceState')
    TrafficSourceStates = Shapes::ListShape.new(name: 'TrafficSourceStates')
    TrafficSources = Shapes::ListShape.new(name: 'TrafficSources')
    UpdateAutoScalingGroupType = Shapes::StructureShape.new(name: 'UpdateAutoScalingGroupType')
    UpdatePlacementGroupParam = Shapes::StringShape.new(name: 'UpdatePlacementGroupParam')
    VCpuCountRequest = Shapes::StructureShape.new(name: 'VCpuCountRequest')
    Values = Shapes::ListShape.new(name: 'Values')
    WarmPoolConfiguration = Shapes::StructureShape.new(name: 'WarmPoolConfiguration')
    WarmPoolMinSize = Shapes::IntegerShape.new(name: 'WarmPoolMinSize')
    WarmPoolSize = Shapes::IntegerShape.new(name: 'WarmPoolSize')
    WarmPoolState = Shapes::StringShape.new(name: 'WarmPoolState')
    WarmPoolStatus = Shapes::StringShape.new(name: 'WarmPoolStatus')
    XmlString = Shapes::StringShape.new(name: 'XmlString')
    XmlStringMaxLen1023 = Shapes::StringShape.new(name: 'XmlStringMaxLen1023')
    XmlStringMaxLen1600 = Shapes::StringShape.new(name: 'XmlStringMaxLen1600')
    XmlStringMaxLen19 = Shapes::StringShape.new(name: 'XmlStringMaxLen19')
    XmlStringMaxLen2047 = Shapes::StringShape.new(name: 'XmlStringMaxLen2047')
    XmlStringMaxLen255 = Shapes::StringShape.new(name: 'XmlStringMaxLen255')
    XmlStringMaxLen32 = Shapes::StringShape.new(name: 'XmlStringMaxLen32')
    XmlStringMaxLen5000 = Shapes::StringShape.new(name: 'XmlStringMaxLen5000')
    XmlStringMaxLen511 = Shapes::StringShape.new(name: 'XmlStringMaxLen511')
    XmlStringMaxLen64 = Shapes::StringShape.new(name: 'XmlStringMaxLen64')
    XmlStringMetricLabel = Shapes::StringShape.new(name: 'XmlStringMetricLabel')
    XmlStringMetricStat = Shapes::StringShape.new(name: 'XmlStringMetricStat')
    XmlStringUserData = Shapes::StringShape.new(name: 'XmlStringUserData')
    ZonalShiftEnabled = Shapes::BooleanShape.new(name: 'ZonalShiftEnabled')

    AcceleratorCountRequest.add_member(:min, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "Min"))
    AcceleratorCountRequest.add_member(:max, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "Max"))
    AcceleratorCountRequest.struct_class = Types::AcceleratorCountRequest

    AcceleratorManufacturers.member = Shapes::ShapeRef.new(shape: AcceleratorManufacturer)

    AcceleratorNames.member = Shapes::ShapeRef.new(shape: AcceleratorName)

    AcceleratorTotalMemoryMiBRequest.add_member(:min, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "Min"))
    AcceleratorTotalMemoryMiBRequest.add_member(:max, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "Max"))
    AcceleratorTotalMemoryMiBRequest.struct_class = Types::AcceleratorTotalMemoryMiBRequest

    AcceleratorTypes.member = Shapes::ShapeRef.new(shape: AcceleratorType)

    ActiveInstanceRefreshNotFoundFault.add_member(:message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "message"))
    ActiveInstanceRefreshNotFoundFault.struct_class = Types::ActiveInstanceRefreshNotFoundFault

    Activities.member = Shapes::ShapeRef.new(shape: Activity)

    ActivitiesType.add_member(:activities, Shapes::ShapeRef.new(shape: Activities, required: true, location_name: "Activities"))
    ActivitiesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    ActivitiesType.struct_class = Types::ActivitiesType

    Activity.add_member(:activity_id, Shapes::ShapeRef.new(shape: XmlString, required: true, location_name: "ActivityId"))
    Activity.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    Activity.add_member(:description, Shapes::ShapeRef.new(shape: XmlString, location_name: "Description"))
    Activity.add_member(:cause, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, required: true, location_name: "Cause"))
    Activity.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "StartTime"))
    Activity.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    Activity.add_member(:status_code, Shapes::ShapeRef.new(shape: ScalingActivityStatusCode, required: true, location_name: "StatusCode"))
    Activity.add_member(:status_message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "StatusMessage"))
    Activity.add_member(:progress, Shapes::ShapeRef.new(shape: Progress, location_name: "Progress"))
    Activity.add_member(:details, Shapes::ShapeRef.new(shape: XmlString, location_name: "Details"))
    Activity.add_member(:auto_scaling_group_state, Shapes::ShapeRef.new(shape: AutoScalingGroupState, location_name: "AutoScalingGroupState"))
    Activity.add_member(:auto_scaling_group_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AutoScalingGroupARN"))
    Activity.struct_class = Types::Activity

    ActivityIds.member = Shapes::ShapeRef.new(shape: XmlString)

    ActivityType.add_member(:activity, Shapes::ShapeRef.new(shape: Activity, location_name: "Activity"))
    ActivityType.struct_class = Types::ActivityType

    AdjustmentType.add_member(:adjustment_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AdjustmentType"))
    AdjustmentType.struct_class = Types::AdjustmentType

    AdjustmentTypes.member = Shapes::ShapeRef.new(shape: AdjustmentType)

    Alarm.add_member(:alarm_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AlarmName"))
    Alarm.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AlarmARN"))
    Alarm.struct_class = Types::Alarm

    AlarmList.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    AlarmSpecification.add_member(:alarms, Shapes::ShapeRef.new(shape: AlarmList, location_name: "Alarms"))
    AlarmSpecification.struct_class = Types::AlarmSpecification

    Alarms.member = Shapes::ShapeRef.new(shape: Alarm)

    AllowedInstanceTypes.member = Shapes::ShapeRef.new(shape: AllowedInstanceType)

    AlreadyExistsFault.add_member(:message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "message"))
    AlreadyExistsFault.struct_class = Types::AlreadyExistsFault

    AttachInstancesQuery.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, location_name: "InstanceIds"))
    AttachInstancesQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    AttachInstancesQuery.struct_class = Types::AttachInstancesQuery

    AttachLoadBalancerTargetGroupsResultType.struct_class = Types::AttachLoadBalancerTargetGroupsResultType

    AttachLoadBalancerTargetGroupsType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    AttachLoadBalancerTargetGroupsType.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: TargetGroupARNs, required: true, location_name: "TargetGroupARNs"))
    AttachLoadBalancerTargetGroupsType.struct_class = Types::AttachLoadBalancerTargetGroupsType

    AttachLoadBalancersResultType.struct_class = Types::AttachLoadBalancersResultType

    AttachLoadBalancersType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    AttachLoadBalancersType.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, required: true, location_name: "LoadBalancerNames"))
    AttachLoadBalancersType.struct_class = Types::AttachLoadBalancersType

    AttachTrafficSourcesResultType.struct_class = Types::AttachTrafficSourcesResultType

    AttachTrafficSourcesType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    AttachTrafficSourcesType.add_member(:traffic_sources, Shapes::ShapeRef.new(shape: TrafficSources, required: true, location_name: "TrafficSources"))
    AttachTrafficSourcesType.add_member(:skip_zonal_shift_validation, Shapes::ShapeRef.new(shape: SkipZonalShiftValidation, location_name: "SkipZonalShiftValidation"))
    AttachTrafficSourcesType.struct_class = Types::AttachTrafficSourcesType

    AutoScalingGroup.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    AutoScalingGroup.add_member(:auto_scaling_group_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "AutoScalingGroupARN"))
    AutoScalingGroup.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LaunchConfigurationName"))
    AutoScalingGroup.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    AutoScalingGroup.add_member(:mixed_instances_policy, Shapes::ShapeRef.new(shape: MixedInstancesPolicy, location_name: "MixedInstancesPolicy"))
    AutoScalingGroup.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, required: true, location_name: "MinSize"))
    AutoScalingGroup.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, required: true, location_name: "MaxSize"))
    AutoScalingGroup.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, required: true, location_name: "DesiredCapacity"))
    AutoScalingGroup.add_member(:predicted_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupPredictedCapacity, location_name: "PredictedCapacity"))
    AutoScalingGroup.add_member(:default_cooldown, Shapes::ShapeRef.new(shape: Cooldown, required: true, location_name: "DefaultCooldown"))
    AutoScalingGroup.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, required: true, location_name: "AvailabilityZones"))
    AutoScalingGroup.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, location_name: "LoadBalancerNames"))
    AutoScalingGroup.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: TargetGroupARNs, location_name: "TargetGroupARNs"))
    AutoScalingGroup.add_member(:health_check_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, required: true, location_name: "HealthCheckType"))
    AutoScalingGroup.add_member(:health_check_grace_period, Shapes::ShapeRef.new(shape: HealthCheckGracePeriod, location_name: "HealthCheckGracePeriod"))
    AutoScalingGroup.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    AutoScalingGroup.add_member(:created_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "CreatedTime"))
    AutoScalingGroup.add_member(:suspended_processes, Shapes::ShapeRef.new(shape: SuspendedProcesses, location_name: "SuspendedProcesses"))
    AutoScalingGroup.add_member(:placement_group, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "PlacementGroup"))
    AutoScalingGroup.add_member(:vpc_zone_identifier, Shapes::ShapeRef.new(shape: XmlStringMaxLen5000, location_name: "VPCZoneIdentifier"))
    AutoScalingGroup.add_member(:enabled_metrics, Shapes::ShapeRef.new(shape: EnabledMetrics, location_name: "EnabledMetrics"))
    AutoScalingGroup.add_member(:status, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Status"))
    AutoScalingGroup.add_member(:tags, Shapes::ShapeRef.new(shape: TagDescriptionList, location_name: "Tags"))
    AutoScalingGroup.add_member(:termination_policies, Shapes::ShapeRef.new(shape: TerminationPolicies, location_name: "TerminationPolicies"))
    AutoScalingGroup.add_member(:new_instances_protected_from_scale_in, Shapes::ShapeRef.new(shape: InstanceProtected, location_name: "NewInstancesProtectedFromScaleIn"))
    AutoScalingGroup.add_member(:service_linked_role_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ServiceLinkedRoleARN"))
    AutoScalingGroup.add_member(:max_instance_lifetime, Shapes::ShapeRef.new(shape: MaxInstanceLifetime, location_name: "MaxInstanceLifetime"))
    AutoScalingGroup.add_member(:capacity_rebalance, Shapes::ShapeRef.new(shape: CapacityRebalanceEnabled, location_name: "CapacityRebalance"))
    AutoScalingGroup.add_member(:warm_pool_configuration, Shapes::ShapeRef.new(shape: WarmPoolConfiguration, location_name: "WarmPoolConfiguration"))
    AutoScalingGroup.add_member(:warm_pool_size, Shapes::ShapeRef.new(shape: WarmPoolSize, location_name: "WarmPoolSize"))
    AutoScalingGroup.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "Context"))
    AutoScalingGroup.add_member(:desired_capacity_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "DesiredCapacityType"))
    AutoScalingGroup.add_member(:default_instance_warmup, Shapes::ShapeRef.new(shape: DefaultInstanceWarmup, location_name: "DefaultInstanceWarmup"))
    AutoScalingGroup.add_member(:traffic_sources, Shapes::ShapeRef.new(shape: TrafficSources, location_name: "TrafficSources"))
    AutoScalingGroup.add_member(:instance_maintenance_policy, Shapes::ShapeRef.new(shape: InstanceMaintenancePolicy, location_name: "InstanceMaintenancePolicy"))
    AutoScalingGroup.add_member(:availability_zone_distribution, Shapes::ShapeRef.new(shape: AvailabilityZoneDistribution, location_name: "AvailabilityZoneDistribution"))
    AutoScalingGroup.add_member(:availability_zone_impairment_policy, Shapes::ShapeRef.new(shape: AvailabilityZoneImpairmentPolicy, location_name: "AvailabilityZoneImpairmentPolicy"))
    AutoScalingGroup.add_member(:capacity_reservation_specification, Shapes::ShapeRef.new(shape: CapacityReservationSpecification, location_name: "CapacityReservationSpecification"))
    AutoScalingGroup.struct_class = Types::AutoScalingGroup

    AutoScalingGroupNames.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    AutoScalingGroupNamesType.add_member(:auto_scaling_group_names, Shapes::ShapeRef.new(shape: AutoScalingGroupNames, location_name: "AutoScalingGroupNames"))
    AutoScalingGroupNamesType.add_member(:include_instances, Shapes::ShapeRef.new(shape: IncludeInstances, location_name: "IncludeInstances"))
    AutoScalingGroupNamesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    AutoScalingGroupNamesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    AutoScalingGroupNamesType.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    AutoScalingGroupNamesType.struct_class = Types::AutoScalingGroupNamesType

    AutoScalingGroups.member = Shapes::ShapeRef.new(shape: AutoScalingGroup)

    AutoScalingGroupsType.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroups, required: true, location_name: "AutoScalingGroups"))
    AutoScalingGroupsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    AutoScalingGroupsType.struct_class = Types::AutoScalingGroupsType

    AutoScalingInstanceDetails.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, required: true, location_name: "InstanceId"))
    AutoScalingInstanceDetails.add_member(:instance_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "InstanceType"))
    AutoScalingInstanceDetails.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    AutoScalingInstanceDetails.add_member(:availability_zone, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AvailabilityZone"))
    AutoScalingInstanceDetails.add_member(:lifecycle_state, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, required: true, location_name: "LifecycleState"))
    AutoScalingInstanceDetails.add_member(:health_status, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, required: true, location_name: "HealthStatus"))
    AutoScalingInstanceDetails.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LaunchConfigurationName"))
    AutoScalingInstanceDetails.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    AutoScalingInstanceDetails.add_member(:protected_from_scale_in, Shapes::ShapeRef.new(shape: InstanceProtected, required: true, location_name: "ProtectedFromScaleIn"))
    AutoScalingInstanceDetails.add_member(:weighted_capacity, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "WeightedCapacity"))
    AutoScalingInstanceDetails.struct_class = Types::AutoScalingInstanceDetails

    AutoScalingInstances.member = Shapes::ShapeRef.new(shape: AutoScalingInstanceDetails)

    AutoScalingInstancesType.add_member(:auto_scaling_instances, Shapes::ShapeRef.new(shape: AutoScalingInstances, location_name: "AutoScalingInstances"))
    AutoScalingInstancesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    AutoScalingInstancesType.struct_class = Types::AutoScalingInstancesType

    AutoScalingNotificationTypes.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    AvailabilityZoneDistribution.add_member(:capacity_distribution_strategy, Shapes::ShapeRef.new(shape: CapacityDistributionStrategy, location_name: "CapacityDistributionStrategy"))
    AvailabilityZoneDistribution.struct_class = Types::AvailabilityZoneDistribution

    AvailabilityZoneImpairmentPolicy.add_member(:zonal_shift_enabled, Shapes::ShapeRef.new(shape: ZonalShiftEnabled, location_name: "ZonalShiftEnabled"))
    AvailabilityZoneImpairmentPolicy.add_member(:impaired_zone_health_check_behavior, Shapes::ShapeRef.new(shape: ImpairedZoneHealthCheckBehavior, location_name: "ImpairedZoneHealthCheckBehavior"))
    AvailabilityZoneImpairmentPolicy.struct_class = Types::AvailabilityZoneImpairmentPolicy

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    BaselineEbsBandwidthMbpsRequest.add_member(:min, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "Min"))
    BaselineEbsBandwidthMbpsRequest.add_member(:max, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "Max"))
    BaselineEbsBandwidthMbpsRequest.struct_class = Types::BaselineEbsBandwidthMbpsRequest

    BaselinePerformanceFactorsRequest.add_member(:cpu, Shapes::ShapeRef.new(shape: CpuPerformanceFactorRequest, location_name: "Cpu"))
    BaselinePerformanceFactorsRequest.struct_class = Types::BaselinePerformanceFactorsRequest

    BatchDeleteScheduledActionAnswer.add_member(:failed_scheduled_actions, Shapes::ShapeRef.new(shape: FailedScheduledUpdateGroupActionRequests, location_name: "FailedScheduledActions"))
    BatchDeleteScheduledActionAnswer.struct_class = Types::BatchDeleteScheduledActionAnswer

    BatchDeleteScheduledActionType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    BatchDeleteScheduledActionType.add_member(:scheduled_action_names, Shapes::ShapeRef.new(shape: ScheduledActionNames, required: true, location_name: "ScheduledActionNames"))
    BatchDeleteScheduledActionType.struct_class = Types::BatchDeleteScheduledActionType

    BatchPutScheduledUpdateGroupActionAnswer.add_member(:failed_scheduled_update_group_actions, Shapes::ShapeRef.new(shape: FailedScheduledUpdateGroupActionRequests, location_name: "FailedScheduledUpdateGroupActions"))
    BatchPutScheduledUpdateGroupActionAnswer.struct_class = Types::BatchPutScheduledUpdateGroupActionAnswer

    BatchPutScheduledUpdateGroupActionType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    BatchPutScheduledUpdateGroupActionType.add_member(:scheduled_update_group_actions, Shapes::ShapeRef.new(shape: ScheduledUpdateGroupActionRequests, required: true, location_name: "ScheduledUpdateGroupActions"))
    BatchPutScheduledUpdateGroupActionType.struct_class = Types::BatchPutScheduledUpdateGroupActionType

    BlockDeviceMapping.add_member(:virtual_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "VirtualName"))
    BlockDeviceMapping.add_member(:device_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "DeviceName"))
    BlockDeviceMapping.add_member(:ebs, Shapes::ShapeRef.new(shape: Ebs, location_name: "Ebs"))
    BlockDeviceMapping.add_member(:no_device, Shapes::ShapeRef.new(shape: NoDevice, location_name: "NoDevice"))
    BlockDeviceMapping.struct_class = Types::BlockDeviceMapping

    BlockDeviceMappings.member = Shapes::ShapeRef.new(shape: BlockDeviceMapping)

    CancelInstanceRefreshAnswer.add_member(:instance_refresh_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "InstanceRefreshId"))
    CancelInstanceRefreshAnswer.struct_class = Types::CancelInstanceRefreshAnswer

    CancelInstanceRefreshType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    CancelInstanceRefreshType.struct_class = Types::CancelInstanceRefreshType

    CapacityForecast.add_member(:timestamps, Shapes::ShapeRef.new(shape: PredictiveScalingForecastTimestamps, required: true, location_name: "Timestamps"))
    CapacityForecast.add_member(:values, Shapes::ShapeRef.new(shape: PredictiveScalingForecastValues, required: true, location_name: "Values"))
    CapacityForecast.struct_class = Types::CapacityForecast

    CapacityReservationIds.member = Shapes::ShapeRef.new(shape: AsciiStringMaxLen255)

    CapacityReservationResourceGroupArns.member = Shapes::ShapeRef.new(shape: ResourceName)

    CapacityReservationSpecification.add_member(:capacity_reservation_preference, Shapes::ShapeRef.new(shape: CapacityReservationPreference, location_name: "CapacityReservationPreference"))
    CapacityReservationSpecification.add_member(:capacity_reservation_target, Shapes::ShapeRef.new(shape: CapacityReservationTarget, location_name: "CapacityReservationTarget"))
    CapacityReservationSpecification.struct_class = Types::CapacityReservationSpecification

    CapacityReservationTarget.add_member(:capacity_reservation_ids, Shapes::ShapeRef.new(shape: CapacityReservationIds, location_name: "CapacityReservationIds"))
    CapacityReservationTarget.add_member(:capacity_reservation_resource_group_arns, Shapes::ShapeRef.new(shape: CapacityReservationResourceGroupArns, location_name: "CapacityReservationResourceGroupArns"))
    CapacityReservationTarget.struct_class = Types::CapacityReservationTarget

    CheckpointPercentages.member = Shapes::ShapeRef.new(shape: NonZeroIntPercent)

    ClassicLinkVPCSecurityGroups.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    CompleteLifecycleActionAnswer.struct_class = Types::CompleteLifecycleActionAnswer

    CompleteLifecycleActionType.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, required: true, location_name: "LifecycleHookName"))
    CompleteLifecycleActionType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    CompleteLifecycleActionType.add_member(:lifecycle_action_token, Shapes::ShapeRef.new(shape: LifecycleActionToken, location_name: "LifecycleActionToken"))
    CompleteLifecycleActionType.add_member(:lifecycle_action_result, Shapes::ShapeRef.new(shape: LifecycleActionResult, required: true, location_name: "LifecycleActionResult"))
    CompleteLifecycleActionType.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, location_name: "InstanceId"))
    CompleteLifecycleActionType.struct_class = Types::CompleteLifecycleActionType

    CpuManufacturers.member = Shapes::ShapeRef.new(shape: CpuManufacturer)

    CpuPerformanceFactorRequest.add_member(:references, Shapes::ShapeRef.new(shape: PerformanceFactorReferenceSetRequest, location_name: "Reference"))
    CpuPerformanceFactorRequest.struct_class = Types::CpuPerformanceFactorRequest

    CreateAutoScalingGroupType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    CreateAutoScalingGroupType.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LaunchConfigurationName"))
    CreateAutoScalingGroupType.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    CreateAutoScalingGroupType.add_member(:mixed_instances_policy, Shapes::ShapeRef.new(shape: MixedInstancesPolicy, location_name: "MixedInstancesPolicy"))
    CreateAutoScalingGroupType.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, location_name: "InstanceId"))
    CreateAutoScalingGroupType.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, required: true, location_name: "MinSize"))
    CreateAutoScalingGroupType.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, required: true, location_name: "MaxSize"))
    CreateAutoScalingGroupType.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, location_name: "DesiredCapacity"))
    CreateAutoScalingGroupType.add_member(:default_cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "DefaultCooldown"))
    CreateAutoScalingGroupType.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    CreateAutoScalingGroupType.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, location_name: "LoadBalancerNames"))
    CreateAutoScalingGroupType.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: TargetGroupARNs, location_name: "TargetGroupARNs"))
    CreateAutoScalingGroupType.add_member(:health_check_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "HealthCheckType"))
    CreateAutoScalingGroupType.add_member(:health_check_grace_period, Shapes::ShapeRef.new(shape: HealthCheckGracePeriod, location_name: "HealthCheckGracePeriod"))
    CreateAutoScalingGroupType.add_member(:placement_group, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "PlacementGroup"))
    CreateAutoScalingGroupType.add_member(:vpc_zone_identifier, Shapes::ShapeRef.new(shape: XmlStringMaxLen5000, location_name: "VPCZoneIdentifier"))
    CreateAutoScalingGroupType.add_member(:termination_policies, Shapes::ShapeRef.new(shape: TerminationPolicies, location_name: "TerminationPolicies"))
    CreateAutoScalingGroupType.add_member(:new_instances_protected_from_scale_in, Shapes::ShapeRef.new(shape: InstanceProtected, location_name: "NewInstancesProtectedFromScaleIn"))
    CreateAutoScalingGroupType.add_member(:capacity_rebalance, Shapes::ShapeRef.new(shape: CapacityRebalanceEnabled, location_name: "CapacityRebalance"))
    CreateAutoScalingGroupType.add_member(:lifecycle_hook_specification_list, Shapes::ShapeRef.new(shape: LifecycleHookSpecifications, location_name: "LifecycleHookSpecificationList"))
    CreateAutoScalingGroupType.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateAutoScalingGroupType.add_member(:service_linked_role_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ServiceLinkedRoleARN"))
    CreateAutoScalingGroupType.add_member(:max_instance_lifetime, Shapes::ShapeRef.new(shape: MaxInstanceLifetime, location_name: "MaxInstanceLifetime"))
    CreateAutoScalingGroupType.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "Context"))
    CreateAutoScalingGroupType.add_member(:desired_capacity_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "DesiredCapacityType"))
    CreateAutoScalingGroupType.add_member(:default_instance_warmup, Shapes::ShapeRef.new(shape: DefaultInstanceWarmup, location_name: "DefaultInstanceWarmup"))
    CreateAutoScalingGroupType.add_member(:traffic_sources, Shapes::ShapeRef.new(shape: TrafficSources, location_name: "TrafficSources"))
    CreateAutoScalingGroupType.add_member(:instance_maintenance_policy, Shapes::ShapeRef.new(shape: InstanceMaintenancePolicy, location_name: "InstanceMaintenancePolicy"))
    CreateAutoScalingGroupType.add_member(:availability_zone_distribution, Shapes::ShapeRef.new(shape: AvailabilityZoneDistribution, location_name: "AvailabilityZoneDistribution"))
    CreateAutoScalingGroupType.add_member(:availability_zone_impairment_policy, Shapes::ShapeRef.new(shape: AvailabilityZoneImpairmentPolicy, location_name: "AvailabilityZoneImpairmentPolicy"))
    CreateAutoScalingGroupType.add_member(:skip_zonal_shift_validation, Shapes::ShapeRef.new(shape: SkipZonalShiftValidation, location_name: "SkipZonalShiftValidation"))
    CreateAutoScalingGroupType.add_member(:capacity_reservation_specification, Shapes::ShapeRef.new(shape: CapacityReservationSpecification, location_name: "CapacityReservationSpecification"))
    CreateAutoScalingGroupType.struct_class = Types::CreateAutoScalingGroupType

    CreateLaunchConfigurationType.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "LaunchConfigurationName"))
    CreateLaunchConfigurationType.add_member(:image_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "ImageId"))
    CreateLaunchConfigurationType.add_member(:key_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "KeyName"))
    CreateLaunchConfigurationType.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    CreateLaunchConfigurationType.add_member(:classic_link_vpc_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "ClassicLinkVPCId"))
    CreateLaunchConfigurationType.add_member(:classic_link_vpc_security_groups, Shapes::ShapeRef.new(shape: ClassicLinkVPCSecurityGroups, location_name: "ClassicLinkVPCSecurityGroups"))
    CreateLaunchConfigurationType.add_member(:user_data, Shapes::ShapeRef.new(shape: XmlStringUserData, location_name: "UserData"))
    CreateLaunchConfigurationType.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, location_name: "InstanceId"))
    CreateLaunchConfigurationType.add_member(:instance_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "InstanceType"))
    CreateLaunchConfigurationType.add_member(:kernel_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "KernelId"))
    CreateLaunchConfigurationType.add_member(:ramdisk_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "RamdiskId"))
    CreateLaunchConfigurationType.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: "BlockDeviceMappings"))
    CreateLaunchConfigurationType.add_member(:instance_monitoring, Shapes::ShapeRef.new(shape: InstanceMonitoring, location_name: "InstanceMonitoring"))
    CreateLaunchConfigurationType.add_member(:spot_price, Shapes::ShapeRef.new(shape: SpotPrice, location_name: "SpotPrice"))
    CreateLaunchConfigurationType.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: XmlStringMaxLen1600, location_name: "IamInstanceProfile"))
    CreateLaunchConfigurationType.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: EbsOptimized, location_name: "EbsOptimized"))
    CreateLaunchConfigurationType.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: AssociatePublicIpAddress, location_name: "AssociatePublicIpAddress"))
    CreateLaunchConfigurationType.add_member(:placement_tenancy, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, location_name: "PlacementTenancy"))
    CreateLaunchConfigurationType.add_member(:metadata_options, Shapes::ShapeRef.new(shape: InstanceMetadataOptions, location_name: "MetadataOptions"))
    CreateLaunchConfigurationType.struct_class = Types::CreateLaunchConfigurationType

    CreateOrUpdateTagsType.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    CreateOrUpdateTagsType.struct_class = Types::CreateOrUpdateTagsType

    CustomizedMetricSpecification.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    CustomizedMetricSpecification.add_member(:namespace, Shapes::ShapeRef.new(shape: MetricNamespace, location_name: "Namespace"))
    CustomizedMetricSpecification.add_member(:dimensions, Shapes::ShapeRef.new(shape: MetricDimensions, location_name: "Dimensions"))
    CustomizedMetricSpecification.add_member(:statistic, Shapes::ShapeRef.new(shape: MetricStatistic, location_name: "Statistic"))
    CustomizedMetricSpecification.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "Unit"))
    CustomizedMetricSpecification.add_member(:period, Shapes::ShapeRef.new(shape: MetricGranularityInSeconds, location_name: "Period"))
    CustomizedMetricSpecification.add_member(:metrics, Shapes::ShapeRef.new(shape: TargetTrackingMetricDataQueries, location_name: "Metrics"))
    CustomizedMetricSpecification.struct_class = Types::CustomizedMetricSpecification

    DeleteAutoScalingGroupType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DeleteAutoScalingGroupType.add_member(:force_delete, Shapes::ShapeRef.new(shape: ForceDelete, location_name: "ForceDelete"))
    DeleteAutoScalingGroupType.struct_class = Types::DeleteAutoScalingGroupType

    DeleteLifecycleHookAnswer.struct_class = Types::DeleteLifecycleHookAnswer

    DeleteLifecycleHookType.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, required: true, location_name: "LifecycleHookName"))
    DeleteLifecycleHookType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DeleteLifecycleHookType.struct_class = Types::DeleteLifecycleHookType

    DeleteNotificationConfigurationType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DeleteNotificationConfigurationType.add_member(:topic_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "TopicARN"))
    DeleteNotificationConfigurationType.struct_class = Types::DeleteNotificationConfigurationType

    DeletePolicyType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    DeletePolicyType.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "PolicyName"))
    DeletePolicyType.struct_class = Types::DeletePolicyType

    DeleteScheduledActionType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DeleteScheduledActionType.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ScheduledActionName"))
    DeleteScheduledActionType.struct_class = Types::DeleteScheduledActionType

    DeleteTagsType.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    DeleteTagsType.struct_class = Types::DeleteTagsType

    DeleteWarmPoolAnswer.struct_class = Types::DeleteWarmPoolAnswer

    DeleteWarmPoolType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DeleteWarmPoolType.add_member(:force_delete, Shapes::ShapeRef.new(shape: ForceDelete, location_name: "ForceDelete"))
    DeleteWarmPoolType.struct_class = Types::DeleteWarmPoolType

    DescribeAccountLimitsAnswer.add_member(:max_number_of_auto_scaling_groups, Shapes::ShapeRef.new(shape: MaxNumberOfAutoScalingGroups, location_name: "MaxNumberOfAutoScalingGroups"))
    DescribeAccountLimitsAnswer.add_member(:max_number_of_launch_configurations, Shapes::ShapeRef.new(shape: MaxNumberOfLaunchConfigurations, location_name: "MaxNumberOfLaunchConfigurations"))
    DescribeAccountLimitsAnswer.add_member(:number_of_auto_scaling_groups, Shapes::ShapeRef.new(shape: NumberOfAutoScalingGroups, location_name: "NumberOfAutoScalingGroups"))
    DescribeAccountLimitsAnswer.add_member(:number_of_launch_configurations, Shapes::ShapeRef.new(shape: NumberOfLaunchConfigurations, location_name: "NumberOfLaunchConfigurations"))
    DescribeAccountLimitsAnswer.struct_class = Types::DescribeAccountLimitsAnswer

    DescribeAdjustmentTypesAnswer.add_member(:adjustment_types, Shapes::ShapeRef.new(shape: AdjustmentTypes, location_name: "AdjustmentTypes"))
    DescribeAdjustmentTypesAnswer.struct_class = Types::DescribeAdjustmentTypesAnswer

    DescribeAutoScalingInstancesType.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, location_name: "InstanceIds"))
    DescribeAutoScalingInstancesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeAutoScalingInstancesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeAutoScalingInstancesType.struct_class = Types::DescribeAutoScalingInstancesType

    DescribeAutoScalingNotificationTypesAnswer.add_member(:auto_scaling_notification_types, Shapes::ShapeRef.new(shape: AutoScalingNotificationTypes, location_name: "AutoScalingNotificationTypes"))
    DescribeAutoScalingNotificationTypesAnswer.struct_class = Types::DescribeAutoScalingNotificationTypesAnswer

    DescribeInstanceRefreshesAnswer.add_member(:instance_refreshes, Shapes::ShapeRef.new(shape: InstanceRefreshes, location_name: "InstanceRefreshes"))
    DescribeInstanceRefreshesAnswer.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeInstanceRefreshesAnswer.struct_class = Types::DescribeInstanceRefreshesAnswer

    DescribeInstanceRefreshesType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DescribeInstanceRefreshesType.add_member(:instance_refresh_ids, Shapes::ShapeRef.new(shape: InstanceRefreshIds, location_name: "InstanceRefreshIds"))
    DescribeInstanceRefreshesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeInstanceRefreshesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeInstanceRefreshesType.struct_class = Types::DescribeInstanceRefreshesType

    DescribeLifecycleHookTypesAnswer.add_member(:lifecycle_hook_types, Shapes::ShapeRef.new(shape: AutoScalingNotificationTypes, location_name: "LifecycleHookTypes"))
    DescribeLifecycleHookTypesAnswer.struct_class = Types::DescribeLifecycleHookTypesAnswer

    DescribeLifecycleHooksAnswer.add_member(:lifecycle_hooks, Shapes::ShapeRef.new(shape: LifecycleHooks, location_name: "LifecycleHooks"))
    DescribeLifecycleHooksAnswer.struct_class = Types::DescribeLifecycleHooksAnswer

    DescribeLifecycleHooksType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DescribeLifecycleHooksType.add_member(:lifecycle_hook_names, Shapes::ShapeRef.new(shape: LifecycleHookNames, location_name: "LifecycleHookNames"))
    DescribeLifecycleHooksType.struct_class = Types::DescribeLifecycleHooksType

    DescribeLoadBalancerTargetGroupsRequest.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DescribeLoadBalancerTargetGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeLoadBalancerTargetGroupsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeLoadBalancerTargetGroupsRequest.struct_class = Types::DescribeLoadBalancerTargetGroupsRequest

    DescribeLoadBalancerTargetGroupsResponse.add_member(:load_balancer_target_groups, Shapes::ShapeRef.new(shape: LoadBalancerTargetGroupStates, location_name: "LoadBalancerTargetGroups"))
    DescribeLoadBalancerTargetGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeLoadBalancerTargetGroupsResponse.struct_class = Types::DescribeLoadBalancerTargetGroupsResponse

    DescribeLoadBalancersRequest.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DescribeLoadBalancersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeLoadBalancersRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeLoadBalancersRequest.struct_class = Types::DescribeLoadBalancersRequest

    DescribeLoadBalancersResponse.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancerStates, location_name: "LoadBalancers"))
    DescribeLoadBalancersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeLoadBalancersResponse.struct_class = Types::DescribeLoadBalancersResponse

    DescribeMetricCollectionTypesAnswer.add_member(:metrics, Shapes::ShapeRef.new(shape: MetricCollectionTypes, location_name: "Metrics"))
    DescribeMetricCollectionTypesAnswer.add_member(:granularities, Shapes::ShapeRef.new(shape: MetricGranularityTypes, location_name: "Granularities"))
    DescribeMetricCollectionTypesAnswer.struct_class = Types::DescribeMetricCollectionTypesAnswer

    DescribeNotificationConfigurationsAnswer.add_member(:notification_configurations, Shapes::ShapeRef.new(shape: NotificationConfigurations, required: true, location_name: "NotificationConfigurations"))
    DescribeNotificationConfigurationsAnswer.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeNotificationConfigurationsAnswer.struct_class = Types::DescribeNotificationConfigurationsAnswer

    DescribeNotificationConfigurationsType.add_member(:auto_scaling_group_names, Shapes::ShapeRef.new(shape: AutoScalingGroupNames, location_name: "AutoScalingGroupNames"))
    DescribeNotificationConfigurationsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeNotificationConfigurationsType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeNotificationConfigurationsType.struct_class = Types::DescribeNotificationConfigurationsType

    DescribePoliciesType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    DescribePoliciesType.add_member(:policy_names, Shapes::ShapeRef.new(shape: PolicyNames, location_name: "PolicyNames"))
    DescribePoliciesType.add_member(:policy_types, Shapes::ShapeRef.new(shape: PolicyTypes, location_name: "PolicyTypes"))
    DescribePoliciesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribePoliciesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribePoliciesType.struct_class = Types::DescribePoliciesType

    DescribeScalingActivitiesType.add_member(:activity_ids, Shapes::ShapeRef.new(shape: ActivityIds, location_name: "ActivityIds"))
    DescribeScalingActivitiesType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    DescribeScalingActivitiesType.add_member(:include_deleted_groups, Shapes::ShapeRef.new(shape: IncludeDeletedGroups, location_name: "IncludeDeletedGroups"))
    DescribeScalingActivitiesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeScalingActivitiesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScalingActivitiesType.struct_class = Types::DescribeScalingActivitiesType

    DescribeScheduledActionsType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    DescribeScheduledActionsType.add_member(:scheduled_action_names, Shapes::ShapeRef.new(shape: ScheduledActionNames, location_name: "ScheduledActionNames"))
    DescribeScheduledActionsType.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    DescribeScheduledActionsType.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    DescribeScheduledActionsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeScheduledActionsType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeScheduledActionsType.struct_class = Types::DescribeScheduledActionsType

    DescribeTagsType.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    DescribeTagsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeTagsType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeTagsType.struct_class = Types::DescribeTagsType

    DescribeTerminationPolicyTypesAnswer.add_member(:termination_policy_types, Shapes::ShapeRef.new(shape: TerminationPolicies, location_name: "TerminationPolicyTypes"))
    DescribeTerminationPolicyTypesAnswer.struct_class = Types::DescribeTerminationPolicyTypesAnswer

    DescribeTrafficSourcesRequest.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DescribeTrafficSourcesRequest.add_member(:traffic_source_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "TrafficSourceType"))
    DescribeTrafficSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeTrafficSourcesRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeTrafficSourcesRequest.struct_class = Types::DescribeTrafficSourcesRequest

    DescribeTrafficSourcesResponse.add_member(:traffic_sources, Shapes::ShapeRef.new(shape: TrafficSourceStates, location_name: "TrafficSources"))
    DescribeTrafficSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeTrafficSourcesResponse.struct_class = Types::DescribeTrafficSourcesResponse

    DescribeWarmPoolAnswer.add_member(:warm_pool_configuration, Shapes::ShapeRef.new(shape: WarmPoolConfiguration, location_name: "WarmPoolConfiguration"))
    DescribeWarmPoolAnswer.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    DescribeWarmPoolAnswer.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeWarmPoolAnswer.struct_class = Types::DescribeWarmPoolAnswer

    DescribeWarmPoolType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DescribeWarmPoolType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeWarmPoolType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    DescribeWarmPoolType.struct_class = Types::DescribeWarmPoolType

    DesiredConfiguration.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    DesiredConfiguration.add_member(:mixed_instances_policy, Shapes::ShapeRef.new(shape: MixedInstancesPolicy, location_name: "MixedInstancesPolicy"))
    DesiredConfiguration.struct_class = Types::DesiredConfiguration

    DetachInstancesAnswer.add_member(:activities, Shapes::ShapeRef.new(shape: Activities, location_name: "Activities"))
    DetachInstancesAnswer.struct_class = Types::DetachInstancesAnswer

    DetachInstancesQuery.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, location_name: "InstanceIds"))
    DetachInstancesQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DetachInstancesQuery.add_member(:should_decrement_desired_capacity, Shapes::ShapeRef.new(shape: ShouldDecrementDesiredCapacity, required: true, location_name: "ShouldDecrementDesiredCapacity"))
    DetachInstancesQuery.struct_class = Types::DetachInstancesQuery

    DetachLoadBalancerTargetGroupsResultType.struct_class = Types::DetachLoadBalancerTargetGroupsResultType

    DetachLoadBalancerTargetGroupsType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DetachLoadBalancerTargetGroupsType.add_member(:target_group_arns, Shapes::ShapeRef.new(shape: TargetGroupARNs, required: true, location_name: "TargetGroupARNs"))
    DetachLoadBalancerTargetGroupsType.struct_class = Types::DetachLoadBalancerTargetGroupsType

    DetachLoadBalancersResultType.struct_class = Types::DetachLoadBalancersResultType

    DetachLoadBalancersType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DetachLoadBalancersType.add_member(:load_balancer_names, Shapes::ShapeRef.new(shape: LoadBalancerNames, required: true, location_name: "LoadBalancerNames"))
    DetachLoadBalancersType.struct_class = Types::DetachLoadBalancersType

    DetachTrafficSourcesResultType.struct_class = Types::DetachTrafficSourcesResultType

    DetachTrafficSourcesType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DetachTrafficSourcesType.add_member(:traffic_sources, Shapes::ShapeRef.new(shape: TrafficSources, required: true, location_name: "TrafficSources"))
    DetachTrafficSourcesType.struct_class = Types::DetachTrafficSourcesType

    DisableMetricsCollectionQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    DisableMetricsCollectionQuery.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    DisableMetricsCollectionQuery.struct_class = Types::DisableMetricsCollectionQuery

    Ebs.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "SnapshotId"))
    Ebs.add_member(:volume_size, Shapes::ShapeRef.new(shape: BlockDeviceEbsVolumeSize, location_name: "VolumeSize"))
    Ebs.add_member(:volume_type, Shapes::ShapeRef.new(shape: BlockDeviceEbsVolumeType, location_name: "VolumeType"))
    Ebs.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: BlockDeviceEbsDeleteOnTermination, location_name: "DeleteOnTermination"))
    Ebs.add_member(:iops, Shapes::ShapeRef.new(shape: BlockDeviceEbsIops, location_name: "Iops"))
    Ebs.add_member(:encrypted, Shapes::ShapeRef.new(shape: BlockDeviceEbsEncrypted, location_name: "Encrypted"))
    Ebs.add_member(:throughput, Shapes::ShapeRef.new(shape: BlockDeviceEbsThroughput, location_name: "Throughput"))
    Ebs.struct_class = Types::Ebs

    EnableMetricsCollectionQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    EnableMetricsCollectionQuery.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    EnableMetricsCollectionQuery.add_member(:granularity, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "Granularity"))
    EnableMetricsCollectionQuery.struct_class = Types::EnableMetricsCollectionQuery

    EnabledMetric.add_member(:metric, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Metric"))
    EnabledMetric.add_member(:granularity, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Granularity"))
    EnabledMetric.struct_class = Types::EnabledMetric

    EnabledMetrics.member = Shapes::ShapeRef.new(shape: EnabledMetric)

    EnterStandbyAnswer.add_member(:activities, Shapes::ShapeRef.new(shape: Activities, location_name: "Activities"))
    EnterStandbyAnswer.struct_class = Types::EnterStandbyAnswer

    EnterStandbyQuery.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, location_name: "InstanceIds"))
    EnterStandbyQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    EnterStandbyQuery.add_member(:should_decrement_desired_capacity, Shapes::ShapeRef.new(shape: ShouldDecrementDesiredCapacity, required: true, location_name: "ShouldDecrementDesiredCapacity"))
    EnterStandbyQuery.struct_class = Types::EnterStandbyQuery

    ExcludedInstanceTypes.member = Shapes::ShapeRef.new(shape: ExcludedInstance)

    ExecutePolicyType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    ExecutePolicyType.add_member(:policy_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "PolicyName"))
    ExecutePolicyType.add_member(:honor_cooldown, Shapes::ShapeRef.new(shape: HonorCooldown, location_name: "HonorCooldown"))
    ExecutePolicyType.add_member(:metric_value, Shapes::ShapeRef.new(shape: MetricScale, location_name: "MetricValue"))
    ExecutePolicyType.add_member(:breach_threshold, Shapes::ShapeRef.new(shape: MetricScale, location_name: "BreachThreshold"))
    ExecutePolicyType.struct_class = Types::ExecutePolicyType

    ExitStandbyAnswer.add_member(:activities, Shapes::ShapeRef.new(shape: Activities, location_name: "Activities"))
    ExitStandbyAnswer.struct_class = Types::ExitStandbyAnswer

    ExitStandbyQuery.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, location_name: "InstanceIds"))
    ExitStandbyQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    ExitStandbyQuery.struct_class = Types::ExitStandbyQuery

    FailedScheduledUpdateGroupActionRequest.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ScheduledActionName"))
    FailedScheduledUpdateGroupActionRequest.add_member(:error_code, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, location_name: "ErrorCode"))
    FailedScheduledUpdateGroupActionRequest.add_member(:error_message, Shapes::ShapeRef.new(shape: XmlString, location_name: "ErrorMessage"))
    FailedScheduledUpdateGroupActionRequest.struct_class = Types::FailedScheduledUpdateGroupActionRequest

    FailedScheduledUpdateGroupActionRequests.member = Shapes::ShapeRef.new(shape: FailedScheduledUpdateGroupActionRequest)

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: XmlString, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: Values, location_name: "Values"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetPredictiveScalingForecastAnswer.add_member(:load_forecast, Shapes::ShapeRef.new(shape: LoadForecasts, required: true, location_name: "LoadForecast"))
    GetPredictiveScalingForecastAnswer.add_member(:capacity_forecast, Shapes::ShapeRef.new(shape: CapacityForecast, required: true, location_name: "CapacityForecast"))
    GetPredictiveScalingForecastAnswer.add_member(:update_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "UpdateTime"))
    GetPredictiveScalingForecastAnswer.struct_class = Types::GetPredictiveScalingForecastAnswer

    GetPredictiveScalingForecastType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    GetPredictiveScalingForecastType.add_member(:policy_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "PolicyName"))
    GetPredictiveScalingForecastType.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "StartTime"))
    GetPredictiveScalingForecastType.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "EndTime"))
    GetPredictiveScalingForecastType.struct_class = Types::GetPredictiveScalingForecastType

    Instance.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, required: true, location_name: "InstanceId"))
    Instance.add_member(:instance_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "InstanceType"))
    Instance.add_member(:availability_zone, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AvailabilityZone"))
    Instance.add_member(:lifecycle_state, Shapes::ShapeRef.new(shape: LifecycleState, required: true, location_name: "LifecycleState"))
    Instance.add_member(:health_status, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, required: true, location_name: "HealthStatus"))
    Instance.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LaunchConfigurationName"))
    Instance.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    Instance.add_member(:protected_from_scale_in, Shapes::ShapeRef.new(shape: InstanceProtected, required: true, location_name: "ProtectedFromScaleIn"))
    Instance.add_member(:weighted_capacity, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "WeightedCapacity"))
    Instance.struct_class = Types::Instance

    InstanceGenerations.member = Shapes::ShapeRef.new(shape: InstanceGeneration)

    InstanceIds.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen19)

    InstanceMaintenancePolicy.add_member(:min_healthy_percentage, Shapes::ShapeRef.new(shape: IntPercentResettable, location_name: "MinHealthyPercentage"))
    InstanceMaintenancePolicy.add_member(:max_healthy_percentage, Shapes::ShapeRef.new(shape: IntPercent100To200Resettable, location_name: "MaxHealthyPercentage"))
    InstanceMaintenancePolicy.struct_class = Types::InstanceMaintenancePolicy

    InstanceMetadataOptions.add_member(:http_tokens, Shapes::ShapeRef.new(shape: InstanceMetadataHttpTokensState, location_name: "HttpTokens"))
    InstanceMetadataOptions.add_member(:http_put_response_hop_limit, Shapes::ShapeRef.new(shape: InstanceMetadataHttpPutResponseHopLimit, location_name: "HttpPutResponseHopLimit"))
    InstanceMetadataOptions.add_member(:http_endpoint, Shapes::ShapeRef.new(shape: InstanceMetadataEndpointState, location_name: "HttpEndpoint"))
    InstanceMetadataOptions.struct_class = Types::InstanceMetadataOptions

    InstanceMonitoring.add_member(:enabled, Shapes::ShapeRef.new(shape: MonitoringEnabled, location_name: "Enabled"))
    InstanceMonitoring.struct_class = Types::InstanceMonitoring

    InstanceRefresh.add_member(:instance_refresh_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "InstanceRefreshId"))
    InstanceRefresh.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    InstanceRefresh.add_member(:status, Shapes::ShapeRef.new(shape: InstanceRefreshStatus, location_name: "Status"))
    InstanceRefresh.add_member(:status_reason, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "StatusReason"))
    InstanceRefresh.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    InstanceRefresh.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    InstanceRefresh.add_member(:percentage_complete, Shapes::ShapeRef.new(shape: IntPercent, location_name: "PercentageComplete"))
    InstanceRefresh.add_member(:instances_to_update, Shapes::ShapeRef.new(shape: InstancesToUpdate, location_name: "InstancesToUpdate"))
    InstanceRefresh.add_member(:progress_details, Shapes::ShapeRef.new(shape: InstanceRefreshProgressDetails, location_name: "ProgressDetails"))
    InstanceRefresh.add_member(:preferences, Shapes::ShapeRef.new(shape: RefreshPreferences, location_name: "Preferences"))
    InstanceRefresh.add_member(:desired_configuration, Shapes::ShapeRef.new(shape: DesiredConfiguration, location_name: "DesiredConfiguration"))
    InstanceRefresh.add_member(:rollback_details, Shapes::ShapeRef.new(shape: RollbackDetails, location_name: "RollbackDetails"))
    InstanceRefresh.struct_class = Types::InstanceRefresh

    InstanceRefreshIds.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    InstanceRefreshInProgressFault.add_member(:message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "message"))
    InstanceRefreshInProgressFault.struct_class = Types::InstanceRefreshInProgressFault

    InstanceRefreshLivePoolProgress.add_member(:percentage_complete, Shapes::ShapeRef.new(shape: IntPercent, location_name: "PercentageComplete"))
    InstanceRefreshLivePoolProgress.add_member(:instances_to_update, Shapes::ShapeRef.new(shape: InstancesToUpdate, location_name: "InstancesToUpdate"))
    InstanceRefreshLivePoolProgress.struct_class = Types::InstanceRefreshLivePoolProgress

    InstanceRefreshProgressDetails.add_member(:live_pool_progress, Shapes::ShapeRef.new(shape: InstanceRefreshLivePoolProgress, location_name: "LivePoolProgress"))
    InstanceRefreshProgressDetails.add_member(:warm_pool_progress, Shapes::ShapeRef.new(shape: InstanceRefreshWarmPoolProgress, location_name: "WarmPoolProgress"))
    InstanceRefreshProgressDetails.struct_class = Types::InstanceRefreshProgressDetails

    InstanceRefreshWarmPoolProgress.add_member(:percentage_complete, Shapes::ShapeRef.new(shape: IntPercent, location_name: "PercentageComplete"))
    InstanceRefreshWarmPoolProgress.add_member(:instances_to_update, Shapes::ShapeRef.new(shape: InstancesToUpdate, location_name: "InstancesToUpdate"))
    InstanceRefreshWarmPoolProgress.struct_class = Types::InstanceRefreshWarmPoolProgress

    InstanceRefreshes.member = Shapes::ShapeRef.new(shape: InstanceRefresh)

    InstanceRequirements.add_member(:v_cpu_count, Shapes::ShapeRef.new(shape: VCpuCountRequest, required: true, location_name: "VCpuCount"))
    InstanceRequirements.add_member(:memory_mi_b, Shapes::ShapeRef.new(shape: MemoryMiBRequest, required: true, location_name: "MemoryMiB"))
    InstanceRequirements.add_member(:cpu_manufacturers, Shapes::ShapeRef.new(shape: CpuManufacturers, location_name: "CpuManufacturers"))
    InstanceRequirements.add_member(:memory_gi_b_per_v_cpu, Shapes::ShapeRef.new(shape: MemoryGiBPerVCpuRequest, location_name: "MemoryGiBPerVCpu"))
    InstanceRequirements.add_member(:excluded_instance_types, Shapes::ShapeRef.new(shape: ExcludedInstanceTypes, location_name: "ExcludedInstanceTypes"))
    InstanceRequirements.add_member(:instance_generations, Shapes::ShapeRef.new(shape: InstanceGenerations, location_name: "InstanceGenerations"))
    InstanceRequirements.add_member(:spot_max_price_percentage_over_lowest_price, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "SpotMaxPricePercentageOverLowestPrice"))
    InstanceRequirements.add_member(:max_spot_price_as_percentage_of_optimal_on_demand_price, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice"))
    InstanceRequirements.add_member(:on_demand_max_price_percentage_over_lowest_price, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "OnDemandMaxPricePercentageOverLowestPrice"))
    InstanceRequirements.add_member(:bare_metal, Shapes::ShapeRef.new(shape: BareMetal, location_name: "BareMetal"))
    InstanceRequirements.add_member(:burstable_performance, Shapes::ShapeRef.new(shape: BurstablePerformance, location_name: "BurstablePerformance"))
    InstanceRequirements.add_member(:require_hibernate_support, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "RequireHibernateSupport"))
    InstanceRequirements.add_member(:network_interface_count, Shapes::ShapeRef.new(shape: NetworkInterfaceCountRequest, location_name: "NetworkInterfaceCount"))
    InstanceRequirements.add_member(:local_storage, Shapes::ShapeRef.new(shape: LocalStorage, location_name: "LocalStorage"))
    InstanceRequirements.add_member(:local_storage_types, Shapes::ShapeRef.new(shape: LocalStorageTypes, location_name: "LocalStorageTypes"))
    InstanceRequirements.add_member(:total_local_storage_gb, Shapes::ShapeRef.new(shape: TotalLocalStorageGBRequest, location_name: "TotalLocalStorageGB"))
    InstanceRequirements.add_member(:baseline_ebs_bandwidth_mbps, Shapes::ShapeRef.new(shape: BaselineEbsBandwidthMbpsRequest, location_name: "BaselineEbsBandwidthMbps"))
    InstanceRequirements.add_member(:accelerator_types, Shapes::ShapeRef.new(shape: AcceleratorTypes, location_name: "AcceleratorTypes"))
    InstanceRequirements.add_member(:accelerator_count, Shapes::ShapeRef.new(shape: AcceleratorCountRequest, location_name: "AcceleratorCount"))
    InstanceRequirements.add_member(:accelerator_manufacturers, Shapes::ShapeRef.new(shape: AcceleratorManufacturers, location_name: "AcceleratorManufacturers"))
    InstanceRequirements.add_member(:accelerator_names, Shapes::ShapeRef.new(shape: AcceleratorNames, location_name: "AcceleratorNames"))
    InstanceRequirements.add_member(:accelerator_total_memory_mi_b, Shapes::ShapeRef.new(shape: AcceleratorTotalMemoryMiBRequest, location_name: "AcceleratorTotalMemoryMiB"))
    InstanceRequirements.add_member(:network_bandwidth_gbps, Shapes::ShapeRef.new(shape: NetworkBandwidthGbpsRequest, location_name: "NetworkBandwidthGbps"))
    InstanceRequirements.add_member(:allowed_instance_types, Shapes::ShapeRef.new(shape: AllowedInstanceTypes, location_name: "AllowedInstanceTypes"))
    InstanceRequirements.add_member(:baseline_performance_factors, Shapes::ShapeRef.new(shape: BaselinePerformanceFactorsRequest, location_name: "BaselinePerformanceFactors"))
    InstanceRequirements.struct_class = Types::InstanceRequirements

    InstanceReusePolicy.add_member(:reuse_on_scale_in, Shapes::ShapeRef.new(shape: ReuseOnScaleIn, location_name: "ReuseOnScaleIn"))
    InstanceReusePolicy.struct_class = Types::InstanceReusePolicy

    Instances.member = Shapes::ShapeRef.new(shape: Instance)

    InstancesDistribution.add_member(:on_demand_allocation_strategy, Shapes::ShapeRef.new(shape: XmlString, location_name: "OnDemandAllocationStrategy"))
    InstancesDistribution.add_member(:on_demand_base_capacity, Shapes::ShapeRef.new(shape: OnDemandBaseCapacity, location_name: "OnDemandBaseCapacity"))
    InstancesDistribution.add_member(:on_demand_percentage_above_base_capacity, Shapes::ShapeRef.new(shape: OnDemandPercentageAboveBaseCapacity, location_name: "OnDemandPercentageAboveBaseCapacity"))
    InstancesDistribution.add_member(:spot_allocation_strategy, Shapes::ShapeRef.new(shape: XmlString, location_name: "SpotAllocationStrategy"))
    InstancesDistribution.add_member(:spot_instance_pools, Shapes::ShapeRef.new(shape: SpotInstancePools, location_name: "SpotInstancePools"))
    InstancesDistribution.add_member(:spot_max_price, Shapes::ShapeRef.new(shape: MixedInstanceSpotPrice, location_name: "SpotMaxPrice"))
    InstancesDistribution.struct_class = Types::InstancesDistribution

    InvalidNextToken.add_member(:message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "message"))
    InvalidNextToken.struct_class = Types::InvalidNextToken

    IrreversibleInstanceRefreshFault.add_member(:message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "message"))
    IrreversibleInstanceRefreshFault.struct_class = Types::IrreversibleInstanceRefreshFault

    LaunchConfiguration.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "LaunchConfigurationName"))
    LaunchConfiguration.add_member(:launch_configuration_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "LaunchConfigurationARN"))
    LaunchConfiguration.add_member(:image_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ImageId"))
    LaunchConfiguration.add_member(:key_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "KeyName"))
    LaunchConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: SecurityGroups, location_name: "SecurityGroups"))
    LaunchConfiguration.add_member(:classic_link_vpc_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "ClassicLinkVPCId"))
    LaunchConfiguration.add_member(:classic_link_vpc_security_groups, Shapes::ShapeRef.new(shape: ClassicLinkVPCSecurityGroups, location_name: "ClassicLinkVPCSecurityGroups"))
    LaunchConfiguration.add_member(:user_data, Shapes::ShapeRef.new(shape: XmlStringUserData, location_name: "UserData"))
    LaunchConfiguration.add_member(:instance_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "InstanceType"))
    LaunchConfiguration.add_member(:kernel_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "KernelId"))
    LaunchConfiguration.add_member(:ramdisk_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "RamdiskId"))
    LaunchConfiguration.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: "BlockDeviceMappings"))
    LaunchConfiguration.add_member(:instance_monitoring, Shapes::ShapeRef.new(shape: InstanceMonitoring, location_name: "InstanceMonitoring"))
    LaunchConfiguration.add_member(:spot_price, Shapes::ShapeRef.new(shape: SpotPrice, location_name: "SpotPrice"))
    LaunchConfiguration.add_member(:iam_instance_profile, Shapes::ShapeRef.new(shape: XmlStringMaxLen1600, location_name: "IamInstanceProfile"))
    LaunchConfiguration.add_member(:created_time, Shapes::ShapeRef.new(shape: TimestampType, required: true, location_name: "CreatedTime"))
    LaunchConfiguration.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: EbsOptimized, location_name: "EbsOptimized"))
    LaunchConfiguration.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: AssociatePublicIpAddress, location_name: "AssociatePublicIpAddress"))
    LaunchConfiguration.add_member(:placement_tenancy, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, location_name: "PlacementTenancy"))
    LaunchConfiguration.add_member(:metadata_options, Shapes::ShapeRef.new(shape: InstanceMetadataOptions, location_name: "MetadataOptions"))
    LaunchConfiguration.struct_class = Types::LaunchConfiguration

    LaunchConfigurationNameType.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "LaunchConfigurationName"))
    LaunchConfigurationNameType.struct_class = Types::LaunchConfigurationNameType

    LaunchConfigurationNames.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    LaunchConfigurationNamesType.add_member(:launch_configuration_names, Shapes::ShapeRef.new(shape: LaunchConfigurationNames, location_name: "LaunchConfigurationNames"))
    LaunchConfigurationNamesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    LaunchConfigurationNamesType.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    LaunchConfigurationNamesType.struct_class = Types::LaunchConfigurationNamesType

    LaunchConfigurations.member = Shapes::ShapeRef.new(shape: LaunchConfiguration)

    LaunchConfigurationsType.add_member(:launch_configurations, Shapes::ShapeRef.new(shape: LaunchConfigurations, required: true, location_name: "LaunchConfigurations"))
    LaunchConfigurationsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    LaunchConfigurationsType.struct_class = Types::LaunchConfigurationsType

    LaunchTemplate.add_member(:launch_template_specification, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplateSpecification"))
    LaunchTemplate.add_member(:overrides, Shapes::ShapeRef.new(shape: Overrides, location_name: "Overrides"))
    LaunchTemplate.struct_class = Types::LaunchTemplate

    LaunchTemplateOverrides.add_member(:instance_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "InstanceType"))
    LaunchTemplateOverrides.add_member(:weighted_capacity, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "WeightedCapacity"))
    LaunchTemplateOverrides.add_member(:launch_template_specification, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplateSpecification"))
    LaunchTemplateOverrides.add_member(:instance_requirements, Shapes::ShapeRef.new(shape: InstanceRequirements, location_name: "InstanceRequirements"))
    LaunchTemplateOverrides.struct_class = Types::LaunchTemplateOverrides

    LaunchTemplateSpecification.add_member(:launch_template_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LaunchTemplateId"))
    LaunchTemplateSpecification.add_member(:launch_template_name, Shapes::ShapeRef.new(shape: LaunchTemplateName, location_name: "LaunchTemplateName"))
    LaunchTemplateSpecification.add_member(:version, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Version"))
    LaunchTemplateSpecification.struct_class = Types::LaunchTemplateSpecification

    LifecycleHook.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, location_name: "LifecycleHookName"))
    LifecycleHook.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    LifecycleHook.add_member(:lifecycle_transition, Shapes::ShapeRef.new(shape: LifecycleTransition, location_name: "LifecycleTransition"))
    LifecycleHook.add_member(:notification_target_arn, Shapes::ShapeRef.new(shape: NotificationTargetResourceName, location_name: "NotificationTargetARN"))
    LifecycleHook.add_member(:role_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "RoleARN"))
    LifecycleHook.add_member(:notification_metadata, Shapes::ShapeRef.new(shape: AnyPrintableAsciiStringMaxLen4000, location_name: "NotificationMetadata"))
    LifecycleHook.add_member(:heartbeat_timeout, Shapes::ShapeRef.new(shape: HeartbeatTimeout, location_name: "HeartbeatTimeout"))
    LifecycleHook.add_member(:global_timeout, Shapes::ShapeRef.new(shape: GlobalTimeout, location_name: "GlobalTimeout"))
    LifecycleHook.add_member(:default_result, Shapes::ShapeRef.new(shape: LifecycleActionResult, location_name: "DefaultResult"))
    LifecycleHook.struct_class = Types::LifecycleHook

    LifecycleHookNames.member = Shapes::ShapeRef.new(shape: AsciiStringMaxLen255)

    LifecycleHookSpecification.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, required: true, location_name: "LifecycleHookName"))
    LifecycleHookSpecification.add_member(:lifecycle_transition, Shapes::ShapeRef.new(shape: LifecycleTransition, required: true, location_name: "LifecycleTransition"))
    LifecycleHookSpecification.add_member(:notification_metadata, Shapes::ShapeRef.new(shape: AnyPrintableAsciiStringMaxLen4000, location_name: "NotificationMetadata"))
    LifecycleHookSpecification.add_member(:heartbeat_timeout, Shapes::ShapeRef.new(shape: HeartbeatTimeout, location_name: "HeartbeatTimeout"))
    LifecycleHookSpecification.add_member(:default_result, Shapes::ShapeRef.new(shape: LifecycleActionResult, location_name: "DefaultResult"))
    LifecycleHookSpecification.add_member(:notification_target_arn, Shapes::ShapeRef.new(shape: NotificationTargetResourceName, location_name: "NotificationTargetARN"))
    LifecycleHookSpecification.add_member(:role_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "RoleARN"))
    LifecycleHookSpecification.struct_class = Types::LifecycleHookSpecification

    LifecycleHookSpecifications.member = Shapes::ShapeRef.new(shape: LifecycleHookSpecification)

    LifecycleHooks.member = Shapes::ShapeRef.new(shape: LifecycleHook)

    LimitExceededFault.add_member(:message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "message"))
    LimitExceededFault.struct_class = Types::LimitExceededFault

    LoadBalancerNames.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    LoadBalancerState.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LoadBalancerName"))
    LoadBalancerState.add_member(:state, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "State"))
    LoadBalancerState.struct_class = Types::LoadBalancerState

    LoadBalancerStates.member = Shapes::ShapeRef.new(shape: LoadBalancerState)

    LoadBalancerTargetGroupState.add_member(:load_balancer_target_group_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen511, location_name: "LoadBalancerTargetGroupARN"))
    LoadBalancerTargetGroupState.add_member(:state, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "State"))
    LoadBalancerTargetGroupState.struct_class = Types::LoadBalancerTargetGroupState

    LoadBalancerTargetGroupStates.member = Shapes::ShapeRef.new(shape: LoadBalancerTargetGroupState)

    LoadForecast.add_member(:timestamps, Shapes::ShapeRef.new(shape: PredictiveScalingForecastTimestamps, required: true, location_name: "Timestamps"))
    LoadForecast.add_member(:values, Shapes::ShapeRef.new(shape: PredictiveScalingForecastValues, required: true, location_name: "Values"))
    LoadForecast.add_member(:metric_specification, Shapes::ShapeRef.new(shape: PredictiveScalingMetricSpecification, required: true, location_name: "MetricSpecification"))
    LoadForecast.struct_class = Types::LoadForecast

    LoadForecasts.member = Shapes::ShapeRef.new(shape: LoadForecast)

    LocalStorageTypes.member = Shapes::ShapeRef.new(shape: LocalStorageType)

    MemoryGiBPerVCpuRequest.add_member(:min, Shapes::ShapeRef.new(shape: NullablePositiveDouble, location_name: "Min"))
    MemoryGiBPerVCpuRequest.add_member(:max, Shapes::ShapeRef.new(shape: NullablePositiveDouble, location_name: "Max"))
    MemoryGiBPerVCpuRequest.struct_class = Types::MemoryGiBPerVCpuRequest

    MemoryMiBRequest.add_member(:min, Shapes::ShapeRef.new(shape: NullablePositiveInteger, required: true, location_name: "Min"))
    MemoryMiBRequest.add_member(:max, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "Max"))
    MemoryMiBRequest.struct_class = Types::MemoryMiBRequest

    Metric.add_member(:namespace, Shapes::ShapeRef.new(shape: MetricNamespace, required: true, location_name: "Namespace"))
    Metric.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    Metric.add_member(:dimensions, Shapes::ShapeRef.new(shape: MetricDimensions, location_name: "Dimensions"))
    Metric.struct_class = Types::Metric

    MetricCollectionType.add_member(:metric, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Metric"))
    MetricCollectionType.struct_class = Types::MetricCollectionType

    MetricCollectionTypes.member = Shapes::ShapeRef.new(shape: MetricCollectionType)

    MetricDataQueries.member = Shapes::ShapeRef.new(shape: MetricDataQuery)

    MetricDataQuery.add_member(:id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "Id"))
    MetricDataQuery.add_member(:expression, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "Expression"))
    MetricDataQuery.add_member(:metric_stat, Shapes::ShapeRef.new(shape: MetricStat, location_name: "MetricStat"))
    MetricDataQuery.add_member(:label, Shapes::ShapeRef.new(shape: XmlStringMetricLabel, location_name: "Label"))
    MetricDataQuery.add_member(:return_data, Shapes::ShapeRef.new(shape: ReturnData, location_name: "ReturnData"))
    MetricDataQuery.struct_class = Types::MetricDataQuery

    MetricDimension.add_member(:name, Shapes::ShapeRef.new(shape: MetricDimensionName, required: true, location_name: "Name"))
    MetricDimension.add_member(:value, Shapes::ShapeRef.new(shape: MetricDimensionValue, required: true, location_name: "Value"))
    MetricDimension.struct_class = Types::MetricDimension

    MetricDimensions.member = Shapes::ShapeRef.new(shape: MetricDimension)

    MetricGranularityType.add_member(:granularity, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Granularity"))
    MetricGranularityType.struct_class = Types::MetricGranularityType

    MetricGranularityTypes.member = Shapes::ShapeRef.new(shape: MetricGranularityType)

    MetricStat.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, required: true, location_name: "Metric"))
    MetricStat.add_member(:stat, Shapes::ShapeRef.new(shape: XmlStringMetricStat, required: true, location_name: "Stat"))
    MetricStat.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "Unit"))
    MetricStat.struct_class = Types::MetricStat

    Metrics.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    MixedInstancesPolicy.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplate, location_name: "LaunchTemplate"))
    MixedInstancesPolicy.add_member(:instances_distribution, Shapes::ShapeRef.new(shape: InstancesDistribution, location_name: "InstancesDistribution"))
    MixedInstancesPolicy.struct_class = Types::MixedInstancesPolicy

    NetworkBandwidthGbpsRequest.add_member(:min, Shapes::ShapeRef.new(shape: NullablePositiveDouble, location_name: "Min"))
    NetworkBandwidthGbpsRequest.add_member(:max, Shapes::ShapeRef.new(shape: NullablePositiveDouble, location_name: "Max"))
    NetworkBandwidthGbpsRequest.struct_class = Types::NetworkBandwidthGbpsRequest

    NetworkInterfaceCountRequest.add_member(:min, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "Min"))
    NetworkInterfaceCountRequest.add_member(:max, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "Max"))
    NetworkInterfaceCountRequest.struct_class = Types::NetworkInterfaceCountRequest

    NotificationConfiguration.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    NotificationConfiguration.add_member(:topic_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "TopicARN"))
    NotificationConfiguration.add_member(:notification_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "NotificationType"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    NotificationConfigurations.member = Shapes::ShapeRef.new(shape: NotificationConfiguration)

    Overrides.member = Shapes::ShapeRef.new(shape: LaunchTemplateOverrides)

    PerformanceFactorReferenceRequest.add_member(:instance_family, Shapes::ShapeRef.new(shape: String, location_name: "InstanceFamily"))
    PerformanceFactorReferenceRequest.struct_class = Types::PerformanceFactorReferenceRequest

    PerformanceFactorReferenceSetRequest.member = Shapes::ShapeRef.new(shape: PerformanceFactorReferenceRequest, location_name: "item")

    PoliciesType.add_member(:scaling_policies, Shapes::ShapeRef.new(shape: ScalingPolicies, location_name: "ScalingPolicies"))
    PoliciesType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    PoliciesType.struct_class = Types::PoliciesType

    PolicyARNType.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "PolicyARN"))
    PolicyARNType.add_member(:alarms, Shapes::ShapeRef.new(shape: Alarms, location_name: "Alarms"))
    PolicyARNType.struct_class = Types::PolicyARNType

    PolicyNames.member = Shapes::ShapeRef.new(shape: ResourceName)

    PolicyTypes.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen64)

    PredefinedMetricSpecification.add_member(:predefined_metric_type, Shapes::ShapeRef.new(shape: MetricType, required: true, location_name: "PredefinedMetricType"))
    PredefinedMetricSpecification.add_member(:resource_label, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "ResourceLabel"))
    PredefinedMetricSpecification.struct_class = Types::PredefinedMetricSpecification

    PredictiveScalingConfiguration.add_member(:metric_specifications, Shapes::ShapeRef.new(shape: PredictiveScalingMetricSpecifications, required: true, location_name: "MetricSpecifications"))
    PredictiveScalingConfiguration.add_member(:mode, Shapes::ShapeRef.new(shape: PredictiveScalingMode, location_name: "Mode"))
    PredictiveScalingConfiguration.add_member(:scheduling_buffer_time, Shapes::ShapeRef.new(shape: PredictiveScalingSchedulingBufferTime, location_name: "SchedulingBufferTime"))
    PredictiveScalingConfiguration.add_member(:max_capacity_breach_behavior, Shapes::ShapeRef.new(shape: PredictiveScalingMaxCapacityBreachBehavior, location_name: "MaxCapacityBreachBehavior"))
    PredictiveScalingConfiguration.add_member(:max_capacity_buffer, Shapes::ShapeRef.new(shape: PredictiveScalingMaxCapacityBuffer, location_name: "MaxCapacityBuffer"))
    PredictiveScalingConfiguration.struct_class = Types::PredictiveScalingConfiguration

    PredictiveScalingCustomizedCapacityMetric.add_member(:metric_data_queries, Shapes::ShapeRef.new(shape: MetricDataQueries, required: true, location_name: "MetricDataQueries"))
    PredictiveScalingCustomizedCapacityMetric.struct_class = Types::PredictiveScalingCustomizedCapacityMetric

    PredictiveScalingCustomizedLoadMetric.add_member(:metric_data_queries, Shapes::ShapeRef.new(shape: MetricDataQueries, required: true, location_name: "MetricDataQueries"))
    PredictiveScalingCustomizedLoadMetric.struct_class = Types::PredictiveScalingCustomizedLoadMetric

    PredictiveScalingCustomizedScalingMetric.add_member(:metric_data_queries, Shapes::ShapeRef.new(shape: MetricDataQueries, required: true, location_name: "MetricDataQueries"))
    PredictiveScalingCustomizedScalingMetric.struct_class = Types::PredictiveScalingCustomizedScalingMetric

    PredictiveScalingForecastTimestamps.member = Shapes::ShapeRef.new(shape: TimestampType)

    PredictiveScalingForecastValues.member = Shapes::ShapeRef.new(shape: MetricScale)

    PredictiveScalingMetricSpecification.add_member(:target_value, Shapes::ShapeRef.new(shape: MetricScale, required: true, location_name: "TargetValue"))
    PredictiveScalingMetricSpecification.add_member(:predefined_metric_pair_specification, Shapes::ShapeRef.new(shape: PredictiveScalingPredefinedMetricPair, location_name: "PredefinedMetricPairSpecification"))
    PredictiveScalingMetricSpecification.add_member(:predefined_scaling_metric_specification, Shapes::ShapeRef.new(shape: PredictiveScalingPredefinedScalingMetric, location_name: "PredefinedScalingMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:predefined_load_metric_specification, Shapes::ShapeRef.new(shape: PredictiveScalingPredefinedLoadMetric, location_name: "PredefinedLoadMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:customized_scaling_metric_specification, Shapes::ShapeRef.new(shape: PredictiveScalingCustomizedScalingMetric, location_name: "CustomizedScalingMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:customized_load_metric_specification, Shapes::ShapeRef.new(shape: PredictiveScalingCustomizedLoadMetric, location_name: "CustomizedLoadMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:customized_capacity_metric_specification, Shapes::ShapeRef.new(shape: PredictiveScalingCustomizedCapacityMetric, location_name: "CustomizedCapacityMetricSpecification"))
    PredictiveScalingMetricSpecification.struct_class = Types::PredictiveScalingMetricSpecification

    PredictiveScalingMetricSpecifications.member = Shapes::ShapeRef.new(shape: PredictiveScalingMetricSpecification)

    PredictiveScalingPredefinedLoadMetric.add_member(:predefined_metric_type, Shapes::ShapeRef.new(shape: PredefinedLoadMetricType, required: true, location_name: "PredefinedMetricType"))
    PredictiveScalingPredefinedLoadMetric.add_member(:resource_label, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "ResourceLabel"))
    PredictiveScalingPredefinedLoadMetric.struct_class = Types::PredictiveScalingPredefinedLoadMetric

    PredictiveScalingPredefinedMetricPair.add_member(:predefined_metric_type, Shapes::ShapeRef.new(shape: PredefinedMetricPairType, required: true, location_name: "PredefinedMetricType"))
    PredictiveScalingPredefinedMetricPair.add_member(:resource_label, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "ResourceLabel"))
    PredictiveScalingPredefinedMetricPair.struct_class = Types::PredictiveScalingPredefinedMetricPair

    PredictiveScalingPredefinedScalingMetric.add_member(:predefined_metric_type, Shapes::ShapeRef.new(shape: PredefinedScalingMetricType, required: true, location_name: "PredefinedMetricType"))
    PredictiveScalingPredefinedScalingMetric.add_member(:resource_label, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "ResourceLabel"))
    PredictiveScalingPredefinedScalingMetric.struct_class = Types::PredictiveScalingPredefinedScalingMetric

    ProcessNames.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    ProcessType.add_member(:process_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ProcessName"))
    ProcessType.struct_class = Types::ProcessType

    Processes.member = Shapes::ShapeRef.new(shape: ProcessType)

    ProcessesType.add_member(:processes, Shapes::ShapeRef.new(shape: Processes, location_name: "Processes"))
    ProcessesType.struct_class = Types::ProcessesType

    PutLifecycleHookAnswer.struct_class = Types::PutLifecycleHookAnswer

    PutLifecycleHookType.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, required: true, location_name: "LifecycleHookName"))
    PutLifecycleHookType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    PutLifecycleHookType.add_member(:lifecycle_transition, Shapes::ShapeRef.new(shape: LifecycleTransition, location_name: "LifecycleTransition"))
    PutLifecycleHookType.add_member(:role_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "RoleARN"))
    PutLifecycleHookType.add_member(:notification_target_arn, Shapes::ShapeRef.new(shape: NotificationTargetResourceName, location_name: "NotificationTargetARN"))
    PutLifecycleHookType.add_member(:notification_metadata, Shapes::ShapeRef.new(shape: AnyPrintableAsciiStringMaxLen4000, location_name: "NotificationMetadata"))
    PutLifecycleHookType.add_member(:heartbeat_timeout, Shapes::ShapeRef.new(shape: HeartbeatTimeout, location_name: "HeartbeatTimeout"))
    PutLifecycleHookType.add_member(:default_result, Shapes::ShapeRef.new(shape: LifecycleActionResult, location_name: "DefaultResult"))
    PutLifecycleHookType.struct_class = Types::PutLifecycleHookType

    PutNotificationConfigurationType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    PutNotificationConfigurationType.add_member(:topic_arn, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "TopicARN"))
    PutNotificationConfigurationType.add_member(:notification_types, Shapes::ShapeRef.new(shape: AutoScalingNotificationTypes, required: true, location_name: "NotificationTypes"))
    PutNotificationConfigurationType.struct_class = Types::PutNotificationConfigurationType

    PutScalingPolicyType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    PutScalingPolicyType.add_member(:policy_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "PolicyName"))
    PutScalingPolicyType.add_member(:policy_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, location_name: "PolicyType"))
    PutScalingPolicyType.add_member(:adjustment_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AdjustmentType"))
    PutScalingPolicyType.add_member(:min_adjustment_step, Shapes::ShapeRef.new(shape: MinAdjustmentStep, deprecated: true, location_name: "MinAdjustmentStep"))
    PutScalingPolicyType.add_member(:min_adjustment_magnitude, Shapes::ShapeRef.new(shape: MinAdjustmentMagnitude, location_name: "MinAdjustmentMagnitude"))
    PutScalingPolicyType.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: PolicyIncrement, location_name: "ScalingAdjustment"))
    PutScalingPolicyType.add_member(:cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "Cooldown"))
    PutScalingPolicyType.add_member(:metric_aggregation_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "MetricAggregationType"))
    PutScalingPolicyType.add_member(:step_adjustments, Shapes::ShapeRef.new(shape: StepAdjustments, location_name: "StepAdjustments"))
    PutScalingPolicyType.add_member(:estimated_instance_warmup, Shapes::ShapeRef.new(shape: EstimatedInstanceWarmup, location_name: "EstimatedInstanceWarmup"))
    PutScalingPolicyType.add_member(:target_tracking_configuration, Shapes::ShapeRef.new(shape: TargetTrackingConfiguration, location_name: "TargetTrackingConfiguration"))
    PutScalingPolicyType.add_member(:enabled, Shapes::ShapeRef.new(shape: ScalingPolicyEnabled, location_name: "Enabled"))
    PutScalingPolicyType.add_member(:predictive_scaling_configuration, Shapes::ShapeRef.new(shape: PredictiveScalingConfiguration, location_name: "PredictiveScalingConfiguration"))
    PutScalingPolicyType.struct_class = Types::PutScalingPolicyType

    PutScheduledUpdateGroupActionType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    PutScheduledUpdateGroupActionType.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ScheduledActionName"))
    PutScheduledUpdateGroupActionType.add_member(:time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "Time"))
    PutScheduledUpdateGroupActionType.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    PutScheduledUpdateGroupActionType.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    PutScheduledUpdateGroupActionType.add_member(:recurrence, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Recurrence"))
    PutScheduledUpdateGroupActionType.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, location_name: "MinSize"))
    PutScheduledUpdateGroupActionType.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, location_name: "MaxSize"))
    PutScheduledUpdateGroupActionType.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, location_name: "DesiredCapacity"))
    PutScheduledUpdateGroupActionType.add_member(:time_zone, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "TimeZone"))
    PutScheduledUpdateGroupActionType.struct_class = Types::PutScheduledUpdateGroupActionType

    PutWarmPoolAnswer.struct_class = Types::PutWarmPoolAnswer

    PutWarmPoolType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    PutWarmPoolType.add_member(:max_group_prepared_capacity, Shapes::ShapeRef.new(shape: MaxGroupPreparedCapacity, location_name: "MaxGroupPreparedCapacity"))
    PutWarmPoolType.add_member(:min_size, Shapes::ShapeRef.new(shape: WarmPoolMinSize, location_name: "MinSize"))
    PutWarmPoolType.add_member(:pool_state, Shapes::ShapeRef.new(shape: WarmPoolState, location_name: "PoolState"))
    PutWarmPoolType.add_member(:instance_reuse_policy, Shapes::ShapeRef.new(shape: InstanceReusePolicy, location_name: "InstanceReusePolicy"))
    PutWarmPoolType.struct_class = Types::PutWarmPoolType

    RecordLifecycleActionHeartbeatAnswer.struct_class = Types::RecordLifecycleActionHeartbeatAnswer

    RecordLifecycleActionHeartbeatType.add_member(:lifecycle_hook_name, Shapes::ShapeRef.new(shape: AsciiStringMaxLen255, required: true, location_name: "LifecycleHookName"))
    RecordLifecycleActionHeartbeatType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "AutoScalingGroupName"))
    RecordLifecycleActionHeartbeatType.add_member(:lifecycle_action_token, Shapes::ShapeRef.new(shape: LifecycleActionToken, location_name: "LifecycleActionToken"))
    RecordLifecycleActionHeartbeatType.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, location_name: "InstanceId"))
    RecordLifecycleActionHeartbeatType.struct_class = Types::RecordLifecycleActionHeartbeatType

    RefreshPreferences.add_member(:min_healthy_percentage, Shapes::ShapeRef.new(shape: IntPercent, location_name: "MinHealthyPercentage"))
    RefreshPreferences.add_member(:instance_warmup, Shapes::ShapeRef.new(shape: RefreshInstanceWarmup, location_name: "InstanceWarmup"))
    RefreshPreferences.add_member(:checkpoint_percentages, Shapes::ShapeRef.new(shape: CheckpointPercentages, location_name: "CheckpointPercentages"))
    RefreshPreferences.add_member(:checkpoint_delay, Shapes::ShapeRef.new(shape: CheckpointDelay, location_name: "CheckpointDelay"))
    RefreshPreferences.add_member(:skip_matching, Shapes::ShapeRef.new(shape: SkipMatching, location_name: "SkipMatching"))
    RefreshPreferences.add_member(:auto_rollback, Shapes::ShapeRef.new(shape: AutoRollback, location_name: "AutoRollback"))
    RefreshPreferences.add_member(:scale_in_protected_instances, Shapes::ShapeRef.new(shape: ScaleInProtectedInstances, location_name: "ScaleInProtectedInstances"))
    RefreshPreferences.add_member(:standby_instances, Shapes::ShapeRef.new(shape: StandbyInstances, location_name: "StandbyInstances"))
    RefreshPreferences.add_member(:alarm_specification, Shapes::ShapeRef.new(shape: AlarmSpecification, location_name: "AlarmSpecification"))
    RefreshPreferences.add_member(:max_healthy_percentage, Shapes::ShapeRef.new(shape: IntPercent100To200, location_name: "MaxHealthyPercentage"))
    RefreshPreferences.add_member(:bake_time, Shapes::ShapeRef.new(shape: BakeTime, location_name: "BakeTime"))
    RefreshPreferences.struct_class = Types::RefreshPreferences

    ResourceContentionFault.add_member(:message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "message"))
    ResourceContentionFault.struct_class = Types::ResourceContentionFault

    ResourceInUseFault.add_member(:message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "message"))
    ResourceInUseFault.struct_class = Types::ResourceInUseFault

    RollbackDetails.add_member(:rollback_reason, Shapes::ShapeRef.new(shape: XmlStringMaxLen1023, location_name: "RollbackReason"))
    RollbackDetails.add_member(:rollback_start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "RollbackStartTime"))
    RollbackDetails.add_member(:percentage_complete_on_rollback, Shapes::ShapeRef.new(shape: IntPercent, location_name: "PercentageCompleteOnRollback"))
    RollbackDetails.add_member(:instances_to_update_on_rollback, Shapes::ShapeRef.new(shape: InstancesToUpdate, location_name: "InstancesToUpdateOnRollback"))
    RollbackDetails.add_member(:progress_details_on_rollback, Shapes::ShapeRef.new(shape: InstanceRefreshProgressDetails, location_name: "ProgressDetailsOnRollback"))
    RollbackDetails.struct_class = Types::RollbackDetails

    RollbackInstanceRefreshAnswer.add_member(:instance_refresh_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "InstanceRefreshId"))
    RollbackInstanceRefreshAnswer.struct_class = Types::RollbackInstanceRefreshAnswer

    RollbackInstanceRefreshType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    RollbackInstanceRefreshType.struct_class = Types::RollbackInstanceRefreshType

    ScalingActivityInProgressFault.add_member(:message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "message"))
    ScalingActivityInProgressFault.struct_class = Types::ScalingActivityInProgressFault

    ScalingPolicies.member = Shapes::ShapeRef.new(shape: ScalingPolicy)

    ScalingPolicy.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    ScalingPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "PolicyName"))
    ScalingPolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "PolicyARN"))
    ScalingPolicy.add_member(:policy_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, location_name: "PolicyType"))
    ScalingPolicy.add_member(:adjustment_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AdjustmentType"))
    ScalingPolicy.add_member(:min_adjustment_step, Shapes::ShapeRef.new(shape: MinAdjustmentStep, deprecated: true, location_name: "MinAdjustmentStep"))
    ScalingPolicy.add_member(:min_adjustment_magnitude, Shapes::ShapeRef.new(shape: MinAdjustmentMagnitude, location_name: "MinAdjustmentMagnitude"))
    ScalingPolicy.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: PolicyIncrement, location_name: "ScalingAdjustment"))
    ScalingPolicy.add_member(:cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "Cooldown"))
    ScalingPolicy.add_member(:step_adjustments, Shapes::ShapeRef.new(shape: StepAdjustments, location_name: "StepAdjustments"))
    ScalingPolicy.add_member(:metric_aggregation_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "MetricAggregationType"))
    ScalingPolicy.add_member(:estimated_instance_warmup, Shapes::ShapeRef.new(shape: EstimatedInstanceWarmup, location_name: "EstimatedInstanceWarmup"))
    ScalingPolicy.add_member(:alarms, Shapes::ShapeRef.new(shape: Alarms, location_name: "Alarms"))
    ScalingPolicy.add_member(:target_tracking_configuration, Shapes::ShapeRef.new(shape: TargetTrackingConfiguration, location_name: "TargetTrackingConfiguration"))
    ScalingPolicy.add_member(:enabled, Shapes::ShapeRef.new(shape: ScalingPolicyEnabled, location_name: "Enabled"))
    ScalingPolicy.add_member(:predictive_scaling_configuration, Shapes::ShapeRef.new(shape: PredictiveScalingConfiguration, location_name: "PredictiveScalingConfiguration"))
    ScalingPolicy.struct_class = Types::ScalingPolicy

    ScalingProcessQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    ScalingProcessQuery.add_member(:scaling_processes, Shapes::ShapeRef.new(shape: ProcessNames, location_name: "ScalingProcesses"))
    ScalingProcessQuery.struct_class = Types::ScalingProcessQuery

    ScheduledActionNames.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen255)

    ScheduledActionsType.add_member(:scheduled_update_group_actions, Shapes::ShapeRef.new(shape: ScheduledUpdateGroupActions, location_name: "ScheduledUpdateGroupActions"))
    ScheduledActionsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    ScheduledActionsType.struct_class = Types::ScheduledActionsType

    ScheduledUpdateGroupAction.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "AutoScalingGroupName"))
    ScheduledUpdateGroupAction.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "ScheduledActionName"))
    ScheduledUpdateGroupAction.add_member(:scheduled_action_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ScheduledActionARN"))
    ScheduledUpdateGroupAction.add_member(:time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "Time"))
    ScheduledUpdateGroupAction.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    ScheduledUpdateGroupAction.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    ScheduledUpdateGroupAction.add_member(:recurrence, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Recurrence"))
    ScheduledUpdateGroupAction.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, location_name: "MinSize"))
    ScheduledUpdateGroupAction.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, location_name: "MaxSize"))
    ScheduledUpdateGroupAction.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, location_name: "DesiredCapacity"))
    ScheduledUpdateGroupAction.add_member(:time_zone, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "TimeZone"))
    ScheduledUpdateGroupAction.struct_class = Types::ScheduledUpdateGroupAction

    ScheduledUpdateGroupActionRequest.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "ScheduledActionName"))
    ScheduledUpdateGroupActionRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StartTime"))
    ScheduledUpdateGroupActionRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "EndTime"))
    ScheduledUpdateGroupActionRequest.add_member(:recurrence, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "Recurrence"))
    ScheduledUpdateGroupActionRequest.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, location_name: "MinSize"))
    ScheduledUpdateGroupActionRequest.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, location_name: "MaxSize"))
    ScheduledUpdateGroupActionRequest.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, location_name: "DesiredCapacity"))
    ScheduledUpdateGroupActionRequest.add_member(:time_zone, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "TimeZone"))
    ScheduledUpdateGroupActionRequest.struct_class = Types::ScheduledUpdateGroupActionRequest

    ScheduledUpdateGroupActionRequests.member = Shapes::ShapeRef.new(shape: ScheduledUpdateGroupActionRequest)

    ScheduledUpdateGroupActions.member = Shapes::ShapeRef.new(shape: ScheduledUpdateGroupAction)

    SecurityGroups.member = Shapes::ShapeRef.new(shape: XmlString)

    ServiceLinkedRoleFailure.add_member(:message, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "message"))
    ServiceLinkedRoleFailure.struct_class = Types::ServiceLinkedRoleFailure

    SetDesiredCapacityType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    SetDesiredCapacityType.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, required: true, location_name: "DesiredCapacity"))
    SetDesiredCapacityType.add_member(:honor_cooldown, Shapes::ShapeRef.new(shape: HonorCooldown, location_name: "HonorCooldown"))
    SetDesiredCapacityType.struct_class = Types::SetDesiredCapacityType

    SetInstanceHealthQuery.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, required: true, location_name: "InstanceId"))
    SetInstanceHealthQuery.add_member(:health_status, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, required: true, location_name: "HealthStatus"))
    SetInstanceHealthQuery.add_member(:should_respect_grace_period, Shapes::ShapeRef.new(shape: ShouldRespectGracePeriod, location_name: "ShouldRespectGracePeriod"))
    SetInstanceHealthQuery.struct_class = Types::SetInstanceHealthQuery

    SetInstanceProtectionAnswer.struct_class = Types::SetInstanceProtectionAnswer

    SetInstanceProtectionQuery.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIds, required: true, location_name: "InstanceIds"))
    SetInstanceProtectionQuery.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    SetInstanceProtectionQuery.add_member(:protected_from_scale_in, Shapes::ShapeRef.new(shape: ProtectedFromScaleIn, required: true, location_name: "ProtectedFromScaleIn"))
    SetInstanceProtectionQuery.struct_class = Types::SetInstanceProtectionQuery

    StartInstanceRefreshAnswer.add_member(:instance_refresh_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "InstanceRefreshId"))
    StartInstanceRefreshAnswer.struct_class = Types::StartInstanceRefreshAnswer

    StartInstanceRefreshType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    StartInstanceRefreshType.add_member(:strategy, Shapes::ShapeRef.new(shape: RefreshStrategy, location_name: "Strategy"))
    StartInstanceRefreshType.add_member(:desired_configuration, Shapes::ShapeRef.new(shape: DesiredConfiguration, location_name: "DesiredConfiguration"))
    StartInstanceRefreshType.add_member(:preferences, Shapes::ShapeRef.new(shape: RefreshPreferences, location_name: "Preferences"))
    StartInstanceRefreshType.struct_class = Types::StartInstanceRefreshType

    StepAdjustment.add_member(:metric_interval_lower_bound, Shapes::ShapeRef.new(shape: MetricScale, location_name: "MetricIntervalLowerBound"))
    StepAdjustment.add_member(:metric_interval_upper_bound, Shapes::ShapeRef.new(shape: MetricScale, location_name: "MetricIntervalUpperBound"))
    StepAdjustment.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: PolicyIncrement, required: true, location_name: "ScalingAdjustment"))
    StepAdjustment.struct_class = Types::StepAdjustment

    StepAdjustments.member = Shapes::ShapeRef.new(shape: StepAdjustment)

    SuspendedProcess.add_member(:process_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "ProcessName"))
    SuspendedProcess.add_member(:suspension_reason, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "SuspensionReason"))
    SuspendedProcess.struct_class = Types::SuspendedProcess

    SuspendedProcesses.member = Shapes::ShapeRef.new(shape: SuspendedProcess)

    Tag.add_member(:resource_id, Shapes::ShapeRef.new(shape: XmlString, location_name: "ResourceId"))
    Tag.add_member(:resource_type, Shapes::ShapeRef.new(shape: XmlString, location_name: "ResourceType"))
    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.add_member(:propagate_at_launch, Shapes::ShapeRef.new(shape: PropagateAtLaunch, location_name: "PropagateAtLaunch"))
    Tag.struct_class = Types::Tag

    TagDescription.add_member(:resource_id, Shapes::ShapeRef.new(shape: XmlString, location_name: "ResourceId"))
    TagDescription.add_member(:resource_type, Shapes::ShapeRef.new(shape: XmlString, location_name: "ResourceType"))
    TagDescription.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    TagDescription.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    TagDescription.add_member(:propagate_at_launch, Shapes::ShapeRef.new(shape: PropagateAtLaunch, location_name: "PropagateAtLaunch"))
    TagDescription.struct_class = Types::TagDescription

    TagDescriptionList.member = Shapes::ShapeRef.new(shape: TagDescription)

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TagsType.add_member(:tags, Shapes::ShapeRef.new(shape: TagDescriptionList, location_name: "Tags"))
    TagsType.add_member(:next_token, Shapes::ShapeRef.new(shape: XmlString, location_name: "NextToken"))
    TagsType.struct_class = Types::TagsType

    TargetGroupARNs.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen511)

    TargetTrackingConfiguration.add_member(:predefined_metric_specification, Shapes::ShapeRef.new(shape: PredefinedMetricSpecification, location_name: "PredefinedMetricSpecification"))
    TargetTrackingConfiguration.add_member(:customized_metric_specification, Shapes::ShapeRef.new(shape: CustomizedMetricSpecification, location_name: "CustomizedMetricSpecification"))
    TargetTrackingConfiguration.add_member(:target_value, Shapes::ShapeRef.new(shape: MetricScale, required: true, location_name: "TargetValue"))
    TargetTrackingConfiguration.add_member(:disable_scale_in, Shapes::ShapeRef.new(shape: DisableScaleIn, location_name: "DisableScaleIn"))
    TargetTrackingConfiguration.struct_class = Types::TargetTrackingConfiguration

    TargetTrackingMetricDataQueries.member = Shapes::ShapeRef.new(shape: TargetTrackingMetricDataQuery)

    TargetTrackingMetricDataQuery.add_member(:id, Shapes::ShapeRef.new(shape: XmlStringMaxLen64, required: true, location_name: "Id"))
    TargetTrackingMetricDataQuery.add_member(:expression, Shapes::ShapeRef.new(shape: XmlStringMaxLen2047, location_name: "Expression"))
    TargetTrackingMetricDataQuery.add_member(:metric_stat, Shapes::ShapeRef.new(shape: TargetTrackingMetricStat, location_name: "MetricStat"))
    TargetTrackingMetricDataQuery.add_member(:label, Shapes::ShapeRef.new(shape: XmlStringMetricLabel, location_name: "Label"))
    TargetTrackingMetricDataQuery.add_member(:period, Shapes::ShapeRef.new(shape: MetricGranularityInSeconds, location_name: "Period"))
    TargetTrackingMetricDataQuery.add_member(:return_data, Shapes::ShapeRef.new(shape: ReturnData, location_name: "ReturnData"))
    TargetTrackingMetricDataQuery.struct_class = Types::TargetTrackingMetricDataQuery

    TargetTrackingMetricStat.add_member(:metric, Shapes::ShapeRef.new(shape: Metric, required: true, location_name: "Metric"))
    TargetTrackingMetricStat.add_member(:stat, Shapes::ShapeRef.new(shape: XmlStringMetricStat, required: true, location_name: "Stat"))
    TargetTrackingMetricStat.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "Unit"))
    TargetTrackingMetricStat.add_member(:period, Shapes::ShapeRef.new(shape: MetricGranularityInSeconds, location_name: "Period"))
    TargetTrackingMetricStat.struct_class = Types::TargetTrackingMetricStat

    TerminateInstanceInAutoScalingGroupType.add_member(:instance_id, Shapes::ShapeRef.new(shape: XmlStringMaxLen19, required: true, location_name: "InstanceId"))
    TerminateInstanceInAutoScalingGroupType.add_member(:should_decrement_desired_capacity, Shapes::ShapeRef.new(shape: ShouldDecrementDesiredCapacity, required: true, location_name: "ShouldDecrementDesiredCapacity"))
    TerminateInstanceInAutoScalingGroupType.struct_class = Types::TerminateInstanceInAutoScalingGroupType

    TerminationPolicies.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen1600)

    TotalLocalStorageGBRequest.add_member(:min, Shapes::ShapeRef.new(shape: NullablePositiveDouble, location_name: "Min"))
    TotalLocalStorageGBRequest.add_member(:max, Shapes::ShapeRef.new(shape: NullablePositiveDouble, location_name: "Max"))
    TotalLocalStorageGBRequest.struct_class = Types::TotalLocalStorageGBRequest

    TrafficSourceIdentifier.add_member(:identifier, Shapes::ShapeRef.new(shape: XmlStringMaxLen511, required: true, location_name: "Identifier"))
    TrafficSourceIdentifier.add_member(:type, Shapes::ShapeRef.new(shape: XmlStringMaxLen511, location_name: "Type"))
    TrafficSourceIdentifier.struct_class = Types::TrafficSourceIdentifier

    TrafficSourceState.add_member(:traffic_source, Shapes::ShapeRef.new(shape: XmlStringMaxLen511, deprecated: true, location_name: "TrafficSource", metadata: {"deprecatedMessage" => "TrafficSource has been replaced by Identifier"}))
    TrafficSourceState.add_member(:state, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "State"))
    TrafficSourceState.add_member(:identifier, Shapes::ShapeRef.new(shape: XmlStringMaxLen511, location_name: "Identifier"))
    TrafficSourceState.add_member(:type, Shapes::ShapeRef.new(shape: XmlStringMaxLen511, location_name: "Type"))
    TrafficSourceState.struct_class = Types::TrafficSourceState

    TrafficSourceStates.member = Shapes::ShapeRef.new(shape: TrafficSourceState)

    TrafficSources.member = Shapes::ShapeRef.new(shape: TrafficSourceIdentifier)

    UpdateAutoScalingGroupType.add_member(:auto_scaling_group_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, required: true, location_name: "AutoScalingGroupName"))
    UpdateAutoScalingGroupType.add_member(:launch_configuration_name, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "LaunchConfigurationName"))
    UpdateAutoScalingGroupType.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, location_name: "LaunchTemplate"))
    UpdateAutoScalingGroupType.add_member(:mixed_instances_policy, Shapes::ShapeRef.new(shape: MixedInstancesPolicy, location_name: "MixedInstancesPolicy"))
    UpdateAutoScalingGroupType.add_member(:min_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMinSize, location_name: "MinSize"))
    UpdateAutoScalingGroupType.add_member(:max_size, Shapes::ShapeRef.new(shape: AutoScalingGroupMaxSize, location_name: "MaxSize"))
    UpdateAutoScalingGroupType.add_member(:desired_capacity, Shapes::ShapeRef.new(shape: AutoScalingGroupDesiredCapacity, location_name: "DesiredCapacity"))
    UpdateAutoScalingGroupType.add_member(:default_cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "DefaultCooldown"))
    UpdateAutoScalingGroupType.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    UpdateAutoScalingGroupType.add_member(:health_check_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen32, location_name: "HealthCheckType"))
    UpdateAutoScalingGroupType.add_member(:health_check_grace_period, Shapes::ShapeRef.new(shape: HealthCheckGracePeriod, location_name: "HealthCheckGracePeriod"))
    UpdateAutoScalingGroupType.add_member(:placement_group, Shapes::ShapeRef.new(shape: UpdatePlacementGroupParam, location_name: "PlacementGroup"))
    UpdateAutoScalingGroupType.add_member(:vpc_zone_identifier, Shapes::ShapeRef.new(shape: XmlStringMaxLen5000, location_name: "VPCZoneIdentifier"))
    UpdateAutoScalingGroupType.add_member(:termination_policies, Shapes::ShapeRef.new(shape: TerminationPolicies, location_name: "TerminationPolicies"))
    UpdateAutoScalingGroupType.add_member(:new_instances_protected_from_scale_in, Shapes::ShapeRef.new(shape: InstanceProtected, location_name: "NewInstancesProtectedFromScaleIn"))
    UpdateAutoScalingGroupType.add_member(:service_linked_role_arn, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ServiceLinkedRoleARN"))
    UpdateAutoScalingGroupType.add_member(:max_instance_lifetime, Shapes::ShapeRef.new(shape: MaxInstanceLifetime, location_name: "MaxInstanceLifetime"))
    UpdateAutoScalingGroupType.add_member(:capacity_rebalance, Shapes::ShapeRef.new(shape: CapacityRebalanceEnabled, location_name: "CapacityRebalance"))
    UpdateAutoScalingGroupType.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "Context"))
    UpdateAutoScalingGroupType.add_member(:desired_capacity_type, Shapes::ShapeRef.new(shape: XmlStringMaxLen255, location_name: "DesiredCapacityType"))
    UpdateAutoScalingGroupType.add_member(:default_instance_warmup, Shapes::ShapeRef.new(shape: DefaultInstanceWarmup, location_name: "DefaultInstanceWarmup"))
    UpdateAutoScalingGroupType.add_member(:instance_maintenance_policy, Shapes::ShapeRef.new(shape: InstanceMaintenancePolicy, location_name: "InstanceMaintenancePolicy"))
    UpdateAutoScalingGroupType.add_member(:availability_zone_distribution, Shapes::ShapeRef.new(shape: AvailabilityZoneDistribution, location_name: "AvailabilityZoneDistribution"))
    UpdateAutoScalingGroupType.add_member(:availability_zone_impairment_policy, Shapes::ShapeRef.new(shape: AvailabilityZoneImpairmentPolicy, location_name: "AvailabilityZoneImpairmentPolicy"))
    UpdateAutoScalingGroupType.add_member(:skip_zonal_shift_validation, Shapes::ShapeRef.new(shape: SkipZonalShiftValidation, location_name: "SkipZonalShiftValidation"))
    UpdateAutoScalingGroupType.add_member(:capacity_reservation_specification, Shapes::ShapeRef.new(shape: CapacityReservationSpecification, location_name: "CapacityReservationSpecification"))
    UpdateAutoScalingGroupType.struct_class = Types::UpdateAutoScalingGroupType

    VCpuCountRequest.add_member(:min, Shapes::ShapeRef.new(shape: NullablePositiveInteger, required: true, location_name: "Min"))
    VCpuCountRequest.add_member(:max, Shapes::ShapeRef.new(shape: NullablePositiveInteger, location_name: "Max"))
    VCpuCountRequest.struct_class = Types::VCpuCountRequest

    Values.member = Shapes::ShapeRef.new(shape: XmlString)

    WarmPoolConfiguration.add_member(:max_group_prepared_capacity, Shapes::ShapeRef.new(shape: MaxGroupPreparedCapacity, location_name: "MaxGroupPreparedCapacity"))
    WarmPoolConfiguration.add_member(:min_size, Shapes::ShapeRef.new(shape: WarmPoolMinSize, location_name: "MinSize"))
    WarmPoolConfiguration.add_member(:pool_state, Shapes::ShapeRef.new(shape: WarmPoolState, location_name: "PoolState"))
    WarmPoolConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: WarmPoolStatus, location_name: "Status"))
    WarmPoolConfiguration.add_member(:instance_reuse_policy, Shapes::ShapeRef.new(shape: InstanceReusePolicy, location_name: "InstanceReusePolicy"))
    WarmPoolConfiguration.struct_class = Types::WarmPoolConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2011-01-01"

      api.metadata = {
        "apiVersion" => "2011-01-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "autoscaling",
        "protocol" => "query",
        "protocols" => ["query"],
        "serviceFullName" => "Auto Scaling",
        "serviceId" => "Auto Scaling",
        "signatureVersion" => "v4",
        "uid" => "autoscaling-2011-01-01",
        "xmlNamespace" => "http://autoscaling.amazonaws.com/doc/2011-01-01/",
      }

      api.add_operation(:attach_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachInstancesQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:attach_load_balancer_target_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachLoadBalancerTargetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachLoadBalancerTargetGroupsType)
        o.output = Shapes::ShapeRef.new(shape: AttachLoadBalancerTargetGroupsResultType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:attach_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachLoadBalancersType)
        o.output = Shapes::ShapeRef.new(shape: AttachLoadBalancersResultType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:attach_traffic_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachTrafficSources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachTrafficSourcesType)
        o.output = Shapes::ShapeRef.new(shape: AttachTrafficSourcesResultType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:batch_delete_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteScheduledActionType)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteScheduledActionAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:batch_put_scheduled_update_group_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutScheduledUpdateGroupAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchPutScheduledUpdateGroupActionType)
        o.output = Shapes::ShapeRef.new(shape: BatchPutScheduledUpdateGroupActionAnswer)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:cancel_instance_refresh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelInstanceRefresh"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CancelInstanceRefreshType)
        o.output = Shapes::ShapeRef.new(shape: CancelInstanceRefreshAnswer)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ActiveInstanceRefreshNotFoundFault)
      end)

      api.add_operation(:complete_lifecycle_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompleteLifecycleAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CompleteLifecycleActionType)
        o.output = Shapes::ShapeRef.new(shape: CompleteLifecycleActionAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:create_auto_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAutoScalingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAutoScalingGroupType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:create_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLaunchConfigurationType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:create_or_update_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOrUpdateTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOrUpdateTagsType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
      end)

      api.add_operation(:delete_auto_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAutoScalingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAutoScalingGroupType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:delete_launch_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLaunchConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: LaunchConfigurationNameType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:delete_lifecycle_hook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLifecycleHook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLifecycleHookType)
        o.output = Shapes::ShapeRef.new(shape: DeleteLifecycleHookAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:delete_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotificationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotificationConfigurationType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:delete_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduledActionType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
      end)

      api.add_operation(:delete_warm_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWarmPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWarmPoolType)
        o.output = Shapes::ShapeRef.new(shape: DeleteWarmPoolAnswer)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
      end)

      api.add_operation(:describe_account_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountLimitsAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_adjustment_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAdjustmentTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeAdjustmentTypesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_auto_scaling_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutoScalingGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AutoScalingGroupNamesType)
        o.output = Shapes::ShapeRef.new(shape: AutoScalingGroupsType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_auto_scaling_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutoScalingInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAutoScalingInstancesType)
        o.output = Shapes::ShapeRef.new(shape: AutoScalingInstancesType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_auto_scaling_notification_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAutoScalingNotificationTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeAutoScalingNotificationTypesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_instance_refreshes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstanceRefreshes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstanceRefreshesType)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstanceRefreshesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_launch_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLaunchConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: LaunchConfigurationNamesType)
        o.output = Shapes::ShapeRef.new(shape: LaunchConfigurationsType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_lifecycle_hook_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLifecycleHookTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeLifecycleHookTypesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_lifecycle_hooks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLifecycleHooks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLifecycleHooksType)
        o.output = Shapes::ShapeRef.new(shape: DescribeLifecycleHooksAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_load_balancer_target_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancerTargetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancerTargetGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancerTargetGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBalancersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBalancersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_metric_collection_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMetricCollectionTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeMetricCollectionTypesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_notification_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNotificationConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNotificationConfigurationsType)
        o.output = Shapes::ShapeRef.new(shape: DescribeNotificationConfigurationsAnswer)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePoliciesType)
        o.output = Shapes::ShapeRef.new(shape: PoliciesType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_scaling_activities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingActivities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScalingActivitiesType)
        o.output = Shapes::ShapeRef.new(shape: ActivitiesType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_scaling_process_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingProcessTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: ProcessesType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_scheduled_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScheduledActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScheduledActionsType)
        o.output = Shapes::ShapeRef.new(shape: ScheduledActionsType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTagsType)
        o.output = Shapes::ShapeRef.new(shape: TagsType)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_termination_policy_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTerminationPolicyTypes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeTerminationPolicyTypesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:describe_traffic_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTrafficSources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTrafficSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTrafficSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_warm_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWarmPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeWarmPoolType)
        o.output = Shapes::ShapeRef.new(shape: DescribeWarmPoolAnswer)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:detach_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachInstancesQuery)
        o.output = Shapes::ShapeRef.new(shape: DetachInstancesAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:detach_load_balancer_target_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachLoadBalancerTargetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachLoadBalancerTargetGroupsType)
        o.output = Shapes::ShapeRef.new(shape: DetachLoadBalancerTargetGroupsResultType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:detach_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachLoadBalancersType)
        o.output = Shapes::ShapeRef.new(shape: DetachLoadBalancersResultType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:detach_traffic_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachTrafficSources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachTrafficSourcesType)
        o.output = Shapes::ShapeRef.new(shape: DetachTrafficSourcesResultType)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:disable_metrics_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableMetricsCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableMetricsCollectionQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:enable_metrics_collection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableMetricsCollection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableMetricsCollectionQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:enter_standby, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnterStandby"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnterStandbyQuery)
        o.output = Shapes::ShapeRef.new(shape: EnterStandbyAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:execute_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecutePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExecutePolicyType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:exit_standby, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExitStandby"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExitStandbyQuery)
        o.output = Shapes::ShapeRef.new(shape: ExitStandbyAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:get_predictive_scaling_forecast, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPredictiveScalingForecast"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPredictiveScalingForecastType)
        o.output = Shapes::ShapeRef.new(shape: GetPredictiveScalingForecastAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:put_lifecycle_hook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLifecycleHook"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLifecycleHookType)
        o.output = Shapes::ShapeRef.new(shape: PutLifecycleHookAnswer)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:put_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutNotificationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutNotificationConfigurationType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:put_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutScalingPolicyType)
        o.output = Shapes::ShapeRef.new(shape: PolicyARNType)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)

      api.add_operation(:put_scheduled_update_group_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutScheduledUpdateGroupAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutScheduledUpdateGroupActionType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:put_warm_pool, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutWarmPool"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutWarmPoolType)
        o.output = Shapes::ShapeRef.new(shape: PutWarmPoolAnswer)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:record_lifecycle_action_heartbeat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RecordLifecycleActionHeartbeat"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RecordLifecycleActionHeartbeatType)
        o.output = Shapes::ShapeRef.new(shape: RecordLifecycleActionHeartbeatAnswer)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:resume_processes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeProcesses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ScalingProcessQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:rollback_instance_refresh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RollbackInstanceRefresh"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RollbackInstanceRefreshType)
        o.output = Shapes::ShapeRef.new(shape: RollbackInstanceRefreshAnswer)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ActiveInstanceRefreshNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: IrreversibleInstanceRefreshFault)
      end)

      api.add_operation(:set_desired_capacity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetDesiredCapacity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetDesiredCapacityType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:set_instance_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetInstanceHealth"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetInstanceHealthQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:set_instance_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetInstanceProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetInstanceProtectionQuery)
        o.output = Shapes::ShapeRef.new(shape: SetInstanceProtectionAnswer)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:start_instance_refresh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartInstanceRefresh"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartInstanceRefreshType)
        o.output = Shapes::ShapeRef.new(shape: StartInstanceRefreshAnswer)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: InstanceRefreshInProgressFault)
      end)

      api.add_operation(:suspend_processes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SuspendProcesses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ScalingProcessQuery)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:terminate_instance_in_auto_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateInstanceInAutoScalingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateInstanceInAutoScalingGroupType)
        o.output = Shapes::ShapeRef.new(shape: ActivityType)
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
      end)

      api.add_operation(:update_auto_scaling_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAutoScalingGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAutoScalingGroupType)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ScalingActivityInProgressFault)
        o.errors << Shapes::ShapeRef.new(shape: ResourceContentionFault)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleFailure)
      end)
    end

  end
end
