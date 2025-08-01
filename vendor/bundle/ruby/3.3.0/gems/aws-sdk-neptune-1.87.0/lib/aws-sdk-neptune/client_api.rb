# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Neptune
  # @api private
  module ClientApi

    include Seahorse::Model

    AddRoleToDBClusterMessage = Shapes::StructureShape.new(name: 'AddRoleToDBClusterMessage')
    AddSourceIdentifierToSubscriptionMessage = Shapes::StructureShape.new(name: 'AddSourceIdentifierToSubscriptionMessage')
    AddSourceIdentifierToSubscriptionResult = Shapes::StructureShape.new(name: 'AddSourceIdentifierToSubscriptionResult')
    AddTagsToResourceMessage = Shapes::StructureShape.new(name: 'AddTagsToResourceMessage')
    ApplyMethod = Shapes::StringShape.new(name: 'ApplyMethod')
    ApplyPendingMaintenanceActionMessage = Shapes::StructureShape.new(name: 'ApplyPendingMaintenanceActionMessage')
    ApplyPendingMaintenanceActionResult = Shapes::StructureShape.new(name: 'ApplyPendingMaintenanceActionResult')
    AttributeValueList = Shapes::ListShape.new(name: 'AttributeValueList')
    AuthorizationNotFoundFault = Shapes::StructureShape.new(name: 'AuthorizationNotFoundFault', error: {"code" => "AuthorizationNotFound", "httpStatusCode" => 404, "senderFault" => true})
    AvailabilityZone = Shapes::StructureShape.new(name: 'AvailabilityZone')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    AvailabilityZones = Shapes::ListShape.new(name: 'AvailabilityZones')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    CertificateNotFoundFault = Shapes::StructureShape.new(name: 'CertificateNotFoundFault', error: {"code" => "CertificateNotFound", "httpStatusCode" => 404, "senderFault" => true})
    CharacterSet = Shapes::StructureShape.new(name: 'CharacterSet')
    CloudwatchLogsExportConfiguration = Shapes::StructureShape.new(name: 'CloudwatchLogsExportConfiguration')
    ClusterPendingModifiedValues = Shapes::StructureShape.new(name: 'ClusterPendingModifiedValues')
    CopyDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'CopyDBClusterParameterGroupMessage')
    CopyDBClusterParameterGroupResult = Shapes::StructureShape.new(name: 'CopyDBClusterParameterGroupResult')
    CopyDBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'CopyDBClusterSnapshotMessage')
    CopyDBClusterSnapshotResult = Shapes::StructureShape.new(name: 'CopyDBClusterSnapshotResult')
    CopyDBParameterGroupMessage = Shapes::StructureShape.new(name: 'CopyDBParameterGroupMessage')
    CopyDBParameterGroupResult = Shapes::StructureShape.new(name: 'CopyDBParameterGroupResult')
    CreateDBClusterEndpointMessage = Shapes::StructureShape.new(name: 'CreateDBClusterEndpointMessage')
    CreateDBClusterEndpointOutput = Shapes::StructureShape.new(name: 'CreateDBClusterEndpointOutput')
    CreateDBClusterMessage = Shapes::StructureShape.new(name: 'CreateDBClusterMessage')
    CreateDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'CreateDBClusterParameterGroupMessage')
    CreateDBClusterParameterGroupResult = Shapes::StructureShape.new(name: 'CreateDBClusterParameterGroupResult')
    CreateDBClusterResult = Shapes::StructureShape.new(name: 'CreateDBClusterResult')
    CreateDBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'CreateDBClusterSnapshotMessage')
    CreateDBClusterSnapshotResult = Shapes::StructureShape.new(name: 'CreateDBClusterSnapshotResult')
    CreateDBInstanceMessage = Shapes::StructureShape.new(name: 'CreateDBInstanceMessage')
    CreateDBInstanceResult = Shapes::StructureShape.new(name: 'CreateDBInstanceResult')
    CreateDBParameterGroupMessage = Shapes::StructureShape.new(name: 'CreateDBParameterGroupMessage')
    CreateDBParameterGroupResult = Shapes::StructureShape.new(name: 'CreateDBParameterGroupResult')
    CreateDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'CreateDBSubnetGroupMessage')
    CreateDBSubnetGroupResult = Shapes::StructureShape.new(name: 'CreateDBSubnetGroupResult')
    CreateEventSubscriptionMessage = Shapes::StructureShape.new(name: 'CreateEventSubscriptionMessage')
    CreateEventSubscriptionResult = Shapes::StructureShape.new(name: 'CreateEventSubscriptionResult')
    CreateGlobalClusterMessage = Shapes::StructureShape.new(name: 'CreateGlobalClusterMessage')
    CreateGlobalClusterResult = Shapes::StructureShape.new(name: 'CreateGlobalClusterResult')
    DBCluster = Shapes::StructureShape.new(name: 'DBCluster')
    DBClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterAlreadyExistsFault', error: {"code" => "DBClusterAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterEndpoint = Shapes::StructureShape.new(name: 'DBClusterEndpoint')
    DBClusterEndpointAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterEndpointAlreadyExistsFault', error: {"code" => "DBClusterEndpointAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterEndpointList = Shapes::ListShape.new(name: 'DBClusterEndpointList')
    DBClusterEndpointMessage = Shapes::StructureShape.new(name: 'DBClusterEndpointMessage')
    DBClusterEndpointNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterEndpointNotFoundFault', error: {"code" => "DBClusterEndpointNotFoundFault", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterEndpointQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterEndpointQuotaExceededFault', error: {"code" => "DBClusterEndpointQuotaExceededFault", "httpStatusCode" => 403, "senderFault" => true})
    DBClusterList = Shapes::ListShape.new(name: 'DBClusterList')
    DBClusterMember = Shapes::StructureShape.new(name: 'DBClusterMember')
    DBClusterMemberList = Shapes::ListShape.new(name: 'DBClusterMemberList')
    DBClusterMessage = Shapes::StructureShape.new(name: 'DBClusterMessage')
    DBClusterNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterNotFoundFault', error: {"code" => "DBClusterNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBClusterOptionGroupMemberships = Shapes::ListShape.new(name: 'DBClusterOptionGroupMemberships')
    DBClusterOptionGroupStatus = Shapes::StructureShape.new(name: 'DBClusterOptionGroupStatus')
    DBClusterParameterGroup = Shapes::StructureShape.new(name: 'DBClusterParameterGroup')
    DBClusterParameterGroupDetails = Shapes::StructureShape.new(name: 'DBClusterParameterGroupDetails')
    DBClusterParameterGroupList = Shapes::ListShape.new(name: 'DBClusterParameterGroupList')
    DBClusterParameterGroupNameMessage = Shapes::StructureShape.new(name: 'DBClusterParameterGroupNameMessage')
    DBClusterParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterParameterGroupNotFoundFault', error: {"code" => "DBClusterParameterGroupNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBClusterParameterGroupsMessage = Shapes::StructureShape.new(name: 'DBClusterParameterGroupsMessage')
    DBClusterQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterQuotaExceededFault', error: {"code" => "DBClusterQuotaExceededFault", "httpStatusCode" => 403, "senderFault" => true})
    DBClusterRole = Shapes::StructureShape.new(name: 'DBClusterRole')
    DBClusterRoleAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterRoleAlreadyExistsFault', error: {"code" => "DBClusterRoleAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterRoleNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterRoleNotFoundFault', error: {"code" => "DBClusterRoleNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBClusterRoleQuotaExceededFault = Shapes::StructureShape.new(name: 'DBClusterRoleQuotaExceededFault', error: {"code" => "DBClusterRoleQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterRoles = Shapes::ListShape.new(name: 'DBClusterRoles')
    DBClusterSnapshot = Shapes::StructureShape.new(name: 'DBClusterSnapshot')
    DBClusterSnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBClusterSnapshotAlreadyExistsFault', error: {"code" => "DBClusterSnapshotAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    DBClusterSnapshotAttribute = Shapes::StructureShape.new(name: 'DBClusterSnapshotAttribute')
    DBClusterSnapshotAttributeList = Shapes::ListShape.new(name: 'DBClusterSnapshotAttributeList')
    DBClusterSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DBClusterSnapshotAttributesResult')
    DBClusterSnapshotList = Shapes::ListShape.new(name: 'DBClusterSnapshotList')
    DBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'DBClusterSnapshotMessage')
    DBClusterSnapshotNotFoundFault = Shapes::StructureShape.new(name: 'DBClusterSnapshotNotFoundFault', error: {"code" => "DBClusterSnapshotNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBEngineVersion = Shapes::StructureShape.new(name: 'DBEngineVersion')
    DBEngineVersionList = Shapes::ListShape.new(name: 'DBEngineVersionList')
    DBEngineVersionMessage = Shapes::StructureShape.new(name: 'DBEngineVersionMessage')
    DBInstance = Shapes::StructureShape.new(name: 'DBInstance')
    DBInstanceAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBInstanceAlreadyExistsFault', error: {"code" => "DBInstanceAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBInstanceList = Shapes::ListShape.new(name: 'DBInstanceList')
    DBInstanceMessage = Shapes::StructureShape.new(name: 'DBInstanceMessage')
    DBInstanceNotFoundFault = Shapes::StructureShape.new(name: 'DBInstanceNotFoundFault', error: {"code" => "DBInstanceNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBInstanceStatusInfo = Shapes::StructureShape.new(name: 'DBInstanceStatusInfo')
    DBInstanceStatusInfoList = Shapes::ListShape.new(name: 'DBInstanceStatusInfoList')
    DBParameterGroup = Shapes::StructureShape.new(name: 'DBParameterGroup')
    DBParameterGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBParameterGroupAlreadyExistsFault', error: {"code" => "DBParameterGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBParameterGroupDetails = Shapes::StructureShape.new(name: 'DBParameterGroupDetails')
    DBParameterGroupList = Shapes::ListShape.new(name: 'DBParameterGroupList')
    DBParameterGroupNameMessage = Shapes::StructureShape.new(name: 'DBParameterGroupNameMessage')
    DBParameterGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBParameterGroupNotFoundFault', error: {"code" => "DBParameterGroupNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBParameterGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBParameterGroupQuotaExceededFault', error: {"code" => "DBParameterGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    DBParameterGroupStatus = Shapes::StructureShape.new(name: 'DBParameterGroupStatus')
    DBParameterGroupStatusList = Shapes::ListShape.new(name: 'DBParameterGroupStatusList')
    DBParameterGroupsMessage = Shapes::StructureShape.new(name: 'DBParameterGroupsMessage')
    DBSecurityGroupMembership = Shapes::StructureShape.new(name: 'DBSecurityGroupMembership')
    DBSecurityGroupMembershipList = Shapes::ListShape.new(name: 'DBSecurityGroupMembershipList')
    DBSecurityGroupNameList = Shapes::ListShape.new(name: 'DBSecurityGroupNameList')
    DBSecurityGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBSecurityGroupNotFoundFault', error: {"code" => "DBSecurityGroupNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBSnapshotAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBSnapshotAlreadyExistsFault', error: {"code" => "DBSnapshotAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBSnapshotNotFoundFault = Shapes::StructureShape.new(name: 'DBSnapshotNotFoundFault', error: {"code" => "DBSnapshotNotFound", "httpStatusCode" => 404, "senderFault" => true})
    DBSubnetGroup = Shapes::StructureShape.new(name: 'DBSubnetGroup')
    DBSubnetGroupAlreadyExistsFault = Shapes::StructureShape.new(name: 'DBSubnetGroupAlreadyExistsFault', error: {"code" => "DBSubnetGroupAlreadyExists", "httpStatusCode" => 400, "senderFault" => true})
    DBSubnetGroupDoesNotCoverEnoughAZs = Shapes::StructureShape.new(name: 'DBSubnetGroupDoesNotCoverEnoughAZs', error: {"code" => "DBSubnetGroupDoesNotCoverEnoughAZs", "httpStatusCode" => 400, "senderFault" => true})
    DBSubnetGroupMessage = Shapes::StructureShape.new(name: 'DBSubnetGroupMessage')
    DBSubnetGroupNotFoundFault = Shapes::StructureShape.new(name: 'DBSubnetGroupNotFoundFault', error: {"code" => "DBSubnetGroupNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    DBSubnetGroupQuotaExceededFault = Shapes::StructureShape.new(name: 'DBSubnetGroupQuotaExceededFault', error: {"code" => "DBSubnetGroupQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    DBSubnetGroups = Shapes::ListShape.new(name: 'DBSubnetGroups')
    DBSubnetQuotaExceededFault = Shapes::StructureShape.new(name: 'DBSubnetQuotaExceededFault', error: {"code" => "DBSubnetQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true})
    DBUpgradeDependencyFailureFault = Shapes::StructureShape.new(name: 'DBUpgradeDependencyFailureFault', error: {"code" => "DBUpgradeDependencyFailure", "httpStatusCode" => 400, "senderFault" => true})
    DeleteDBClusterEndpointMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterEndpointMessage')
    DeleteDBClusterEndpointOutput = Shapes::StructureShape.new(name: 'DeleteDBClusterEndpointOutput')
    DeleteDBClusterMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterMessage')
    DeleteDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterParameterGroupMessage')
    DeleteDBClusterResult = Shapes::StructureShape.new(name: 'DeleteDBClusterResult')
    DeleteDBClusterSnapshotMessage = Shapes::StructureShape.new(name: 'DeleteDBClusterSnapshotMessage')
    DeleteDBClusterSnapshotResult = Shapes::StructureShape.new(name: 'DeleteDBClusterSnapshotResult')
    DeleteDBInstanceMessage = Shapes::StructureShape.new(name: 'DeleteDBInstanceMessage')
    DeleteDBInstanceResult = Shapes::StructureShape.new(name: 'DeleteDBInstanceResult')
    DeleteDBParameterGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBParameterGroupMessage')
    DeleteDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'DeleteDBSubnetGroupMessage')
    DeleteEventSubscriptionMessage = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionMessage')
    DeleteEventSubscriptionResult = Shapes::StructureShape.new(name: 'DeleteEventSubscriptionResult')
    DeleteGlobalClusterMessage = Shapes::StructureShape.new(name: 'DeleteGlobalClusterMessage')
    DeleteGlobalClusterResult = Shapes::StructureShape.new(name: 'DeleteGlobalClusterResult')
    DescribeDBClusterEndpointsMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterEndpointsMessage')
    DescribeDBClusterParameterGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterParameterGroupsMessage')
    DescribeDBClusterParametersMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterParametersMessage')
    DescribeDBClusterSnapshotAttributesMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterSnapshotAttributesMessage')
    DescribeDBClusterSnapshotAttributesResult = Shapes::StructureShape.new(name: 'DescribeDBClusterSnapshotAttributesResult')
    DescribeDBClusterSnapshotsMessage = Shapes::StructureShape.new(name: 'DescribeDBClusterSnapshotsMessage')
    DescribeDBClustersMessage = Shapes::StructureShape.new(name: 'DescribeDBClustersMessage')
    DescribeDBEngineVersionsMessage = Shapes::StructureShape.new(name: 'DescribeDBEngineVersionsMessage')
    DescribeDBInstancesMessage = Shapes::StructureShape.new(name: 'DescribeDBInstancesMessage')
    DescribeDBParameterGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBParameterGroupsMessage')
    DescribeDBParametersMessage = Shapes::StructureShape.new(name: 'DescribeDBParametersMessage')
    DescribeDBSubnetGroupsMessage = Shapes::StructureShape.new(name: 'DescribeDBSubnetGroupsMessage')
    DescribeEngineDefaultClusterParametersMessage = Shapes::StructureShape.new(name: 'DescribeEngineDefaultClusterParametersMessage')
    DescribeEngineDefaultClusterParametersResult = Shapes::StructureShape.new(name: 'DescribeEngineDefaultClusterParametersResult')
    DescribeEngineDefaultParametersMessage = Shapes::StructureShape.new(name: 'DescribeEngineDefaultParametersMessage')
    DescribeEngineDefaultParametersResult = Shapes::StructureShape.new(name: 'DescribeEngineDefaultParametersResult')
    DescribeEventCategoriesMessage = Shapes::StructureShape.new(name: 'DescribeEventCategoriesMessage')
    DescribeEventSubscriptionsMessage = Shapes::StructureShape.new(name: 'DescribeEventSubscriptionsMessage')
    DescribeEventsMessage = Shapes::StructureShape.new(name: 'DescribeEventsMessage')
    DescribeGlobalClustersMessage = Shapes::StructureShape.new(name: 'DescribeGlobalClustersMessage')
    DescribeOrderableDBInstanceOptionsMessage = Shapes::StructureShape.new(name: 'DescribeOrderableDBInstanceOptionsMessage')
    DescribePendingMaintenanceActionsMessage = Shapes::StructureShape.new(name: 'DescribePendingMaintenanceActionsMessage')
    DescribeValidDBInstanceModificationsMessage = Shapes::StructureShape.new(name: 'DescribeValidDBInstanceModificationsMessage')
    DescribeValidDBInstanceModificationsResult = Shapes::StructureShape.new(name: 'DescribeValidDBInstanceModificationsResult')
    DomainMembership = Shapes::StructureShape.new(name: 'DomainMembership')
    DomainMembershipList = Shapes::ListShape.new(name: 'DomainMembershipList')
    DomainNotFoundFault = Shapes::StructureShape.new(name: 'DomainNotFoundFault', error: {"code" => "DomainNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleOptional = Shapes::FloatShape.new(name: 'DoubleOptional')
    DoubleRange = Shapes::StructureShape.new(name: 'DoubleRange')
    DoubleRangeList = Shapes::ListShape.new(name: 'DoubleRangeList')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EngineDefaults = Shapes::StructureShape.new(name: 'EngineDefaults')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCategoriesList = Shapes::ListShape.new(name: 'EventCategoriesList')
    EventCategoriesMap = Shapes::StructureShape.new(name: 'EventCategoriesMap')
    EventCategoriesMapList = Shapes::ListShape.new(name: 'EventCategoriesMapList')
    EventCategoriesMessage = Shapes::StructureShape.new(name: 'EventCategoriesMessage')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventSubscription = Shapes::StructureShape.new(name: 'EventSubscription')
    EventSubscriptionQuotaExceededFault = Shapes::StructureShape.new(name: 'EventSubscriptionQuotaExceededFault', error: {"code" => "EventSubscriptionQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    EventSubscriptionsList = Shapes::ListShape.new(name: 'EventSubscriptionsList')
    EventSubscriptionsMessage = Shapes::StructureShape.new(name: 'EventSubscriptionsMessage')
    EventsMessage = Shapes::StructureShape.new(name: 'EventsMessage')
    FailoverDBClusterMessage = Shapes::StructureShape.new(name: 'FailoverDBClusterMessage')
    FailoverDBClusterResult = Shapes::StructureShape.new(name: 'FailoverDBClusterResult')
    FailoverGlobalClusterMessage = Shapes::StructureShape.new(name: 'FailoverGlobalClusterMessage')
    FailoverGlobalClusterResult = Shapes::StructureShape.new(name: 'FailoverGlobalClusterResult')
    FailoverState = Shapes::StructureShape.new(name: 'FailoverState')
    FailoverStatus = Shapes::StringShape.new(name: 'FailoverStatus')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValueList = Shapes::ListShape.new(name: 'FilterValueList')
    GlobalCluster = Shapes::StructureShape.new(name: 'GlobalCluster')
    GlobalClusterAlreadyExistsFault = Shapes::StructureShape.new(name: 'GlobalClusterAlreadyExistsFault', error: {"code" => "GlobalClusterAlreadyExistsFault", "httpStatusCode" => 400, "senderFault" => true})
    GlobalClusterIdentifier = Shapes::StringShape.new(name: 'GlobalClusterIdentifier')
    GlobalClusterList = Shapes::ListShape.new(name: 'GlobalClusterList')
    GlobalClusterMember = Shapes::StructureShape.new(name: 'GlobalClusterMember')
    GlobalClusterMemberList = Shapes::ListShape.new(name: 'GlobalClusterMemberList')
    GlobalClusterNotFoundFault = Shapes::StructureShape.new(name: 'GlobalClusterNotFoundFault', error: {"code" => "GlobalClusterNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    GlobalClusterQuotaExceededFault = Shapes::StructureShape.new(name: 'GlobalClusterQuotaExceededFault', error: {"code" => "GlobalClusterQuotaExceededFault", "httpStatusCode" => 400, "senderFault" => true})
    GlobalClustersMessage = Shapes::StructureShape.new(name: 'GlobalClustersMessage')
    InstanceQuotaExceededFault = Shapes::StructureShape.new(name: 'InstanceQuotaExceededFault', error: {"code" => "InstanceQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    InsufficientDBClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientDBClusterCapacityFault', error: {"code" => "InsufficientDBClusterCapacityFault", "httpStatusCode" => 403, "senderFault" => true})
    InsufficientDBInstanceCapacityFault = Shapes::StructureShape.new(name: 'InsufficientDBInstanceCapacityFault', error: {"code" => "InsufficientDBInstanceCapacity", "httpStatusCode" => 400, "senderFault" => true})
    InsufficientStorageClusterCapacityFault = Shapes::StructureShape.new(name: 'InsufficientStorageClusterCapacityFault', error: {"code" => "InsufficientStorageClusterCapacity", "httpStatusCode" => 400, "senderFault" => true})
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerOptional = Shapes::IntegerShape.new(name: 'IntegerOptional')
    InvalidDBClusterEndpointStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterEndpointStateFault', error: {"code" => "InvalidDBClusterEndpointStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBClusterSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterSnapshotStateFault', error: {"code" => "InvalidDBClusterSnapshotStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBClusterStateFault = Shapes::StructureShape.new(name: 'InvalidDBClusterStateFault', error: {"code" => "InvalidDBClusterStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBInstanceStateFault = Shapes::StructureShape.new(name: 'InvalidDBInstanceStateFault', error: {"code" => "InvalidDBInstanceState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBParameterGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBParameterGroupStateFault', error: {"code" => "InvalidDBParameterGroupState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBSecurityGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBSecurityGroupStateFault', error: {"code" => "InvalidDBSecurityGroupState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBSnapshotStateFault = Shapes::StructureShape.new(name: 'InvalidDBSnapshotStateFault', error: {"code" => "InvalidDBSnapshotState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBSubnetGroupStateFault = Shapes::StructureShape.new(name: 'InvalidDBSubnetGroupStateFault', error: {"code" => "InvalidDBSubnetGroupStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidDBSubnetStateFault = Shapes::StructureShape.new(name: 'InvalidDBSubnetStateFault', error: {"code" => "InvalidDBSubnetStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidEventSubscriptionStateFault = Shapes::StructureShape.new(name: 'InvalidEventSubscriptionStateFault', error: {"code" => "InvalidEventSubscriptionState", "httpStatusCode" => 400, "senderFault" => true})
    InvalidGlobalClusterStateFault = Shapes::StructureShape.new(name: 'InvalidGlobalClusterStateFault', error: {"code" => "InvalidGlobalClusterStateFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidRestoreFault = Shapes::StructureShape.new(name: 'InvalidRestoreFault', error: {"code" => "InvalidRestoreFault", "httpStatusCode" => 400, "senderFault" => true})
    InvalidSubnet = Shapes::StructureShape.new(name: 'InvalidSubnet', error: {"code" => "InvalidSubnet", "httpStatusCode" => 400, "senderFault" => true})
    InvalidVPCNetworkStateFault = Shapes::StructureShape.new(name: 'InvalidVPCNetworkStateFault', error: {"code" => "InvalidVPCNetworkStateFault", "httpStatusCode" => 400, "senderFault" => true})
    KMSKeyNotAccessibleFault = Shapes::StructureShape.new(name: 'KMSKeyNotAccessibleFault', error: {"code" => "KMSKeyNotAccessibleFault", "httpStatusCode" => 400, "senderFault" => true})
    KeyList = Shapes::ListShape.new(name: 'KeyList')
    ListTagsForResourceMessage = Shapes::StructureShape.new(name: 'ListTagsForResourceMessage')
    LogTypeList = Shapes::ListShape.new(name: 'LogTypeList')
    ModifyDBClusterEndpointMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterEndpointMessage')
    ModifyDBClusterEndpointOutput = Shapes::StructureShape.new(name: 'ModifyDBClusterEndpointOutput')
    ModifyDBClusterMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterMessage')
    ModifyDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterParameterGroupMessage')
    ModifyDBClusterResult = Shapes::StructureShape.new(name: 'ModifyDBClusterResult')
    ModifyDBClusterSnapshotAttributeMessage = Shapes::StructureShape.new(name: 'ModifyDBClusterSnapshotAttributeMessage')
    ModifyDBClusterSnapshotAttributeResult = Shapes::StructureShape.new(name: 'ModifyDBClusterSnapshotAttributeResult')
    ModifyDBInstanceMessage = Shapes::StructureShape.new(name: 'ModifyDBInstanceMessage')
    ModifyDBInstanceResult = Shapes::StructureShape.new(name: 'ModifyDBInstanceResult')
    ModifyDBParameterGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBParameterGroupMessage')
    ModifyDBSubnetGroupMessage = Shapes::StructureShape.new(name: 'ModifyDBSubnetGroupMessage')
    ModifyDBSubnetGroupResult = Shapes::StructureShape.new(name: 'ModifyDBSubnetGroupResult')
    ModifyEventSubscriptionMessage = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionMessage')
    ModifyEventSubscriptionResult = Shapes::StructureShape.new(name: 'ModifyEventSubscriptionResult')
    ModifyGlobalClusterMessage = Shapes::StructureShape.new(name: 'ModifyGlobalClusterMessage')
    ModifyGlobalClusterResult = Shapes::StructureShape.new(name: 'ModifyGlobalClusterResult')
    OptionGroupMembership = Shapes::StructureShape.new(name: 'OptionGroupMembership')
    OptionGroupMembershipList = Shapes::ListShape.new(name: 'OptionGroupMembershipList')
    OptionGroupNotFoundFault = Shapes::StructureShape.new(name: 'OptionGroupNotFoundFault', error: {"code" => "OptionGroupNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    OrderableDBInstanceOption = Shapes::StructureShape.new(name: 'OrderableDBInstanceOption')
    OrderableDBInstanceOptionsList = Shapes::ListShape.new(name: 'OrderableDBInstanceOptionsList')
    OrderableDBInstanceOptionsMessage = Shapes::StructureShape.new(name: 'OrderableDBInstanceOptionsMessage')
    Parameter = Shapes::StructureShape.new(name: 'Parameter')
    ParametersList = Shapes::ListShape.new(name: 'ParametersList')
    PendingCloudwatchLogsExports = Shapes::StructureShape.new(name: 'PendingCloudwatchLogsExports')
    PendingMaintenanceAction = Shapes::StructureShape.new(name: 'PendingMaintenanceAction')
    PendingMaintenanceActionDetails = Shapes::ListShape.new(name: 'PendingMaintenanceActionDetails')
    PendingMaintenanceActions = Shapes::ListShape.new(name: 'PendingMaintenanceActions')
    PendingMaintenanceActionsMessage = Shapes::StructureShape.new(name: 'PendingMaintenanceActionsMessage')
    PendingModifiedValues = Shapes::StructureShape.new(name: 'PendingModifiedValues')
    PromoteReadReplicaDBClusterMessage = Shapes::StructureShape.new(name: 'PromoteReadReplicaDBClusterMessage')
    PromoteReadReplicaDBClusterResult = Shapes::StructureShape.new(name: 'PromoteReadReplicaDBClusterResult')
    ProvisionedIopsNotAvailableInAZFault = Shapes::StructureShape.new(name: 'ProvisionedIopsNotAvailableInAZFault', error: {"code" => "ProvisionedIopsNotAvailableInAZFault", "httpStatusCode" => 400, "senderFault" => true})
    Range = Shapes::StructureShape.new(name: 'Range')
    RangeList = Shapes::ListShape.new(name: 'RangeList')
    ReadReplicaDBClusterIdentifierList = Shapes::ListShape.new(name: 'ReadReplicaDBClusterIdentifierList')
    ReadReplicaDBInstanceIdentifierList = Shapes::ListShape.new(name: 'ReadReplicaDBInstanceIdentifierList')
    ReadReplicaIdentifierList = Shapes::ListShape.new(name: 'ReadReplicaIdentifierList')
    ReadersArnList = Shapes::ListShape.new(name: 'ReadersArnList')
    RebootDBInstanceMessage = Shapes::StructureShape.new(name: 'RebootDBInstanceMessage')
    RebootDBInstanceResult = Shapes::StructureShape.new(name: 'RebootDBInstanceResult')
    RemoveFromGlobalClusterMessage = Shapes::StructureShape.new(name: 'RemoveFromGlobalClusterMessage')
    RemoveFromGlobalClusterResult = Shapes::StructureShape.new(name: 'RemoveFromGlobalClusterResult')
    RemoveRoleFromDBClusterMessage = Shapes::StructureShape.new(name: 'RemoveRoleFromDBClusterMessage')
    RemoveSourceIdentifierFromSubscriptionMessage = Shapes::StructureShape.new(name: 'RemoveSourceIdentifierFromSubscriptionMessage')
    RemoveSourceIdentifierFromSubscriptionResult = Shapes::StructureShape.new(name: 'RemoveSourceIdentifierFromSubscriptionResult')
    RemoveTagsFromResourceMessage = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceMessage')
    ResetDBClusterParameterGroupMessage = Shapes::StructureShape.new(name: 'ResetDBClusterParameterGroupMessage')
    ResetDBParameterGroupMessage = Shapes::StructureShape.new(name: 'ResetDBParameterGroupMessage')
    ResourceNotFoundFault = Shapes::StructureShape.new(name: 'ResourceNotFoundFault', error: {"code" => "ResourceNotFoundFault", "httpStatusCode" => 404, "senderFault" => true})
    ResourcePendingMaintenanceActions = Shapes::StructureShape.new(name: 'ResourcePendingMaintenanceActions')
    RestoreDBClusterFromSnapshotMessage = Shapes::StructureShape.new(name: 'RestoreDBClusterFromSnapshotMessage')
    RestoreDBClusterFromSnapshotResult = Shapes::StructureShape.new(name: 'RestoreDBClusterFromSnapshotResult')
    RestoreDBClusterToPointInTimeMessage = Shapes::StructureShape.new(name: 'RestoreDBClusterToPointInTimeMessage')
    RestoreDBClusterToPointInTimeResult = Shapes::StructureShape.new(name: 'RestoreDBClusterToPointInTimeResult')
    SNSInvalidTopicFault = Shapes::StructureShape.new(name: 'SNSInvalidTopicFault', error: {"code" => "SNSInvalidTopic", "httpStatusCode" => 400, "senderFault" => true})
    SNSNoAuthorizationFault = Shapes::StructureShape.new(name: 'SNSNoAuthorizationFault', error: {"code" => "SNSNoAuthorization", "httpStatusCode" => 400, "senderFault" => true})
    SNSTopicArnNotFoundFault = Shapes::StructureShape.new(name: 'SNSTopicArnNotFoundFault', error: {"code" => "SNSTopicArnNotFound", "httpStatusCode" => 404, "senderFault" => true})
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServerlessV2ScalingConfiguration = Shapes::StructureShape.new(name: 'ServerlessV2ScalingConfiguration')
    ServerlessV2ScalingConfigurationInfo = Shapes::StructureShape.new(name: 'ServerlessV2ScalingConfigurationInfo')
    SharedSnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'SharedSnapshotQuotaExceededFault', error: {"code" => "SharedSnapshotQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    SnapshotQuotaExceededFault = Shapes::StructureShape.new(name: 'SnapshotQuotaExceededFault', error: {"code" => "SnapshotQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    SourceIdsList = Shapes::ListShape.new(name: 'SourceIdsList')
    SourceNotFoundFault = Shapes::StructureShape.new(name: 'SourceNotFoundFault', error: {"code" => "SourceNotFound", "httpStatusCode" => 404, "senderFault" => true})
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartDBClusterMessage = Shapes::StructureShape.new(name: 'StartDBClusterMessage')
    StartDBClusterResult = Shapes::StructureShape.new(name: 'StartDBClusterResult')
    StopDBClusterMessage = Shapes::StructureShape.new(name: 'StopDBClusterMessage')
    StopDBClusterResult = Shapes::StructureShape.new(name: 'StopDBClusterResult')
    StorageQuotaExceededFault = Shapes::StructureShape.new(name: 'StorageQuotaExceededFault', error: {"code" => "StorageQuotaExceeded", "httpStatusCode" => 400, "senderFault" => true})
    StorageTypeNotSupportedFault = Shapes::StructureShape.new(name: 'StorageTypeNotSupportedFault', error: {"code" => "StorageTypeNotSupported", "httpStatusCode" => 400, "senderFault" => true})
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Subnet = Shapes::StructureShape.new(name: 'Subnet')
    SubnetAlreadyInUse = Shapes::StructureShape.new(name: 'SubnetAlreadyInUse', error: {"code" => "SubnetAlreadyInUse", "httpStatusCode" => 400, "senderFault" => true})
    SubnetIdentifierList = Shapes::ListShape.new(name: 'SubnetIdentifierList')
    SubnetList = Shapes::ListShape.new(name: 'SubnetList')
    SubscriptionAlreadyExistFault = Shapes::StructureShape.new(name: 'SubscriptionAlreadyExistFault', error: {"code" => "SubscriptionAlreadyExist", "httpStatusCode" => 400, "senderFault" => true})
    SubscriptionCategoryNotFoundFault = Shapes::StructureShape.new(name: 'SubscriptionCategoryNotFoundFault', error: {"code" => "SubscriptionCategoryNotFound", "httpStatusCode" => 404, "senderFault" => true})
    SubscriptionNotFoundFault = Shapes::StructureShape.new(name: 'SubscriptionNotFoundFault', error: {"code" => "SubscriptionNotFound", "httpStatusCode" => 404, "senderFault" => true})
    SupportedCharacterSetsList = Shapes::ListShape.new(name: 'SupportedCharacterSetsList')
    SupportedTimezonesList = Shapes::ListShape.new(name: 'SupportedTimezonesList')
    SwitchoverGlobalClusterMessage = Shapes::StructureShape.new(name: 'SwitchoverGlobalClusterMessage')
    SwitchoverGlobalClusterResult = Shapes::StructureShape.new(name: 'SwitchoverGlobalClusterResult')
    TStamp = Shapes::TimestampShape.new(name: 'TStamp')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagListMessage = Shapes::StructureShape.new(name: 'TagListMessage')
    Timezone = Shapes::StructureShape.new(name: 'Timezone')
    UpgradeTarget = Shapes::StructureShape.new(name: 'UpgradeTarget')
    ValidDBInstanceModificationsMessage = Shapes::StructureShape.new(name: 'ValidDBInstanceModificationsMessage')
    ValidStorageOptions = Shapes::StructureShape.new(name: 'ValidStorageOptions')
    ValidStorageOptionsList = Shapes::ListShape.new(name: 'ValidStorageOptionsList')
    ValidUpgradeTargetList = Shapes::ListShape.new(name: 'ValidUpgradeTargetList')
    VpcSecurityGroupIdList = Shapes::ListShape.new(name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Shapes::StructureShape.new(name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Shapes::ListShape.new(name: 'VpcSecurityGroupMembershipList')

    AddRoleToDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    AddRoleToDBClusterMessage.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RoleArn"))
    AddRoleToDBClusterMessage.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, location_name: "FeatureName"))
    AddRoleToDBClusterMessage.struct_class = Types::AddRoleToDBClusterMessage

    AddSourceIdentifierToSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    AddSourceIdentifierToSubscriptionMessage.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceIdentifier"))
    AddSourceIdentifierToSubscriptionMessage.struct_class = Types::AddSourceIdentifierToSubscriptionMessage

    AddSourceIdentifierToSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    AddSourceIdentifierToSubscriptionResult.struct_class = Types::AddSourceIdentifierToSubscriptionResult

    AddTagsToResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    AddTagsToResourceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    AddTagsToResourceMessage.struct_class = Types::AddTagsToResourceMessage

    ApplyPendingMaintenanceActionMessage.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceIdentifier"))
    ApplyPendingMaintenanceActionMessage.add_member(:apply_action, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ApplyAction"))
    ApplyPendingMaintenanceActionMessage.add_member(:opt_in_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OptInType"))
    ApplyPendingMaintenanceActionMessage.struct_class = Types::ApplyPendingMaintenanceActionMessage

    ApplyPendingMaintenanceActionResult.add_member(:resource_pending_maintenance_actions, Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, location_name: "ResourcePendingMaintenanceActions"))
    ApplyPendingMaintenanceActionResult.struct_class = Types::ApplyPendingMaintenanceActionResult

    AttributeValueList.member = Shapes::ShapeRef.new(shape: String, location_name: "AttributeValue")

    AuthorizationNotFoundFault.struct_class = Types::AuthorizationNotFoundFault

    AvailabilityZone.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AvailabilityZone.struct_class = Types::AvailabilityZone

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone")

    AvailabilityZones.member = Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone")

    CertificateNotFoundFault.struct_class = Types::CertificateNotFoundFault

    CharacterSet.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    CharacterSet.add_member(:character_set_description, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetDescription"))
    CharacterSet.struct_class = Types::CharacterSet

    CloudwatchLogsExportConfiguration.add_member(:enable_log_types, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableLogTypes"))
    CloudwatchLogsExportConfiguration.add_member(:disable_log_types, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "DisableLogTypes"))
    CloudwatchLogsExportConfiguration.struct_class = Types::CloudwatchLogsExportConfiguration

    ClusterPendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: "PendingCloudwatchLogsExports"))
    ClusterPendingModifiedValues.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    ClusterPendingModifiedValues.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "IAMDatabaseAuthenticationEnabled"))
    ClusterPendingModifiedValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ClusterPendingModifiedValues.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    ClusterPendingModifiedValues.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ClusterPendingModifiedValues.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ClusterPendingModifiedValues.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    ClusterPendingModifiedValues.struct_class = Types::ClusterPendingModifiedValues

    CopyDBClusterParameterGroupMessage.add_member(:source_db_cluster_parameter_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBClusterParameterGroupIdentifier"))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBClusterParameterGroupIdentifier"))
    CopyDBClusterParameterGroupMessage.add_member(:target_db_cluster_parameter_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBClusterParameterGroupDescription"))
    CopyDBClusterParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyDBClusterParameterGroupMessage.struct_class = Types::CopyDBClusterParameterGroupMessage

    CopyDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: "DBClusterParameterGroup"))
    CopyDBClusterParameterGroupResult.struct_class = Types::CopyDBClusterParameterGroupResult

    CopyDBClusterSnapshotMessage.add_member(:source_db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBClusterSnapshotIdentifier"))
    CopyDBClusterSnapshotMessage.add_member(:target_db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBClusterSnapshotIdentifier"))
    CopyDBClusterSnapshotMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CopyDBClusterSnapshotMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: String, location_name: "PreSignedUrl"))
    CopyDBClusterSnapshotMessage.add_member(:copy_tags, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTags"))
    CopyDBClusterSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyDBClusterSnapshotMessage.add_member(:source_region, Shapes::ShapeRef.new(shape: String, location_name: "SourceRegion"))
    CopyDBClusterSnapshotMessage.struct_class = Types::CopyDBClusterSnapshotMessage

    CopyDBClusterSnapshotResult.add_member(:db_cluster_snapshot, Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot"))
    CopyDBClusterSnapshotResult.struct_class = Types::CopyDBClusterSnapshotResult

    CopyDBParameterGroupMessage.add_member(:source_db_parameter_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBParameterGroupIdentifier"))
    CopyDBParameterGroupMessage.add_member(:target_db_parameter_group_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBParameterGroupIdentifier"))
    CopyDBParameterGroupMessage.add_member(:target_db_parameter_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDBParameterGroupDescription"))
    CopyDBParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CopyDBParameterGroupMessage.struct_class = Types::CopyDBParameterGroupMessage

    CopyDBParameterGroupResult.add_member(:db_parameter_group, Shapes::ShapeRef.new(shape: DBParameterGroup, location_name: "DBParameterGroup"))
    CopyDBParameterGroupResult.struct_class = Types::CopyDBParameterGroupResult

    CreateDBClusterEndpointMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterEndpointIdentifier"))
    CreateDBClusterEndpointMessage.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EndpointType"))
    CreateDBClusterEndpointMessage.add_member(:static_members, Shapes::ShapeRef.new(shape: StringList, location_name: "StaticMembers"))
    CreateDBClusterEndpointMessage.add_member(:excluded_members, Shapes::ShapeRef.new(shape: StringList, location_name: "ExcludedMembers"))
    CreateDBClusterEndpointMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterEndpointMessage.struct_class = Types::CreateDBClusterEndpointMessage

    CreateDBClusterEndpointOutput.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointIdentifier"))
    CreateDBClusterEndpointOutput.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    CreateDBClusterEndpointOutput.add_member(:db_cluster_endpoint_resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointResourceIdentifier"))
    CreateDBClusterEndpointOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    CreateDBClusterEndpointOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    CreateDBClusterEndpointOutput.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "EndpointType"))
    CreateDBClusterEndpointOutput.add_member(:custom_endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "CustomEndpointType"))
    CreateDBClusterEndpointOutput.add_member(:static_members, Shapes::ShapeRef.new(shape: StringList, location_name: "StaticMembers"))
    CreateDBClusterEndpointOutput.add_member(:excluded_members, Shapes::ShapeRef.new(shape: StringList, location_name: "ExcludedMembers"))
    CreateDBClusterEndpointOutput.add_member(:db_cluster_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointArn"))
    CreateDBClusterEndpointOutput.struct_class = Types::CreateDBClusterEndpointOutput

    CreateDBClusterMessage.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    CreateDBClusterMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    CreateDBClusterMessage.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    CreateDBClusterMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    CreateDBClusterMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    CreateDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBClusterMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    CreateDBClusterMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateDBClusterMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    CreateDBClusterMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    CreateDBClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateDBClusterMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateDBClusterMessage.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    CreateDBClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    CreateDBClusterMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    CreateDBClusterMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    CreateDBClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateDBClusterMessage.add_member(:replication_source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSourceIdentifier"))
    CreateDBClusterMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterMessage.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    CreateDBClusterMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateDBClusterMessage.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: String, location_name: "PreSignedUrl"))
    CreateDBClusterMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    CreateDBClusterMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    CreateDBClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateDBClusterMessage.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: "ServerlessV2ScalingConfiguration"))
    CreateDBClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: "GlobalClusterIdentifier"))
    CreateDBClusterMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    CreateDBClusterMessage.add_member(:source_region, Shapes::ShapeRef.new(shape: String, location_name: "SourceRegion"))
    CreateDBClusterMessage.struct_class = Types::CreateDBClusterMessage

    CreateDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    CreateDBClusterParameterGroupMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupFamily"))
    CreateDBClusterParameterGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateDBClusterParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterParameterGroupMessage.struct_class = Types::CreateDBClusterParameterGroupMessage

    CreateDBClusterParameterGroupResult.add_member(:db_cluster_parameter_group, Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: "DBClusterParameterGroup"))
    CreateDBClusterParameterGroupResult.struct_class = Types::CreateDBClusterParameterGroupResult

    CreateDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    CreateDBClusterResult.struct_class = Types::CreateDBClusterResult

    CreateDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    CreateDBClusterSnapshotMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBClusterSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBClusterSnapshotMessage.struct_class = Types::CreateDBClusterSnapshotMessage

    CreateDBClusterSnapshotResult.add_member(:db_cluster_snapshot, Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot"))
    CreateDBClusterSnapshotResult.struct_class = Types::CreateDBClusterSnapshotResult

    CreateDBInstanceMessage.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    CreateDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    CreateDBInstanceMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    CreateDBInstanceMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceClass"))
    CreateDBInstanceMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    CreateDBInstanceMessage.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    CreateDBInstanceMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    CreateDBInstanceMessage.add_member(:db_security_groups, Shapes::ShapeRef.new(shape: DBSecurityGroupNameList, location_name: "DBSecurityGroups"))
    CreateDBInstanceMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    CreateDBInstanceMessage.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateDBInstanceMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    CreateDBInstanceMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    CreateDBInstanceMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    CreateDBInstanceMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    CreateDBInstanceMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    CreateDBInstanceMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    CreateDBInstanceMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    CreateDBInstanceMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateDBInstanceMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    CreateDBInstanceMessage.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    CreateDBInstanceMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    CreateDBInstanceMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    CreateDBInstanceMessage.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    CreateDBInstanceMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, deprecated: true, location_name: "PubliclyAccessible"))
    CreateDBInstanceMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBInstanceMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    CreateDBInstanceMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    CreateDBInstanceMessage.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    CreateDBInstanceMessage.add_member(:tde_credential_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "TdeCredentialPassword"))
    CreateDBInstanceMessage.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    CreateDBInstanceMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    CreateDBInstanceMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    CreateDBInstanceMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    CreateDBInstanceMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    CreateDBInstanceMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    CreateDBInstanceMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    CreateDBInstanceMessage.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    CreateDBInstanceMessage.add_member(:timezone, Shapes::ShapeRef.new(shape: String, location_name: "Timezone"))
    CreateDBInstanceMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    CreateDBInstanceMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    CreateDBInstanceMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    CreateDBInstanceMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    CreateDBInstanceMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateDBInstanceMessage.struct_class = Types::CreateDBInstanceMessage

    CreateDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    CreateDBInstanceResult.struct_class = Types::CreateDBInstanceResult

    CreateDBParameterGroupMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    CreateDBParameterGroupMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupFamily"))
    CreateDBParameterGroupMessage.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    CreateDBParameterGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBParameterGroupMessage.struct_class = Types::CreateDBParameterGroupMessage

    CreateDBParameterGroupResult.add_member(:db_parameter_group, Shapes::ShapeRef.new(shape: DBParameterGroup, location_name: "DBParameterGroup"))
    CreateDBParameterGroupResult.struct_class = Types::CreateDBParameterGroupResult

    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupName"))
    CreateDBSubnetGroupMessage.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupDescription"))
    CreateDBSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    CreateDBSubnetGroupMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDBSubnetGroupMessage.struct_class = Types::CreateDBSubnetGroupMessage

    CreateDBSubnetGroupResult.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup"))
    CreateDBSubnetGroupResult.struct_class = Types::CreateDBSubnetGroupResult

    CreateEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    CreateEventSubscriptionMessage.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnsTopicArn"))
    CreateEventSubscriptionMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    CreateEventSubscriptionMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    CreateEventSubscriptionMessage.add_member(:source_ids, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIds"))
    CreateEventSubscriptionMessage.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    CreateEventSubscriptionMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateEventSubscriptionMessage.struct_class = Types::CreateEventSubscriptionMessage

    CreateEventSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    CreateEventSubscriptionResult.struct_class = Types::CreateEventSubscriptionResult

    CreateGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    CreateGlobalClusterMessage.add_member(:source_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBClusterIdentifier"))
    CreateGlobalClusterMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    CreateGlobalClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateGlobalClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    CreateGlobalClusterMessage.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    CreateGlobalClusterMessage.struct_class = Types::CreateGlobalClusterMessage

    CreateGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    CreateGlobalClusterResult.struct_class = Types::CreateGlobalClusterResult

    DBCluster.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    DBCluster.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    DBCluster.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    DBCluster.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    DBCluster.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DBCluster.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBCluster.add_member(:db_cluster_parameter_group, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroup"))
    DBCluster.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroup"))
    DBCluster.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBCluster.add_member(:percent_progress, Shapes::ShapeRef.new(shape: String, location_name: "PercentProgress"))
    DBCluster.add_member(:earliest_restorable_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EarliestRestorableTime"))
    DBCluster.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBCluster.add_member(:reader_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "ReaderEndpoint"))
    DBCluster.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ"))
    DBCluster.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBCluster.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBCluster.add_member(:latest_restorable_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LatestRestorableTime"))
    DBCluster.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    DBCluster.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBCluster.add_member(:db_cluster_option_group_memberships, Shapes::ShapeRef.new(shape: DBClusterOptionGroupMemberships, location_name: "DBClusterOptionGroupMemberships"))
    DBCluster.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    DBCluster.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    DBCluster.add_member(:replication_source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReplicationSourceIdentifier"))
    DBCluster.add_member(:read_replica_identifiers, Shapes::ShapeRef.new(shape: ReadReplicaIdentifierList, location_name: "ReadReplicaIdentifiers"))
    DBCluster.add_member(:db_cluster_members, Shapes::ShapeRef.new(shape: DBClusterMemberList, location_name: "DBClusterMembers"))
    DBCluster.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    DBCluster.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "HostedZoneId"))
    DBCluster.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    DBCluster.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBCluster.add_member(:db_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbClusterResourceId"))
    DBCluster.add_member(:db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterArn"))
    DBCluster.add_member(:associated_roles, Shapes::ShapeRef.new(shape: DBClusterRoles, location_name: "AssociatedRoles"))
    DBCluster.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMDatabaseAuthenticationEnabled"))
    DBCluster.add_member(:clone_group_id, Shapes::ShapeRef.new(shape: String, location_name: "CloneGroupId"))
    DBCluster.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    DBCluster.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    DBCluster.add_member(:enabled_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnabledCloudwatchLogsExports"))
    DBCluster.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: ClusterPendingModifiedValues, location_name: "PendingModifiedValues"))
    DBCluster.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    DBCluster.add_member(:cross_account_clone, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CrossAccountClone"))
    DBCluster.add_member(:automatic_restart_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "AutomaticRestartTime"))
    DBCluster.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfigurationInfo, location_name: "ServerlessV2ScalingConfiguration"))
    DBCluster.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: "GlobalClusterIdentifier"))
    DBCluster.add_member(:io_optimized_next_allowed_modification_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "IOOptimizedNextAllowedModificationTime"))
    DBCluster.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    DBCluster.struct_class = Types::DBCluster

    DBClusterAlreadyExistsFault.struct_class = Types::DBClusterAlreadyExistsFault

    DBClusterEndpoint.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointIdentifier"))
    DBClusterEndpoint.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBClusterEndpoint.add_member(:db_cluster_endpoint_resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointResourceIdentifier"))
    DBClusterEndpoint.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DBClusterEndpoint.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterEndpoint.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "EndpointType"))
    DBClusterEndpoint.add_member(:custom_endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "CustomEndpointType"))
    DBClusterEndpoint.add_member(:static_members, Shapes::ShapeRef.new(shape: StringList, location_name: "StaticMembers"))
    DBClusterEndpoint.add_member(:excluded_members, Shapes::ShapeRef.new(shape: StringList, location_name: "ExcludedMembers"))
    DBClusterEndpoint.add_member(:db_cluster_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointArn"))
    DBClusterEndpoint.struct_class = Types::DBClusterEndpoint

    DBClusterEndpointAlreadyExistsFault.struct_class = Types::DBClusterEndpointAlreadyExistsFault

    DBClusterEndpointList.member = Shapes::ShapeRef.new(shape: DBClusterEndpoint, location_name: "DBClusterEndpointList")

    DBClusterEndpointMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterEndpointMessage.add_member(:db_cluster_endpoints, Shapes::ShapeRef.new(shape: DBClusterEndpointList, location_name: "DBClusterEndpoints"))
    DBClusterEndpointMessage.struct_class = Types::DBClusterEndpointMessage

    DBClusterEndpointNotFoundFault.struct_class = Types::DBClusterEndpointNotFoundFault

    DBClusterEndpointQuotaExceededFault.struct_class = Types::DBClusterEndpointQuotaExceededFault

    DBClusterList.member = Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster")

    DBClusterMember.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DBClusterMember.add_member(:is_cluster_writer, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsClusterWriter"))
    DBClusterMember.add_member(:db_cluster_parameter_group_status, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupStatus"))
    DBClusterMember.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    DBClusterMember.struct_class = Types::DBClusterMember

    DBClusterMemberList.member = Shapes::ShapeRef.new(shape: DBClusterMember, location_name: "DBClusterMember")

    DBClusterMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterMessage.add_member(:db_clusters, Shapes::ShapeRef.new(shape: DBClusterList, location_name: "DBClusters"))
    DBClusterMessage.struct_class = Types::DBClusterMessage

    DBClusterNotFoundFault.struct_class = Types::DBClusterNotFoundFault

    DBClusterOptionGroupMemberships.member = Shapes::ShapeRef.new(shape: DBClusterOptionGroupStatus, location_name: "DBClusterOptionGroup")

    DBClusterOptionGroupStatus.add_member(:db_cluster_option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterOptionGroupName"))
    DBClusterOptionGroupStatus.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterOptionGroupStatus.struct_class = Types::DBClusterOptionGroupStatus

    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    DBClusterParameterGroup.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DBClusterParameterGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    DBClusterParameterGroup.add_member(:db_cluster_parameter_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupArn"))
    DBClusterParameterGroup.struct_class = Types::DBClusterParameterGroup

    DBClusterParameterGroupDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    DBClusterParameterGroupDetails.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterParameterGroupDetails.struct_class = Types::DBClusterParameterGroupDetails

    DBClusterParameterGroupList.member = Shapes::ShapeRef.new(shape: DBClusterParameterGroup, location_name: "DBClusterParameterGroup")

    DBClusterParameterGroupNameMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    DBClusterParameterGroupNameMessage.struct_class = Types::DBClusterParameterGroupNameMessage

    DBClusterParameterGroupNotFoundFault.struct_class = Types::DBClusterParameterGroupNotFoundFault

    DBClusterParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_groups, Shapes::ShapeRef.new(shape: DBClusterParameterGroupList, location_name: "DBClusterParameterGroups"))
    DBClusterParameterGroupsMessage.struct_class = Types::DBClusterParameterGroupsMessage

    DBClusterQuotaExceededFault.struct_class = Types::DBClusterQuotaExceededFault

    DBClusterRole.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "RoleArn"))
    DBClusterRole.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterRole.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, location_name: "FeatureName"))
    DBClusterRole.struct_class = Types::DBClusterRole

    DBClusterRoleAlreadyExistsFault.struct_class = Types::DBClusterRoleAlreadyExistsFault

    DBClusterRoleNotFoundFault.struct_class = Types::DBClusterRoleNotFoundFault

    DBClusterRoleQuotaExceededFault.struct_class = Types::DBClusterRoleQuotaExceededFault

    DBClusterRoles.member = Shapes::ShapeRef.new(shape: DBClusterRole, location_name: "DBClusterRole")

    DBClusterSnapshot.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotIdentifier"))
    DBClusterSnapshot.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBClusterSnapshot.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "SnapshotCreateTime"))
    DBClusterSnapshot.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBClusterSnapshot.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    DBClusterSnapshot.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBClusterSnapshot.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    DBClusterSnapshot.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBClusterSnapshot.add_member(:cluster_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "ClusterCreateTime"))
    DBClusterSnapshot.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBClusterSnapshot.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBClusterSnapshot.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DBClusterSnapshot.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DBClusterSnapshot.add_member(:percent_progress, Shapes::ShapeRef.new(shape: Integer, location_name: "PercentProgress"))
    DBClusterSnapshot.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    DBClusterSnapshot.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBClusterSnapshot.add_member(:db_cluster_snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotArn"))
    DBClusterSnapshot.add_member(:source_db_cluster_snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceDBClusterSnapshotArn"))
    DBClusterSnapshot.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMDatabaseAuthenticationEnabled"))
    DBClusterSnapshot.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    DBClusterSnapshot.struct_class = Types::DBClusterSnapshot

    DBClusterSnapshotAlreadyExistsFault.struct_class = Types::DBClusterSnapshotAlreadyExistsFault

    DBClusterSnapshotAttribute.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, location_name: "AttributeName"))
    DBClusterSnapshotAttribute.add_member(:attribute_values, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "AttributeValues"))
    DBClusterSnapshotAttribute.struct_class = Types::DBClusterSnapshotAttribute

    DBClusterSnapshotAttributeList.member = Shapes::ShapeRef.new(shape: DBClusterSnapshotAttribute, location_name: "DBClusterSnapshotAttribute")

    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotIdentifier"))
    DBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes, Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributeList, location_name: "DBClusterSnapshotAttributes"))
    DBClusterSnapshotAttributesResult.struct_class = Types::DBClusterSnapshotAttributesResult

    DBClusterSnapshotList.member = Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot")

    DBClusterSnapshotMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBClusterSnapshotMessage.add_member(:db_cluster_snapshots, Shapes::ShapeRef.new(shape: DBClusterSnapshotList, location_name: "DBClusterSnapshots"))
    DBClusterSnapshotMessage.struct_class = Types::DBClusterSnapshotMessage

    DBClusterSnapshotNotFoundFault.struct_class = Types::DBClusterSnapshotNotFoundFault

    DBEngineVersion.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBEngineVersion.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBEngineVersion.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DBEngineVersion.add_member(:db_engine_description, Shapes::ShapeRef.new(shape: String, location_name: "DBEngineDescription"))
    DBEngineVersion.add_member(:db_engine_version_description, Shapes::ShapeRef.new(shape: String, location_name: "DBEngineVersionDescription"))
    DBEngineVersion.add_member(:default_character_set, Shapes::ShapeRef.new(shape: CharacterSet, location_name: "DefaultCharacterSet"))
    DBEngineVersion.add_member(:supported_character_sets, Shapes::ShapeRef.new(shape: SupportedCharacterSetsList, location_name: "SupportedCharacterSets"))
    DBEngineVersion.add_member(:valid_upgrade_target, Shapes::ShapeRef.new(shape: ValidUpgradeTargetList, location_name: "ValidUpgradeTarget"))
    DBEngineVersion.add_member(:supported_timezones, Shapes::ShapeRef.new(shape: SupportedTimezonesList, location_name: "SupportedTimezones"))
    DBEngineVersion.add_member(:exportable_log_types, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "ExportableLogTypes"))
    DBEngineVersion.add_member(:supports_log_exports_to_cloudwatch_logs, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsLogExportsToCloudwatchLogs"))
    DBEngineVersion.add_member(:supports_read_replica, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsReadReplica"))
    DBEngineVersion.add_member(:supports_global_databases, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsGlobalDatabases"))
    DBEngineVersion.struct_class = Types::DBEngineVersion

    DBEngineVersionList.member = Shapes::ShapeRef.new(shape: DBEngineVersion, location_name: "DBEngineVersion")

    DBEngineVersionMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBEngineVersionMessage.add_member(:db_engine_versions, Shapes::ShapeRef.new(shape: DBEngineVersionList, location_name: "DBEngineVersions"))
    DBEngineVersionMessage.struct_class = Types::DBEngineVersionMessage

    DBInstance.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DBInstance.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    DBInstance.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DBInstance.add_member(:db_instance_status, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceStatus"))
    DBInstance.add_member(:master_username, Shapes::ShapeRef.new(shape: String, location_name: "MasterUsername"))
    DBInstance.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "DBName"))
    DBInstance.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    DBInstance.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: Integer, location_name: "AllocatedStorage"))
    DBInstance.add_member(:instance_create_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "InstanceCreateTime"))
    DBInstance.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    DBInstance.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "BackupRetentionPeriod"))
    DBInstance.add_member(:db_security_groups, Shapes::ShapeRef.new(shape: DBSecurityGroupMembershipList, location_name: "DBSecurityGroups"))
    DBInstance.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "VpcSecurityGroups"))
    DBInstance.add_member(:db_parameter_groups, Shapes::ShapeRef.new(shape: DBParameterGroupStatusList, location_name: "DBParameterGroups"))
    DBInstance.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    DBInstance.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup"))
    DBInstance.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    DBInstance.add_member(:pending_modified_values, Shapes::ShapeRef.new(shape: PendingModifiedValues, location_name: "PendingModifiedValues"))
    DBInstance.add_member(:latest_restorable_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "LatestRestorableTime"))
    DBInstance.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZ"))
    DBInstance.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DBInstance.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoMinorVersionUpgrade"))
    DBInstance.add_member(:read_replica_source_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaSourceDBInstanceIdentifier"))
    DBInstance.add_member(:read_replica_db_instance_identifiers, Shapes::ShapeRef.new(shape: ReadReplicaDBInstanceIdentifierList, location_name: "ReadReplicaDBInstanceIdentifiers"))
    DBInstance.add_member(:read_replica_db_cluster_identifiers, Shapes::ShapeRef.new(shape: ReadReplicaDBClusterIdentifierList, location_name: "ReadReplicaDBClusterIdentifiers"))
    DBInstance.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DBInstance.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    DBInstance.add_member(:option_group_memberships, Shapes::ShapeRef.new(shape: OptionGroupMembershipList, location_name: "OptionGroupMemberships"))
    DBInstance.add_member(:character_set_name, Shapes::ShapeRef.new(shape: String, location_name: "CharacterSetName"))
    DBInstance.add_member(:secondary_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "SecondaryAvailabilityZone"))
    DBInstance.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, deprecated: true, location_name: "PubliclyAccessible"))
    DBInstance.add_member(:status_infos, Shapes::ShapeRef.new(shape: DBInstanceStatusInfoList, location_name: "StatusInfos"))
    DBInstance.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    DBInstance.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    DBInstance.add_member(:db_instance_port, Shapes::ShapeRef.new(shape: Integer, location_name: "DbInstancePort"))
    DBInstance.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DBInstance.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "StorageEncrypted"))
    DBInstance.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    DBInstance.add_member(:dbi_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "DbiResourceId"))
    DBInstance.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    DBInstance.add_member(:domain_memberships, Shapes::ShapeRef.new(shape: DomainMembershipList, location_name: "DomainMemberships"))
    DBInstance.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "CopyTagsToSnapshot"))
    DBInstance.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    DBInstance.add_member(:enhanced_monitoring_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "EnhancedMonitoringResourceArn"))
    DBInstance.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    DBInstance.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    DBInstance.add_member(:db_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceArn"))
    DBInstance.add_member(:timezone, Shapes::ShapeRef.new(shape: String, location_name: "Timezone"))
    DBInstance.add_member(:iam_database_authentication_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMDatabaseAuthenticationEnabled"))
    DBInstance.add_member(:performance_insights_enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "PerformanceInsightsEnabled"))
    DBInstance.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    DBInstance.add_member(:enabled_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnabledCloudwatchLogsExports"))
    DBInstance.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    DBInstance.struct_class = Types::DBInstance

    DBInstanceAlreadyExistsFault.struct_class = Types::DBInstanceAlreadyExistsFault

    DBInstanceList.member = Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance")

    DBInstanceMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBInstanceMessage.add_member(:db_instances, Shapes::ShapeRef.new(shape: DBInstanceList, location_name: "DBInstances"))
    DBInstanceMessage.struct_class = Types::DBInstanceMessage

    DBInstanceNotFoundFault.struct_class = Types::DBInstanceNotFoundFault

    DBInstanceStatusInfo.add_member(:status_type, Shapes::ShapeRef.new(shape: String, location_name: "StatusType"))
    DBInstanceStatusInfo.add_member(:normal, Shapes::ShapeRef.new(shape: Boolean, location_name: "Normal"))
    DBInstanceStatusInfo.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBInstanceStatusInfo.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DBInstanceStatusInfo.struct_class = Types::DBInstanceStatusInfo

    DBInstanceStatusInfoList.member = Shapes::ShapeRef.new(shape: DBInstanceStatusInfo, location_name: "DBInstanceStatusInfo")

    DBParameterGroup.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    DBParameterGroup.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DBParameterGroup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    DBParameterGroup.add_member(:db_parameter_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupArn"))
    DBParameterGroup.struct_class = Types::DBParameterGroup

    DBParameterGroupAlreadyExistsFault.struct_class = Types::DBParameterGroupAlreadyExistsFault

    DBParameterGroupDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    DBParameterGroupDetails.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBParameterGroupDetails.struct_class = Types::DBParameterGroupDetails

    DBParameterGroupList.member = Shapes::ShapeRef.new(shape: DBParameterGroup, location_name: "DBParameterGroup")

    DBParameterGroupNameMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    DBParameterGroupNameMessage.struct_class = Types::DBParameterGroupNameMessage

    DBParameterGroupNotFoundFault.struct_class = Types::DBParameterGroupNotFoundFault

    DBParameterGroupQuotaExceededFault.struct_class = Types::DBParameterGroupQuotaExceededFault

    DBParameterGroupStatus.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    DBParameterGroupStatus.add_member(:parameter_apply_status, Shapes::ShapeRef.new(shape: String, location_name: "ParameterApplyStatus"))
    DBParameterGroupStatus.struct_class = Types::DBParameterGroupStatus

    DBParameterGroupStatusList.member = Shapes::ShapeRef.new(shape: DBParameterGroupStatus, location_name: "DBParameterGroup")

    DBParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBParameterGroupsMessage.add_member(:db_parameter_groups, Shapes::ShapeRef.new(shape: DBParameterGroupList, location_name: "DBParameterGroups"))
    DBParameterGroupsMessage.struct_class = Types::DBParameterGroupsMessage

    DBSecurityGroupMembership.add_member(:db_security_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSecurityGroupName"))
    DBSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DBSecurityGroupMembership.struct_class = Types::DBSecurityGroupMembership

    DBSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: DBSecurityGroupMembership, location_name: "DBSecurityGroup")

    DBSecurityGroupNameList.member = Shapes::ShapeRef.new(shape: String, location_name: "DBSecurityGroupName")

    DBSecurityGroupNotFoundFault.struct_class = Types::DBSecurityGroupNotFoundFault

    DBSnapshotAlreadyExistsFault.struct_class = Types::DBSnapshotAlreadyExistsFault

    DBSnapshotNotFoundFault.struct_class = Types::DBSnapshotNotFoundFault

    DBSubnetGroup.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    DBSubnetGroup.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupDescription"))
    DBSubnetGroup.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    DBSubnetGroup.add_member(:subnet_group_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetGroupStatus"))
    DBSubnetGroup.add_member(:subnets, Shapes::ShapeRef.new(shape: SubnetList, location_name: "Subnets"))
    DBSubnetGroup.add_member(:db_subnet_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupArn"))
    DBSubnetGroup.struct_class = Types::DBSubnetGroup

    DBSubnetGroupAlreadyExistsFault.struct_class = Types::DBSubnetGroupAlreadyExistsFault

    DBSubnetGroupDoesNotCoverEnoughAZs.struct_class = Types::DBSubnetGroupDoesNotCoverEnoughAZs

    DBSubnetGroupMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DBSubnetGroupMessage.add_member(:db_subnet_groups, Shapes::ShapeRef.new(shape: DBSubnetGroups, location_name: "DBSubnetGroups"))
    DBSubnetGroupMessage.struct_class = Types::DBSubnetGroupMessage

    DBSubnetGroupNotFoundFault.struct_class = Types::DBSubnetGroupNotFoundFault

    DBSubnetGroupQuotaExceededFault.struct_class = Types::DBSubnetGroupQuotaExceededFault

    DBSubnetGroups.member = Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup")

    DBSubnetQuotaExceededFault.struct_class = Types::DBSubnetQuotaExceededFault

    DBUpgradeDependencyFailureFault.struct_class = Types::DBUpgradeDependencyFailureFault

    DeleteDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterEndpointIdentifier"))
    DeleteDBClusterEndpointMessage.struct_class = Types::DeleteDBClusterEndpointMessage

    DeleteDBClusterEndpointOutput.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointIdentifier"))
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_endpoint_resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointResourceIdentifier"))
    DeleteDBClusterEndpointOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    DeleteDBClusterEndpointOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DeleteDBClusterEndpointOutput.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "EndpointType"))
    DeleteDBClusterEndpointOutput.add_member(:custom_endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "CustomEndpointType"))
    DeleteDBClusterEndpointOutput.add_member(:static_members, Shapes::ShapeRef.new(shape: StringList, location_name: "StaticMembers"))
    DeleteDBClusterEndpointOutput.add_member(:excluded_members, Shapes::ShapeRef.new(shape: StringList, location_name: "ExcludedMembers"))
    DeleteDBClusterEndpointOutput.add_member(:db_cluster_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointArn"))
    DeleteDBClusterEndpointOutput.struct_class = Types::DeleteDBClusterEndpointOutput

    DeleteDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    DeleteDBClusterMessage.add_member(:skip_final_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipFinalSnapshot"))
    DeleteDBClusterMessage.add_member(:final_db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalDBSnapshotIdentifier"))
    DeleteDBClusterMessage.struct_class = Types::DeleteDBClusterMessage

    DeleteDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    DeleteDBClusterParameterGroupMessage.struct_class = Types::DeleteDBClusterParameterGroupMessage

    DeleteDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    DeleteDBClusterResult.struct_class = Types::DeleteDBClusterResult

    DeleteDBClusterSnapshotMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    DeleteDBClusterSnapshotMessage.struct_class = Types::DeleteDBClusterSnapshotMessage

    DeleteDBClusterSnapshotResult.add_member(:db_cluster_snapshot, Shapes::ShapeRef.new(shape: DBClusterSnapshot, location_name: "DBClusterSnapshot"))
    DeleteDBClusterSnapshotResult.struct_class = Types::DeleteDBClusterSnapshotResult

    DeleteDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    DeleteDBInstanceMessage.add_member(:skip_final_snapshot, Shapes::ShapeRef.new(shape: Boolean, location_name: "SkipFinalSnapshot"))
    DeleteDBInstanceMessage.add_member(:final_db_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "FinalDBSnapshotIdentifier"))
    DeleteDBInstanceMessage.struct_class = Types::DeleteDBInstanceMessage

    DeleteDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    DeleteDBInstanceResult.struct_class = Types::DeleteDBInstanceResult

    DeleteDBParameterGroupMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    DeleteDBParameterGroupMessage.struct_class = Types::DeleteDBParameterGroupMessage

    DeleteDBSubnetGroupMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupName"))
    DeleteDBSubnetGroupMessage.struct_class = Types::DeleteDBSubnetGroupMessage

    DeleteEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    DeleteEventSubscriptionMessage.struct_class = Types::DeleteEventSubscriptionMessage

    DeleteEventSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    DeleteEventSubscriptionResult.struct_class = Types::DeleteEventSubscriptionResult

    DeleteGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    DeleteGlobalClusterMessage.struct_class = Types::DeleteGlobalClusterMessage

    DeleteGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    DeleteGlobalClusterResult.struct_class = Types::DeleteGlobalClusterResult

    DescribeDBClusterEndpointsMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DescribeDBClusterEndpointsMessage.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointIdentifier"))
    DescribeDBClusterEndpointsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterEndpointsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterEndpointsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterEndpointsMessage.struct_class = Types::DescribeDBClusterEndpointsMessage

    DescribeDBClusterParameterGroupsMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    DescribeDBClusterParameterGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterParameterGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterParameterGroupsMessage.struct_class = Types::DescribeDBClusterParameterGroupsMessage

    DescribeDBClusterParametersMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    DescribeDBClusterParametersMessage.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    DescribeDBClusterParametersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterParametersMessage.struct_class = Types::DescribeDBClusterParametersMessage

    DescribeDBClusterSnapshotAttributesMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    DescribeDBClusterSnapshotAttributesMessage.struct_class = Types::DescribeDBClusterSnapshotAttributesMessage

    DescribeDBClusterSnapshotAttributesResult.add_member(:db_cluster_snapshot_attributes_result, Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributesResult, location_name: "DBClusterSnapshotAttributesResult"))
    DescribeDBClusterSnapshotAttributesResult.struct_class = Types::DescribeDBClusterSnapshotAttributesResult

    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DescribeDBClusterSnapshotsMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterSnapshotIdentifier"))
    DescribeDBClusterSnapshotsMessage.add_member(:snapshot_type, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotType"))
    DescribeDBClusterSnapshotsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClusterSnapshotsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClusterSnapshotsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClusterSnapshotsMessage.add_member(:include_shared, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeShared"))
    DescribeDBClusterSnapshotsMessage.add_member(:include_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludePublic"))
    DescribeDBClusterSnapshotsMessage.struct_class = Types::DescribeDBClusterSnapshotsMessage

    DescribeDBClustersMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    DescribeDBClustersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBClustersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBClustersMessage.struct_class = Types::DescribeDBClustersMessage

    DescribeDBEngineVersionsMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    DescribeDBEngineVersionsMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DescribeDBEngineVersionsMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    DescribeDBEngineVersionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBEngineVersionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBEngineVersionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBEngineVersionsMessage.add_member(:default_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "DefaultOnly"))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_character_sets, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ListSupportedCharacterSets"))
    DescribeDBEngineVersionsMessage.add_member(:list_supported_timezones, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ListSupportedTimezones"))
    DescribeDBEngineVersionsMessage.struct_class = Types::DescribeDBEngineVersionsMessage

    DescribeDBInstancesMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    DescribeDBInstancesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBInstancesMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBInstancesMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBInstancesMessage.struct_class = Types::DescribeDBInstancesMessage

    DescribeDBParameterGroupsMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    DescribeDBParameterGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBParameterGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBParameterGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBParameterGroupsMessage.struct_class = Types::DescribeDBParameterGroupsMessage

    DescribeDBParametersMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    DescribeDBParametersMessage.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    DescribeDBParametersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBParametersMessage.struct_class = Types::DescribeDBParametersMessage

    DescribeDBSubnetGroupsMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    DescribeDBSubnetGroupsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeDBSubnetGroupsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeDBSubnetGroupsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeDBSubnetGroupsMessage.struct_class = Types::DescribeDBSubnetGroupsMessage

    DescribeEngineDefaultClusterParametersMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupFamily"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEngineDefaultClusterParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEngineDefaultClusterParametersMessage.struct_class = Types::DescribeEngineDefaultClusterParametersMessage

    DescribeEngineDefaultClusterParametersResult.add_member(:engine_defaults, Shapes::ShapeRef.new(shape: EngineDefaults, location_name: "EngineDefaults"))
    DescribeEngineDefaultClusterParametersResult.struct_class = Types::DescribeEngineDefaultClusterParametersResult

    DescribeEngineDefaultParametersMessage.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupFamily"))
    DescribeEngineDefaultParametersMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEngineDefaultParametersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEngineDefaultParametersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEngineDefaultParametersMessage.struct_class = Types::DescribeEngineDefaultParametersMessage

    DescribeEngineDefaultParametersResult.add_member(:engine_defaults, Shapes::ShapeRef.new(shape: EngineDefaults, location_name: "EngineDefaults"))
    DescribeEngineDefaultParametersResult.struct_class = Types::DescribeEngineDefaultParametersResult

    DescribeEventCategoriesMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    DescribeEventCategoriesMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventCategoriesMessage.struct_class = Types::DescribeEventCategoriesMessage

    DescribeEventSubscriptionsMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionName"))
    DescribeEventSubscriptionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventSubscriptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventSubscriptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventSubscriptionsMessage.struct_class = Types::DescribeEventSubscriptionsMessage

    DescribeEventsMessage.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    DescribeEventsMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    DescribeEventsMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "EndTime"))
    DescribeEventsMessage.add_member(:duration, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Duration"))
    DescribeEventsMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    DescribeEventsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeEventsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeEventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeEventsMessage.struct_class = Types::DescribeEventsMessage

    DescribeGlobalClustersMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: "GlobalClusterIdentifier"))
    DescribeGlobalClustersMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeGlobalClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeGlobalClustersMessage.struct_class = Types::DescribeGlobalClustersMessage

    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:vpc, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Vpc"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribeOrderableDBInstanceOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribeOrderableDBInstanceOptionsMessage.struct_class = Types::DescribeOrderableDBInstanceOptionsMessage

    DescribePendingMaintenanceActionsMessage.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    DescribePendingMaintenanceActionsMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribePendingMaintenanceActionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    DescribePendingMaintenanceActionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxRecords"))
    DescribePendingMaintenanceActionsMessage.struct_class = Types::DescribePendingMaintenanceActionsMessage

    DescribeValidDBInstanceModificationsMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    DescribeValidDBInstanceModificationsMessage.struct_class = Types::DescribeValidDBInstanceModificationsMessage

    DescribeValidDBInstanceModificationsResult.add_member(:valid_db_instance_modifications_message, Shapes::ShapeRef.new(shape: ValidDBInstanceModificationsMessage, location_name: "ValidDBInstanceModificationsMessage"))
    DescribeValidDBInstanceModificationsResult.struct_class = Types::DescribeValidDBInstanceModificationsResult

    DomainMembership.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    DomainMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    DomainMembership.add_member(:fqdn, Shapes::ShapeRef.new(shape: String, location_name: "FQDN"))
    DomainMembership.add_member(:iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "IAMRoleName"))
    DomainMembership.struct_class = Types::DomainMembership

    DomainMembershipList.member = Shapes::ShapeRef.new(shape: DomainMembership, location_name: "DomainMembership")

    DomainNotFoundFault.struct_class = Types::DomainNotFoundFault

    DoubleRange.add_member(:from, Shapes::ShapeRef.new(shape: Double, location_name: "From"))
    DoubleRange.add_member(:to, Shapes::ShapeRef.new(shape: Double, location_name: "To"))
    DoubleRange.struct_class = Types::DoubleRange

    DoubleRangeList.member = Shapes::ShapeRef.new(shape: DoubleRange, location_name: "DoubleRange")

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Endpoint.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: String, location_name: "HostedZoneId"))
    Endpoint.struct_class = Types::Endpoint

    EngineDefaults.add_member(:db_parameter_group_family, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupFamily"))
    EngineDefaults.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EngineDefaults.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    EngineDefaults.struct_class = Types::EngineDefaults

    Event.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SourceIdentifier"))
    Event.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Event.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    Event.add_member(:date, Shapes::ShapeRef.new(shape: TStamp, location_name: "Date"))
    Event.add_member(:source_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceArn"))
    Event.struct_class = Types::Event

    EventCategoriesList.member = Shapes::ShapeRef.new(shape: String, location_name: "EventCategory")

    EventCategoriesMap.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventCategoriesMap.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    EventCategoriesMap.struct_class = Types::EventCategoriesMap

    EventCategoriesMapList.member = Shapes::ShapeRef.new(shape: EventCategoriesMap, location_name: "EventCategoriesMap")

    EventCategoriesMessage.add_member(:event_categories_map_list, Shapes::ShapeRef.new(shape: EventCategoriesMapList, location_name: "EventCategoriesMapList"))
    EventCategoriesMessage.struct_class = Types::EventCategoriesMessage

    EventList.member = Shapes::ShapeRef.new(shape: Event, location_name: "Event")

    EventSubscription.add_member(:customer_aws_id, Shapes::ShapeRef.new(shape: String, location_name: "CustomerAwsId"))
    EventSubscription.add_member(:cust_subscription_id, Shapes::ShapeRef.new(shape: String, location_name: "CustSubscriptionId"))
    EventSubscription.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    EventSubscription.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    EventSubscription.add_member(:subscription_creation_time, Shapes::ShapeRef.new(shape: String, location_name: "SubscriptionCreationTime"))
    EventSubscription.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    EventSubscription.add_member(:source_ids_list, Shapes::ShapeRef.new(shape: SourceIdsList, location_name: "SourceIdsList"))
    EventSubscription.add_member(:event_categories_list, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategoriesList"))
    EventSubscription.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EventSubscription.add_member(:event_subscription_arn, Shapes::ShapeRef.new(shape: String, location_name: "EventSubscriptionArn"))
    EventSubscription.struct_class = Types::EventSubscription

    EventSubscriptionQuotaExceededFault.struct_class = Types::EventSubscriptionQuotaExceededFault

    EventSubscriptionsList.member = Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription")

    EventSubscriptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EventSubscriptionsMessage.add_member(:event_subscriptions_list, Shapes::ShapeRef.new(shape: EventSubscriptionsList, location_name: "EventSubscriptionsList"))
    EventSubscriptionsMessage.struct_class = Types::EventSubscriptionsMessage

    EventsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    EventsMessage.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    EventsMessage.struct_class = Types::EventsMessage

    FailoverDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    FailoverDBClusterMessage.add_member(:target_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "TargetDBInstanceIdentifier"))
    FailoverDBClusterMessage.struct_class = Types::FailoverDBClusterMessage

    FailoverDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    FailoverDBClusterResult.struct_class = Types::FailoverDBClusterResult

    FailoverGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    FailoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDbClusterIdentifier"))
    FailoverGlobalClusterMessage.add_member(:allow_data_loss, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AllowDataLoss"))
    FailoverGlobalClusterMessage.add_member(:switchover, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Switchover"))
    FailoverGlobalClusterMessage.struct_class = Types::FailoverGlobalClusterMessage

    FailoverGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    FailoverGlobalClusterResult.struct_class = Types::FailoverGlobalClusterResult

    FailoverState.add_member(:status, Shapes::ShapeRef.new(shape: FailoverStatus, location_name: "Status"))
    FailoverState.add_member(:from_db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "FromDbClusterArn"))
    FailoverState.add_member(:to_db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "ToDbClusterArn"))
    FailoverState.add_member(:is_data_loss_allowed, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsDataLossAllowed"))
    FailoverState.struct_class = Types::FailoverState

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValueList, required: true, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter, location_name: "Filter")

    FilterValueList.member = Shapes::ShapeRef.new(shape: String, location_name: "Value")

    GlobalCluster.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: "GlobalClusterIdentifier"))
    GlobalCluster.add_member(:global_cluster_resource_id, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterResourceId"))
    GlobalCluster.add_member(:global_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "GlobalClusterArn"))
    GlobalCluster.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    GlobalCluster.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    GlobalCluster.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    GlobalCluster.add_member(:storage_encrypted, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "StorageEncrypted"))
    GlobalCluster.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    GlobalCluster.add_member(:global_cluster_members, Shapes::ShapeRef.new(shape: GlobalClusterMemberList, location_name: "GlobalClusterMembers"))
    GlobalCluster.add_member(:failover_state, Shapes::ShapeRef.new(shape: FailoverState, location_name: "FailoverState"))
    GlobalCluster.struct_class = Types::GlobalCluster

    GlobalClusterAlreadyExistsFault.struct_class = Types::GlobalClusterAlreadyExistsFault

    GlobalClusterList.member = Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalClusterMember")

    GlobalClusterMember.add_member(:db_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterArn"))
    GlobalClusterMember.add_member(:readers, Shapes::ShapeRef.new(shape: ReadersArnList, location_name: "Readers"))
    GlobalClusterMember.add_member(:is_writer, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsWriter"))
    GlobalClusterMember.struct_class = Types::GlobalClusterMember

    GlobalClusterMemberList.member = Shapes::ShapeRef.new(shape: GlobalClusterMember, location_name: "GlobalClusterMember")

    GlobalClusterNotFoundFault.struct_class = Types::GlobalClusterNotFoundFault

    GlobalClusterQuotaExceededFault.struct_class = Types::GlobalClusterQuotaExceededFault

    GlobalClustersMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    GlobalClustersMessage.add_member(:global_clusters, Shapes::ShapeRef.new(shape: GlobalClusterList, location_name: "GlobalClusters"))
    GlobalClustersMessage.struct_class = Types::GlobalClustersMessage

    InstanceQuotaExceededFault.struct_class = Types::InstanceQuotaExceededFault

    InsufficientDBClusterCapacityFault.struct_class = Types::InsufficientDBClusterCapacityFault

    InsufficientDBInstanceCapacityFault.struct_class = Types::InsufficientDBInstanceCapacityFault

    InsufficientStorageClusterCapacityFault.struct_class = Types::InsufficientStorageClusterCapacityFault

    InvalidDBClusterEndpointStateFault.struct_class = Types::InvalidDBClusterEndpointStateFault

    InvalidDBClusterSnapshotStateFault.struct_class = Types::InvalidDBClusterSnapshotStateFault

    InvalidDBClusterStateFault.struct_class = Types::InvalidDBClusterStateFault

    InvalidDBInstanceStateFault.struct_class = Types::InvalidDBInstanceStateFault

    InvalidDBParameterGroupStateFault.struct_class = Types::InvalidDBParameterGroupStateFault

    InvalidDBSecurityGroupStateFault.struct_class = Types::InvalidDBSecurityGroupStateFault

    InvalidDBSnapshotStateFault.struct_class = Types::InvalidDBSnapshotStateFault

    InvalidDBSubnetGroupStateFault.struct_class = Types::InvalidDBSubnetGroupStateFault

    InvalidDBSubnetStateFault.struct_class = Types::InvalidDBSubnetStateFault

    InvalidEventSubscriptionStateFault.struct_class = Types::InvalidEventSubscriptionStateFault

    InvalidGlobalClusterStateFault.struct_class = Types::InvalidGlobalClusterStateFault

    InvalidRestoreFault.struct_class = Types::InvalidRestoreFault

    InvalidSubnet.struct_class = Types::InvalidSubnet

    InvalidVPCNetworkStateFault.struct_class = Types::InvalidVPCNetworkStateFault

    KMSKeyNotAccessibleFault.struct_class = Types::KMSKeyNotAccessibleFault

    KeyList.member = Shapes::ShapeRef.new(shape: String)

    ListTagsForResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    ListTagsForResourceMessage.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    ListTagsForResourceMessage.struct_class = Types::ListTagsForResourceMessage

    LogTypeList.member = Shapes::ShapeRef.new(shape: String)

    ModifyDBClusterEndpointMessage.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterEndpointIdentifier"))
    ModifyDBClusterEndpointMessage.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "EndpointType"))
    ModifyDBClusterEndpointMessage.add_member(:static_members, Shapes::ShapeRef.new(shape: StringList, location_name: "StaticMembers"))
    ModifyDBClusterEndpointMessage.add_member(:excluded_members, Shapes::ShapeRef.new(shape: StringList, location_name: "ExcludedMembers"))
    ModifyDBClusterEndpointMessage.struct_class = Types::ModifyDBClusterEndpointMessage

    ModifyDBClusterEndpointOutput.add_member(:db_cluster_endpoint_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointIdentifier"))
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterIdentifier"))
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_endpoint_resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointResourceIdentifier"))
    ModifyDBClusterEndpointOutput.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    ModifyDBClusterEndpointOutput.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ModifyDBClusterEndpointOutput.add_member(:endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "EndpointType"))
    ModifyDBClusterEndpointOutput.add_member(:custom_endpoint_type, Shapes::ShapeRef.new(shape: String, location_name: "CustomEndpointType"))
    ModifyDBClusterEndpointOutput.add_member(:static_members, Shapes::ShapeRef.new(shape: StringList, location_name: "StaticMembers"))
    ModifyDBClusterEndpointOutput.add_member(:excluded_members, Shapes::ShapeRef.new(shape: StringList, location_name: "ExcludedMembers"))
    ModifyDBClusterEndpointOutput.add_member(:db_cluster_endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterEndpointArn"))
    ModifyDBClusterEndpointOutput.struct_class = Types::ModifyDBClusterEndpointOutput

    ModifyDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    ModifyDBClusterMessage.add_member(:new_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, location_name: "NewDBClusterIdentifier"))
    ModifyDBClusterMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyDBClusterMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    ModifyDBClusterMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    ModifyDBClusterMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyDBClusterMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    ModifyDBClusterMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    ModifyDBClusterMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    ModifyDBClusterMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    ModifyDBClusterMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyDBClusterMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    ModifyDBClusterMessage.add_member(:cloudwatch_logs_export_configuration, Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: "CloudwatchLogsExportConfiguration"))
    ModifyDBClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyDBClusterMessage.add_member(:allow_major_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowMajorVersionUpgrade"))
    ModifyDBClusterMessage.add_member(:db_instance_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceParameterGroupName"))
    ModifyDBClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    ModifyDBClusterMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    ModifyDBClusterMessage.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: "ServerlessV2ScalingConfiguration"))
    ModifyDBClusterMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ModifyDBClusterMessage.struct_class = Types::ModifyDBClusterMessage

    ModifyDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    ModifyDBClusterParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, required: true, location_name: "Parameters"))
    ModifyDBClusterParameterGroupMessage.struct_class = Types::ModifyDBClusterParameterGroupMessage

    ModifyDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    ModifyDBClusterResult.struct_class = Types::ModifyDBClusterResult

    ModifyDBClusterSnapshotAttributeMessage.add_member(:db_cluster_snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterSnapshotIdentifier"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AttributeName"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_add, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "ValuesToAdd"))
    ModifyDBClusterSnapshotAttributeMessage.add_member(:values_to_remove, Shapes::ShapeRef.new(shape: AttributeValueList, location_name: "ValuesToRemove"))
    ModifyDBClusterSnapshotAttributeMessage.struct_class = Types::ModifyDBClusterSnapshotAttributeMessage

    ModifyDBClusterSnapshotAttributeResult.add_member(:db_cluster_snapshot_attributes_result, Shapes::ShapeRef.new(shape: DBClusterSnapshotAttributesResult, location_name: "DBClusterSnapshotAttributesResult"))
    ModifyDBClusterSnapshotAttributeResult.struct_class = Types::ModifyDBClusterSnapshotAttributeResult

    ModifyDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    ModifyDBInstanceMessage.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    ModifyDBInstanceMessage.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    ModifyDBInstanceMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    ModifyDBInstanceMessage.add_member(:db_security_groups, Shapes::ShapeRef.new(shape: DBSecurityGroupNameList, location_name: "DBSecurityGroups"))
    ModifyDBInstanceMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    ModifyDBInstanceMessage.add_member(:apply_immediately, Shapes::ShapeRef.new(shape: Boolean, location_name: "ApplyImmediately"))
    ModifyDBInstanceMessage.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    ModifyDBInstanceMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBParameterGroupName"))
    ModifyDBInstanceMessage.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    ModifyDBInstanceMessage.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredBackupWindow"))
    ModifyDBInstanceMessage.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: String, location_name: "PreferredMaintenanceWindow"))
    ModifyDBInstanceMessage.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    ModifyDBInstanceMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyDBInstanceMessage.add_member(:allow_major_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowMajorVersionUpgrade"))
    ModifyDBInstanceMessage.add_member(:auto_minor_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AutoMinorVersionUpgrade"))
    ModifyDBInstanceMessage.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    ModifyDBInstanceMessage.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    ModifyDBInstanceMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    ModifyDBInstanceMessage.add_member(:new_db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "NewDBInstanceIdentifier"))
    ModifyDBInstanceMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ModifyDBInstanceMessage.add_member(:tde_credential_arn, Shapes::ShapeRef.new(shape: String, location_name: "TdeCredentialArn"))
    ModifyDBInstanceMessage.add_member(:tde_credential_password, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "TdeCredentialPassword"))
    ModifyDBInstanceMessage.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    ModifyDBInstanceMessage.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    ModifyDBInstanceMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    ModifyDBInstanceMessage.add_member(:monitoring_interval, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MonitoringInterval"))
    ModifyDBInstanceMessage.add_member(:db_port_number, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "DBPortNumber"))
    ModifyDBInstanceMessage.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: BooleanOptional, deprecated: true, location_name: "PubliclyAccessible"))
    ModifyDBInstanceMessage.add_member(:monitoring_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "MonitoringRoleArn"))
    ModifyDBInstanceMessage.add_member(:domain_iam_role_name, Shapes::ShapeRef.new(shape: String, location_name: "DomainIAMRoleName"))
    ModifyDBInstanceMessage.add_member(:promotion_tier, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "PromotionTier"))
    ModifyDBInstanceMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    ModifyDBInstanceMessage.add_member(:enable_performance_insights, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnablePerformanceInsights"))
    ModifyDBInstanceMessage.add_member(:performance_insights_kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "PerformanceInsightsKMSKeyId"))
    ModifyDBInstanceMessage.add_member(:cloudwatch_logs_export_configuration, Shapes::ShapeRef.new(shape: CloudwatchLogsExportConfiguration, location_name: "CloudwatchLogsExportConfiguration"))
    ModifyDBInstanceMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    ModifyDBInstanceMessage.struct_class = Types::ModifyDBInstanceMessage

    ModifyDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    ModifyDBInstanceResult.struct_class = Types::ModifyDBInstanceResult

    ModifyDBParameterGroupMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    ModifyDBParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, required: true, location_name: "Parameters"))
    ModifyDBParameterGroupMessage.struct_class = Types::ModifyDBParameterGroupMessage

    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBSubnetGroupName"))
    ModifyDBSubnetGroupMessage.add_member(:db_subnet_group_description, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupDescription"))
    ModifyDBSubnetGroupMessage.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdentifierList, required: true, location_name: "SubnetIds"))
    ModifyDBSubnetGroupMessage.struct_class = Types::ModifyDBSubnetGroupMessage

    ModifyDBSubnetGroupResult.add_member(:db_subnet_group, Shapes::ShapeRef.new(shape: DBSubnetGroup, location_name: "DBSubnetGroup"))
    ModifyDBSubnetGroupResult.struct_class = Types::ModifyDBSubnetGroupResult

    ModifyEventSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    ModifyEventSubscriptionMessage.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "SnsTopicArn"))
    ModifyEventSubscriptionMessage.add_member(:source_type, Shapes::ShapeRef.new(shape: String, location_name: "SourceType"))
    ModifyEventSubscriptionMessage.add_member(:event_categories, Shapes::ShapeRef.new(shape: EventCategoriesList, location_name: "EventCategories"))
    ModifyEventSubscriptionMessage.add_member(:enabled, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "Enabled"))
    ModifyEventSubscriptionMessage.struct_class = Types::ModifyEventSubscriptionMessage

    ModifyEventSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    ModifyEventSubscriptionResult.struct_class = Types::ModifyEventSubscriptionResult

    ModifyGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    ModifyGlobalClusterMessage.add_member(:new_global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, location_name: "NewGlobalClusterIdentifier"))
    ModifyGlobalClusterMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    ModifyGlobalClusterMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    ModifyGlobalClusterMessage.add_member(:allow_major_version_upgrade, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "AllowMajorVersionUpgrade"))
    ModifyGlobalClusterMessage.struct_class = Types::ModifyGlobalClusterMessage

    ModifyGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    ModifyGlobalClusterResult.struct_class = Types::ModifyGlobalClusterResult

    OptionGroupMembership.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    OptionGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    OptionGroupMembership.struct_class = Types::OptionGroupMembership

    OptionGroupMembershipList.member = Shapes::ShapeRef.new(shape: OptionGroupMembership, location_name: "OptionGroupMembership")

    OptionGroupNotFoundFault.struct_class = Types::OptionGroupNotFoundFault

    OrderableDBInstanceOption.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    OrderableDBInstanceOption.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    OrderableDBInstanceOption.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    OrderableDBInstanceOption.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    OrderableDBInstanceOption.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, location_name: "AvailabilityZones"))
    OrderableDBInstanceOption.add_member(:multi_az_capable, Shapes::ShapeRef.new(shape: Boolean, location_name: "MultiAZCapable"))
    OrderableDBInstanceOption.add_member(:read_replica_capable, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReadReplicaCapable"))
    OrderableDBInstanceOption.add_member(:vpc, Shapes::ShapeRef.new(shape: Boolean, location_name: "Vpc"))
    OrderableDBInstanceOption.add_member(:supports_storage_encryption, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsStorageEncryption"))
    OrderableDBInstanceOption.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    OrderableDBInstanceOption.add_member(:supports_iops, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsIops"))
    OrderableDBInstanceOption.add_member(:supports_enhanced_monitoring, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsEnhancedMonitoring"))
    OrderableDBInstanceOption.add_member(:supports_iam_database_authentication, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsIAMDatabaseAuthentication"))
    OrderableDBInstanceOption.add_member(:supports_performance_insights, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsPerformanceInsights"))
    OrderableDBInstanceOption.add_member(:min_storage_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinStorageSize"))
    OrderableDBInstanceOption.add_member(:max_storage_size, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxStorageSize"))
    OrderableDBInstanceOption.add_member(:min_iops_per_db_instance, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MinIopsPerDbInstance"))
    OrderableDBInstanceOption.add_member(:max_iops_per_db_instance, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "MaxIopsPerDbInstance"))
    OrderableDBInstanceOption.add_member(:min_iops_per_gib, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinIopsPerGib"))
    OrderableDBInstanceOption.add_member(:max_iops_per_gib, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxIopsPerGib"))
    OrderableDBInstanceOption.add_member(:supports_global_databases, Shapes::ShapeRef.new(shape: Boolean, location_name: "SupportsGlobalDatabases"))
    OrderableDBInstanceOption.struct_class = Types::OrderableDBInstanceOption

    OrderableDBInstanceOptionsList.member = Shapes::ShapeRef.new(shape: OrderableDBInstanceOption, location_name: "OrderableDBInstanceOption")

    OrderableDBInstanceOptionsMessage.add_member(:orderable_db_instance_options, Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsList, location_name: "OrderableDBInstanceOptions"))
    OrderableDBInstanceOptionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    OrderableDBInstanceOptionsMessage.struct_class = Types::OrderableDBInstanceOptionsMessage

    Parameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "ParameterName"))
    Parameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: String, location_name: "ParameterValue"))
    Parameter.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Parameter.add_member(:source, Shapes::ShapeRef.new(shape: String, location_name: "Source"))
    Parameter.add_member(:apply_type, Shapes::ShapeRef.new(shape: String, location_name: "ApplyType"))
    Parameter.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    Parameter.add_member(:allowed_values, Shapes::ShapeRef.new(shape: String, location_name: "AllowedValues"))
    Parameter.add_member(:is_modifiable, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsModifiable"))
    Parameter.add_member(:minimum_engine_version, Shapes::ShapeRef.new(shape: String, location_name: "MinimumEngineVersion"))
    Parameter.add_member(:apply_method, Shapes::ShapeRef.new(shape: ApplyMethod, location_name: "ApplyMethod"))
    Parameter.struct_class = Types::Parameter

    ParametersList.member = Shapes::ShapeRef.new(shape: Parameter, location_name: "Parameter")

    PendingCloudwatchLogsExports.add_member(:log_types_to_enable, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "LogTypesToEnable"))
    PendingCloudwatchLogsExports.add_member(:log_types_to_disable, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "LogTypesToDisable"))
    PendingCloudwatchLogsExports.struct_class = Types::PendingCloudwatchLogsExports

    PendingMaintenanceAction.add_member(:action, Shapes::ShapeRef.new(shape: String, location_name: "Action"))
    PendingMaintenanceAction.add_member(:auto_applied_after_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "AutoAppliedAfterDate"))
    PendingMaintenanceAction.add_member(:forced_apply_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "ForcedApplyDate"))
    PendingMaintenanceAction.add_member(:opt_in_status, Shapes::ShapeRef.new(shape: String, location_name: "OptInStatus"))
    PendingMaintenanceAction.add_member(:current_apply_date, Shapes::ShapeRef.new(shape: TStamp, location_name: "CurrentApplyDate"))
    PendingMaintenanceAction.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    PendingMaintenanceAction.struct_class = Types::PendingMaintenanceAction

    PendingMaintenanceActionDetails.member = Shapes::ShapeRef.new(shape: PendingMaintenanceAction, location_name: "PendingMaintenanceAction")

    PendingMaintenanceActions.member = Shapes::ShapeRef.new(shape: ResourcePendingMaintenanceActions, location_name: "ResourcePendingMaintenanceActions")

    PendingMaintenanceActionsMessage.add_member(:pending_maintenance_actions, Shapes::ShapeRef.new(shape: PendingMaintenanceActions, location_name: "PendingMaintenanceActions"))
    PendingMaintenanceActionsMessage.add_member(:marker, Shapes::ShapeRef.new(shape: String, location_name: "Marker"))
    PendingMaintenanceActionsMessage.struct_class = Types::PendingMaintenanceActionsMessage

    PendingModifiedValues.add_member(:db_instance_class, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceClass"))
    PendingModifiedValues.add_member(:allocated_storage, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "AllocatedStorage"))
    PendingModifiedValues.add_member(:master_user_password, Shapes::ShapeRef.new(shape: String, location_name: "MasterUserPassword"))
    PendingModifiedValues.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    PendingModifiedValues.add_member(:backup_retention_period, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "BackupRetentionPeriod"))
    PendingModifiedValues.add_member(:multi_az, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "MultiAZ"))
    PendingModifiedValues.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    PendingModifiedValues.add_member(:license_model, Shapes::ShapeRef.new(shape: String, location_name: "LicenseModel"))
    PendingModifiedValues.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Iops"))
    PendingModifiedValues.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DBInstanceIdentifier"))
    PendingModifiedValues.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    PendingModifiedValues.add_member(:ca_certificate_identifier, Shapes::ShapeRef.new(shape: String, location_name: "CACertificateIdentifier"))
    PendingModifiedValues.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    PendingModifiedValues.add_member(:pending_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: PendingCloudwatchLogsExports, location_name: "PendingCloudwatchLogsExports"))
    PendingModifiedValues.struct_class = Types::PendingModifiedValues

    PromoteReadReplicaDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    PromoteReadReplicaDBClusterMessage.struct_class = Types::PromoteReadReplicaDBClusterMessage

    PromoteReadReplicaDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    PromoteReadReplicaDBClusterResult.struct_class = Types::PromoteReadReplicaDBClusterResult

    ProvisionedIopsNotAvailableInAZFault.struct_class = Types::ProvisionedIopsNotAvailableInAZFault

    Range.add_member(:from, Shapes::ShapeRef.new(shape: Integer, location_name: "From"))
    Range.add_member(:to, Shapes::ShapeRef.new(shape: Integer, location_name: "To"))
    Range.add_member(:step, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Step"))
    Range.struct_class = Types::Range

    RangeList.member = Shapes::ShapeRef.new(shape: Range, location_name: "Range")

    ReadReplicaDBClusterIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaDBClusterIdentifier")

    ReadReplicaDBInstanceIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaDBInstanceIdentifier")

    ReadReplicaIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "ReadReplicaIdentifier")

    ReadersArnList.member = Shapes::ShapeRef.new(shape: String)

    RebootDBInstanceMessage.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBInstanceIdentifier"))
    RebootDBInstanceMessage.add_member(:force_failover, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "ForceFailover"))
    RebootDBInstanceMessage.struct_class = Types::RebootDBInstanceMessage

    RebootDBInstanceResult.add_member(:db_instance, Shapes::ShapeRef.new(shape: DBInstance, location_name: "DBInstance"))
    RebootDBInstanceResult.struct_class = Types::RebootDBInstanceResult

    RemoveFromGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    RemoveFromGlobalClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DbClusterIdentifier"))
    RemoveFromGlobalClusterMessage.struct_class = Types::RemoveFromGlobalClusterMessage

    RemoveFromGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    RemoveFromGlobalClusterResult.struct_class = Types::RemoveFromGlobalClusterResult

    RemoveRoleFromDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RemoveRoleFromDBClusterMessage.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RoleArn"))
    RemoveRoleFromDBClusterMessage.add_member(:feature_name, Shapes::ShapeRef.new(shape: String, location_name: "FeatureName"))
    RemoveRoleFromDBClusterMessage.struct_class = Types::RemoveRoleFromDBClusterMessage

    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:subscription_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SubscriptionName"))
    RemoveSourceIdentifierFromSubscriptionMessage.add_member(:source_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceIdentifier"))
    RemoveSourceIdentifierFromSubscriptionMessage.struct_class = Types::RemoveSourceIdentifierFromSubscriptionMessage

    RemoveSourceIdentifierFromSubscriptionResult.add_member(:event_subscription, Shapes::ShapeRef.new(shape: EventSubscription, location_name: "EventSubscription"))
    RemoveSourceIdentifierFromSubscriptionResult.struct_class = Types::RemoveSourceIdentifierFromSubscriptionResult

    RemoveTagsFromResourceMessage.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceName"))
    RemoveTagsFromResourceMessage.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
    RemoveTagsFromResourceMessage.struct_class = Types::RemoveTagsFromResourceMessage

    ResetDBClusterParameterGroupMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterParameterGroupName"))
    ResetDBClusterParameterGroupMessage.add_member(:reset_all_parameters, Shapes::ShapeRef.new(shape: Boolean, location_name: "ResetAllParameters"))
    ResetDBClusterParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    ResetDBClusterParameterGroupMessage.struct_class = Types::ResetDBClusterParameterGroupMessage

    ResetDBParameterGroupMessage.add_member(:db_parameter_group_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBParameterGroupName"))
    ResetDBParameterGroupMessage.add_member(:reset_all_parameters, Shapes::ShapeRef.new(shape: Boolean, location_name: "ResetAllParameters"))
    ResetDBParameterGroupMessage.add_member(:parameters, Shapes::ShapeRef.new(shape: ParametersList, location_name: "Parameters"))
    ResetDBParameterGroupMessage.struct_class = Types::ResetDBParameterGroupMessage

    ResourceNotFoundFault.struct_class = Types::ResourceNotFoundFault

    ResourcePendingMaintenanceActions.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    ResourcePendingMaintenanceActions.add_member(:pending_maintenance_action_details, Shapes::ShapeRef.new(shape: PendingMaintenanceActionDetails, location_name: "PendingMaintenanceActionDetails"))
    ResourcePendingMaintenanceActions.struct_class = Types::ResourcePendingMaintenanceActions

    RestoreDBClusterFromSnapshotMessage.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZones, location_name: "AvailabilityZones"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RestoreDBClusterFromSnapshotMessage.add_member(:snapshot_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SnapshotIdentifier"))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Engine"))
    RestoreDBClusterFromSnapshotMessage.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    RestoreDBClusterFromSnapshotMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBClusterFromSnapshotMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBClusterFromSnapshotMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    RestoreDBClusterFromSnapshotMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterFromSnapshotMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    RestoreDBClusterFromSnapshotMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBClusterFromSnapshotMessage.add_member(:copy_tags_to_snapshot, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "CopyTagsToSnapshot"))
    RestoreDBClusterFromSnapshotMessage.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: "ServerlessV2ScalingConfiguration"))
    RestoreDBClusterFromSnapshotMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RestoreDBClusterFromSnapshotMessage.struct_class = Types::RestoreDBClusterFromSnapshotMessage

    RestoreDBClusterFromSnapshotResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    RestoreDBClusterFromSnapshotResult.struct_class = Types::RestoreDBClusterFromSnapshotResult

    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_type, Shapes::ShapeRef.new(shape: String, location_name: "RestoreType"))
    RestoreDBClusterToPointInTimeMessage.add_member(:source_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceDBClusterIdentifier"))
    RestoreDBClusterToPointInTimeMessage.add_member(:restore_to_time, Shapes::ShapeRef.new(shape: TStamp, location_name: "RestoreToTime"))
    RestoreDBClusterToPointInTimeMessage.add_member(:use_latest_restorable_time, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseLatestRestorableTime"))
    RestoreDBClusterToPointInTimeMessage.add_member(:port, Shapes::ShapeRef.new(shape: IntegerOptional, location_name: "Port"))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_subnet_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBSubnetGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:option_group_name, Shapes::ShapeRef.new(shape: String, location_name: "OptionGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "VpcSecurityGroupIds"))
    RestoreDBClusterToPointInTimeMessage.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    RestoreDBClusterToPointInTimeMessage.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "KmsKeyId"))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_iam_database_authentication, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "EnableIAMDatabaseAuthentication"))
    RestoreDBClusterToPointInTimeMessage.add_member(:enable_cloudwatch_logs_exports, Shapes::ShapeRef.new(shape: LogTypeList, location_name: "EnableCloudwatchLogsExports"))
    RestoreDBClusterToPointInTimeMessage.add_member(:db_cluster_parameter_group_name, Shapes::ShapeRef.new(shape: String, location_name: "DBClusterParameterGroupName"))
    RestoreDBClusterToPointInTimeMessage.add_member(:deletion_protection, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "DeletionProtection"))
    RestoreDBClusterToPointInTimeMessage.add_member(:serverless_v2_scaling_configuration, Shapes::ShapeRef.new(shape: ServerlessV2ScalingConfiguration, location_name: "ServerlessV2ScalingConfiguration"))
    RestoreDBClusterToPointInTimeMessage.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    RestoreDBClusterToPointInTimeMessage.struct_class = Types::RestoreDBClusterToPointInTimeMessage

    RestoreDBClusterToPointInTimeResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    RestoreDBClusterToPointInTimeResult.struct_class = Types::RestoreDBClusterToPointInTimeResult

    SNSInvalidTopicFault.struct_class = Types::SNSInvalidTopicFault

    SNSNoAuthorizationFault.struct_class = Types::SNSNoAuthorizationFault

    SNSTopicArnNotFoundFault.struct_class = Types::SNSTopicArnNotFoundFault

    ServerlessV2ScalingConfiguration.add_member(:min_capacity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinCapacity"))
    ServerlessV2ScalingConfiguration.add_member(:max_capacity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxCapacity"))
    ServerlessV2ScalingConfiguration.struct_class = Types::ServerlessV2ScalingConfiguration

    ServerlessV2ScalingConfigurationInfo.add_member(:min_capacity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MinCapacity"))
    ServerlessV2ScalingConfigurationInfo.add_member(:max_capacity, Shapes::ShapeRef.new(shape: DoubleOptional, location_name: "MaxCapacity"))
    ServerlessV2ScalingConfigurationInfo.struct_class = Types::ServerlessV2ScalingConfigurationInfo

    SharedSnapshotQuotaExceededFault.struct_class = Types::SharedSnapshotQuotaExceededFault

    SnapshotQuotaExceededFault.struct_class = Types::SnapshotQuotaExceededFault

    SourceIdsList.member = Shapes::ShapeRef.new(shape: String, location_name: "SourceId")

    SourceNotFoundFault.struct_class = Types::SourceNotFoundFault

    StartDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    StartDBClusterMessage.struct_class = Types::StartDBClusterMessage

    StartDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    StartDBClusterResult.struct_class = Types::StartDBClusterResult

    StopDBClusterMessage.add_member(:db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DBClusterIdentifier"))
    StopDBClusterMessage.struct_class = Types::StopDBClusterMessage

    StopDBClusterResult.add_member(:db_cluster, Shapes::ShapeRef.new(shape: DBCluster, location_name: "DBCluster"))
    StopDBClusterResult.struct_class = Types::StopDBClusterResult

    StorageQuotaExceededFault.struct_class = Types::StorageQuotaExceededFault

    StorageTypeNotSupportedFault.struct_class = Types::StorageTypeNotSupportedFault

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Subnet.add_member(:subnet_identifier, Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier"))
    Subnet.add_member(:subnet_availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "SubnetAvailabilityZone"))
    Subnet.add_member(:subnet_status, Shapes::ShapeRef.new(shape: String, location_name: "SubnetStatus"))
    Subnet.struct_class = Types::Subnet

    SubnetAlreadyInUse.struct_class = Types::SubnetAlreadyInUse

    SubnetIdentifierList.member = Shapes::ShapeRef.new(shape: String, location_name: "SubnetIdentifier")

    SubnetList.member = Shapes::ShapeRef.new(shape: Subnet, location_name: "Subnet")

    SubscriptionAlreadyExistFault.struct_class = Types::SubscriptionAlreadyExistFault

    SubscriptionCategoryNotFoundFault.struct_class = Types::SubscriptionCategoryNotFoundFault

    SubscriptionNotFoundFault.struct_class = Types::SubscriptionNotFoundFault

    SupportedCharacterSetsList.member = Shapes::ShapeRef.new(shape: CharacterSet, location_name: "CharacterSet")

    SupportedTimezonesList.member = Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone")

    SwitchoverGlobalClusterMessage.add_member(:global_cluster_identifier, Shapes::ShapeRef.new(shape: GlobalClusterIdentifier, required: true, location_name: "GlobalClusterIdentifier"))
    SwitchoverGlobalClusterMessage.add_member(:target_db_cluster_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "TargetDbClusterIdentifier"))
    SwitchoverGlobalClusterMessage.struct_class = Types::SwitchoverGlobalClusterMessage

    SwitchoverGlobalClusterResult.add_member(:global_cluster, Shapes::ShapeRef.new(shape: GlobalCluster, location_name: "GlobalCluster"))
    SwitchoverGlobalClusterResult.struct_class = Types::SwitchoverGlobalClusterResult

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag, location_name: "Tag")

    TagListMessage.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    TagListMessage.struct_class = Types::TagListMessage

    Timezone.add_member(:timezone_name, Shapes::ShapeRef.new(shape: String, location_name: "TimezoneName"))
    Timezone.struct_class = Types::Timezone

    UpgradeTarget.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    UpgradeTarget.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    UpgradeTarget.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpgradeTarget.add_member(:auto_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoUpgrade"))
    UpgradeTarget.add_member(:is_major_version_upgrade, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsMajorVersionUpgrade"))
    UpgradeTarget.add_member(:supports_global_databases, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "SupportsGlobalDatabases"))
    UpgradeTarget.struct_class = Types::UpgradeTarget

    ValidDBInstanceModificationsMessage.add_member(:storage, Shapes::ShapeRef.new(shape: ValidStorageOptionsList, location_name: "Storage"))
    ValidDBInstanceModificationsMessage.struct_class = Types::ValidDBInstanceModificationsMessage

    ValidStorageOptions.add_member(:storage_type, Shapes::ShapeRef.new(shape: String, location_name: "StorageType"))
    ValidStorageOptions.add_member(:storage_size, Shapes::ShapeRef.new(shape: RangeList, location_name: "StorageSize"))
    ValidStorageOptions.add_member(:provisioned_iops, Shapes::ShapeRef.new(shape: RangeList, location_name: "ProvisionedIops"))
    ValidStorageOptions.add_member(:iops_to_storage_ratio, Shapes::ShapeRef.new(shape: DoubleRangeList, location_name: "IopsToStorageRatio"))
    ValidStorageOptions.struct_class = Types::ValidStorageOptions

    ValidStorageOptionsList.member = Shapes::ShapeRef.new(shape: ValidStorageOptions, location_name: "ValidStorageOptions")

    ValidUpgradeTargetList.member = Shapes::ShapeRef.new(shape: UpgradeTarget, location_name: "UpgradeTarget")

    VpcSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId")

    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcSecurityGroupId"))
    VpcSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    VpcSecurityGroupMembership.struct_class = Types::VpcSecurityGroupMembership

    VpcSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership, location_name: "VpcSecurityGroupMembership")


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-10-31"

      api.metadata = {
        "apiVersion" => "2014-10-31",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "rds",
        "protocol" => "query",
        "protocols" => ["query"],
        "serviceAbbreviation" => "Amazon Neptune",
        "serviceFullName" => "Amazon Neptune",
        "serviceId" => "Neptune",
        "signatureVersion" => "v4",
        "signingName" => "rds",
        "uid" => "neptune-2014-10-31",
        "xmlNamespace" => "http://rds.amazonaws.com/doc/2014-10-31/",
      }

      api.add_operation(:add_role_to_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddRoleToDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddRoleToDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterRoleAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterRoleQuotaExceededFault)
      end)

      api.add_operation(:add_source_identifier_to_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddSourceIdentifierToSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddSourceIdentifierToSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: AddSourceIdentifierToSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SourceNotFoundFault)
      end)

      api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTagsToResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:apply_pending_maintenance_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApplyPendingMaintenanceAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplyPendingMaintenanceActionResult)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
      end)

      api.add_operation(:copy_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyDBClusterParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
      end)

      api.add_operation(:copy_db_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyDBClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyDBClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyDBClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
      end)

      api.add_operation(:copy_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyDBParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CopyDBParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CopyDBParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
      end)

      api.add_operation(:create_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
      end)

      api.add_operation(:create_db_cluster_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBClusterEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterEndpointQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterEndpointAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:create_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
      end)

      api.add_operation(:create_db_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
      end)

      api.add_operation(:create_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InstanceQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
      end)

      api.add_operation(:create_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBParameterGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupAlreadyExistsFault)
      end)

      api.add_operation(:create_db_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDBSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDBSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateDBSubnetGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:create_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateEventSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionAlreadyExistFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SourceNotFoundFault)
      end)

      api.add_operation(:create_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: CreateGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:delete_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
      end)

      api.add_operation(:delete_db_cluster_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBClusterEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBClusterEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterEndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)

      api.add_operation(:delete_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:delete_db_cluster_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBClusterSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBClusterSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
      end)

      api.add_operation(:delete_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: SnapshotQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)

      api.add_operation(:delete_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:delete_db_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDBSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDBSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
      end)

      api.add_operation(:delete_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEventSubscriptionStateFault)
      end)

      api.add_operation(:delete_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: DeleteGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
      end)

      api.add_operation(:describe_db_cluster_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterEndpointsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterEndpointMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_parameter_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterParameterGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterParameterGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupsMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupDetails)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_cluster_snapshot_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterSnapshotAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
      end)

      api.add_operation(:describe_db_cluster_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusterSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClusterSnapshotsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterSnapshotMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBClustersMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_engine_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBEngineVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBEngineVersionsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBEngineVersionMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBInstancesMessage)
        o.output = Shapes::ShapeRef.new(shape: DBInstanceMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_parameter_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBParameterGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBParameterGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBParameterGroupsMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DBParameterGroupDetails)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_db_subnet_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDBSubnetGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDBSubnetGroupsMessage)
        o.output = Shapes::ShapeRef.new(shape: DBSubnetGroupMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_engine_default_cluster_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEngineDefaultClusterParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEngineDefaultClusterParametersResult)
      end)

      api.add_operation(:describe_engine_default_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEngineDefaultParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeEngineDefaultParametersResult)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "engine_defaults.marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_event_categories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventCategories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventCategoriesMessage)
        o.output = Shapes::ShapeRef.new(shape: EventCategoriesMessage)
      end)

      api.add_operation(:describe_event_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEventSubscriptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventSubscriptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: EventSubscriptionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        o.output = Shapes::ShapeRef.new(shape: EventsMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_global_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGlobalClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGlobalClustersMessage)
        o.output = Shapes::ShapeRef.new(shape: GlobalClustersMessage)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_orderable_db_instance_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrderableDBInstanceOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrderableDBInstanceOptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: OrderableDBInstanceOptionsMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_pending_maintenance_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePendingMaintenanceActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePendingMaintenanceActionsMessage)
        o.output = Shapes::ShapeRef.new(shape: PendingMaintenanceActionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundFault)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "marker" => "marker"
          }
        )
      end)

      api.add_operation(:describe_valid_db_instance_modifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeValidDBInstanceModifications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeValidDBInstanceModificationsMessage)
        o.output = Shapes::ShapeRef.new(shape: DescribeValidDBInstanceModificationsResult)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:failover_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FailoverDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: FailoverDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: FailoverDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:failover_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "FailoverGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: FailoverGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: FailoverGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: TagListMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:modify_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSubnetGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
      end)

      api.add_operation(:modify_db_cluster_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBClusterEndpoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterEndpointMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBClusterEndpointOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterEndpointStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterEndpointNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:modify_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
      end)

      api.add_operation(:modify_db_cluster_snapshot_attribute, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBClusterSnapshotAttribute"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBClusterSnapshotAttributeResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: SharedSnapshotQuotaExceededFault)
      end)

      api.add_operation(:modify_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSecurityGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSecurityGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBInstanceCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedIopsNotAvailableInAZFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBUpgradeDependencyFailureFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageTypeNotSupportedFault)
        o.errors << Shapes::ShapeRef.new(shape: AuthorizationNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: CertificateNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotFoundFault)
      end)

      api.add_operation(:modify_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
      end)

      api.add_operation(:modify_db_subnet_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyDBSubnetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyDBSubnetGroupResult)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubnetAlreadyInUse)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupDoesNotCoverEnoughAZs)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
      end)

      api.add_operation(:modify_event_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyEventSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyEventSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyEventSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: EventSubscriptionQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSInvalidTopicFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSNoAuthorizationFault)
        o.errors << Shapes::ShapeRef.new(shape: SNSTopicArnNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionCategoryNotFoundFault)
      end)

      api.add_operation(:modify_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ModifyGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ModifyGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: ModifyGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
      end)

      api.add_operation(:promote_read_replica_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PromoteReadReplicaDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PromoteReadReplicaDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: PromoteReadReplicaDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)

      api.add_operation(:reboot_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootDBInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootDBInstanceMessage)
        o.output = Shapes::ShapeRef.new(shape: RebootDBInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
      end)

      api.add_operation(:remove_from_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFromGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: RemoveFromGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:remove_role_from_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveRoleFromDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveRoleFromDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterRoleNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
      end)

      api.add_operation(:remove_source_identifier_from_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveSourceIdentifierFromSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveSourceIdentifierFromSubscriptionMessage)
        o.output = Shapes::ShapeRef.new(shape: RemoveSourceIdentifierFromSubscriptionResult)
        o.errors << Shapes::ShapeRef.new(shape: SubscriptionNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: SourceNotFoundFault)
      end)

      api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTagsFromResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: DBInstanceNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)

      api.add_operation(:reset_db_cluster_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetDBClusterParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetDBClusterParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBClusterParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:reset_db_parameter_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResetDBParameterGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResetDBParameterGroupMessage)
        o.output = Shapes::ShapeRef.new(shape: DBParameterGroupNameMessage)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBParameterGroupStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBParameterGroupNotFoundFault)
      end)

      api.add_operation(:restore_db_cluster_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDBClusterFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotMessage)
        o.output = Shapes::ShapeRef.new(shape: RestoreDBClusterFromSnapshotResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
      end)

      api.add_operation(:restore_db_cluster_to_point_in_time, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreDBClusterToPointInTime"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeMessage)
        o.output = Shapes::ShapeRef.new(shape: RestoreDBClusterToPointInTimeResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterAlreadyExistsFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterSnapshotNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: DBSubnetGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDBClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientStorageClusterCapacityFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBSnapshotStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRestoreFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSubnet)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVPCNetworkStateFault)
        o.errors << Shapes::ShapeRef.new(shape: KMSKeyNotAccessibleFault)
        o.errors << Shapes::ShapeRef.new(shape: OptionGroupNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: StorageQuotaExceededFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterParameterGroupNotFoundFault)
      end)

      api.add_operation(:start_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: StartDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:stop_db_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDBCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopDBClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: StopDBClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBInstanceStateFault)
      end)

      api.add_operation(:switchover_global_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SwitchoverGlobalCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SwitchoverGlobalClusterMessage)
        o.output = Shapes::ShapeRef.new(shape: SwitchoverGlobalClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: GlobalClusterNotFoundFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGlobalClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDBClusterStateFault)
        o.errors << Shapes::ShapeRef.new(shape: DBClusterNotFoundFault)
      end)
    end

  end
end
