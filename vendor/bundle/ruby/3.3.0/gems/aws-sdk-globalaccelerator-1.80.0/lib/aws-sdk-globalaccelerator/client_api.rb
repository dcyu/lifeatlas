# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GlobalAccelerator
  # @api private
  module ClientApi

    include Seahorse::Model

    Accelerator = Shapes::StructureShape.new(name: 'Accelerator')
    AcceleratorAttributes = Shapes::StructureShape.new(name: 'AcceleratorAttributes')
    AcceleratorEvent = Shapes::StructureShape.new(name: 'AcceleratorEvent')
    AcceleratorEvents = Shapes::ListShape.new(name: 'AcceleratorEvents')
    AcceleratorNotDisabledException = Shapes::StructureShape.new(name: 'AcceleratorNotDisabledException')
    AcceleratorNotFoundException = Shapes::StructureShape.new(name: 'AcceleratorNotFoundException')
    AcceleratorStatus = Shapes::StringShape.new(name: 'AcceleratorStatus')
    Accelerators = Shapes::ListShape.new(name: 'Accelerators')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddCustomRoutingEndpointsRequest = Shapes::StructureShape.new(name: 'AddCustomRoutingEndpointsRequest')
    AddCustomRoutingEndpointsResponse = Shapes::StructureShape.new(name: 'AddCustomRoutingEndpointsResponse')
    AddEndpointsRequest = Shapes::StructureShape.new(name: 'AddEndpointsRequest')
    AddEndpointsResponse = Shapes::StructureShape.new(name: 'AddEndpointsResponse')
    AdvertiseByoipCidrRequest = Shapes::StructureShape.new(name: 'AdvertiseByoipCidrRequest')
    AdvertiseByoipCidrResponse = Shapes::StructureShape.new(name: 'AdvertiseByoipCidrResponse')
    AllowCustomRoutingTrafficRequest = Shapes::StructureShape.new(name: 'AllowCustomRoutingTrafficRequest')
    AssociatedEndpointGroupFoundException = Shapes::StructureShape.new(name: 'AssociatedEndpointGroupFoundException')
    AssociatedListenerFoundException = Shapes::StructureShape.new(name: 'AssociatedListenerFoundException')
    Attachment = Shapes::StructureShape.new(name: 'Attachment')
    AttachmentName = Shapes::StringShape.new(name: 'AttachmentName')
    AttachmentNotFoundException = Shapes::StructureShape.new(name: 'AttachmentNotFoundException')
    Attachments = Shapes::ListShape.new(name: 'Attachments')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsAccountIds = Shapes::ListShape.new(name: 'AwsAccountIds')
    ByoipCidr = Shapes::StructureShape.new(name: 'ByoipCidr')
    ByoipCidrEvent = Shapes::StructureShape.new(name: 'ByoipCidrEvent')
    ByoipCidrEvents = Shapes::ListShape.new(name: 'ByoipCidrEvents')
    ByoipCidrNotFoundException = Shapes::StructureShape.new(name: 'ByoipCidrNotFoundException')
    ByoipCidrState = Shapes::StringShape.new(name: 'ByoipCidrState')
    ByoipCidrs = Shapes::ListShape.new(name: 'ByoipCidrs')
    CidrAuthorizationContext = Shapes::StructureShape.new(name: 'CidrAuthorizationContext')
    ClientAffinity = Shapes::StringShape.new(name: 'ClientAffinity')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAcceleratorRequest = Shapes::StructureShape.new(name: 'CreateAcceleratorRequest')
    CreateAcceleratorResponse = Shapes::StructureShape.new(name: 'CreateAcceleratorResponse')
    CreateCrossAccountAttachmentRequest = Shapes::StructureShape.new(name: 'CreateCrossAccountAttachmentRequest')
    CreateCrossAccountAttachmentResponse = Shapes::StructureShape.new(name: 'CreateCrossAccountAttachmentResponse')
    CreateCustomRoutingAcceleratorRequest = Shapes::StructureShape.new(name: 'CreateCustomRoutingAcceleratorRequest')
    CreateCustomRoutingAcceleratorResponse = Shapes::StructureShape.new(name: 'CreateCustomRoutingAcceleratorResponse')
    CreateCustomRoutingEndpointGroupRequest = Shapes::StructureShape.new(name: 'CreateCustomRoutingEndpointGroupRequest')
    CreateCustomRoutingEndpointGroupResponse = Shapes::StructureShape.new(name: 'CreateCustomRoutingEndpointGroupResponse')
    CreateCustomRoutingListenerRequest = Shapes::StructureShape.new(name: 'CreateCustomRoutingListenerRequest')
    CreateCustomRoutingListenerResponse = Shapes::StructureShape.new(name: 'CreateCustomRoutingListenerResponse')
    CreateEndpointGroupRequest = Shapes::StructureShape.new(name: 'CreateEndpointGroupRequest')
    CreateEndpointGroupResponse = Shapes::StructureShape.new(name: 'CreateEndpointGroupResponse')
    CreateListenerRequest = Shapes::StructureShape.new(name: 'CreateListenerRequest')
    CreateListenerResponse = Shapes::StructureShape.new(name: 'CreateListenerResponse')
    CrossAccountResource = Shapes::StructureShape.new(name: 'CrossAccountResource')
    CrossAccountResources = Shapes::ListShape.new(name: 'CrossAccountResources')
    CustomRoutingAccelerator = Shapes::StructureShape.new(name: 'CustomRoutingAccelerator')
    CustomRoutingAcceleratorAttributes = Shapes::StructureShape.new(name: 'CustomRoutingAcceleratorAttributes')
    CustomRoutingAcceleratorStatus = Shapes::StringShape.new(name: 'CustomRoutingAcceleratorStatus')
    CustomRoutingAccelerators = Shapes::ListShape.new(name: 'CustomRoutingAccelerators')
    CustomRoutingDestinationConfiguration = Shapes::StructureShape.new(name: 'CustomRoutingDestinationConfiguration')
    CustomRoutingDestinationConfigurations = Shapes::ListShape.new(name: 'CustomRoutingDestinationConfigurations')
    CustomRoutingDestinationDescription = Shapes::StructureShape.new(name: 'CustomRoutingDestinationDescription')
    CustomRoutingDestinationDescriptions = Shapes::ListShape.new(name: 'CustomRoutingDestinationDescriptions')
    CustomRoutingDestinationTrafficState = Shapes::StringShape.new(name: 'CustomRoutingDestinationTrafficState')
    CustomRoutingEndpointConfiguration = Shapes::StructureShape.new(name: 'CustomRoutingEndpointConfiguration')
    CustomRoutingEndpointConfigurations = Shapes::ListShape.new(name: 'CustomRoutingEndpointConfigurations')
    CustomRoutingEndpointDescription = Shapes::StructureShape.new(name: 'CustomRoutingEndpointDescription')
    CustomRoutingEndpointDescriptions = Shapes::ListShape.new(name: 'CustomRoutingEndpointDescriptions')
    CustomRoutingEndpointGroup = Shapes::StructureShape.new(name: 'CustomRoutingEndpointGroup')
    CustomRoutingEndpointGroups = Shapes::ListShape.new(name: 'CustomRoutingEndpointGroups')
    CustomRoutingListener = Shapes::StructureShape.new(name: 'CustomRoutingListener')
    CustomRoutingListeners = Shapes::ListShape.new(name: 'CustomRoutingListeners')
    CustomRoutingProtocol = Shapes::StringShape.new(name: 'CustomRoutingProtocol')
    CustomRoutingProtocols = Shapes::ListShape.new(name: 'CustomRoutingProtocols')
    DeleteAcceleratorRequest = Shapes::StructureShape.new(name: 'DeleteAcceleratorRequest')
    DeleteCrossAccountAttachmentRequest = Shapes::StructureShape.new(name: 'DeleteCrossAccountAttachmentRequest')
    DeleteCustomRoutingAcceleratorRequest = Shapes::StructureShape.new(name: 'DeleteCustomRoutingAcceleratorRequest')
    DeleteCustomRoutingEndpointGroupRequest = Shapes::StructureShape.new(name: 'DeleteCustomRoutingEndpointGroupRequest')
    DeleteCustomRoutingListenerRequest = Shapes::StructureShape.new(name: 'DeleteCustomRoutingListenerRequest')
    DeleteEndpointGroupRequest = Shapes::StructureShape.new(name: 'DeleteEndpointGroupRequest')
    DeleteListenerRequest = Shapes::StructureShape.new(name: 'DeleteListenerRequest')
    DenyCustomRoutingTrafficRequest = Shapes::StructureShape.new(name: 'DenyCustomRoutingTrafficRequest')
    DeprovisionByoipCidrRequest = Shapes::StructureShape.new(name: 'DeprovisionByoipCidrRequest')
    DeprovisionByoipCidrResponse = Shapes::StructureShape.new(name: 'DeprovisionByoipCidrResponse')
    DescribeAcceleratorAttributesRequest = Shapes::StructureShape.new(name: 'DescribeAcceleratorAttributesRequest')
    DescribeAcceleratorAttributesResponse = Shapes::StructureShape.new(name: 'DescribeAcceleratorAttributesResponse')
    DescribeAcceleratorRequest = Shapes::StructureShape.new(name: 'DescribeAcceleratorRequest')
    DescribeAcceleratorResponse = Shapes::StructureShape.new(name: 'DescribeAcceleratorResponse')
    DescribeCrossAccountAttachmentRequest = Shapes::StructureShape.new(name: 'DescribeCrossAccountAttachmentRequest')
    DescribeCrossAccountAttachmentResponse = Shapes::StructureShape.new(name: 'DescribeCrossAccountAttachmentResponse')
    DescribeCustomRoutingAcceleratorAttributesRequest = Shapes::StructureShape.new(name: 'DescribeCustomRoutingAcceleratorAttributesRequest')
    DescribeCustomRoutingAcceleratorAttributesResponse = Shapes::StructureShape.new(name: 'DescribeCustomRoutingAcceleratorAttributesResponse')
    DescribeCustomRoutingAcceleratorRequest = Shapes::StructureShape.new(name: 'DescribeCustomRoutingAcceleratorRequest')
    DescribeCustomRoutingAcceleratorResponse = Shapes::StructureShape.new(name: 'DescribeCustomRoutingAcceleratorResponse')
    DescribeCustomRoutingEndpointGroupRequest = Shapes::StructureShape.new(name: 'DescribeCustomRoutingEndpointGroupRequest')
    DescribeCustomRoutingEndpointGroupResponse = Shapes::StructureShape.new(name: 'DescribeCustomRoutingEndpointGroupResponse')
    DescribeCustomRoutingListenerRequest = Shapes::StructureShape.new(name: 'DescribeCustomRoutingListenerRequest')
    DescribeCustomRoutingListenerResponse = Shapes::StructureShape.new(name: 'DescribeCustomRoutingListenerResponse')
    DescribeEndpointGroupRequest = Shapes::StructureShape.new(name: 'DescribeEndpointGroupRequest')
    DescribeEndpointGroupResponse = Shapes::StructureShape.new(name: 'DescribeEndpointGroupResponse')
    DescribeListenerRequest = Shapes::StructureShape.new(name: 'DescribeListenerRequest')
    DescribeListenerResponse = Shapes::StructureShape.new(name: 'DescribeListenerResponse')
    DestinationAddresses = Shapes::ListShape.new(name: 'DestinationAddresses')
    DestinationPortMapping = Shapes::StructureShape.new(name: 'DestinationPortMapping')
    DestinationPortMappings = Shapes::ListShape.new(name: 'DestinationPortMappings')
    DestinationPorts = Shapes::ListShape.new(name: 'DestinationPorts')
    EndpointAlreadyExistsException = Shapes::StructureShape.new(name: 'EndpointAlreadyExistsException')
    EndpointConfiguration = Shapes::StructureShape.new(name: 'EndpointConfiguration')
    EndpointConfigurations = Shapes::ListShape.new(name: 'EndpointConfigurations')
    EndpointDescription = Shapes::StructureShape.new(name: 'EndpointDescription')
    EndpointDescriptions = Shapes::ListShape.new(name: 'EndpointDescriptions')
    EndpointGroup = Shapes::StructureShape.new(name: 'EndpointGroup')
    EndpointGroupAlreadyExistsException = Shapes::StructureShape.new(name: 'EndpointGroupAlreadyExistsException')
    EndpointGroupNotFoundException = Shapes::StructureShape.new(name: 'EndpointGroupNotFoundException')
    EndpointGroups = Shapes::ListShape.new(name: 'EndpointGroups')
    EndpointIdentifier = Shapes::StructureShape.new(name: 'EndpointIdentifier')
    EndpointIdentifiers = Shapes::ListShape.new(name: 'EndpointIdentifiers')
    EndpointIds = Shapes::ListShape.new(name: 'EndpointIds')
    EndpointNotFoundException = Shapes::StructureShape.new(name: 'EndpointNotFoundException')
    EndpointWeight = Shapes::IntegerShape.new(name: 'EndpointWeight')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GenericBoolean = Shapes::BooleanShape.new(name: 'GenericBoolean')
    GenericString = Shapes::StringShape.new(name: 'GenericString')
    HealthCheckIntervalSeconds = Shapes::IntegerShape.new(name: 'HealthCheckIntervalSeconds')
    HealthCheckPath = Shapes::StringShape.new(name: 'HealthCheckPath')
    HealthCheckPort = Shapes::IntegerShape.new(name: 'HealthCheckPort')
    HealthCheckProtocol = Shapes::StringShape.new(name: 'HealthCheckProtocol')
    HealthState = Shapes::StringShape.new(name: 'HealthState')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    IncorrectCidrStateException = Shapes::StructureShape.new(name: 'IncorrectCidrStateException')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    InvalidArgumentException = Shapes::StructureShape.new(name: 'InvalidArgumentException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidPortRangeException = Shapes::StructureShape.new(name: 'InvalidPortRangeException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpAddressFamily = Shapes::StringShape.new(name: 'IpAddressFamily')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    IpAddresses = Shapes::ListShape.new(name: 'IpAddresses')
    IpSet = Shapes::StructureShape.new(name: 'IpSet')
    IpSets = Shapes::ListShape.new(name: 'IpSets')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAcceleratorsRequest = Shapes::StructureShape.new(name: 'ListAcceleratorsRequest')
    ListAcceleratorsResponse = Shapes::StructureShape.new(name: 'ListAcceleratorsResponse')
    ListByoipCidrsRequest = Shapes::StructureShape.new(name: 'ListByoipCidrsRequest')
    ListByoipCidrsResponse = Shapes::StructureShape.new(name: 'ListByoipCidrsResponse')
    ListCrossAccountAttachmentsRequest = Shapes::StructureShape.new(name: 'ListCrossAccountAttachmentsRequest')
    ListCrossAccountAttachmentsResponse = Shapes::StructureShape.new(name: 'ListCrossAccountAttachmentsResponse')
    ListCrossAccountResourceAccountsRequest = Shapes::StructureShape.new(name: 'ListCrossAccountResourceAccountsRequest')
    ListCrossAccountResourceAccountsResponse = Shapes::StructureShape.new(name: 'ListCrossAccountResourceAccountsResponse')
    ListCrossAccountResourcesRequest = Shapes::StructureShape.new(name: 'ListCrossAccountResourcesRequest')
    ListCrossAccountResourcesResponse = Shapes::StructureShape.new(name: 'ListCrossAccountResourcesResponse')
    ListCustomRoutingAcceleratorsRequest = Shapes::StructureShape.new(name: 'ListCustomRoutingAcceleratorsRequest')
    ListCustomRoutingAcceleratorsResponse = Shapes::StructureShape.new(name: 'ListCustomRoutingAcceleratorsResponse')
    ListCustomRoutingEndpointGroupsRequest = Shapes::StructureShape.new(name: 'ListCustomRoutingEndpointGroupsRequest')
    ListCustomRoutingEndpointGroupsResponse = Shapes::StructureShape.new(name: 'ListCustomRoutingEndpointGroupsResponse')
    ListCustomRoutingListenersRequest = Shapes::StructureShape.new(name: 'ListCustomRoutingListenersRequest')
    ListCustomRoutingListenersResponse = Shapes::StructureShape.new(name: 'ListCustomRoutingListenersResponse')
    ListCustomRoutingPortMappingsByDestinationRequest = Shapes::StructureShape.new(name: 'ListCustomRoutingPortMappingsByDestinationRequest')
    ListCustomRoutingPortMappingsByDestinationResponse = Shapes::StructureShape.new(name: 'ListCustomRoutingPortMappingsByDestinationResponse')
    ListCustomRoutingPortMappingsRequest = Shapes::StructureShape.new(name: 'ListCustomRoutingPortMappingsRequest')
    ListCustomRoutingPortMappingsResponse = Shapes::StructureShape.new(name: 'ListCustomRoutingPortMappingsResponse')
    ListEndpointGroupsRequest = Shapes::StructureShape.new(name: 'ListEndpointGroupsRequest')
    ListEndpointGroupsResponse = Shapes::StructureShape.new(name: 'ListEndpointGroupsResponse')
    ListListenersRequest = Shapes::StructureShape.new(name: 'ListListenersRequest')
    ListListenersResponse = Shapes::StructureShape.new(name: 'ListListenersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Listener = Shapes::StructureShape.new(name: 'Listener')
    ListenerNotFoundException = Shapes::StructureShape.new(name: 'ListenerNotFoundException')
    Listeners = Shapes::ListShape.new(name: 'Listeners')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    PortMapping = Shapes::StructureShape.new(name: 'PortMapping')
    PortMappings = Shapes::ListShape.new(name: 'PortMappings')
    PortMappingsMaxResults = Shapes::IntegerShape.new(name: 'PortMappingsMaxResults')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PortOverride = Shapes::StructureShape.new(name: 'PortOverride')
    PortOverrides = Shapes::ListShape.new(name: 'PortOverrides')
    PortRange = Shapes::StructureShape.new(name: 'PortRange')
    PortRanges = Shapes::ListShape.new(name: 'PortRanges')
    Principal = Shapes::StringShape.new(name: 'Principal')
    Principals = Shapes::ListShape.new(name: 'Principals')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    Protocols = Shapes::ListShape.new(name: 'Protocols')
    ProvisionByoipCidrRequest = Shapes::StructureShape.new(name: 'ProvisionByoipCidrRequest')
    ProvisionByoipCidrResponse = Shapes::StructureShape.new(name: 'ProvisionByoipCidrResponse')
    RemoveCustomRoutingEndpointsRequest = Shapes::StructureShape.new(name: 'RemoveCustomRoutingEndpointsRequest')
    RemoveEndpointsRequest = Shapes::StructureShape.new(name: 'RemoveEndpointsRequest')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    Resources = Shapes::ListShape.new(name: 'Resources')
    SocketAddress = Shapes::StructureShape.new(name: 'SocketAddress')
    SocketAddresses = Shapes::ListShape.new(name: 'SocketAddresses')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    ThresholdCount = Shapes::IntegerShape.new(name: 'ThresholdCount')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrafficDialPercentage = Shapes::FloatShape.new(name: 'TrafficDialPercentage')
    TransactionInProgressException = Shapes::StructureShape.new(name: 'TransactionInProgressException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAcceleratorAttributesRequest = Shapes::StructureShape.new(name: 'UpdateAcceleratorAttributesRequest')
    UpdateAcceleratorAttributesResponse = Shapes::StructureShape.new(name: 'UpdateAcceleratorAttributesResponse')
    UpdateAcceleratorRequest = Shapes::StructureShape.new(name: 'UpdateAcceleratorRequest')
    UpdateAcceleratorResponse = Shapes::StructureShape.new(name: 'UpdateAcceleratorResponse')
    UpdateCrossAccountAttachmentRequest = Shapes::StructureShape.new(name: 'UpdateCrossAccountAttachmentRequest')
    UpdateCrossAccountAttachmentResponse = Shapes::StructureShape.new(name: 'UpdateCrossAccountAttachmentResponse')
    UpdateCustomRoutingAcceleratorAttributesRequest = Shapes::StructureShape.new(name: 'UpdateCustomRoutingAcceleratorAttributesRequest')
    UpdateCustomRoutingAcceleratorAttributesResponse = Shapes::StructureShape.new(name: 'UpdateCustomRoutingAcceleratorAttributesResponse')
    UpdateCustomRoutingAcceleratorRequest = Shapes::StructureShape.new(name: 'UpdateCustomRoutingAcceleratorRequest')
    UpdateCustomRoutingAcceleratorResponse = Shapes::StructureShape.new(name: 'UpdateCustomRoutingAcceleratorResponse')
    UpdateCustomRoutingListenerRequest = Shapes::StructureShape.new(name: 'UpdateCustomRoutingListenerRequest')
    UpdateCustomRoutingListenerResponse = Shapes::StructureShape.new(name: 'UpdateCustomRoutingListenerResponse')
    UpdateEndpointGroupRequest = Shapes::StructureShape.new(name: 'UpdateEndpointGroupRequest')
    UpdateEndpointGroupResponse = Shapes::StructureShape.new(name: 'UpdateEndpointGroupResponse')
    UpdateListenerRequest = Shapes::StructureShape.new(name: 'UpdateListenerRequest')
    UpdateListenerResponse = Shapes::StructureShape.new(name: 'UpdateListenerResponse')
    WithdrawByoipCidrRequest = Shapes::StructureShape.new(name: 'WithdrawByoipCidrRequest')
    WithdrawByoipCidrResponse = Shapes::StructureShape.new(name: 'WithdrawByoipCidrResponse')

    Accelerator.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn"))
    Accelerator.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    Accelerator.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    Accelerator.add_member(:enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    Accelerator.add_member(:ip_sets, Shapes::ShapeRef.new(shape: IpSets, location_name: "IpSets"))
    Accelerator.add_member(:dns_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "DnsName"))
    Accelerator.add_member(:status, Shapes::ShapeRef.new(shape: AcceleratorStatus, location_name: "Status"))
    Accelerator.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Accelerator.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Accelerator.add_member(:dual_stack_dns_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "DualStackDnsName"))
    Accelerator.add_member(:events, Shapes::ShapeRef.new(shape: AcceleratorEvents, location_name: "Events"))
    Accelerator.struct_class = Types::Accelerator

    AcceleratorAttributes.add_member(:flow_logs_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "FlowLogsEnabled"))
    AcceleratorAttributes.add_member(:flow_logs_s3_bucket, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Bucket"))
    AcceleratorAttributes.add_member(:flow_logs_s3_prefix, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Prefix"))
    AcceleratorAttributes.struct_class = Types::AcceleratorAttributes

    AcceleratorEvent.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "Message"))
    AcceleratorEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    AcceleratorEvent.struct_class = Types::AcceleratorEvent

    AcceleratorEvents.member = Shapes::ShapeRef.new(shape: AcceleratorEvent)

    AcceleratorNotDisabledException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AcceleratorNotDisabledException.struct_class = Types::AcceleratorNotDisabledException

    AcceleratorNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AcceleratorNotFoundException.struct_class = Types::AcceleratorNotFoundException

    Accelerators.member = Shapes::ShapeRef.new(shape: Accelerator)

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddCustomRoutingEndpointsRequest.add_member(:endpoint_configurations, Shapes::ShapeRef.new(shape: CustomRoutingEndpointConfigurations, required: true, location_name: "EndpointConfigurations"))
    AddCustomRoutingEndpointsRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    AddCustomRoutingEndpointsRequest.struct_class = Types::AddCustomRoutingEndpointsRequest

    AddCustomRoutingEndpointsResponse.add_member(:endpoint_descriptions, Shapes::ShapeRef.new(shape: CustomRoutingEndpointDescriptions, location_name: "EndpointDescriptions"))
    AddCustomRoutingEndpointsResponse.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    AddCustomRoutingEndpointsResponse.struct_class = Types::AddCustomRoutingEndpointsResponse

    AddEndpointsRequest.add_member(:endpoint_configurations, Shapes::ShapeRef.new(shape: EndpointConfigurations, required: true, location_name: "EndpointConfigurations"))
    AddEndpointsRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    AddEndpointsRequest.struct_class = Types::AddEndpointsRequest

    AddEndpointsResponse.add_member(:endpoint_descriptions, Shapes::ShapeRef.new(shape: EndpointDescriptions, location_name: "EndpointDescriptions"))
    AddEndpointsResponse.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    AddEndpointsResponse.struct_class = Types::AddEndpointsResponse

    AdvertiseByoipCidrRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Cidr"))
    AdvertiseByoipCidrRequest.struct_class = Types::AdvertiseByoipCidrRequest

    AdvertiseByoipCidrResponse.add_member(:byoip_cidr, Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    AdvertiseByoipCidrResponse.struct_class = Types::AdvertiseByoipCidrResponse

    AllowCustomRoutingTrafficRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    AllowCustomRoutingTrafficRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointId"))
    AllowCustomRoutingTrafficRequest.add_member(:destination_addresses, Shapes::ShapeRef.new(shape: DestinationAddresses, location_name: "DestinationAddresses"))
    AllowCustomRoutingTrafficRequest.add_member(:destination_ports, Shapes::ShapeRef.new(shape: DestinationPorts, location_name: "DestinationPorts"))
    AllowCustomRoutingTrafficRequest.add_member(:allow_all_traffic_to_endpoint, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "AllowAllTrafficToEndpoint"))
    AllowCustomRoutingTrafficRequest.struct_class = Types::AllowCustomRoutingTrafficRequest

    AssociatedEndpointGroupFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AssociatedEndpointGroupFoundException.struct_class = Types::AssociatedEndpointGroupFoundException

    AssociatedListenerFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AssociatedListenerFoundException.struct_class = Types::AssociatedListenerFoundException

    Attachment.add_member(:attachment_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn"))
    Attachment.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentName, location_name: "Name"))
    Attachment.add_member(:principals, Shapes::ShapeRef.new(shape: Principals, location_name: "Principals"))
    Attachment.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "Resources"))
    Attachment.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Attachment.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Attachment.struct_class = Types::Attachment

    AttachmentNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AttachmentNotFoundException.struct_class = Types::AttachmentNotFoundException

    Attachments.member = Shapes::ShapeRef.new(shape: Attachment)

    AwsAccountIds.member = Shapes::ShapeRef.new(shape: AwsAccountId)

    ByoipCidr.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr"))
    ByoipCidr.add_member(:state, Shapes::ShapeRef.new(shape: ByoipCidrState, location_name: "State"))
    ByoipCidr.add_member(:events, Shapes::ShapeRef.new(shape: ByoipCidrEvents, location_name: "Events"))
    ByoipCidr.struct_class = Types::ByoipCidr

    ByoipCidrEvent.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, location_name: "Message"))
    ByoipCidrEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Timestamp"))
    ByoipCidrEvent.struct_class = Types::ByoipCidrEvent

    ByoipCidrEvents.member = Shapes::ShapeRef.new(shape: ByoipCidrEvent)

    ByoipCidrNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ByoipCidrNotFoundException.struct_class = Types::ByoipCidrNotFoundException

    ByoipCidrs.member = Shapes::ShapeRef.new(shape: ByoipCidr)

    CidrAuthorizationContext.add_member(:message, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Message"))
    CidrAuthorizationContext.add_member(:signature, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Signature"))
    CidrAuthorizationContext.struct_class = Types::CidrAuthorizationContext

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAcceleratorRequest.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Name"))
    CreateAcceleratorRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    CreateAcceleratorRequest.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    CreateAcceleratorRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    CreateAcceleratorRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateAcceleratorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateAcceleratorRequest.struct_class = Types::CreateAcceleratorRequest

    CreateAcceleratorResponse.add_member(:accelerator, Shapes::ShapeRef.new(shape: Accelerator, location_name: "Accelerator"))
    CreateAcceleratorResponse.struct_class = Types::CreateAcceleratorResponse

    CreateCrossAccountAttachmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentName, required: true, location_name: "Name"))
    CreateCrossAccountAttachmentRequest.add_member(:principals, Shapes::ShapeRef.new(shape: Principals, location_name: "Principals"))
    CreateCrossAccountAttachmentRequest.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "Resources"))
    CreateCrossAccountAttachmentRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateCrossAccountAttachmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateCrossAccountAttachmentRequest.struct_class = Types::CreateCrossAccountAttachmentRequest

    CreateCrossAccountAttachmentResponse.add_member(:cross_account_attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "CrossAccountAttachment"))
    CreateCrossAccountAttachmentResponse.struct_class = Types::CreateCrossAccountAttachmentResponse

    CreateCustomRoutingAcceleratorRequest.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Name"))
    CreateCustomRoutingAcceleratorRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    CreateCustomRoutingAcceleratorRequest.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    CreateCustomRoutingAcceleratorRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    CreateCustomRoutingAcceleratorRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateCustomRoutingAcceleratorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateCustomRoutingAcceleratorRequest.struct_class = Types::CreateCustomRoutingAcceleratorRequest

    CreateCustomRoutingAcceleratorResponse.add_member(:accelerator, Shapes::ShapeRef.new(shape: CustomRoutingAccelerator, location_name: "Accelerator"))
    CreateCustomRoutingAcceleratorResponse.struct_class = Types::CreateCustomRoutingAcceleratorResponse

    CreateCustomRoutingEndpointGroupRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    CreateCustomRoutingEndpointGroupRequest.add_member(:endpoint_group_region, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupRegion"))
    CreateCustomRoutingEndpointGroupRequest.add_member(:destination_configurations, Shapes::ShapeRef.new(shape: CustomRoutingDestinationConfigurations, required: true, location_name: "DestinationConfigurations"))
    CreateCustomRoutingEndpointGroupRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateCustomRoutingEndpointGroupRequest.struct_class = Types::CreateCustomRoutingEndpointGroupRequest

    CreateCustomRoutingEndpointGroupResponse.add_member(:endpoint_group, Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroup, location_name: "EndpointGroup"))
    CreateCustomRoutingEndpointGroupResponse.struct_class = Types::CreateCustomRoutingEndpointGroupResponse

    CreateCustomRoutingListenerRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    CreateCustomRoutingListenerRequest.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, required: true, location_name: "PortRanges"))
    CreateCustomRoutingListenerRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateCustomRoutingListenerRequest.struct_class = Types::CreateCustomRoutingListenerRequest

    CreateCustomRoutingListenerResponse.add_member(:listener, Shapes::ShapeRef.new(shape: CustomRoutingListener, location_name: "Listener"))
    CreateCustomRoutingListenerResponse.struct_class = Types::CreateCustomRoutingListenerResponse

    CreateEndpointGroupRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    CreateEndpointGroupRequest.add_member(:endpoint_group_region, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupRegion"))
    CreateEndpointGroupRequest.add_member(:endpoint_configurations, Shapes::ShapeRef.new(shape: EndpointConfigurations, location_name: "EndpointConfigurations"))
    CreateEndpointGroupRequest.add_member(:traffic_dial_percentage, Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: "TrafficDialPercentage"))
    CreateEndpointGroupRequest.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    CreateEndpointGroupRequest.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: "HealthCheckProtocol"))
    CreateEndpointGroupRequest.add_member(:health_check_path, Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: "HealthCheckPath"))
    CreateEndpointGroupRequest.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    CreateEndpointGroupRequest.add_member(:threshold_count, Shapes::ShapeRef.new(shape: ThresholdCount, location_name: "ThresholdCount"))
    CreateEndpointGroupRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateEndpointGroupRequest.add_member(:port_overrides, Shapes::ShapeRef.new(shape: PortOverrides, location_name: "PortOverrides"))
    CreateEndpointGroupRequest.struct_class = Types::CreateEndpointGroupRequest

    CreateEndpointGroupResponse.add_member(:endpoint_group, Shapes::ShapeRef.new(shape: EndpointGroup, location_name: "EndpointGroup"))
    CreateEndpointGroupResponse.struct_class = Types::CreateEndpointGroupResponse

    CreateListenerRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    CreateListenerRequest.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, required: true, location_name: "PortRanges"))
    CreateListenerRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "Protocol"))
    CreateListenerRequest.add_member(:client_affinity, Shapes::ShapeRef.new(shape: ClientAffinity, location_name: "ClientAffinity"))
    CreateListenerRequest.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdempotencyToken, required: true, location_name: "IdempotencyToken", metadata: {"idempotencyToken" => true}))
    CreateListenerRequest.struct_class = Types::CreateListenerRequest

    CreateListenerResponse.add_member(:listener, Shapes::ShapeRef.new(shape: Listener, location_name: "Listener"))
    CreateListenerResponse.struct_class = Types::CreateListenerResponse

    CrossAccountResource.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    CrossAccountResource.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr"))
    CrossAccountResource.add_member(:attachment_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn"))
    CrossAccountResource.struct_class = Types::CrossAccountResource

    CrossAccountResources.member = Shapes::ShapeRef.new(shape: CrossAccountResource)

    CustomRoutingAccelerator.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn"))
    CustomRoutingAccelerator.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    CustomRoutingAccelerator.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    CustomRoutingAccelerator.add_member(:enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    CustomRoutingAccelerator.add_member(:ip_sets, Shapes::ShapeRef.new(shape: IpSets, location_name: "IpSets"))
    CustomRoutingAccelerator.add_member(:dns_name, Shapes::ShapeRef.new(shape: GenericString, location_name: "DnsName"))
    CustomRoutingAccelerator.add_member(:status, Shapes::ShapeRef.new(shape: CustomRoutingAcceleratorStatus, location_name: "Status"))
    CustomRoutingAccelerator.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    CustomRoutingAccelerator.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    CustomRoutingAccelerator.struct_class = Types::CustomRoutingAccelerator

    CustomRoutingAcceleratorAttributes.add_member(:flow_logs_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "FlowLogsEnabled"))
    CustomRoutingAcceleratorAttributes.add_member(:flow_logs_s3_bucket, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Bucket"))
    CustomRoutingAcceleratorAttributes.add_member(:flow_logs_s3_prefix, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Prefix"))
    CustomRoutingAcceleratorAttributes.struct_class = Types::CustomRoutingAcceleratorAttributes

    CustomRoutingAccelerators.member = Shapes::ShapeRef.new(shape: CustomRoutingAccelerator)

    CustomRoutingDestinationConfiguration.add_member(:from_port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "FromPort"))
    CustomRoutingDestinationConfiguration.add_member(:to_port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "ToPort"))
    CustomRoutingDestinationConfiguration.add_member(:protocols, Shapes::ShapeRef.new(shape: CustomRoutingProtocols, required: true, location_name: "Protocols"))
    CustomRoutingDestinationConfiguration.struct_class = Types::CustomRoutingDestinationConfiguration

    CustomRoutingDestinationConfigurations.member = Shapes::ShapeRef.new(shape: CustomRoutingDestinationConfiguration)

    CustomRoutingDestinationDescription.add_member(:from_port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "FromPort"))
    CustomRoutingDestinationDescription.add_member(:to_port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "ToPort"))
    CustomRoutingDestinationDescription.add_member(:protocols, Shapes::ShapeRef.new(shape: Protocols, location_name: "Protocols"))
    CustomRoutingDestinationDescription.struct_class = Types::CustomRoutingDestinationDescription

    CustomRoutingDestinationDescriptions.member = Shapes::ShapeRef.new(shape: CustomRoutingDestinationDescription)

    CustomRoutingEndpointConfiguration.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    CustomRoutingEndpointConfiguration.add_member(:attachment_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn"))
    CustomRoutingEndpointConfiguration.struct_class = Types::CustomRoutingEndpointConfiguration

    CustomRoutingEndpointConfigurations.member = Shapes::ShapeRef.new(shape: CustomRoutingEndpointConfiguration)

    CustomRoutingEndpointDescription.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    CustomRoutingEndpointDescription.struct_class = Types::CustomRoutingEndpointDescription

    CustomRoutingEndpointDescriptions.member = Shapes::ShapeRef.new(shape: CustomRoutingEndpointDescription)

    CustomRoutingEndpointGroup.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    CustomRoutingEndpointGroup.add_member(:endpoint_group_region, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupRegion"))
    CustomRoutingEndpointGroup.add_member(:destination_descriptions, Shapes::ShapeRef.new(shape: CustomRoutingDestinationDescriptions, location_name: "DestinationDescriptions"))
    CustomRoutingEndpointGroup.add_member(:endpoint_descriptions, Shapes::ShapeRef.new(shape: CustomRoutingEndpointDescriptions, location_name: "EndpointDescriptions"))
    CustomRoutingEndpointGroup.struct_class = Types::CustomRoutingEndpointGroup

    CustomRoutingEndpointGroups.member = Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroup)

    CustomRoutingListener.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn"))
    CustomRoutingListener.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges"))
    CustomRoutingListener.struct_class = Types::CustomRoutingListener

    CustomRoutingListeners.member = Shapes::ShapeRef.new(shape: CustomRoutingListener)

    CustomRoutingProtocols.member = Shapes::ShapeRef.new(shape: CustomRoutingProtocol)

    DeleteAcceleratorRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    DeleteAcceleratorRequest.struct_class = Types::DeleteAcceleratorRequest

    DeleteCrossAccountAttachmentRequest.add_member(:attachment_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AttachmentArn"))
    DeleteCrossAccountAttachmentRequest.struct_class = Types::DeleteCrossAccountAttachmentRequest

    DeleteCustomRoutingAcceleratorRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    DeleteCustomRoutingAcceleratorRequest.struct_class = Types::DeleteCustomRoutingAcceleratorRequest

    DeleteCustomRoutingEndpointGroupRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    DeleteCustomRoutingEndpointGroupRequest.struct_class = Types::DeleteCustomRoutingEndpointGroupRequest

    DeleteCustomRoutingListenerRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    DeleteCustomRoutingListenerRequest.struct_class = Types::DeleteCustomRoutingListenerRequest

    DeleteEndpointGroupRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    DeleteEndpointGroupRequest.struct_class = Types::DeleteEndpointGroupRequest

    DeleteListenerRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    DeleteListenerRequest.struct_class = Types::DeleteListenerRequest

    DenyCustomRoutingTrafficRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    DenyCustomRoutingTrafficRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointId"))
    DenyCustomRoutingTrafficRequest.add_member(:destination_addresses, Shapes::ShapeRef.new(shape: DestinationAddresses, location_name: "DestinationAddresses"))
    DenyCustomRoutingTrafficRequest.add_member(:destination_ports, Shapes::ShapeRef.new(shape: DestinationPorts, location_name: "DestinationPorts"))
    DenyCustomRoutingTrafficRequest.add_member(:deny_all_traffic_to_endpoint, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "DenyAllTrafficToEndpoint"))
    DenyCustomRoutingTrafficRequest.struct_class = Types::DenyCustomRoutingTrafficRequest

    DeprovisionByoipCidrRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Cidr"))
    DeprovisionByoipCidrRequest.struct_class = Types::DeprovisionByoipCidrRequest

    DeprovisionByoipCidrResponse.add_member(:byoip_cidr, Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    DeprovisionByoipCidrResponse.struct_class = Types::DeprovisionByoipCidrResponse

    DescribeAcceleratorAttributesRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    DescribeAcceleratorAttributesRequest.struct_class = Types::DescribeAcceleratorAttributesRequest

    DescribeAcceleratorAttributesResponse.add_member(:accelerator_attributes, Shapes::ShapeRef.new(shape: AcceleratorAttributes, location_name: "AcceleratorAttributes"))
    DescribeAcceleratorAttributesResponse.struct_class = Types::DescribeAcceleratorAttributesResponse

    DescribeAcceleratorRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    DescribeAcceleratorRequest.struct_class = Types::DescribeAcceleratorRequest

    DescribeAcceleratorResponse.add_member(:accelerator, Shapes::ShapeRef.new(shape: Accelerator, location_name: "Accelerator"))
    DescribeAcceleratorResponse.struct_class = Types::DescribeAcceleratorResponse

    DescribeCrossAccountAttachmentRequest.add_member(:attachment_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AttachmentArn"))
    DescribeCrossAccountAttachmentRequest.struct_class = Types::DescribeCrossAccountAttachmentRequest

    DescribeCrossAccountAttachmentResponse.add_member(:cross_account_attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "CrossAccountAttachment"))
    DescribeCrossAccountAttachmentResponse.struct_class = Types::DescribeCrossAccountAttachmentResponse

    DescribeCustomRoutingAcceleratorAttributesRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    DescribeCustomRoutingAcceleratorAttributesRequest.struct_class = Types::DescribeCustomRoutingAcceleratorAttributesRequest

    DescribeCustomRoutingAcceleratorAttributesResponse.add_member(:accelerator_attributes, Shapes::ShapeRef.new(shape: CustomRoutingAcceleratorAttributes, location_name: "AcceleratorAttributes"))
    DescribeCustomRoutingAcceleratorAttributesResponse.struct_class = Types::DescribeCustomRoutingAcceleratorAttributesResponse

    DescribeCustomRoutingAcceleratorRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    DescribeCustomRoutingAcceleratorRequest.struct_class = Types::DescribeCustomRoutingAcceleratorRequest

    DescribeCustomRoutingAcceleratorResponse.add_member(:accelerator, Shapes::ShapeRef.new(shape: CustomRoutingAccelerator, location_name: "Accelerator"))
    DescribeCustomRoutingAcceleratorResponse.struct_class = Types::DescribeCustomRoutingAcceleratorResponse

    DescribeCustomRoutingEndpointGroupRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    DescribeCustomRoutingEndpointGroupRequest.struct_class = Types::DescribeCustomRoutingEndpointGroupRequest

    DescribeCustomRoutingEndpointGroupResponse.add_member(:endpoint_group, Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroup, location_name: "EndpointGroup"))
    DescribeCustomRoutingEndpointGroupResponse.struct_class = Types::DescribeCustomRoutingEndpointGroupResponse

    DescribeCustomRoutingListenerRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    DescribeCustomRoutingListenerRequest.struct_class = Types::DescribeCustomRoutingListenerRequest

    DescribeCustomRoutingListenerResponse.add_member(:listener, Shapes::ShapeRef.new(shape: CustomRoutingListener, location_name: "Listener"))
    DescribeCustomRoutingListenerResponse.struct_class = Types::DescribeCustomRoutingListenerResponse

    DescribeEndpointGroupRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    DescribeEndpointGroupRequest.struct_class = Types::DescribeEndpointGroupRequest

    DescribeEndpointGroupResponse.add_member(:endpoint_group, Shapes::ShapeRef.new(shape: EndpointGroup, location_name: "EndpointGroup"))
    DescribeEndpointGroupResponse.struct_class = Types::DescribeEndpointGroupResponse

    DescribeListenerRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    DescribeListenerRequest.struct_class = Types::DescribeListenerRequest

    DescribeListenerResponse.add_member(:listener, Shapes::ShapeRef.new(shape: Listener, location_name: "Listener"))
    DescribeListenerResponse.struct_class = Types::DescribeListenerResponse

    DestinationAddresses.member = Shapes::ShapeRef.new(shape: IpAddress)

    DestinationPortMapping.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn"))
    DestinationPortMapping.add_member(:accelerator_socket_addresses, Shapes::ShapeRef.new(shape: SocketAddresses, location_name: "AcceleratorSocketAddresses"))
    DestinationPortMapping.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    DestinationPortMapping.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    DestinationPortMapping.add_member(:endpoint_group_region, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupRegion"))
    DestinationPortMapping.add_member(:destination_socket_address, Shapes::ShapeRef.new(shape: SocketAddress, location_name: "DestinationSocketAddress"))
    DestinationPortMapping.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    DestinationPortMapping.add_member(:destination_traffic_state, Shapes::ShapeRef.new(shape: CustomRoutingDestinationTrafficState, location_name: "DestinationTrafficState"))
    DestinationPortMapping.struct_class = Types::DestinationPortMapping

    DestinationPortMappings.member = Shapes::ShapeRef.new(shape: DestinationPortMapping)

    DestinationPorts.member = Shapes::ShapeRef.new(shape: PortNumber)

    EndpointAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EndpointAlreadyExistsException.struct_class = Types::EndpointAlreadyExistsException

    EndpointConfiguration.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    EndpointConfiguration.add_member(:weight, Shapes::ShapeRef.new(shape: EndpointWeight, location_name: "Weight"))
    EndpointConfiguration.add_member(:client_ip_preservation_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "ClientIPPreservationEnabled"))
    EndpointConfiguration.add_member(:attachment_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "AttachmentArn"))
    EndpointConfiguration.struct_class = Types::EndpointConfiguration

    EndpointConfigurations.member = Shapes::ShapeRef.new(shape: EndpointConfiguration)

    EndpointDescription.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    EndpointDescription.add_member(:weight, Shapes::ShapeRef.new(shape: EndpointWeight, location_name: "Weight"))
    EndpointDescription.add_member(:health_state, Shapes::ShapeRef.new(shape: HealthState, location_name: "HealthState"))
    EndpointDescription.add_member(:health_reason, Shapes::ShapeRef.new(shape: GenericString, location_name: "HealthReason"))
    EndpointDescription.add_member(:client_ip_preservation_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "ClientIPPreservationEnabled"))
    EndpointDescription.struct_class = Types::EndpointDescription

    EndpointDescriptions.member = Shapes::ShapeRef.new(shape: EndpointDescription)

    EndpointGroup.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    EndpointGroup.add_member(:endpoint_group_region, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupRegion"))
    EndpointGroup.add_member(:endpoint_descriptions, Shapes::ShapeRef.new(shape: EndpointDescriptions, location_name: "EndpointDescriptions"))
    EndpointGroup.add_member(:traffic_dial_percentage, Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: "TrafficDialPercentage"))
    EndpointGroup.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    EndpointGroup.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: "HealthCheckProtocol"))
    EndpointGroup.add_member(:health_check_path, Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: "HealthCheckPath"))
    EndpointGroup.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    EndpointGroup.add_member(:threshold_count, Shapes::ShapeRef.new(shape: ThresholdCount, location_name: "ThresholdCount"))
    EndpointGroup.add_member(:port_overrides, Shapes::ShapeRef.new(shape: PortOverrides, location_name: "PortOverrides"))
    EndpointGroup.struct_class = Types::EndpointGroup

    EndpointGroupAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EndpointGroupAlreadyExistsException.struct_class = Types::EndpointGroupAlreadyExistsException

    EndpointGroupNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EndpointGroupNotFoundException.struct_class = Types::EndpointGroupNotFoundException

    EndpointGroups.member = Shapes::ShapeRef.new(shape: EndpointGroup)

    EndpointIdentifier.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointId"))
    EndpointIdentifier.add_member(:client_ip_preservation_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "ClientIPPreservationEnabled"))
    EndpointIdentifier.struct_class = Types::EndpointIdentifier

    EndpointIdentifiers.member = Shapes::ShapeRef.new(shape: EndpointIdentifier)

    EndpointIds.member = Shapes::ShapeRef.new(shape: GenericString)

    EndpointNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    EndpointNotFoundException.struct_class = Types::EndpointNotFoundException

    IncorrectCidrStateException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    IncorrectCidrStateException.struct_class = Types::IncorrectCidrStateException

    InternalServiceErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    InvalidArgumentException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidArgumentException.struct_class = Types::InvalidArgumentException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidPortRangeException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidPortRangeException.struct_class = Types::InvalidPortRangeException

    IpAddresses.member = Shapes::ShapeRef.new(shape: IpAddress)

    IpSet.add_member(:ip_family, Shapes::ShapeRef.new(shape: GenericString, deprecated: true, location_name: "IpFamily", metadata: {"deprecatedMessage" => "IpFamily has been replaced by IpAddressFamily"}))
    IpSet.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    IpSet.add_member(:ip_address_family, Shapes::ShapeRef.new(shape: IpAddressFamily, location_name: "IpAddressFamily"))
    IpSet.struct_class = Types::IpSet

    IpSets.member = Shapes::ShapeRef.new(shape: IpSet)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAcceleratorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAcceleratorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListAcceleratorsRequest.struct_class = Types::ListAcceleratorsRequest

    ListAcceleratorsResponse.add_member(:accelerators, Shapes::ShapeRef.new(shape: Accelerators, location_name: "Accelerators"))
    ListAcceleratorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListAcceleratorsResponse.struct_class = Types::ListAcceleratorsResponse

    ListByoipCidrsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListByoipCidrsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListByoipCidrsRequest.struct_class = Types::ListByoipCidrsRequest

    ListByoipCidrsResponse.add_member(:byoip_cidrs, Shapes::ShapeRef.new(shape: ByoipCidrs, location_name: "ByoipCidrs"))
    ListByoipCidrsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListByoipCidrsResponse.struct_class = Types::ListByoipCidrsResponse

    ListCrossAccountAttachmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCrossAccountAttachmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCrossAccountAttachmentsRequest.struct_class = Types::ListCrossAccountAttachmentsRequest

    ListCrossAccountAttachmentsResponse.add_member(:cross_account_attachments, Shapes::ShapeRef.new(shape: Attachments, location_name: "CrossAccountAttachments"))
    ListCrossAccountAttachmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCrossAccountAttachmentsResponse.struct_class = Types::ListCrossAccountAttachmentsResponse

    ListCrossAccountResourceAccountsRequest.struct_class = Types::ListCrossAccountResourceAccountsRequest

    ListCrossAccountResourceAccountsResponse.add_member(:resource_owner_aws_account_ids, Shapes::ShapeRef.new(shape: AwsAccountIds, location_name: "ResourceOwnerAwsAccountIds"))
    ListCrossAccountResourceAccountsResponse.struct_class = Types::ListCrossAccountResourceAccountsResponse

    ListCrossAccountResourcesRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "AcceleratorArn"))
    ListCrossAccountResourcesRequest.add_member(:resource_owner_aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "ResourceOwnerAwsAccountId"))
    ListCrossAccountResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCrossAccountResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCrossAccountResourcesRequest.struct_class = Types::ListCrossAccountResourcesRequest

    ListCrossAccountResourcesResponse.add_member(:cross_account_resources, Shapes::ShapeRef.new(shape: CrossAccountResources, location_name: "CrossAccountResources"))
    ListCrossAccountResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCrossAccountResourcesResponse.struct_class = Types::ListCrossAccountResourcesResponse

    ListCustomRoutingAcceleratorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCustomRoutingAcceleratorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingAcceleratorsRequest.struct_class = Types::ListCustomRoutingAcceleratorsRequest

    ListCustomRoutingAcceleratorsResponse.add_member(:accelerators, Shapes::ShapeRef.new(shape: CustomRoutingAccelerators, location_name: "Accelerators"))
    ListCustomRoutingAcceleratorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingAcceleratorsResponse.struct_class = Types::ListCustomRoutingAcceleratorsResponse

    ListCustomRoutingEndpointGroupsRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    ListCustomRoutingEndpointGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCustomRoutingEndpointGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingEndpointGroupsRequest.struct_class = Types::ListCustomRoutingEndpointGroupsRequest

    ListCustomRoutingEndpointGroupsResponse.add_member(:endpoint_groups, Shapes::ShapeRef.new(shape: CustomRoutingEndpointGroups, location_name: "EndpointGroups"))
    ListCustomRoutingEndpointGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingEndpointGroupsResponse.struct_class = Types::ListCustomRoutingEndpointGroupsResponse

    ListCustomRoutingListenersRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    ListCustomRoutingListenersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCustomRoutingListenersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingListenersRequest.struct_class = Types::ListCustomRoutingListenersRequest

    ListCustomRoutingListenersResponse.add_member(:listeners, Shapes::ShapeRef.new(shape: CustomRoutingListeners, location_name: "Listeners"))
    ListCustomRoutingListenersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingListenersResponse.struct_class = Types::ListCustomRoutingListenersResponse

    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointId"))
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:destination_address, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "DestinationAddress"))
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PortMappingsMaxResults, location_name: "MaxResults"))
    ListCustomRoutingPortMappingsByDestinationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingPortMappingsByDestinationRequest.struct_class = Types::ListCustomRoutingPortMappingsByDestinationRequest

    ListCustomRoutingPortMappingsByDestinationResponse.add_member(:destination_port_mappings, Shapes::ShapeRef.new(shape: DestinationPortMappings, location_name: "DestinationPortMappings"))
    ListCustomRoutingPortMappingsByDestinationResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingPortMappingsByDestinationResponse.struct_class = Types::ListCustomRoutingPortMappingsByDestinationResponse

    ListCustomRoutingPortMappingsRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    ListCustomRoutingPortMappingsRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    ListCustomRoutingPortMappingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PortMappingsMaxResults, location_name: "MaxResults"))
    ListCustomRoutingPortMappingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingPortMappingsRequest.struct_class = Types::ListCustomRoutingPortMappingsRequest

    ListCustomRoutingPortMappingsResponse.add_member(:port_mappings, Shapes::ShapeRef.new(shape: PortMappings, location_name: "PortMappings"))
    ListCustomRoutingPortMappingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListCustomRoutingPortMappingsResponse.struct_class = Types::ListCustomRoutingPortMappingsResponse

    ListEndpointGroupsRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    ListEndpointGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListEndpointGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListEndpointGroupsRequest.struct_class = Types::ListEndpointGroupsRequest

    ListEndpointGroupsResponse.add_member(:endpoint_groups, Shapes::ShapeRef.new(shape: EndpointGroups, location_name: "EndpointGroups"))
    ListEndpointGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListEndpointGroupsResponse.struct_class = Types::ListEndpointGroupsResponse

    ListListenersRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    ListListenersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListListenersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListListenersRequest.struct_class = Types::ListListenersRequest

    ListListenersResponse.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, location_name: "Listeners"))
    ListListenersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: GenericString, location_name: "NextToken"))
    ListListenersResponse.struct_class = Types::ListListenersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Listener.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "ListenerArn"))
    Listener.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges"))
    Listener.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol"))
    Listener.add_member(:client_affinity, Shapes::ShapeRef.new(shape: ClientAffinity, location_name: "ClientAffinity"))
    Listener.struct_class = Types::Listener

    ListenerNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ListenerNotFoundException.struct_class = Types::ListenerNotFoundException

    Listeners.member = Shapes::ShapeRef.new(shape: Listener)

    PortMapping.add_member(:accelerator_port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "AcceleratorPort"))
    PortMapping.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointGroupArn"))
    PortMapping.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    PortMapping.add_member(:destination_socket_address, Shapes::ShapeRef.new(shape: SocketAddress, location_name: "DestinationSocketAddress"))
    PortMapping.add_member(:protocols, Shapes::ShapeRef.new(shape: CustomRoutingProtocols, location_name: "Protocols"))
    PortMapping.add_member(:destination_traffic_state, Shapes::ShapeRef.new(shape: CustomRoutingDestinationTrafficState, location_name: "DestinationTrafficState"))
    PortMapping.struct_class = Types::PortMapping

    PortMappings.member = Shapes::ShapeRef.new(shape: PortMapping)

    PortOverride.add_member(:listener_port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "ListenerPort"))
    PortOverride.add_member(:endpoint_port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "EndpointPort"))
    PortOverride.struct_class = Types::PortOverride

    PortOverrides.member = Shapes::ShapeRef.new(shape: PortOverride)

    PortRange.add_member(:from_port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "FromPort"))
    PortRange.add_member(:to_port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "ToPort"))
    PortRange.struct_class = Types::PortRange

    PortRanges.member = Shapes::ShapeRef.new(shape: PortRange)

    Principals.member = Shapes::ShapeRef.new(shape: Principal)

    Protocols.member = Shapes::ShapeRef.new(shape: Protocol)

    ProvisionByoipCidrRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Cidr"))
    ProvisionByoipCidrRequest.add_member(:cidr_authorization_context, Shapes::ShapeRef.new(shape: CidrAuthorizationContext, required: true, location_name: "CidrAuthorizationContext"))
    ProvisionByoipCidrRequest.struct_class = Types::ProvisionByoipCidrRequest

    ProvisionByoipCidrResponse.add_member(:byoip_cidr, Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    ProvisionByoipCidrResponse.struct_class = Types::ProvisionByoipCidrResponse

    RemoveCustomRoutingEndpointsRequest.add_member(:endpoint_ids, Shapes::ShapeRef.new(shape: EndpointIds, required: true, location_name: "EndpointIds"))
    RemoveCustomRoutingEndpointsRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    RemoveCustomRoutingEndpointsRequest.struct_class = Types::RemoveCustomRoutingEndpointsRequest

    RemoveEndpointsRequest.add_member(:endpoint_identifiers, Shapes::ShapeRef.new(shape: EndpointIdentifiers, required: true, location_name: "EndpointIdentifiers"))
    RemoveEndpointsRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    RemoveEndpointsRequest.struct_class = Types::RemoveEndpointsRequest

    Resource.add_member(:endpoint_id, Shapes::ShapeRef.new(shape: GenericString, location_name: "EndpointId"))
    Resource.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, location_name: "Cidr"))
    Resource.add_member(:region, Shapes::ShapeRef.new(shape: GenericString, location_name: "Region"))
    Resource.struct_class = Types::Resource

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    SocketAddress.add_member(:ip_address, Shapes::ShapeRef.new(shape: GenericString, location_name: "IpAddress"))
    SocketAddress.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "Port"))
    SocketAddress.struct_class = Types::SocketAddress

    SocketAddresses.member = Shapes::ShapeRef.new(shape: SocketAddress)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TransactionInProgressException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TransactionInProgressException.struct_class = Types::TransactionInProgressException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAcceleratorAttributesRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "FlowLogsEnabled"))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_s3_bucket, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Bucket"))
    UpdateAcceleratorAttributesRequest.add_member(:flow_logs_s3_prefix, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Prefix"))
    UpdateAcceleratorAttributesRequest.struct_class = Types::UpdateAcceleratorAttributesRequest

    UpdateAcceleratorAttributesResponse.add_member(:accelerator_attributes, Shapes::ShapeRef.new(shape: AcceleratorAttributes, location_name: "AcceleratorAttributes"))
    UpdateAcceleratorAttributesResponse.struct_class = Types::UpdateAcceleratorAttributesResponse

    UpdateAcceleratorRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    UpdateAcceleratorRequest.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    UpdateAcceleratorRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    UpdateAcceleratorRequest.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    UpdateAcceleratorRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    UpdateAcceleratorRequest.struct_class = Types::UpdateAcceleratorRequest

    UpdateAcceleratorResponse.add_member(:accelerator, Shapes::ShapeRef.new(shape: Accelerator, location_name: "Accelerator"))
    UpdateAcceleratorResponse.struct_class = Types::UpdateAcceleratorResponse

    UpdateCrossAccountAttachmentRequest.add_member(:attachment_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AttachmentArn"))
    UpdateCrossAccountAttachmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: AttachmentName, location_name: "Name"))
    UpdateCrossAccountAttachmentRequest.add_member(:add_principals, Shapes::ShapeRef.new(shape: Principals, location_name: "AddPrincipals"))
    UpdateCrossAccountAttachmentRequest.add_member(:remove_principals, Shapes::ShapeRef.new(shape: Principals, location_name: "RemovePrincipals"))
    UpdateCrossAccountAttachmentRequest.add_member(:add_resources, Shapes::ShapeRef.new(shape: Resources, location_name: "AddResources"))
    UpdateCrossAccountAttachmentRequest.add_member(:remove_resources, Shapes::ShapeRef.new(shape: Resources, location_name: "RemoveResources"))
    UpdateCrossAccountAttachmentRequest.struct_class = Types::UpdateCrossAccountAttachmentRequest

    UpdateCrossAccountAttachmentResponse.add_member(:cross_account_attachment, Shapes::ShapeRef.new(shape: Attachment, location_name: "CrossAccountAttachment"))
    UpdateCrossAccountAttachmentResponse.struct_class = Types::UpdateCrossAccountAttachmentResponse

    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:flow_logs_enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "FlowLogsEnabled"))
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:flow_logs_s3_bucket, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Bucket"))
    UpdateCustomRoutingAcceleratorAttributesRequest.add_member(:flow_logs_s3_prefix, Shapes::ShapeRef.new(shape: GenericString, location_name: "FlowLogsS3Prefix"))
    UpdateCustomRoutingAcceleratorAttributesRequest.struct_class = Types::UpdateCustomRoutingAcceleratorAttributesRequest

    UpdateCustomRoutingAcceleratorAttributesResponse.add_member(:accelerator_attributes, Shapes::ShapeRef.new(shape: CustomRoutingAcceleratorAttributes, location_name: "AcceleratorAttributes"))
    UpdateCustomRoutingAcceleratorAttributesResponse.struct_class = Types::UpdateCustomRoutingAcceleratorAttributesResponse

    UpdateCustomRoutingAcceleratorRequest.add_member(:accelerator_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "AcceleratorArn"))
    UpdateCustomRoutingAcceleratorRequest.add_member(:name, Shapes::ShapeRef.new(shape: GenericString, location_name: "Name"))
    UpdateCustomRoutingAcceleratorRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "IpAddressType"))
    UpdateCustomRoutingAcceleratorRequest.add_member(:ip_addresses, Shapes::ShapeRef.new(shape: IpAddresses, location_name: "IpAddresses"))
    UpdateCustomRoutingAcceleratorRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: GenericBoolean, location_name: "Enabled"))
    UpdateCustomRoutingAcceleratorRequest.struct_class = Types::UpdateCustomRoutingAcceleratorRequest

    UpdateCustomRoutingAcceleratorResponse.add_member(:accelerator, Shapes::ShapeRef.new(shape: CustomRoutingAccelerator, location_name: "Accelerator"))
    UpdateCustomRoutingAcceleratorResponse.struct_class = Types::UpdateCustomRoutingAcceleratorResponse

    UpdateCustomRoutingListenerRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    UpdateCustomRoutingListenerRequest.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, required: true, location_name: "PortRanges"))
    UpdateCustomRoutingListenerRequest.struct_class = Types::UpdateCustomRoutingListenerRequest

    UpdateCustomRoutingListenerResponse.add_member(:listener, Shapes::ShapeRef.new(shape: CustomRoutingListener, location_name: "Listener"))
    UpdateCustomRoutingListenerResponse.struct_class = Types::UpdateCustomRoutingListenerResponse

    UpdateEndpointGroupRequest.add_member(:endpoint_group_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "EndpointGroupArn"))
    UpdateEndpointGroupRequest.add_member(:endpoint_configurations, Shapes::ShapeRef.new(shape: EndpointConfigurations, location_name: "EndpointConfigurations"))
    UpdateEndpointGroupRequest.add_member(:traffic_dial_percentage, Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: "TrafficDialPercentage"))
    UpdateEndpointGroupRequest.add_member(:health_check_port, Shapes::ShapeRef.new(shape: HealthCheckPort, location_name: "HealthCheckPort"))
    UpdateEndpointGroupRequest.add_member(:health_check_protocol, Shapes::ShapeRef.new(shape: HealthCheckProtocol, location_name: "HealthCheckProtocol"))
    UpdateEndpointGroupRequest.add_member(:health_check_path, Shapes::ShapeRef.new(shape: HealthCheckPath, location_name: "HealthCheckPath"))
    UpdateEndpointGroupRequest.add_member(:health_check_interval_seconds, Shapes::ShapeRef.new(shape: HealthCheckIntervalSeconds, location_name: "HealthCheckIntervalSeconds"))
    UpdateEndpointGroupRequest.add_member(:threshold_count, Shapes::ShapeRef.new(shape: ThresholdCount, location_name: "ThresholdCount"))
    UpdateEndpointGroupRequest.add_member(:port_overrides, Shapes::ShapeRef.new(shape: PortOverrides, location_name: "PortOverrides"))
    UpdateEndpointGroupRequest.struct_class = Types::UpdateEndpointGroupRequest

    UpdateEndpointGroupResponse.add_member(:endpoint_group, Shapes::ShapeRef.new(shape: EndpointGroup, location_name: "EndpointGroup"))
    UpdateEndpointGroupResponse.struct_class = Types::UpdateEndpointGroupResponse

    UpdateListenerRequest.add_member(:listener_arn, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "ListenerArn"))
    UpdateListenerRequest.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, location_name: "PortRanges"))
    UpdateListenerRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "Protocol"))
    UpdateListenerRequest.add_member(:client_affinity, Shapes::ShapeRef.new(shape: ClientAffinity, location_name: "ClientAffinity"))
    UpdateListenerRequest.struct_class = Types::UpdateListenerRequest

    UpdateListenerResponse.add_member(:listener, Shapes::ShapeRef.new(shape: Listener, location_name: "Listener"))
    UpdateListenerResponse.struct_class = Types::UpdateListenerResponse

    WithdrawByoipCidrRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: GenericString, required: true, location_name: "Cidr"))
    WithdrawByoipCidrRequest.struct_class = Types::WithdrawByoipCidrRequest

    WithdrawByoipCidrResponse.add_member(:byoip_cidr, Shapes::ShapeRef.new(shape: ByoipCidr, location_name: "ByoipCidr"))
    WithdrawByoipCidrResponse.struct_class = Types::WithdrawByoipCidrResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-08-08"

      api.metadata = {
        "apiVersion" => "2018-08-08",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "globalaccelerator",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Global Accelerator",
        "serviceId" => "Global Accelerator",
        "signatureVersion" => "v4",
        "signingName" => "globalaccelerator",
        "targetPrefix" => "GlobalAccelerator_V20180706",
        "uid" => "globalaccelerator-2018-08-08",
      }

      api.add_operation(:add_custom_routing_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddCustomRoutingEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddCustomRoutingEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddCustomRoutingEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: EndpointAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:add_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddEndpointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:advertise_byoip_cidr, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AdvertiseByoipCidr"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AdvertiseByoipCidrRequest)
        o.output = Shapes::ShapeRef.new(shape: AdvertiseByoipCidrResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
      end)

      api.add_operation(:allow_custom_routing_traffic, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AllowCustomRoutingTraffic"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AllowCustomRoutingTrafficRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:create_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAcceleratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
      end)

      api.add_operation(:create_cross_account_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCrossAccountAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCrossAccountAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCrossAccountAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
      end)

      api.add_operation(:create_custom_routing_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomRoutingAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomRoutingAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomRoutingAcceleratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
      end)

      api.add_operation(:create_custom_routing_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomRoutingEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomRoutingEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomRoutingEndpointGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_custom_routing_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomRoutingListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomRoutingListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomRoutingListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: AssociatedListenerFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
      end)

      api.add_operation(:delete_cross_account_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCrossAccountAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCrossAccountAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
      end)

      api.add_operation(:delete_custom_routing_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomRoutingAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomRoutingAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: AssociatedListenerFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
      end)

      api.add_operation(:delete_custom_routing_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomRoutingEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomRoutingEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:delete_custom_routing_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomRoutingListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomRoutingListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AssociatedEndpointGroupFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:delete_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:delete_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AssociatedEndpointGroupFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:deny_custom_routing_traffic, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DenyCustomRoutingTraffic"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DenyCustomRoutingTrafficRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:deprovision_byoip_cidr, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeprovisionByoipCidr"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeprovisionByoipCidrRequest)
        o.output = Shapes::ShapeRef.new(shape: DeprovisionByoipCidrResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
      end)

      api.add_operation(:describe_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcceleratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:describe_accelerator_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAcceleratorAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAcceleratorAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAcceleratorAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:describe_cross_account_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCrossAccountAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCrossAccountAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCrossAccountAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:describe_custom_routing_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCustomRoutingAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:describe_custom_routing_accelerator_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCustomRoutingAcceleratorAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCustomRoutingAcceleratorAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:describe_custom_routing_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCustomRoutingEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCustomRoutingEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCustomRoutingEndpointGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:describe_custom_routing_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCustomRoutingListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCustomRoutingListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCustomRoutingListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:describe_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEndpointGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:describe_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:list_accelerators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccelerators"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAcceleratorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAcceleratorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_byoip_cidrs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListByoipCidrs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListByoipCidrsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListByoipCidrsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cross_account_attachments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCrossAccountAttachments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCrossAccountAttachmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCrossAccountAttachmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cross_account_resource_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCrossAccountResourceAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCrossAccountResourceAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCrossAccountResourceAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:list_cross_account_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCrossAccountResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCrossAccountResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCrossAccountResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_routing_accelerators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomRoutingAccelerators"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomRoutingAcceleratorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomRoutingAcceleratorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_routing_endpoint_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomRoutingEndpointGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomRoutingEndpointGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomRoutingEndpointGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_routing_listeners, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomRoutingListeners"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomRoutingListenersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomRoutingListenersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_routing_port_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomRoutingPortMappings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_routing_port_mappings_by_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomRoutingPortMappingsByDestination"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsByDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomRoutingPortMappingsByDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_endpoint_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEndpointGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEndpointGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEndpointGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_listeners, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListListeners"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListListenersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListListenersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:provision_byoip_cidr, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ProvisionByoipCidr"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ProvisionByoipCidrRequest)
        o.output = Shapes::ShapeRef.new(shape: ProvisionByoipCidrResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
      end)

      api.add_operation(:remove_custom_routing_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveCustomRoutingEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveCustomRoutingEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:remove_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveEndpointsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
      end)

      api.add_operation(:update_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAcceleratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_accelerator_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAcceleratorAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAcceleratorAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAcceleratorAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
      end)

      api.add_operation(:update_cross_account_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCrossAccountAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCrossAccountAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCrossAccountAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AttachmentNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
      end)

      api.add_operation(:update_custom_routing_accelerator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCustomRoutingAccelerator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_custom_routing_accelerator_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCustomRoutingAcceleratorAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCustomRoutingAcceleratorAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AcceleratorNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: TransactionInProgressException)
      end)

      api.add_operation(:update_custom_routing_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCustomRoutingListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCustomRoutingListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCustomRoutingListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_endpoint_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpointGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: EndpointGroupNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_listener, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateListener"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateListenerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateListenerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPortRangeException)
        o.errors << Shapes::ShapeRef.new(shape: ListenerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:withdraw_byoip_cidr, Seahorse::Model::Operation.new.tap do |o|
        o.name = "WithdrawByoipCidr"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: WithdrawByoipCidrRequest)
        o.output = Shapes::ShapeRef.new(shape: WithdrawByoipCidrResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ByoipCidrNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IncorrectCidrStateException)
      end)
    end

  end
end
