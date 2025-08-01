# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ECS
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AdvancedConfiguration = Shapes::StructureShape.new(name: 'AdvancedConfiguration')
    AgentUpdateStatus = Shapes::StringShape.new(name: 'AgentUpdateStatus')
    ApplicationProtocol = Shapes::StringShape.new(name: 'ApplicationProtocol')
    AssignPublicIp = Shapes::StringShape.new(name: 'AssignPublicIp')
    Attachment = Shapes::StructureShape.new(name: 'Attachment')
    AttachmentDetails = Shapes::ListShape.new(name: 'AttachmentDetails')
    AttachmentStateChange = Shapes::StructureShape.new(name: 'AttachmentStateChange')
    AttachmentStateChanges = Shapes::ListShape.new(name: 'AttachmentStateChanges')
    Attachments = Shapes::ListShape.new(name: 'Attachments')
    Attribute = Shapes::StructureShape.new(name: 'Attribute')
    AttributeLimitExceededException = Shapes::StructureShape.new(name: 'AttributeLimitExceededException')
    Attributes = Shapes::ListShape.new(name: 'Attributes')
    AutoScalingGroupProvider = Shapes::StructureShape.new(name: 'AutoScalingGroupProvider')
    AutoScalingGroupProviderUpdate = Shapes::StructureShape.new(name: 'AutoScalingGroupProviderUpdate')
    AvailabilityZoneRebalancing = Shapes::StringShape.new(name: 'AvailabilityZoneRebalancing')
    AwsVpcConfiguration = Shapes::StructureShape.new(name: 'AwsVpcConfiguration')
    BlockedException = Shapes::StructureShape.new(name: 'BlockedException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BoxedInteger = Shapes::IntegerShape.new(name: 'BoxedInteger')
    CPUArchitecture = Shapes::StringShape.new(name: 'CPUArchitecture')
    CapacityProvider = Shapes::StructureShape.new(name: 'CapacityProvider')
    CapacityProviderField = Shapes::StringShape.new(name: 'CapacityProviderField')
    CapacityProviderFieldList = Shapes::ListShape.new(name: 'CapacityProviderFieldList')
    CapacityProviderStatus = Shapes::StringShape.new(name: 'CapacityProviderStatus')
    CapacityProviderStrategy = Shapes::ListShape.new(name: 'CapacityProviderStrategy')
    CapacityProviderStrategyItem = Shapes::StructureShape.new(name: 'CapacityProviderStrategyItem')
    CapacityProviderStrategyItemBase = Shapes::IntegerShape.new(name: 'CapacityProviderStrategyItemBase')
    CapacityProviderStrategyItemWeight = Shapes::IntegerShape.new(name: 'CapacityProviderStrategyItemWeight')
    CapacityProviderUpdateStatus = Shapes::StringShape.new(name: 'CapacityProviderUpdateStatus')
    CapacityProviders = Shapes::ListShape.new(name: 'CapacityProviders')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterConfiguration = Shapes::StructureShape.new(name: 'ClusterConfiguration')
    ClusterContainsContainerInstancesException = Shapes::StructureShape.new(name: 'ClusterContainsContainerInstancesException')
    ClusterContainsServicesException = Shapes::StructureShape.new(name: 'ClusterContainsServicesException')
    ClusterContainsTasksException = Shapes::StructureShape.new(name: 'ClusterContainsTasksException')
    ClusterField = Shapes::StringShape.new(name: 'ClusterField')
    ClusterFieldList = Shapes::ListShape.new(name: 'ClusterFieldList')
    ClusterNotFoundException = Shapes::StructureShape.new(name: 'ClusterNotFoundException')
    ClusterServiceConnectDefaults = Shapes::StructureShape.new(name: 'ClusterServiceConnectDefaults')
    ClusterServiceConnectDefaultsRequest = Shapes::StructureShape.new(name: 'ClusterServiceConnectDefaultsRequest')
    ClusterSetting = Shapes::StructureShape.new(name: 'ClusterSetting')
    ClusterSettingName = Shapes::StringShape.new(name: 'ClusterSettingName')
    ClusterSettings = Shapes::ListShape.new(name: 'ClusterSettings')
    Clusters = Shapes::ListShape.new(name: 'Clusters')
    Compatibility = Shapes::StringShape.new(name: 'Compatibility')
    CompatibilityList = Shapes::ListShape.new(name: 'CompatibilityList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Connectivity = Shapes::StringShape.new(name: 'Connectivity')
    Container = Shapes::StructureShape.new(name: 'Container')
    ContainerCondition = Shapes::StringShape.new(name: 'ContainerCondition')
    ContainerDefinition = Shapes::StructureShape.new(name: 'ContainerDefinition')
    ContainerDefinitions = Shapes::ListShape.new(name: 'ContainerDefinitions')
    ContainerDependencies = Shapes::ListShape.new(name: 'ContainerDependencies')
    ContainerDependency = Shapes::StructureShape.new(name: 'ContainerDependency')
    ContainerImage = Shapes::StructureShape.new(name: 'ContainerImage')
    ContainerImages = Shapes::ListShape.new(name: 'ContainerImages')
    ContainerInstance = Shapes::StructureShape.new(name: 'ContainerInstance')
    ContainerInstanceField = Shapes::StringShape.new(name: 'ContainerInstanceField')
    ContainerInstanceFieldList = Shapes::ListShape.new(name: 'ContainerInstanceFieldList')
    ContainerInstanceHealthStatus = Shapes::StructureShape.new(name: 'ContainerInstanceHealthStatus')
    ContainerInstanceStatus = Shapes::StringShape.new(name: 'ContainerInstanceStatus')
    ContainerInstances = Shapes::ListShape.new(name: 'ContainerInstances')
    ContainerOverride = Shapes::StructureShape.new(name: 'ContainerOverride')
    ContainerOverrides = Shapes::ListShape.new(name: 'ContainerOverrides')
    ContainerRestartPolicy = Shapes::StructureShape.new(name: 'ContainerRestartPolicy')
    ContainerStateChange = Shapes::StructureShape.new(name: 'ContainerStateChange')
    ContainerStateChanges = Shapes::ListShape.new(name: 'ContainerStateChanges')
    Containers = Shapes::ListShape.new(name: 'Containers')
    CreateCapacityProviderRequest = Shapes::StructureShape.new(name: 'CreateCapacityProviderRequest')
    CreateCapacityProviderResponse = Shapes::StructureShape.new(name: 'CreateCapacityProviderResponse')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateServiceRequest = Shapes::StructureShape.new(name: 'CreateServiceRequest')
    CreateServiceResponse = Shapes::StructureShape.new(name: 'CreateServiceResponse')
    CreateTaskSetRequest = Shapes::StructureShape.new(name: 'CreateTaskSetRequest')
    CreateTaskSetResponse = Shapes::StructureShape.new(name: 'CreateTaskSetResponse')
    CreatedAt = Shapes::StructureShape.new(name: 'CreatedAt')
    DeleteAccountSettingRequest = Shapes::StructureShape.new(name: 'DeleteAccountSettingRequest')
    DeleteAccountSettingResponse = Shapes::StructureShape.new(name: 'DeleteAccountSettingResponse')
    DeleteAttributesRequest = Shapes::StructureShape.new(name: 'DeleteAttributesRequest')
    DeleteAttributesResponse = Shapes::StructureShape.new(name: 'DeleteAttributesResponse')
    DeleteCapacityProviderRequest = Shapes::StructureShape.new(name: 'DeleteCapacityProviderRequest')
    DeleteCapacityProviderResponse = Shapes::StructureShape.new(name: 'DeleteCapacityProviderResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteServiceRequest = Shapes::StructureShape.new(name: 'DeleteServiceRequest')
    DeleteServiceResponse = Shapes::StructureShape.new(name: 'DeleteServiceResponse')
    DeleteTaskDefinitionsRequest = Shapes::StructureShape.new(name: 'DeleteTaskDefinitionsRequest')
    DeleteTaskDefinitionsResponse = Shapes::StructureShape.new(name: 'DeleteTaskDefinitionsResponse')
    DeleteTaskSetRequest = Shapes::StructureShape.new(name: 'DeleteTaskSetRequest')
    DeleteTaskSetResponse = Shapes::StructureShape.new(name: 'DeleteTaskSetResponse')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentAlarms = Shapes::StructureShape.new(name: 'DeploymentAlarms')
    DeploymentCircuitBreaker = Shapes::StructureShape.new(name: 'DeploymentCircuitBreaker')
    DeploymentConfiguration = Shapes::StructureShape.new(name: 'DeploymentConfiguration')
    DeploymentController = Shapes::StructureShape.new(name: 'DeploymentController')
    DeploymentControllerType = Shapes::StringShape.new(name: 'DeploymentControllerType')
    DeploymentEphemeralStorage = Shapes::StructureShape.new(name: 'DeploymentEphemeralStorage')
    DeploymentLifecycleHook = Shapes::StructureShape.new(name: 'DeploymentLifecycleHook')
    DeploymentLifecycleHookList = Shapes::ListShape.new(name: 'DeploymentLifecycleHookList')
    DeploymentLifecycleHookStage = Shapes::StringShape.new(name: 'DeploymentLifecycleHookStage')
    DeploymentLifecycleHookStageList = Shapes::ListShape.new(name: 'DeploymentLifecycleHookStageList')
    DeploymentRolloutState = Shapes::StringShape.new(name: 'DeploymentRolloutState')
    DeploymentStrategy = Shapes::StringShape.new(name: 'DeploymentStrategy')
    Deployments = Shapes::ListShape.new(name: 'Deployments')
    DeregisterContainerInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterContainerInstanceRequest')
    DeregisterContainerInstanceResponse = Shapes::StructureShape.new(name: 'DeregisterContainerInstanceResponse')
    DeregisterTaskDefinitionRequest = Shapes::StructureShape.new(name: 'DeregisterTaskDefinitionRequest')
    DeregisterTaskDefinitionResponse = Shapes::StructureShape.new(name: 'DeregisterTaskDefinitionResponse')
    DescribeCapacityProvidersRequest = Shapes::StructureShape.new(name: 'DescribeCapacityProvidersRequest')
    DescribeCapacityProvidersResponse = Shapes::StructureShape.new(name: 'DescribeCapacityProvidersResponse')
    DescribeClustersRequest = Shapes::StructureShape.new(name: 'DescribeClustersRequest')
    DescribeClustersResponse = Shapes::StructureShape.new(name: 'DescribeClustersResponse')
    DescribeContainerInstancesRequest = Shapes::StructureShape.new(name: 'DescribeContainerInstancesRequest')
    DescribeContainerInstancesResponse = Shapes::StructureShape.new(name: 'DescribeContainerInstancesResponse')
    DescribeServiceDeploymentsRequest = Shapes::StructureShape.new(name: 'DescribeServiceDeploymentsRequest')
    DescribeServiceDeploymentsResponse = Shapes::StructureShape.new(name: 'DescribeServiceDeploymentsResponse')
    DescribeServiceRevisionsRequest = Shapes::StructureShape.new(name: 'DescribeServiceRevisionsRequest')
    DescribeServiceRevisionsResponse = Shapes::StructureShape.new(name: 'DescribeServiceRevisionsResponse')
    DescribeServicesRequest = Shapes::StructureShape.new(name: 'DescribeServicesRequest')
    DescribeServicesResponse = Shapes::StructureShape.new(name: 'DescribeServicesResponse')
    DescribeTaskDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeTaskDefinitionRequest')
    DescribeTaskDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeTaskDefinitionResponse')
    DescribeTaskSetsRequest = Shapes::StructureShape.new(name: 'DescribeTaskSetsRequest')
    DescribeTaskSetsResponse = Shapes::StructureShape.new(name: 'DescribeTaskSetsResponse')
    DescribeTasksRequest = Shapes::StructureShape.new(name: 'DescribeTasksRequest')
    DescribeTasksResponse = Shapes::StructureShape.new(name: 'DescribeTasksResponse')
    DesiredStatus = Shapes::StringShape.new(name: 'DesiredStatus')
    Device = Shapes::StructureShape.new(name: 'Device')
    DeviceCgroupPermission = Shapes::StringShape.new(name: 'DeviceCgroupPermission')
    DeviceCgroupPermissions = Shapes::ListShape.new(name: 'DeviceCgroupPermissions')
    DevicesList = Shapes::ListShape.new(name: 'DevicesList')
    DiscoverPollEndpointRequest = Shapes::StructureShape.new(name: 'DiscoverPollEndpointRequest')
    DiscoverPollEndpointResponse = Shapes::StructureShape.new(name: 'DiscoverPollEndpointResponse')
    DockerLabelsMap = Shapes::MapShape.new(name: 'DockerLabelsMap')
    DockerVolumeConfiguration = Shapes::StructureShape.new(name: 'DockerVolumeConfiguration')
    Double = Shapes::FloatShape.new(name: 'Double')
    Duration = Shapes::IntegerShape.new(name: 'Duration')
    EBSKMSKeyId = Shapes::StringShape.new(name: 'EBSKMSKeyId')
    EBSResourceType = Shapes::StringShape.new(name: 'EBSResourceType')
    EBSSnapshotId = Shapes::StringShape.new(name: 'EBSSnapshotId')
    EBSTagSpecification = Shapes::StructureShape.new(name: 'EBSTagSpecification')
    EBSTagSpecifications = Shapes::ListShape.new(name: 'EBSTagSpecifications')
    EBSVolumeType = Shapes::StringShape.new(name: 'EBSVolumeType')
    ECSVolumeName = Shapes::StringShape.new(name: 'ECSVolumeName')
    EFSAuthorizationConfig = Shapes::StructureShape.new(name: 'EFSAuthorizationConfig')
    EFSAuthorizationConfigIAM = Shapes::StringShape.new(name: 'EFSAuthorizationConfigIAM')
    EFSTransitEncryption = Shapes::StringShape.new(name: 'EFSTransitEncryption')
    EFSVolumeConfiguration = Shapes::StructureShape.new(name: 'EFSVolumeConfiguration')
    EnvironmentFile = Shapes::StructureShape.new(name: 'EnvironmentFile')
    EnvironmentFileType = Shapes::StringShape.new(name: 'EnvironmentFileType')
    EnvironmentFiles = Shapes::ListShape.new(name: 'EnvironmentFiles')
    EnvironmentVariables = Shapes::ListShape.new(name: 'EnvironmentVariables')
    EphemeralStorage = Shapes::StructureShape.new(name: 'EphemeralStorage')
    ExecuteCommandConfiguration = Shapes::StructureShape.new(name: 'ExecuteCommandConfiguration')
    ExecuteCommandLogConfiguration = Shapes::StructureShape.new(name: 'ExecuteCommandLogConfiguration')
    ExecuteCommandLogging = Shapes::StringShape.new(name: 'ExecuteCommandLogging')
    ExecuteCommandRequest = Shapes::StructureShape.new(name: 'ExecuteCommandRequest')
    ExecuteCommandResponse = Shapes::StructureShape.new(name: 'ExecuteCommandResponse')
    FSxWindowsFileServerAuthorizationConfig = Shapes::StructureShape.new(name: 'FSxWindowsFileServerAuthorizationConfig')
    FSxWindowsFileServerVolumeConfiguration = Shapes::StructureShape.new(name: 'FSxWindowsFileServerVolumeConfiguration')
    Failure = Shapes::StructureShape.new(name: 'Failure')
    Failures = Shapes::ListShape.new(name: 'Failures')
    FirelensConfiguration = Shapes::StructureShape.new(name: 'FirelensConfiguration')
    FirelensConfigurationOptionsMap = Shapes::MapShape.new(name: 'FirelensConfigurationOptionsMap')
    FirelensConfigurationType = Shapes::StringShape.new(name: 'FirelensConfigurationType')
    GetTaskProtectionRequest = Shapes::StructureShape.new(name: 'GetTaskProtectionRequest')
    GetTaskProtectionResponse = Shapes::StructureShape.new(name: 'GetTaskProtectionResponse')
    GpuIds = Shapes::ListShape.new(name: 'GpuIds')
    HealthCheck = Shapes::StructureShape.new(name: 'HealthCheck')
    HealthStatus = Shapes::StringShape.new(name: 'HealthStatus')
    HostEntry = Shapes::StructureShape.new(name: 'HostEntry')
    HostEntryList = Shapes::ListShape.new(name: 'HostEntryList')
    HostVolumeProperties = Shapes::StructureShape.new(name: 'HostVolumeProperties')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    InferenceAccelerator = Shapes::StructureShape.new(name: 'InferenceAccelerator')
    InferenceAcceleratorOverride = Shapes::StructureShape.new(name: 'InferenceAcceleratorOverride')
    InferenceAcceleratorOverrides = Shapes::ListShape.new(name: 'InferenceAcceleratorOverrides')
    InferenceAccelerators = Shapes::ListShape.new(name: 'InferenceAccelerators')
    InstanceHealthCheckResult = Shapes::StructureShape.new(name: 'InstanceHealthCheckResult')
    InstanceHealthCheckResultList = Shapes::ListShape.new(name: 'InstanceHealthCheckResultList')
    InstanceHealthCheckState = Shapes::StringShape.new(name: 'InstanceHealthCheckState')
    InstanceHealthCheckType = Shapes::StringShape.new(name: 'InstanceHealthCheckType')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerList = Shapes::ListShape.new(name: 'IntegerList')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    IpcMode = Shapes::StringShape.new(name: 'IpcMode')
    KernelCapabilities = Shapes::StructureShape.new(name: 'KernelCapabilities')
    KeyValuePair = Shapes::StructureShape.new(name: 'KeyValuePair')
    LaunchType = Shapes::StringShape.new(name: 'LaunchType')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LinuxParameters = Shapes::StructureShape.new(name: 'LinuxParameters')
    ListAccountSettingsRequest = Shapes::StructureShape.new(name: 'ListAccountSettingsRequest')
    ListAccountSettingsResponse = Shapes::StructureShape.new(name: 'ListAccountSettingsResponse')
    ListAttributesRequest = Shapes::StructureShape.new(name: 'ListAttributesRequest')
    ListAttributesResponse = Shapes::StructureShape.new(name: 'ListAttributesResponse')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListContainerInstancesRequest = Shapes::StructureShape.new(name: 'ListContainerInstancesRequest')
    ListContainerInstancesResponse = Shapes::StructureShape.new(name: 'ListContainerInstancesResponse')
    ListServiceDeploymentsRequest = Shapes::StructureShape.new(name: 'ListServiceDeploymentsRequest')
    ListServiceDeploymentsResponse = Shapes::StructureShape.new(name: 'ListServiceDeploymentsResponse')
    ListServicesByNamespaceRequest = Shapes::StructureShape.new(name: 'ListServicesByNamespaceRequest')
    ListServicesByNamespaceResponse = Shapes::StructureShape.new(name: 'ListServicesByNamespaceResponse')
    ListServicesRequest = Shapes::StructureShape.new(name: 'ListServicesRequest')
    ListServicesResponse = Shapes::StructureShape.new(name: 'ListServicesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTaskDefinitionFamiliesRequest = Shapes::StructureShape.new(name: 'ListTaskDefinitionFamiliesRequest')
    ListTaskDefinitionFamiliesResponse = Shapes::StructureShape.new(name: 'ListTaskDefinitionFamiliesResponse')
    ListTaskDefinitionsRequest = Shapes::StructureShape.new(name: 'ListTaskDefinitionsRequest')
    ListTaskDefinitionsResponse = Shapes::StructureShape.new(name: 'ListTaskDefinitionsResponse')
    ListTasksRequest = Shapes::StructureShape.new(name: 'ListTasksRequest')
    ListTasksResponse = Shapes::StructureShape.new(name: 'ListTasksResponse')
    LoadBalancer = Shapes::StructureShape.new(name: 'LoadBalancer')
    LoadBalancers = Shapes::ListShape.new(name: 'LoadBalancers')
    LogConfiguration = Shapes::StructureShape.new(name: 'LogConfiguration')
    LogConfigurationOptionsMap = Shapes::MapShape.new(name: 'LogConfigurationOptionsMap')
    LogDriver = Shapes::StringShape.new(name: 'LogDriver')
    Long = Shapes::IntegerShape.new(name: 'Long')
    ManagedAgent = Shapes::StructureShape.new(name: 'ManagedAgent')
    ManagedAgentName = Shapes::StringShape.new(name: 'ManagedAgentName')
    ManagedAgentStateChange = Shapes::StructureShape.new(name: 'ManagedAgentStateChange')
    ManagedAgentStateChanges = Shapes::ListShape.new(name: 'ManagedAgentStateChanges')
    ManagedAgents = Shapes::ListShape.new(name: 'ManagedAgents')
    ManagedDraining = Shapes::StringShape.new(name: 'ManagedDraining')
    ManagedScaling = Shapes::StructureShape.new(name: 'ManagedScaling')
    ManagedScalingInstanceWarmupPeriod = Shapes::IntegerShape.new(name: 'ManagedScalingInstanceWarmupPeriod')
    ManagedScalingStatus = Shapes::StringShape.new(name: 'ManagedScalingStatus')
    ManagedScalingStepSize = Shapes::IntegerShape.new(name: 'ManagedScalingStepSize')
    ManagedScalingTargetCapacity = Shapes::IntegerShape.new(name: 'ManagedScalingTargetCapacity')
    ManagedStorageConfiguration = Shapes::StructureShape.new(name: 'ManagedStorageConfiguration')
    ManagedTerminationProtection = Shapes::StringShape.new(name: 'ManagedTerminationProtection')
    MissingVersionException = Shapes::StructureShape.new(name: 'MissingVersionException')
    MountPoint = Shapes::StructureShape.new(name: 'MountPoint')
    MountPointList = Shapes::ListShape.new(name: 'MountPointList')
    NamespaceNotFoundException = Shapes::StructureShape.new(name: 'NamespaceNotFoundException')
    NetworkBinding = Shapes::StructureShape.new(name: 'NetworkBinding')
    NetworkBindings = Shapes::ListShape.new(name: 'NetworkBindings')
    NetworkConfiguration = Shapes::StructureShape.new(name: 'NetworkConfiguration')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaces = Shapes::ListShape.new(name: 'NetworkInterfaces')
    NetworkMode = Shapes::StringShape.new(name: 'NetworkMode')
    NoUpdateAvailableException = Shapes::StructureShape.new(name: 'NoUpdateAvailableException')
    OSFamily = Shapes::StringShape.new(name: 'OSFamily')
    PidMode = Shapes::StringShape.new(name: 'PidMode')
    PlacementConstraint = Shapes::StructureShape.new(name: 'PlacementConstraint')
    PlacementConstraintType = Shapes::StringShape.new(name: 'PlacementConstraintType')
    PlacementConstraints = Shapes::ListShape.new(name: 'PlacementConstraints')
    PlacementStrategies = Shapes::ListShape.new(name: 'PlacementStrategies')
    PlacementStrategy = Shapes::StructureShape.new(name: 'PlacementStrategy')
    PlacementStrategyType = Shapes::StringShape.new(name: 'PlacementStrategyType')
    PlatformDevice = Shapes::StructureShape.new(name: 'PlatformDevice')
    PlatformDeviceType = Shapes::StringShape.new(name: 'PlatformDeviceType')
    PlatformDevices = Shapes::ListShape.new(name: 'PlatformDevices')
    PlatformTaskDefinitionIncompatibilityException = Shapes::StructureShape.new(name: 'PlatformTaskDefinitionIncompatibilityException')
    PlatformUnknownException = Shapes::StructureShape.new(name: 'PlatformUnknownException')
    PortMapping = Shapes::StructureShape.new(name: 'PortMapping')
    PortMappingList = Shapes::ListShape.new(name: 'PortMappingList')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PropagateTags = Shapes::StringShape.new(name: 'PropagateTags')
    ProtectedTask = Shapes::StructureShape.new(name: 'ProtectedTask')
    ProtectedTasks = Shapes::ListShape.new(name: 'ProtectedTasks')
    ProxyConfiguration = Shapes::StructureShape.new(name: 'ProxyConfiguration')
    ProxyConfigurationProperties = Shapes::ListShape.new(name: 'ProxyConfigurationProperties')
    ProxyConfigurationType = Shapes::StringShape.new(name: 'ProxyConfigurationType')
    PutAccountSettingDefaultRequest = Shapes::StructureShape.new(name: 'PutAccountSettingDefaultRequest')
    PutAccountSettingDefaultResponse = Shapes::StructureShape.new(name: 'PutAccountSettingDefaultResponse')
    PutAccountSettingRequest = Shapes::StructureShape.new(name: 'PutAccountSettingRequest')
    PutAccountSettingResponse = Shapes::StructureShape.new(name: 'PutAccountSettingResponse')
    PutAttributesRequest = Shapes::StructureShape.new(name: 'PutAttributesRequest')
    PutAttributesResponse = Shapes::StructureShape.new(name: 'PutAttributesResponse')
    PutClusterCapacityProvidersRequest = Shapes::StructureShape.new(name: 'PutClusterCapacityProvidersRequest')
    PutClusterCapacityProvidersResponse = Shapes::StructureShape.new(name: 'PutClusterCapacityProvidersResponse')
    RegisterContainerInstanceRequest = Shapes::StructureShape.new(name: 'RegisterContainerInstanceRequest')
    RegisterContainerInstanceResponse = Shapes::StructureShape.new(name: 'RegisterContainerInstanceResponse')
    RegisterTaskDefinitionRequest = Shapes::StructureShape.new(name: 'RegisterTaskDefinitionRequest')
    RegisterTaskDefinitionResponse = Shapes::StructureShape.new(name: 'RegisterTaskDefinitionResponse')
    RepositoryCredentials = Shapes::StructureShape.new(name: 'RepositoryCredentials')
    RequiresAttributes = Shapes::ListShape.new(name: 'RequiresAttributes')
    ResolvedConfiguration = Shapes::StructureShape.new(name: 'ResolvedConfiguration')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceIds = Shapes::ListShape.new(name: 'ResourceIds')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceRequirement = Shapes::StructureShape.new(name: 'ResourceRequirement')
    ResourceRequirements = Shapes::ListShape.new(name: 'ResourceRequirements')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Resources = Shapes::ListShape.new(name: 'Resources')
    Rollback = Shapes::StructureShape.new(name: 'Rollback')
    RunTaskRequest = Shapes::StructureShape.new(name: 'RunTaskRequest')
    RunTaskResponse = Shapes::StructureShape.new(name: 'RunTaskResponse')
    RuntimePlatform = Shapes::StructureShape.new(name: 'RuntimePlatform')
    Scale = Shapes::StructureShape.new(name: 'Scale')
    ScaleUnit = Shapes::StringShape.new(name: 'ScaleUnit')
    SchedulingStrategy = Shapes::StringShape.new(name: 'SchedulingStrategy')
    Scope = Shapes::StringShape.new(name: 'Scope')
    Secret = Shapes::StructureShape.new(name: 'Secret')
    SecretList = Shapes::ListShape.new(name: 'SecretList')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceConnectClientAlias = Shapes::StructureShape.new(name: 'ServiceConnectClientAlias')
    ServiceConnectClientAliasList = Shapes::ListShape.new(name: 'ServiceConnectClientAliasList')
    ServiceConnectConfiguration = Shapes::StructureShape.new(name: 'ServiceConnectConfiguration')
    ServiceConnectService = Shapes::StructureShape.new(name: 'ServiceConnectService')
    ServiceConnectServiceList = Shapes::ListShape.new(name: 'ServiceConnectServiceList')
    ServiceConnectServiceResource = Shapes::StructureShape.new(name: 'ServiceConnectServiceResource')
    ServiceConnectServiceResourceList = Shapes::ListShape.new(name: 'ServiceConnectServiceResourceList')
    ServiceConnectTestTrafficHeaderMatchRules = Shapes::StructureShape.new(name: 'ServiceConnectTestTrafficHeaderMatchRules')
    ServiceConnectTestTrafficHeaderRules = Shapes::StructureShape.new(name: 'ServiceConnectTestTrafficHeaderRules')
    ServiceConnectTestTrafficRules = Shapes::StructureShape.new(name: 'ServiceConnectTestTrafficRules')
    ServiceConnectTlsCertificateAuthority = Shapes::StructureShape.new(name: 'ServiceConnectTlsCertificateAuthority')
    ServiceConnectTlsConfiguration = Shapes::StructureShape.new(name: 'ServiceConnectTlsConfiguration')
    ServiceDeployment = Shapes::StructureShape.new(name: 'ServiceDeployment')
    ServiceDeploymentAlarms = Shapes::StructureShape.new(name: 'ServiceDeploymentAlarms')
    ServiceDeploymentBrief = Shapes::StructureShape.new(name: 'ServiceDeploymentBrief')
    ServiceDeploymentCircuitBreaker = Shapes::StructureShape.new(name: 'ServiceDeploymentCircuitBreaker')
    ServiceDeploymentLifecycleStage = Shapes::StringShape.new(name: 'ServiceDeploymentLifecycleStage')
    ServiceDeploymentNotFoundException = Shapes::StructureShape.new(name: 'ServiceDeploymentNotFoundException')
    ServiceDeploymentRollbackMonitorsStatus = Shapes::StringShape.new(name: 'ServiceDeploymentRollbackMonitorsStatus')
    ServiceDeploymentStatus = Shapes::StringShape.new(name: 'ServiceDeploymentStatus')
    ServiceDeploymentStatusList = Shapes::ListShape.new(name: 'ServiceDeploymentStatusList')
    ServiceDeployments = Shapes::ListShape.new(name: 'ServiceDeployments')
    ServiceDeploymentsBrief = Shapes::ListShape.new(name: 'ServiceDeploymentsBrief')
    ServiceEvent = Shapes::StructureShape.new(name: 'ServiceEvent')
    ServiceEvents = Shapes::ListShape.new(name: 'ServiceEvents')
    ServiceField = Shapes::StringShape.new(name: 'ServiceField')
    ServiceFieldList = Shapes::ListShape.new(name: 'ServiceFieldList')
    ServiceManagedEBSVolumeConfiguration = Shapes::StructureShape.new(name: 'ServiceManagedEBSVolumeConfiguration')
    ServiceNotActiveException = Shapes::StructureShape.new(name: 'ServiceNotActiveException')
    ServiceNotFoundException = Shapes::StructureShape.new(name: 'ServiceNotFoundException')
    ServiceRegistries = Shapes::ListShape.new(name: 'ServiceRegistries')
    ServiceRegistry = Shapes::StructureShape.new(name: 'ServiceRegistry')
    ServiceRevision = Shapes::StructureShape.new(name: 'ServiceRevision')
    ServiceRevisionLoadBalancer = Shapes::StructureShape.new(name: 'ServiceRevisionLoadBalancer')
    ServiceRevisionLoadBalancers = Shapes::ListShape.new(name: 'ServiceRevisionLoadBalancers')
    ServiceRevisionSummary = Shapes::StructureShape.new(name: 'ServiceRevisionSummary')
    ServiceRevisions = Shapes::ListShape.new(name: 'ServiceRevisions')
    ServiceRevisionsSummaryList = Shapes::ListShape.new(name: 'ServiceRevisionsSummaryList')
    ServiceVolumeConfiguration = Shapes::StructureShape.new(name: 'ServiceVolumeConfiguration')
    ServiceVolumeConfigurations = Shapes::ListShape.new(name: 'ServiceVolumeConfigurations')
    Services = Shapes::ListShape.new(name: 'Services')
    Session = Shapes::StructureShape.new(name: 'Session')
    Setting = Shapes::StructureShape.new(name: 'Setting')
    SettingName = Shapes::StringShape.new(name: 'SettingName')
    SettingType = Shapes::StringShape.new(name: 'SettingType')
    Settings = Shapes::ListShape.new(name: 'Settings')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StabilityStatus = Shapes::StringShape.new(name: 'StabilityStatus')
    StartTaskRequest = Shapes::StructureShape.new(name: 'StartTaskRequest')
    StartTaskResponse = Shapes::StructureShape.new(name: 'StartTaskResponse')
    Statistics = Shapes::ListShape.new(name: 'Statistics')
    StopServiceDeploymentRequest = Shapes::StructureShape.new(name: 'StopServiceDeploymentRequest')
    StopServiceDeploymentResponse = Shapes::StructureShape.new(name: 'StopServiceDeploymentResponse')
    StopServiceDeploymentStopType = Shapes::StringShape.new(name: 'StopServiceDeploymentStopType')
    StopTaskRequest = Shapes::StructureShape.new(name: 'StopTaskRequest')
    StopTaskResponse = Shapes::StructureShape.new(name: 'StopTaskResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    SubmitAttachmentStateChangesRequest = Shapes::StructureShape.new(name: 'SubmitAttachmentStateChangesRequest')
    SubmitAttachmentStateChangesResponse = Shapes::StructureShape.new(name: 'SubmitAttachmentStateChangesResponse')
    SubmitContainerStateChangeRequest = Shapes::StructureShape.new(name: 'SubmitContainerStateChangeRequest')
    SubmitContainerStateChangeResponse = Shapes::StructureShape.new(name: 'SubmitContainerStateChangeResponse')
    SubmitTaskStateChangeRequest = Shapes::StructureShape.new(name: 'SubmitTaskStateChangeRequest')
    SubmitTaskStateChangeResponse = Shapes::StructureShape.new(name: 'SubmitTaskStateChangeResponse')
    SystemControl = Shapes::StructureShape.new(name: 'SystemControl')
    SystemControls = Shapes::ListShape.new(name: 'SystemControls')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TargetNotConnectedException = Shapes::StructureShape.new(name: 'TargetNotConnectedException')
    TargetNotFoundException = Shapes::StructureShape.new(name: 'TargetNotFoundException')
    TargetType = Shapes::StringShape.new(name: 'TargetType')
    Task = Shapes::StructureShape.new(name: 'Task')
    TaskDefinition = Shapes::StructureShape.new(name: 'TaskDefinition')
    TaskDefinitionFamilyStatus = Shapes::StringShape.new(name: 'TaskDefinitionFamilyStatus')
    TaskDefinitionField = Shapes::StringShape.new(name: 'TaskDefinitionField')
    TaskDefinitionFieldList = Shapes::ListShape.new(name: 'TaskDefinitionFieldList')
    TaskDefinitionList = Shapes::ListShape.new(name: 'TaskDefinitionList')
    TaskDefinitionPlacementConstraint = Shapes::StructureShape.new(name: 'TaskDefinitionPlacementConstraint')
    TaskDefinitionPlacementConstraintType = Shapes::StringShape.new(name: 'TaskDefinitionPlacementConstraintType')
    TaskDefinitionPlacementConstraints = Shapes::ListShape.new(name: 'TaskDefinitionPlacementConstraints')
    TaskDefinitionStatus = Shapes::StringShape.new(name: 'TaskDefinitionStatus')
    TaskEphemeralStorage = Shapes::StructureShape.new(name: 'TaskEphemeralStorage')
    TaskField = Shapes::StringShape.new(name: 'TaskField')
    TaskFieldList = Shapes::ListShape.new(name: 'TaskFieldList')
    TaskFilesystemType = Shapes::StringShape.new(name: 'TaskFilesystemType')
    TaskManagedEBSVolumeConfiguration = Shapes::StructureShape.new(name: 'TaskManagedEBSVolumeConfiguration')
    TaskManagedEBSVolumeTerminationPolicy = Shapes::StructureShape.new(name: 'TaskManagedEBSVolumeTerminationPolicy')
    TaskOverride = Shapes::StructureShape.new(name: 'TaskOverride')
    TaskSet = Shapes::StructureShape.new(name: 'TaskSet')
    TaskSetField = Shapes::StringShape.new(name: 'TaskSetField')
    TaskSetFieldList = Shapes::ListShape.new(name: 'TaskSetFieldList')
    TaskSetNotFoundException = Shapes::StructureShape.new(name: 'TaskSetNotFoundException')
    TaskSets = Shapes::ListShape.new(name: 'TaskSets')
    TaskStopCode = Shapes::StringShape.new(name: 'TaskStopCode')
    TaskVolumeConfiguration = Shapes::StructureShape.new(name: 'TaskVolumeConfiguration')
    TaskVolumeConfigurations = Shapes::ListShape.new(name: 'TaskVolumeConfigurations')
    Tasks = Shapes::ListShape.new(name: 'Tasks')
    TimeoutConfiguration = Shapes::StructureShape.new(name: 'TimeoutConfiguration')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Tmpfs = Shapes::StructureShape.new(name: 'Tmpfs')
    TmpfsList = Shapes::ListShape.new(name: 'TmpfsList')
    TransportProtocol = Shapes::StringShape.new(name: 'TransportProtocol')
    Ulimit = Shapes::StructureShape.new(name: 'Ulimit')
    UlimitList = Shapes::ListShape.new(name: 'UlimitList')
    UlimitName = Shapes::StringShape.new(name: 'UlimitName')
    UnsupportedFeatureException = Shapes::StructureShape.new(name: 'UnsupportedFeatureException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCapacityProviderRequest = Shapes::StructureShape.new(name: 'UpdateCapacityProviderRequest')
    UpdateCapacityProviderResponse = Shapes::StructureShape.new(name: 'UpdateCapacityProviderResponse')
    UpdateClusterRequest = Shapes::StructureShape.new(name: 'UpdateClusterRequest')
    UpdateClusterResponse = Shapes::StructureShape.new(name: 'UpdateClusterResponse')
    UpdateClusterSettingsRequest = Shapes::StructureShape.new(name: 'UpdateClusterSettingsRequest')
    UpdateClusterSettingsResponse = Shapes::StructureShape.new(name: 'UpdateClusterSettingsResponse')
    UpdateContainerAgentRequest = Shapes::StructureShape.new(name: 'UpdateContainerAgentRequest')
    UpdateContainerAgentResponse = Shapes::StructureShape.new(name: 'UpdateContainerAgentResponse')
    UpdateContainerInstancesStateRequest = Shapes::StructureShape.new(name: 'UpdateContainerInstancesStateRequest')
    UpdateContainerInstancesStateResponse = Shapes::StructureShape.new(name: 'UpdateContainerInstancesStateResponse')
    UpdateInProgressException = Shapes::StructureShape.new(name: 'UpdateInProgressException')
    UpdateServicePrimaryTaskSetRequest = Shapes::StructureShape.new(name: 'UpdateServicePrimaryTaskSetRequest')
    UpdateServicePrimaryTaskSetResponse = Shapes::StructureShape.new(name: 'UpdateServicePrimaryTaskSetResponse')
    UpdateServiceRequest = Shapes::StructureShape.new(name: 'UpdateServiceRequest')
    UpdateServiceResponse = Shapes::StructureShape.new(name: 'UpdateServiceResponse')
    UpdateTaskProtectionRequest = Shapes::StructureShape.new(name: 'UpdateTaskProtectionRequest')
    UpdateTaskProtectionResponse = Shapes::StructureShape.new(name: 'UpdateTaskProtectionResponse')
    UpdateTaskSetRequest = Shapes::StructureShape.new(name: 'UpdateTaskSetRequest')
    UpdateTaskSetResponse = Shapes::StructureShape.new(name: 'UpdateTaskSetResponse')
    VersionConsistency = Shapes::StringShape.new(name: 'VersionConsistency')
    VersionInfo = Shapes::StructureShape.new(name: 'VersionInfo')
    Volume = Shapes::StructureShape.new(name: 'Volume')
    VolumeFrom = Shapes::StructureShape.new(name: 'VolumeFrom')
    VolumeFromList = Shapes::ListShape.new(name: 'VolumeFromList')
    VolumeList = Shapes::ListShape.new(name: 'VolumeList')
    VpcLatticeConfiguration = Shapes::StructureShape.new(name: 'VpcLatticeConfiguration')
    VpcLatticeConfigurations = Shapes::ListShape.new(name: 'VpcLatticeConfigurations')

    AccessDeniedException.struct_class = Types::AccessDeniedException

    AdvancedConfiguration.add_member(:alternate_target_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "alternateTargetGroupArn"))
    AdvancedConfiguration.add_member(:production_listener_rule, Shapes::ShapeRef.new(shape: String, location_name: "productionListenerRule"))
    AdvancedConfiguration.add_member(:test_listener_rule, Shapes::ShapeRef.new(shape: String, location_name: "testListenerRule"))
    AdvancedConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    AdvancedConfiguration.struct_class = Types::AdvancedConfiguration

    Attachment.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Attachment.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    Attachment.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    Attachment.add_member(:details, Shapes::ShapeRef.new(shape: AttachmentDetails, location_name: "details"))
    Attachment.struct_class = Types::Attachment

    AttachmentDetails.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    AttachmentStateChange.add_member(:attachment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "attachmentArn"))
    AttachmentStateChange.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    AttachmentStateChange.struct_class = Types::AttachmentStateChange

    AttachmentStateChanges.member = Shapes::ShapeRef.new(shape: AttachmentStateChange)

    Attachments.member = Shapes::ShapeRef.new(shape: Attachment)

    Attribute.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Attribute.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    Attribute.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, location_name: "targetType"))
    Attribute.add_member(:target_id, Shapes::ShapeRef.new(shape: String, location_name: "targetId"))
    Attribute.struct_class = Types::Attribute

    AttributeLimitExceededException.struct_class = Types::AttributeLimitExceededException

    Attributes.member = Shapes::ShapeRef.new(shape: Attribute)

    AutoScalingGroupProvider.add_member(:auto_scaling_group_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "autoScalingGroupArn"))
    AutoScalingGroupProvider.add_member(:managed_scaling, Shapes::ShapeRef.new(shape: ManagedScaling, location_name: "managedScaling"))
    AutoScalingGroupProvider.add_member(:managed_termination_protection, Shapes::ShapeRef.new(shape: ManagedTerminationProtection, location_name: "managedTerminationProtection"))
    AutoScalingGroupProvider.add_member(:managed_draining, Shapes::ShapeRef.new(shape: ManagedDraining, location_name: "managedDraining"))
    AutoScalingGroupProvider.struct_class = Types::AutoScalingGroupProvider

    AutoScalingGroupProviderUpdate.add_member(:managed_scaling, Shapes::ShapeRef.new(shape: ManagedScaling, location_name: "managedScaling"))
    AutoScalingGroupProviderUpdate.add_member(:managed_termination_protection, Shapes::ShapeRef.new(shape: ManagedTerminationProtection, location_name: "managedTerminationProtection"))
    AutoScalingGroupProviderUpdate.add_member(:managed_draining, Shapes::ShapeRef.new(shape: ManagedDraining, location_name: "managedDraining"))
    AutoScalingGroupProviderUpdate.struct_class = Types::AutoScalingGroupProviderUpdate

    AwsVpcConfiguration.add_member(:subnets, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "subnets"))
    AwsVpcConfiguration.add_member(:security_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroups"))
    AwsVpcConfiguration.add_member(:assign_public_ip, Shapes::ShapeRef.new(shape: AssignPublicIp, location_name: "assignPublicIp"))
    AwsVpcConfiguration.struct_class = Types::AwsVpcConfiguration

    BlockedException.struct_class = Types::BlockedException

    CapacityProvider.add_member(:capacity_provider_arn, Shapes::ShapeRef.new(shape: String, location_name: "capacityProviderArn"))
    CapacityProvider.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    CapacityProvider.add_member(:status, Shapes::ShapeRef.new(shape: CapacityProviderStatus, location_name: "status"))
    CapacityProvider.add_member(:auto_scaling_group_provider, Shapes::ShapeRef.new(shape: AutoScalingGroupProvider, location_name: "autoScalingGroupProvider"))
    CapacityProvider.add_member(:update_status, Shapes::ShapeRef.new(shape: CapacityProviderUpdateStatus, location_name: "updateStatus"))
    CapacityProvider.add_member(:update_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "updateStatusReason"))
    CapacityProvider.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CapacityProvider.struct_class = Types::CapacityProvider

    CapacityProviderFieldList.member = Shapes::ShapeRef.new(shape: CapacityProviderField)

    CapacityProviderStrategy.member = Shapes::ShapeRef.new(shape: CapacityProviderStrategyItem)

    CapacityProviderStrategyItem.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "capacityProvider"))
    CapacityProviderStrategyItem.add_member(:weight, Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemWeight, location_name: "weight"))
    CapacityProviderStrategyItem.add_member(:base, Shapes::ShapeRef.new(shape: CapacityProviderStrategyItemBase, location_name: "base"))
    CapacityProviderStrategyItem.struct_class = Types::CapacityProviderStrategyItem

    CapacityProviders.member = Shapes::ShapeRef.new(shape: CapacityProvider)

    ClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ClientException.struct_class = Types::ClientException

    Cluster.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    Cluster.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    Cluster.add_member(:configuration, Shapes::ShapeRef.new(shape: ClusterConfiguration, location_name: "configuration"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    Cluster.add_member(:registered_container_instances_count, Shapes::ShapeRef.new(shape: Integer, location_name: "registeredContainerInstancesCount"))
    Cluster.add_member(:running_tasks_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningTasksCount"))
    Cluster.add_member(:pending_tasks_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingTasksCount"))
    Cluster.add_member(:active_services_count, Shapes::ShapeRef.new(shape: Integer, location_name: "activeServicesCount"))
    Cluster.add_member(:statistics, Shapes::ShapeRef.new(shape: Statistics, location_name: "statistics"))
    Cluster.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Cluster.add_member(:settings, Shapes::ShapeRef.new(shape: ClusterSettings, location_name: "settings"))
    Cluster.add_member(:capacity_providers, Shapes::ShapeRef.new(shape: StringList, location_name: "capacityProviders"))
    Cluster.add_member(:default_capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "defaultCapacityProviderStrategy"))
    Cluster.add_member(:attachments, Shapes::ShapeRef.new(shape: Attachments, location_name: "attachments"))
    Cluster.add_member(:attachments_status, Shapes::ShapeRef.new(shape: String, location_name: "attachmentsStatus"))
    Cluster.add_member(:service_connect_defaults, Shapes::ShapeRef.new(shape: ClusterServiceConnectDefaults, location_name: "serviceConnectDefaults"))
    Cluster.struct_class = Types::Cluster

    ClusterConfiguration.add_member(:execute_command_configuration, Shapes::ShapeRef.new(shape: ExecuteCommandConfiguration, location_name: "executeCommandConfiguration"))
    ClusterConfiguration.add_member(:managed_storage_configuration, Shapes::ShapeRef.new(shape: ManagedStorageConfiguration, location_name: "managedStorageConfiguration"))
    ClusterConfiguration.struct_class = Types::ClusterConfiguration

    ClusterContainsContainerInstancesException.struct_class = Types::ClusterContainsContainerInstancesException

    ClusterContainsServicesException.struct_class = Types::ClusterContainsServicesException

    ClusterContainsTasksException.struct_class = Types::ClusterContainsTasksException

    ClusterFieldList.member = Shapes::ShapeRef.new(shape: ClusterField)

    ClusterNotFoundException.struct_class = Types::ClusterNotFoundException

    ClusterServiceConnectDefaults.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    ClusterServiceConnectDefaults.struct_class = Types::ClusterServiceConnectDefaults

    ClusterServiceConnectDefaultsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: String, required: true, location_name: "namespace"))
    ClusterServiceConnectDefaultsRequest.struct_class = Types::ClusterServiceConnectDefaultsRequest

    ClusterSetting.add_member(:name, Shapes::ShapeRef.new(shape: ClusterSettingName, location_name: "name"))
    ClusterSetting.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ClusterSetting.struct_class = Types::ClusterSetting

    ClusterSettings.member = Shapes::ShapeRef.new(shape: ClusterSetting)

    Clusters.member = Shapes::ShapeRef.new(shape: Cluster)

    CompatibilityList.member = Shapes::ShapeRef.new(shape: Compatibility)

    ConflictException.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ResourceIds, location_name: "resourceIds"))
    ConflictException.struct_class = Types::ConflictException

    Container.add_member(:container_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerArn"))
    Container.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    Container.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Container.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    Container.add_member(:image_digest, Shapes::ShapeRef.new(shape: String, location_name: "imageDigest"))
    Container.add_member(:runtime_id, Shapes::ShapeRef.new(shape: String, location_name: "runtimeId"))
    Container.add_member(:last_status, Shapes::ShapeRef.new(shape: String, location_name: "lastStatus"))
    Container.add_member(:exit_code, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "exitCode"))
    Container.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    Container.add_member(:network_bindings, Shapes::ShapeRef.new(shape: NetworkBindings, location_name: "networkBindings"))
    Container.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaces, location_name: "networkInterfaces"))
    Container.add_member(:health_status, Shapes::ShapeRef.new(shape: HealthStatus, location_name: "healthStatus"))
    Container.add_member(:managed_agents, Shapes::ShapeRef.new(shape: ManagedAgents, location_name: "managedAgents"))
    Container.add_member(:cpu, Shapes::ShapeRef.new(shape: String, location_name: "cpu"))
    Container.add_member(:memory, Shapes::ShapeRef.new(shape: String, location_name: "memory"))
    Container.add_member(:memory_reservation, Shapes::ShapeRef.new(shape: String, location_name: "memoryReservation"))
    Container.add_member(:gpu_ids, Shapes::ShapeRef.new(shape: GpuIds, location_name: "gpuIds"))
    Container.struct_class = Types::Container

    ContainerDefinition.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ContainerDefinition.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    ContainerDefinition.add_member(:repository_credentials, Shapes::ShapeRef.new(shape: RepositoryCredentials, location_name: "repositoryCredentials"))
    ContainerDefinition.add_member(:cpu, Shapes::ShapeRef.new(shape: Integer, location_name: "cpu"))
    ContainerDefinition.add_member(:memory, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "memory"))
    ContainerDefinition.add_member(:memory_reservation, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "memoryReservation"))
    ContainerDefinition.add_member(:links, Shapes::ShapeRef.new(shape: StringList, location_name: "links"))
    ContainerDefinition.add_member(:port_mappings, Shapes::ShapeRef.new(shape: PortMappingList, location_name: "portMappings"))
    ContainerDefinition.add_member(:essential, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "essential"))
    ContainerDefinition.add_member(:restart_policy, Shapes::ShapeRef.new(shape: ContainerRestartPolicy, location_name: "restartPolicy"))
    ContainerDefinition.add_member(:entry_point, Shapes::ShapeRef.new(shape: StringList, location_name: "entryPoint"))
    ContainerDefinition.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    ContainerDefinition.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    ContainerDefinition.add_member(:environment_files, Shapes::ShapeRef.new(shape: EnvironmentFiles, location_name: "environmentFiles"))
    ContainerDefinition.add_member(:mount_points, Shapes::ShapeRef.new(shape: MountPointList, location_name: "mountPoints"))
    ContainerDefinition.add_member(:volumes_from, Shapes::ShapeRef.new(shape: VolumeFromList, location_name: "volumesFrom"))
    ContainerDefinition.add_member(:linux_parameters, Shapes::ShapeRef.new(shape: LinuxParameters, location_name: "linuxParameters"))
    ContainerDefinition.add_member(:secrets, Shapes::ShapeRef.new(shape: SecretList, location_name: "secrets"))
    ContainerDefinition.add_member(:depends_on, Shapes::ShapeRef.new(shape: ContainerDependencies, location_name: "dependsOn"))
    ContainerDefinition.add_member(:start_timeout, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "startTimeout"))
    ContainerDefinition.add_member(:stop_timeout, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "stopTimeout"))
    ContainerDefinition.add_member(:version_consistency, Shapes::ShapeRef.new(shape: VersionConsistency, location_name: "versionConsistency"))
    ContainerDefinition.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "hostname"))
    ContainerDefinition.add_member(:user, Shapes::ShapeRef.new(shape: String, location_name: "user"))
    ContainerDefinition.add_member(:working_directory, Shapes::ShapeRef.new(shape: String, location_name: "workingDirectory"))
    ContainerDefinition.add_member(:disable_networking, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "disableNetworking"))
    ContainerDefinition.add_member(:privileged, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "privileged"))
    ContainerDefinition.add_member(:readonly_root_filesystem, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "readonlyRootFilesystem"))
    ContainerDefinition.add_member(:dns_servers, Shapes::ShapeRef.new(shape: StringList, location_name: "dnsServers"))
    ContainerDefinition.add_member(:dns_search_domains, Shapes::ShapeRef.new(shape: StringList, location_name: "dnsSearchDomains"))
    ContainerDefinition.add_member(:extra_hosts, Shapes::ShapeRef.new(shape: HostEntryList, location_name: "extraHosts"))
    ContainerDefinition.add_member(:docker_security_options, Shapes::ShapeRef.new(shape: StringList, location_name: "dockerSecurityOptions"))
    ContainerDefinition.add_member(:interactive, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "interactive"))
    ContainerDefinition.add_member(:pseudo_terminal, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "pseudoTerminal"))
    ContainerDefinition.add_member(:docker_labels, Shapes::ShapeRef.new(shape: DockerLabelsMap, location_name: "dockerLabels"))
    ContainerDefinition.add_member(:ulimits, Shapes::ShapeRef.new(shape: UlimitList, location_name: "ulimits"))
    ContainerDefinition.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "logConfiguration"))
    ContainerDefinition.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheck, location_name: "healthCheck"))
    ContainerDefinition.add_member(:system_controls, Shapes::ShapeRef.new(shape: SystemControls, location_name: "systemControls"))
    ContainerDefinition.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: "resourceRequirements"))
    ContainerDefinition.add_member(:firelens_configuration, Shapes::ShapeRef.new(shape: FirelensConfiguration, location_name: "firelensConfiguration"))
    ContainerDefinition.add_member(:credential_specs, Shapes::ShapeRef.new(shape: StringList, location_name: "credentialSpecs"))
    ContainerDefinition.struct_class = Types::ContainerDefinition

    ContainerDefinitions.member = Shapes::ShapeRef.new(shape: ContainerDefinition)

    ContainerDependencies.member = Shapes::ShapeRef.new(shape: ContainerDependency)

    ContainerDependency.add_member(:container_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerName"))
    ContainerDependency.add_member(:condition, Shapes::ShapeRef.new(shape: ContainerCondition, required: true, location_name: "condition"))
    ContainerDependency.struct_class = Types::ContainerDependency

    ContainerImage.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    ContainerImage.add_member(:image_digest, Shapes::ShapeRef.new(shape: String, location_name: "imageDigest"))
    ContainerImage.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
    ContainerImage.struct_class = Types::ContainerImage

    ContainerImages.member = Shapes::ShapeRef.new(shape: ContainerImage)

    ContainerInstance.add_member(:container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerInstanceArn"))
    ContainerInstance.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: String, location_name: "ec2InstanceId"))
    ContainerInstance.add_member(:capacity_provider_name, Shapes::ShapeRef.new(shape: String, location_name: "capacityProviderName"))
    ContainerInstance.add_member(:version, Shapes::ShapeRef.new(shape: Long, location_name: "version"))
    ContainerInstance.add_member(:version_info, Shapes::ShapeRef.new(shape: VersionInfo, location_name: "versionInfo"))
    ContainerInstance.add_member(:remaining_resources, Shapes::ShapeRef.new(shape: Resources, location_name: "remainingResources"))
    ContainerInstance.add_member(:registered_resources, Shapes::ShapeRef.new(shape: Resources, location_name: "registeredResources"))
    ContainerInstance.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    ContainerInstance.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ContainerInstance.add_member(:agent_connected, Shapes::ShapeRef.new(shape: Boolean, location_name: "agentConnected"))
    ContainerInstance.add_member(:running_tasks_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningTasksCount"))
    ContainerInstance.add_member(:pending_tasks_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingTasksCount"))
    ContainerInstance.add_member(:agent_update_status, Shapes::ShapeRef.new(shape: AgentUpdateStatus, location_name: "agentUpdateStatus"))
    ContainerInstance.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    ContainerInstance.add_member(:registered_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "registeredAt"))
    ContainerInstance.add_member(:attachments, Shapes::ShapeRef.new(shape: Attachments, location_name: "attachments"))
    ContainerInstance.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ContainerInstance.add_member(:health_status, Shapes::ShapeRef.new(shape: ContainerInstanceHealthStatus, location_name: "healthStatus"))
    ContainerInstance.struct_class = Types::ContainerInstance

    ContainerInstanceFieldList.member = Shapes::ShapeRef.new(shape: ContainerInstanceField)

    ContainerInstanceHealthStatus.add_member(:overall_status, Shapes::ShapeRef.new(shape: InstanceHealthCheckState, location_name: "overallStatus"))
    ContainerInstanceHealthStatus.add_member(:details, Shapes::ShapeRef.new(shape: InstanceHealthCheckResultList, location_name: "details"))
    ContainerInstanceHealthStatus.struct_class = Types::ContainerInstanceHealthStatus

    ContainerInstances.member = Shapes::ShapeRef.new(shape: ContainerInstance)

    ContainerOverride.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ContainerOverride.add_member(:command, Shapes::ShapeRef.new(shape: StringList, location_name: "command"))
    ContainerOverride.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environment"))
    ContainerOverride.add_member(:environment_files, Shapes::ShapeRef.new(shape: EnvironmentFiles, location_name: "environmentFiles"))
    ContainerOverride.add_member(:cpu, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "cpu"))
    ContainerOverride.add_member(:memory, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "memory"))
    ContainerOverride.add_member(:memory_reservation, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "memoryReservation"))
    ContainerOverride.add_member(:resource_requirements, Shapes::ShapeRef.new(shape: ResourceRequirements, location_name: "resourceRequirements"))
    ContainerOverride.struct_class = Types::ContainerOverride

    ContainerOverrides.member = Shapes::ShapeRef.new(shape: ContainerOverride)

    ContainerRestartPolicy.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "enabled"))
    ContainerRestartPolicy.add_member(:ignored_exit_codes, Shapes::ShapeRef.new(shape: IntegerList, location_name: "ignoredExitCodes"))
    ContainerRestartPolicy.add_member(:restart_attempt_period, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "restartAttemptPeriod"))
    ContainerRestartPolicy.struct_class = Types::ContainerRestartPolicy

    ContainerStateChange.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    ContainerStateChange.add_member(:image_digest, Shapes::ShapeRef.new(shape: String, location_name: "imageDigest"))
    ContainerStateChange.add_member(:runtime_id, Shapes::ShapeRef.new(shape: String, location_name: "runtimeId"))
    ContainerStateChange.add_member(:exit_code, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "exitCode"))
    ContainerStateChange.add_member(:network_bindings, Shapes::ShapeRef.new(shape: NetworkBindings, location_name: "networkBindings"))
    ContainerStateChange.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    ContainerStateChange.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    ContainerStateChange.struct_class = Types::ContainerStateChange

    ContainerStateChanges.member = Shapes::ShapeRef.new(shape: ContainerStateChange)

    Containers.member = Shapes::ShapeRef.new(shape: Container)

    CreateCapacityProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateCapacityProviderRequest.add_member(:auto_scaling_group_provider, Shapes::ShapeRef.new(shape: AutoScalingGroupProvider, required: true, location_name: "autoScalingGroupProvider"))
    CreateCapacityProviderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateCapacityProviderRequest.struct_class = Types::CreateCapacityProviderRequest

    CreateCapacityProviderResponse.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: CapacityProvider, location_name: "capacityProvider"))
    CreateCapacityProviderResponse.struct_class = Types::CreateCapacityProviderResponse

    CreateClusterRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    CreateClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateClusterRequest.add_member(:settings, Shapes::ShapeRef.new(shape: ClusterSettings, location_name: "settings"))
    CreateClusterRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ClusterConfiguration, location_name: "configuration"))
    CreateClusterRequest.add_member(:capacity_providers, Shapes::ShapeRef.new(shape: StringList, location_name: "capacityProviders"))
    CreateClusterRequest.add_member(:default_capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "defaultCapacityProviderStrategy"))
    CreateClusterRequest.add_member(:service_connect_defaults, Shapes::ShapeRef.new(shape: ClusterServiceConnectDefaultsRequest, location_name: "serviceConnectDefaults"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateServiceRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    CreateServiceRequest.add_member(:service_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceName"))
    CreateServiceRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinition"))
    CreateServiceRequest.add_member(:availability_zone_rebalancing, Shapes::ShapeRef.new(shape: AvailabilityZoneRebalancing, location_name: "availabilityZoneRebalancing"))
    CreateServiceRequest.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "loadBalancers"))
    CreateServiceRequest.add_member(:service_registries, Shapes::ShapeRef.new(shape: ServiceRegistries, location_name: "serviceRegistries"))
    CreateServiceRequest.add_member(:desired_count, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "desiredCount"))
    CreateServiceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    CreateServiceRequest.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    CreateServiceRequest.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    CreateServiceRequest.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    CreateServiceRequest.add_member(:role, Shapes::ShapeRef.new(shape: String, location_name: "role"))
    CreateServiceRequest.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    CreateServiceRequest.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: "placementConstraints"))
    CreateServiceRequest.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: "placementStrategy"))
    CreateServiceRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    CreateServiceRequest.add_member(:health_check_grace_period_seconds, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "healthCheckGracePeriodSeconds"))
    CreateServiceRequest.add_member(:scheduling_strategy, Shapes::ShapeRef.new(shape: SchedulingStrategy, location_name: "schedulingStrategy"))
    CreateServiceRequest.add_member(:deployment_controller, Shapes::ShapeRef.new(shape: DeploymentController, location_name: "deploymentController"))
    CreateServiceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateServiceRequest.add_member(:enable_ecs_managed_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableECSManagedTags"))
    CreateServiceRequest.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: PropagateTags, location_name: "propagateTags"))
    CreateServiceRequest.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableExecuteCommand"))
    CreateServiceRequest.add_member(:service_connect_configuration, Shapes::ShapeRef.new(shape: ServiceConnectConfiguration, location_name: "serviceConnectConfiguration"))
    CreateServiceRequest.add_member(:volume_configurations, Shapes::ShapeRef.new(shape: ServiceVolumeConfigurations, location_name: "volumeConfigurations"))
    CreateServiceRequest.add_member(:vpc_lattice_configurations, Shapes::ShapeRef.new(shape: VpcLatticeConfigurations, location_name: "vpcLatticeConfigurations"))
    CreateServiceRequest.struct_class = Types::CreateServiceRequest

    CreateServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    CreateServiceResponse.struct_class = Types::CreateServiceResponse

    CreateTaskSetRequest.add_member(:service, Shapes::ShapeRef.new(shape: String, required: true, location_name: "service"))
    CreateTaskSetRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    CreateTaskSetRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    CreateTaskSetRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskDefinition"))
    CreateTaskSetRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    CreateTaskSetRequest.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "loadBalancers"))
    CreateTaskSetRequest.add_member(:service_registries, Shapes::ShapeRef.new(shape: ServiceRegistries, location_name: "serviceRegistries"))
    CreateTaskSetRequest.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    CreateTaskSetRequest.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    CreateTaskSetRequest.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    CreateTaskSetRequest.add_member(:scale, Shapes::ShapeRef.new(shape: Scale, location_name: "scale"))
    CreateTaskSetRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken"))
    CreateTaskSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateTaskSetRequest.struct_class = Types::CreateTaskSetRequest

    CreateTaskSetResponse.add_member(:task_set, Shapes::ShapeRef.new(shape: TaskSet, location_name: "taskSet"))
    CreateTaskSetResponse.struct_class = Types::CreateTaskSetResponse

    CreatedAt.add_member(:before, Shapes::ShapeRef.new(shape: Timestamp, location_name: "before"))
    CreatedAt.add_member(:after, Shapes::ShapeRef.new(shape: Timestamp, location_name: "after"))
    CreatedAt.struct_class = Types::CreatedAt

    DeleteAccountSettingRequest.add_member(:name, Shapes::ShapeRef.new(shape: SettingName, required: true, location_name: "name"))
    DeleteAccountSettingRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, location_name: "principalArn"))
    DeleteAccountSettingRequest.struct_class = Types::DeleteAccountSettingRequest

    DeleteAccountSettingResponse.add_member(:setting, Shapes::ShapeRef.new(shape: Setting, location_name: "setting"))
    DeleteAccountSettingResponse.struct_class = Types::DeleteAccountSettingResponse

    DeleteAttributesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DeleteAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "attributes"))
    DeleteAttributesRequest.struct_class = Types::DeleteAttributesRequest

    DeleteAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    DeleteAttributesResponse.struct_class = Types::DeleteAttributesResponse

    DeleteCapacityProviderRequest.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "capacityProvider"))
    DeleteCapacityProviderRequest.struct_class = Types::DeleteCapacityProviderRequest

    DeleteCapacityProviderResponse.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: CapacityProvider, location_name: "capacityProvider"))
    DeleteCapacityProviderResponse.struct_class = Types::DeleteCapacityProviderResponse

    DeleteClusterRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteServiceRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DeleteServiceRequest.add_member(:service, Shapes::ShapeRef.new(shape: String, required: true, location_name: "service"))
    DeleteServiceRequest.add_member(:force, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "force"))
    DeleteServiceRequest.struct_class = Types::DeleteServiceRequest

    DeleteServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    DeleteServiceResponse.struct_class = Types::DeleteServiceResponse

    DeleteTaskDefinitionsRequest.add_member(:task_definitions, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "taskDefinitions"))
    DeleteTaskDefinitionsRequest.struct_class = Types::DeleteTaskDefinitionsRequest

    DeleteTaskDefinitionsResponse.add_member(:task_definitions, Shapes::ShapeRef.new(shape: TaskDefinitionList, location_name: "taskDefinitions"))
    DeleteTaskDefinitionsResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DeleteTaskDefinitionsResponse.struct_class = Types::DeleteTaskDefinitionsResponse

    DeleteTaskSetRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    DeleteTaskSetRequest.add_member(:service, Shapes::ShapeRef.new(shape: String, required: true, location_name: "service"))
    DeleteTaskSetRequest.add_member(:task_set, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskSet"))
    DeleteTaskSetRequest.add_member(:force, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "force"))
    DeleteTaskSetRequest.struct_class = Types::DeleteTaskSetRequest

    DeleteTaskSetResponse.add_member(:task_set, Shapes::ShapeRef.new(shape: TaskSet, location_name: "taskSet"))
    DeleteTaskSetResponse.struct_class = Types::DeleteTaskSetResponse

    Deployment.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Deployment.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    Deployment.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinition"))
    Deployment.add_member(:desired_count, Shapes::ShapeRef.new(shape: Integer, location_name: "desiredCount"))
    Deployment.add_member(:pending_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingCount"))
    Deployment.add_member(:running_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningCount"))
    Deployment.add_member(:failed_tasks, Shapes::ShapeRef.new(shape: Integer, location_name: "failedTasks"))
    Deployment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Deployment.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Deployment.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    Deployment.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    Deployment.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    Deployment.add_member(:platform_family, Shapes::ShapeRef.new(shape: String, location_name: "platformFamily"))
    Deployment.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    Deployment.add_member(:rollout_state, Shapes::ShapeRef.new(shape: DeploymentRolloutState, location_name: "rolloutState"))
    Deployment.add_member(:rollout_state_reason, Shapes::ShapeRef.new(shape: String, location_name: "rolloutStateReason"))
    Deployment.add_member(:service_connect_configuration, Shapes::ShapeRef.new(shape: ServiceConnectConfiguration, location_name: "serviceConnectConfiguration"))
    Deployment.add_member(:service_connect_resources, Shapes::ShapeRef.new(shape: ServiceConnectServiceResourceList, location_name: "serviceConnectResources"))
    Deployment.add_member(:volume_configurations, Shapes::ShapeRef.new(shape: ServiceVolumeConfigurations, location_name: "volumeConfigurations"))
    Deployment.add_member(:fargate_ephemeral_storage, Shapes::ShapeRef.new(shape: DeploymentEphemeralStorage, location_name: "fargateEphemeralStorage"))
    Deployment.add_member(:vpc_lattice_configurations, Shapes::ShapeRef.new(shape: VpcLatticeConfigurations, location_name: "vpcLatticeConfigurations"))
    Deployment.struct_class = Types::Deployment

    DeploymentAlarms.add_member(:alarm_names, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "alarmNames"))
    DeploymentAlarms.add_member(:rollback, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "rollback"))
    DeploymentAlarms.add_member(:enable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enable"))
    DeploymentAlarms.struct_class = Types::DeploymentAlarms

    DeploymentCircuitBreaker.add_member(:enable, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enable"))
    DeploymentCircuitBreaker.add_member(:rollback, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "rollback"))
    DeploymentCircuitBreaker.struct_class = Types::DeploymentCircuitBreaker

    DeploymentConfiguration.add_member(:deployment_circuit_breaker, Shapes::ShapeRef.new(shape: DeploymentCircuitBreaker, location_name: "deploymentCircuitBreaker"))
    DeploymentConfiguration.add_member(:maximum_percent, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maximumPercent"))
    DeploymentConfiguration.add_member(:minimum_healthy_percent, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "minimumHealthyPercent"))
    DeploymentConfiguration.add_member(:alarms, Shapes::ShapeRef.new(shape: DeploymentAlarms, location_name: "alarms"))
    DeploymentConfiguration.add_member(:strategy, Shapes::ShapeRef.new(shape: DeploymentStrategy, location_name: "strategy"))
    DeploymentConfiguration.add_member(:bake_time_in_minutes, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "bakeTimeInMinutes"))
    DeploymentConfiguration.add_member(:lifecycle_hooks, Shapes::ShapeRef.new(shape: DeploymentLifecycleHookList, location_name: "lifecycleHooks"))
    DeploymentConfiguration.struct_class = Types::DeploymentConfiguration

    DeploymentController.add_member(:type, Shapes::ShapeRef.new(shape: DeploymentControllerType, required: true, location_name: "type"))
    DeploymentController.struct_class = Types::DeploymentController

    DeploymentEphemeralStorage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    DeploymentEphemeralStorage.struct_class = Types::DeploymentEphemeralStorage

    DeploymentLifecycleHook.add_member(:hook_target_arn, Shapes::ShapeRef.new(shape: String, location_name: "hookTargetArn"))
    DeploymentLifecycleHook.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "roleArn"))
    DeploymentLifecycleHook.add_member(:lifecycle_stages, Shapes::ShapeRef.new(shape: DeploymentLifecycleHookStageList, location_name: "lifecycleStages"))
    DeploymentLifecycleHook.struct_class = Types::DeploymentLifecycleHook

    DeploymentLifecycleHookList.member = Shapes::ShapeRef.new(shape: DeploymentLifecycleHook)

    DeploymentLifecycleHookStageList.member = Shapes::ShapeRef.new(shape: DeploymentLifecycleHookStage)

    Deployments.member = Shapes::ShapeRef.new(shape: Deployment)

    DeregisterContainerInstanceRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DeregisterContainerInstanceRequest.add_member(:container_instance, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerInstance"))
    DeregisterContainerInstanceRequest.add_member(:force, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "force"))
    DeregisterContainerInstanceRequest.struct_class = Types::DeregisterContainerInstanceRequest

    DeregisterContainerInstanceResponse.add_member(:container_instance, Shapes::ShapeRef.new(shape: ContainerInstance, location_name: "containerInstance"))
    DeregisterContainerInstanceResponse.struct_class = Types::DeregisterContainerInstanceResponse

    DeregisterTaskDefinitionRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskDefinition"))
    DeregisterTaskDefinitionRequest.struct_class = Types::DeregisterTaskDefinitionRequest

    DeregisterTaskDefinitionResponse.add_member(:task_definition, Shapes::ShapeRef.new(shape: TaskDefinition, location_name: "taskDefinition"))
    DeregisterTaskDefinitionResponse.struct_class = Types::DeregisterTaskDefinitionResponse

    DescribeCapacityProvidersRequest.add_member(:capacity_providers, Shapes::ShapeRef.new(shape: StringList, location_name: "capacityProviders"))
    DescribeCapacityProvidersRequest.add_member(:include, Shapes::ShapeRef.new(shape: CapacityProviderFieldList, location_name: "include"))
    DescribeCapacityProvidersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    DescribeCapacityProvidersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeCapacityProvidersRequest.struct_class = Types::DescribeCapacityProvidersRequest

    DescribeCapacityProvidersResponse.add_member(:capacity_providers, Shapes::ShapeRef.new(shape: CapacityProviders, location_name: "capacityProviders"))
    DescribeCapacityProvidersResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeCapacityProvidersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeCapacityProvidersResponse.struct_class = Types::DescribeCapacityProvidersResponse

    DescribeClustersRequest.add_member(:clusters, Shapes::ShapeRef.new(shape: StringList, location_name: "clusters"))
    DescribeClustersRequest.add_member(:include, Shapes::ShapeRef.new(shape: ClusterFieldList, location_name: "include"))
    DescribeClustersRequest.struct_class = Types::DescribeClustersRequest

    DescribeClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: Clusters, location_name: "clusters"))
    DescribeClustersResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeClustersResponse.struct_class = Types::DescribeClustersResponse

    DescribeContainerInstancesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DescribeContainerInstancesRequest.add_member(:container_instances, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "containerInstances"))
    DescribeContainerInstancesRequest.add_member(:include, Shapes::ShapeRef.new(shape: ContainerInstanceFieldList, location_name: "include"))
    DescribeContainerInstancesRequest.struct_class = Types::DescribeContainerInstancesRequest

    DescribeContainerInstancesResponse.add_member(:container_instances, Shapes::ShapeRef.new(shape: ContainerInstances, location_name: "containerInstances"))
    DescribeContainerInstancesResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeContainerInstancesResponse.struct_class = Types::DescribeContainerInstancesResponse

    DescribeServiceDeploymentsRequest.add_member(:service_deployment_arns, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "serviceDeploymentArns"))
    DescribeServiceDeploymentsRequest.struct_class = Types::DescribeServiceDeploymentsRequest

    DescribeServiceDeploymentsResponse.add_member(:service_deployments, Shapes::ShapeRef.new(shape: ServiceDeployments, location_name: "serviceDeployments"))
    DescribeServiceDeploymentsResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeServiceDeploymentsResponse.struct_class = Types::DescribeServiceDeploymentsResponse

    DescribeServiceRevisionsRequest.add_member(:service_revision_arns, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "serviceRevisionArns"))
    DescribeServiceRevisionsRequest.struct_class = Types::DescribeServiceRevisionsRequest

    DescribeServiceRevisionsResponse.add_member(:service_revisions, Shapes::ShapeRef.new(shape: ServiceRevisions, location_name: "serviceRevisions"))
    DescribeServiceRevisionsResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeServiceRevisionsResponse.struct_class = Types::DescribeServiceRevisionsResponse

    DescribeServicesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DescribeServicesRequest.add_member(:services, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "services"))
    DescribeServicesRequest.add_member(:include, Shapes::ShapeRef.new(shape: ServiceFieldList, location_name: "include"))
    DescribeServicesRequest.struct_class = Types::DescribeServicesRequest

    DescribeServicesResponse.add_member(:services, Shapes::ShapeRef.new(shape: Services, location_name: "services"))
    DescribeServicesResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeServicesResponse.struct_class = Types::DescribeServicesResponse

    DescribeTaskDefinitionRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskDefinition"))
    DescribeTaskDefinitionRequest.add_member(:include, Shapes::ShapeRef.new(shape: TaskDefinitionFieldList, location_name: "include"))
    DescribeTaskDefinitionRequest.struct_class = Types::DescribeTaskDefinitionRequest

    DescribeTaskDefinitionResponse.add_member(:task_definition, Shapes::ShapeRef.new(shape: TaskDefinition, location_name: "taskDefinition"))
    DescribeTaskDefinitionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeTaskDefinitionResponse.struct_class = Types::DescribeTaskDefinitionResponse

    DescribeTaskSetsRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    DescribeTaskSetsRequest.add_member(:service, Shapes::ShapeRef.new(shape: String, required: true, location_name: "service"))
    DescribeTaskSetsRequest.add_member(:task_sets, Shapes::ShapeRef.new(shape: StringList, location_name: "taskSets"))
    DescribeTaskSetsRequest.add_member(:include, Shapes::ShapeRef.new(shape: TaskSetFieldList, location_name: "include"))
    DescribeTaskSetsRequest.struct_class = Types::DescribeTaskSetsRequest

    DescribeTaskSetsResponse.add_member(:task_sets, Shapes::ShapeRef.new(shape: TaskSets, location_name: "taskSets"))
    DescribeTaskSetsResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeTaskSetsResponse.struct_class = Types::DescribeTaskSetsResponse

    DescribeTasksRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DescribeTasksRequest.add_member(:tasks, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "tasks"))
    DescribeTasksRequest.add_member(:include, Shapes::ShapeRef.new(shape: TaskFieldList, location_name: "include"))
    DescribeTasksRequest.struct_class = Types::DescribeTasksRequest

    DescribeTasksResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, location_name: "tasks"))
    DescribeTasksResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    DescribeTasksResponse.struct_class = Types::DescribeTasksResponse

    Device.add_member(:host_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "hostPath"))
    Device.add_member(:container_path, Shapes::ShapeRef.new(shape: String, location_name: "containerPath"))
    Device.add_member(:permissions, Shapes::ShapeRef.new(shape: DeviceCgroupPermissions, location_name: "permissions"))
    Device.struct_class = Types::Device

    DeviceCgroupPermissions.member = Shapes::ShapeRef.new(shape: DeviceCgroupPermission)

    DevicesList.member = Shapes::ShapeRef.new(shape: Device)

    DiscoverPollEndpointRequest.add_member(:container_instance, Shapes::ShapeRef.new(shape: String, location_name: "containerInstance"))
    DiscoverPollEndpointRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    DiscoverPollEndpointRequest.struct_class = Types::DiscoverPollEndpointRequest

    DiscoverPollEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    DiscoverPollEndpointResponse.add_member(:telemetry_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "telemetryEndpoint"))
    DiscoverPollEndpointResponse.add_member(:service_connect_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "serviceConnectEndpoint"))
    DiscoverPollEndpointResponse.struct_class = Types::DiscoverPollEndpointResponse

    DockerLabelsMap.key = Shapes::ShapeRef.new(shape: String)
    DockerLabelsMap.value = Shapes::ShapeRef.new(shape: String)

    DockerVolumeConfiguration.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "scope"))
    DockerVolumeConfiguration.add_member(:autoprovision, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "autoprovision"))
    DockerVolumeConfiguration.add_member(:driver, Shapes::ShapeRef.new(shape: String, location_name: "driver"))
    DockerVolumeConfiguration.add_member(:driver_opts, Shapes::ShapeRef.new(shape: StringMap, location_name: "driverOpts"))
    DockerVolumeConfiguration.add_member(:labels, Shapes::ShapeRef.new(shape: StringMap, location_name: "labels"))
    DockerVolumeConfiguration.struct_class = Types::DockerVolumeConfiguration

    EBSTagSpecification.add_member(:resource_type, Shapes::ShapeRef.new(shape: EBSResourceType, required: true, location_name: "resourceType"))
    EBSTagSpecification.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    EBSTagSpecification.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: PropagateTags, location_name: "propagateTags"))
    EBSTagSpecification.struct_class = Types::EBSTagSpecification

    EBSTagSpecifications.member = Shapes::ShapeRef.new(shape: EBSTagSpecification)

    EFSAuthorizationConfig.add_member(:access_point_id, Shapes::ShapeRef.new(shape: String, location_name: "accessPointId"))
    EFSAuthorizationConfig.add_member(:iam, Shapes::ShapeRef.new(shape: EFSAuthorizationConfigIAM, location_name: "iam"))
    EFSAuthorizationConfig.struct_class = Types::EFSAuthorizationConfig

    EFSVolumeConfiguration.add_member(:file_system_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fileSystemId"))
    EFSVolumeConfiguration.add_member(:root_directory, Shapes::ShapeRef.new(shape: String, location_name: "rootDirectory"))
    EFSVolumeConfiguration.add_member(:transit_encryption, Shapes::ShapeRef.new(shape: EFSTransitEncryption, location_name: "transitEncryption"))
    EFSVolumeConfiguration.add_member(:transit_encryption_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "transitEncryptionPort"))
    EFSVolumeConfiguration.add_member(:authorization_config, Shapes::ShapeRef.new(shape: EFSAuthorizationConfig, location_name: "authorizationConfig"))
    EFSVolumeConfiguration.struct_class = Types::EFSVolumeConfiguration

    EnvironmentFile.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    EnvironmentFile.add_member(:type, Shapes::ShapeRef.new(shape: EnvironmentFileType, required: true, location_name: "type"))
    EnvironmentFile.struct_class = Types::EnvironmentFile

    EnvironmentFiles.member = Shapes::ShapeRef.new(shape: EnvironmentFile)

    EnvironmentVariables.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    EphemeralStorage.add_member(:size_in_gi_b, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "sizeInGiB"))
    EphemeralStorage.struct_class = Types::EphemeralStorage

    ExecuteCommandConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    ExecuteCommandConfiguration.add_member(:logging, Shapes::ShapeRef.new(shape: ExecuteCommandLogging, location_name: "logging"))
    ExecuteCommandConfiguration.add_member(:log_configuration, Shapes::ShapeRef.new(shape: ExecuteCommandLogConfiguration, location_name: "logConfiguration"))
    ExecuteCommandConfiguration.struct_class = Types::ExecuteCommandConfiguration

    ExecuteCommandLogConfiguration.add_member(:cloud_watch_log_group_name, Shapes::ShapeRef.new(shape: String, location_name: "cloudWatchLogGroupName"))
    ExecuteCommandLogConfiguration.add_member(:cloud_watch_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "cloudWatchEncryptionEnabled"))
    ExecuteCommandLogConfiguration.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "s3BucketName"))
    ExecuteCommandLogConfiguration.add_member(:s3_encryption_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "s3EncryptionEnabled"))
    ExecuteCommandLogConfiguration.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "s3KeyPrefix"))
    ExecuteCommandLogConfiguration.struct_class = Types::ExecuteCommandLogConfiguration

    ExecuteCommandRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    ExecuteCommandRequest.add_member(:container, Shapes::ShapeRef.new(shape: String, location_name: "container"))
    ExecuteCommandRequest.add_member(:command, Shapes::ShapeRef.new(shape: String, required: true, location_name: "command"))
    ExecuteCommandRequest.add_member(:interactive, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "interactive"))
    ExecuteCommandRequest.add_member(:task, Shapes::ShapeRef.new(shape: String, required: true, location_name: "task"))
    ExecuteCommandRequest.struct_class = Types::ExecuteCommandRequest

    ExecuteCommandResponse.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    ExecuteCommandResponse.add_member(:container_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerArn"))
    ExecuteCommandResponse.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    ExecuteCommandResponse.add_member(:interactive, Shapes::ShapeRef.new(shape: Boolean, location_name: "interactive"))
    ExecuteCommandResponse.add_member(:session, Shapes::ShapeRef.new(shape: Session, location_name: "session"))
    ExecuteCommandResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    ExecuteCommandResponse.struct_class = Types::ExecuteCommandResponse

    FSxWindowsFileServerAuthorizationConfig.add_member(:credentials_parameter, Shapes::ShapeRef.new(shape: String, required: true, location_name: "credentialsParameter"))
    FSxWindowsFileServerAuthorizationConfig.add_member(:domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domain"))
    FSxWindowsFileServerAuthorizationConfig.struct_class = Types::FSxWindowsFileServerAuthorizationConfig

    FSxWindowsFileServerVolumeConfiguration.add_member(:file_system_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fileSystemId"))
    FSxWindowsFileServerVolumeConfiguration.add_member(:root_directory, Shapes::ShapeRef.new(shape: String, required: true, location_name: "rootDirectory"))
    FSxWindowsFileServerVolumeConfiguration.add_member(:authorization_config, Shapes::ShapeRef.new(shape: FSxWindowsFileServerAuthorizationConfig, required: true, location_name: "authorizationConfig"))
    FSxWindowsFileServerVolumeConfiguration.struct_class = Types::FSxWindowsFileServerVolumeConfiguration

    Failure.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Failure.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    Failure.add_member(:detail, Shapes::ShapeRef.new(shape: String, location_name: "detail"))
    Failure.struct_class = Types::Failure

    Failures.member = Shapes::ShapeRef.new(shape: Failure)

    FirelensConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: FirelensConfigurationType, required: true, location_name: "type"))
    FirelensConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: FirelensConfigurationOptionsMap, location_name: "options"))
    FirelensConfiguration.struct_class = Types::FirelensConfiguration

    FirelensConfigurationOptionsMap.key = Shapes::ShapeRef.new(shape: String)
    FirelensConfigurationOptionsMap.value = Shapes::ShapeRef.new(shape: String)

    GetTaskProtectionRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    GetTaskProtectionRequest.add_member(:tasks, Shapes::ShapeRef.new(shape: StringList, location_name: "tasks"))
    GetTaskProtectionRequest.struct_class = Types::GetTaskProtectionRequest

    GetTaskProtectionResponse.add_member(:protected_tasks, Shapes::ShapeRef.new(shape: ProtectedTasks, location_name: "protectedTasks"))
    GetTaskProtectionResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    GetTaskProtectionResponse.struct_class = Types::GetTaskProtectionResponse

    GpuIds.member = Shapes::ShapeRef.new(shape: String)

    HealthCheck.add_member(:command, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "command"))
    HealthCheck.add_member(:interval, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "interval"))
    HealthCheck.add_member(:timeout, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "timeout"))
    HealthCheck.add_member(:retries, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "retries"))
    HealthCheck.add_member(:start_period, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "startPeriod"))
    HealthCheck.struct_class = Types::HealthCheck

    HostEntry.add_member(:hostname, Shapes::ShapeRef.new(shape: String, required: true, location_name: "hostname"))
    HostEntry.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ipAddress"))
    HostEntry.struct_class = Types::HostEntry

    HostEntryList.member = Shapes::ShapeRef.new(shape: HostEntry)

    HostVolumeProperties.add_member(:source_path, Shapes::ShapeRef.new(shape: String, location_name: "sourcePath"))
    HostVolumeProperties.struct_class = Types::HostVolumeProperties

    InferenceAccelerator.add_member(:device_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "deviceName"))
    InferenceAccelerator.add_member(:device_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "deviceType"))
    InferenceAccelerator.struct_class = Types::InferenceAccelerator

    InferenceAcceleratorOverride.add_member(:device_name, Shapes::ShapeRef.new(shape: String, location_name: "deviceName"))
    InferenceAcceleratorOverride.add_member(:device_type, Shapes::ShapeRef.new(shape: String, location_name: "deviceType"))
    InferenceAcceleratorOverride.struct_class = Types::InferenceAcceleratorOverride

    InferenceAcceleratorOverrides.member = Shapes::ShapeRef.new(shape: InferenceAcceleratorOverride)

    InferenceAccelerators.member = Shapes::ShapeRef.new(shape: InferenceAccelerator)

    InstanceHealthCheckResult.add_member(:type, Shapes::ShapeRef.new(shape: InstanceHealthCheckType, location_name: "type"))
    InstanceHealthCheckResult.add_member(:status, Shapes::ShapeRef.new(shape: InstanceHealthCheckState, location_name: "status"))
    InstanceHealthCheckResult.add_member(:last_updated, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdated"))
    InstanceHealthCheckResult.add_member(:last_status_change, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStatusChange"))
    InstanceHealthCheckResult.struct_class = Types::InstanceHealthCheckResult

    InstanceHealthCheckResultList.member = Shapes::ShapeRef.new(shape: InstanceHealthCheckResult)

    IntegerList.member = Shapes::ShapeRef.new(shape: BoxedInteger)

    InvalidParameterException.struct_class = Types::InvalidParameterException

    KernelCapabilities.add_member(:add, Shapes::ShapeRef.new(shape: StringList, location_name: "add"))
    KernelCapabilities.add_member(:drop, Shapes::ShapeRef.new(shape: StringList, location_name: "drop"))
    KernelCapabilities.struct_class = Types::KernelCapabilities

    KeyValuePair.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    KeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    KeyValuePair.struct_class = Types::KeyValuePair

    LimitExceededException.struct_class = Types::LimitExceededException

    LinuxParameters.add_member(:capabilities, Shapes::ShapeRef.new(shape: KernelCapabilities, location_name: "capabilities"))
    LinuxParameters.add_member(:devices, Shapes::ShapeRef.new(shape: DevicesList, location_name: "devices"))
    LinuxParameters.add_member(:init_process_enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "initProcessEnabled"))
    LinuxParameters.add_member(:shared_memory_size, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "sharedMemorySize"))
    LinuxParameters.add_member(:tmpfs, Shapes::ShapeRef.new(shape: TmpfsList, location_name: "tmpfs"))
    LinuxParameters.add_member(:max_swap, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxSwap"))
    LinuxParameters.add_member(:swappiness, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "swappiness"))
    LinuxParameters.struct_class = Types::LinuxParameters

    ListAccountSettingsRequest.add_member(:name, Shapes::ShapeRef.new(shape: SettingName, location_name: "name"))
    ListAccountSettingsRequest.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ListAccountSettingsRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, location_name: "principalArn"))
    ListAccountSettingsRequest.add_member(:effective_settings, Shapes::ShapeRef.new(shape: Boolean, location_name: "effectiveSettings"))
    ListAccountSettingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAccountSettingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListAccountSettingsRequest.struct_class = Types::ListAccountSettingsRequest

    ListAccountSettingsResponse.add_member(:settings, Shapes::ShapeRef.new(shape: Settings, location_name: "settings"))
    ListAccountSettingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAccountSettingsResponse.struct_class = Types::ListAccountSettingsResponse

    ListAttributesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    ListAttributesRequest.add_member(:target_type, Shapes::ShapeRef.new(shape: TargetType, required: true, location_name: "targetType"))
    ListAttributesRequest.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, location_name: "attributeName"))
    ListAttributesRequest.add_member(:attribute_value, Shapes::ShapeRef.new(shape: String, location_name: "attributeValue"))
    ListAttributesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAttributesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListAttributesRequest.struct_class = Types::ListAttributesRequest

    ListAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    ListAttributesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAttributesResponse.struct_class = Types::ListAttributesResponse

    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:cluster_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "clusterArns"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

    ListContainerInstancesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    ListContainerInstancesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: String, location_name: "filter"))
    ListContainerInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListContainerInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListContainerInstancesRequest.add_member(:status, Shapes::ShapeRef.new(shape: ContainerInstanceStatus, location_name: "status"))
    ListContainerInstancesRequest.struct_class = Types::ListContainerInstancesRequest

    ListContainerInstancesResponse.add_member(:container_instance_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "containerInstanceArns"))
    ListContainerInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListContainerInstancesResponse.struct_class = Types::ListContainerInstancesResponse

    ListServiceDeploymentsRequest.add_member(:service, Shapes::ShapeRef.new(shape: String, required: true, location_name: "service"))
    ListServiceDeploymentsRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    ListServiceDeploymentsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ServiceDeploymentStatusList, location_name: "status"))
    ListServiceDeploymentsRequest.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "createdAt"))
    ListServiceDeploymentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServiceDeploymentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListServiceDeploymentsRequest.struct_class = Types::ListServiceDeploymentsRequest

    ListServiceDeploymentsResponse.add_member(:service_deployments, Shapes::ShapeRef.new(shape: ServiceDeploymentsBrief, location_name: "serviceDeployments"))
    ListServiceDeploymentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServiceDeploymentsResponse.struct_class = Types::ListServiceDeploymentsResponse

    ListServicesByNamespaceRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: String, required: true, location_name: "namespace"))
    ListServicesByNamespaceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServicesByNamespaceRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListServicesByNamespaceRequest.struct_class = Types::ListServicesByNamespaceRequest

    ListServicesByNamespaceResponse.add_member(:service_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "serviceArns"))
    ListServicesByNamespaceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServicesByNamespaceResponse.struct_class = Types::ListServicesByNamespaceResponse

    ListServicesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    ListServicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListServicesRequest.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    ListServicesRequest.add_member(:scheduling_strategy, Shapes::ShapeRef.new(shape: SchedulingStrategy, location_name: "schedulingStrategy"))
    ListServicesRequest.struct_class = Types::ListServicesRequest

    ListServicesResponse.add_member(:service_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "serviceArns"))
    ListServicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListServicesResponse.struct_class = Types::ListServicesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTaskDefinitionFamiliesRequest.add_member(:family_prefix, Shapes::ShapeRef.new(shape: String, location_name: "familyPrefix"))
    ListTaskDefinitionFamiliesRequest.add_member(:status, Shapes::ShapeRef.new(shape: TaskDefinitionFamilyStatus, location_name: "status"))
    ListTaskDefinitionFamiliesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTaskDefinitionFamiliesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListTaskDefinitionFamiliesRequest.struct_class = Types::ListTaskDefinitionFamiliesRequest

    ListTaskDefinitionFamiliesResponse.add_member(:families, Shapes::ShapeRef.new(shape: StringList, location_name: "families"))
    ListTaskDefinitionFamiliesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTaskDefinitionFamiliesResponse.struct_class = Types::ListTaskDefinitionFamiliesResponse

    ListTaskDefinitionsRequest.add_member(:family_prefix, Shapes::ShapeRef.new(shape: String, location_name: "familyPrefix"))
    ListTaskDefinitionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: TaskDefinitionStatus, location_name: "status"))
    ListTaskDefinitionsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sort"))
    ListTaskDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTaskDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListTaskDefinitionsRequest.struct_class = Types::ListTaskDefinitionsRequest

    ListTaskDefinitionsResponse.add_member(:task_definition_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "taskDefinitionArns"))
    ListTaskDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTaskDefinitionsResponse.struct_class = Types::ListTaskDefinitionsResponse

    ListTasksRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    ListTasksRequest.add_member(:container_instance, Shapes::ShapeRef.new(shape: String, location_name: "containerInstance"))
    ListTasksRequest.add_member(:family, Shapes::ShapeRef.new(shape: String, location_name: "family"))
    ListTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "maxResults"))
    ListTasksRequest.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    ListTasksRequest.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    ListTasksRequest.add_member(:desired_status, Shapes::ShapeRef.new(shape: DesiredStatus, location_name: "desiredStatus"))
    ListTasksRequest.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    ListTasksRequest.struct_class = Types::ListTasksRequest

    ListTasksResponse.add_member(:task_arns, Shapes::ShapeRef.new(shape: StringList, location_name: "taskArns"))
    ListTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTasksResponse.struct_class = Types::ListTasksResponse

    LoadBalancer.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "targetGroupArn"))
    LoadBalancer.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: String, location_name: "loadBalancerName"))
    LoadBalancer.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    LoadBalancer.add_member(:container_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "containerPort"))
    LoadBalancer.add_member(:advanced_configuration, Shapes::ShapeRef.new(shape: AdvancedConfiguration, location_name: "advancedConfiguration"))
    LoadBalancer.struct_class = Types::LoadBalancer

    LoadBalancers.member = Shapes::ShapeRef.new(shape: LoadBalancer)

    LogConfiguration.add_member(:log_driver, Shapes::ShapeRef.new(shape: LogDriver, required: true, location_name: "logDriver"))
    LogConfiguration.add_member(:options, Shapes::ShapeRef.new(shape: LogConfigurationOptionsMap, location_name: "options"))
    LogConfiguration.add_member(:secret_options, Shapes::ShapeRef.new(shape: SecretList, location_name: "secretOptions"))
    LogConfiguration.struct_class = Types::LogConfiguration

    LogConfigurationOptionsMap.key = Shapes::ShapeRef.new(shape: String)
    LogConfigurationOptionsMap.value = Shapes::ShapeRef.new(shape: String)

    ManagedAgent.add_member(:last_started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastStartedAt"))
    ManagedAgent.add_member(:name, Shapes::ShapeRef.new(shape: ManagedAgentName, location_name: "name"))
    ManagedAgent.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    ManagedAgent.add_member(:last_status, Shapes::ShapeRef.new(shape: String, location_name: "lastStatus"))
    ManagedAgent.struct_class = Types::ManagedAgent

    ManagedAgentStateChange.add_member(:container_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerName"))
    ManagedAgentStateChange.add_member(:managed_agent_name, Shapes::ShapeRef.new(shape: ManagedAgentName, required: true, location_name: "managedAgentName"))
    ManagedAgentStateChange.add_member(:status, Shapes::ShapeRef.new(shape: String, required: true, location_name: "status"))
    ManagedAgentStateChange.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    ManagedAgentStateChange.struct_class = Types::ManagedAgentStateChange

    ManagedAgentStateChanges.member = Shapes::ShapeRef.new(shape: ManagedAgentStateChange)

    ManagedAgents.member = Shapes::ShapeRef.new(shape: ManagedAgent)

    ManagedScaling.add_member(:status, Shapes::ShapeRef.new(shape: ManagedScalingStatus, location_name: "status"))
    ManagedScaling.add_member(:target_capacity, Shapes::ShapeRef.new(shape: ManagedScalingTargetCapacity, location_name: "targetCapacity"))
    ManagedScaling.add_member(:minimum_scaling_step_size, Shapes::ShapeRef.new(shape: ManagedScalingStepSize, location_name: "minimumScalingStepSize"))
    ManagedScaling.add_member(:maximum_scaling_step_size, Shapes::ShapeRef.new(shape: ManagedScalingStepSize, location_name: "maximumScalingStepSize"))
    ManagedScaling.add_member(:instance_warmup_period, Shapes::ShapeRef.new(shape: ManagedScalingInstanceWarmupPeriod, location_name: "instanceWarmupPeriod"))
    ManagedScaling.struct_class = Types::ManagedScaling

    ManagedStorageConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    ManagedStorageConfiguration.add_member(:fargate_ephemeral_storage_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "fargateEphemeralStorageKmsKeyId"))
    ManagedStorageConfiguration.struct_class = Types::ManagedStorageConfiguration

    MissingVersionException.struct_class = Types::MissingVersionException

    MountPoint.add_member(:source_volume, Shapes::ShapeRef.new(shape: String, location_name: "sourceVolume"))
    MountPoint.add_member(:container_path, Shapes::ShapeRef.new(shape: String, location_name: "containerPath"))
    MountPoint.add_member(:read_only, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "readOnly"))
    MountPoint.struct_class = Types::MountPoint

    MountPointList.member = Shapes::ShapeRef.new(shape: MountPoint)

    NamespaceNotFoundException.struct_class = Types::NamespaceNotFoundException

    NetworkBinding.add_member(:bind_ip, Shapes::ShapeRef.new(shape: String, location_name: "bindIP"))
    NetworkBinding.add_member(:container_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "containerPort"))
    NetworkBinding.add_member(:host_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "hostPort"))
    NetworkBinding.add_member(:protocol, Shapes::ShapeRef.new(shape: TransportProtocol, location_name: "protocol"))
    NetworkBinding.add_member(:container_port_range, Shapes::ShapeRef.new(shape: String, location_name: "containerPortRange"))
    NetworkBinding.add_member(:host_port_range, Shapes::ShapeRef.new(shape: String, location_name: "hostPortRange"))
    NetworkBinding.struct_class = Types::NetworkBinding

    NetworkBindings.member = Shapes::ShapeRef.new(shape: NetworkBinding)

    NetworkConfiguration.add_member(:awsvpc_configuration, Shapes::ShapeRef.new(shape: AwsVpcConfiguration, location_name: "awsvpcConfiguration"))
    NetworkConfiguration.struct_class = Types::NetworkConfiguration

    NetworkInterface.add_member(:attachment_id, Shapes::ShapeRef.new(shape: String, location_name: "attachmentId"))
    NetworkInterface.add_member(:private_ipv_4_address, Shapes::ShapeRef.new(shape: String, location_name: "privateIpv4Address"))
    NetworkInterface.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: String, location_name: "ipv6Address"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaces.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    NoUpdateAvailableException.struct_class = Types::NoUpdateAvailableException

    PlacementConstraint.add_member(:type, Shapes::ShapeRef.new(shape: PlacementConstraintType, location_name: "type"))
    PlacementConstraint.add_member(:expression, Shapes::ShapeRef.new(shape: String, location_name: "expression"))
    PlacementConstraint.struct_class = Types::PlacementConstraint

    PlacementConstraints.member = Shapes::ShapeRef.new(shape: PlacementConstraint)

    PlacementStrategies.member = Shapes::ShapeRef.new(shape: PlacementStrategy)

    PlacementStrategy.add_member(:type, Shapes::ShapeRef.new(shape: PlacementStrategyType, location_name: "type"))
    PlacementStrategy.add_member(:field, Shapes::ShapeRef.new(shape: String, location_name: "field"))
    PlacementStrategy.struct_class = Types::PlacementStrategy

    PlatformDevice.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    PlatformDevice.add_member(:type, Shapes::ShapeRef.new(shape: PlatformDeviceType, required: true, location_name: "type"))
    PlatformDevice.struct_class = Types::PlatformDevice

    PlatformDevices.member = Shapes::ShapeRef.new(shape: PlatformDevice)

    PlatformTaskDefinitionIncompatibilityException.struct_class = Types::PlatformTaskDefinitionIncompatibilityException

    PlatformUnknownException.struct_class = Types::PlatformUnknownException

    PortMapping.add_member(:container_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "containerPort"))
    PortMapping.add_member(:host_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "hostPort"))
    PortMapping.add_member(:protocol, Shapes::ShapeRef.new(shape: TransportProtocol, location_name: "protocol"))
    PortMapping.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    PortMapping.add_member(:app_protocol, Shapes::ShapeRef.new(shape: ApplicationProtocol, location_name: "appProtocol"))
    PortMapping.add_member(:container_port_range, Shapes::ShapeRef.new(shape: String, location_name: "containerPortRange"))
    PortMapping.struct_class = Types::PortMapping

    PortMappingList.member = Shapes::ShapeRef.new(shape: PortMapping)

    ProtectedTask.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    ProtectedTask.add_member(:protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "protectionEnabled"))
    ProtectedTask.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expirationDate"))
    ProtectedTask.struct_class = Types::ProtectedTask

    ProtectedTasks.member = Shapes::ShapeRef.new(shape: ProtectedTask)

    ProxyConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: ProxyConfigurationType, location_name: "type"))
    ProxyConfiguration.add_member(:container_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerName"))
    ProxyConfiguration.add_member(:properties, Shapes::ShapeRef.new(shape: ProxyConfigurationProperties, location_name: "properties"))
    ProxyConfiguration.struct_class = Types::ProxyConfiguration

    ProxyConfigurationProperties.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    PutAccountSettingDefaultRequest.add_member(:name, Shapes::ShapeRef.new(shape: SettingName, required: true, location_name: "name"))
    PutAccountSettingDefaultRequest.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    PutAccountSettingDefaultRequest.struct_class = Types::PutAccountSettingDefaultRequest

    PutAccountSettingDefaultResponse.add_member(:setting, Shapes::ShapeRef.new(shape: Setting, location_name: "setting"))
    PutAccountSettingDefaultResponse.struct_class = Types::PutAccountSettingDefaultResponse

    PutAccountSettingRequest.add_member(:name, Shapes::ShapeRef.new(shape: SettingName, required: true, location_name: "name"))
    PutAccountSettingRequest.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    PutAccountSettingRequest.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, location_name: "principalArn"))
    PutAccountSettingRequest.struct_class = Types::PutAccountSettingRequest

    PutAccountSettingResponse.add_member(:setting, Shapes::ShapeRef.new(shape: Setting, location_name: "setting"))
    PutAccountSettingResponse.struct_class = Types::PutAccountSettingResponse

    PutAttributesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    PutAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "attributes"))
    PutAttributesRequest.struct_class = Types::PutAttributesRequest

    PutAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    PutAttributesResponse.struct_class = Types::PutAttributesResponse

    PutClusterCapacityProvidersRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    PutClusterCapacityProvidersRequest.add_member(:capacity_providers, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "capacityProviders"))
    PutClusterCapacityProvidersRequest.add_member(:default_capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, required: true, location_name: "defaultCapacityProviderStrategy"))
    PutClusterCapacityProvidersRequest.struct_class = Types::PutClusterCapacityProvidersRequest

    PutClusterCapacityProvidersResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    PutClusterCapacityProvidersResponse.struct_class = Types::PutClusterCapacityProvidersResponse

    RegisterContainerInstanceRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    RegisterContainerInstanceRequest.add_member(:instance_identity_document, Shapes::ShapeRef.new(shape: String, location_name: "instanceIdentityDocument"))
    RegisterContainerInstanceRequest.add_member(:instance_identity_document_signature, Shapes::ShapeRef.new(shape: String, location_name: "instanceIdentityDocumentSignature"))
    RegisterContainerInstanceRequest.add_member(:total_resources, Shapes::ShapeRef.new(shape: Resources, location_name: "totalResources"))
    RegisterContainerInstanceRequest.add_member(:version_info, Shapes::ShapeRef.new(shape: VersionInfo, location_name: "versionInfo"))
    RegisterContainerInstanceRequest.add_member(:container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerInstanceArn"))
    RegisterContainerInstanceRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    RegisterContainerInstanceRequest.add_member(:platform_devices, Shapes::ShapeRef.new(shape: PlatformDevices, location_name: "platformDevices"))
    RegisterContainerInstanceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RegisterContainerInstanceRequest.struct_class = Types::RegisterContainerInstanceRequest

    RegisterContainerInstanceResponse.add_member(:container_instance, Shapes::ShapeRef.new(shape: ContainerInstance, location_name: "containerInstance"))
    RegisterContainerInstanceResponse.struct_class = Types::RegisterContainerInstanceResponse

    RegisterTaskDefinitionRequest.add_member(:family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "family"))
    RegisterTaskDefinitionRequest.add_member(:task_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskRoleArn"))
    RegisterTaskDefinitionRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "executionRoleArn"))
    RegisterTaskDefinitionRequest.add_member(:network_mode, Shapes::ShapeRef.new(shape: NetworkMode, location_name: "networkMode"))
    RegisterTaskDefinitionRequest.add_member(:container_definitions, Shapes::ShapeRef.new(shape: ContainerDefinitions, required: true, location_name: "containerDefinitions"))
    RegisterTaskDefinitionRequest.add_member(:volumes, Shapes::ShapeRef.new(shape: VolumeList, location_name: "volumes"))
    RegisterTaskDefinitionRequest.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: TaskDefinitionPlacementConstraints, location_name: "placementConstraints"))
    RegisterTaskDefinitionRequest.add_member(:requires_compatibilities, Shapes::ShapeRef.new(shape: CompatibilityList, location_name: "requiresCompatibilities"))
    RegisterTaskDefinitionRequest.add_member(:cpu, Shapes::ShapeRef.new(shape: String, location_name: "cpu"))
    RegisterTaskDefinitionRequest.add_member(:memory, Shapes::ShapeRef.new(shape: String, location_name: "memory"))
    RegisterTaskDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RegisterTaskDefinitionRequest.add_member(:pid_mode, Shapes::ShapeRef.new(shape: PidMode, location_name: "pidMode"))
    RegisterTaskDefinitionRequest.add_member(:ipc_mode, Shapes::ShapeRef.new(shape: IpcMode, location_name: "ipcMode"))
    RegisterTaskDefinitionRequest.add_member(:proxy_configuration, Shapes::ShapeRef.new(shape: ProxyConfiguration, location_name: "proxyConfiguration"))
    RegisterTaskDefinitionRequest.add_member(:inference_accelerators, Shapes::ShapeRef.new(shape: InferenceAccelerators, location_name: "inferenceAccelerators"))
    RegisterTaskDefinitionRequest.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "ephemeralStorage"))
    RegisterTaskDefinitionRequest.add_member(:runtime_platform, Shapes::ShapeRef.new(shape: RuntimePlatform, location_name: "runtimePlatform"))
    RegisterTaskDefinitionRequest.add_member(:enable_fault_injection, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enableFaultInjection"))
    RegisterTaskDefinitionRequest.struct_class = Types::RegisterTaskDefinitionRequest

    RegisterTaskDefinitionResponse.add_member(:task_definition, Shapes::ShapeRef.new(shape: TaskDefinition, location_name: "taskDefinition"))
    RegisterTaskDefinitionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RegisterTaskDefinitionResponse.struct_class = Types::RegisterTaskDefinitionResponse

    RepositoryCredentials.add_member(:credentials_parameter, Shapes::ShapeRef.new(shape: String, required: true, location_name: "credentialsParameter"))
    RepositoryCredentials.struct_class = Types::RepositoryCredentials

    RequiresAttributes.member = Shapes::ShapeRef.new(shape: Attribute)

    ResolvedConfiguration.add_member(:load_balancers, Shapes::ShapeRef.new(shape: ServiceRevisionLoadBalancers, location_name: "loadBalancers"))
    ResolvedConfiguration.struct_class = Types::ResolvedConfiguration

    Resource.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Resource.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "type"))
    Resource.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "doubleValue"))
    Resource.add_member(:long_value, Shapes::ShapeRef.new(shape: Long, location_name: "longValue"))
    Resource.add_member(:integer_value, Shapes::ShapeRef.new(shape: Integer, location_name: "integerValue"))
    Resource.add_member(:string_set_value, Shapes::ShapeRef.new(shape: StringList, location_name: "stringSetValue"))
    Resource.struct_class = Types::Resource

    ResourceIds.member = Shapes::ShapeRef.new(shape: String)

    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceRequirement.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    ResourceRequirement.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "type"))
    ResourceRequirement.struct_class = Types::ResourceRequirement

    ResourceRequirements.member = Shapes::ShapeRef.new(shape: ResourceRequirement)

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    Rollback.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    Rollback.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    Rollback.add_member(:service_revision_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceRevisionArn"))
    Rollback.struct_class = Types::Rollback

    RunTaskRequest.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    RunTaskRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    RunTaskRequest.add_member(:count, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "count"))
    RunTaskRequest.add_member(:enable_ecs_managed_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableECSManagedTags"))
    RunTaskRequest.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableExecuteCommand"))
    RunTaskRequest.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "group"))
    RunTaskRequest.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    RunTaskRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    RunTaskRequest.add_member(:overrides, Shapes::ShapeRef.new(shape: TaskOverride, location_name: "overrides"))
    RunTaskRequest.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: "placementConstraints"))
    RunTaskRequest.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: "placementStrategy"))
    RunTaskRequest.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    RunTaskRequest.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: PropagateTags, location_name: "propagateTags"))
    RunTaskRequest.add_member(:reference_id, Shapes::ShapeRef.new(shape: String, location_name: "referenceId"))
    RunTaskRequest.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    RunTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RunTaskRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskDefinition"))
    RunTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    RunTaskRequest.add_member(:volume_configurations, Shapes::ShapeRef.new(shape: TaskVolumeConfigurations, location_name: "volumeConfigurations"))
    RunTaskRequest.struct_class = Types::RunTaskRequest

    RunTaskResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, location_name: "tasks"))
    RunTaskResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    RunTaskResponse.struct_class = Types::RunTaskResponse

    RuntimePlatform.add_member(:cpu_architecture, Shapes::ShapeRef.new(shape: CPUArchitecture, location_name: "cpuArchitecture"))
    RuntimePlatform.add_member(:operating_system_family, Shapes::ShapeRef.new(shape: OSFamily, location_name: "operatingSystemFamily"))
    RuntimePlatform.struct_class = Types::RuntimePlatform

    Scale.add_member(:value, Shapes::ShapeRef.new(shape: Double, location_name: "value"))
    Scale.add_member(:unit, Shapes::ShapeRef.new(shape: ScaleUnit, location_name: "unit"))
    Scale.struct_class = Types::Scale

    Secret.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Secret.add_member(:value_from, Shapes::ShapeRef.new(shape: String, required: true, location_name: "valueFrom"))
    Secret.struct_class = Types::Secret

    SecretList.member = Shapes::ShapeRef.new(shape: Secret)

    ServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServerException.struct_class = Types::ServerException

    Service.add_member(:service_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceArn"))
    Service.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    Service.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    Service.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "loadBalancers"))
    Service.add_member(:service_registries, Shapes::ShapeRef.new(shape: ServiceRegistries, location_name: "serviceRegistries"))
    Service.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    Service.add_member(:desired_count, Shapes::ShapeRef.new(shape: Integer, location_name: "desiredCount"))
    Service.add_member(:running_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningCount"))
    Service.add_member(:pending_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingCount"))
    Service.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    Service.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    Service.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    Service.add_member(:platform_family, Shapes::ShapeRef.new(shape: String, location_name: "platformFamily"))
    Service.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinition"))
    Service.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    Service.add_member(:task_sets, Shapes::ShapeRef.new(shape: TaskSets, location_name: "taskSets"))
    Service.add_member(:deployments, Shapes::ShapeRef.new(shape: Deployments, location_name: "deployments"))
    Service.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    Service.add_member(:events, Shapes::ShapeRef.new(shape: ServiceEvents, location_name: "events"))
    Service.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Service.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: "placementConstraints"))
    Service.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: "placementStrategy"))
    Service.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    Service.add_member(:health_check_grace_period_seconds, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "healthCheckGracePeriodSeconds"))
    Service.add_member(:scheduling_strategy, Shapes::ShapeRef.new(shape: SchedulingStrategy, location_name: "schedulingStrategy"))
    Service.add_member(:deployment_controller, Shapes::ShapeRef.new(shape: DeploymentController, location_name: "deploymentController"))
    Service.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Service.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "createdBy"))
    Service.add_member(:enable_ecs_managed_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableECSManagedTags"))
    Service.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: PropagateTags, location_name: "propagateTags"))
    Service.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableExecuteCommand"))
    Service.add_member(:availability_zone_rebalancing, Shapes::ShapeRef.new(shape: AvailabilityZoneRebalancing, location_name: "availabilityZoneRebalancing"))
    Service.struct_class = Types::Service

    ServiceConnectClientAlias.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "port"))
    ServiceConnectClientAlias.add_member(:dns_name, Shapes::ShapeRef.new(shape: String, location_name: "dnsName"))
    ServiceConnectClientAlias.add_member(:test_traffic_rules, Shapes::ShapeRef.new(shape: ServiceConnectTestTrafficRules, location_name: "testTrafficRules"))
    ServiceConnectClientAlias.struct_class = Types::ServiceConnectClientAlias

    ServiceConnectClientAliasList.member = Shapes::ShapeRef.new(shape: ServiceConnectClientAlias)

    ServiceConnectConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    ServiceConnectConfiguration.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    ServiceConnectConfiguration.add_member(:services, Shapes::ShapeRef.new(shape: ServiceConnectServiceList, location_name: "services"))
    ServiceConnectConfiguration.add_member(:log_configuration, Shapes::ShapeRef.new(shape: LogConfiguration, location_name: "logConfiguration"))
    ServiceConnectConfiguration.struct_class = Types::ServiceConnectConfiguration

    ServiceConnectService.add_member(:port_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "portName"))
    ServiceConnectService.add_member(:discovery_name, Shapes::ShapeRef.new(shape: String, location_name: "discoveryName"))
    ServiceConnectService.add_member(:client_aliases, Shapes::ShapeRef.new(shape: ServiceConnectClientAliasList, location_name: "clientAliases"))
    ServiceConnectService.add_member(:ingress_port_override, Shapes::ShapeRef.new(shape: PortNumber, location_name: "ingressPortOverride"))
    ServiceConnectService.add_member(:timeout, Shapes::ShapeRef.new(shape: TimeoutConfiguration, location_name: "timeout"))
    ServiceConnectService.add_member(:tls, Shapes::ShapeRef.new(shape: ServiceConnectTlsConfiguration, location_name: "tls"))
    ServiceConnectService.struct_class = Types::ServiceConnectService

    ServiceConnectServiceList.member = Shapes::ShapeRef.new(shape: ServiceConnectService)

    ServiceConnectServiceResource.add_member(:discovery_name, Shapes::ShapeRef.new(shape: String, location_name: "discoveryName"))
    ServiceConnectServiceResource.add_member(:discovery_arn, Shapes::ShapeRef.new(shape: String, location_name: "discoveryArn"))
    ServiceConnectServiceResource.struct_class = Types::ServiceConnectServiceResource

    ServiceConnectServiceResourceList.member = Shapes::ShapeRef.new(shape: ServiceConnectServiceResource)

    ServiceConnectTestTrafficHeaderMatchRules.add_member(:exact, Shapes::ShapeRef.new(shape: String, required: true, location_name: "exact"))
    ServiceConnectTestTrafficHeaderMatchRules.struct_class = Types::ServiceConnectTestTrafficHeaderMatchRules

    ServiceConnectTestTrafficHeaderRules.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ServiceConnectTestTrafficHeaderRules.add_member(:value, Shapes::ShapeRef.new(shape: ServiceConnectTestTrafficHeaderMatchRules, location_name: "value"))
    ServiceConnectTestTrafficHeaderRules.struct_class = Types::ServiceConnectTestTrafficHeaderRules

    ServiceConnectTestTrafficRules.add_member(:header, Shapes::ShapeRef.new(shape: ServiceConnectTestTrafficHeaderRules, required: true, location_name: "header"))
    ServiceConnectTestTrafficRules.struct_class = Types::ServiceConnectTestTrafficRules

    ServiceConnectTlsCertificateAuthority.add_member(:aws_pca_authority_arn, Shapes::ShapeRef.new(shape: String, location_name: "awsPcaAuthorityArn"))
    ServiceConnectTlsCertificateAuthority.struct_class = Types::ServiceConnectTlsCertificateAuthority

    ServiceConnectTlsConfiguration.add_member(:issuer_certificate_authority, Shapes::ShapeRef.new(shape: ServiceConnectTlsCertificateAuthority, required: true, location_name: "issuerCertificateAuthority"))
    ServiceConnectTlsConfiguration.add_member(:kms_key, Shapes::ShapeRef.new(shape: String, location_name: "kmsKey"))
    ServiceConnectTlsConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    ServiceConnectTlsConfiguration.struct_class = Types::ServiceConnectTlsConfiguration

    ServiceDeployment.add_member(:service_deployment_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceDeploymentArn"))
    ServiceDeployment.add_member(:service_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceArn"))
    ServiceDeployment.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    ServiceDeployment.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceDeployment.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    ServiceDeployment.add_member(:finished_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "finishedAt"))
    ServiceDeployment.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stoppedAt"))
    ServiceDeployment.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ServiceDeployment.add_member(:source_service_revisions, Shapes::ShapeRef.new(shape: ServiceRevisionsSummaryList, location_name: "sourceServiceRevisions"))
    ServiceDeployment.add_member(:target_service_revision, Shapes::ShapeRef.new(shape: ServiceRevisionSummary, location_name: "targetServiceRevision"))
    ServiceDeployment.add_member(:status, Shapes::ShapeRef.new(shape: ServiceDeploymentStatus, location_name: "status"))
    ServiceDeployment.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ServiceDeployment.add_member(:lifecycle_stage, Shapes::ShapeRef.new(shape: ServiceDeploymentLifecycleStage, location_name: "lifecycleStage"))
    ServiceDeployment.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    ServiceDeployment.add_member(:rollback, Shapes::ShapeRef.new(shape: Rollback, location_name: "rollback"))
    ServiceDeployment.add_member(:deployment_circuit_breaker, Shapes::ShapeRef.new(shape: ServiceDeploymentCircuitBreaker, location_name: "deploymentCircuitBreaker"))
    ServiceDeployment.add_member(:alarms, Shapes::ShapeRef.new(shape: ServiceDeploymentAlarms, location_name: "alarms"))
    ServiceDeployment.struct_class = Types::ServiceDeployment

    ServiceDeploymentAlarms.add_member(:status, Shapes::ShapeRef.new(shape: ServiceDeploymentRollbackMonitorsStatus, location_name: "status"))
    ServiceDeploymentAlarms.add_member(:alarm_names, Shapes::ShapeRef.new(shape: StringList, location_name: "alarmNames"))
    ServiceDeploymentAlarms.add_member(:triggered_alarm_names, Shapes::ShapeRef.new(shape: StringList, location_name: "triggeredAlarmNames"))
    ServiceDeploymentAlarms.struct_class = Types::ServiceDeploymentAlarms

    ServiceDeploymentBrief.add_member(:service_deployment_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceDeploymentArn"))
    ServiceDeploymentBrief.add_member(:service_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceArn"))
    ServiceDeploymentBrief.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    ServiceDeploymentBrief.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    ServiceDeploymentBrief.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceDeploymentBrief.add_member(:finished_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "finishedAt"))
    ServiceDeploymentBrief.add_member(:target_service_revision_arn, Shapes::ShapeRef.new(shape: String, location_name: "targetServiceRevisionArn"))
    ServiceDeploymentBrief.add_member(:status, Shapes::ShapeRef.new(shape: ServiceDeploymentStatus, location_name: "status"))
    ServiceDeploymentBrief.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ServiceDeploymentBrief.struct_class = Types::ServiceDeploymentBrief

    ServiceDeploymentCircuitBreaker.add_member(:status, Shapes::ShapeRef.new(shape: ServiceDeploymentRollbackMonitorsStatus, location_name: "status"))
    ServiceDeploymentCircuitBreaker.add_member(:failure_count, Shapes::ShapeRef.new(shape: Integer, location_name: "failureCount"))
    ServiceDeploymentCircuitBreaker.add_member(:threshold, Shapes::ShapeRef.new(shape: Integer, location_name: "threshold"))
    ServiceDeploymentCircuitBreaker.struct_class = Types::ServiceDeploymentCircuitBreaker

    ServiceDeploymentNotFoundException.struct_class = Types::ServiceDeploymentNotFoundException

    ServiceDeploymentStatusList.member = Shapes::ShapeRef.new(shape: ServiceDeploymentStatus)

    ServiceDeployments.member = Shapes::ShapeRef.new(shape: ServiceDeployment)

    ServiceDeploymentsBrief.member = Shapes::ShapeRef.new(shape: ServiceDeploymentBrief)

    ServiceEvent.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    ServiceEvent.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceEvent.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceEvent.struct_class = Types::ServiceEvent

    ServiceEvents.member = Shapes::ShapeRef.new(shape: ServiceEvent)

    ServiceFieldList.member = Shapes::ShapeRef.new(shape: ServiceField)

    ServiceManagedEBSVolumeConfiguration.add_member(:encrypted, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "encrypted"))
    ServiceManagedEBSVolumeConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EBSKMSKeyId, location_name: "kmsKeyId"))
    ServiceManagedEBSVolumeConfiguration.add_member(:volume_type, Shapes::ShapeRef.new(shape: EBSVolumeType, location_name: "volumeType"))
    ServiceManagedEBSVolumeConfiguration.add_member(:size_in_gi_b, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "sizeInGiB"))
    ServiceManagedEBSVolumeConfiguration.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: EBSSnapshotId, location_name: "snapshotId"))
    ServiceManagedEBSVolumeConfiguration.add_member(:volume_initialization_rate, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "volumeInitializationRate"))
    ServiceManagedEBSVolumeConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "iops"))
    ServiceManagedEBSVolumeConfiguration.add_member(:throughput, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "throughput"))
    ServiceManagedEBSVolumeConfiguration.add_member(:tag_specifications, Shapes::ShapeRef.new(shape: EBSTagSpecifications, location_name: "tagSpecifications"))
    ServiceManagedEBSVolumeConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "roleArn"))
    ServiceManagedEBSVolumeConfiguration.add_member(:filesystem_type, Shapes::ShapeRef.new(shape: TaskFilesystemType, location_name: "filesystemType"))
    ServiceManagedEBSVolumeConfiguration.struct_class = Types::ServiceManagedEBSVolumeConfiguration

    ServiceNotActiveException.struct_class = Types::ServiceNotActiveException

    ServiceNotFoundException.struct_class = Types::ServiceNotFoundException

    ServiceRegistries.member = Shapes::ShapeRef.new(shape: ServiceRegistry)

    ServiceRegistry.add_member(:registry_arn, Shapes::ShapeRef.new(shape: String, location_name: "registryArn"))
    ServiceRegistry.add_member(:port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "port"))
    ServiceRegistry.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    ServiceRegistry.add_member(:container_port, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "containerPort"))
    ServiceRegistry.struct_class = Types::ServiceRegistry

    ServiceRevision.add_member(:service_revision_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceRevisionArn"))
    ServiceRevision.add_member(:service_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceArn"))
    ServiceRevision.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    ServiceRevision.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinition"))
    ServiceRevision.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    ServiceRevision.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    ServiceRevision.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    ServiceRevision.add_member(:platform_family, Shapes::ShapeRef.new(shape: String, location_name: "platformFamily"))
    ServiceRevision.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "loadBalancers"))
    ServiceRevision.add_member(:service_registries, Shapes::ShapeRef.new(shape: ServiceRegistries, location_name: "serviceRegistries"))
    ServiceRevision.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    ServiceRevision.add_member(:container_images, Shapes::ShapeRef.new(shape: ContainerImages, location_name: "containerImages"))
    ServiceRevision.add_member(:guard_duty_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "guardDutyEnabled"))
    ServiceRevision.add_member(:service_connect_configuration, Shapes::ShapeRef.new(shape: ServiceConnectConfiguration, location_name: "serviceConnectConfiguration"))
    ServiceRevision.add_member(:volume_configurations, Shapes::ShapeRef.new(shape: ServiceVolumeConfigurations, location_name: "volumeConfigurations"))
    ServiceRevision.add_member(:fargate_ephemeral_storage, Shapes::ShapeRef.new(shape: DeploymentEphemeralStorage, location_name: "fargateEphemeralStorage"))
    ServiceRevision.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceRevision.add_member(:vpc_lattice_configurations, Shapes::ShapeRef.new(shape: VpcLatticeConfigurations, location_name: "vpcLatticeConfigurations"))
    ServiceRevision.add_member(:resolved_configuration, Shapes::ShapeRef.new(shape: ResolvedConfiguration, location_name: "resolvedConfiguration"))
    ServiceRevision.struct_class = Types::ServiceRevision

    ServiceRevisionLoadBalancer.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "targetGroupArn"))
    ServiceRevisionLoadBalancer.add_member(:production_listener_rule, Shapes::ShapeRef.new(shape: String, location_name: "productionListenerRule"))
    ServiceRevisionLoadBalancer.struct_class = Types::ServiceRevisionLoadBalancer

    ServiceRevisionLoadBalancers.member = Shapes::ShapeRef.new(shape: ServiceRevisionLoadBalancer)

    ServiceRevisionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    ServiceRevisionSummary.add_member(:requested_task_count, Shapes::ShapeRef.new(shape: Integer, location_name: "requestedTaskCount"))
    ServiceRevisionSummary.add_member(:running_task_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningTaskCount"))
    ServiceRevisionSummary.add_member(:pending_task_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingTaskCount"))
    ServiceRevisionSummary.struct_class = Types::ServiceRevisionSummary

    ServiceRevisions.member = Shapes::ShapeRef.new(shape: ServiceRevision)

    ServiceRevisionsSummaryList.member = Shapes::ShapeRef.new(shape: ServiceRevisionSummary)

    ServiceVolumeConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: ECSVolumeName, required: true, location_name: "name"))
    ServiceVolumeConfiguration.add_member(:managed_ebs_volume, Shapes::ShapeRef.new(shape: ServiceManagedEBSVolumeConfiguration, location_name: "managedEBSVolume"))
    ServiceVolumeConfiguration.struct_class = Types::ServiceVolumeConfiguration

    ServiceVolumeConfigurations.member = Shapes::ShapeRef.new(shape: ServiceVolumeConfiguration)

    Services.member = Shapes::ShapeRef.new(shape: Service)

    Session.add_member(:session_id, Shapes::ShapeRef.new(shape: String, location_name: "sessionId"))
    Session.add_member(:stream_url, Shapes::ShapeRef.new(shape: String, location_name: "streamUrl"))
    Session.add_member(:token_value, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "tokenValue"))
    Session.struct_class = Types::Session

    Setting.add_member(:name, Shapes::ShapeRef.new(shape: SettingName, location_name: "name"))
    Setting.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    Setting.add_member(:principal_arn, Shapes::ShapeRef.new(shape: String, location_name: "principalArn"))
    Setting.add_member(:type, Shapes::ShapeRef.new(shape: SettingType, location_name: "type"))
    Setting.struct_class = Types::Setting

    Settings.member = Shapes::ShapeRef.new(shape: Setting)

    StartTaskRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    StartTaskRequest.add_member(:container_instances, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "containerInstances"))
    StartTaskRequest.add_member(:enable_ecs_managed_tags, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableECSManagedTags"))
    StartTaskRequest.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableExecuteCommand"))
    StartTaskRequest.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "group"))
    StartTaskRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    StartTaskRequest.add_member(:overrides, Shapes::ShapeRef.new(shape: TaskOverride, location_name: "overrides"))
    StartTaskRequest.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: PropagateTags, location_name: "propagateTags"))
    StartTaskRequest.add_member(:reference_id, Shapes::ShapeRef.new(shape: String, location_name: "referenceId"))
    StartTaskRequest.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    StartTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StartTaskRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskDefinition"))
    StartTaskRequest.add_member(:volume_configurations, Shapes::ShapeRef.new(shape: TaskVolumeConfigurations, location_name: "volumeConfigurations"))
    StartTaskRequest.struct_class = Types::StartTaskRequest

    StartTaskResponse.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, location_name: "tasks"))
    StartTaskResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    StartTaskResponse.struct_class = Types::StartTaskResponse

    Statistics.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    StopServiceDeploymentRequest.add_member(:service_deployment_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceDeploymentArn"))
    StopServiceDeploymentRequest.add_member(:stop_type, Shapes::ShapeRef.new(shape: StopServiceDeploymentStopType, location_name: "stopType"))
    StopServiceDeploymentRequest.struct_class = Types::StopServiceDeploymentRequest

    StopServiceDeploymentResponse.add_member(:service_deployment_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceDeploymentArn"))
    StopServiceDeploymentResponse.struct_class = Types::StopServiceDeploymentResponse

    StopTaskRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    StopTaskRequest.add_member(:task, Shapes::ShapeRef.new(shape: String, required: true, location_name: "task"))
    StopTaskRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    StopTaskRequest.struct_class = Types::StopTaskRequest

    StopTaskResponse.add_member(:task, Shapes::ShapeRef.new(shape: Task, location_name: "task"))
    StopTaskResponse.struct_class = Types::StopTaskResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    SubmitAttachmentStateChangesRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    SubmitAttachmentStateChangesRequest.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentStateChanges, required: true, location_name: "attachments"))
    SubmitAttachmentStateChangesRequest.struct_class = Types::SubmitAttachmentStateChangesRequest

    SubmitAttachmentStateChangesResponse.add_member(:acknowledgment, Shapes::ShapeRef.new(shape: String, location_name: "acknowledgment"))
    SubmitAttachmentStateChangesResponse.struct_class = Types::SubmitAttachmentStateChangesResponse

    SubmitContainerStateChangeRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    SubmitContainerStateChangeRequest.add_member(:task, Shapes::ShapeRef.new(shape: String, location_name: "task"))
    SubmitContainerStateChangeRequest.add_member(:container_name, Shapes::ShapeRef.new(shape: String, location_name: "containerName"))
    SubmitContainerStateChangeRequest.add_member(:runtime_id, Shapes::ShapeRef.new(shape: String, location_name: "runtimeId"))
    SubmitContainerStateChangeRequest.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    SubmitContainerStateChangeRequest.add_member(:exit_code, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "exitCode"))
    SubmitContainerStateChangeRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    SubmitContainerStateChangeRequest.add_member(:network_bindings, Shapes::ShapeRef.new(shape: NetworkBindings, location_name: "networkBindings"))
    SubmitContainerStateChangeRequest.struct_class = Types::SubmitContainerStateChangeRequest

    SubmitContainerStateChangeResponse.add_member(:acknowledgment, Shapes::ShapeRef.new(shape: String, location_name: "acknowledgment"))
    SubmitContainerStateChangeResponse.struct_class = Types::SubmitContainerStateChangeResponse

    SubmitTaskStateChangeRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    SubmitTaskStateChangeRequest.add_member(:task, Shapes::ShapeRef.new(shape: String, location_name: "task"))
    SubmitTaskStateChangeRequest.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    SubmitTaskStateChangeRequest.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    SubmitTaskStateChangeRequest.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerStateChanges, location_name: "containers"))
    SubmitTaskStateChangeRequest.add_member(:attachments, Shapes::ShapeRef.new(shape: AttachmentStateChanges, location_name: "attachments"))
    SubmitTaskStateChangeRequest.add_member(:managed_agents, Shapes::ShapeRef.new(shape: ManagedAgentStateChanges, location_name: "managedAgents"))
    SubmitTaskStateChangeRequest.add_member(:pull_started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "pullStartedAt"))
    SubmitTaskStateChangeRequest.add_member(:pull_stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "pullStoppedAt"))
    SubmitTaskStateChangeRequest.add_member(:execution_stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "executionStoppedAt"))
    SubmitTaskStateChangeRequest.struct_class = Types::SubmitTaskStateChangeRequest

    SubmitTaskStateChangeResponse.add_member(:acknowledgment, Shapes::ShapeRef.new(shape: String, location_name: "acknowledgment"))
    SubmitTaskStateChangeResponse.struct_class = Types::SubmitTaskStateChangeResponse

    SystemControl.add_member(:namespace, Shapes::ShapeRef.new(shape: String, location_name: "namespace"))
    SystemControl.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    SystemControl.struct_class = Types::SystemControl

    SystemControls.member = Shapes::ShapeRef.new(shape: SystemControl)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TargetNotConnectedException.struct_class = Types::TargetNotConnectedException

    TargetNotFoundException.struct_class = Types::TargetNotFoundException

    Task.add_member(:attachments, Shapes::ShapeRef.new(shape: Attachments, location_name: "attachments"))
    Task.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    Task.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    Task.add_member(:capacity_provider_name, Shapes::ShapeRef.new(shape: String, location_name: "capacityProviderName"))
    Task.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    Task.add_member(:connectivity, Shapes::ShapeRef.new(shape: Connectivity, location_name: "connectivity"))
    Task.add_member(:connectivity_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "connectivityAt"))
    Task.add_member(:container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "containerInstanceArn"))
    Task.add_member(:containers, Shapes::ShapeRef.new(shape: Containers, location_name: "containers"))
    Task.add_member(:cpu, Shapes::ShapeRef.new(shape: String, location_name: "cpu"))
    Task.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Task.add_member(:desired_status, Shapes::ShapeRef.new(shape: String, location_name: "desiredStatus"))
    Task.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableExecuteCommand"))
    Task.add_member(:execution_stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "executionStoppedAt"))
    Task.add_member(:group, Shapes::ShapeRef.new(shape: String, location_name: "group"))
    Task.add_member(:health_status, Shapes::ShapeRef.new(shape: HealthStatus, location_name: "healthStatus"))
    Task.add_member(:inference_accelerators, Shapes::ShapeRef.new(shape: InferenceAccelerators, location_name: "inferenceAccelerators"))
    Task.add_member(:last_status, Shapes::ShapeRef.new(shape: String, location_name: "lastStatus"))
    Task.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    Task.add_member(:memory, Shapes::ShapeRef.new(shape: String, location_name: "memory"))
    Task.add_member(:overrides, Shapes::ShapeRef.new(shape: TaskOverride, location_name: "overrides"))
    Task.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    Task.add_member(:platform_family, Shapes::ShapeRef.new(shape: String, location_name: "platformFamily"))
    Task.add_member(:pull_started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "pullStartedAt"))
    Task.add_member(:pull_stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "pullStoppedAt"))
    Task.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    Task.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    Task.add_member(:stop_code, Shapes::ShapeRef.new(shape: TaskStopCode, location_name: "stopCode"))
    Task.add_member(:stopped_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stoppedAt"))
    Task.add_member(:stopped_reason, Shapes::ShapeRef.new(shape: String, location_name: "stoppedReason"))
    Task.add_member(:stopping_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stoppingAt"))
    Task.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Task.add_member(:task_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskArn"))
    Task.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinitionArn"))
    Task.add_member(:version, Shapes::ShapeRef.new(shape: Long, location_name: "version"))
    Task.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "ephemeralStorage"))
    Task.add_member(:fargate_ephemeral_storage, Shapes::ShapeRef.new(shape: TaskEphemeralStorage, location_name: "fargateEphemeralStorage"))
    Task.struct_class = Types::Task

    TaskDefinition.add_member(:task_definition_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinitionArn"))
    TaskDefinition.add_member(:container_definitions, Shapes::ShapeRef.new(shape: ContainerDefinitions, location_name: "containerDefinitions"))
    TaskDefinition.add_member(:family, Shapes::ShapeRef.new(shape: String, location_name: "family"))
    TaskDefinition.add_member(:task_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskRoleArn"))
    TaskDefinition.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "executionRoleArn"))
    TaskDefinition.add_member(:network_mode, Shapes::ShapeRef.new(shape: NetworkMode, location_name: "networkMode"))
    TaskDefinition.add_member(:revision, Shapes::ShapeRef.new(shape: Integer, location_name: "revision"))
    TaskDefinition.add_member(:volumes, Shapes::ShapeRef.new(shape: VolumeList, location_name: "volumes"))
    TaskDefinition.add_member(:status, Shapes::ShapeRef.new(shape: TaskDefinitionStatus, location_name: "status"))
    TaskDefinition.add_member(:requires_attributes, Shapes::ShapeRef.new(shape: RequiresAttributes, location_name: "requiresAttributes"))
    TaskDefinition.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: TaskDefinitionPlacementConstraints, location_name: "placementConstraints"))
    TaskDefinition.add_member(:compatibilities, Shapes::ShapeRef.new(shape: CompatibilityList, location_name: "compatibilities"))
    TaskDefinition.add_member(:runtime_platform, Shapes::ShapeRef.new(shape: RuntimePlatform, location_name: "runtimePlatform"))
    TaskDefinition.add_member(:requires_compatibilities, Shapes::ShapeRef.new(shape: CompatibilityList, location_name: "requiresCompatibilities"))
    TaskDefinition.add_member(:cpu, Shapes::ShapeRef.new(shape: String, location_name: "cpu"))
    TaskDefinition.add_member(:memory, Shapes::ShapeRef.new(shape: String, location_name: "memory"))
    TaskDefinition.add_member(:inference_accelerators, Shapes::ShapeRef.new(shape: InferenceAccelerators, location_name: "inferenceAccelerators"))
    TaskDefinition.add_member(:pid_mode, Shapes::ShapeRef.new(shape: PidMode, location_name: "pidMode"))
    TaskDefinition.add_member(:ipc_mode, Shapes::ShapeRef.new(shape: IpcMode, location_name: "ipcMode"))
    TaskDefinition.add_member(:proxy_configuration, Shapes::ShapeRef.new(shape: ProxyConfiguration, location_name: "proxyConfiguration"))
    TaskDefinition.add_member(:registered_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "registeredAt"))
    TaskDefinition.add_member(:deregistered_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "deregisteredAt"))
    TaskDefinition.add_member(:registered_by, Shapes::ShapeRef.new(shape: String, location_name: "registeredBy"))
    TaskDefinition.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "ephemeralStorage"))
    TaskDefinition.add_member(:enable_fault_injection, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enableFaultInjection"))
    TaskDefinition.struct_class = Types::TaskDefinition

    TaskDefinitionFieldList.member = Shapes::ShapeRef.new(shape: TaskDefinitionField)

    TaskDefinitionList.member = Shapes::ShapeRef.new(shape: TaskDefinition)

    TaskDefinitionPlacementConstraint.add_member(:type, Shapes::ShapeRef.new(shape: TaskDefinitionPlacementConstraintType, location_name: "type"))
    TaskDefinitionPlacementConstraint.add_member(:expression, Shapes::ShapeRef.new(shape: String, location_name: "expression"))
    TaskDefinitionPlacementConstraint.struct_class = Types::TaskDefinitionPlacementConstraint

    TaskDefinitionPlacementConstraints.member = Shapes::ShapeRef.new(shape: TaskDefinitionPlacementConstraint)

    TaskEphemeralStorage.add_member(:size_in_gi_b, Shapes::ShapeRef.new(shape: Integer, location_name: "sizeInGiB"))
    TaskEphemeralStorage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    TaskEphemeralStorage.struct_class = Types::TaskEphemeralStorage

    TaskFieldList.member = Shapes::ShapeRef.new(shape: TaskField)

    TaskManagedEBSVolumeConfiguration.add_member(:encrypted, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "encrypted"))
    TaskManagedEBSVolumeConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: EBSKMSKeyId, location_name: "kmsKeyId"))
    TaskManagedEBSVolumeConfiguration.add_member(:volume_type, Shapes::ShapeRef.new(shape: EBSVolumeType, location_name: "volumeType"))
    TaskManagedEBSVolumeConfiguration.add_member(:size_in_gi_b, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "sizeInGiB"))
    TaskManagedEBSVolumeConfiguration.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: EBSSnapshotId, location_name: "snapshotId"))
    TaskManagedEBSVolumeConfiguration.add_member(:volume_initialization_rate, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "volumeInitializationRate"))
    TaskManagedEBSVolumeConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "iops"))
    TaskManagedEBSVolumeConfiguration.add_member(:throughput, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "throughput"))
    TaskManagedEBSVolumeConfiguration.add_member(:tag_specifications, Shapes::ShapeRef.new(shape: EBSTagSpecifications, location_name: "tagSpecifications"))
    TaskManagedEBSVolumeConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "roleArn"))
    TaskManagedEBSVolumeConfiguration.add_member(:termination_policy, Shapes::ShapeRef.new(shape: TaskManagedEBSVolumeTerminationPolicy, location_name: "terminationPolicy"))
    TaskManagedEBSVolumeConfiguration.add_member(:filesystem_type, Shapes::ShapeRef.new(shape: TaskFilesystemType, location_name: "filesystemType"))
    TaskManagedEBSVolumeConfiguration.struct_class = Types::TaskManagedEBSVolumeConfiguration

    TaskManagedEBSVolumeTerminationPolicy.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "deleteOnTermination"))
    TaskManagedEBSVolumeTerminationPolicy.struct_class = Types::TaskManagedEBSVolumeTerminationPolicy

    TaskOverride.add_member(:container_overrides, Shapes::ShapeRef.new(shape: ContainerOverrides, location_name: "containerOverrides"))
    TaskOverride.add_member(:cpu, Shapes::ShapeRef.new(shape: String, location_name: "cpu"))
    TaskOverride.add_member(:inference_accelerator_overrides, Shapes::ShapeRef.new(shape: InferenceAcceleratorOverrides, location_name: "inferenceAcceleratorOverrides"))
    TaskOverride.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "executionRoleArn"))
    TaskOverride.add_member(:memory, Shapes::ShapeRef.new(shape: String, location_name: "memory"))
    TaskOverride.add_member(:task_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskRoleArn"))
    TaskOverride.add_member(:ephemeral_storage, Shapes::ShapeRef.new(shape: EphemeralStorage, location_name: "ephemeralStorage"))
    TaskOverride.struct_class = Types::TaskOverride

    TaskSet.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    TaskSet.add_member(:task_set_arn, Shapes::ShapeRef.new(shape: String, location_name: "taskSetArn"))
    TaskSet.add_member(:service_arn, Shapes::ShapeRef.new(shape: String, location_name: "serviceArn"))
    TaskSet.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "clusterArn"))
    TaskSet.add_member(:started_by, Shapes::ShapeRef.new(shape: String, location_name: "startedBy"))
    TaskSet.add_member(:external_id, Shapes::ShapeRef.new(shape: String, location_name: "externalId"))
    TaskSet.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    TaskSet.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinition"))
    TaskSet.add_member(:computed_desired_count, Shapes::ShapeRef.new(shape: Integer, location_name: "computedDesiredCount"))
    TaskSet.add_member(:pending_count, Shapes::ShapeRef.new(shape: Integer, location_name: "pendingCount"))
    TaskSet.add_member(:running_count, Shapes::ShapeRef.new(shape: Integer, location_name: "runningCount"))
    TaskSet.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    TaskSet.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    TaskSet.add_member(:launch_type, Shapes::ShapeRef.new(shape: LaunchType, location_name: "launchType"))
    TaskSet.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    TaskSet.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    TaskSet.add_member(:platform_family, Shapes::ShapeRef.new(shape: String, location_name: "platformFamily"))
    TaskSet.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    TaskSet.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "loadBalancers"))
    TaskSet.add_member(:service_registries, Shapes::ShapeRef.new(shape: ServiceRegistries, location_name: "serviceRegistries"))
    TaskSet.add_member(:scale, Shapes::ShapeRef.new(shape: Scale, location_name: "scale"))
    TaskSet.add_member(:stability_status, Shapes::ShapeRef.new(shape: StabilityStatus, location_name: "stabilityStatus"))
    TaskSet.add_member(:stability_status_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "stabilityStatusAt"))
    TaskSet.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TaskSet.add_member(:fargate_ephemeral_storage, Shapes::ShapeRef.new(shape: DeploymentEphemeralStorage, location_name: "fargateEphemeralStorage"))
    TaskSet.struct_class = Types::TaskSet

    TaskSetFieldList.member = Shapes::ShapeRef.new(shape: TaskSetField)

    TaskSetNotFoundException.struct_class = Types::TaskSetNotFoundException

    TaskSets.member = Shapes::ShapeRef.new(shape: TaskSet)

    TaskVolumeConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: ECSVolumeName, required: true, location_name: "name"))
    TaskVolumeConfiguration.add_member(:managed_ebs_volume, Shapes::ShapeRef.new(shape: TaskManagedEBSVolumeConfiguration, location_name: "managedEBSVolume"))
    TaskVolumeConfiguration.struct_class = Types::TaskVolumeConfiguration

    TaskVolumeConfigurations.member = Shapes::ShapeRef.new(shape: TaskVolumeConfiguration)

    Tasks.member = Shapes::ShapeRef.new(shape: Task)

    TimeoutConfiguration.add_member(:idle_timeout_seconds, Shapes::ShapeRef.new(shape: Duration, location_name: "idleTimeoutSeconds"))
    TimeoutConfiguration.add_member(:per_request_timeout_seconds, Shapes::ShapeRef.new(shape: Duration, location_name: "perRequestTimeoutSeconds"))
    TimeoutConfiguration.struct_class = Types::TimeoutConfiguration

    Tmpfs.add_member(:container_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerPath"))
    Tmpfs.add_member(:size, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "size"))
    Tmpfs.add_member(:mount_options, Shapes::ShapeRef.new(shape: StringList, location_name: "mountOptions"))
    Tmpfs.struct_class = Types::Tmpfs

    TmpfsList.member = Shapes::ShapeRef.new(shape: Tmpfs)

    Ulimit.add_member(:name, Shapes::ShapeRef.new(shape: UlimitName, required: true, location_name: "name"))
    Ulimit.add_member(:soft_limit, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "softLimit"))
    Ulimit.add_member(:hard_limit, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "hardLimit"))
    Ulimit.struct_class = Types::Ulimit

    UlimitList.member = Shapes::ShapeRef.new(shape: Ulimit)

    UnsupportedFeatureException.struct_class = Types::UnsupportedFeatureException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateCapacityProviderRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    UpdateCapacityProviderRequest.add_member(:auto_scaling_group_provider, Shapes::ShapeRef.new(shape: AutoScalingGroupProviderUpdate, required: true, location_name: "autoScalingGroupProvider"))
    UpdateCapacityProviderRequest.struct_class = Types::UpdateCapacityProviderRequest

    UpdateCapacityProviderResponse.add_member(:capacity_provider, Shapes::ShapeRef.new(shape: CapacityProvider, location_name: "capacityProvider"))
    UpdateCapacityProviderResponse.struct_class = Types::UpdateCapacityProviderResponse

    UpdateClusterRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    UpdateClusterRequest.add_member(:settings, Shapes::ShapeRef.new(shape: ClusterSettings, location_name: "settings"))
    UpdateClusterRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ClusterConfiguration, location_name: "configuration"))
    UpdateClusterRequest.add_member(:service_connect_defaults, Shapes::ShapeRef.new(shape: ClusterServiceConnectDefaultsRequest, location_name: "serviceConnectDefaults"))
    UpdateClusterRequest.struct_class = Types::UpdateClusterRequest

    UpdateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    UpdateClusterResponse.struct_class = Types::UpdateClusterResponse

    UpdateClusterSettingsRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    UpdateClusterSettingsRequest.add_member(:settings, Shapes::ShapeRef.new(shape: ClusterSettings, required: true, location_name: "settings"))
    UpdateClusterSettingsRequest.struct_class = Types::UpdateClusterSettingsRequest

    UpdateClusterSettingsResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    UpdateClusterSettingsResponse.struct_class = Types::UpdateClusterSettingsResponse

    UpdateContainerAgentRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    UpdateContainerAgentRequest.add_member(:container_instance, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerInstance"))
    UpdateContainerAgentRequest.struct_class = Types::UpdateContainerAgentRequest

    UpdateContainerAgentResponse.add_member(:container_instance, Shapes::ShapeRef.new(shape: ContainerInstance, location_name: "containerInstance"))
    UpdateContainerAgentResponse.struct_class = Types::UpdateContainerAgentResponse

    UpdateContainerInstancesStateRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    UpdateContainerInstancesStateRequest.add_member(:container_instances, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "containerInstances"))
    UpdateContainerInstancesStateRequest.add_member(:status, Shapes::ShapeRef.new(shape: ContainerInstanceStatus, required: true, location_name: "status"))
    UpdateContainerInstancesStateRequest.struct_class = Types::UpdateContainerInstancesStateRequest

    UpdateContainerInstancesStateResponse.add_member(:container_instances, Shapes::ShapeRef.new(shape: ContainerInstances, location_name: "containerInstances"))
    UpdateContainerInstancesStateResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    UpdateContainerInstancesStateResponse.struct_class = Types::UpdateContainerInstancesStateResponse

    UpdateInProgressException.struct_class = Types::UpdateInProgressException

    UpdateServicePrimaryTaskSetRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    UpdateServicePrimaryTaskSetRequest.add_member(:service, Shapes::ShapeRef.new(shape: String, required: true, location_name: "service"))
    UpdateServicePrimaryTaskSetRequest.add_member(:primary_task_set, Shapes::ShapeRef.new(shape: String, required: true, location_name: "primaryTaskSet"))
    UpdateServicePrimaryTaskSetRequest.struct_class = Types::UpdateServicePrimaryTaskSetRequest

    UpdateServicePrimaryTaskSetResponse.add_member(:task_set, Shapes::ShapeRef.new(shape: TaskSet, location_name: "taskSet"))
    UpdateServicePrimaryTaskSetResponse.struct_class = Types::UpdateServicePrimaryTaskSetResponse

    UpdateServiceRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    UpdateServiceRequest.add_member(:service, Shapes::ShapeRef.new(shape: String, required: true, location_name: "service"))
    UpdateServiceRequest.add_member(:desired_count, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "desiredCount"))
    UpdateServiceRequest.add_member(:task_definition, Shapes::ShapeRef.new(shape: String, location_name: "taskDefinition"))
    UpdateServiceRequest.add_member(:capacity_provider_strategy, Shapes::ShapeRef.new(shape: CapacityProviderStrategy, location_name: "capacityProviderStrategy"))
    UpdateServiceRequest.add_member(:deployment_configuration, Shapes::ShapeRef.new(shape: DeploymentConfiguration, location_name: "deploymentConfiguration"))
    UpdateServiceRequest.add_member(:availability_zone_rebalancing, Shapes::ShapeRef.new(shape: AvailabilityZoneRebalancing, location_name: "availabilityZoneRebalancing"))
    UpdateServiceRequest.add_member(:network_configuration, Shapes::ShapeRef.new(shape: NetworkConfiguration, location_name: "networkConfiguration"))
    UpdateServiceRequest.add_member(:placement_constraints, Shapes::ShapeRef.new(shape: PlacementConstraints, location_name: "placementConstraints"))
    UpdateServiceRequest.add_member(:placement_strategy, Shapes::ShapeRef.new(shape: PlacementStrategies, location_name: "placementStrategy"))
    UpdateServiceRequest.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    UpdateServiceRequest.add_member(:force_new_deployment, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceNewDeployment"))
    UpdateServiceRequest.add_member(:health_check_grace_period_seconds, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "healthCheckGracePeriodSeconds"))
    UpdateServiceRequest.add_member(:deployment_controller, Shapes::ShapeRef.new(shape: DeploymentController, location_name: "deploymentController"))
    UpdateServiceRequest.add_member(:enable_execute_command, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enableExecuteCommand"))
    UpdateServiceRequest.add_member(:enable_ecs_managed_tags, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enableECSManagedTags"))
    UpdateServiceRequest.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancers, location_name: "loadBalancers"))
    UpdateServiceRequest.add_member(:propagate_tags, Shapes::ShapeRef.new(shape: PropagateTags, location_name: "propagateTags"))
    UpdateServiceRequest.add_member(:service_registries, Shapes::ShapeRef.new(shape: ServiceRegistries, location_name: "serviceRegistries"))
    UpdateServiceRequest.add_member(:service_connect_configuration, Shapes::ShapeRef.new(shape: ServiceConnectConfiguration, location_name: "serviceConnectConfiguration"))
    UpdateServiceRequest.add_member(:volume_configurations, Shapes::ShapeRef.new(shape: ServiceVolumeConfigurations, location_name: "volumeConfigurations"))
    UpdateServiceRequest.add_member(:vpc_lattice_configurations, Shapes::ShapeRef.new(shape: VpcLatticeConfigurations, location_name: "vpcLatticeConfigurations"))
    UpdateServiceRequest.struct_class = Types::UpdateServiceRequest

    UpdateServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "service"))
    UpdateServiceResponse.struct_class = Types::UpdateServiceResponse

    UpdateTaskProtectionRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    UpdateTaskProtectionRequest.add_member(:tasks, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "tasks"))
    UpdateTaskProtectionRequest.add_member(:protection_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "protectionEnabled"))
    UpdateTaskProtectionRequest.add_member(:expires_in_minutes, Shapes::ShapeRef.new(shape: BoxedInteger, location_name: "expiresInMinutes"))
    UpdateTaskProtectionRequest.struct_class = Types::UpdateTaskProtectionRequest

    UpdateTaskProtectionResponse.add_member(:protected_tasks, Shapes::ShapeRef.new(shape: ProtectedTasks, location_name: "protectedTasks"))
    UpdateTaskProtectionResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failures, location_name: "failures"))
    UpdateTaskProtectionResponse.struct_class = Types::UpdateTaskProtectionResponse

    UpdateTaskSetRequest.add_member(:cluster, Shapes::ShapeRef.new(shape: String, required: true, location_name: "cluster"))
    UpdateTaskSetRequest.add_member(:service, Shapes::ShapeRef.new(shape: String, required: true, location_name: "service"))
    UpdateTaskSetRequest.add_member(:task_set, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskSet"))
    UpdateTaskSetRequest.add_member(:scale, Shapes::ShapeRef.new(shape: Scale, required: true, location_name: "scale"))
    UpdateTaskSetRequest.struct_class = Types::UpdateTaskSetRequest

    UpdateTaskSetResponse.add_member(:task_set, Shapes::ShapeRef.new(shape: TaskSet, location_name: "taskSet"))
    UpdateTaskSetResponse.struct_class = Types::UpdateTaskSetResponse

    VersionInfo.add_member(:agent_version, Shapes::ShapeRef.new(shape: String, location_name: "agentVersion"))
    VersionInfo.add_member(:agent_hash, Shapes::ShapeRef.new(shape: String, location_name: "agentHash"))
    VersionInfo.add_member(:docker_version, Shapes::ShapeRef.new(shape: String, location_name: "dockerVersion"))
    VersionInfo.struct_class = Types::VersionInfo

    Volume.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Volume.add_member(:host, Shapes::ShapeRef.new(shape: HostVolumeProperties, location_name: "host"))
    Volume.add_member(:docker_volume_configuration, Shapes::ShapeRef.new(shape: DockerVolumeConfiguration, location_name: "dockerVolumeConfiguration"))
    Volume.add_member(:efs_volume_configuration, Shapes::ShapeRef.new(shape: EFSVolumeConfiguration, location_name: "efsVolumeConfiguration"))
    Volume.add_member(:fsx_windows_file_server_volume_configuration, Shapes::ShapeRef.new(shape: FSxWindowsFileServerVolumeConfiguration, location_name: "fsxWindowsFileServerVolumeConfiguration"))
    Volume.add_member(:configured_at_launch, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "configuredAtLaunch"))
    Volume.struct_class = Types::Volume

    VolumeFrom.add_member(:source_container, Shapes::ShapeRef.new(shape: String, location_name: "sourceContainer"))
    VolumeFrom.add_member(:read_only, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "readOnly"))
    VolumeFrom.struct_class = Types::VolumeFrom

    VolumeFromList.member = Shapes::ShapeRef.new(shape: VolumeFrom)

    VolumeList.member = Shapes::ShapeRef.new(shape: Volume)

    VpcLatticeConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "roleArn"))
    VpcLatticeConfiguration.add_member(:target_group_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetGroupArn"))
    VpcLatticeConfiguration.add_member(:port_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "portName"))
    VpcLatticeConfiguration.struct_class = Types::VpcLatticeConfiguration

    VpcLatticeConfigurations.member = Shapes::ShapeRef.new(shape: VpcLatticeConfiguration)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-11-13"

      api.metadata = {
        "apiVersion" => "2014-11-13",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "ecs",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceAbbreviation" => "Amazon ECS",
        "serviceFullName" => "Amazon EC2 Container Service",
        "serviceId" => "ECS",
        "signatureVersion" => "v4",
        "targetPrefix" => "AmazonEC2ContainerServiceV20141113",
        "uid" => "ecs-2014-11-13",
      }

      api.add_operation(:create_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCapacityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCapacityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCapacityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UpdateInProgressException)
      end)

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceNotFoundException)
      end)

      api.add_operation(:create_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformUnknownException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformTaskDefinitionIncompatibilityException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceNotFoundException)
      end)

      api.add_operation(:create_task_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTaskSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateTaskSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTaskSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformUnknownException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformTaskDefinitionIncompatibilityException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceNotFoundException)
      end)

      api.add_operation(:delete_account_setting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountSetting"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountSettingRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountSettingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:delete_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:delete_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCapacityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCapacityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCapacityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterContainsContainerInstancesException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterContainsServicesException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterContainsTasksException)
        o.errors << Shapes::ShapeRef.new(shape: UpdateInProgressException)
      end)

      api.add_operation(:delete_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
      end)

      api.add_operation(:delete_task_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTaskDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTaskDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTaskDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
      end)

      api.add_operation(:delete_task_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTaskSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTaskSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTaskSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: TaskSetNotFoundException)
      end)

      api.add_operation(:deregister_container_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterContainerInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterContainerInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterContainerInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:deregister_task_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterTaskDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterTaskDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterTaskDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_capacity_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCapacityProviders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCapacityProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCapacityProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_container_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContainerInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeContainerInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeContainerInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:describe_service_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServiceDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServiceDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServiceDeploymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
      end)

      api.add_operation(:describe_service_revisions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServiceRevisions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServiceRevisionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServiceRevisionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
      end)

      api.add_operation(:describe_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:describe_task_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTaskDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTaskDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTaskDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:describe_task_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTaskSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTaskSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTaskSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotActiveException)
      end)

      api.add_operation(:describe_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:discover_poll_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DiscoverPollEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DiscoverPollEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: DiscoverPollEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
      end)

      api.add_operation(:execute_command, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExecuteCommand"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ExecuteCommandRequest)
        o.output = Shapes::ShapeRef.new(shape: ExecuteCommandResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotConnectedException)
      end)

      api.add_operation(:get_task_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTaskProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTaskProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTaskProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
      end)

      api.add_operation(:list_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_container_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContainerInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListContainerInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContainerInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServiceDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceDeploymentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_services_by_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServicesByNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServicesByNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServicesByNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:list_task_definition_families, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTaskDefinitionFamilies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTaskDefinitionFamiliesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTaskDefinitionFamiliesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_task_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTaskDefinitions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTaskDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTaskDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_account_setting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountSetting"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAccountSettingRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountSettingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:put_account_setting_default, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccountSettingDefault"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAccountSettingDefaultRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAccountSettingDefaultResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:put_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TargetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AttributeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:put_cluster_capacity_providers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutClusterCapacityProviders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutClusterCapacityProvidersRequest)
        o.output = Shapes::ShapeRef.new(shape: PutClusterCapacityProvidersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: UpdateInProgressException)
      end)

      api.add_operation(:register_container_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterContainerInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterContainerInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterContainerInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:register_task_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterTaskDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterTaskDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterTaskDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:run_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RunTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RunTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: RunTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformUnknownException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformTaskDefinitionIncompatibilityException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BlockedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
      end)

      api.add_operation(:stop_service_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopServiceDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopServiceDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: StopServiceDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceDeploymentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
      end)

      api.add_operation(:stop_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StopTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:submit_attachment_state_changes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitAttachmentStateChanges"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubmitAttachmentStateChangesRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitAttachmentStateChangesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:submit_container_state_change, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitContainerStateChange"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubmitContainerStateChangeRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitContainerStateChangeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:submit_task_state_change, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitTaskStateChange"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubmitTaskStateChangeRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitTaskStateChangeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_capacity_provider, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCapacityProvider"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCapacityProviderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCapacityProviderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceNotFoundException)
      end)

      api.add_operation(:update_cluster_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateClusterSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:update_container_agent, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContainerAgent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateContainerAgentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContainerAgentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UpdateInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: NoUpdateAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: MissingVersionException)
      end)

      api.add_operation(:update_container_instances_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateContainerInstancesState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateContainerInstancesStateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateContainerInstancesStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
      end)

      api.add_operation(:update_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformUnknownException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformTaskDefinitionIncompatibilityException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
      end)

      api.add_operation(:update_service_primary_task_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServicePrimaryTaskSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServicePrimaryTaskSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServicePrimaryTaskSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: TaskSetNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_task_protection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTaskProtection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTaskProtectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTaskProtectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
      end)

      api.add_operation(:update_task_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTaskSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTaskSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTaskSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClusterNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedFeatureException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotActiveException)
        o.errors << Shapes::ShapeRef.new(shape: TaskSetNotFoundException)
      end)
    end

  end
end
