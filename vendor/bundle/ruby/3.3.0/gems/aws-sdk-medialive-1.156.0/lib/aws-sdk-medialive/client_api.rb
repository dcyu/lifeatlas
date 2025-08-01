# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MediaLive
  # @api private
  module ClientApi

    include Seahorse::Model

    AacCodingMode = Shapes::StringShape.new(name: 'AacCodingMode')
    AacInputType = Shapes::StringShape.new(name: 'AacInputType')
    AacProfile = Shapes::StringShape.new(name: 'AacProfile')
    AacRateControlMode = Shapes::StringShape.new(name: 'AacRateControlMode')
    AacRawFormat = Shapes::StringShape.new(name: 'AacRawFormat')
    AacSettings = Shapes::StructureShape.new(name: 'AacSettings')
    AacSpec = Shapes::StringShape.new(name: 'AacSpec')
    AacVbrQuality = Shapes::StringShape.new(name: 'AacVbrQuality')
    Ac3AttenuationControl = Shapes::StringShape.new(name: 'Ac3AttenuationControl')
    Ac3BitstreamMode = Shapes::StringShape.new(name: 'Ac3BitstreamMode')
    Ac3CodingMode = Shapes::StringShape.new(name: 'Ac3CodingMode')
    Ac3DrcProfile = Shapes::StringShape.new(name: 'Ac3DrcProfile')
    Ac3LfeFilter = Shapes::StringShape.new(name: 'Ac3LfeFilter')
    Ac3MetadataControl = Shapes::StringShape.new(name: 'Ac3MetadataControl')
    Ac3Settings = Shapes::StructureShape.new(name: 'Ac3Settings')
    AcceptHeader = Shapes::StringShape.new(name: 'AcceptHeader')
    AcceptInputDeviceTransferRequest = Shapes::StructureShape.new(name: 'AcceptInputDeviceTransferRequest')
    AcceptInputDeviceTransferResponse = Shapes::StructureShape.new(name: 'AcceptInputDeviceTransferResponse')
    AccessDenied = Shapes::StructureShape.new(name: 'AccessDenied')
    AccessibilityType = Shapes::StringShape.new(name: 'AccessibilityType')
    AccountConfiguration = Shapes::StructureShape.new(name: 'AccountConfiguration')
    AfdSignaling = Shapes::StringShape.new(name: 'AfdSignaling')
    Algorithm = Shapes::StringShape.new(name: 'Algorithm')
    AncillarySourceSettings = Shapes::StructureShape.new(name: 'AncillarySourceSettings')
    AnywhereSettings = Shapes::StructureShape.new(name: 'AnywhereSettings')
    ArchiveCdnSettings = Shapes::StructureShape.new(name: 'ArchiveCdnSettings')
    ArchiveContainerSettings = Shapes::StructureShape.new(name: 'ArchiveContainerSettings')
    ArchiveGroupSettings = Shapes::StructureShape.new(name: 'ArchiveGroupSettings')
    ArchiveOutputSettings = Shapes::StructureShape.new(name: 'ArchiveOutputSettings')
    ArchiveS3LogUploads = Shapes::StringShape.new(name: 'ArchiveS3LogUploads')
    ArchiveS3Settings = Shapes::StructureShape.new(name: 'ArchiveS3Settings')
    AribDestinationSettings = Shapes::StructureShape.new(name: 'AribDestinationSettings')
    AribSourceSettings = Shapes::StructureShape.new(name: 'AribSourceSettings')
    AudioChannelMapping = Shapes::StructureShape.new(name: 'AudioChannelMapping')
    AudioCodecSettings = Shapes::StructureShape.new(name: 'AudioCodecSettings')
    AudioDescription = Shapes::StructureShape.new(name: 'AudioDescription')
    AudioDescriptionAudioTypeControl = Shapes::StringShape.new(name: 'AudioDescriptionAudioTypeControl')
    AudioDescriptionLanguageCodeControl = Shapes::StringShape.new(name: 'AudioDescriptionLanguageCodeControl')
    AudioDolbyEDecode = Shapes::StructureShape.new(name: 'AudioDolbyEDecode')
    AudioHlsRenditionSelection = Shapes::StructureShape.new(name: 'AudioHlsRenditionSelection')
    AudioLanguageSelection = Shapes::StructureShape.new(name: 'AudioLanguageSelection')
    AudioLanguageSelectionPolicy = Shapes::StringShape.new(name: 'AudioLanguageSelectionPolicy')
    AudioNormalizationAlgorithm = Shapes::StringShape.new(name: 'AudioNormalizationAlgorithm')
    AudioNormalizationAlgorithmControl = Shapes::StringShape.new(name: 'AudioNormalizationAlgorithmControl')
    AudioNormalizationSettings = Shapes::StructureShape.new(name: 'AudioNormalizationSettings')
    AudioOnlyHlsSegmentType = Shapes::StringShape.new(name: 'AudioOnlyHlsSegmentType')
    AudioOnlyHlsSettings = Shapes::StructureShape.new(name: 'AudioOnlyHlsSettings')
    AudioOnlyHlsTrackType = Shapes::StringShape.new(name: 'AudioOnlyHlsTrackType')
    AudioPidSelection = Shapes::StructureShape.new(name: 'AudioPidSelection')
    AudioSelector = Shapes::StructureShape.new(name: 'AudioSelector')
    AudioSelectorSettings = Shapes::StructureShape.new(name: 'AudioSelectorSettings')
    AudioSilenceFailoverSettings = Shapes::StructureShape.new(name: 'AudioSilenceFailoverSettings')
    AudioTrack = Shapes::StructureShape.new(name: 'AudioTrack')
    AudioTrackSelection = Shapes::StructureShape.new(name: 'AudioTrackSelection')
    AudioType = Shapes::StringShape.new(name: 'AudioType')
    AudioWatermarkSettings = Shapes::StructureShape.new(name: 'AudioWatermarkSettings')
    AuthenticationScheme = Shapes::StringShape.new(name: 'AuthenticationScheme')
    AutomaticInputFailoverSettings = Shapes::StructureShape.new(name: 'AutomaticInputFailoverSettings')
    Av1ColorSpaceSettings = Shapes::StructureShape.new(name: 'Av1ColorSpaceSettings')
    Av1GopSizeUnits = Shapes::StringShape.new(name: 'Av1GopSizeUnits')
    Av1Level = Shapes::StringShape.new(name: 'Av1Level')
    Av1LookAheadRateControl = Shapes::StringShape.new(name: 'Av1LookAheadRateControl')
    Av1RateControlMode = Shapes::StringShape.new(name: 'Av1RateControlMode')
    Av1SceneChangeDetect = Shapes::StringShape.new(name: 'Av1SceneChangeDetect')
    Av1Settings = Shapes::StructureShape.new(name: 'Av1Settings')
    AvailBlanking = Shapes::StructureShape.new(name: 'AvailBlanking')
    AvailBlankingState = Shapes::StringShape.new(name: 'AvailBlankingState')
    AvailConfiguration = Shapes::StructureShape.new(name: 'AvailConfiguration')
    AvailSettings = Shapes::StructureShape.new(name: 'AvailSettings')
    BadGatewayException = Shapes::StructureShape.new(name: 'BadGatewayException')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BadRequestExceptionResponseContent = Shapes::StructureShape.new(name: 'BadRequestExceptionResponseContent')
    BandwidthReductionFilterSettings = Shapes::StructureShape.new(name: 'BandwidthReductionFilterSettings')
    BandwidthReductionFilterStrength = Shapes::StringShape.new(name: 'BandwidthReductionFilterStrength')
    BandwidthReductionPostFilterSharpening = Shapes::StringShape.new(name: 'BandwidthReductionPostFilterSharpening')
    BatchDelete = Shapes::StructureShape.new(name: 'BatchDelete')
    BatchDeleteRequest = Shapes::StructureShape.new(name: 'BatchDeleteRequest')
    BatchDeleteResponse = Shapes::StructureShape.new(name: 'BatchDeleteResponse')
    BatchDeleteResultModel = Shapes::StructureShape.new(name: 'BatchDeleteResultModel')
    BatchFailedResultModel = Shapes::StructureShape.new(name: 'BatchFailedResultModel')
    BatchScheduleActionCreateRequest = Shapes::StructureShape.new(name: 'BatchScheduleActionCreateRequest')
    BatchScheduleActionCreateResult = Shapes::StructureShape.new(name: 'BatchScheduleActionCreateResult')
    BatchScheduleActionDeleteRequest = Shapes::StructureShape.new(name: 'BatchScheduleActionDeleteRequest')
    BatchScheduleActionDeleteResult = Shapes::StructureShape.new(name: 'BatchScheduleActionDeleteResult')
    BatchStart = Shapes::StructureShape.new(name: 'BatchStart')
    BatchStartRequest = Shapes::StructureShape.new(name: 'BatchStartRequest')
    BatchStartResponse = Shapes::StructureShape.new(name: 'BatchStartResponse')
    BatchStartResultModel = Shapes::StructureShape.new(name: 'BatchStartResultModel')
    BatchStop = Shapes::StructureShape.new(name: 'BatchStop')
    BatchStopRequest = Shapes::StructureShape.new(name: 'BatchStopRequest')
    BatchStopResponse = Shapes::StructureShape.new(name: 'BatchStopResponse')
    BatchStopResultModel = Shapes::StructureShape.new(name: 'BatchStopResultModel')
    BatchSuccessfulResultModel = Shapes::StructureShape.new(name: 'BatchSuccessfulResultModel')
    BatchUpdateScheduleRequest = Shapes::StructureShape.new(name: 'BatchUpdateScheduleRequest')
    BatchUpdateScheduleResponse = Shapes::StructureShape.new(name: 'BatchUpdateScheduleResponse')
    BatchUpdateScheduleResult = Shapes::StructureShape.new(name: 'BatchUpdateScheduleResult')
    BlackoutSlate = Shapes::StructureShape.new(name: 'BlackoutSlate')
    BlackoutSlateNetworkEndBlackout = Shapes::StringShape.new(name: 'BlackoutSlateNetworkEndBlackout')
    BlackoutSlateState = Shapes::StringShape.new(name: 'BlackoutSlateState')
    BurnInAlignment = Shapes::StringShape.new(name: 'BurnInAlignment')
    BurnInBackgroundColor = Shapes::StringShape.new(name: 'BurnInBackgroundColor')
    BurnInDestinationSettings = Shapes::StructureShape.new(name: 'BurnInDestinationSettings')
    BurnInFontColor = Shapes::StringShape.new(name: 'BurnInFontColor')
    BurnInOutlineColor = Shapes::StringShape.new(name: 'BurnInOutlineColor')
    BurnInShadowColor = Shapes::StringShape.new(name: 'BurnInShadowColor')
    BurnInTeletextGridControl = Shapes::StringShape.new(name: 'BurnInTeletextGridControl')
    CancelInputDeviceTransferRequest = Shapes::StructureShape.new(name: 'CancelInputDeviceTransferRequest')
    CancelInputDeviceTransferResponse = Shapes::StructureShape.new(name: 'CancelInputDeviceTransferResponse')
    CaptionDescription = Shapes::StructureShape.new(name: 'CaptionDescription')
    CaptionDestinationSettings = Shapes::StructureShape.new(name: 'CaptionDestinationSettings')
    CaptionLanguageMapping = Shapes::StructureShape.new(name: 'CaptionLanguageMapping')
    CaptionRectangle = Shapes::StructureShape.new(name: 'CaptionRectangle')
    CaptionSelector = Shapes::StructureShape.new(name: 'CaptionSelector')
    CaptionSelectorSettings = Shapes::StructureShape.new(name: 'CaptionSelectorSettings')
    CdiInputResolution = Shapes::StringShape.new(name: 'CdiInputResolution')
    CdiInputSpecification = Shapes::StructureShape.new(name: 'CdiInputSpecification')
    Channel = Shapes::StructureShape.new(name: 'Channel')
    ChannelClass = Shapes::StringShape.new(name: 'ChannelClass')
    ChannelConfigurationValidationError = Shapes::StructureShape.new(name: 'ChannelConfigurationValidationError')
    ChannelEgressEndpoint = Shapes::StructureShape.new(name: 'ChannelEgressEndpoint')
    ChannelEngineVersionRequest = Shapes::StructureShape.new(name: 'ChannelEngineVersionRequest')
    ChannelEngineVersionResponse = Shapes::StructureShape.new(name: 'ChannelEngineVersionResponse')
    ChannelPipelineIdToRestart = Shapes::StringShape.new(name: 'ChannelPipelineIdToRestart')
    ChannelPlacementGroupState = Shapes::StringShape.new(name: 'ChannelPlacementGroupState')
    ChannelState = Shapes::StringShape.new(name: 'ChannelState')
    ChannelSummary = Shapes::StructureShape.new(name: 'ChannelSummary')
    ClaimDeviceRequest = Shapes::StructureShape.new(name: 'ClaimDeviceRequest')
    ClaimDeviceResponse = Shapes::StructureShape.new(name: 'ClaimDeviceResponse')
    CloudWatchAlarmTemplateComparisonOperator = Shapes::StringShape.new(name: 'CloudWatchAlarmTemplateComparisonOperator')
    CloudWatchAlarmTemplateGroupSummary = Shapes::StructureShape.new(name: 'CloudWatchAlarmTemplateGroupSummary')
    CloudWatchAlarmTemplateStatistic = Shapes::StringShape.new(name: 'CloudWatchAlarmTemplateStatistic')
    CloudWatchAlarmTemplateSummary = Shapes::StructureShape.new(name: 'CloudWatchAlarmTemplateSummary')
    CloudWatchAlarmTemplateTargetResourceType = Shapes::StringShape.new(name: 'CloudWatchAlarmTemplateTargetResourceType')
    CloudWatchAlarmTemplateTreatMissingData = Shapes::StringShape.new(name: 'CloudWatchAlarmTemplateTreatMissingData')
    ClusterNetworkSettings = Shapes::StructureShape.new(name: 'ClusterNetworkSettings')
    ClusterNetworkSettingsCreateRequest = Shapes::StructureShape.new(name: 'ClusterNetworkSettingsCreateRequest')
    ClusterNetworkSettingsUpdateRequest = Shapes::StructureShape.new(name: 'ClusterNetworkSettingsUpdateRequest')
    ClusterState = Shapes::StringShape.new(name: 'ClusterState')
    ClusterType = Shapes::StringShape.new(name: 'ClusterType')
    CmafId3Behavior = Shapes::StringShape.new(name: 'CmafId3Behavior')
    CmafIngestCaptionLanguageMapping = Shapes::StructureShape.new(name: 'CmafIngestCaptionLanguageMapping')
    CmafIngestGroupSettings = Shapes::StructureShape.new(name: 'CmafIngestGroupSettings')
    CmafIngestOutputSettings = Shapes::StructureShape.new(name: 'CmafIngestOutputSettings')
    CmafIngestSegmentLengthUnits = Shapes::StringShape.new(name: 'CmafIngestSegmentLengthUnits')
    CmafKLVBehavior = Shapes::StringShape.new(name: 'CmafKLVBehavior')
    CmafNielsenId3Behavior = Shapes::StringShape.new(name: 'CmafNielsenId3Behavior')
    CmafTimedMetadataId3Frame = Shapes::StringShape.new(name: 'CmafTimedMetadataId3Frame')
    CmafTimedMetadataPassthrough = Shapes::StringShape.new(name: 'CmafTimedMetadataPassthrough')
    ColorCorrection = Shapes::StructureShape.new(name: 'ColorCorrection')
    ColorCorrectionSettings = Shapes::StructureShape.new(name: 'ColorCorrectionSettings')
    ColorSpace = Shapes::StringShape.new(name: 'ColorSpace')
    ColorSpacePassthroughSettings = Shapes::StructureShape.new(name: 'ColorSpacePassthroughSettings')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictExceptionResponseContent = Shapes::StructureShape.new(name: 'ConflictExceptionResponseContent')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateChannel = Shapes::StructureShape.new(name: 'CreateChannel')
    CreateChannelPlacementGroupRequest = Shapes::StructureShape.new(name: 'CreateChannelPlacementGroupRequest')
    CreateChannelPlacementGroupResponse = Shapes::StructureShape.new(name: 'CreateChannelPlacementGroupResponse')
    CreateChannelRequest = Shapes::StructureShape.new(name: 'CreateChannelRequest')
    CreateChannelResponse = Shapes::StructureShape.new(name: 'CreateChannelResponse')
    CreateChannelResultModel = Shapes::StructureShape.new(name: 'CreateChannelResultModel')
    CreateCloudWatchAlarmTemplateGroupRequest = Shapes::StructureShape.new(name: 'CreateCloudWatchAlarmTemplateGroupRequest')
    CreateCloudWatchAlarmTemplateGroupRequestContent = Shapes::StructureShape.new(name: 'CreateCloudWatchAlarmTemplateGroupRequestContent')
    CreateCloudWatchAlarmTemplateGroupResponse = Shapes::StructureShape.new(name: 'CreateCloudWatchAlarmTemplateGroupResponse')
    CreateCloudWatchAlarmTemplateGroupResponseContent = Shapes::StructureShape.new(name: 'CreateCloudWatchAlarmTemplateGroupResponseContent')
    CreateCloudWatchAlarmTemplateRequest = Shapes::StructureShape.new(name: 'CreateCloudWatchAlarmTemplateRequest')
    CreateCloudWatchAlarmTemplateRequestContent = Shapes::StructureShape.new(name: 'CreateCloudWatchAlarmTemplateRequestContent')
    CreateCloudWatchAlarmTemplateResponse = Shapes::StructureShape.new(name: 'CreateCloudWatchAlarmTemplateResponse')
    CreateCloudWatchAlarmTemplateResponseContent = Shapes::StructureShape.new(name: 'CreateCloudWatchAlarmTemplateResponseContent')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    CreateEventBridgeRuleTemplateGroupRequest = Shapes::StructureShape.new(name: 'CreateEventBridgeRuleTemplateGroupRequest')
    CreateEventBridgeRuleTemplateGroupRequestContent = Shapes::StructureShape.new(name: 'CreateEventBridgeRuleTemplateGroupRequestContent')
    CreateEventBridgeRuleTemplateGroupResponse = Shapes::StructureShape.new(name: 'CreateEventBridgeRuleTemplateGroupResponse')
    CreateEventBridgeRuleTemplateGroupResponseContent = Shapes::StructureShape.new(name: 'CreateEventBridgeRuleTemplateGroupResponseContent')
    CreateEventBridgeRuleTemplateRequest = Shapes::StructureShape.new(name: 'CreateEventBridgeRuleTemplateRequest')
    CreateEventBridgeRuleTemplateRequestContent = Shapes::StructureShape.new(name: 'CreateEventBridgeRuleTemplateRequestContent')
    CreateEventBridgeRuleTemplateResponse = Shapes::StructureShape.new(name: 'CreateEventBridgeRuleTemplateResponse')
    CreateEventBridgeRuleTemplateResponseContent = Shapes::StructureShape.new(name: 'CreateEventBridgeRuleTemplateResponseContent')
    CreateInput = Shapes::StructureShape.new(name: 'CreateInput')
    CreateInputRequest = Shapes::StructureShape.new(name: 'CreateInputRequest')
    CreateInputResponse = Shapes::StructureShape.new(name: 'CreateInputResponse')
    CreateInputResultModel = Shapes::StructureShape.new(name: 'CreateInputResultModel')
    CreateInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'CreateInputSecurityGroupRequest')
    CreateInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'CreateInputSecurityGroupResponse')
    CreateInputSecurityGroupResultModel = Shapes::StructureShape.new(name: 'CreateInputSecurityGroupResultModel')
    CreateMultiplex = Shapes::StructureShape.new(name: 'CreateMultiplex')
    CreateMultiplexProgram = Shapes::StructureShape.new(name: 'CreateMultiplexProgram')
    CreateMultiplexProgramRequest = Shapes::StructureShape.new(name: 'CreateMultiplexProgramRequest')
    CreateMultiplexProgramResponse = Shapes::StructureShape.new(name: 'CreateMultiplexProgramResponse')
    CreateMultiplexProgramResultModel = Shapes::StructureShape.new(name: 'CreateMultiplexProgramResultModel')
    CreateMultiplexRequest = Shapes::StructureShape.new(name: 'CreateMultiplexRequest')
    CreateMultiplexResponse = Shapes::StructureShape.new(name: 'CreateMultiplexResponse')
    CreateMultiplexResultModel = Shapes::StructureShape.new(name: 'CreateMultiplexResultModel')
    CreateNetworkRequest = Shapes::StructureShape.new(name: 'CreateNetworkRequest')
    CreateNetworkResponse = Shapes::StructureShape.new(name: 'CreateNetworkResponse')
    CreateNodeRegistrationScriptRequest = Shapes::StructureShape.new(name: 'CreateNodeRegistrationScriptRequest')
    CreateNodeRegistrationScriptResponse = Shapes::StructureShape.new(name: 'CreateNodeRegistrationScriptResponse')
    CreateNodeRegistrationScriptResult = Shapes::StructureShape.new(name: 'CreateNodeRegistrationScriptResult')
    CreateNodeRequest = Shapes::StructureShape.new(name: 'CreateNodeRequest')
    CreateNodeResponse = Shapes::StructureShape.new(name: 'CreateNodeResponse')
    CreatePartnerInput = Shapes::StructureShape.new(name: 'CreatePartnerInput')
    CreatePartnerInputRequest = Shapes::StructureShape.new(name: 'CreatePartnerInputRequest')
    CreatePartnerInputResponse = Shapes::StructureShape.new(name: 'CreatePartnerInputResponse')
    CreatePartnerInputResultModel = Shapes::StructureShape.new(name: 'CreatePartnerInputResultModel')
    CreateSdiSourceRequest = Shapes::StructureShape.new(name: 'CreateSdiSourceRequest')
    CreateSdiSourceResponse = Shapes::StructureShape.new(name: 'CreateSdiSourceResponse')
    CreateSignalMapRequest = Shapes::StructureShape.new(name: 'CreateSignalMapRequest')
    CreateSignalMapRequestContent = Shapes::StructureShape.new(name: 'CreateSignalMapRequestContent')
    CreateSignalMapResponse = Shapes::StructureShape.new(name: 'CreateSignalMapResponse')
    CreateSignalMapResponseContent = Shapes::StructureShape.new(name: 'CreateSignalMapResponseContent')
    CreateTagsRequest = Shapes::StructureShape.new(name: 'CreateTagsRequest')
    DashRoleAudio = Shapes::StringShape.new(name: 'DashRoleAudio')
    DashRoleCaption = Shapes::StringShape.new(name: 'DashRoleCaption')
    DeleteChannelPlacementGroupRequest = Shapes::StructureShape.new(name: 'DeleteChannelPlacementGroupRequest')
    DeleteChannelPlacementGroupResponse = Shapes::StructureShape.new(name: 'DeleteChannelPlacementGroupResponse')
    DeleteChannelRequest = Shapes::StructureShape.new(name: 'DeleteChannelRequest')
    DeleteChannelResponse = Shapes::StructureShape.new(name: 'DeleteChannelResponse')
    DeleteCloudWatchAlarmTemplateGroupRequest = Shapes::StructureShape.new(name: 'DeleteCloudWatchAlarmTemplateGroupRequest')
    DeleteCloudWatchAlarmTemplateRequest = Shapes::StructureShape.new(name: 'DeleteCloudWatchAlarmTemplateRequest')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DeleteEventBridgeRuleTemplateGroupRequest = Shapes::StructureShape.new(name: 'DeleteEventBridgeRuleTemplateGroupRequest')
    DeleteEventBridgeRuleTemplateRequest = Shapes::StructureShape.new(name: 'DeleteEventBridgeRuleTemplateRequest')
    DeleteInputRequest = Shapes::StructureShape.new(name: 'DeleteInputRequest')
    DeleteInputResponse = Shapes::StructureShape.new(name: 'DeleteInputResponse')
    DeleteInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'DeleteInputSecurityGroupRequest')
    DeleteInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'DeleteInputSecurityGroupResponse')
    DeleteMultiplexProgramRequest = Shapes::StructureShape.new(name: 'DeleteMultiplexProgramRequest')
    DeleteMultiplexProgramResponse = Shapes::StructureShape.new(name: 'DeleteMultiplexProgramResponse')
    DeleteMultiplexRequest = Shapes::StructureShape.new(name: 'DeleteMultiplexRequest')
    DeleteMultiplexResponse = Shapes::StructureShape.new(name: 'DeleteMultiplexResponse')
    DeleteNetworkRequest = Shapes::StructureShape.new(name: 'DeleteNetworkRequest')
    DeleteNetworkResponse = Shapes::StructureShape.new(name: 'DeleteNetworkResponse')
    DeleteNodeRequest = Shapes::StructureShape.new(name: 'DeleteNodeRequest')
    DeleteNodeResponse = Shapes::StructureShape.new(name: 'DeleteNodeResponse')
    DeleteReservationRequest = Shapes::StructureShape.new(name: 'DeleteReservationRequest')
    DeleteReservationResponse = Shapes::StructureShape.new(name: 'DeleteReservationResponse')
    DeleteScheduleRequest = Shapes::StructureShape.new(name: 'DeleteScheduleRequest')
    DeleteScheduleResponse = Shapes::StructureShape.new(name: 'DeleteScheduleResponse')
    DeleteSdiSourceRequest = Shapes::StructureShape.new(name: 'DeleteSdiSourceRequest')
    DeleteSdiSourceResponse = Shapes::StructureShape.new(name: 'DeleteSdiSourceResponse')
    DeleteSignalMapRequest = Shapes::StructureShape.new(name: 'DeleteSignalMapRequest')
    DeleteTagsRequest = Shapes::StructureShape.new(name: 'DeleteTagsRequest')
    DescribeAccountConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeAccountConfigurationRequest')
    DescribeAccountConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeAccountConfigurationResponse')
    DescribeAccountConfigurationResultModel = Shapes::StructureShape.new(name: 'DescribeAccountConfigurationResultModel')
    DescribeAnywhereSettings = Shapes::StructureShape.new(name: 'DescribeAnywhereSettings')
    DescribeChannelPlacementGroupRequest = Shapes::StructureShape.new(name: 'DescribeChannelPlacementGroupRequest')
    DescribeChannelPlacementGroupResponse = Shapes::StructureShape.new(name: 'DescribeChannelPlacementGroupResponse')
    DescribeChannelPlacementGroupResult = Shapes::StructureShape.new(name: 'DescribeChannelPlacementGroupResult')
    DescribeChannelPlacementGroupSummary = Shapes::StructureShape.new(name: 'DescribeChannelPlacementGroupSummary')
    DescribeChannelRequest = Shapes::StructureShape.new(name: 'DescribeChannelRequest')
    DescribeChannelResponse = Shapes::StructureShape.new(name: 'DescribeChannelResponse')
    DescribeClusterRequest = Shapes::StructureShape.new(name: 'DescribeClusterRequest')
    DescribeClusterResponse = Shapes::StructureShape.new(name: 'DescribeClusterResponse')
    DescribeClusterResult = Shapes::StructureShape.new(name: 'DescribeClusterResult')
    DescribeClusterSummary = Shapes::StructureShape.new(name: 'DescribeClusterSummary')
    DescribeInputDeviceRequest = Shapes::StructureShape.new(name: 'DescribeInputDeviceRequest')
    DescribeInputDeviceResponse = Shapes::StructureShape.new(name: 'DescribeInputDeviceResponse')
    DescribeInputDeviceThumbnailRequest = Shapes::StructureShape.new(name: 'DescribeInputDeviceThumbnailRequest')
    DescribeInputDeviceThumbnailResponse = Shapes::StructureShape.new(name: 'DescribeInputDeviceThumbnailResponse')
    DescribeInputRequest = Shapes::StructureShape.new(name: 'DescribeInputRequest')
    DescribeInputResponse = Shapes::StructureShape.new(name: 'DescribeInputResponse')
    DescribeInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'DescribeInputSecurityGroupRequest')
    DescribeInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'DescribeInputSecurityGroupResponse')
    DescribeMultiplexProgramRequest = Shapes::StructureShape.new(name: 'DescribeMultiplexProgramRequest')
    DescribeMultiplexProgramResponse = Shapes::StructureShape.new(name: 'DescribeMultiplexProgramResponse')
    DescribeMultiplexRequest = Shapes::StructureShape.new(name: 'DescribeMultiplexRequest')
    DescribeMultiplexResponse = Shapes::StructureShape.new(name: 'DescribeMultiplexResponse')
    DescribeNetworkRequest = Shapes::StructureShape.new(name: 'DescribeNetworkRequest')
    DescribeNetworkResponse = Shapes::StructureShape.new(name: 'DescribeNetworkResponse')
    DescribeNetworkResult = Shapes::StructureShape.new(name: 'DescribeNetworkResult')
    DescribeNetworkSummary = Shapes::StructureShape.new(name: 'DescribeNetworkSummary')
    DescribeNodeRequest = Shapes::StructureShape.new(name: 'DescribeNodeRequest')
    DescribeNodeResponse = Shapes::StructureShape.new(name: 'DescribeNodeResponse')
    DescribeNodeResult = Shapes::StructureShape.new(name: 'DescribeNodeResult')
    DescribeNodeSummary = Shapes::StructureShape.new(name: 'DescribeNodeSummary')
    DescribeOfferingRequest = Shapes::StructureShape.new(name: 'DescribeOfferingRequest')
    DescribeOfferingResponse = Shapes::StructureShape.new(name: 'DescribeOfferingResponse')
    DescribeReservationRequest = Shapes::StructureShape.new(name: 'DescribeReservationRequest')
    DescribeReservationResponse = Shapes::StructureShape.new(name: 'DescribeReservationResponse')
    DescribeScheduleRequest = Shapes::StructureShape.new(name: 'DescribeScheduleRequest')
    DescribeScheduleResponse = Shapes::StructureShape.new(name: 'DescribeScheduleResponse')
    DescribeSdiSourceRequest = Shapes::StructureShape.new(name: 'DescribeSdiSourceRequest')
    DescribeSdiSourceResponse = Shapes::StructureShape.new(name: 'DescribeSdiSourceResponse')
    DescribeThumbnailsRequest = Shapes::StructureShape.new(name: 'DescribeThumbnailsRequest')
    DescribeThumbnailsResponse = Shapes::StructureShape.new(name: 'DescribeThumbnailsResponse')
    DescribeThumbnailsResultModel = Shapes::StructureShape.new(name: 'DescribeThumbnailsResultModel')
    DeviceSettingsSyncState = Shapes::StringShape.new(name: 'DeviceSettingsSyncState')
    DeviceUpdateStatus = Shapes::StringShape.new(name: 'DeviceUpdateStatus')
    DolbyEProgramSelection = Shapes::StringShape.new(name: 'DolbyEProgramSelection')
    DolbyVision81Settings = Shapes::StructureShape.new(name: 'DolbyVision81Settings')
    DvbDashAccessibility = Shapes::StringShape.new(name: 'DvbDashAccessibility')
    DvbNitSettings = Shapes::StructureShape.new(name: 'DvbNitSettings')
    DvbSdtOutputSdt = Shapes::StringShape.new(name: 'DvbSdtOutputSdt')
    DvbSdtSettings = Shapes::StructureShape.new(name: 'DvbSdtSettings')
    DvbSubDestinationAlignment = Shapes::StringShape.new(name: 'DvbSubDestinationAlignment')
    DvbSubDestinationBackgroundColor = Shapes::StringShape.new(name: 'DvbSubDestinationBackgroundColor')
    DvbSubDestinationFontColor = Shapes::StringShape.new(name: 'DvbSubDestinationFontColor')
    DvbSubDestinationOutlineColor = Shapes::StringShape.new(name: 'DvbSubDestinationOutlineColor')
    DvbSubDestinationSettings = Shapes::StructureShape.new(name: 'DvbSubDestinationSettings')
    DvbSubDestinationShadowColor = Shapes::StringShape.new(name: 'DvbSubDestinationShadowColor')
    DvbSubDestinationTeletextGridControl = Shapes::StringShape.new(name: 'DvbSubDestinationTeletextGridControl')
    DvbSubOcrLanguage = Shapes::StringShape.new(name: 'DvbSubOcrLanguage')
    DvbSubSourceSettings = Shapes::StructureShape.new(name: 'DvbSubSourceSettings')
    DvbTdtSettings = Shapes::StructureShape.new(name: 'DvbTdtSettings')
    Eac3AtmosCodingMode = Shapes::StringShape.new(name: 'Eac3AtmosCodingMode')
    Eac3AtmosDrcLine = Shapes::StringShape.new(name: 'Eac3AtmosDrcLine')
    Eac3AtmosDrcRf = Shapes::StringShape.new(name: 'Eac3AtmosDrcRf')
    Eac3AtmosSettings = Shapes::StructureShape.new(name: 'Eac3AtmosSettings')
    Eac3AttenuationControl = Shapes::StringShape.new(name: 'Eac3AttenuationControl')
    Eac3BitstreamMode = Shapes::StringShape.new(name: 'Eac3BitstreamMode')
    Eac3CodingMode = Shapes::StringShape.new(name: 'Eac3CodingMode')
    Eac3DcFilter = Shapes::StringShape.new(name: 'Eac3DcFilter')
    Eac3DrcLine = Shapes::StringShape.new(name: 'Eac3DrcLine')
    Eac3DrcRf = Shapes::StringShape.new(name: 'Eac3DrcRf')
    Eac3LfeControl = Shapes::StringShape.new(name: 'Eac3LfeControl')
    Eac3LfeFilter = Shapes::StringShape.new(name: 'Eac3LfeFilter')
    Eac3MetadataControl = Shapes::StringShape.new(name: 'Eac3MetadataControl')
    Eac3PassthroughControl = Shapes::StringShape.new(name: 'Eac3PassthroughControl')
    Eac3PhaseControl = Shapes::StringShape.new(name: 'Eac3PhaseControl')
    Eac3Settings = Shapes::StructureShape.new(name: 'Eac3Settings')
    Eac3StereoDownmix = Shapes::StringShape.new(name: 'Eac3StereoDownmix')
    Eac3SurroundExMode = Shapes::StringShape.new(name: 'Eac3SurroundExMode')
    Eac3SurroundMode = Shapes::StringShape.new(name: 'Eac3SurroundMode')
    EbuTtDDestinationSettings = Shapes::StructureShape.new(name: 'EbuTtDDestinationSettings')
    EbuTtDDestinationStyleControl = Shapes::StringShape.new(name: 'EbuTtDDestinationStyleControl')
    EbuTtDFillLineGapControl = Shapes::StringShape.new(name: 'EbuTtDFillLineGapControl')
    EmbeddedConvert608To708 = Shapes::StringShape.new(name: 'EmbeddedConvert608To708')
    EmbeddedDestinationSettings = Shapes::StructureShape.new(name: 'EmbeddedDestinationSettings')
    EmbeddedPlusScte20DestinationSettings = Shapes::StructureShape.new(name: 'EmbeddedPlusScte20DestinationSettings')
    EmbeddedScte20Detection = Shapes::StringShape.new(name: 'EmbeddedScte20Detection')
    EmbeddedSourceSettings = Shapes::StructureShape.new(name: 'EmbeddedSourceSettings')
    Empty = Shapes::StructureShape.new(name: 'Empty')
    EncoderSettings = Shapes::StructureShape.new(name: 'EncoderSettings')
    EpochLockingSettings = Shapes::StructureShape.new(name: 'EpochLockingSettings')
    Esam = Shapes::StructureShape.new(name: 'Esam')
    EventBridgeRuleTemplateEventType = Shapes::StringShape.new(name: 'EventBridgeRuleTemplateEventType')
    EventBridgeRuleTemplateGroupSummary = Shapes::StructureShape.new(name: 'EventBridgeRuleTemplateGroupSummary')
    EventBridgeRuleTemplateSummary = Shapes::StructureShape.new(name: 'EventBridgeRuleTemplateSummary')
    EventBridgeRuleTemplateTarget = Shapes::StructureShape.new(name: 'EventBridgeRuleTemplateTarget')
    FailedMediaResourceMap = Shapes::MapShape.new(name: 'FailedMediaResourceMap')
    FailoverCondition = Shapes::StructureShape.new(name: 'FailoverCondition')
    FailoverConditionSettings = Shapes::StructureShape.new(name: 'FailoverConditionSettings')
    FeatureActivations = Shapes::StructureShape.new(name: 'FeatureActivations')
    FeatureActivationsInputPrepareScheduleActions = Shapes::StringShape.new(name: 'FeatureActivationsInputPrepareScheduleActions')
    FeatureActivationsOutputStaticImageOverlayScheduleActions = Shapes::StringShape.new(name: 'FeatureActivationsOutputStaticImageOverlayScheduleActions')
    FecOutputIncludeFec = Shapes::StringShape.new(name: 'FecOutputIncludeFec')
    FecOutputSettings = Shapes::StructureShape.new(name: 'FecOutputSettings')
    FixedAfd = Shapes::StringShape.new(name: 'FixedAfd')
    FixedModeScheduleActionStartSettings = Shapes::StructureShape.new(name: 'FixedModeScheduleActionStartSettings')
    Fmp4HlsSettings = Shapes::StructureShape.new(name: 'Fmp4HlsSettings')
    Fmp4NielsenId3Behavior = Shapes::StringShape.new(name: 'Fmp4NielsenId3Behavior')
    Fmp4TimedMetadataBehavior = Shapes::StringShape.new(name: 'Fmp4TimedMetadataBehavior')
    FollowModeScheduleActionStartSettings = Shapes::StructureShape.new(name: 'FollowModeScheduleActionStartSettings')
    FollowPoint = Shapes::StringShape.new(name: 'FollowPoint')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    ForbiddenExceptionResponseContent = Shapes::StructureShape.new(name: 'ForbiddenExceptionResponseContent')
    FrameCaptureCdnSettings = Shapes::StructureShape.new(name: 'FrameCaptureCdnSettings')
    FrameCaptureGroupSettings = Shapes::StructureShape.new(name: 'FrameCaptureGroupSettings')
    FrameCaptureHlsSettings = Shapes::StructureShape.new(name: 'FrameCaptureHlsSettings')
    FrameCaptureIntervalUnit = Shapes::StringShape.new(name: 'FrameCaptureIntervalUnit')
    FrameCaptureOutputSettings = Shapes::StructureShape.new(name: 'FrameCaptureOutputSettings')
    FrameCaptureS3LogUploads = Shapes::StringShape.new(name: 'FrameCaptureS3LogUploads')
    FrameCaptureS3Settings = Shapes::StructureShape.new(name: 'FrameCaptureS3Settings')
    FrameCaptureSettings = Shapes::StructureShape.new(name: 'FrameCaptureSettings')
    GatewayTimeoutException = Shapes::StructureShape.new(name: 'GatewayTimeoutException')
    GetCloudWatchAlarmTemplateGroupRequest = Shapes::StructureShape.new(name: 'GetCloudWatchAlarmTemplateGroupRequest')
    GetCloudWatchAlarmTemplateGroupResponse = Shapes::StructureShape.new(name: 'GetCloudWatchAlarmTemplateGroupResponse')
    GetCloudWatchAlarmTemplateGroupResponseContent = Shapes::StructureShape.new(name: 'GetCloudWatchAlarmTemplateGroupResponseContent')
    GetCloudWatchAlarmTemplateRequest = Shapes::StructureShape.new(name: 'GetCloudWatchAlarmTemplateRequest')
    GetCloudWatchAlarmTemplateResponse = Shapes::StructureShape.new(name: 'GetCloudWatchAlarmTemplateResponse')
    GetCloudWatchAlarmTemplateResponseContent = Shapes::StructureShape.new(name: 'GetCloudWatchAlarmTemplateResponseContent')
    GetEventBridgeRuleTemplateGroupRequest = Shapes::StructureShape.new(name: 'GetEventBridgeRuleTemplateGroupRequest')
    GetEventBridgeRuleTemplateGroupResponse = Shapes::StructureShape.new(name: 'GetEventBridgeRuleTemplateGroupResponse')
    GetEventBridgeRuleTemplateGroupResponseContent = Shapes::StructureShape.new(name: 'GetEventBridgeRuleTemplateGroupResponseContent')
    GetEventBridgeRuleTemplateRequest = Shapes::StructureShape.new(name: 'GetEventBridgeRuleTemplateRequest')
    GetEventBridgeRuleTemplateResponse = Shapes::StructureShape.new(name: 'GetEventBridgeRuleTemplateResponse')
    GetEventBridgeRuleTemplateResponseContent = Shapes::StructureShape.new(name: 'GetEventBridgeRuleTemplateResponseContent')
    GetSignalMapRequest = Shapes::StructureShape.new(name: 'GetSignalMapRequest')
    GetSignalMapResponse = Shapes::StructureShape.new(name: 'GetSignalMapResponse')
    GetSignalMapResponseContent = Shapes::StructureShape.new(name: 'GetSignalMapResponseContent')
    GlobalConfiguration = Shapes::StructureShape.new(name: 'GlobalConfiguration')
    GlobalConfigurationInputEndAction = Shapes::StringShape.new(name: 'GlobalConfigurationInputEndAction')
    GlobalConfigurationLowFramerateInputs = Shapes::StringShape.new(name: 'GlobalConfigurationLowFramerateInputs')
    GlobalConfigurationOutputLockingMode = Shapes::StringShape.new(name: 'GlobalConfigurationOutputLockingMode')
    GlobalConfigurationOutputTimingSource = Shapes::StringShape.new(name: 'GlobalConfigurationOutputTimingSource')
    H264AdaptiveQuantization = Shapes::StringShape.new(name: 'H264AdaptiveQuantization')
    H264ColorMetadata = Shapes::StringShape.new(name: 'H264ColorMetadata')
    H264ColorSpaceSettings = Shapes::StructureShape.new(name: 'H264ColorSpaceSettings')
    H264EntropyEncoding = Shapes::StringShape.new(name: 'H264EntropyEncoding')
    H264FilterSettings = Shapes::StructureShape.new(name: 'H264FilterSettings')
    H264FlickerAq = Shapes::StringShape.new(name: 'H264FlickerAq')
    H264ForceFieldPictures = Shapes::StringShape.new(name: 'H264ForceFieldPictures')
    H264FramerateControl = Shapes::StringShape.new(name: 'H264FramerateControl')
    H264GopBReference = Shapes::StringShape.new(name: 'H264GopBReference')
    H264GopSizeUnits = Shapes::StringShape.new(name: 'H264GopSizeUnits')
    H264Level = Shapes::StringShape.new(name: 'H264Level')
    H264LookAheadRateControl = Shapes::StringShape.new(name: 'H264LookAheadRateControl')
    H264ParControl = Shapes::StringShape.new(name: 'H264ParControl')
    H264Profile = Shapes::StringShape.new(name: 'H264Profile')
    H264QualityLevel = Shapes::StringShape.new(name: 'H264QualityLevel')
    H264RateControlMode = Shapes::StringShape.new(name: 'H264RateControlMode')
    H264ScanType = Shapes::StringShape.new(name: 'H264ScanType')
    H264SceneChangeDetect = Shapes::StringShape.new(name: 'H264SceneChangeDetect')
    H264Settings = Shapes::StructureShape.new(name: 'H264Settings')
    H264SpatialAq = Shapes::StringShape.new(name: 'H264SpatialAq')
    H264SubGopLength = Shapes::StringShape.new(name: 'H264SubGopLength')
    H264Syntax = Shapes::StringShape.new(name: 'H264Syntax')
    H264TemporalAq = Shapes::StringShape.new(name: 'H264TemporalAq')
    H264TimecodeInsertionBehavior = Shapes::StringShape.new(name: 'H264TimecodeInsertionBehavior')
    H265AdaptiveQuantization = Shapes::StringShape.new(name: 'H265AdaptiveQuantization')
    H265AlternativeTransferFunction = Shapes::StringShape.new(name: 'H265AlternativeTransferFunction')
    H265ColorMetadata = Shapes::StringShape.new(name: 'H265ColorMetadata')
    H265ColorSpaceSettings = Shapes::StructureShape.new(name: 'H265ColorSpaceSettings')
    H265Deblocking = Shapes::StringShape.new(name: 'H265Deblocking')
    H265FilterSettings = Shapes::StructureShape.new(name: 'H265FilterSettings')
    H265FlickerAq = Shapes::StringShape.new(name: 'H265FlickerAq')
    H265GopSizeUnits = Shapes::StringShape.new(name: 'H265GopSizeUnits')
    H265Level = Shapes::StringShape.new(name: 'H265Level')
    H265LookAheadRateControl = Shapes::StringShape.new(name: 'H265LookAheadRateControl')
    H265MvOverPictureBoundaries = Shapes::StringShape.new(name: 'H265MvOverPictureBoundaries')
    H265MvTemporalPredictor = Shapes::StringShape.new(name: 'H265MvTemporalPredictor')
    H265Profile = Shapes::StringShape.new(name: 'H265Profile')
    H265RateControlMode = Shapes::StringShape.new(name: 'H265RateControlMode')
    H265ScanType = Shapes::StringShape.new(name: 'H265ScanType')
    H265SceneChangeDetect = Shapes::StringShape.new(name: 'H265SceneChangeDetect')
    H265Settings = Shapes::StructureShape.new(name: 'H265Settings')
    H265Tier = Shapes::StringShape.new(name: 'H265Tier')
    H265TilePadding = Shapes::StringShape.new(name: 'H265TilePadding')
    H265TimecodeInsertionBehavior = Shapes::StringShape.new(name: 'H265TimecodeInsertionBehavior')
    H265TreeblockSize = Shapes::StringShape.new(name: 'H265TreeblockSize')
    Hdr10Settings = Shapes::StructureShape.new(name: 'Hdr10Settings')
    HlsAdMarkers = Shapes::StringShape.new(name: 'HlsAdMarkers')
    HlsAkamaiHttpTransferMode = Shapes::StringShape.new(name: 'HlsAkamaiHttpTransferMode')
    HlsAkamaiSettings = Shapes::StructureShape.new(name: 'HlsAkamaiSettings')
    HlsBasicPutSettings = Shapes::StructureShape.new(name: 'HlsBasicPutSettings')
    HlsCaptionLanguageSetting = Shapes::StringShape.new(name: 'HlsCaptionLanguageSetting')
    HlsCdnSettings = Shapes::StructureShape.new(name: 'HlsCdnSettings')
    HlsClientCache = Shapes::StringShape.new(name: 'HlsClientCache')
    HlsCodecSpecification = Shapes::StringShape.new(name: 'HlsCodecSpecification')
    HlsDirectoryStructure = Shapes::StringShape.new(name: 'HlsDirectoryStructure')
    HlsDiscontinuityTags = Shapes::StringShape.new(name: 'HlsDiscontinuityTags')
    HlsEncryptionType = Shapes::StringShape.new(name: 'HlsEncryptionType')
    HlsGroupSettings = Shapes::StructureShape.new(name: 'HlsGroupSettings')
    HlsH265PackagingType = Shapes::StringShape.new(name: 'HlsH265PackagingType')
    HlsId3SegmentTaggingScheduleActionSettings = Shapes::StructureShape.new(name: 'HlsId3SegmentTaggingScheduleActionSettings')
    HlsId3SegmentTaggingState = Shapes::StringShape.new(name: 'HlsId3SegmentTaggingState')
    HlsIncompleteSegmentBehavior = Shapes::StringShape.new(name: 'HlsIncompleteSegmentBehavior')
    HlsInputSettings = Shapes::StructureShape.new(name: 'HlsInputSettings')
    HlsIvInManifest = Shapes::StringShape.new(name: 'HlsIvInManifest')
    HlsIvSource = Shapes::StringShape.new(name: 'HlsIvSource')
    HlsManifestCompression = Shapes::StringShape.new(name: 'HlsManifestCompression')
    HlsManifestDurationFormat = Shapes::StringShape.new(name: 'HlsManifestDurationFormat')
    HlsMediaStoreSettings = Shapes::StructureShape.new(name: 'HlsMediaStoreSettings')
    HlsMediaStoreStorageClass = Shapes::StringShape.new(name: 'HlsMediaStoreStorageClass')
    HlsMode = Shapes::StringShape.new(name: 'HlsMode')
    HlsOutputSelection = Shapes::StringShape.new(name: 'HlsOutputSelection')
    HlsOutputSettings = Shapes::StructureShape.new(name: 'HlsOutputSettings')
    HlsProgramDateTime = Shapes::StringShape.new(name: 'HlsProgramDateTime')
    HlsProgramDateTimeClock = Shapes::StringShape.new(name: 'HlsProgramDateTimeClock')
    HlsRedundantManifest = Shapes::StringShape.new(name: 'HlsRedundantManifest')
    HlsS3LogUploads = Shapes::StringShape.new(name: 'HlsS3LogUploads')
    HlsS3Settings = Shapes::StructureShape.new(name: 'HlsS3Settings')
    HlsScte35SourceType = Shapes::StringShape.new(name: 'HlsScte35SourceType')
    HlsSegmentationMode = Shapes::StringShape.new(name: 'HlsSegmentationMode')
    HlsSettings = Shapes::StructureShape.new(name: 'HlsSettings')
    HlsStreamInfResolution = Shapes::StringShape.new(name: 'HlsStreamInfResolution')
    HlsTimedMetadataId3Frame = Shapes::StringShape.new(name: 'HlsTimedMetadataId3Frame')
    HlsTimedMetadataScheduleActionSettings = Shapes::StructureShape.new(name: 'HlsTimedMetadataScheduleActionSettings')
    HlsTsFileMode = Shapes::StringShape.new(name: 'HlsTsFileMode')
    HlsWebdavHttpTransferMode = Shapes::StringShape.new(name: 'HlsWebdavHttpTransferMode')
    HlsWebdavSettings = Shapes::StructureShape.new(name: 'HlsWebdavSettings')
    HtmlMotionGraphicsSettings = Shapes::StructureShape.new(name: 'HtmlMotionGraphicsSettings')
    IFrameOnlyPlaylistType = Shapes::StringShape.new(name: 'IFrameOnlyPlaylistType')
    Id3SegmentTaggingScheduleActionSettings = Shapes::StructureShape.new(name: 'Id3SegmentTaggingScheduleActionSettings')
    ImmediateModeScheduleActionStartSettings = Shapes::StructureShape.new(name: 'ImmediateModeScheduleActionStartSettings')
    IncludeFillerNalUnits = Shapes::StringShape.new(name: 'IncludeFillerNalUnits')
    Input = Shapes::StructureShape.new(name: 'Input')
    InputAttachment = Shapes::StructureShape.new(name: 'InputAttachment')
    InputChannelLevel = Shapes::StructureShape.new(name: 'InputChannelLevel')
    InputClass = Shapes::StringShape.new(name: 'InputClass')
    InputClippingSettings = Shapes::StructureShape.new(name: 'InputClippingSettings')
    InputCodec = Shapes::StringShape.new(name: 'InputCodec')
    InputDeblockFilter = Shapes::StringShape.new(name: 'InputDeblockFilter')
    InputDenoiseFilter = Shapes::StringShape.new(name: 'InputDenoiseFilter')
    InputDestination = Shapes::StructureShape.new(name: 'InputDestination')
    InputDestinationRequest = Shapes::StructureShape.new(name: 'InputDestinationRequest')
    InputDestinationRoute = Shapes::StructureShape.new(name: 'InputDestinationRoute')
    InputDestinationVpc = Shapes::StructureShape.new(name: 'InputDestinationVpc')
    InputDevice = Shapes::StructureShape.new(name: 'InputDevice')
    InputDeviceActiveInput = Shapes::StringShape.new(name: 'InputDeviceActiveInput')
    InputDeviceCodec = Shapes::StringShape.new(name: 'InputDeviceCodec')
    InputDeviceConfigurableAudioChannelPairConfig = Shapes::StructureShape.new(name: 'InputDeviceConfigurableAudioChannelPairConfig')
    InputDeviceConfigurableAudioChannelPairProfile = Shapes::StringShape.new(name: 'InputDeviceConfigurableAudioChannelPairProfile')
    InputDeviceConfigurableSettings = Shapes::StructureShape.new(name: 'InputDeviceConfigurableSettings')
    InputDeviceConfigurationValidationError = Shapes::StructureShape.new(name: 'InputDeviceConfigurationValidationError')
    InputDeviceConfiguredInput = Shapes::StringShape.new(name: 'InputDeviceConfiguredInput')
    InputDeviceConnectionState = Shapes::StringShape.new(name: 'InputDeviceConnectionState')
    InputDeviceHdSettings = Shapes::StructureShape.new(name: 'InputDeviceHdSettings')
    InputDeviceIpScheme = Shapes::StringShape.new(name: 'InputDeviceIpScheme')
    InputDeviceMediaConnectConfigurableSettings = Shapes::StructureShape.new(name: 'InputDeviceMediaConnectConfigurableSettings')
    InputDeviceMediaConnectSettings = Shapes::StructureShape.new(name: 'InputDeviceMediaConnectSettings')
    InputDeviceNetworkSettings = Shapes::StructureShape.new(name: 'InputDeviceNetworkSettings')
    InputDeviceOutputType = Shapes::StringShape.new(name: 'InputDeviceOutputType')
    InputDeviceRequest = Shapes::StructureShape.new(name: 'InputDeviceRequest')
    InputDeviceScanType = Shapes::StringShape.new(name: 'InputDeviceScanType')
    InputDeviceSettings = Shapes::StructureShape.new(name: 'InputDeviceSettings')
    InputDeviceState = Shapes::StringShape.new(name: 'InputDeviceState')
    InputDeviceSummary = Shapes::StructureShape.new(name: 'InputDeviceSummary')
    InputDeviceThumbnail = Shapes::BlobShape.new(name: 'InputDeviceThumbnail', streaming: true)
    InputDeviceTransferType = Shapes::StringShape.new(name: 'InputDeviceTransferType')
    InputDeviceType = Shapes::StringShape.new(name: 'InputDeviceType')
    InputDeviceUhdAudioChannelPairConfig = Shapes::StructureShape.new(name: 'InputDeviceUhdAudioChannelPairConfig')
    InputDeviceUhdAudioChannelPairProfile = Shapes::StringShape.new(name: 'InputDeviceUhdAudioChannelPairProfile')
    InputDeviceUhdSettings = Shapes::StructureShape.new(name: 'InputDeviceUhdSettings')
    InputFilter = Shapes::StringShape.new(name: 'InputFilter')
    InputLocation = Shapes::StructureShape.new(name: 'InputLocation')
    InputLossActionForHlsOut = Shapes::StringShape.new(name: 'InputLossActionForHlsOut')
    InputLossActionForMsSmoothOut = Shapes::StringShape.new(name: 'InputLossActionForMsSmoothOut')
    InputLossActionForRtmpOut = Shapes::StringShape.new(name: 'InputLossActionForRtmpOut')
    InputLossActionForUdpOut = Shapes::StringShape.new(name: 'InputLossActionForUdpOut')
    InputLossBehavior = Shapes::StructureShape.new(name: 'InputLossBehavior')
    InputLossFailoverSettings = Shapes::StructureShape.new(name: 'InputLossFailoverSettings')
    InputLossImageType = Shapes::StringShape.new(name: 'InputLossImageType')
    InputMaximumBitrate = Shapes::StringShape.new(name: 'InputMaximumBitrate')
    InputNetworkLocation = Shapes::StringShape.new(name: 'InputNetworkLocation')
    InputPreference = Shapes::StringShape.new(name: 'InputPreference')
    InputPrepareScheduleActionSettings = Shapes::StructureShape.new(name: 'InputPrepareScheduleActionSettings')
    InputRequestDestinationRoute = Shapes::StructureShape.new(name: 'InputRequestDestinationRoute')
    InputResolution = Shapes::StringShape.new(name: 'InputResolution')
    InputSdiSources = Shapes::ListShape.new(name: 'InputSdiSources')
    InputSdpLocation = Shapes::StructureShape.new(name: 'InputSdpLocation')
    InputSecurityGroup = Shapes::StructureShape.new(name: 'InputSecurityGroup')
    InputSecurityGroupState = Shapes::StringShape.new(name: 'InputSecurityGroupState')
    InputSecurityGroupWhitelistRequest = Shapes::StructureShape.new(name: 'InputSecurityGroupWhitelistRequest')
    InputSettings = Shapes::StructureShape.new(name: 'InputSettings')
    InputSource = Shapes::StructureShape.new(name: 'InputSource')
    InputSourceEndBehavior = Shapes::StringShape.new(name: 'InputSourceEndBehavior')
    InputSourceRequest = Shapes::StructureShape.new(name: 'InputSourceRequest')
    InputSourceType = Shapes::StringShape.new(name: 'InputSourceType')
    InputSpecification = Shapes::StructureShape.new(name: 'InputSpecification')
    InputState = Shapes::StringShape.new(name: 'InputState')
    InputSwitchScheduleActionSettings = Shapes::StructureShape.new(name: 'InputSwitchScheduleActionSettings')
    InputTimecodeSource = Shapes::StringShape.new(name: 'InputTimecodeSource')
    InputType = Shapes::StringShape.new(name: 'InputType')
    InputVpcRequest = Shapes::StructureShape.new(name: 'InputVpcRequest')
    InputWhitelistRule = Shapes::StructureShape.new(name: 'InputWhitelistRule')
    InputWhitelistRuleCidr = Shapes::StructureShape.new(name: 'InputWhitelistRuleCidr')
    InterfaceMapping = Shapes::StructureShape.new(name: 'InterfaceMapping')
    InterfaceMappingCreateRequest = Shapes::StructureShape.new(name: 'InterfaceMappingCreateRequest')
    InterfaceMappingUpdateRequest = Shapes::StructureShape.new(name: 'InterfaceMappingUpdateRequest')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    InternalServerErrorExceptionResponseContent = Shapes::StructureShape.new(name: 'InternalServerErrorExceptionResponseContent')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidRequest = Shapes::StructureShape.new(name: 'InvalidRequest')
    IpPool = Shapes::StructureShape.new(name: 'IpPool')
    IpPoolCreateRequest = Shapes::StructureShape.new(name: 'IpPoolCreateRequest')
    IpPoolUpdateRequest = Shapes::StructureShape.new(name: 'IpPoolUpdateRequest')
    KeyProviderSettings = Shapes::StructureShape.new(name: 'KeyProviderSettings')
    LastFrameClippingBehavior = Shapes::StringShape.new(name: 'LastFrameClippingBehavior')
    LimitExceeded = Shapes::StructureShape.new(name: 'LimitExceeded')
    ListChannelPlacementGroupsRequest = Shapes::StructureShape.new(name: 'ListChannelPlacementGroupsRequest')
    ListChannelPlacementGroupsResponse = Shapes::StructureShape.new(name: 'ListChannelPlacementGroupsResponse')
    ListChannelPlacementGroupsResult = Shapes::StructureShape.new(name: 'ListChannelPlacementGroupsResult')
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListChannelsResultModel = Shapes::StructureShape.new(name: 'ListChannelsResultModel')
    ListCloudWatchAlarmTemplateGroupsRequest = Shapes::StructureShape.new(name: 'ListCloudWatchAlarmTemplateGroupsRequest')
    ListCloudWatchAlarmTemplateGroupsResponse = Shapes::StructureShape.new(name: 'ListCloudWatchAlarmTemplateGroupsResponse')
    ListCloudWatchAlarmTemplateGroupsResponseContent = Shapes::StructureShape.new(name: 'ListCloudWatchAlarmTemplateGroupsResponseContent')
    ListCloudWatchAlarmTemplatesRequest = Shapes::StructureShape.new(name: 'ListCloudWatchAlarmTemplatesRequest')
    ListCloudWatchAlarmTemplatesResponse = Shapes::StructureShape.new(name: 'ListCloudWatchAlarmTemplatesResponse')
    ListCloudWatchAlarmTemplatesResponseContent = Shapes::StructureShape.new(name: 'ListCloudWatchAlarmTemplatesResponseContent')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListClustersResult = Shapes::StructureShape.new(name: 'ListClustersResult')
    ListEventBridgeRuleTemplateGroupsRequest = Shapes::StructureShape.new(name: 'ListEventBridgeRuleTemplateGroupsRequest')
    ListEventBridgeRuleTemplateGroupsResponse = Shapes::StructureShape.new(name: 'ListEventBridgeRuleTemplateGroupsResponse')
    ListEventBridgeRuleTemplateGroupsResponseContent = Shapes::StructureShape.new(name: 'ListEventBridgeRuleTemplateGroupsResponseContent')
    ListEventBridgeRuleTemplatesRequest = Shapes::StructureShape.new(name: 'ListEventBridgeRuleTemplatesRequest')
    ListEventBridgeRuleTemplatesResponse = Shapes::StructureShape.new(name: 'ListEventBridgeRuleTemplatesResponse')
    ListEventBridgeRuleTemplatesResponseContent = Shapes::StructureShape.new(name: 'ListEventBridgeRuleTemplatesResponseContent')
    ListInputDeviceTransfersRequest = Shapes::StructureShape.new(name: 'ListInputDeviceTransfersRequest')
    ListInputDeviceTransfersResponse = Shapes::StructureShape.new(name: 'ListInputDeviceTransfersResponse')
    ListInputDeviceTransfersResultModel = Shapes::StructureShape.new(name: 'ListInputDeviceTransfersResultModel')
    ListInputDevicesRequest = Shapes::StructureShape.new(name: 'ListInputDevicesRequest')
    ListInputDevicesResponse = Shapes::StructureShape.new(name: 'ListInputDevicesResponse')
    ListInputDevicesResultModel = Shapes::StructureShape.new(name: 'ListInputDevicesResultModel')
    ListInputSecurityGroupsRequest = Shapes::StructureShape.new(name: 'ListInputSecurityGroupsRequest')
    ListInputSecurityGroupsResponse = Shapes::StructureShape.new(name: 'ListInputSecurityGroupsResponse')
    ListInputSecurityGroupsResultModel = Shapes::StructureShape.new(name: 'ListInputSecurityGroupsResultModel')
    ListInputsRequest = Shapes::StructureShape.new(name: 'ListInputsRequest')
    ListInputsResponse = Shapes::StructureShape.new(name: 'ListInputsResponse')
    ListInputsResultModel = Shapes::StructureShape.new(name: 'ListInputsResultModel')
    ListMultiplexProgramsRequest = Shapes::StructureShape.new(name: 'ListMultiplexProgramsRequest')
    ListMultiplexProgramsResponse = Shapes::StructureShape.new(name: 'ListMultiplexProgramsResponse')
    ListMultiplexProgramsResultModel = Shapes::StructureShape.new(name: 'ListMultiplexProgramsResultModel')
    ListMultiplexesRequest = Shapes::StructureShape.new(name: 'ListMultiplexesRequest')
    ListMultiplexesResponse = Shapes::StructureShape.new(name: 'ListMultiplexesResponse')
    ListMultiplexesResultModel = Shapes::StructureShape.new(name: 'ListMultiplexesResultModel')
    ListNetworksRequest = Shapes::StructureShape.new(name: 'ListNetworksRequest')
    ListNetworksResponse = Shapes::StructureShape.new(name: 'ListNetworksResponse')
    ListNetworksResult = Shapes::StructureShape.new(name: 'ListNetworksResult')
    ListNodesRequest = Shapes::StructureShape.new(name: 'ListNodesRequest')
    ListNodesResponse = Shapes::StructureShape.new(name: 'ListNodesResponse')
    ListNodesResult = Shapes::StructureShape.new(name: 'ListNodesResult')
    ListOfferingsRequest = Shapes::StructureShape.new(name: 'ListOfferingsRequest')
    ListOfferingsResponse = Shapes::StructureShape.new(name: 'ListOfferingsResponse')
    ListOfferingsResultModel = Shapes::StructureShape.new(name: 'ListOfferingsResultModel')
    ListReservationsRequest = Shapes::StructureShape.new(name: 'ListReservationsRequest')
    ListReservationsResponse = Shapes::StructureShape.new(name: 'ListReservationsResponse')
    ListReservationsResultModel = Shapes::StructureShape.new(name: 'ListReservationsResultModel')
    ListSdiSourcesRequest = Shapes::StructureShape.new(name: 'ListSdiSourcesRequest')
    ListSdiSourcesResponse = Shapes::StructureShape.new(name: 'ListSdiSourcesResponse')
    ListSignalMapsRequest = Shapes::StructureShape.new(name: 'ListSignalMapsRequest')
    ListSignalMapsResponse = Shapes::StructureShape.new(name: 'ListSignalMapsResponse')
    ListSignalMapsResponseContent = Shapes::StructureShape.new(name: 'ListSignalMapsResponseContent')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListVersionsRequest = Shapes::StructureShape.new(name: 'ListVersionsRequest')
    ListVersionsResponse = Shapes::StructureShape.new(name: 'ListVersionsResponse')
    LogLevel = Shapes::StringShape.new(name: 'LogLevel')
    M2tsAbsentInputAudioBehavior = Shapes::StringShape.new(name: 'M2tsAbsentInputAudioBehavior')
    M2tsArib = Shapes::StringShape.new(name: 'M2tsArib')
    M2tsAribCaptionsPidControl = Shapes::StringShape.new(name: 'M2tsAribCaptionsPidControl')
    M2tsAudioBufferModel = Shapes::StringShape.new(name: 'M2tsAudioBufferModel')
    M2tsAudioInterval = Shapes::StringShape.new(name: 'M2tsAudioInterval')
    M2tsAudioStreamType = Shapes::StringShape.new(name: 'M2tsAudioStreamType')
    M2tsBufferModel = Shapes::StringShape.new(name: 'M2tsBufferModel')
    M2tsCcDescriptor = Shapes::StringShape.new(name: 'M2tsCcDescriptor')
    M2tsEbifControl = Shapes::StringShape.new(name: 'M2tsEbifControl')
    M2tsEbpPlacement = Shapes::StringShape.new(name: 'M2tsEbpPlacement')
    M2tsEsRateInPes = Shapes::StringShape.new(name: 'M2tsEsRateInPes')
    M2tsKlv = Shapes::StringShape.new(name: 'M2tsKlv')
    M2tsNielsenId3Behavior = Shapes::StringShape.new(name: 'M2tsNielsenId3Behavior')
    M2tsPcrControl = Shapes::StringShape.new(name: 'M2tsPcrControl')
    M2tsRateMode = Shapes::StringShape.new(name: 'M2tsRateMode')
    M2tsScte35Control = Shapes::StringShape.new(name: 'M2tsScte35Control')
    M2tsSegmentationMarkers = Shapes::StringShape.new(name: 'M2tsSegmentationMarkers')
    M2tsSegmentationStyle = Shapes::StringShape.new(name: 'M2tsSegmentationStyle')
    M2tsSettings = Shapes::StructureShape.new(name: 'M2tsSettings')
    M2tsTimedMetadataBehavior = Shapes::StringShape.new(name: 'M2tsTimedMetadataBehavior')
    M3u8KlvBehavior = Shapes::StringShape.new(name: 'M3u8KlvBehavior')
    M3u8NielsenId3Behavior = Shapes::StringShape.new(name: 'M3u8NielsenId3Behavior')
    M3u8PcrControl = Shapes::StringShape.new(name: 'M3u8PcrControl')
    M3u8Scte35Behavior = Shapes::StringShape.new(name: 'M3u8Scte35Behavior')
    M3u8Settings = Shapes::StructureShape.new(name: 'M3u8Settings')
    M3u8TimedMetadataBehavior = Shapes::StringShape.new(name: 'M3u8TimedMetadataBehavior')
    MaintenanceCreateSettings = Shapes::StructureShape.new(name: 'MaintenanceCreateSettings')
    MaintenanceDay = Shapes::StringShape.new(name: 'MaintenanceDay')
    MaintenanceStatus = Shapes::StructureShape.new(name: 'MaintenanceStatus')
    MaintenanceUpdateSettings = Shapes::StructureShape.new(name: 'MaintenanceUpdateSettings')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MediaConnectFlow = Shapes::StructureShape.new(name: 'MediaConnectFlow')
    MediaConnectFlowRequest = Shapes::StructureShape.new(name: 'MediaConnectFlowRequest')
    MediaPackageGroupSettings = Shapes::StructureShape.new(name: 'MediaPackageGroupSettings')
    MediaPackageOutputDestinationSettings = Shapes::StructureShape.new(name: 'MediaPackageOutputDestinationSettings')
    MediaPackageOutputSettings = Shapes::StructureShape.new(name: 'MediaPackageOutputSettings')
    MediaResource = Shapes::StructureShape.new(name: 'MediaResource')
    MediaResourceMap = Shapes::MapShape.new(name: 'MediaResourceMap')
    MediaResourceNeighbor = Shapes::StructureShape.new(name: 'MediaResourceNeighbor')
    MonitorDeployment = Shapes::StructureShape.new(name: 'MonitorDeployment')
    MotionGraphicsActivateScheduleActionSettings = Shapes::StructureShape.new(name: 'MotionGraphicsActivateScheduleActionSettings')
    MotionGraphicsConfiguration = Shapes::StructureShape.new(name: 'MotionGraphicsConfiguration')
    MotionGraphicsDeactivateScheduleActionSettings = Shapes::StructureShape.new(name: 'MotionGraphicsDeactivateScheduleActionSettings')
    MotionGraphicsInsertion = Shapes::StringShape.new(name: 'MotionGraphicsInsertion')
    MotionGraphicsSettings = Shapes::StructureShape.new(name: 'MotionGraphicsSettings')
    Mp2CodingMode = Shapes::StringShape.new(name: 'Mp2CodingMode')
    Mp2Settings = Shapes::StructureShape.new(name: 'Mp2Settings')
    Mpeg2AdaptiveQuantization = Shapes::StringShape.new(name: 'Mpeg2AdaptiveQuantization')
    Mpeg2ColorMetadata = Shapes::StringShape.new(name: 'Mpeg2ColorMetadata')
    Mpeg2ColorSpace = Shapes::StringShape.new(name: 'Mpeg2ColorSpace')
    Mpeg2DisplayRatio = Shapes::StringShape.new(name: 'Mpeg2DisplayRatio')
    Mpeg2FilterSettings = Shapes::StructureShape.new(name: 'Mpeg2FilterSettings')
    Mpeg2GopSizeUnits = Shapes::StringShape.new(name: 'Mpeg2GopSizeUnits')
    Mpeg2ScanType = Shapes::StringShape.new(name: 'Mpeg2ScanType')
    Mpeg2Settings = Shapes::StructureShape.new(name: 'Mpeg2Settings')
    Mpeg2SubGopLength = Shapes::StringShape.new(name: 'Mpeg2SubGopLength')
    Mpeg2TimecodeInsertionBehavior = Shapes::StringShape.new(name: 'Mpeg2TimecodeInsertionBehavior')
    MsSmoothGroupSettings = Shapes::StructureShape.new(name: 'MsSmoothGroupSettings')
    MsSmoothH265PackagingType = Shapes::StringShape.new(name: 'MsSmoothH265PackagingType')
    MsSmoothOutputSettings = Shapes::StructureShape.new(name: 'MsSmoothOutputSettings')
    MulticastInputSettings = Shapes::StructureShape.new(name: 'MulticastInputSettings')
    MulticastSettings = Shapes::StructureShape.new(name: 'MulticastSettings')
    MulticastSettingsCreateRequest = Shapes::StructureShape.new(name: 'MulticastSettingsCreateRequest')
    MulticastSettingsUpdateRequest = Shapes::StructureShape.new(name: 'MulticastSettingsUpdateRequest')
    MulticastSource = Shapes::StructureShape.new(name: 'MulticastSource')
    MulticastSourceCreateRequest = Shapes::StructureShape.new(name: 'MulticastSourceCreateRequest')
    MulticastSourceUpdateRequest = Shapes::StructureShape.new(name: 'MulticastSourceUpdateRequest')
    Multiplex = Shapes::StructureShape.new(name: 'Multiplex')
    MultiplexConfigurationValidationError = Shapes::StructureShape.new(name: 'MultiplexConfigurationValidationError')
    MultiplexContainerSettings = Shapes::StructureShape.new(name: 'MultiplexContainerSettings')
    MultiplexGroupSettings = Shapes::StructureShape.new(name: 'MultiplexGroupSettings')
    MultiplexM2tsSettings = Shapes::StructureShape.new(name: 'MultiplexM2tsSettings')
    MultiplexMediaConnectOutputDestinationSettings = Shapes::StructureShape.new(name: 'MultiplexMediaConnectOutputDestinationSettings')
    MultiplexOutputDestination = Shapes::StructureShape.new(name: 'MultiplexOutputDestination')
    MultiplexOutputSettings = Shapes::StructureShape.new(name: 'MultiplexOutputSettings')
    MultiplexPacketIdentifiersMapping = Shapes::MapShape.new(name: 'MultiplexPacketIdentifiersMapping')
    MultiplexProgram = Shapes::StructureShape.new(name: 'MultiplexProgram')
    MultiplexProgramChannelDestinationSettings = Shapes::StructureShape.new(name: 'MultiplexProgramChannelDestinationSettings')
    MultiplexProgramPacketIdentifiersMap = Shapes::StructureShape.new(name: 'MultiplexProgramPacketIdentifiersMap')
    MultiplexProgramPipelineDetail = Shapes::StructureShape.new(name: 'MultiplexProgramPipelineDetail')
    MultiplexProgramServiceDescriptor = Shapes::StructureShape.new(name: 'MultiplexProgramServiceDescriptor')
    MultiplexProgramSettings = Shapes::StructureShape.new(name: 'MultiplexProgramSettings')
    MultiplexProgramSummary = Shapes::StructureShape.new(name: 'MultiplexProgramSummary')
    MultiplexSettings = Shapes::StructureShape.new(name: 'MultiplexSettings')
    MultiplexSettingsSummary = Shapes::StructureShape.new(name: 'MultiplexSettingsSummary')
    MultiplexState = Shapes::StringShape.new(name: 'MultiplexState')
    MultiplexStatmuxVideoSettings = Shapes::StructureShape.new(name: 'MultiplexStatmuxVideoSettings')
    MultiplexSummary = Shapes::StructureShape.new(name: 'MultiplexSummary')
    MultiplexVideoSettings = Shapes::StructureShape.new(name: 'MultiplexVideoSettings')
    NetworkInputServerValidation = Shapes::StringShape.new(name: 'NetworkInputServerValidation')
    NetworkInputSettings = Shapes::StructureShape.new(name: 'NetworkInputSettings')
    NetworkInterfaceMode = Shapes::StringShape.new(name: 'NetworkInterfaceMode')
    NetworkState = Shapes::StringShape.new(name: 'NetworkState')
    NielsenCBET = Shapes::StructureShape.new(name: 'NielsenCBET')
    NielsenConfiguration = Shapes::StructureShape.new(name: 'NielsenConfiguration')
    NielsenNaesIiNw = Shapes::StructureShape.new(name: 'NielsenNaesIiNw')
    NielsenPcmToId3TaggingState = Shapes::StringShape.new(name: 'NielsenPcmToId3TaggingState')
    NielsenWatermarkTimezones = Shapes::StringShape.new(name: 'NielsenWatermarkTimezones')
    NielsenWatermarksCbetStepaside = Shapes::StringShape.new(name: 'NielsenWatermarksCbetStepaside')
    NielsenWatermarksDistributionTypes = Shapes::StringShape.new(name: 'NielsenWatermarksDistributionTypes')
    NielsenWatermarksSettings = Shapes::StructureShape.new(name: 'NielsenWatermarksSettings')
    NodeConfigurationValidationError = Shapes::StructureShape.new(name: 'NodeConfigurationValidationError')
    NodeConnectionState = Shapes::StringShape.new(name: 'NodeConnectionState')
    NodeInterfaceMapping = Shapes::StructureShape.new(name: 'NodeInterfaceMapping')
    NodeInterfaceMappingCreateRequest = Shapes::StructureShape.new(name: 'NodeInterfaceMappingCreateRequest')
    NodeRole = Shapes::StringShape.new(name: 'NodeRole')
    NodeState = Shapes::StringShape.new(name: 'NodeState')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NotFoundExceptionResponseContent = Shapes::StructureShape.new(name: 'NotFoundExceptionResponseContent')
    Offering = Shapes::StructureShape.new(name: 'Offering')
    OfferingDurationUnits = Shapes::StringShape.new(name: 'OfferingDurationUnits')
    OfferingType = Shapes::StringShape.new(name: 'OfferingType')
    Output = Shapes::StructureShape.new(name: 'Output')
    OutputDestination = Shapes::StructureShape.new(name: 'OutputDestination')
    OutputDestinationSettings = Shapes::StructureShape.new(name: 'OutputDestinationSettings')
    OutputGroup = Shapes::StructureShape.new(name: 'OutputGroup')
    OutputGroupSettings = Shapes::StructureShape.new(name: 'OutputGroupSettings')
    OutputLocationRef = Shapes::StructureShape.new(name: 'OutputLocationRef')
    OutputLockingSettings = Shapes::StructureShape.new(name: 'OutputLockingSettings')
    OutputSettings = Shapes::StructureShape.new(name: 'OutputSettings')
    PassThroughSettings = Shapes::StructureShape.new(name: 'PassThroughSettings')
    PauseStateScheduleActionSettings = Shapes::StructureShape.new(name: 'PauseStateScheduleActionSettings')
    PipelineDetail = Shapes::StructureShape.new(name: 'PipelineDetail')
    PipelineId = Shapes::StringShape.new(name: 'PipelineId')
    PipelineLockingSettings = Shapes::StructureShape.new(name: 'PipelineLockingSettings')
    PipelinePauseStateSettings = Shapes::StructureShape.new(name: 'PipelinePauseStateSettings')
    PreferredChannelPipeline = Shapes::StringShape.new(name: 'PreferredChannelPipeline')
    PurchaseOffering = Shapes::StructureShape.new(name: 'PurchaseOffering')
    PurchaseOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseOfferingRequest')
    PurchaseOfferingResponse = Shapes::StructureShape.new(name: 'PurchaseOfferingResponse')
    PurchaseOfferingResultModel = Shapes::StructureShape.new(name: 'PurchaseOfferingResultModel')
    RawSettings = Shapes::StructureShape.new(name: 'RawSettings')
    RebootInputDevice = Shapes::StructureShape.new(name: 'RebootInputDevice')
    RebootInputDeviceForce = Shapes::StringShape.new(name: 'RebootInputDeviceForce')
    RebootInputDeviceRequest = Shapes::StructureShape.new(name: 'RebootInputDeviceRequest')
    RebootInputDeviceResponse = Shapes::StructureShape.new(name: 'RebootInputDeviceResponse')
    Rec601Settings = Shapes::StructureShape.new(name: 'Rec601Settings')
    Rec709Settings = Shapes::StructureShape.new(name: 'Rec709Settings')
    RejectInputDeviceTransferRequest = Shapes::StructureShape.new(name: 'RejectInputDeviceTransferRequest')
    RejectInputDeviceTransferResponse = Shapes::StructureShape.new(name: 'RejectInputDeviceTransferResponse')
    RemixSettings = Shapes::StructureShape.new(name: 'RemixSettings')
    RenewalSettings = Shapes::StructureShape.new(name: 'RenewalSettings')
    Reservation = Shapes::StructureShape.new(name: 'Reservation')
    ReservationAutomaticRenewal = Shapes::StringShape.new(name: 'ReservationAutomaticRenewal')
    ReservationCodec = Shapes::StringShape.new(name: 'ReservationCodec')
    ReservationMaximumBitrate = Shapes::StringShape.new(name: 'ReservationMaximumBitrate')
    ReservationMaximumFramerate = Shapes::StringShape.new(name: 'ReservationMaximumFramerate')
    ReservationResolution = Shapes::StringShape.new(name: 'ReservationResolution')
    ReservationResourceSpecification = Shapes::StructureShape.new(name: 'ReservationResourceSpecification')
    ReservationResourceType = Shapes::StringShape.new(name: 'ReservationResourceType')
    ReservationSpecialFeature = Shapes::StringShape.new(name: 'ReservationSpecialFeature')
    ReservationState = Shapes::StringShape.new(name: 'ReservationState')
    ReservationVideoQuality = Shapes::StringShape.new(name: 'ReservationVideoQuality')
    ResourceConflict = Shapes::StructureShape.new(name: 'ResourceConflict')
    ResourceNotFound = Shapes::StructureShape.new(name: 'ResourceNotFound')
    RestartChannelPipelinesRequest = Shapes::StructureShape.new(name: 'RestartChannelPipelinesRequest')
    RestartChannelPipelinesResponse = Shapes::StructureShape.new(name: 'RestartChannelPipelinesResponse')
    Route = Shapes::StructureShape.new(name: 'Route')
    RouteCreateRequest = Shapes::StructureShape.new(name: 'RouteCreateRequest')
    RouteUpdateRequest = Shapes::StructureShape.new(name: 'RouteUpdateRequest')
    RtmpAdMarkers = Shapes::StringShape.new(name: 'RtmpAdMarkers')
    RtmpCacheFullBehavior = Shapes::StringShape.new(name: 'RtmpCacheFullBehavior')
    RtmpCaptionData = Shapes::StringShape.new(name: 'RtmpCaptionData')
    RtmpCaptionInfoDestinationSettings = Shapes::StructureShape.new(name: 'RtmpCaptionInfoDestinationSettings')
    RtmpGroupSettings = Shapes::StructureShape.new(name: 'RtmpGroupSettings')
    RtmpOutputCertificateMode = Shapes::StringShape.new(name: 'RtmpOutputCertificateMode')
    RtmpOutputSettings = Shapes::StructureShape.new(name: 'RtmpOutputSettings')
    S3CannedAcl = Shapes::StringShape.new(name: 'S3CannedAcl')
    ScheduleAction = Shapes::StructureShape.new(name: 'ScheduleAction')
    ScheduleActionSettings = Shapes::StructureShape.new(name: 'ScheduleActionSettings')
    ScheduleActionStartSettings = Shapes::StructureShape.new(name: 'ScheduleActionStartSettings')
    ScheduleDeleteResultModel = Shapes::StructureShape.new(name: 'ScheduleDeleteResultModel')
    ScheduleDescribeResultModel = Shapes::StructureShape.new(name: 'ScheduleDescribeResultModel')
    Scte20Convert608To708 = Shapes::StringShape.new(name: 'Scte20Convert608To708')
    Scte20PlusEmbeddedDestinationSettings = Shapes::StructureShape.new(name: 'Scte20PlusEmbeddedDestinationSettings')
    Scte20SourceSettings = Shapes::StructureShape.new(name: 'Scte20SourceSettings')
    Scte27DestinationSettings = Shapes::StructureShape.new(name: 'Scte27DestinationSettings')
    Scte27OcrLanguage = Shapes::StringShape.new(name: 'Scte27OcrLanguage')
    Scte27SourceSettings = Shapes::StructureShape.new(name: 'Scte27SourceSettings')
    Scte35AposNoRegionalBlackoutBehavior = Shapes::StringShape.new(name: 'Scte35AposNoRegionalBlackoutBehavior')
    Scte35AposWebDeliveryAllowedBehavior = Shapes::StringShape.new(name: 'Scte35AposWebDeliveryAllowedBehavior')
    Scte35ArchiveAllowedFlag = Shapes::StringShape.new(name: 'Scte35ArchiveAllowedFlag')
    Scte35DeliveryRestrictions = Shapes::StructureShape.new(name: 'Scte35DeliveryRestrictions')
    Scte35Descriptor = Shapes::StructureShape.new(name: 'Scte35Descriptor')
    Scte35DescriptorSettings = Shapes::StructureShape.new(name: 'Scte35DescriptorSettings')
    Scte35DeviceRestrictions = Shapes::StringShape.new(name: 'Scte35DeviceRestrictions')
    Scte35InputMode = Shapes::StringShape.new(name: 'Scte35InputMode')
    Scte35InputScheduleActionSettings = Shapes::StructureShape.new(name: 'Scte35InputScheduleActionSettings')
    Scte35NoRegionalBlackoutFlag = Shapes::StringShape.new(name: 'Scte35NoRegionalBlackoutFlag')
    Scte35ReturnToNetworkScheduleActionSettings = Shapes::StructureShape.new(name: 'Scte35ReturnToNetworkScheduleActionSettings')
    Scte35SegmentationCancelIndicator = Shapes::StringShape.new(name: 'Scte35SegmentationCancelIndicator')
    Scte35SegmentationDescriptor = Shapes::StructureShape.new(name: 'Scte35SegmentationDescriptor')
    Scte35SegmentationScope = Shapes::StringShape.new(name: 'Scte35SegmentationScope')
    Scte35SpliceInsert = Shapes::StructureShape.new(name: 'Scte35SpliceInsert')
    Scte35SpliceInsertNoRegionalBlackoutBehavior = Shapes::StringShape.new(name: 'Scte35SpliceInsertNoRegionalBlackoutBehavior')
    Scte35SpliceInsertScheduleActionSettings = Shapes::StructureShape.new(name: 'Scte35SpliceInsertScheduleActionSettings')
    Scte35SpliceInsertWebDeliveryAllowedBehavior = Shapes::StringShape.new(name: 'Scte35SpliceInsertWebDeliveryAllowedBehavior')
    Scte35TimeSignalApos = Shapes::StructureShape.new(name: 'Scte35TimeSignalApos')
    Scte35TimeSignalScheduleActionSettings = Shapes::StructureShape.new(name: 'Scte35TimeSignalScheduleActionSettings')
    Scte35Type = Shapes::StringShape.new(name: 'Scte35Type')
    Scte35WebDeliveryAllowedFlag = Shapes::StringShape.new(name: 'Scte35WebDeliveryAllowedFlag')
    SdiSource = Shapes::StructureShape.new(name: 'SdiSource')
    SdiSourceMapping = Shapes::StructureShape.new(name: 'SdiSourceMapping')
    SdiSourceMappingUpdateRequest = Shapes::StructureShape.new(name: 'SdiSourceMappingUpdateRequest')
    SdiSourceMappings = Shapes::ListShape.new(name: 'SdiSourceMappings')
    SdiSourceMappingsUpdateRequest = Shapes::ListShape.new(name: 'SdiSourceMappingsUpdateRequest')
    SdiSourceMode = Shapes::StringShape.new(name: 'SdiSourceMode')
    SdiSourceState = Shapes::StringShape.new(name: 'SdiSourceState')
    SdiSourceSummary = Shapes::StructureShape.new(name: 'SdiSourceSummary')
    SdiSourceType = Shapes::StringShape.new(name: 'SdiSourceType')
    SignalMapMonitorDeploymentStatus = Shapes::StringShape.new(name: 'SignalMapMonitorDeploymentStatus')
    SignalMapStatus = Shapes::StringShape.new(name: 'SignalMapStatus')
    SignalMapSummary = Shapes::StructureShape.new(name: 'SignalMapSummary')
    SmoothGroupAudioOnlyTimecodeControl = Shapes::StringShape.new(name: 'SmoothGroupAudioOnlyTimecodeControl')
    SmoothGroupCertificateMode = Shapes::StringShape.new(name: 'SmoothGroupCertificateMode')
    SmoothGroupEventIdMode = Shapes::StringShape.new(name: 'SmoothGroupEventIdMode')
    SmoothGroupEventStopBehavior = Shapes::StringShape.new(name: 'SmoothGroupEventStopBehavior')
    SmoothGroupSegmentationMode = Shapes::StringShape.new(name: 'SmoothGroupSegmentationMode')
    SmoothGroupSparseTrackType = Shapes::StringShape.new(name: 'SmoothGroupSparseTrackType')
    SmoothGroupStreamManifestBehavior = Shapes::StringShape.new(name: 'SmoothGroupStreamManifestBehavior')
    SmoothGroupTimestampOffsetMode = Shapes::StringShape.new(name: 'SmoothGroupTimestampOffsetMode')
    Smpte2038DataPreference = Shapes::StringShape.new(name: 'Smpte2038DataPreference')
    Smpte2110ReceiverGroup = Shapes::StructureShape.new(name: 'Smpte2110ReceiverGroup')
    Smpte2110ReceiverGroupSdpSettings = Shapes::StructureShape.new(name: 'Smpte2110ReceiverGroupSdpSettings')
    Smpte2110ReceiverGroupSettings = Shapes::StructureShape.new(name: 'Smpte2110ReceiverGroupSettings')
    SmpteTtDestinationSettings = Shapes::StructureShape.new(name: 'SmpteTtDestinationSettings')
    SrtCallerDecryption = Shapes::StructureShape.new(name: 'SrtCallerDecryption')
    SrtCallerDecryptionRequest = Shapes::StructureShape.new(name: 'SrtCallerDecryptionRequest')
    SrtCallerSource = Shapes::StructureShape.new(name: 'SrtCallerSource')
    SrtCallerSourceRequest = Shapes::StructureShape.new(name: 'SrtCallerSourceRequest')
    SrtEncryptionType = Shapes::StringShape.new(name: 'SrtEncryptionType')
    SrtGroupSettings = Shapes::StructureShape.new(name: 'SrtGroupSettings')
    SrtOutputDestinationSettings = Shapes::StructureShape.new(name: 'SrtOutputDestinationSettings')
    SrtOutputSettings = Shapes::StructureShape.new(name: 'SrtOutputSettings')
    SrtSettings = Shapes::StructureShape.new(name: 'SrtSettings')
    SrtSettingsRequest = Shapes::StructureShape.new(name: 'SrtSettingsRequest')
    StandardHlsSettings = Shapes::StructureShape.new(name: 'StandardHlsSettings')
    StartChannelRequest = Shapes::StructureShape.new(name: 'StartChannelRequest')
    StartChannelResponse = Shapes::StructureShape.new(name: 'StartChannelResponse')
    StartDeleteMonitorDeploymentRequest = Shapes::StructureShape.new(name: 'StartDeleteMonitorDeploymentRequest')
    StartDeleteMonitorDeploymentResponse = Shapes::StructureShape.new(name: 'StartDeleteMonitorDeploymentResponse')
    StartDeleteMonitorDeploymentResponseContent = Shapes::StructureShape.new(name: 'StartDeleteMonitorDeploymentResponseContent')
    StartInputDeviceMaintenanceWindowRequest = Shapes::StructureShape.new(name: 'StartInputDeviceMaintenanceWindowRequest')
    StartInputDeviceMaintenanceWindowResponse = Shapes::StructureShape.new(name: 'StartInputDeviceMaintenanceWindowResponse')
    StartInputDeviceRequest = Shapes::StructureShape.new(name: 'StartInputDeviceRequest')
    StartInputDeviceResponse = Shapes::StructureShape.new(name: 'StartInputDeviceResponse')
    StartMonitorDeploymentRequest = Shapes::StructureShape.new(name: 'StartMonitorDeploymentRequest')
    StartMonitorDeploymentRequestContent = Shapes::StructureShape.new(name: 'StartMonitorDeploymentRequestContent')
    StartMonitorDeploymentResponse = Shapes::StructureShape.new(name: 'StartMonitorDeploymentResponse')
    StartMonitorDeploymentResponseContent = Shapes::StructureShape.new(name: 'StartMonitorDeploymentResponseContent')
    StartMultiplexRequest = Shapes::StructureShape.new(name: 'StartMultiplexRequest')
    StartMultiplexResponse = Shapes::StructureShape.new(name: 'StartMultiplexResponse')
    StartTimecode = Shapes::StructureShape.new(name: 'StartTimecode')
    StartUpdateSignalMapRequest = Shapes::StructureShape.new(name: 'StartUpdateSignalMapRequest')
    StartUpdateSignalMapRequestContent = Shapes::StructureShape.new(name: 'StartUpdateSignalMapRequestContent')
    StartUpdateSignalMapResponse = Shapes::StructureShape.new(name: 'StartUpdateSignalMapResponse')
    StartUpdateSignalMapResponseContent = Shapes::StructureShape.new(name: 'StartUpdateSignalMapResponseContent')
    StaticImageActivateScheduleActionSettings = Shapes::StructureShape.new(name: 'StaticImageActivateScheduleActionSettings')
    StaticImageDeactivateScheduleActionSettings = Shapes::StructureShape.new(name: 'StaticImageDeactivateScheduleActionSettings')
    StaticImageOutputActivateScheduleActionSettings = Shapes::StructureShape.new(name: 'StaticImageOutputActivateScheduleActionSettings')
    StaticImageOutputDeactivateScheduleActionSettings = Shapes::StructureShape.new(name: 'StaticImageOutputDeactivateScheduleActionSettings')
    StaticKeySettings = Shapes::StructureShape.new(name: 'StaticKeySettings')
    StopChannelRequest = Shapes::StructureShape.new(name: 'StopChannelRequest')
    StopChannelResponse = Shapes::StructureShape.new(name: 'StopChannelResponse')
    StopInputDeviceRequest = Shapes::StructureShape.new(name: 'StopInputDeviceRequest')
    StopInputDeviceResponse = Shapes::StructureShape.new(name: 'StopInputDeviceResponse')
    StopMultiplexRequest = Shapes::StructureShape.new(name: 'StopMultiplexRequest')
    StopMultiplexResponse = Shapes::StructureShape.new(name: 'StopMultiplexResponse')
    StopTimecode = Shapes::StructureShape.new(name: 'StopTimecode')
    SuccessfulMonitorDeployment = Shapes::StructureShape.new(name: 'SuccessfulMonitorDeployment')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TagsModel = Shapes::StructureShape.new(name: 'TagsModel')
    TeletextDestinationSettings = Shapes::StructureShape.new(name: 'TeletextDestinationSettings')
    TeletextSourceSettings = Shapes::StructureShape.new(name: 'TeletextSourceSettings')
    TemporalFilterPostFilterSharpening = Shapes::StringShape.new(name: 'TemporalFilterPostFilterSharpening')
    TemporalFilterSettings = Shapes::StructureShape.new(name: 'TemporalFilterSettings')
    TemporalFilterStrength = Shapes::StringShape.new(name: 'TemporalFilterStrength')
    Thumbnail = Shapes::StructureShape.new(name: 'Thumbnail')
    ThumbnailConfiguration = Shapes::StructureShape.new(name: 'ThumbnailConfiguration')
    ThumbnailData = Shapes::StructureShape.new(name: 'ThumbnailData')
    ThumbnailDetail = Shapes::StructureShape.new(name: 'ThumbnailDetail')
    ThumbnailNoData = Shapes::StructureShape.new(name: 'ThumbnailNoData')
    ThumbnailState = Shapes::StringShape.new(name: 'ThumbnailState')
    ThumbnailType = Shapes::StringShape.new(name: 'ThumbnailType')
    TimecodeBurninFontSize = Shapes::StringShape.new(name: 'TimecodeBurninFontSize')
    TimecodeBurninPosition = Shapes::StringShape.new(name: 'TimecodeBurninPosition')
    TimecodeBurninSettings = Shapes::StructureShape.new(name: 'TimecodeBurninSettings')
    TimecodeConfig = Shapes::StructureShape.new(name: 'TimecodeConfig')
    TimecodeConfigSource = Shapes::StringShape.new(name: 'TimecodeConfigSource')
    TimedMetadataScheduleActionSettings = Shapes::StructureShape.new(name: 'TimedMetadataScheduleActionSettings')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TooManyRequestsExceptionResponseContent = Shapes::StructureShape.new(name: 'TooManyRequestsExceptionResponseContent')
    TransferInputDevice = Shapes::StructureShape.new(name: 'TransferInputDevice')
    TransferInputDeviceRequest = Shapes::StructureShape.new(name: 'TransferInputDeviceRequest')
    TransferInputDeviceResponse = Shapes::StructureShape.new(name: 'TransferInputDeviceResponse')
    TransferringInputDeviceSummary = Shapes::StructureShape.new(name: 'TransferringInputDeviceSummary')
    TtmlDestinationSettings = Shapes::StructureShape.new(name: 'TtmlDestinationSettings')
    TtmlDestinationStyleControl = Shapes::StringShape.new(name: 'TtmlDestinationStyleControl')
    UdpContainerSettings = Shapes::StructureShape.new(name: 'UdpContainerSettings')
    UdpGroupSettings = Shapes::StructureShape.new(name: 'UdpGroupSettings')
    UdpOutputSettings = Shapes::StructureShape.new(name: 'UdpOutputSettings')
    UdpTimedMetadataId3Frame = Shapes::StringShape.new(name: 'UdpTimedMetadataId3Frame')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UpdateAccountConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateAccountConfigurationRequest')
    UpdateAccountConfigurationRequestModel = Shapes::StructureShape.new(name: 'UpdateAccountConfigurationRequestModel')
    UpdateAccountConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateAccountConfigurationResponse')
    UpdateAccountConfigurationResultModel = Shapes::StructureShape.new(name: 'UpdateAccountConfigurationResultModel')
    UpdateChannel = Shapes::StructureShape.new(name: 'UpdateChannel')
    UpdateChannelClass = Shapes::StructureShape.new(name: 'UpdateChannelClass')
    UpdateChannelClassRequest = Shapes::StructureShape.new(name: 'UpdateChannelClassRequest')
    UpdateChannelClassResponse = Shapes::StructureShape.new(name: 'UpdateChannelClassResponse')
    UpdateChannelPlacementGroupRequest = Shapes::StructureShape.new(name: 'UpdateChannelPlacementGroupRequest')
    UpdateChannelPlacementGroupResponse = Shapes::StructureShape.new(name: 'UpdateChannelPlacementGroupResponse')
    UpdateChannelRequest = Shapes::StructureShape.new(name: 'UpdateChannelRequest')
    UpdateChannelResponse = Shapes::StructureShape.new(name: 'UpdateChannelResponse')
    UpdateChannelResultModel = Shapes::StructureShape.new(name: 'UpdateChannelResultModel')
    UpdateCloudWatchAlarmTemplateGroupRequest = Shapes::StructureShape.new(name: 'UpdateCloudWatchAlarmTemplateGroupRequest')
    UpdateCloudWatchAlarmTemplateGroupRequestContent = Shapes::StructureShape.new(name: 'UpdateCloudWatchAlarmTemplateGroupRequestContent')
    UpdateCloudWatchAlarmTemplateGroupResponse = Shapes::StructureShape.new(name: 'UpdateCloudWatchAlarmTemplateGroupResponse')
    UpdateCloudWatchAlarmTemplateGroupResponseContent = Shapes::StructureShape.new(name: 'UpdateCloudWatchAlarmTemplateGroupResponseContent')
    UpdateCloudWatchAlarmTemplateRequest = Shapes::StructureShape.new(name: 'UpdateCloudWatchAlarmTemplateRequest')
    UpdateCloudWatchAlarmTemplateRequestContent = Shapes::StructureShape.new(name: 'UpdateCloudWatchAlarmTemplateRequestContent')
    UpdateCloudWatchAlarmTemplateResponse = Shapes::StructureShape.new(name: 'UpdateCloudWatchAlarmTemplateResponse')
    UpdateCloudWatchAlarmTemplateResponseContent = Shapes::StructureShape.new(name: 'UpdateCloudWatchAlarmTemplateResponseContent')
    UpdateClusterRequest = Shapes::StructureShape.new(name: 'UpdateClusterRequest')
    UpdateClusterResponse = Shapes::StructureShape.new(name: 'UpdateClusterResponse')
    UpdateClusterResult = Shapes::StructureShape.new(name: 'UpdateClusterResult')
    UpdateEventBridgeRuleTemplateGroupRequest = Shapes::StructureShape.new(name: 'UpdateEventBridgeRuleTemplateGroupRequest')
    UpdateEventBridgeRuleTemplateGroupRequestContent = Shapes::StructureShape.new(name: 'UpdateEventBridgeRuleTemplateGroupRequestContent')
    UpdateEventBridgeRuleTemplateGroupResponse = Shapes::StructureShape.new(name: 'UpdateEventBridgeRuleTemplateGroupResponse')
    UpdateEventBridgeRuleTemplateGroupResponseContent = Shapes::StructureShape.new(name: 'UpdateEventBridgeRuleTemplateGroupResponseContent')
    UpdateEventBridgeRuleTemplateRequest = Shapes::StructureShape.new(name: 'UpdateEventBridgeRuleTemplateRequest')
    UpdateEventBridgeRuleTemplateRequestContent = Shapes::StructureShape.new(name: 'UpdateEventBridgeRuleTemplateRequestContent')
    UpdateEventBridgeRuleTemplateResponse = Shapes::StructureShape.new(name: 'UpdateEventBridgeRuleTemplateResponse')
    UpdateEventBridgeRuleTemplateResponseContent = Shapes::StructureShape.new(name: 'UpdateEventBridgeRuleTemplateResponseContent')
    UpdateInput = Shapes::StructureShape.new(name: 'UpdateInput')
    UpdateInputDevice = Shapes::StructureShape.new(name: 'UpdateInputDevice')
    UpdateInputDeviceRequest = Shapes::StructureShape.new(name: 'UpdateInputDeviceRequest')
    UpdateInputDeviceResponse = Shapes::StructureShape.new(name: 'UpdateInputDeviceResponse')
    UpdateInputRequest = Shapes::StructureShape.new(name: 'UpdateInputRequest')
    UpdateInputResponse = Shapes::StructureShape.new(name: 'UpdateInputResponse')
    UpdateInputResultModel = Shapes::StructureShape.new(name: 'UpdateInputResultModel')
    UpdateInputSecurityGroupRequest = Shapes::StructureShape.new(name: 'UpdateInputSecurityGroupRequest')
    UpdateInputSecurityGroupResponse = Shapes::StructureShape.new(name: 'UpdateInputSecurityGroupResponse')
    UpdateInputSecurityGroupResultModel = Shapes::StructureShape.new(name: 'UpdateInputSecurityGroupResultModel')
    UpdateMultiplex = Shapes::StructureShape.new(name: 'UpdateMultiplex')
    UpdateMultiplexProgram = Shapes::StructureShape.new(name: 'UpdateMultiplexProgram')
    UpdateMultiplexProgramRequest = Shapes::StructureShape.new(name: 'UpdateMultiplexProgramRequest')
    UpdateMultiplexProgramResponse = Shapes::StructureShape.new(name: 'UpdateMultiplexProgramResponse')
    UpdateMultiplexProgramResultModel = Shapes::StructureShape.new(name: 'UpdateMultiplexProgramResultModel')
    UpdateMultiplexRequest = Shapes::StructureShape.new(name: 'UpdateMultiplexRequest')
    UpdateMultiplexResponse = Shapes::StructureShape.new(name: 'UpdateMultiplexResponse')
    UpdateMultiplexResultModel = Shapes::StructureShape.new(name: 'UpdateMultiplexResultModel')
    UpdateNetworkRequest = Shapes::StructureShape.new(name: 'UpdateNetworkRequest')
    UpdateNetworkResponse = Shapes::StructureShape.new(name: 'UpdateNetworkResponse')
    UpdateNetworkResult = Shapes::StructureShape.new(name: 'UpdateNetworkResult')
    UpdateNodeRequest = Shapes::StructureShape.new(name: 'UpdateNodeRequest')
    UpdateNodeResponse = Shapes::StructureShape.new(name: 'UpdateNodeResponse')
    UpdateNodeState = Shapes::StringShape.new(name: 'UpdateNodeState')
    UpdateNodeStateRequest = Shapes::StructureShape.new(name: 'UpdateNodeStateRequest')
    UpdateNodeStateResponse = Shapes::StructureShape.new(name: 'UpdateNodeStateResponse')
    UpdateReservation = Shapes::StructureShape.new(name: 'UpdateReservation')
    UpdateReservationRequest = Shapes::StructureShape.new(name: 'UpdateReservationRequest')
    UpdateReservationResponse = Shapes::StructureShape.new(name: 'UpdateReservationResponse')
    UpdateReservationResultModel = Shapes::StructureShape.new(name: 'UpdateReservationResultModel')
    UpdateSdiSourceRequest = Shapes::StructureShape.new(name: 'UpdateSdiSourceRequest')
    UpdateSdiSourceResponse = Shapes::StructureShape.new(name: 'UpdateSdiSourceResponse')
    ValidationError = Shapes::StructureShape.new(name: 'ValidationError')
    VideoBlackFailoverSettings = Shapes::StructureShape.new(name: 'VideoBlackFailoverSettings')
    VideoCodecSettings = Shapes::StructureShape.new(name: 'VideoCodecSettings')
    VideoDescription = Shapes::StructureShape.new(name: 'VideoDescription')
    VideoDescriptionRespondToAfd = Shapes::StringShape.new(name: 'VideoDescriptionRespondToAfd')
    VideoDescriptionScalingBehavior = Shapes::StringShape.new(name: 'VideoDescriptionScalingBehavior')
    VideoSelector = Shapes::StructureShape.new(name: 'VideoSelector')
    VideoSelectorColorSpace = Shapes::StringShape.new(name: 'VideoSelectorColorSpace')
    VideoSelectorColorSpaceSettings = Shapes::StructureShape.new(name: 'VideoSelectorColorSpaceSettings')
    VideoSelectorColorSpaceUsage = Shapes::StringShape.new(name: 'VideoSelectorColorSpaceUsage')
    VideoSelectorPid = Shapes::StructureShape.new(name: 'VideoSelectorPid')
    VideoSelectorProgramId = Shapes::StructureShape.new(name: 'VideoSelectorProgramId')
    VideoSelectorSettings = Shapes::StructureShape.new(name: 'VideoSelectorSettings')
    VpcOutputSettings = Shapes::StructureShape.new(name: 'VpcOutputSettings')
    VpcOutputSettingsDescription = Shapes::StructureShape.new(name: 'VpcOutputSettingsDescription')
    WavCodingMode = Shapes::StringShape.new(name: 'WavCodingMode')
    WavSettings = Shapes::StructureShape.new(name: 'WavSettings')
    WebvttDestinationSettings = Shapes::StructureShape.new(name: 'WebvttDestinationSettings')
    WebvttDestinationStyleControl = Shapes::StringShape.new(name: 'WebvttDestinationStyleControl')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __doubleMin0 = Shapes::FloatShape.new(name: '__doubleMin0')
    __doubleMin0Max1 = Shapes::FloatShape.new(name: '__doubleMin0Max1')
    __doubleMin0Max100 = Shapes::FloatShape.new(name: '__doubleMin0Max100')
    __doubleMin0Max5000 = Shapes::FloatShape.new(name: '__doubleMin0Max5000')
    __doubleMin1 = Shapes::FloatShape.new(name: '__doubleMin1')
    __doubleMin1Max65535 = Shapes::FloatShape.new(name: '__doubleMin1Max65535')
    __doubleMin250Max5000 = Shapes::FloatShape.new(name: '__doubleMin250Max5000')
    __doubleMin32Max46 = Shapes::FloatShape.new(name: '__doubleMin32Max46')
    __doubleMinNegative1Max5 = Shapes::FloatShape.new(name: '__doubleMinNegative1Max5')
    __doubleMinNegative59Max0 = Shapes::FloatShape.new(name: '__doubleMinNegative59Max0')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __integerMax5 = Shapes::IntegerShape.new(name: '__integerMax5')
    __integerMin0 = Shapes::IntegerShape.new(name: '__integerMin0')
    __integerMin0Max10 = Shapes::IntegerShape.new(name: '__integerMin0Max10')
    __integerMin0Max100 = Shapes::IntegerShape.new(name: '__integerMin0Max100')
    __integerMin0Max1000 = Shapes::IntegerShape.new(name: '__integerMin0Max1000')
    __integerMin0Max10000 = Shapes::IntegerShape.new(name: '__integerMin0Max10000')
    __integerMin0Max1000000 = Shapes::IntegerShape.new(name: '__integerMin0Max1000000')
    __integerMin0Max100000000 = Shapes::IntegerShape.new(name: '__integerMin0Max100000000')
    __integerMin0Max128 = Shapes::IntegerShape.new(name: '__integerMin0Max128')
    __integerMin0Max15 = Shapes::IntegerShape.new(name: '__integerMin0Max15')
    __integerMin0Max2000 = Shapes::IntegerShape.new(name: '__integerMin0Max2000')
    __integerMin0Max255 = Shapes::IntegerShape.new(name: '__integerMin0Max255')
    __integerMin0Max30 = Shapes::IntegerShape.new(name: '__integerMin0Max30')
    __integerMin0Max32768 = Shapes::IntegerShape.new(name: '__integerMin0Max32768')
    __integerMin0Max3600 = Shapes::IntegerShape.new(name: '__integerMin0Max3600')
    __integerMin0Max500 = Shapes::IntegerShape.new(name: '__integerMin0Max500')
    __integerMin0Max600 = Shapes::IntegerShape.new(name: '__integerMin0Max600')
    __integerMin0Max65535 = Shapes::IntegerShape.new(name: '__integerMin0Max65535')
    __integerMin0Max65536 = Shapes::IntegerShape.new(name: '__integerMin0Max65536')
    __integerMin0Max7 = Shapes::IntegerShape.new(name: '__integerMin0Max7')
    __integerMin0Max8191 = Shapes::IntegerShape.new(name: '__integerMin0Max8191')
    __integerMin1 = Shapes::IntegerShape.new(name: '__integerMin1')
    __integerMin100 = Shapes::IntegerShape.new(name: '__integerMin100')
    __integerMin1000 = Shapes::IntegerShape.new(name: '__integerMin1000')
    __integerMin1000000Max100000000 = Shapes::IntegerShape.new(name: '__integerMin1000000Max100000000')
    __integerMin100000Max100000000 = Shapes::IntegerShape.new(name: '__integerMin100000Max100000000')
    __integerMin100000Max40000000 = Shapes::IntegerShape.new(name: '__integerMin100000Max40000000')
    __integerMin100000Max80000000 = Shapes::IntegerShape.new(name: '__integerMin100000Max80000000')
    __integerMin1000Max30000 = Shapes::IntegerShape.new(name: '__integerMin1000Max30000')
    __integerMin10Max86400 = Shapes::IntegerShape.new(name: '__integerMin10Max86400')
    __integerMin1Max10 = Shapes::IntegerShape.new(name: '__integerMin1Max10')
    __integerMin1Max1000000 = Shapes::IntegerShape.new(name: '__integerMin1Max1000000')
    __integerMin1Max16 = Shapes::IntegerShape.new(name: '__integerMin1Max16')
    __integerMin1Max20 = Shapes::IntegerShape.new(name: '__integerMin1Max20')
    __integerMin1Max3003 = Shapes::IntegerShape.new(name: '__integerMin1Max3003')
    __integerMin1Max31 = Shapes::IntegerShape.new(name: '__integerMin1Max31')
    __integerMin1Max32 = Shapes::IntegerShape.new(name: '__integerMin1Max32')
    __integerMin1Max3600000 = Shapes::IntegerShape.new(name: '__integerMin1Max3600000')
    __integerMin1Max4 = Shapes::IntegerShape.new(name: '__integerMin1Max4')
    __integerMin1Max5 = Shapes::IntegerShape.new(name: '__integerMin1Max5')
    __integerMin1Max51 = Shapes::IntegerShape.new(name: '__integerMin1Max51')
    __integerMin1Max6 = Shapes::IntegerShape.new(name: '__integerMin1Max6')
    __integerMin1Max8 = Shapes::IntegerShape.new(name: '__integerMin1Max8')
    __integerMin1Max800 = Shapes::IntegerShape.new(name: '__integerMin1Max800')
    __integerMin256Max3840 = Shapes::IntegerShape.new(name: '__integerMin256Max3840')
    __integerMin25Max10000 = Shapes::IntegerShape.new(name: '__integerMin25Max10000')
    __integerMin25Max2000 = Shapes::IntegerShape.new(name: '__integerMin25Max2000')
    __integerMin3 = Shapes::IntegerShape.new(name: '__integerMin3')
    __integerMin30 = Shapes::IntegerShape.new(name: '__integerMin30')
    __integerMin32Max8191 = Shapes::IntegerShape.new(name: '__integerMin32Max8191')
    __integerMin40Max16000 = Shapes::IntegerShape.new(name: '__integerMin40Max16000')
    __integerMin4Max20 = Shapes::IntegerShape.new(name: '__integerMin4Max20')
    __integerMin50000Max16000000 = Shapes::IntegerShape.new(name: '__integerMin50000Max16000000')
    __integerMin50000Max8000000 = Shapes::IntegerShape.new(name: '__integerMin50000Max8000000')
    __integerMin64Max2160 = Shapes::IntegerShape.new(name: '__integerMin64Max2160')
    __integerMin800Max3000 = Shapes::IntegerShape.new(name: '__integerMin800Max3000')
    __integerMin80Max800 = Shapes::IntegerShape.new(name: '__integerMin80Max800')
    __integerMin96Max600 = Shapes::IntegerShape.new(name: '__integerMin96Max600')
    __integerMinNegative1000Max1000 = Shapes::IntegerShape.new(name: '__integerMinNegative1000Max1000')
    __integerMinNegative5Max5 = Shapes::IntegerShape.new(name: '__integerMinNegative5Max5')
    __integerMinNegative60Max6 = Shapes::IntegerShape.new(name: '__integerMinNegative60Max6')
    __integerMinNegative60Max60 = Shapes::IntegerShape.new(name: '__integerMinNegative60Max60')
    __listOfAudioChannelMapping = Shapes::ListShape.new(name: '__listOfAudioChannelMapping')
    __listOfAudioDescription = Shapes::ListShape.new(name: '__listOfAudioDescription')
    __listOfAudioSelector = Shapes::ListShape.new(name: '__listOfAudioSelector')
    __listOfAudioTrack = Shapes::ListShape.new(name: '__listOfAudioTrack')
    __listOfBatchFailedResultModel = Shapes::ListShape.new(name: '__listOfBatchFailedResultModel')
    __listOfBatchSuccessfulResultModel = Shapes::ListShape.new(name: '__listOfBatchSuccessfulResultModel')
    __listOfCaptionDescription = Shapes::ListShape.new(name: '__listOfCaptionDescription')
    __listOfCaptionLanguageMapping = Shapes::ListShape.new(name: '__listOfCaptionLanguageMapping')
    __listOfCaptionSelector = Shapes::ListShape.new(name: '__listOfCaptionSelector')
    __listOfChannelEgressEndpoint = Shapes::ListShape.new(name: '__listOfChannelEgressEndpoint')
    __listOfChannelEngineVersionResponse = Shapes::ListShape.new(name: '__listOfChannelEngineVersionResponse')
    __listOfChannelPipelineIdToRestart = Shapes::ListShape.new(name: '__listOfChannelPipelineIdToRestart')
    __listOfChannelSummary = Shapes::ListShape.new(name: '__listOfChannelSummary')
    __listOfCloudWatchAlarmTemplateGroupSummary = Shapes::ListShape.new(name: '__listOfCloudWatchAlarmTemplateGroupSummary')
    __listOfCloudWatchAlarmTemplateSummary = Shapes::ListShape.new(name: '__listOfCloudWatchAlarmTemplateSummary')
    __listOfCmafIngestCaptionLanguageMapping = Shapes::ListShape.new(name: '__listOfCmafIngestCaptionLanguageMapping')
    __listOfColorCorrection = Shapes::ListShape.new(name: '__listOfColorCorrection')
    __listOfDashRoleAudio = Shapes::ListShape.new(name: '__listOfDashRoleAudio')
    __listOfDashRoleCaption = Shapes::ListShape.new(name: '__listOfDashRoleCaption')
    __listOfDescribeChannelPlacementGroupSummary = Shapes::ListShape.new(name: '__listOfDescribeChannelPlacementGroupSummary')
    __listOfDescribeClusterSummary = Shapes::ListShape.new(name: '__listOfDescribeClusterSummary')
    __listOfDescribeNetworkSummary = Shapes::ListShape.new(name: '__listOfDescribeNetworkSummary')
    __listOfDescribeNodeSummary = Shapes::ListShape.new(name: '__listOfDescribeNodeSummary')
    __listOfEventBridgeRuleTemplateGroupSummary = Shapes::ListShape.new(name: '__listOfEventBridgeRuleTemplateGroupSummary')
    __listOfEventBridgeRuleTemplateSummary = Shapes::ListShape.new(name: '__listOfEventBridgeRuleTemplateSummary')
    __listOfEventBridgeRuleTemplateTarget = Shapes::ListShape.new(name: '__listOfEventBridgeRuleTemplateTarget')
    __listOfFailoverCondition = Shapes::ListShape.new(name: '__listOfFailoverCondition')
    __listOfHlsAdMarkers = Shapes::ListShape.new(name: '__listOfHlsAdMarkers')
    __listOfInput = Shapes::ListShape.new(name: '__listOfInput')
    __listOfInputAttachment = Shapes::ListShape.new(name: '__listOfInputAttachment')
    __listOfInputChannelLevel = Shapes::ListShape.new(name: '__listOfInputChannelLevel')
    __listOfInputDestination = Shapes::ListShape.new(name: '__listOfInputDestination')
    __listOfInputDestinationRequest = Shapes::ListShape.new(name: '__listOfInputDestinationRequest')
    __listOfInputDestinationRoute = Shapes::ListShape.new(name: '__listOfInputDestinationRoute')
    __listOfInputDeviceConfigurableAudioChannelPairConfig = Shapes::ListShape.new(name: '__listOfInputDeviceConfigurableAudioChannelPairConfig')
    __listOfInputDeviceRequest = Shapes::ListShape.new(name: '__listOfInputDeviceRequest')
    __listOfInputDeviceSettings = Shapes::ListShape.new(name: '__listOfInputDeviceSettings')
    __listOfInputDeviceSummary = Shapes::ListShape.new(name: '__listOfInputDeviceSummary')
    __listOfInputDeviceUhdAudioChannelPairConfig = Shapes::ListShape.new(name: '__listOfInputDeviceUhdAudioChannelPairConfig')
    __listOfInputRequestDestinationRoute = Shapes::ListShape.new(name: '__listOfInputRequestDestinationRoute')
    __listOfInputSdpLocation = Shapes::ListShape.new(name: '__listOfInputSdpLocation')
    __listOfInputSecurityGroup = Shapes::ListShape.new(name: '__listOfInputSecurityGroup')
    __listOfInputSource = Shapes::ListShape.new(name: '__listOfInputSource')
    __listOfInputSourceRequest = Shapes::ListShape.new(name: '__listOfInputSourceRequest')
    __listOfInputWhitelistRule = Shapes::ListShape.new(name: '__listOfInputWhitelistRule')
    __listOfInputWhitelistRuleCidr = Shapes::ListShape.new(name: '__listOfInputWhitelistRuleCidr')
    __listOfInterfaceMapping = Shapes::ListShape.new(name: '__listOfInterfaceMapping')
    __listOfInterfaceMappingCreateRequest = Shapes::ListShape.new(name: '__listOfInterfaceMappingCreateRequest')
    __listOfInterfaceMappingUpdateRequest = Shapes::ListShape.new(name: '__listOfInterfaceMappingUpdateRequest')
    __listOfIpPool = Shapes::ListShape.new(name: '__listOfIpPool')
    __listOfIpPoolCreateRequest = Shapes::ListShape.new(name: '__listOfIpPoolCreateRequest')
    __listOfIpPoolUpdateRequest = Shapes::ListShape.new(name: '__listOfIpPoolUpdateRequest')
    __listOfMediaConnectFlow = Shapes::ListShape.new(name: '__listOfMediaConnectFlow')
    __listOfMediaConnectFlowRequest = Shapes::ListShape.new(name: '__listOfMediaConnectFlowRequest')
    __listOfMediaPackageOutputDestinationSettings = Shapes::ListShape.new(name: '__listOfMediaPackageOutputDestinationSettings')
    __listOfMediaResourceNeighbor = Shapes::ListShape.new(name: '__listOfMediaResourceNeighbor')
    __listOfMulticastSource = Shapes::ListShape.new(name: '__listOfMulticastSource')
    __listOfMulticastSourceCreateRequest = Shapes::ListShape.new(name: '__listOfMulticastSourceCreateRequest')
    __listOfMulticastSourceUpdateRequest = Shapes::ListShape.new(name: '__listOfMulticastSourceUpdateRequest')
    __listOfMultiplexOutputDestination = Shapes::ListShape.new(name: '__listOfMultiplexOutputDestination')
    __listOfMultiplexProgramPipelineDetail = Shapes::ListShape.new(name: '__listOfMultiplexProgramPipelineDetail')
    __listOfMultiplexProgramSummary = Shapes::ListShape.new(name: '__listOfMultiplexProgramSummary')
    __listOfMultiplexSummary = Shapes::ListShape.new(name: '__listOfMultiplexSummary')
    __listOfNodeInterfaceMapping = Shapes::ListShape.new(name: '__listOfNodeInterfaceMapping')
    __listOfNodeInterfaceMappingCreateRequest = Shapes::ListShape.new(name: '__listOfNodeInterfaceMappingCreateRequest')
    __listOfOffering = Shapes::ListShape.new(name: '__listOfOffering')
    __listOfOutput = Shapes::ListShape.new(name: '__listOfOutput')
    __listOfOutputDestination = Shapes::ListShape.new(name: '__listOfOutputDestination')
    __listOfOutputDestinationSettings = Shapes::ListShape.new(name: '__listOfOutputDestinationSettings')
    __listOfOutputGroup = Shapes::ListShape.new(name: '__listOfOutputGroup')
    __listOfPipelineDetail = Shapes::ListShape.new(name: '__listOfPipelineDetail')
    __listOfPipelinePauseStateSettings = Shapes::ListShape.new(name: '__listOfPipelinePauseStateSettings')
    __listOfReservation = Shapes::ListShape.new(name: '__listOfReservation')
    __listOfRoute = Shapes::ListShape.new(name: '__listOfRoute')
    __listOfRouteCreateRequest = Shapes::ListShape.new(name: '__listOfRouteCreateRequest')
    __listOfRouteUpdateRequest = Shapes::ListShape.new(name: '__listOfRouteUpdateRequest')
    __listOfRtmpAdMarkers = Shapes::ListShape.new(name: '__listOfRtmpAdMarkers')
    __listOfScheduleAction = Shapes::ListShape.new(name: '__listOfScheduleAction')
    __listOfScte35Descriptor = Shapes::ListShape.new(name: '__listOfScte35Descriptor')
    __listOfSdiSourceSummary = Shapes::ListShape.new(name: '__listOfSdiSourceSummary')
    __listOfSignalMapSummary = Shapes::ListShape.new(name: '__listOfSignalMapSummary')
    __listOfSmpte2110ReceiverGroup = Shapes::ListShape.new(name: '__listOfSmpte2110ReceiverGroup')
    __listOfSrtCallerSource = Shapes::ListShape.new(name: '__listOfSrtCallerSource')
    __listOfSrtCallerSourceRequest = Shapes::ListShape.new(name: '__listOfSrtCallerSourceRequest')
    __listOfSrtOutputDestinationSettings = Shapes::ListShape.new(name: '__listOfSrtOutputDestinationSettings')
    __listOfThumbnail = Shapes::ListShape.new(name: '__listOfThumbnail')
    __listOfThumbnailDetail = Shapes::ListShape.new(name: '__listOfThumbnailDetail')
    __listOfTransferringInputDeviceSummary = Shapes::ListShape.new(name: '__listOfTransferringInputDeviceSummary')
    __listOfValidationError = Shapes::ListShape.new(name: '__listOfValidationError')
    __listOfVideoDescription = Shapes::ListShape.new(name: '__listOfVideoDescription')
    __listOf__integer = Shapes::ListShape.new(name: '__listOf__integer')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __listOf__stringMin7Max11PatternAws097 = Shapes::ListShape.new(name: '__listOf__stringMin7Max11PatternAws097')
    __listOf__stringPatternS = Shapes::ListShape.new(name: '__listOf__stringPatternS')
    __long = Shapes::IntegerShape.new(name: '__long')
    __longMin0Max1099511627775 = Shapes::IntegerShape.new(name: '__longMin0Max1099511627775')
    __longMin0Max4294967295 = Shapes::IntegerShape.new(name: '__longMin0Max4294967295')
    __longMin0Max8589934591 = Shapes::IntegerShape.new(name: '__longMin0Max8589934591')
    __longMin0Max86400000 = Shapes::IntegerShape.new(name: '__longMin0Max86400000')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMax100 = Shapes::StringShape.new(name: '__stringMax100')
    __stringMax1000 = Shapes::StringShape.new(name: '__stringMax1000')
    __stringMax2048 = Shapes::StringShape.new(name: '__stringMax2048')
    __stringMax255 = Shapes::StringShape.new(name: '__stringMax255')
    __stringMax256 = Shapes::StringShape.new(name: '__stringMax256')
    __stringMax32 = Shapes::StringShape.new(name: '__stringMax32')
    __stringMax64 = Shapes::StringShape.new(name: '__stringMax64')
    __stringMin0Max1024 = Shapes::StringShape.new(name: '__stringMin0Max1024')
    __stringMin1 = Shapes::StringShape.new(name: '__stringMin1')
    __stringMin1Max2048 = Shapes::StringShape.new(name: '__stringMin1Max2048')
    __stringMin1Max2048PatternArn = Shapes::StringShape.new(name: '__stringMin1Max2048PatternArn')
    __stringMin1Max255 = Shapes::StringShape.new(name: '__stringMin1Max255')
    __stringMin1Max255PatternS = Shapes::StringShape.new(name: '__stringMin1Max255PatternS')
    __stringMin1Max256 = Shapes::StringShape.new(name: '__stringMin1Max256')
    __stringMin1Max256PatternS = Shapes::StringShape.new(name: '__stringMin1Max256PatternS')
    __stringMin1Max35 = Shapes::StringShape.new(name: '__stringMin1Max35')
    __stringMin1Max7 = Shapes::StringShape.new(name: '__stringMin1Max7')
    __stringMin2Max2 = Shapes::StringShape.new(name: '__stringMin2Max2')
    __stringMin32Max32 = Shapes::StringShape.new(name: '__stringMin32Max32')
    __stringMin34Max34 = Shapes::StringShape.new(name: '__stringMin34Max34')
    __stringMin3Max3 = Shapes::StringShape.new(name: '__stringMin3Max3')
    __stringMin6Max6 = Shapes::StringShape.new(name: '__stringMin6Max6')
    __stringMin7Max11PatternAws097 = Shapes::StringShape.new(name: '__stringMin7Max11PatternAws097')
    __stringPattern010920300 = Shapes::StringShape.new(name: '__stringPattern010920300')
    __stringPatternArnMedialiveCloudwatchAlarmTemplate = Shapes::StringShape.new(name: '__stringPatternArnMedialiveCloudwatchAlarmTemplate')
    __stringPatternArnMedialiveCloudwatchAlarmTemplateGroup = Shapes::StringShape.new(name: '__stringPatternArnMedialiveCloudwatchAlarmTemplateGroup')
    __stringPatternArnMedialiveEventbridgeRuleTemplate = Shapes::StringShape.new(name: '__stringPatternArnMedialiveEventbridgeRuleTemplate')
    __stringPatternArnMedialiveEventbridgeRuleTemplateGroup = Shapes::StringShape.new(name: '__stringPatternArnMedialiveEventbridgeRuleTemplateGroup')
    __stringPatternArnMedialiveSignalMap = Shapes::StringShape.new(name: '__stringPatternArnMedialiveSignalMap')
    __stringPatternS = Shapes::StringShape.new(name: '__stringPatternS')
    __timestamp = Shapes::TimestampShape.new(name: '__timestamp')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AacSettings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "bitrate"))
    AacSettings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: AacCodingMode, location_name: "codingMode"))
    AacSettings.add_member(:input_type, Shapes::ShapeRef.new(shape: AacInputType, location_name: "inputType"))
    AacSettings.add_member(:profile, Shapes::ShapeRef.new(shape: AacProfile, location_name: "profile"))
    AacSettings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: AacRateControlMode, location_name: "rateControlMode"))
    AacSettings.add_member(:raw_format, Shapes::ShapeRef.new(shape: AacRawFormat, location_name: "rawFormat"))
    AacSettings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __double, location_name: "sampleRate"))
    AacSettings.add_member(:spec, Shapes::ShapeRef.new(shape: AacSpec, location_name: "spec"))
    AacSettings.add_member(:vbr_quality, Shapes::ShapeRef.new(shape: AacVbrQuality, location_name: "vbrQuality"))
    AacSettings.struct_class = Types::AacSettings

    Ac3Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "bitrate"))
    Ac3Settings.add_member(:bitstream_mode, Shapes::ShapeRef.new(shape: Ac3BitstreamMode, location_name: "bitstreamMode"))
    Ac3Settings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: Ac3CodingMode, location_name: "codingMode"))
    Ac3Settings.add_member(:dialnorm, Shapes::ShapeRef.new(shape: __integerMin1Max31, location_name: "dialnorm"))
    Ac3Settings.add_member(:drc_profile, Shapes::ShapeRef.new(shape: Ac3DrcProfile, location_name: "drcProfile"))
    Ac3Settings.add_member(:lfe_filter, Shapes::ShapeRef.new(shape: Ac3LfeFilter, location_name: "lfeFilter"))
    Ac3Settings.add_member(:metadata_control, Shapes::ShapeRef.new(shape: Ac3MetadataControl, location_name: "metadataControl"))
    Ac3Settings.add_member(:attenuation_control, Shapes::ShapeRef.new(shape: Ac3AttenuationControl, location_name: "attenuationControl"))
    Ac3Settings.struct_class = Types::Ac3Settings

    AcceptInputDeviceTransferRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    AcceptInputDeviceTransferRequest.struct_class = Types::AcceptInputDeviceTransferRequest

    AcceptInputDeviceTransferResponse.struct_class = Types::AcceptInputDeviceTransferResponse

    AccessDenied.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    AccessDenied.struct_class = Types::AccessDenied

    AccountConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: __string, location_name: "kmsKeyId"))
    AccountConfiguration.struct_class = Types::AccountConfiguration

    AncillarySourceSettings.add_member(:source_ancillary_channel_number, Shapes::ShapeRef.new(shape: __integerMin1Max4, location_name: "sourceAncillaryChannelNumber"))
    AncillarySourceSettings.struct_class = Types::AncillarySourceSettings

    AnywhereSettings.add_member(:channel_placement_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelPlacementGroupId"))
    AnywhereSettings.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    AnywhereSettings.struct_class = Types::AnywhereSettings

    ArchiveCdnSettings.add_member(:archive_s3_settings, Shapes::ShapeRef.new(shape: ArchiveS3Settings, location_name: "archiveS3Settings"))
    ArchiveCdnSettings.struct_class = Types::ArchiveCdnSettings

    ArchiveContainerSettings.add_member(:m2ts_settings, Shapes::ShapeRef.new(shape: M2tsSettings, location_name: "m2tsSettings"))
    ArchiveContainerSettings.add_member(:raw_settings, Shapes::ShapeRef.new(shape: RawSettings, location_name: "rawSettings"))
    ArchiveContainerSettings.struct_class = Types::ArchiveContainerSettings

    ArchiveGroupSettings.add_member(:archive_cdn_settings, Shapes::ShapeRef.new(shape: ArchiveCdnSettings, location_name: "archiveCdnSettings"))
    ArchiveGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    ArchiveGroupSettings.add_member(:rollover_interval, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "rolloverInterval"))
    ArchiveGroupSettings.struct_class = Types::ArchiveGroupSettings

    ArchiveOutputSettings.add_member(:container_settings, Shapes::ShapeRef.new(shape: ArchiveContainerSettings, required: true, location_name: "containerSettings"))
    ArchiveOutputSettings.add_member(:extension, Shapes::ShapeRef.new(shape: __string, location_name: "extension"))
    ArchiveOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "nameModifier"))
    ArchiveOutputSettings.struct_class = Types::ArchiveOutputSettings

    ArchiveS3Settings.add_member(:canned_acl, Shapes::ShapeRef.new(shape: S3CannedAcl, location_name: "cannedAcl"))
    ArchiveS3Settings.struct_class = Types::ArchiveS3Settings

    AribDestinationSettings.struct_class = Types::AribDestinationSettings

    AribSourceSettings.struct_class = Types::AribSourceSettings

    AudioChannelMapping.add_member(:input_channel_levels, Shapes::ShapeRef.new(shape: __listOfInputChannelLevel, required: true, location_name: "inputChannelLevels"))
    AudioChannelMapping.add_member(:output_channel, Shapes::ShapeRef.new(shape: __integerMin0Max7, required: true, location_name: "outputChannel"))
    AudioChannelMapping.struct_class = Types::AudioChannelMapping

    AudioCodecSettings.add_member(:aac_settings, Shapes::ShapeRef.new(shape: AacSettings, location_name: "aacSettings"))
    AudioCodecSettings.add_member(:ac_3_settings, Shapes::ShapeRef.new(shape: Ac3Settings, location_name: "ac3Settings"))
    AudioCodecSettings.add_member(:eac_3_atmos_settings, Shapes::ShapeRef.new(shape: Eac3AtmosSettings, location_name: "eac3AtmosSettings"))
    AudioCodecSettings.add_member(:eac_3_settings, Shapes::ShapeRef.new(shape: Eac3Settings, location_name: "eac3Settings"))
    AudioCodecSettings.add_member(:mp_2_settings, Shapes::ShapeRef.new(shape: Mp2Settings, location_name: "mp2Settings"))
    AudioCodecSettings.add_member(:pass_through_settings, Shapes::ShapeRef.new(shape: PassThroughSettings, location_name: "passThroughSettings"))
    AudioCodecSettings.add_member(:wav_settings, Shapes::ShapeRef.new(shape: WavSettings, location_name: "wavSettings"))
    AudioCodecSettings.struct_class = Types::AudioCodecSettings

    AudioDescription.add_member(:audio_normalization_settings, Shapes::ShapeRef.new(shape: AudioNormalizationSettings, location_name: "audioNormalizationSettings"))
    AudioDescription.add_member(:audio_selector_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "audioSelectorName"))
    AudioDescription.add_member(:audio_type, Shapes::ShapeRef.new(shape: AudioType, location_name: "audioType"))
    AudioDescription.add_member(:audio_type_control, Shapes::ShapeRef.new(shape: AudioDescriptionAudioTypeControl, location_name: "audioTypeControl"))
    AudioDescription.add_member(:audio_watermarking_settings, Shapes::ShapeRef.new(shape: AudioWatermarkSettings, location_name: "audioWatermarkingSettings"))
    AudioDescription.add_member(:codec_settings, Shapes::ShapeRef.new(shape: AudioCodecSettings, location_name: "codecSettings"))
    AudioDescription.add_member(:language_code, Shapes::ShapeRef.new(shape: __stringMin1Max35, location_name: "languageCode"))
    AudioDescription.add_member(:language_code_control, Shapes::ShapeRef.new(shape: AudioDescriptionLanguageCodeControl, location_name: "languageCodeControl"))
    AudioDescription.add_member(:name, Shapes::ShapeRef.new(shape: __stringMax255, required: true, location_name: "name"))
    AudioDescription.add_member(:remix_settings, Shapes::ShapeRef.new(shape: RemixSettings, location_name: "remixSettings"))
    AudioDescription.add_member(:stream_name, Shapes::ShapeRef.new(shape: __string, location_name: "streamName"))
    AudioDescription.add_member(:audio_dash_roles, Shapes::ShapeRef.new(shape: __listOfDashRoleAudio, location_name: "audioDashRoles"))
    AudioDescription.add_member(:dvb_dash_accessibility, Shapes::ShapeRef.new(shape: DvbDashAccessibility, location_name: "dvbDashAccessibility"))
    AudioDescription.struct_class = Types::AudioDescription

    AudioDolbyEDecode.add_member(:program_selection, Shapes::ShapeRef.new(shape: DolbyEProgramSelection, required: true, location_name: "programSelection"))
    AudioDolbyEDecode.struct_class = Types::AudioDolbyEDecode

    AudioHlsRenditionSelection.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin1, required: true, location_name: "groupId"))
    AudioHlsRenditionSelection.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1, required: true, location_name: "name"))
    AudioHlsRenditionSelection.struct_class = Types::AudioHlsRenditionSelection

    AudioLanguageSelection.add_member(:language_code, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "languageCode"))
    AudioLanguageSelection.add_member(:language_selection_policy, Shapes::ShapeRef.new(shape: AudioLanguageSelectionPolicy, location_name: "languageSelectionPolicy"))
    AudioLanguageSelection.struct_class = Types::AudioLanguageSelection

    AudioNormalizationSettings.add_member(:algorithm, Shapes::ShapeRef.new(shape: AudioNormalizationAlgorithm, location_name: "algorithm"))
    AudioNormalizationSettings.add_member(:algorithm_control, Shapes::ShapeRef.new(shape: AudioNormalizationAlgorithmControl, location_name: "algorithmControl"))
    AudioNormalizationSettings.add_member(:target_lkfs, Shapes::ShapeRef.new(shape: __doubleMinNegative59Max0, location_name: "targetLkfs"))
    AudioNormalizationSettings.struct_class = Types::AudioNormalizationSettings

    AudioOnlyHlsSettings.add_member(:audio_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "audioGroupId"))
    AudioOnlyHlsSettings.add_member(:audio_only_image, Shapes::ShapeRef.new(shape: InputLocation, location_name: "audioOnlyImage"))
    AudioOnlyHlsSettings.add_member(:audio_track_type, Shapes::ShapeRef.new(shape: AudioOnlyHlsTrackType, location_name: "audioTrackType"))
    AudioOnlyHlsSettings.add_member(:segment_type, Shapes::ShapeRef.new(shape: AudioOnlyHlsSegmentType, location_name: "segmentType"))
    AudioOnlyHlsSettings.struct_class = Types::AudioOnlyHlsSettings

    AudioPidSelection.add_member(:pid, Shapes::ShapeRef.new(shape: __integerMin0Max8191, required: true, location_name: "pid"))
    AudioPidSelection.struct_class = Types::AudioPidSelection

    AudioSelector.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1, required: true, location_name: "name"))
    AudioSelector.add_member(:selector_settings, Shapes::ShapeRef.new(shape: AudioSelectorSettings, location_name: "selectorSettings"))
    AudioSelector.struct_class = Types::AudioSelector

    AudioSelectorSettings.add_member(:audio_hls_rendition_selection, Shapes::ShapeRef.new(shape: AudioHlsRenditionSelection, location_name: "audioHlsRenditionSelection"))
    AudioSelectorSettings.add_member(:audio_language_selection, Shapes::ShapeRef.new(shape: AudioLanguageSelection, location_name: "audioLanguageSelection"))
    AudioSelectorSettings.add_member(:audio_pid_selection, Shapes::ShapeRef.new(shape: AudioPidSelection, location_name: "audioPidSelection"))
    AudioSelectorSettings.add_member(:audio_track_selection, Shapes::ShapeRef.new(shape: AudioTrackSelection, location_name: "audioTrackSelection"))
    AudioSelectorSettings.struct_class = Types::AudioSelectorSettings

    AudioSilenceFailoverSettings.add_member(:audio_selector_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "audioSelectorName"))
    AudioSilenceFailoverSettings.add_member(:audio_silence_threshold_msec, Shapes::ShapeRef.new(shape: __integerMin1000, location_name: "audioSilenceThresholdMsec"))
    AudioSilenceFailoverSettings.struct_class = Types::AudioSilenceFailoverSettings

    AudioTrack.add_member(:track, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "track"))
    AudioTrack.struct_class = Types::AudioTrack

    AudioTrackSelection.add_member(:tracks, Shapes::ShapeRef.new(shape: __listOfAudioTrack, required: true, location_name: "tracks"))
    AudioTrackSelection.add_member(:dolby_e_decode, Shapes::ShapeRef.new(shape: AudioDolbyEDecode, location_name: "dolbyEDecode"))
    AudioTrackSelection.struct_class = Types::AudioTrackSelection

    AudioWatermarkSettings.add_member(:nielsen_watermarks_settings, Shapes::ShapeRef.new(shape: NielsenWatermarksSettings, location_name: "nielsenWatermarksSettings"))
    AudioWatermarkSettings.struct_class = Types::AudioWatermarkSettings

    AutomaticInputFailoverSettings.add_member(:error_clear_time_msec, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "errorClearTimeMsec"))
    AutomaticInputFailoverSettings.add_member(:failover_conditions, Shapes::ShapeRef.new(shape: __listOfFailoverCondition, location_name: "failoverConditions"))
    AutomaticInputFailoverSettings.add_member(:input_preference, Shapes::ShapeRef.new(shape: InputPreference, location_name: "inputPreference"))
    AutomaticInputFailoverSettings.add_member(:secondary_input_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "secondaryInputId"))
    AutomaticInputFailoverSettings.struct_class = Types::AutomaticInputFailoverSettings

    Av1ColorSpaceSettings.add_member(:color_space_passthrough_settings, Shapes::ShapeRef.new(shape: ColorSpacePassthroughSettings, location_name: "colorSpacePassthroughSettings"))
    Av1ColorSpaceSettings.add_member(:hdr_10_settings, Shapes::ShapeRef.new(shape: Hdr10Settings, location_name: "hdr10Settings"))
    Av1ColorSpaceSettings.add_member(:rec_601_settings, Shapes::ShapeRef.new(shape: Rec601Settings, location_name: "rec601Settings"))
    Av1ColorSpaceSettings.add_member(:rec_709_settings, Shapes::ShapeRef.new(shape: Rec709Settings, location_name: "rec709Settings"))
    Av1ColorSpaceSettings.struct_class = Types::Av1ColorSpaceSettings

    Av1Settings.add_member(:afd_signaling, Shapes::ShapeRef.new(shape: AfdSignaling, location_name: "afdSignaling"))
    Av1Settings.add_member(:buf_size, Shapes::ShapeRef.new(shape: __integerMin50000Max16000000, location_name: "bufSize"))
    Av1Settings.add_member(:color_space_settings, Shapes::ShapeRef.new(shape: Av1ColorSpaceSettings, location_name: "colorSpaceSettings"))
    Av1Settings.add_member(:fixed_afd, Shapes::ShapeRef.new(shape: FixedAfd, location_name: "fixedAfd"))
    Av1Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integerMin1Max3003, required: true, location_name: "framerateDenominator"))
    Av1Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "framerateNumerator"))
    Av1Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __doubleMin0, location_name: "gopSize"))
    Av1Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: Av1GopSizeUnits, location_name: "gopSizeUnits"))
    Av1Settings.add_member(:level, Shapes::ShapeRef.new(shape: Av1Level, location_name: "level"))
    Av1Settings.add_member(:look_ahead_rate_control, Shapes::ShapeRef.new(shape: Av1LookAheadRateControl, location_name: "lookAheadRateControl"))
    Av1Settings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integerMin50000Max8000000, location_name: "maxBitrate"))
    Av1Settings.add_member(:min_i_interval, Shapes::ShapeRef.new(shape: __integerMin0Max30, location_name: "minIInterval"))
    Av1Settings.add_member(:par_denominator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parDenominator"))
    Av1Settings.add_member(:par_numerator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parNumerator"))
    Av1Settings.add_member(:qvbr_quality_level, Shapes::ShapeRef.new(shape: __integerMin1Max10, location_name: "qvbrQualityLevel"))
    Av1Settings.add_member(:scene_change_detect, Shapes::ShapeRef.new(shape: Av1SceneChangeDetect, location_name: "sceneChangeDetect"))
    Av1Settings.add_member(:timecode_burnin_settings, Shapes::ShapeRef.new(shape: TimecodeBurninSettings, location_name: "timecodeBurninSettings"))
    Av1Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integerMin50000Max8000000, location_name: "bitrate"))
    Av1Settings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: Av1RateControlMode, location_name: "rateControlMode"))
    Av1Settings.struct_class = Types::Av1Settings

    AvailBlanking.add_member(:avail_blanking_image, Shapes::ShapeRef.new(shape: InputLocation, location_name: "availBlankingImage"))
    AvailBlanking.add_member(:state, Shapes::ShapeRef.new(shape: AvailBlankingState, location_name: "state"))
    AvailBlanking.struct_class = Types::AvailBlanking

    AvailConfiguration.add_member(:avail_settings, Shapes::ShapeRef.new(shape: AvailSettings, location_name: "availSettings"))
    AvailConfiguration.add_member(:scte_35_segmentation_scope, Shapes::ShapeRef.new(shape: Scte35SegmentationScope, location_name: "scte35SegmentationScope"))
    AvailConfiguration.struct_class = Types::AvailConfiguration

    AvailSettings.add_member(:esam, Shapes::ShapeRef.new(shape: Esam, location_name: "esam"))
    AvailSettings.add_member(:scte_35_splice_insert, Shapes::ShapeRef.new(shape: Scte35SpliceInsert, location_name: "scte35SpliceInsert"))
    AvailSettings.add_member(:scte_35_time_signal_apos, Shapes::ShapeRef.new(shape: Scte35TimeSignalApos, location_name: "scte35TimeSignalApos"))
    AvailSettings.struct_class = Types::AvailSettings

    BadGatewayException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadGatewayException.struct_class = Types::BadGatewayException

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    BadRequestExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BadRequestExceptionResponseContent.struct_class = Types::BadRequestExceptionResponseContent

    BandwidthReductionFilterSettings.add_member(:post_filter_sharpening, Shapes::ShapeRef.new(shape: BandwidthReductionPostFilterSharpening, location_name: "postFilterSharpening"))
    BandwidthReductionFilterSettings.add_member(:strength, Shapes::ShapeRef.new(shape: BandwidthReductionFilterStrength, location_name: "strength"))
    BandwidthReductionFilterSettings.struct_class = Types::BandwidthReductionFilterSettings

    BatchDelete.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchDelete.add_member(:input_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputIds"))
    BatchDelete.add_member(:input_security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroupIds"))
    BatchDelete.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchDelete.struct_class = Types::BatchDelete

    BatchDeleteRequest.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchDeleteRequest.add_member(:input_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputIds"))
    BatchDeleteRequest.add_member(:input_security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroupIds"))
    BatchDeleteRequest.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchDeleteRequest.struct_class = Types::BatchDeleteRequest

    BatchDeleteResponse.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchDeleteResponse.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchDeleteResponse.struct_class = Types::BatchDeleteResponse

    BatchDeleteResultModel.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchDeleteResultModel.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchDeleteResultModel.struct_class = Types::BatchDeleteResultModel

    BatchFailedResultModel.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    BatchFailedResultModel.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    BatchFailedResultModel.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    BatchFailedResultModel.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    BatchFailedResultModel.struct_class = Types::BatchFailedResultModel

    BatchScheduleActionCreateRequest.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    BatchScheduleActionCreateRequest.struct_class = Types::BatchScheduleActionCreateRequest

    BatchScheduleActionCreateResult.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    BatchScheduleActionCreateResult.struct_class = Types::BatchScheduleActionCreateResult

    BatchScheduleActionDeleteRequest.add_member(:action_names, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "actionNames"))
    BatchScheduleActionDeleteRequest.struct_class = Types::BatchScheduleActionDeleteRequest

    BatchScheduleActionDeleteResult.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    BatchScheduleActionDeleteResult.struct_class = Types::BatchScheduleActionDeleteResult

    BatchStart.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchStart.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchStart.struct_class = Types::BatchStart

    BatchStartRequest.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchStartRequest.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchStartRequest.struct_class = Types::BatchStartRequest

    BatchStartResponse.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchStartResponse.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchStartResponse.struct_class = Types::BatchStartResponse

    BatchStartResultModel.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchStartResultModel.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchStartResultModel.struct_class = Types::BatchStartResultModel

    BatchStop.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchStop.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchStop.struct_class = Types::BatchStop

    BatchStopRequest.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    BatchStopRequest.add_member(:multiplex_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "multiplexIds"))
    BatchStopRequest.struct_class = Types::BatchStopRequest

    BatchStopResponse.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchStopResponse.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchStopResponse.struct_class = Types::BatchStopResponse

    BatchStopResultModel.add_member(:failed, Shapes::ShapeRef.new(shape: __listOfBatchFailedResultModel, location_name: "failed"))
    BatchStopResultModel.add_member(:successful, Shapes::ShapeRef.new(shape: __listOfBatchSuccessfulResultModel, location_name: "successful"))
    BatchStopResultModel.struct_class = Types::BatchStopResultModel

    BatchSuccessfulResultModel.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    BatchSuccessfulResultModel.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    BatchSuccessfulResultModel.add_member(:state, Shapes::ShapeRef.new(shape: __string, location_name: "state"))
    BatchSuccessfulResultModel.struct_class = Types::BatchSuccessfulResultModel

    BatchUpdateScheduleRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    BatchUpdateScheduleRequest.add_member(:creates, Shapes::ShapeRef.new(shape: BatchScheduleActionCreateRequest, location_name: "creates"))
    BatchUpdateScheduleRequest.add_member(:deletes, Shapes::ShapeRef.new(shape: BatchScheduleActionDeleteRequest, location_name: "deletes"))
    BatchUpdateScheduleRequest.struct_class = Types::BatchUpdateScheduleRequest

    BatchUpdateScheduleResponse.add_member(:creates, Shapes::ShapeRef.new(shape: BatchScheduleActionCreateResult, location_name: "creates"))
    BatchUpdateScheduleResponse.add_member(:deletes, Shapes::ShapeRef.new(shape: BatchScheduleActionDeleteResult, location_name: "deletes"))
    BatchUpdateScheduleResponse.struct_class = Types::BatchUpdateScheduleResponse

    BatchUpdateScheduleResult.add_member(:creates, Shapes::ShapeRef.new(shape: BatchScheduleActionCreateResult, location_name: "creates"))
    BatchUpdateScheduleResult.add_member(:deletes, Shapes::ShapeRef.new(shape: BatchScheduleActionDeleteResult, location_name: "deletes"))
    BatchUpdateScheduleResult.struct_class = Types::BatchUpdateScheduleResult

    BlackoutSlate.add_member(:blackout_slate_image, Shapes::ShapeRef.new(shape: InputLocation, location_name: "blackoutSlateImage"))
    BlackoutSlate.add_member(:network_end_blackout, Shapes::ShapeRef.new(shape: BlackoutSlateNetworkEndBlackout, location_name: "networkEndBlackout"))
    BlackoutSlate.add_member(:network_end_blackout_image, Shapes::ShapeRef.new(shape: InputLocation, location_name: "networkEndBlackoutImage"))
    BlackoutSlate.add_member(:network_id, Shapes::ShapeRef.new(shape: __stringMin34Max34, location_name: "networkId"))
    BlackoutSlate.add_member(:state, Shapes::ShapeRef.new(shape: BlackoutSlateState, location_name: "state"))
    BlackoutSlate.struct_class = Types::BlackoutSlate

    BurnInDestinationSettings.add_member(:alignment, Shapes::ShapeRef.new(shape: BurnInAlignment, location_name: "alignment"))
    BurnInDestinationSettings.add_member(:background_color, Shapes::ShapeRef.new(shape: BurnInBackgroundColor, location_name: "backgroundColor"))
    BurnInDestinationSettings.add_member(:background_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "backgroundOpacity"))
    BurnInDestinationSettings.add_member(:font, Shapes::ShapeRef.new(shape: InputLocation, location_name: "font"))
    BurnInDestinationSettings.add_member(:font_color, Shapes::ShapeRef.new(shape: BurnInFontColor, location_name: "fontColor"))
    BurnInDestinationSettings.add_member(:font_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "fontOpacity"))
    BurnInDestinationSettings.add_member(:font_resolution, Shapes::ShapeRef.new(shape: __integerMin96Max600, location_name: "fontResolution"))
    BurnInDestinationSettings.add_member(:font_size, Shapes::ShapeRef.new(shape: __string, location_name: "fontSize"))
    BurnInDestinationSettings.add_member(:outline_color, Shapes::ShapeRef.new(shape: BurnInOutlineColor, location_name: "outlineColor"))
    BurnInDestinationSettings.add_member(:outline_size, Shapes::ShapeRef.new(shape: __integerMin0Max10, location_name: "outlineSize"))
    BurnInDestinationSettings.add_member(:shadow_color, Shapes::ShapeRef.new(shape: BurnInShadowColor, location_name: "shadowColor"))
    BurnInDestinationSettings.add_member(:shadow_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "shadowOpacity"))
    BurnInDestinationSettings.add_member(:shadow_x_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowXOffset"))
    BurnInDestinationSettings.add_member(:shadow_y_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowYOffset"))
    BurnInDestinationSettings.add_member(:teletext_grid_control, Shapes::ShapeRef.new(shape: BurnInTeletextGridControl, location_name: "teletextGridControl"))
    BurnInDestinationSettings.add_member(:x_position, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "xPosition"))
    BurnInDestinationSettings.add_member(:y_position, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "yPosition"))
    BurnInDestinationSettings.struct_class = Types::BurnInDestinationSettings

    CancelInputDeviceTransferRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    CancelInputDeviceTransferRequest.struct_class = Types::CancelInputDeviceTransferRequest

    CancelInputDeviceTransferResponse.struct_class = Types::CancelInputDeviceTransferResponse

    CaptionDescription.add_member(:accessibility, Shapes::ShapeRef.new(shape: AccessibilityType, location_name: "accessibility"))
    CaptionDescription.add_member(:caption_selector_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "captionSelectorName"))
    CaptionDescription.add_member(:destination_settings, Shapes::ShapeRef.new(shape: CaptionDestinationSettings, location_name: "destinationSettings"))
    CaptionDescription.add_member(:language_code, Shapes::ShapeRef.new(shape: __string, location_name: "languageCode"))
    CaptionDescription.add_member(:language_description, Shapes::ShapeRef.new(shape: __string, location_name: "languageDescription"))
    CaptionDescription.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CaptionDescription.add_member(:caption_dash_roles, Shapes::ShapeRef.new(shape: __listOfDashRoleCaption, location_name: "captionDashRoles"))
    CaptionDescription.add_member(:dvb_dash_accessibility, Shapes::ShapeRef.new(shape: DvbDashAccessibility, location_name: "dvbDashAccessibility"))
    CaptionDescription.struct_class = Types::CaptionDescription

    CaptionDestinationSettings.add_member(:arib_destination_settings, Shapes::ShapeRef.new(shape: AribDestinationSettings, location_name: "aribDestinationSettings"))
    CaptionDestinationSettings.add_member(:burn_in_destination_settings, Shapes::ShapeRef.new(shape: BurnInDestinationSettings, location_name: "burnInDestinationSettings"))
    CaptionDestinationSettings.add_member(:dvb_sub_destination_settings, Shapes::ShapeRef.new(shape: DvbSubDestinationSettings, location_name: "dvbSubDestinationSettings"))
    CaptionDestinationSettings.add_member(:ebu_tt_d_destination_settings, Shapes::ShapeRef.new(shape: EbuTtDDestinationSettings, location_name: "ebuTtDDestinationSettings"))
    CaptionDestinationSettings.add_member(:embedded_destination_settings, Shapes::ShapeRef.new(shape: EmbeddedDestinationSettings, location_name: "embeddedDestinationSettings"))
    CaptionDestinationSettings.add_member(:embedded_plus_scte_20_destination_settings, Shapes::ShapeRef.new(shape: EmbeddedPlusScte20DestinationSettings, location_name: "embeddedPlusScte20DestinationSettings"))
    CaptionDestinationSettings.add_member(:rtmp_caption_info_destination_settings, Shapes::ShapeRef.new(shape: RtmpCaptionInfoDestinationSettings, location_name: "rtmpCaptionInfoDestinationSettings"))
    CaptionDestinationSettings.add_member(:scte_20_plus_embedded_destination_settings, Shapes::ShapeRef.new(shape: Scte20PlusEmbeddedDestinationSettings, location_name: "scte20PlusEmbeddedDestinationSettings"))
    CaptionDestinationSettings.add_member(:scte_27_destination_settings, Shapes::ShapeRef.new(shape: Scte27DestinationSettings, location_name: "scte27DestinationSettings"))
    CaptionDestinationSettings.add_member(:smpte_tt_destination_settings, Shapes::ShapeRef.new(shape: SmpteTtDestinationSettings, location_name: "smpteTtDestinationSettings"))
    CaptionDestinationSettings.add_member(:teletext_destination_settings, Shapes::ShapeRef.new(shape: TeletextDestinationSettings, location_name: "teletextDestinationSettings"))
    CaptionDestinationSettings.add_member(:ttml_destination_settings, Shapes::ShapeRef.new(shape: TtmlDestinationSettings, location_name: "ttmlDestinationSettings"))
    CaptionDestinationSettings.add_member(:webvtt_destination_settings, Shapes::ShapeRef.new(shape: WebvttDestinationSettings, location_name: "webvttDestinationSettings"))
    CaptionDestinationSettings.struct_class = Types::CaptionDestinationSettings

    CaptionLanguageMapping.add_member(:caption_channel, Shapes::ShapeRef.new(shape: __integerMin1Max4, required: true, location_name: "captionChannel"))
    CaptionLanguageMapping.add_member(:language_code, Shapes::ShapeRef.new(shape: __stringMin3Max3, required: true, location_name: "languageCode"))
    CaptionLanguageMapping.add_member(:language_description, Shapes::ShapeRef.new(shape: __stringMin1, required: true, location_name: "languageDescription"))
    CaptionLanguageMapping.struct_class = Types::CaptionLanguageMapping

    CaptionRectangle.add_member(:height, Shapes::ShapeRef.new(shape: __doubleMin0Max100, required: true, location_name: "height"))
    CaptionRectangle.add_member(:left_offset, Shapes::ShapeRef.new(shape: __doubleMin0Max100, required: true, location_name: "leftOffset"))
    CaptionRectangle.add_member(:top_offset, Shapes::ShapeRef.new(shape: __doubleMin0Max100, required: true, location_name: "topOffset"))
    CaptionRectangle.add_member(:width, Shapes::ShapeRef.new(shape: __doubleMin0Max100, required: true, location_name: "width"))
    CaptionRectangle.struct_class = Types::CaptionRectangle

    CaptionSelector.add_member(:language_code, Shapes::ShapeRef.new(shape: __string, location_name: "languageCode"))
    CaptionSelector.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1, required: true, location_name: "name"))
    CaptionSelector.add_member(:selector_settings, Shapes::ShapeRef.new(shape: CaptionSelectorSettings, location_name: "selectorSettings"))
    CaptionSelector.struct_class = Types::CaptionSelector

    CaptionSelectorSettings.add_member(:ancillary_source_settings, Shapes::ShapeRef.new(shape: AncillarySourceSettings, location_name: "ancillarySourceSettings"))
    CaptionSelectorSettings.add_member(:arib_source_settings, Shapes::ShapeRef.new(shape: AribSourceSettings, location_name: "aribSourceSettings"))
    CaptionSelectorSettings.add_member(:dvb_sub_source_settings, Shapes::ShapeRef.new(shape: DvbSubSourceSettings, location_name: "dvbSubSourceSettings"))
    CaptionSelectorSettings.add_member(:embedded_source_settings, Shapes::ShapeRef.new(shape: EmbeddedSourceSettings, location_name: "embeddedSourceSettings"))
    CaptionSelectorSettings.add_member(:scte_20_source_settings, Shapes::ShapeRef.new(shape: Scte20SourceSettings, location_name: "scte20SourceSettings"))
    CaptionSelectorSettings.add_member(:scte_27_source_settings, Shapes::ShapeRef.new(shape: Scte27SourceSettings, location_name: "scte27SourceSettings"))
    CaptionSelectorSettings.add_member(:teletext_source_settings, Shapes::ShapeRef.new(shape: TeletextSourceSettings, location_name: "teletextSourceSettings"))
    CaptionSelectorSettings.struct_class = Types::CaptionSelectorSettings

    CdiInputSpecification.add_member(:resolution, Shapes::ShapeRef.new(shape: CdiInputResolution, location_name: "resolution"))
    CdiInputSpecification.struct_class = Types::CdiInputSpecification

    Channel.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Channel.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    Channel.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    Channel.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    Channel.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    Channel.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    Channel.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Channel.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    Channel.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    Channel.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    Channel.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "maintenance"))
    Channel.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Channel.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    Channel.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    Channel.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    Channel.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    Channel.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Channel.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcOutputSettingsDescription, location_name: "vpc"))
    Channel.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: DescribeAnywhereSettings, location_name: "anywhereSettings"))
    Channel.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionResponse, location_name: "channelEngineVersion"))
    Channel.struct_class = Types::Channel

    ChannelConfigurationValidationError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ChannelConfigurationValidationError.add_member(:validation_errors, Shapes::ShapeRef.new(shape: __listOfValidationError, location_name: "validationErrors"))
    ChannelConfigurationValidationError.struct_class = Types::ChannelConfigurationValidationError

    ChannelEgressEndpoint.add_member(:source_ip, Shapes::ShapeRef.new(shape: __string, location_name: "sourceIp"))
    ChannelEgressEndpoint.struct_class = Types::ChannelEgressEndpoint

    ChannelEngineVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "version"))
    ChannelEngineVersionRequest.struct_class = Types::ChannelEngineVersionRequest

    ChannelEngineVersionResponse.add_member(:expiration_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "expirationDate"))
    ChannelEngineVersionResponse.add_member(:version, Shapes::ShapeRef.new(shape: __string, location_name: "version"))
    ChannelEngineVersionResponse.struct_class = Types::ChannelEngineVersionResponse

    ChannelSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    ChannelSummary.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    ChannelSummary.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    ChannelSummary.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    ChannelSummary.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    ChannelSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    ChannelSummary.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    ChannelSummary.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    ChannelSummary.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    ChannelSummary.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "maintenance"))
    ChannelSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    ChannelSummary.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    ChannelSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    ChannelSummary.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    ChannelSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ChannelSummary.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcOutputSettingsDescription, location_name: "vpc"))
    ChannelSummary.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: DescribeAnywhereSettings, location_name: "anywhereSettings"))
    ChannelSummary.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionResponse, location_name: "channelEngineVersion"))
    ChannelSummary.add_member(:used_channel_engine_versions, Shapes::ShapeRef.new(shape: __listOfChannelEngineVersionResponse, location_name: "usedChannelEngineVersions"))
    ChannelSummary.struct_class = Types::ChannelSummary

    ClaimDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    ClaimDeviceRequest.struct_class = Types::ClaimDeviceRequest

    ClaimDeviceResponse.struct_class = Types::ClaimDeviceResponse

    CloudWatchAlarmTemplateGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplateGroup, required: true, location_name: "arn"))
    CloudWatchAlarmTemplateGroupSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    CloudWatchAlarmTemplateGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CloudWatchAlarmTemplateGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    CloudWatchAlarmTemplateGroupSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CloudWatchAlarmTemplateGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CloudWatchAlarmTemplateGroupSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CloudWatchAlarmTemplateGroupSummary.add_member(:template_count, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "templateCount"))
    CloudWatchAlarmTemplateGroupSummary.struct_class = Types::CloudWatchAlarmTemplateGroupSummary

    CloudWatchAlarmTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplate, required: true, location_name: "arn"))
    CloudWatchAlarmTemplateSummary.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, required: true, location_name: "comparisonOperator"))
    CloudWatchAlarmTemplateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    CloudWatchAlarmTemplateSummary.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    CloudWatchAlarmTemplateSummary.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CloudWatchAlarmTemplateSummary.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "evaluationPeriods"))
    CloudWatchAlarmTemplateSummary.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "groupId"))
    CloudWatchAlarmTemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    CloudWatchAlarmTemplateSummary.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, required: true, location_name: "metricName"))
    CloudWatchAlarmTemplateSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CloudWatchAlarmTemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CloudWatchAlarmTemplateSummary.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, required: true, location_name: "period"))
    CloudWatchAlarmTemplateSummary.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, required: true, location_name: "statistic"))
    CloudWatchAlarmTemplateSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CloudWatchAlarmTemplateSummary.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, required: true, location_name: "targetResourceType"))
    CloudWatchAlarmTemplateSummary.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "threshold"))
    CloudWatchAlarmTemplateSummary.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, required: true, location_name: "treatMissingData"))
    CloudWatchAlarmTemplateSummary.struct_class = Types::CloudWatchAlarmTemplateSummary

    ClusterNetworkSettings.add_member(:default_route, Shapes::ShapeRef.new(shape: __string, location_name: "defaultRoute"))
    ClusterNetworkSettings.add_member(:interface_mappings, Shapes::ShapeRef.new(shape: __listOfInterfaceMapping, location_name: "interfaceMappings"))
    ClusterNetworkSettings.struct_class = Types::ClusterNetworkSettings

    ClusterNetworkSettingsCreateRequest.add_member(:default_route, Shapes::ShapeRef.new(shape: __string, location_name: "defaultRoute"))
    ClusterNetworkSettingsCreateRequest.add_member(:interface_mappings, Shapes::ShapeRef.new(shape: __listOfInterfaceMappingCreateRequest, location_name: "interfaceMappings"))
    ClusterNetworkSettingsCreateRequest.struct_class = Types::ClusterNetworkSettingsCreateRequest

    ClusterNetworkSettingsUpdateRequest.add_member(:default_route, Shapes::ShapeRef.new(shape: __string, location_name: "defaultRoute"))
    ClusterNetworkSettingsUpdateRequest.add_member(:interface_mappings, Shapes::ShapeRef.new(shape: __listOfInterfaceMappingUpdateRequest, location_name: "interfaceMappings"))
    ClusterNetworkSettingsUpdateRequest.struct_class = Types::ClusterNetworkSettingsUpdateRequest

    CmafIngestCaptionLanguageMapping.add_member(:caption_channel, Shapes::ShapeRef.new(shape: __integerMin1Max4, required: true, location_name: "captionChannel"))
    CmafIngestCaptionLanguageMapping.add_member(:language_code, Shapes::ShapeRef.new(shape: __stringMin3Max3, required: true, location_name: "languageCode"))
    CmafIngestCaptionLanguageMapping.struct_class = Types::CmafIngestCaptionLanguageMapping

    CmafIngestGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    CmafIngestGroupSettings.add_member(:nielsen_id_3_behavior, Shapes::ShapeRef.new(shape: CmafNielsenId3Behavior, location_name: "nielsenId3Behavior"))
    CmafIngestGroupSettings.add_member(:scte_35_type, Shapes::ShapeRef.new(shape: Scte35Type, location_name: "scte35Type"))
    CmafIngestGroupSettings.add_member(:segment_length, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "segmentLength"))
    CmafIngestGroupSettings.add_member(:segment_length_units, Shapes::ShapeRef.new(shape: CmafIngestSegmentLengthUnits, location_name: "segmentLengthUnits"))
    CmafIngestGroupSettings.add_member(:send_delay_ms, Shapes::ShapeRef.new(shape: __integerMin0Max2000, location_name: "sendDelayMs"))
    CmafIngestGroupSettings.add_member(:klv_behavior, Shapes::ShapeRef.new(shape: CmafKLVBehavior, location_name: "klvBehavior"))
    CmafIngestGroupSettings.add_member(:klv_name_modifier, Shapes::ShapeRef.new(shape: __stringMax100, location_name: "klvNameModifier"))
    CmafIngestGroupSettings.add_member(:nielsen_id_3_name_modifier, Shapes::ShapeRef.new(shape: __stringMax100, location_name: "nielsenId3NameModifier"))
    CmafIngestGroupSettings.add_member(:scte_35_name_modifier, Shapes::ShapeRef.new(shape: __stringMax100, location_name: "scte35NameModifier"))
    CmafIngestGroupSettings.add_member(:id_3_behavior, Shapes::ShapeRef.new(shape: CmafId3Behavior, location_name: "id3Behavior"))
    CmafIngestGroupSettings.add_member(:id_3_name_modifier, Shapes::ShapeRef.new(shape: __stringMax100, location_name: "id3NameModifier"))
    CmafIngestGroupSettings.add_member(:caption_language_mappings, Shapes::ShapeRef.new(shape: __listOfCmafIngestCaptionLanguageMapping, location_name: "captionLanguageMappings"))
    CmafIngestGroupSettings.add_member(:timed_metadata_id_3_frame, Shapes::ShapeRef.new(shape: CmafTimedMetadataId3Frame, location_name: "timedMetadataId3Frame"))
    CmafIngestGroupSettings.add_member(:timed_metadata_id_3_period, Shapes::ShapeRef.new(shape: __integerMin0Max10000, location_name: "timedMetadataId3Period"))
    CmafIngestGroupSettings.add_member(:timed_metadata_passthrough, Shapes::ShapeRef.new(shape: CmafTimedMetadataPassthrough, location_name: "timedMetadataPassthrough"))
    CmafIngestGroupSettings.struct_class = Types::CmafIngestGroupSettings

    CmafIngestOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "nameModifier"))
    CmafIngestOutputSettings.struct_class = Types::CmafIngestOutputSettings

    ColorCorrection.add_member(:input_color_space, Shapes::ShapeRef.new(shape: ColorSpace, required: true, location_name: "inputColorSpace"))
    ColorCorrection.add_member(:output_color_space, Shapes::ShapeRef.new(shape: ColorSpace, required: true, location_name: "outputColorSpace"))
    ColorCorrection.add_member(:uri, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "uri"))
    ColorCorrection.struct_class = Types::ColorCorrection

    ColorCorrectionSettings.add_member(:global_color_corrections, Shapes::ShapeRef.new(shape: __listOfColorCorrection, required: true, location_name: "globalColorCorrections"))
    ColorCorrectionSettings.struct_class = Types::ColorCorrectionSettings

    ColorSpacePassthroughSettings.struct_class = Types::ColorSpacePassthroughSettings

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConflictExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictExceptionResponseContent.struct_class = Types::ConflictExceptionResponseContent

    CreateChannel.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    CreateChannel.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    CreateChannel.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    CreateChannel.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    CreateChannel.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    CreateChannel.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    CreateChannel.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    CreateChannel.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceCreateSettings, location_name: "maintenance"))
    CreateChannel.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateChannel.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateChannel.add_member(:reserved, Shapes::ShapeRef.new(shape: __string, deprecated: true, location_name: "reserved"))
    CreateChannel.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    CreateChannel.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateChannel.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcOutputSettings, location_name: "vpc"))
    CreateChannel.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: AnywhereSettings, location_name: "anywhereSettings"))
    CreateChannel.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionRequest, location_name: "channelEngineVersion"))
    CreateChannel.add_member(:dry_run, Shapes::ShapeRef.new(shape: __boolean, location_name: "dryRun"))
    CreateChannel.struct_class = Types::CreateChannel

    CreateChannelPlacementGroupRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    CreateChannelPlacementGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateChannelPlacementGroupRequest.add_member(:nodes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "nodes"))
    CreateChannelPlacementGroupRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateChannelPlacementGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateChannelPlacementGroupRequest.struct_class = Types::CreateChannelPlacementGroupRequest

    CreateChannelPlacementGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateChannelPlacementGroupResponse.add_member(:channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channels"))
    CreateChannelPlacementGroupResponse.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    CreateChannelPlacementGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateChannelPlacementGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateChannelPlacementGroupResponse.add_member(:nodes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "nodes"))
    CreateChannelPlacementGroupResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelPlacementGroupState, location_name: "state"))
    CreateChannelPlacementGroupResponse.struct_class = Types::CreateChannelPlacementGroupResponse

    CreateChannelRequest.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    CreateChannelRequest.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    CreateChannelRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    CreateChannelRequest.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    CreateChannelRequest.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    CreateChannelRequest.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    CreateChannelRequest.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    CreateChannelRequest.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceCreateSettings, location_name: "maintenance"))
    CreateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateChannelRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateChannelRequest.add_member(:reserved, Shapes::ShapeRef.new(shape: __string, deprecated: true, location_name: "reserved"))
    CreateChannelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    CreateChannelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateChannelRequest.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcOutputSettings, location_name: "vpc"))
    CreateChannelRequest.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: AnywhereSettings, location_name: "anywhereSettings"))
    CreateChannelRequest.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionRequest, location_name: "channelEngineVersion"))
    CreateChannelRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: __boolean, location_name: "dryRun"))
    CreateChannelRequest.struct_class = Types::CreateChannelRequest

    CreateChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    CreateChannelResponse.struct_class = Types::CreateChannelResponse

    CreateChannelResultModel.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    CreateChannelResultModel.struct_class = Types::CreateChannelResultModel

    CreateCloudWatchAlarmTemplateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateCloudWatchAlarmTemplateGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateCloudWatchAlarmTemplateGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCloudWatchAlarmTemplateGroupRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternS, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateCloudWatchAlarmTemplateGroupRequest.struct_class = Types::CreateCloudWatchAlarmTemplateGroupRequest

    CreateCloudWatchAlarmTemplateGroupRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateCloudWatchAlarmTemplateGroupRequestContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateCloudWatchAlarmTemplateGroupRequestContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCloudWatchAlarmTemplateGroupRequestContent.add_member(:request_id, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternS, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateCloudWatchAlarmTemplateGroupRequestContent.struct_class = Types::CreateCloudWatchAlarmTemplateGroupRequestContent

    CreateCloudWatchAlarmTemplateGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplateGroup, location_name: "arn"))
    CreateCloudWatchAlarmTemplateGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    CreateCloudWatchAlarmTemplateGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateCloudWatchAlarmTemplateGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    CreateCloudWatchAlarmTemplateGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CreateCloudWatchAlarmTemplateGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    CreateCloudWatchAlarmTemplateGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCloudWatchAlarmTemplateGroupResponse.struct_class = Types::CreateCloudWatchAlarmTemplateGroupResponse

    CreateCloudWatchAlarmTemplateGroupResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplateGroup, required: true, location_name: "arn"))
    CreateCloudWatchAlarmTemplateGroupResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    CreateCloudWatchAlarmTemplateGroupResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateCloudWatchAlarmTemplateGroupResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    CreateCloudWatchAlarmTemplateGroupResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CreateCloudWatchAlarmTemplateGroupResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateCloudWatchAlarmTemplateGroupResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCloudWatchAlarmTemplateGroupResponseContent.struct_class = Types::CreateCloudWatchAlarmTemplateGroupResponseContent

    CreateCloudWatchAlarmTemplateRequest.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, required: true, location_name: "comparisonOperator"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "evaluationPeriods"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: __stringPatternS, required: true, location_name: "groupIdentifier"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, required: true, location_name: "metricName"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, required: true, location_name: "period"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, required: true, location_name: "statistic"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, required: true, location_name: "targetResourceType"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "threshold"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, required: true, location_name: "treatMissingData"))
    CreateCloudWatchAlarmTemplateRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternS, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateCloudWatchAlarmTemplateRequest.struct_class = Types::CreateCloudWatchAlarmTemplateRequest

    CreateCloudWatchAlarmTemplateRequestContent.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, required: true, location_name: "comparisonOperator"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "evaluationPeriods"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:group_identifier, Shapes::ShapeRef.new(shape: __stringPatternS, required: true, location_name: "groupIdentifier"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, required: true, location_name: "metricName"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, required: true, location_name: "period"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, required: true, location_name: "statistic"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, required: true, location_name: "targetResourceType"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "threshold"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, required: true, location_name: "treatMissingData"))
    CreateCloudWatchAlarmTemplateRequestContent.add_member(:request_id, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternS, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateCloudWatchAlarmTemplateRequestContent.struct_class = Types::CreateCloudWatchAlarmTemplateRequestContent

    CreateCloudWatchAlarmTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplate, location_name: "arn"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, location_name: "comparisonOperator"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "evaluationPeriods"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "groupId"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, location_name: "metricName"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, location_name: "period"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, location_name: "statistic"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, location_name: "targetResourceType"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, location_name: "threshold"))
    CreateCloudWatchAlarmTemplateResponse.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, location_name: "treatMissingData"))
    CreateCloudWatchAlarmTemplateResponse.struct_class = Types::CreateCloudWatchAlarmTemplateResponse

    CreateCloudWatchAlarmTemplateResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplate, required: true, location_name: "arn"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, required: true, location_name: "comparisonOperator"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "evaluationPeriods"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "groupId"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, required: true, location_name: "metricName"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, required: true, location_name: "period"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, required: true, location_name: "statistic"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, required: true, location_name: "targetResourceType"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "threshold"))
    CreateCloudWatchAlarmTemplateResponseContent.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, required: true, location_name: "treatMissingData"))
    CreateCloudWatchAlarmTemplateResponseContent.struct_class = Types::CreateCloudWatchAlarmTemplateResponseContent

    CreateClusterRequest.add_member(:cluster_type, Shapes::ShapeRef.new(shape: ClusterType, location_name: "clusterType"))
    CreateClusterRequest.add_member(:instance_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceRoleArn"))
    CreateClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateClusterRequest.add_member(:network_settings, Shapes::ShapeRef.new(shape: ClusterNetworkSettingsCreateRequest, location_name: "networkSettings"))
    CreateClusterRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateClusterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateClusterResponse.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    CreateClusterResponse.add_member(:cluster_type, Shapes::ShapeRef.new(shape: ClusterType, location_name: "clusterType"))
    CreateClusterResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateClusterResponse.add_member(:instance_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceRoleArn"))
    CreateClusterResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateClusterResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: ClusterNetworkSettings, location_name: "networkSettings"))
    CreateClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    CreateEventBridgeRuleTemplateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateEventBridgeRuleTemplateGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateEventBridgeRuleTemplateGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEventBridgeRuleTemplateGroupRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternS, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateEventBridgeRuleTemplateGroupRequest.struct_class = Types::CreateEventBridgeRuleTemplateGroupRequest

    CreateEventBridgeRuleTemplateGroupRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateEventBridgeRuleTemplateGroupRequestContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateEventBridgeRuleTemplateGroupRequestContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEventBridgeRuleTemplateGroupRequestContent.add_member(:request_id, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternS, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateEventBridgeRuleTemplateGroupRequestContent.struct_class = Types::CreateEventBridgeRuleTemplateGroupRequestContent

    CreateEventBridgeRuleTemplateGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplateGroup, location_name: "arn"))
    CreateEventBridgeRuleTemplateGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    CreateEventBridgeRuleTemplateGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateEventBridgeRuleTemplateGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    CreateEventBridgeRuleTemplateGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CreateEventBridgeRuleTemplateGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    CreateEventBridgeRuleTemplateGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEventBridgeRuleTemplateGroupResponse.struct_class = Types::CreateEventBridgeRuleTemplateGroupResponse

    CreateEventBridgeRuleTemplateGroupResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplateGroup, required: true, location_name: "arn"))
    CreateEventBridgeRuleTemplateGroupResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    CreateEventBridgeRuleTemplateGroupResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateEventBridgeRuleTemplateGroupResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    CreateEventBridgeRuleTemplateGroupResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CreateEventBridgeRuleTemplateGroupResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateEventBridgeRuleTemplateGroupResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEventBridgeRuleTemplateGroupResponseContent.struct_class = Types::CreateEventBridgeRuleTemplateGroupResponseContent

    CreateEventBridgeRuleTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateEventBridgeRuleTemplateRequest.add_member(:event_targets, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateTarget, location_name: "eventTargets"))
    CreateEventBridgeRuleTemplateRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, required: true, location_name: "eventType"))
    CreateEventBridgeRuleTemplateRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: __stringPatternS, required: true, location_name: "groupIdentifier"))
    CreateEventBridgeRuleTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateEventBridgeRuleTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEventBridgeRuleTemplateRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternS, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateEventBridgeRuleTemplateRequest.struct_class = Types::CreateEventBridgeRuleTemplateRequest

    CreateEventBridgeRuleTemplateRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateEventBridgeRuleTemplateRequestContent.add_member(:event_targets, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateTarget, location_name: "eventTargets"))
    CreateEventBridgeRuleTemplateRequestContent.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, required: true, location_name: "eventType"))
    CreateEventBridgeRuleTemplateRequestContent.add_member(:group_identifier, Shapes::ShapeRef.new(shape: __stringPatternS, required: true, location_name: "groupIdentifier"))
    CreateEventBridgeRuleTemplateRequestContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateEventBridgeRuleTemplateRequestContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEventBridgeRuleTemplateRequestContent.add_member(:request_id, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternS, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateEventBridgeRuleTemplateRequestContent.struct_class = Types::CreateEventBridgeRuleTemplateRequestContent

    CreateEventBridgeRuleTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplate, location_name: "arn"))
    CreateEventBridgeRuleTemplateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    CreateEventBridgeRuleTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateEventBridgeRuleTemplateResponse.add_member(:event_targets, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateTarget, location_name: "eventTargets"))
    CreateEventBridgeRuleTemplateResponse.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, location_name: "eventType"))
    CreateEventBridgeRuleTemplateResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "groupId"))
    CreateEventBridgeRuleTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    CreateEventBridgeRuleTemplateResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CreateEventBridgeRuleTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    CreateEventBridgeRuleTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEventBridgeRuleTemplateResponse.struct_class = Types::CreateEventBridgeRuleTemplateResponse

    CreateEventBridgeRuleTemplateResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplate, required: true, location_name: "arn"))
    CreateEventBridgeRuleTemplateResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    CreateEventBridgeRuleTemplateResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateEventBridgeRuleTemplateResponseContent.add_member(:event_targets, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateTarget, location_name: "eventTargets"))
    CreateEventBridgeRuleTemplateResponseContent.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, required: true, location_name: "eventType"))
    CreateEventBridgeRuleTemplateResponseContent.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "groupId"))
    CreateEventBridgeRuleTemplateResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    CreateEventBridgeRuleTemplateResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CreateEventBridgeRuleTemplateResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateEventBridgeRuleTemplateResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEventBridgeRuleTemplateResponseContent.struct_class = Types::CreateEventBridgeRuleTemplateResponseContent

    CreateInput.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    CreateInput.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSettings, location_name: "inputDevices"))
    CreateInput.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    CreateInput.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlowRequest, location_name: "mediaConnectFlows"))
    CreateInput.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateInput.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    CreateInput.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    CreateInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateInput.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    CreateInput.add_member(:vpc, Shapes::ShapeRef.new(shape: InputVpcRequest, location_name: "vpc"))
    CreateInput.add_member(:srt_settings, Shapes::ShapeRef.new(shape: SrtSettingsRequest, location_name: "srtSettings"))
    CreateInput.add_member(:input_network_location, Shapes::ShapeRef.new(shape: InputNetworkLocation, location_name: "inputNetworkLocation"))
    CreateInput.add_member(:multicast_settings, Shapes::ShapeRef.new(shape: MulticastSettingsCreateRequest, location_name: "multicastSettings"))
    CreateInput.add_member(:smpte_2110_receiver_group_settings, Shapes::ShapeRef.new(shape: Smpte2110ReceiverGroupSettings, location_name: "smpte2110ReceiverGroupSettings"))
    CreateInput.add_member(:sdi_sources, Shapes::ShapeRef.new(shape: InputSdiSources, location_name: "sdiSources"))
    CreateInput.struct_class = Types::CreateInput

    CreateInputRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    CreateInputRequest.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSettings, location_name: "inputDevices"))
    CreateInputRequest.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    CreateInputRequest.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlowRequest, location_name: "mediaConnectFlows"))
    CreateInputRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateInputRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateInputRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    CreateInputRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    CreateInputRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateInputRequest.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    CreateInputRequest.add_member(:vpc, Shapes::ShapeRef.new(shape: InputVpcRequest, location_name: "vpc"))
    CreateInputRequest.add_member(:srt_settings, Shapes::ShapeRef.new(shape: SrtSettingsRequest, location_name: "srtSettings"))
    CreateInputRequest.add_member(:input_network_location, Shapes::ShapeRef.new(shape: InputNetworkLocation, location_name: "inputNetworkLocation"))
    CreateInputRequest.add_member(:multicast_settings, Shapes::ShapeRef.new(shape: MulticastSettingsCreateRequest, location_name: "multicastSettings"))
    CreateInputRequest.add_member(:smpte_2110_receiver_group_settings, Shapes::ShapeRef.new(shape: Smpte2110ReceiverGroupSettings, location_name: "smpte2110ReceiverGroupSettings"))
    CreateInputRequest.add_member(:sdi_sources, Shapes::ShapeRef.new(shape: InputSdiSources, location_name: "sdiSources"))
    CreateInputRequest.struct_class = Types::CreateInputRequest

    CreateInputResponse.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    CreateInputResponse.struct_class = Types::CreateInputResponse

    CreateInputResultModel.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    CreateInputResultModel.struct_class = Types::CreateInputResultModel

    CreateInputSecurityGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateInputSecurityGroupRequest.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRuleCidr, location_name: "whitelistRules"))
    CreateInputSecurityGroupRequest.struct_class = Types::CreateInputSecurityGroupRequest

    CreateInputSecurityGroupResponse.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    CreateInputSecurityGroupResponse.struct_class = Types::CreateInputSecurityGroupResponse

    CreateInputSecurityGroupResultModel.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    CreateInputSecurityGroupResultModel.struct_class = Types::CreateInputSecurityGroupResultModel

    CreateMultiplex.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "availabilityZones"))
    CreateMultiplex.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, required: true, location_name: "multiplexSettings"))
    CreateMultiplex.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateMultiplex.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateMultiplex.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateMultiplex.struct_class = Types::CreateMultiplex

    CreateMultiplexProgram.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, required: true, location_name: "multiplexProgramSettings"))
    CreateMultiplexProgram.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "programName"))
    CreateMultiplexProgram.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateMultiplexProgram.struct_class = Types::CreateMultiplexProgram

    CreateMultiplexProgramRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    CreateMultiplexProgramRequest.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, required: true, location_name: "multiplexProgramSettings"))
    CreateMultiplexProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "programName"))
    CreateMultiplexProgramRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateMultiplexProgramRequest.struct_class = Types::CreateMultiplexProgramRequest

    CreateMultiplexProgramResponse.add_member(:multiplex_program, Shapes::ShapeRef.new(shape: MultiplexProgram, location_name: "multiplexProgram"))
    CreateMultiplexProgramResponse.struct_class = Types::CreateMultiplexProgramResponse

    CreateMultiplexProgramResultModel.add_member(:multiplex_program, Shapes::ShapeRef.new(shape: MultiplexProgram, location_name: "multiplexProgram"))
    CreateMultiplexProgramResultModel.struct_class = Types::CreateMultiplexProgramResultModel

    CreateMultiplexRequest.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "availabilityZones"))
    CreateMultiplexRequest.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, required: true, location_name: "multiplexSettings"))
    CreateMultiplexRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateMultiplexRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateMultiplexRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateMultiplexRequest.struct_class = Types::CreateMultiplexRequest

    CreateMultiplexResponse.add_member(:multiplex, Shapes::ShapeRef.new(shape: Multiplex, location_name: "multiplex"))
    CreateMultiplexResponse.struct_class = Types::CreateMultiplexResponse

    CreateMultiplexResultModel.add_member(:multiplex, Shapes::ShapeRef.new(shape: Multiplex, location_name: "multiplex"))
    CreateMultiplexResultModel.struct_class = Types::CreateMultiplexResultModel

    CreateNetworkRequest.add_member(:ip_pools, Shapes::ShapeRef.new(shape: __listOfIpPoolCreateRequest, location_name: "ipPools"))
    CreateNetworkRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateNetworkRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateNetworkRequest.add_member(:routes, Shapes::ShapeRef.new(shape: __listOfRouteCreateRequest, location_name: "routes"))
    CreateNetworkRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateNetworkRequest.struct_class = Types::CreateNetworkRequest

    CreateNetworkResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateNetworkResponse.add_member(:associated_cluster_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "associatedClusterIds"))
    CreateNetworkResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateNetworkResponse.add_member(:ip_pools, Shapes::ShapeRef.new(shape: __listOfIpPool, location_name: "ipPools"))
    CreateNetworkResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateNetworkResponse.add_member(:routes, Shapes::ShapeRef.new(shape: __listOfRoute, location_name: "routes"))
    CreateNetworkResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkState, location_name: "state"))
    CreateNetworkResponse.struct_class = Types::CreateNetworkResponse

    CreateNodeRegistrationScriptRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    CreateNodeRegistrationScriptRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateNodeRegistrationScriptRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateNodeRegistrationScriptRequest.add_member(:node_interface_mappings, Shapes::ShapeRef.new(shape: __listOfNodeInterfaceMapping, location_name: "nodeInterfaceMappings"))
    CreateNodeRegistrationScriptRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateNodeRegistrationScriptRequest.add_member(:role, Shapes::ShapeRef.new(shape: NodeRole, location_name: "role"))
    CreateNodeRegistrationScriptRequest.struct_class = Types::CreateNodeRegistrationScriptRequest

    CreateNodeRegistrationScriptResponse.add_member(:node_registration_script, Shapes::ShapeRef.new(shape: __string, location_name: "nodeRegistrationScript"))
    CreateNodeRegistrationScriptResponse.struct_class = Types::CreateNodeRegistrationScriptResponse

    CreateNodeRegistrationScriptResult.add_member(:node_registration_script, Shapes::ShapeRef.new(shape: __string, location_name: "nodeRegistrationScript"))
    CreateNodeRegistrationScriptResult.struct_class = Types::CreateNodeRegistrationScriptResult

    CreateNodeRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    CreateNodeRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateNodeRequest.add_member(:node_interface_mappings, Shapes::ShapeRef.new(shape: __listOfNodeInterfaceMappingCreateRequest, location_name: "nodeInterfaceMappings"))
    CreateNodeRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateNodeRequest.add_member(:role, Shapes::ShapeRef.new(shape: NodeRole, location_name: "role"))
    CreateNodeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateNodeRequest.struct_class = Types::CreateNodeRequest

    CreateNodeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateNodeResponse.add_member(:channel_placement_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelPlacementGroups"))
    CreateNodeResponse.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    CreateNodeResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: NodeConnectionState, location_name: "connectionState"))
    CreateNodeResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateNodeResponse.add_member(:instance_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceArn"))
    CreateNodeResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateNodeResponse.add_member(:node_interface_mappings, Shapes::ShapeRef.new(shape: __listOfNodeInterfaceMapping, location_name: "nodeInterfaceMappings"))
    CreateNodeResponse.add_member(:role, Shapes::ShapeRef.new(shape: NodeRole, location_name: "role"))
    CreateNodeResponse.add_member(:state, Shapes::ShapeRef.new(shape: NodeState, location_name: "state"))
    CreateNodeResponse.add_member(:sdi_source_mappings, Shapes::ShapeRef.new(shape: SdiSourceMappings, location_name: "sdiSourceMappings"))
    CreateNodeResponse.struct_class = Types::CreateNodeResponse

    CreatePartnerInput.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreatePartnerInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePartnerInput.struct_class = Types::CreatePartnerInput

    CreatePartnerInputRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputId"))
    CreatePartnerInputRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreatePartnerInputRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreatePartnerInputRequest.struct_class = Types::CreatePartnerInputRequest

    CreatePartnerInputResponse.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    CreatePartnerInputResponse.struct_class = Types::CreatePartnerInputResponse

    CreatePartnerInputResultModel.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    CreatePartnerInputResultModel.struct_class = Types::CreatePartnerInputResultModel

    CreateSdiSourceRequest.add_member(:mode, Shapes::ShapeRef.new(shape: SdiSourceMode, location_name: "mode"))
    CreateSdiSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateSdiSourceRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateSdiSourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateSdiSourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: SdiSourceType, location_name: "type"))
    CreateSdiSourceRequest.struct_class = Types::CreateSdiSourceRequest

    CreateSdiSourceResponse.add_member(:sdi_source, Shapes::ShapeRef.new(shape: SdiSource, location_name: "sdiSource"))
    CreateSdiSourceResponse.struct_class = Types::CreateSdiSourceResponse

    CreateSignalMapRequest.add_member(:cloud_watch_alarm_template_group_identifiers, Shapes::ShapeRef.new(shape: __listOf__stringPatternS, location_name: "cloudWatchAlarmTemplateGroupIdentifiers"))
    CreateSignalMapRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateSignalMapRequest.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, required: true, location_name: "discoveryEntryPointArn"))
    CreateSignalMapRequest.add_member(:event_bridge_rule_template_group_identifiers, Shapes::ShapeRef.new(shape: __listOf__stringPatternS, location_name: "eventBridgeRuleTemplateGroupIdentifiers"))
    CreateSignalMapRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateSignalMapRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSignalMapRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternS, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateSignalMapRequest.struct_class = Types::CreateSignalMapRequest

    CreateSignalMapRequestContent.add_member(:cloud_watch_alarm_template_group_identifiers, Shapes::ShapeRef.new(shape: __listOf__stringPatternS, location_name: "cloudWatchAlarmTemplateGroupIdentifiers"))
    CreateSignalMapRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateSignalMapRequestContent.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, required: true, location_name: "discoveryEntryPointArn"))
    CreateSignalMapRequestContent.add_member(:event_bridge_rule_template_group_identifiers, Shapes::ShapeRef.new(shape: __listOf__stringPatternS, location_name: "eventBridgeRuleTemplateGroupIdentifiers"))
    CreateSignalMapRequestContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateSignalMapRequestContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSignalMapRequestContent.add_member(:request_id, Shapes::ShapeRef.new(shape: __stringMin1Max256PatternS, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateSignalMapRequestContent.struct_class = Types::CreateSignalMapRequestContent

    CreateSignalMapResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, location_name: "arn"))
    CreateSignalMapResponse.add_member(:cloud_watch_alarm_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "cloudWatchAlarmTemplateGroupIds"))
    CreateSignalMapResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    CreateSignalMapResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateSignalMapResponse.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "discoveryEntryPointArn"))
    CreateSignalMapResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    CreateSignalMapResponse.add_member(:event_bridge_rule_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "eventBridgeRuleTemplateGroupIds"))
    CreateSignalMapResponse.add_member(:failed_media_resource_map, Shapes::ShapeRef.new(shape: FailedMediaResourceMap, location_name: "failedMediaResourceMap"))
    CreateSignalMapResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    CreateSignalMapResponse.add_member(:last_discovered_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastDiscoveredAt"))
    CreateSignalMapResponse.add_member(:last_successful_monitor_deployment, Shapes::ShapeRef.new(shape: SuccessfulMonitorDeployment, location_name: "lastSuccessfulMonitorDeployment"))
    CreateSignalMapResponse.add_member(:media_resource_map, Shapes::ShapeRef.new(shape: MediaResourceMap, location_name: "mediaResourceMap"))
    CreateSignalMapResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CreateSignalMapResponse.add_member(:monitor_changes_pending_deployment, Shapes::ShapeRef.new(shape: __boolean, location_name: "monitorChangesPendingDeployment"))
    CreateSignalMapResponse.add_member(:monitor_deployment, Shapes::ShapeRef.new(shape: MonitorDeployment, location_name: "monitorDeployment"))
    CreateSignalMapResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    CreateSignalMapResponse.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, location_name: "status"))
    CreateSignalMapResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSignalMapResponse.struct_class = Types::CreateSignalMapResponse

    CreateSignalMapResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, required: true, location_name: "arn"))
    CreateSignalMapResponseContent.add_member(:cloud_watch_alarm_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "cloudWatchAlarmTemplateGroupIds"))
    CreateSignalMapResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    CreateSignalMapResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    CreateSignalMapResponseContent.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, required: true, location_name: "discoveryEntryPointArn"))
    CreateSignalMapResponseContent.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    CreateSignalMapResponseContent.add_member(:event_bridge_rule_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "eventBridgeRuleTemplateGroupIds"))
    CreateSignalMapResponseContent.add_member(:failed_media_resource_map, Shapes::ShapeRef.new(shape: FailedMediaResourceMap, location_name: "failedMediaResourceMap"))
    CreateSignalMapResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    CreateSignalMapResponseContent.add_member(:last_discovered_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastDiscoveredAt"))
    CreateSignalMapResponseContent.add_member(:last_successful_monitor_deployment, Shapes::ShapeRef.new(shape: SuccessfulMonitorDeployment, location_name: "lastSuccessfulMonitorDeployment"))
    CreateSignalMapResponseContent.add_member(:media_resource_map, Shapes::ShapeRef.new(shape: MediaResourceMap, location_name: "mediaResourceMap"))
    CreateSignalMapResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    CreateSignalMapResponseContent.add_member(:monitor_changes_pending_deployment, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "monitorChangesPendingDeployment"))
    CreateSignalMapResponseContent.add_member(:monitor_deployment, Shapes::ShapeRef.new(shape: MonitorDeployment, location_name: "monitorDeployment"))
    CreateSignalMapResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    CreateSignalMapResponseContent.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, required: true, location_name: "status"))
    CreateSignalMapResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSignalMapResponseContent.struct_class = Types::CreateSignalMapResponseContent

    CreateTagsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    CreateTagsRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateTagsRequest.struct_class = Types::CreateTagsRequest

    DeleteChannelPlacementGroupRequest.add_member(:channel_placement_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelPlacementGroupId"))
    DeleteChannelPlacementGroupRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    DeleteChannelPlacementGroupRequest.struct_class = Types::DeleteChannelPlacementGroupRequest

    DeleteChannelPlacementGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteChannelPlacementGroupResponse.add_member(:channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channels"))
    DeleteChannelPlacementGroupResponse.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    DeleteChannelPlacementGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DeleteChannelPlacementGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteChannelPlacementGroupResponse.add_member(:nodes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "nodes"))
    DeleteChannelPlacementGroupResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelPlacementGroupState, location_name: "state"))
    DeleteChannelPlacementGroupResponse.struct_class = Types::DeleteChannelPlacementGroupResponse

    DeleteChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DeleteChannelRequest.struct_class = Types::DeleteChannelRequest

    DeleteChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteChannelResponse.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    DeleteChannelResponse.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    DeleteChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    DeleteChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    DeleteChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    DeleteChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DeleteChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    DeleteChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    DeleteChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    DeleteChannelResponse.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "maintenance"))
    DeleteChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteChannelResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    DeleteChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    DeleteChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    DeleteChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    DeleteChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DeleteChannelResponse.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcOutputSettingsDescription, location_name: "vpc"))
    DeleteChannelResponse.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: DescribeAnywhereSettings, location_name: "anywhereSettings"))
    DeleteChannelResponse.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionResponse, location_name: "channelEngineVersion"))
    DeleteChannelResponse.struct_class = Types::DeleteChannelResponse

    DeleteCloudWatchAlarmTemplateGroupRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    DeleteCloudWatchAlarmTemplateGroupRequest.struct_class = Types::DeleteCloudWatchAlarmTemplateGroupRequest

    DeleteCloudWatchAlarmTemplateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    DeleteCloudWatchAlarmTemplateRequest.struct_class = Types::DeleteCloudWatchAlarmTemplateRequest

    DeleteClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteClusterResponse.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    DeleteClusterResponse.add_member(:cluster_type, Shapes::ShapeRef.new(shape: ClusterType, location_name: "clusterType"))
    DeleteClusterResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DeleteClusterResponse.add_member(:instance_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceRoleArn"))
    DeleteClusterResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteClusterResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: ClusterNetworkSettings, location_name: "networkSettings"))
    DeleteClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DeleteEventBridgeRuleTemplateGroupRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    DeleteEventBridgeRuleTemplateGroupRequest.struct_class = Types::DeleteEventBridgeRuleTemplateGroupRequest

    DeleteEventBridgeRuleTemplateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    DeleteEventBridgeRuleTemplateRequest.struct_class = Types::DeleteEventBridgeRuleTemplateRequest

    DeleteInputRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputId"))
    DeleteInputRequest.struct_class = Types::DeleteInputRequest

    DeleteInputResponse.struct_class = Types::DeleteInputResponse

    DeleteInputSecurityGroupRequest.add_member(:input_security_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputSecurityGroupId"))
    DeleteInputSecurityGroupRequest.struct_class = Types::DeleteInputSecurityGroupRequest

    DeleteInputSecurityGroupResponse.struct_class = Types::DeleteInputSecurityGroupResponse

    DeleteMultiplexProgramRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    DeleteMultiplexProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "programName"))
    DeleteMultiplexProgramRequest.struct_class = Types::DeleteMultiplexProgramRequest

    DeleteMultiplexProgramResponse.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    DeleteMultiplexProgramResponse.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, location_name: "multiplexProgramSettings"))
    DeleteMultiplexProgramResponse.add_member(:packet_identifiers_map, Shapes::ShapeRef.new(shape: MultiplexProgramPacketIdentifiersMap, location_name: "packetIdentifiersMap"))
    DeleteMultiplexProgramResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfMultiplexProgramPipelineDetail, location_name: "pipelineDetails"))
    DeleteMultiplexProgramResponse.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "programName"))
    DeleteMultiplexProgramResponse.struct_class = Types::DeleteMultiplexProgramResponse

    DeleteMultiplexRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    DeleteMultiplexRequest.struct_class = Types::DeleteMultiplexRequest

    DeleteMultiplexResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteMultiplexResponse.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    DeleteMultiplexResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMultiplexOutputDestination, location_name: "destinations"))
    DeleteMultiplexResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DeleteMultiplexResponse.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    DeleteMultiplexResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteMultiplexResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    DeleteMultiplexResponse.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    DeleteMultiplexResponse.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    DeleteMultiplexResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DeleteMultiplexResponse.struct_class = Types::DeleteMultiplexResponse

    DeleteNetworkRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "networkId"))
    DeleteNetworkRequest.struct_class = Types::DeleteNetworkRequest

    DeleteNetworkResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteNetworkResponse.add_member(:associated_cluster_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "associatedClusterIds"))
    DeleteNetworkResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DeleteNetworkResponse.add_member(:ip_pools, Shapes::ShapeRef.new(shape: __listOfIpPool, location_name: "ipPools"))
    DeleteNetworkResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteNetworkResponse.add_member(:routes, Shapes::ShapeRef.new(shape: __listOfRoute, location_name: "routes"))
    DeleteNetworkResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkState, location_name: "state"))
    DeleteNetworkResponse.struct_class = Types::DeleteNetworkResponse

    DeleteNodeRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    DeleteNodeRequest.add_member(:node_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "nodeId"))
    DeleteNodeRequest.struct_class = Types::DeleteNodeRequest

    DeleteNodeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteNodeResponse.add_member(:channel_placement_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelPlacementGroups"))
    DeleteNodeResponse.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    DeleteNodeResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: NodeConnectionState, location_name: "connectionState"))
    DeleteNodeResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DeleteNodeResponse.add_member(:instance_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceArn"))
    DeleteNodeResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteNodeResponse.add_member(:node_interface_mappings, Shapes::ShapeRef.new(shape: __listOfNodeInterfaceMapping, location_name: "nodeInterfaceMappings"))
    DeleteNodeResponse.add_member(:role, Shapes::ShapeRef.new(shape: NodeRole, location_name: "role"))
    DeleteNodeResponse.add_member(:state, Shapes::ShapeRef.new(shape: NodeState, location_name: "state"))
    DeleteNodeResponse.add_member(:sdi_source_mappings, Shapes::ShapeRef.new(shape: SdiSourceMappings, location_name: "sdiSourceMappings"))
    DeleteNodeResponse.struct_class = Types::DeleteNodeResponse

    DeleteReservationRequest.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "reservationId"))
    DeleteReservationRequest.struct_class = Types::DeleteReservationRequest

    DeleteReservationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DeleteReservationResponse.add_member(:count, Shapes::ShapeRef.new(shape: __integer, location_name: "count"))
    DeleteReservationResponse.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, location_name: "currencyCode"))
    DeleteReservationResponse.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    DeleteReservationResponse.add_member(:duration_units, Shapes::ShapeRef.new(shape: OfferingDurationUnits, location_name: "durationUnits"))
    DeleteReservationResponse.add_member(:end, Shapes::ShapeRef.new(shape: __string, location_name: "end"))
    DeleteReservationResponse.add_member(:fixed_price, Shapes::ShapeRef.new(shape: __double, location_name: "fixedPrice"))
    DeleteReservationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DeleteReservationResponse.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, location_name: "offeringDescription"))
    DeleteReservationResponse.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, location_name: "offeringId"))
    DeleteReservationResponse.add_member(:offering_type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "offeringType"))
    DeleteReservationResponse.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    DeleteReservationResponse.add_member(:renewal_settings, Shapes::ShapeRef.new(shape: RenewalSettings, location_name: "renewalSettings"))
    DeleteReservationResponse.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, location_name: "reservationId"))
    DeleteReservationResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ReservationResourceSpecification, location_name: "resourceSpecification"))
    DeleteReservationResponse.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    DeleteReservationResponse.add_member(:state, Shapes::ShapeRef.new(shape: ReservationState, location_name: "state"))
    DeleteReservationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DeleteReservationResponse.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    DeleteReservationResponse.struct_class = Types::DeleteReservationResponse

    DeleteScheduleRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DeleteScheduleRequest.struct_class = Types::DeleteScheduleRequest

    DeleteScheduleResponse.struct_class = Types::DeleteScheduleResponse

    DeleteSdiSourceRequest.add_member(:sdi_source_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sdiSourceId"))
    DeleteSdiSourceRequest.struct_class = Types::DeleteSdiSourceRequest

    DeleteSdiSourceResponse.add_member(:sdi_source, Shapes::ShapeRef.new(shape: SdiSource, location_name: "sdiSource"))
    DeleteSdiSourceResponse.struct_class = Types::DeleteSdiSourceResponse

    DeleteSignalMapRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    DeleteSignalMapRequest.struct_class = Types::DeleteSignalMapRequest

    DeleteTagsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    DeleteTagsRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    DeleteTagsRequest.struct_class = Types::DeleteTagsRequest

    DescribeAccountConfigurationRequest.struct_class = Types::DescribeAccountConfigurationRequest

    DescribeAccountConfigurationResponse.add_member(:account_configuration, Shapes::ShapeRef.new(shape: AccountConfiguration, location_name: "accountConfiguration"))
    DescribeAccountConfigurationResponse.struct_class = Types::DescribeAccountConfigurationResponse

    DescribeAccountConfigurationResultModel.add_member(:account_configuration, Shapes::ShapeRef.new(shape: AccountConfiguration, location_name: "accountConfiguration"))
    DescribeAccountConfigurationResultModel.struct_class = Types::DescribeAccountConfigurationResultModel

    DescribeAnywhereSettings.add_member(:channel_placement_group_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelPlacementGroupId"))
    DescribeAnywhereSettings.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    DescribeAnywhereSettings.struct_class = Types::DescribeAnywhereSettings

    DescribeChannelPlacementGroupRequest.add_member(:channel_placement_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelPlacementGroupId"))
    DescribeChannelPlacementGroupRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    DescribeChannelPlacementGroupRequest.struct_class = Types::DescribeChannelPlacementGroupRequest

    DescribeChannelPlacementGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeChannelPlacementGroupResponse.add_member(:channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channels"))
    DescribeChannelPlacementGroupResponse.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    DescribeChannelPlacementGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeChannelPlacementGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeChannelPlacementGroupResponse.add_member(:nodes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "nodes"))
    DescribeChannelPlacementGroupResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelPlacementGroupState, location_name: "state"))
    DescribeChannelPlacementGroupResponse.struct_class = Types::DescribeChannelPlacementGroupResponse

    DescribeChannelPlacementGroupResult.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeChannelPlacementGroupResult.add_member(:channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channels"))
    DescribeChannelPlacementGroupResult.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    DescribeChannelPlacementGroupResult.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeChannelPlacementGroupResult.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeChannelPlacementGroupResult.add_member(:nodes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "nodes"))
    DescribeChannelPlacementGroupResult.add_member(:state, Shapes::ShapeRef.new(shape: ChannelPlacementGroupState, location_name: "state"))
    DescribeChannelPlacementGroupResult.struct_class = Types::DescribeChannelPlacementGroupResult

    DescribeChannelPlacementGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeChannelPlacementGroupSummary.add_member(:channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channels"))
    DescribeChannelPlacementGroupSummary.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    DescribeChannelPlacementGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeChannelPlacementGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeChannelPlacementGroupSummary.add_member(:nodes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "nodes"))
    DescribeChannelPlacementGroupSummary.add_member(:state, Shapes::ShapeRef.new(shape: ChannelPlacementGroupState, location_name: "state"))
    DescribeChannelPlacementGroupSummary.struct_class = Types::DescribeChannelPlacementGroupSummary

    DescribeChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DescribeChannelRequest.struct_class = Types::DescribeChannelRequest

    DescribeChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeChannelResponse.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    DescribeChannelResponse.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    DescribeChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    DescribeChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    DescribeChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    DescribeChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    DescribeChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    DescribeChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    DescribeChannelResponse.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "maintenance"))
    DescribeChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeChannelResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    DescribeChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    DescribeChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    DescribeChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    DescribeChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeChannelResponse.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcOutputSettingsDescription, location_name: "vpc"))
    DescribeChannelResponse.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: DescribeAnywhereSettings, location_name: "anywhereSettings"))
    DescribeChannelResponse.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionResponse, location_name: "channelEngineVersion"))
    DescribeChannelResponse.struct_class = Types::DescribeChannelResponse

    DescribeClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    DescribeClusterRequest.struct_class = Types::DescribeClusterRequest

    DescribeClusterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeClusterResponse.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    DescribeClusterResponse.add_member(:cluster_type, Shapes::ShapeRef.new(shape: ClusterType, location_name: "clusterType"))
    DescribeClusterResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeClusterResponse.add_member(:instance_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceRoleArn"))
    DescribeClusterResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeClusterResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: ClusterNetworkSettings, location_name: "networkSettings"))
    DescribeClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    DescribeClusterResponse.struct_class = Types::DescribeClusterResponse

    DescribeClusterResult.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeClusterResult.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    DescribeClusterResult.add_member(:cluster_type, Shapes::ShapeRef.new(shape: ClusterType, location_name: "clusterType"))
    DescribeClusterResult.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeClusterResult.add_member(:instance_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceRoleArn"))
    DescribeClusterResult.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeClusterResult.add_member(:network_settings, Shapes::ShapeRef.new(shape: ClusterNetworkSettings, location_name: "networkSettings"))
    DescribeClusterResult.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    DescribeClusterResult.struct_class = Types::DescribeClusterResult

    DescribeClusterSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeClusterSummary.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    DescribeClusterSummary.add_member(:cluster_type, Shapes::ShapeRef.new(shape: ClusterType, location_name: "clusterType"))
    DescribeClusterSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeClusterSummary.add_member(:instance_role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceRoleArn"))
    DescribeClusterSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeClusterSummary.add_member(:network_settings, Shapes::ShapeRef.new(shape: ClusterNetworkSettings, location_name: "networkSettings"))
    DescribeClusterSummary.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    DescribeClusterSummary.struct_class = Types::DescribeClusterSummary

    DescribeInputDeviceRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    DescribeInputDeviceRequest.struct_class = Types::DescribeInputDeviceRequest

    DescribeInputDeviceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeInputDeviceResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: InputDeviceConnectionState, location_name: "connectionState"))
    DescribeInputDeviceResponse.add_member(:device_settings_sync_state, Shapes::ShapeRef.new(shape: DeviceSettingsSyncState, location_name: "deviceSettingsSyncState"))
    DescribeInputDeviceResponse.add_member(:device_update_status, Shapes::ShapeRef.new(shape: DeviceUpdateStatus, location_name: "deviceUpdateStatus"))
    DescribeInputDeviceResponse.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceHdSettings, location_name: "hdDeviceSettings"))
    DescribeInputDeviceResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeInputDeviceResponse.add_member(:mac_address, Shapes::ShapeRef.new(shape: __string, location_name: "macAddress"))
    DescribeInputDeviceResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeInputDeviceResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: InputDeviceNetworkSettings, location_name: "networkSettings"))
    DescribeInputDeviceResponse.add_member(:serial_number, Shapes::ShapeRef.new(shape: __string, location_name: "serialNumber"))
    DescribeInputDeviceResponse.add_member(:type, Shapes::ShapeRef.new(shape: InputDeviceType, location_name: "type"))
    DescribeInputDeviceResponse.add_member(:uhd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceUhdSettings, location_name: "uhdDeviceSettings"))
    DescribeInputDeviceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeInputDeviceResponse.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    DescribeInputDeviceResponse.add_member(:medialive_input_arns, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "medialiveInputArns"))
    DescribeInputDeviceResponse.add_member(:output_type, Shapes::ShapeRef.new(shape: InputDeviceOutputType, location_name: "outputType"))
    DescribeInputDeviceResponse.struct_class = Types::DescribeInputDeviceResponse

    DescribeInputDeviceThumbnailRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    DescribeInputDeviceThumbnailRequest.add_member(:accept, Shapes::ShapeRef.new(shape: AcceptHeader, required: true, location: "header", location_name: "accept"))
    DescribeInputDeviceThumbnailRequest.struct_class = Types::DescribeInputDeviceThumbnailRequest

    DescribeInputDeviceThumbnailResponse.add_member(:body, Shapes::ShapeRef.new(shape: InputDeviceThumbnail, location_name: "body"))
    DescribeInputDeviceThumbnailResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location: "header", location_name: "Content-Type"))
    DescribeInputDeviceThumbnailResponse.add_member(:content_length, Shapes::ShapeRef.new(shape: __long, location: "header", location_name: "Content-Length"))
    DescribeInputDeviceThumbnailResponse.add_member(:etag, Shapes::ShapeRef.new(shape: __string, location: "header", location_name: "ETag"))
    DescribeInputDeviceThumbnailResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestamp, location: "header", location_name: "Last-Modified"))
    DescribeInputDeviceThumbnailResponse.struct_class = Types::DescribeInputDeviceThumbnailResponse
    DescribeInputDeviceThumbnailResponse[:payload] = :body
    DescribeInputDeviceThumbnailResponse[:payload_member] = DescribeInputDeviceThumbnailResponse.member(:body)

    DescribeInputRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputId"))
    DescribeInputRequest.struct_class = Types::DescribeInputRequest

    DescribeInputResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeInputResponse.add_member(:attached_channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "attachedChannels"))
    DescribeInputResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestination, location_name: "destinations"))
    DescribeInputResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeInputResponse.add_member(:input_class, Shapes::ShapeRef.new(shape: InputClass, location_name: "inputClass"))
    DescribeInputResponse.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSettings, location_name: "inputDevices"))
    DescribeInputResponse.add_member(:input_partner_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputPartnerIds"))
    DescribeInputResponse.add_member(:input_source_type, Shapes::ShapeRef.new(shape: InputSourceType, location_name: "inputSourceType"))
    DescribeInputResponse.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlow, location_name: "mediaConnectFlows"))
    DescribeInputResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeInputResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    DescribeInputResponse.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    DescribeInputResponse.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSource, location_name: "sources"))
    DescribeInputResponse.add_member(:state, Shapes::ShapeRef.new(shape: InputState, location_name: "state"))
    DescribeInputResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeInputResponse.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    DescribeInputResponse.add_member(:srt_settings, Shapes::ShapeRef.new(shape: SrtSettings, location_name: "srtSettings"))
    DescribeInputResponse.add_member(:input_network_location, Shapes::ShapeRef.new(shape: InputNetworkLocation, location_name: "inputNetworkLocation"))
    DescribeInputResponse.add_member(:multicast_settings, Shapes::ShapeRef.new(shape: MulticastSettings, location_name: "multicastSettings"))
    DescribeInputResponse.add_member(:smpte_2110_receiver_group_settings, Shapes::ShapeRef.new(shape: Smpte2110ReceiverGroupSettings, location_name: "smpte2110ReceiverGroupSettings"))
    DescribeInputResponse.add_member(:sdi_sources, Shapes::ShapeRef.new(shape: InputSdiSources, location_name: "sdiSources"))
    DescribeInputResponse.struct_class = Types::DescribeInputResponse

    DescribeInputSecurityGroupRequest.add_member(:input_security_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputSecurityGroupId"))
    DescribeInputSecurityGroupRequest.struct_class = Types::DescribeInputSecurityGroupRequest

    DescribeInputSecurityGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeInputSecurityGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeInputSecurityGroupResponse.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputs"))
    DescribeInputSecurityGroupResponse.add_member(:state, Shapes::ShapeRef.new(shape: InputSecurityGroupState, location_name: "state"))
    DescribeInputSecurityGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeInputSecurityGroupResponse.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRule, location_name: "whitelistRules"))
    DescribeInputSecurityGroupResponse.struct_class = Types::DescribeInputSecurityGroupResponse

    DescribeMultiplexProgramRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    DescribeMultiplexProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "programName"))
    DescribeMultiplexProgramRequest.struct_class = Types::DescribeMultiplexProgramRequest

    DescribeMultiplexProgramResponse.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    DescribeMultiplexProgramResponse.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, location_name: "multiplexProgramSettings"))
    DescribeMultiplexProgramResponse.add_member(:packet_identifiers_map, Shapes::ShapeRef.new(shape: MultiplexProgramPacketIdentifiersMap, location_name: "packetIdentifiersMap"))
    DescribeMultiplexProgramResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfMultiplexProgramPipelineDetail, location_name: "pipelineDetails"))
    DescribeMultiplexProgramResponse.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "programName"))
    DescribeMultiplexProgramResponse.struct_class = Types::DescribeMultiplexProgramResponse

    DescribeMultiplexRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    DescribeMultiplexRequest.struct_class = Types::DescribeMultiplexRequest

    DescribeMultiplexResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeMultiplexResponse.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    DescribeMultiplexResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMultiplexOutputDestination, location_name: "destinations"))
    DescribeMultiplexResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeMultiplexResponse.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    DescribeMultiplexResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeMultiplexResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    DescribeMultiplexResponse.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    DescribeMultiplexResponse.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    DescribeMultiplexResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeMultiplexResponse.struct_class = Types::DescribeMultiplexResponse

    DescribeNetworkRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "networkId"))
    DescribeNetworkRequest.struct_class = Types::DescribeNetworkRequest

    DescribeNetworkResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeNetworkResponse.add_member(:associated_cluster_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "associatedClusterIds"))
    DescribeNetworkResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeNetworkResponse.add_member(:ip_pools, Shapes::ShapeRef.new(shape: __listOfIpPool, location_name: "ipPools"))
    DescribeNetworkResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeNetworkResponse.add_member(:routes, Shapes::ShapeRef.new(shape: __listOfRoute, location_name: "routes"))
    DescribeNetworkResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkState, location_name: "state"))
    DescribeNetworkResponse.struct_class = Types::DescribeNetworkResponse

    DescribeNetworkResult.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeNetworkResult.add_member(:associated_cluster_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "associatedClusterIds"))
    DescribeNetworkResult.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeNetworkResult.add_member(:ip_pools, Shapes::ShapeRef.new(shape: __listOfIpPool, location_name: "ipPools"))
    DescribeNetworkResult.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeNetworkResult.add_member(:routes, Shapes::ShapeRef.new(shape: __listOfRoute, location_name: "routes"))
    DescribeNetworkResult.add_member(:state, Shapes::ShapeRef.new(shape: NetworkState, location_name: "state"))
    DescribeNetworkResult.struct_class = Types::DescribeNetworkResult

    DescribeNetworkSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeNetworkSummary.add_member(:associated_cluster_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "associatedClusterIds"))
    DescribeNetworkSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeNetworkSummary.add_member(:ip_pools, Shapes::ShapeRef.new(shape: __listOfIpPool, location_name: "ipPools"))
    DescribeNetworkSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeNetworkSummary.add_member(:routes, Shapes::ShapeRef.new(shape: __listOfRoute, location_name: "routes"))
    DescribeNetworkSummary.add_member(:state, Shapes::ShapeRef.new(shape: NetworkState, location_name: "state"))
    DescribeNetworkSummary.struct_class = Types::DescribeNetworkSummary

    DescribeNodeRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    DescribeNodeRequest.add_member(:node_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "nodeId"))
    DescribeNodeRequest.struct_class = Types::DescribeNodeRequest

    DescribeNodeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeNodeResponse.add_member(:channel_placement_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelPlacementGroups"))
    DescribeNodeResponse.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    DescribeNodeResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: NodeConnectionState, location_name: "connectionState"))
    DescribeNodeResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeNodeResponse.add_member(:instance_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceArn"))
    DescribeNodeResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeNodeResponse.add_member(:node_interface_mappings, Shapes::ShapeRef.new(shape: __listOfNodeInterfaceMapping, location_name: "nodeInterfaceMappings"))
    DescribeNodeResponse.add_member(:role, Shapes::ShapeRef.new(shape: NodeRole, location_name: "role"))
    DescribeNodeResponse.add_member(:state, Shapes::ShapeRef.new(shape: NodeState, location_name: "state"))
    DescribeNodeResponse.add_member(:sdi_source_mappings, Shapes::ShapeRef.new(shape: SdiSourceMappings, location_name: "sdiSourceMappings"))
    DescribeNodeResponse.struct_class = Types::DescribeNodeResponse

    DescribeNodeResult.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeNodeResult.add_member(:channel_placement_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelPlacementGroups"))
    DescribeNodeResult.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    DescribeNodeResult.add_member(:connection_state, Shapes::ShapeRef.new(shape: NodeConnectionState, location_name: "connectionState"))
    DescribeNodeResult.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeNodeResult.add_member(:instance_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceArn"))
    DescribeNodeResult.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeNodeResult.add_member(:node_interface_mappings, Shapes::ShapeRef.new(shape: __listOfNodeInterfaceMapping, location_name: "nodeInterfaceMappings"))
    DescribeNodeResult.add_member(:role, Shapes::ShapeRef.new(shape: NodeRole, location_name: "role"))
    DescribeNodeResult.add_member(:state, Shapes::ShapeRef.new(shape: NodeState, location_name: "state"))
    DescribeNodeResult.add_member(:sdi_source_mappings, Shapes::ShapeRef.new(shape: SdiSourceMappings, location_name: "sdiSourceMappings"))
    DescribeNodeResult.struct_class = Types::DescribeNodeResult

    DescribeNodeSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeNodeSummary.add_member(:channel_placement_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelPlacementGroups"))
    DescribeNodeSummary.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    DescribeNodeSummary.add_member(:connection_state, Shapes::ShapeRef.new(shape: NodeConnectionState, location_name: "connectionState"))
    DescribeNodeSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    DescribeNodeSummary.add_member(:instance_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceArn"))
    DescribeNodeSummary.add_member(:managed_instance_id, Shapes::ShapeRef.new(shape: __string, location_name: "managedInstanceId"))
    DescribeNodeSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeNodeSummary.add_member(:node_interface_mappings, Shapes::ShapeRef.new(shape: __listOfNodeInterfaceMapping, location_name: "nodeInterfaceMappings"))
    DescribeNodeSummary.add_member(:role, Shapes::ShapeRef.new(shape: NodeRole, location_name: "role"))
    DescribeNodeSummary.add_member(:state, Shapes::ShapeRef.new(shape: NodeState, location_name: "state"))
    DescribeNodeSummary.add_member(:sdi_source_mappings, Shapes::ShapeRef.new(shape: SdiSourceMappings, location_name: "sdiSourceMappings"))
    DescribeNodeSummary.struct_class = Types::DescribeNodeSummary

    DescribeOfferingRequest.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "offeringId"))
    DescribeOfferingRequest.struct_class = Types::DescribeOfferingRequest

    DescribeOfferingResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeOfferingResponse.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, location_name: "currencyCode"))
    DescribeOfferingResponse.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    DescribeOfferingResponse.add_member(:duration_units, Shapes::ShapeRef.new(shape: OfferingDurationUnits, location_name: "durationUnits"))
    DescribeOfferingResponse.add_member(:fixed_price, Shapes::ShapeRef.new(shape: __double, location_name: "fixedPrice"))
    DescribeOfferingResponse.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, location_name: "offeringDescription"))
    DescribeOfferingResponse.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, location_name: "offeringId"))
    DescribeOfferingResponse.add_member(:offering_type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "offeringType"))
    DescribeOfferingResponse.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    DescribeOfferingResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ReservationResourceSpecification, location_name: "resourceSpecification"))
    DescribeOfferingResponse.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    DescribeOfferingResponse.struct_class = Types::DescribeOfferingResponse

    DescribeReservationRequest.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "reservationId"))
    DescribeReservationRequest.struct_class = Types::DescribeReservationRequest

    DescribeReservationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    DescribeReservationResponse.add_member(:count, Shapes::ShapeRef.new(shape: __integer, location_name: "count"))
    DescribeReservationResponse.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, location_name: "currencyCode"))
    DescribeReservationResponse.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    DescribeReservationResponse.add_member(:duration_units, Shapes::ShapeRef.new(shape: OfferingDurationUnits, location_name: "durationUnits"))
    DescribeReservationResponse.add_member(:end, Shapes::ShapeRef.new(shape: __string, location_name: "end"))
    DescribeReservationResponse.add_member(:fixed_price, Shapes::ShapeRef.new(shape: __double, location_name: "fixedPrice"))
    DescribeReservationResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeReservationResponse.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, location_name: "offeringDescription"))
    DescribeReservationResponse.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, location_name: "offeringId"))
    DescribeReservationResponse.add_member(:offering_type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "offeringType"))
    DescribeReservationResponse.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    DescribeReservationResponse.add_member(:renewal_settings, Shapes::ShapeRef.new(shape: RenewalSettings, location_name: "renewalSettings"))
    DescribeReservationResponse.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, location_name: "reservationId"))
    DescribeReservationResponse.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ReservationResourceSpecification, location_name: "resourceSpecification"))
    DescribeReservationResponse.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    DescribeReservationResponse.add_member(:state, Shapes::ShapeRef.new(shape: ReservationState, location_name: "state"))
    DescribeReservationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    DescribeReservationResponse.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    DescribeReservationResponse.struct_class = Types::DescribeReservationResponse

    DescribeScheduleRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DescribeScheduleRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    DescribeScheduleRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    DescribeScheduleRequest.struct_class = Types::DescribeScheduleRequest

    DescribeScheduleResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    DescribeScheduleResponse.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, location_name: "scheduleActions"))
    DescribeScheduleResponse.struct_class = Types::DescribeScheduleResponse

    DescribeSdiSourceRequest.add_member(:sdi_source_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sdiSourceId"))
    DescribeSdiSourceRequest.struct_class = Types::DescribeSdiSourceRequest

    DescribeSdiSourceResponse.add_member(:sdi_source, Shapes::ShapeRef.new(shape: SdiSource, location_name: "sdiSource"))
    DescribeSdiSourceResponse.struct_class = Types::DescribeSdiSourceResponse

    DescribeThumbnailsRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    DescribeThumbnailsRequest.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "pipelineId"))
    DescribeThumbnailsRequest.add_member(:thumbnail_type, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "thumbnailType"))
    DescribeThumbnailsRequest.struct_class = Types::DescribeThumbnailsRequest

    DescribeThumbnailsResponse.add_member(:thumbnail_details, Shapes::ShapeRef.new(shape: __listOfThumbnailDetail, location_name: "thumbnailDetails"))
    DescribeThumbnailsResponse.struct_class = Types::DescribeThumbnailsResponse

    DescribeThumbnailsResultModel.add_member(:thumbnail_details, Shapes::ShapeRef.new(shape: __listOfThumbnailDetail, location_name: "thumbnailDetails"))
    DescribeThumbnailsResultModel.struct_class = Types::DescribeThumbnailsResultModel

    DolbyVision81Settings.struct_class = Types::DolbyVision81Settings

    DvbNitSettings.add_member(:network_id, Shapes::ShapeRef.new(shape: __integerMin0Max65536, required: true, location_name: "networkId"))
    DvbNitSettings.add_member(:network_name, Shapes::ShapeRef.new(shape: __stringMin1Max256, required: true, location_name: "networkName"))
    DvbNitSettings.add_member(:rep_interval, Shapes::ShapeRef.new(shape: __integerMin25Max10000, location_name: "repInterval"))
    DvbNitSettings.struct_class = Types::DvbNitSettings

    DvbSdtSettings.add_member(:output_sdt, Shapes::ShapeRef.new(shape: DvbSdtOutputSdt, location_name: "outputSdt"))
    DvbSdtSettings.add_member(:rep_interval, Shapes::ShapeRef.new(shape: __integerMin25Max2000, location_name: "repInterval"))
    DvbSdtSettings.add_member(:service_name, Shapes::ShapeRef.new(shape: __stringMin1Max256, location_name: "serviceName"))
    DvbSdtSettings.add_member(:service_provider_name, Shapes::ShapeRef.new(shape: __stringMin1Max256, location_name: "serviceProviderName"))
    DvbSdtSettings.struct_class = Types::DvbSdtSettings

    DvbSubDestinationSettings.add_member(:alignment, Shapes::ShapeRef.new(shape: DvbSubDestinationAlignment, location_name: "alignment"))
    DvbSubDestinationSettings.add_member(:background_color, Shapes::ShapeRef.new(shape: DvbSubDestinationBackgroundColor, location_name: "backgroundColor"))
    DvbSubDestinationSettings.add_member(:background_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "backgroundOpacity"))
    DvbSubDestinationSettings.add_member(:font, Shapes::ShapeRef.new(shape: InputLocation, location_name: "font"))
    DvbSubDestinationSettings.add_member(:font_color, Shapes::ShapeRef.new(shape: DvbSubDestinationFontColor, location_name: "fontColor"))
    DvbSubDestinationSettings.add_member(:font_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "fontOpacity"))
    DvbSubDestinationSettings.add_member(:font_resolution, Shapes::ShapeRef.new(shape: __integerMin96Max600, location_name: "fontResolution"))
    DvbSubDestinationSettings.add_member(:font_size, Shapes::ShapeRef.new(shape: __string, location_name: "fontSize"))
    DvbSubDestinationSettings.add_member(:outline_color, Shapes::ShapeRef.new(shape: DvbSubDestinationOutlineColor, location_name: "outlineColor"))
    DvbSubDestinationSettings.add_member(:outline_size, Shapes::ShapeRef.new(shape: __integerMin0Max10, location_name: "outlineSize"))
    DvbSubDestinationSettings.add_member(:shadow_color, Shapes::ShapeRef.new(shape: DvbSubDestinationShadowColor, location_name: "shadowColor"))
    DvbSubDestinationSettings.add_member(:shadow_opacity, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "shadowOpacity"))
    DvbSubDestinationSettings.add_member(:shadow_x_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowXOffset"))
    DvbSubDestinationSettings.add_member(:shadow_y_offset, Shapes::ShapeRef.new(shape: __integer, location_name: "shadowYOffset"))
    DvbSubDestinationSettings.add_member(:teletext_grid_control, Shapes::ShapeRef.new(shape: DvbSubDestinationTeletextGridControl, location_name: "teletextGridControl"))
    DvbSubDestinationSettings.add_member(:x_position, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "xPosition"))
    DvbSubDestinationSettings.add_member(:y_position, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "yPosition"))
    DvbSubDestinationSettings.struct_class = Types::DvbSubDestinationSettings

    DvbSubSourceSettings.add_member(:ocr_language, Shapes::ShapeRef.new(shape: DvbSubOcrLanguage, location_name: "ocrLanguage"))
    DvbSubSourceSettings.add_member(:pid, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "pid"))
    DvbSubSourceSettings.struct_class = Types::DvbSubSourceSettings

    DvbTdtSettings.add_member(:rep_interval, Shapes::ShapeRef.new(shape: __integerMin1000Max30000, location_name: "repInterval"))
    DvbTdtSettings.struct_class = Types::DvbTdtSettings

    Eac3AtmosSettings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "bitrate"))
    Eac3AtmosSettings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: Eac3AtmosCodingMode, location_name: "codingMode"))
    Eac3AtmosSettings.add_member(:dialnorm, Shapes::ShapeRef.new(shape: __integerMin1Max31, location_name: "dialnorm"))
    Eac3AtmosSettings.add_member(:drc_line, Shapes::ShapeRef.new(shape: Eac3AtmosDrcLine, location_name: "drcLine"))
    Eac3AtmosSettings.add_member(:drc_rf, Shapes::ShapeRef.new(shape: Eac3AtmosDrcRf, location_name: "drcRf"))
    Eac3AtmosSettings.add_member(:height_trim, Shapes::ShapeRef.new(shape: __double, location_name: "heightTrim"))
    Eac3AtmosSettings.add_member(:surround_trim, Shapes::ShapeRef.new(shape: __double, location_name: "surroundTrim"))
    Eac3AtmosSettings.struct_class = Types::Eac3AtmosSettings

    Eac3Settings.add_member(:attenuation_control, Shapes::ShapeRef.new(shape: Eac3AttenuationControl, location_name: "attenuationControl"))
    Eac3Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "bitrate"))
    Eac3Settings.add_member(:bitstream_mode, Shapes::ShapeRef.new(shape: Eac3BitstreamMode, location_name: "bitstreamMode"))
    Eac3Settings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: Eac3CodingMode, location_name: "codingMode"))
    Eac3Settings.add_member(:dc_filter, Shapes::ShapeRef.new(shape: Eac3DcFilter, location_name: "dcFilter"))
    Eac3Settings.add_member(:dialnorm, Shapes::ShapeRef.new(shape: __integerMin1Max31, location_name: "dialnorm"))
    Eac3Settings.add_member(:drc_line, Shapes::ShapeRef.new(shape: Eac3DrcLine, location_name: "drcLine"))
    Eac3Settings.add_member(:drc_rf, Shapes::ShapeRef.new(shape: Eac3DrcRf, location_name: "drcRf"))
    Eac3Settings.add_member(:lfe_control, Shapes::ShapeRef.new(shape: Eac3LfeControl, location_name: "lfeControl"))
    Eac3Settings.add_member(:lfe_filter, Shapes::ShapeRef.new(shape: Eac3LfeFilter, location_name: "lfeFilter"))
    Eac3Settings.add_member(:lo_ro_center_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "loRoCenterMixLevel"))
    Eac3Settings.add_member(:lo_ro_surround_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "loRoSurroundMixLevel"))
    Eac3Settings.add_member(:lt_rt_center_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "ltRtCenterMixLevel"))
    Eac3Settings.add_member(:lt_rt_surround_mix_level, Shapes::ShapeRef.new(shape: __double, location_name: "ltRtSurroundMixLevel"))
    Eac3Settings.add_member(:metadata_control, Shapes::ShapeRef.new(shape: Eac3MetadataControl, location_name: "metadataControl"))
    Eac3Settings.add_member(:passthrough_control, Shapes::ShapeRef.new(shape: Eac3PassthroughControl, location_name: "passthroughControl"))
    Eac3Settings.add_member(:phase_control, Shapes::ShapeRef.new(shape: Eac3PhaseControl, location_name: "phaseControl"))
    Eac3Settings.add_member(:stereo_downmix, Shapes::ShapeRef.new(shape: Eac3StereoDownmix, location_name: "stereoDownmix"))
    Eac3Settings.add_member(:surround_ex_mode, Shapes::ShapeRef.new(shape: Eac3SurroundExMode, location_name: "surroundExMode"))
    Eac3Settings.add_member(:surround_mode, Shapes::ShapeRef.new(shape: Eac3SurroundMode, location_name: "surroundMode"))
    Eac3Settings.struct_class = Types::Eac3Settings

    EbuTtDDestinationSettings.add_member(:copyright_holder, Shapes::ShapeRef.new(shape: __stringMax1000, location_name: "copyrightHolder"))
    EbuTtDDestinationSettings.add_member(:fill_line_gap, Shapes::ShapeRef.new(shape: EbuTtDFillLineGapControl, location_name: "fillLineGap"))
    EbuTtDDestinationSettings.add_member(:font_family, Shapes::ShapeRef.new(shape: __string, location_name: "fontFamily"))
    EbuTtDDestinationSettings.add_member(:style_control, Shapes::ShapeRef.new(shape: EbuTtDDestinationStyleControl, location_name: "styleControl"))
    EbuTtDDestinationSettings.add_member(:default_font_size, Shapes::ShapeRef.new(shape: __integerMin1Max800, location_name: "defaultFontSize"))
    EbuTtDDestinationSettings.add_member(:default_line_height, Shapes::ShapeRef.new(shape: __integerMin80Max800, location_name: "defaultLineHeight"))
    EbuTtDDestinationSettings.struct_class = Types::EbuTtDDestinationSettings

    EmbeddedDestinationSettings.struct_class = Types::EmbeddedDestinationSettings

    EmbeddedPlusScte20DestinationSettings.struct_class = Types::EmbeddedPlusScte20DestinationSettings

    EmbeddedSourceSettings.add_member(:convert_608_to_708, Shapes::ShapeRef.new(shape: EmbeddedConvert608To708, location_name: "convert608To708"))
    EmbeddedSourceSettings.add_member(:scte_20_detection, Shapes::ShapeRef.new(shape: EmbeddedScte20Detection, location_name: "scte20Detection"))
    EmbeddedSourceSettings.add_member(:source_608_channel_number, Shapes::ShapeRef.new(shape: __integerMin1Max4, location_name: "source608ChannelNumber"))
    EmbeddedSourceSettings.add_member(:source_608_track_number, Shapes::ShapeRef.new(shape: __integerMin1Max5, location_name: "source608TrackNumber"))
    EmbeddedSourceSettings.struct_class = Types::EmbeddedSourceSettings

    Empty.struct_class = Types::Empty

    EncoderSettings.add_member(:audio_descriptions, Shapes::ShapeRef.new(shape: __listOfAudioDescription, required: true, location_name: "audioDescriptions"))
    EncoderSettings.add_member(:avail_blanking, Shapes::ShapeRef.new(shape: AvailBlanking, location_name: "availBlanking"))
    EncoderSettings.add_member(:avail_configuration, Shapes::ShapeRef.new(shape: AvailConfiguration, location_name: "availConfiguration"))
    EncoderSettings.add_member(:blackout_slate, Shapes::ShapeRef.new(shape: BlackoutSlate, location_name: "blackoutSlate"))
    EncoderSettings.add_member(:caption_descriptions, Shapes::ShapeRef.new(shape: __listOfCaptionDescription, location_name: "captionDescriptions"))
    EncoderSettings.add_member(:feature_activations, Shapes::ShapeRef.new(shape: FeatureActivations, location_name: "featureActivations"))
    EncoderSettings.add_member(:global_configuration, Shapes::ShapeRef.new(shape: GlobalConfiguration, location_name: "globalConfiguration"))
    EncoderSettings.add_member(:motion_graphics_configuration, Shapes::ShapeRef.new(shape: MotionGraphicsConfiguration, location_name: "motionGraphicsConfiguration"))
    EncoderSettings.add_member(:nielsen_configuration, Shapes::ShapeRef.new(shape: NielsenConfiguration, location_name: "nielsenConfiguration"))
    EncoderSettings.add_member(:output_groups, Shapes::ShapeRef.new(shape: __listOfOutputGroup, required: true, location_name: "outputGroups"))
    EncoderSettings.add_member(:timecode_config, Shapes::ShapeRef.new(shape: TimecodeConfig, required: true, location_name: "timecodeConfig"))
    EncoderSettings.add_member(:video_descriptions, Shapes::ShapeRef.new(shape: __listOfVideoDescription, required: true, location_name: "videoDescriptions"))
    EncoderSettings.add_member(:thumbnail_configuration, Shapes::ShapeRef.new(shape: ThumbnailConfiguration, location_name: "thumbnailConfiguration"))
    EncoderSettings.add_member(:color_correction_settings, Shapes::ShapeRef.new(shape: ColorCorrectionSettings, location_name: "colorCorrectionSettings"))
    EncoderSettings.struct_class = Types::EncoderSettings

    EpochLockingSettings.add_member(:custom_epoch, Shapes::ShapeRef.new(shape: __string, location_name: "customEpoch"))
    EpochLockingSettings.add_member(:jam_sync_time, Shapes::ShapeRef.new(shape: __string, location_name: "jamSyncTime"))
    EpochLockingSettings.struct_class = Types::EpochLockingSettings

    Esam.add_member(:acquisition_point_id, Shapes::ShapeRef.new(shape: __stringMax256, required: true, location_name: "acquisitionPointId"))
    Esam.add_member(:ad_avail_offset, Shapes::ShapeRef.new(shape: __integerMinNegative1000Max1000, location_name: "adAvailOffset"))
    Esam.add_member(:password_param, Shapes::ShapeRef.new(shape: __string, location_name: "passwordParam"))
    Esam.add_member(:pois_endpoint, Shapes::ShapeRef.new(shape: __stringMax2048, required: true, location_name: "poisEndpoint"))
    Esam.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    Esam.add_member(:zone_identity, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "zoneIdentity"))
    Esam.struct_class = Types::Esam

    EventBridgeRuleTemplateGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplateGroup, required: true, location_name: "arn"))
    EventBridgeRuleTemplateGroupSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    EventBridgeRuleTemplateGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    EventBridgeRuleTemplateGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    EventBridgeRuleTemplateGroupSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    EventBridgeRuleTemplateGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    EventBridgeRuleTemplateGroupSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    EventBridgeRuleTemplateGroupSummary.add_member(:template_count, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "templateCount"))
    EventBridgeRuleTemplateGroupSummary.struct_class = Types::EventBridgeRuleTemplateGroupSummary

    EventBridgeRuleTemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplate, required: true, location_name: "arn"))
    EventBridgeRuleTemplateSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    EventBridgeRuleTemplateSummary.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    EventBridgeRuleTemplateSummary.add_member(:event_target_count, Shapes::ShapeRef.new(shape: __integerMax5, required: true, location_name: "eventTargetCount"))
    EventBridgeRuleTemplateSummary.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, required: true, location_name: "eventType"))
    EventBridgeRuleTemplateSummary.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "groupId"))
    EventBridgeRuleTemplateSummary.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    EventBridgeRuleTemplateSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    EventBridgeRuleTemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    EventBridgeRuleTemplateSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    EventBridgeRuleTemplateSummary.struct_class = Types::EventBridgeRuleTemplateSummary

    EventBridgeRuleTemplateTarget.add_member(:arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048PatternArn, required: true, location_name: "arn"))
    EventBridgeRuleTemplateTarget.struct_class = Types::EventBridgeRuleTemplateTarget

    FailedMediaResourceMap.key = Shapes::ShapeRef.new(shape: __string)
    FailedMediaResourceMap.value = Shapes::ShapeRef.new(shape: MediaResource)

    FailoverCondition.add_member(:failover_condition_settings, Shapes::ShapeRef.new(shape: FailoverConditionSettings, location_name: "failoverConditionSettings"))
    FailoverCondition.struct_class = Types::FailoverCondition

    FailoverConditionSettings.add_member(:audio_silence_settings, Shapes::ShapeRef.new(shape: AudioSilenceFailoverSettings, location_name: "audioSilenceSettings"))
    FailoverConditionSettings.add_member(:input_loss_settings, Shapes::ShapeRef.new(shape: InputLossFailoverSettings, location_name: "inputLossSettings"))
    FailoverConditionSettings.add_member(:video_black_settings, Shapes::ShapeRef.new(shape: VideoBlackFailoverSettings, location_name: "videoBlackSettings"))
    FailoverConditionSettings.struct_class = Types::FailoverConditionSettings

    FeatureActivations.add_member(:input_prepare_schedule_actions, Shapes::ShapeRef.new(shape: FeatureActivationsInputPrepareScheduleActions, location_name: "inputPrepareScheduleActions"))
    FeatureActivations.add_member(:output_static_image_overlay_schedule_actions, Shapes::ShapeRef.new(shape: FeatureActivationsOutputStaticImageOverlayScheduleActions, location_name: "outputStaticImageOverlayScheduleActions"))
    FeatureActivations.struct_class = Types::FeatureActivations

    FecOutputSettings.add_member(:column_depth, Shapes::ShapeRef.new(shape: __integerMin4Max20, location_name: "columnDepth"))
    FecOutputSettings.add_member(:include_fec, Shapes::ShapeRef.new(shape: FecOutputIncludeFec, location_name: "includeFec"))
    FecOutputSettings.add_member(:row_length, Shapes::ShapeRef.new(shape: __integerMin1Max20, location_name: "rowLength"))
    FecOutputSettings.struct_class = Types::FecOutputSettings

    FixedModeScheduleActionStartSettings.add_member(:time, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "time"))
    FixedModeScheduleActionStartSettings.struct_class = Types::FixedModeScheduleActionStartSettings

    Fmp4HlsSettings.add_member(:audio_rendition_sets, Shapes::ShapeRef.new(shape: __string, location_name: "audioRenditionSets"))
    Fmp4HlsSettings.add_member(:nielsen_id_3_behavior, Shapes::ShapeRef.new(shape: Fmp4NielsenId3Behavior, location_name: "nielsenId3Behavior"))
    Fmp4HlsSettings.add_member(:timed_metadata_behavior, Shapes::ShapeRef.new(shape: Fmp4TimedMetadataBehavior, location_name: "timedMetadataBehavior"))
    Fmp4HlsSettings.struct_class = Types::Fmp4HlsSettings

    FollowModeScheduleActionStartSettings.add_member(:follow_point, Shapes::ShapeRef.new(shape: FollowPoint, required: true, location_name: "followPoint"))
    FollowModeScheduleActionStartSettings.add_member(:reference_action_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "referenceActionName"))
    FollowModeScheduleActionStartSettings.struct_class = Types::FollowModeScheduleActionStartSettings

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    ForbiddenExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ForbiddenExceptionResponseContent.struct_class = Types::ForbiddenExceptionResponseContent

    FrameCaptureCdnSettings.add_member(:frame_capture_s3_settings, Shapes::ShapeRef.new(shape: FrameCaptureS3Settings, location_name: "frameCaptureS3Settings"))
    FrameCaptureCdnSettings.struct_class = Types::FrameCaptureCdnSettings

    FrameCaptureGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    FrameCaptureGroupSettings.add_member(:frame_capture_cdn_settings, Shapes::ShapeRef.new(shape: FrameCaptureCdnSettings, location_name: "frameCaptureCdnSettings"))
    FrameCaptureGroupSettings.struct_class = Types::FrameCaptureGroupSettings

    FrameCaptureHlsSettings.struct_class = Types::FrameCaptureHlsSettings

    FrameCaptureOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "nameModifier"))
    FrameCaptureOutputSettings.struct_class = Types::FrameCaptureOutputSettings

    FrameCaptureS3Settings.add_member(:canned_acl, Shapes::ShapeRef.new(shape: S3CannedAcl, location_name: "cannedAcl"))
    FrameCaptureS3Settings.struct_class = Types::FrameCaptureS3Settings

    FrameCaptureSettings.add_member(:capture_interval, Shapes::ShapeRef.new(shape: __integerMin1Max3600000, location_name: "captureInterval"))
    FrameCaptureSettings.add_member(:capture_interval_units, Shapes::ShapeRef.new(shape: FrameCaptureIntervalUnit, location_name: "captureIntervalUnits"))
    FrameCaptureSettings.add_member(:timecode_burnin_settings, Shapes::ShapeRef.new(shape: TimecodeBurninSettings, location_name: "timecodeBurninSettings"))
    FrameCaptureSettings.struct_class = Types::FrameCaptureSettings

    GatewayTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    GatewayTimeoutException.struct_class = Types::GatewayTimeoutException

    GetCloudWatchAlarmTemplateGroupRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    GetCloudWatchAlarmTemplateGroupRequest.struct_class = Types::GetCloudWatchAlarmTemplateGroupRequest

    GetCloudWatchAlarmTemplateGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplateGroup, location_name: "arn"))
    GetCloudWatchAlarmTemplateGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    GetCloudWatchAlarmTemplateGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetCloudWatchAlarmTemplateGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    GetCloudWatchAlarmTemplateGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    GetCloudWatchAlarmTemplateGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    GetCloudWatchAlarmTemplateGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetCloudWatchAlarmTemplateGroupResponse.struct_class = Types::GetCloudWatchAlarmTemplateGroupResponse

    GetCloudWatchAlarmTemplateGroupResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplateGroup, required: true, location_name: "arn"))
    GetCloudWatchAlarmTemplateGroupResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    GetCloudWatchAlarmTemplateGroupResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetCloudWatchAlarmTemplateGroupResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    GetCloudWatchAlarmTemplateGroupResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    GetCloudWatchAlarmTemplateGroupResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    GetCloudWatchAlarmTemplateGroupResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetCloudWatchAlarmTemplateGroupResponseContent.struct_class = Types::GetCloudWatchAlarmTemplateGroupResponseContent

    GetCloudWatchAlarmTemplateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    GetCloudWatchAlarmTemplateRequest.struct_class = Types::GetCloudWatchAlarmTemplateRequest

    GetCloudWatchAlarmTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplate, location_name: "arn"))
    GetCloudWatchAlarmTemplateResponse.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, location_name: "comparisonOperator"))
    GetCloudWatchAlarmTemplateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    GetCloudWatchAlarmTemplateResponse.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    GetCloudWatchAlarmTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetCloudWatchAlarmTemplateResponse.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "evaluationPeriods"))
    GetCloudWatchAlarmTemplateResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "groupId"))
    GetCloudWatchAlarmTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    GetCloudWatchAlarmTemplateResponse.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, location_name: "metricName"))
    GetCloudWatchAlarmTemplateResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    GetCloudWatchAlarmTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    GetCloudWatchAlarmTemplateResponse.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, location_name: "period"))
    GetCloudWatchAlarmTemplateResponse.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, location_name: "statistic"))
    GetCloudWatchAlarmTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetCloudWatchAlarmTemplateResponse.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, location_name: "targetResourceType"))
    GetCloudWatchAlarmTemplateResponse.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, location_name: "threshold"))
    GetCloudWatchAlarmTemplateResponse.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, location_name: "treatMissingData"))
    GetCloudWatchAlarmTemplateResponse.struct_class = Types::GetCloudWatchAlarmTemplateResponse

    GetCloudWatchAlarmTemplateResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplate, required: true, location_name: "arn"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, required: true, location_name: "comparisonOperator"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "evaluationPeriods"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "groupId"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, required: true, location_name: "metricName"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, required: true, location_name: "period"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, required: true, location_name: "statistic"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, required: true, location_name: "targetResourceType"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "threshold"))
    GetCloudWatchAlarmTemplateResponseContent.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, required: true, location_name: "treatMissingData"))
    GetCloudWatchAlarmTemplateResponseContent.struct_class = Types::GetCloudWatchAlarmTemplateResponseContent

    GetEventBridgeRuleTemplateGroupRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    GetEventBridgeRuleTemplateGroupRequest.struct_class = Types::GetEventBridgeRuleTemplateGroupRequest

    GetEventBridgeRuleTemplateGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplateGroup, location_name: "arn"))
    GetEventBridgeRuleTemplateGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    GetEventBridgeRuleTemplateGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetEventBridgeRuleTemplateGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    GetEventBridgeRuleTemplateGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    GetEventBridgeRuleTemplateGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    GetEventBridgeRuleTemplateGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetEventBridgeRuleTemplateGroupResponse.struct_class = Types::GetEventBridgeRuleTemplateGroupResponse

    GetEventBridgeRuleTemplateGroupResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplateGroup, required: true, location_name: "arn"))
    GetEventBridgeRuleTemplateGroupResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    GetEventBridgeRuleTemplateGroupResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetEventBridgeRuleTemplateGroupResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    GetEventBridgeRuleTemplateGroupResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    GetEventBridgeRuleTemplateGroupResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    GetEventBridgeRuleTemplateGroupResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetEventBridgeRuleTemplateGroupResponseContent.struct_class = Types::GetEventBridgeRuleTemplateGroupResponseContent

    GetEventBridgeRuleTemplateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    GetEventBridgeRuleTemplateRequest.struct_class = Types::GetEventBridgeRuleTemplateRequest

    GetEventBridgeRuleTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplate, location_name: "arn"))
    GetEventBridgeRuleTemplateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    GetEventBridgeRuleTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetEventBridgeRuleTemplateResponse.add_member(:event_targets, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateTarget, location_name: "eventTargets"))
    GetEventBridgeRuleTemplateResponse.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, location_name: "eventType"))
    GetEventBridgeRuleTemplateResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "groupId"))
    GetEventBridgeRuleTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    GetEventBridgeRuleTemplateResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    GetEventBridgeRuleTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    GetEventBridgeRuleTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetEventBridgeRuleTemplateResponse.struct_class = Types::GetEventBridgeRuleTemplateResponse

    GetEventBridgeRuleTemplateResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplate, required: true, location_name: "arn"))
    GetEventBridgeRuleTemplateResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    GetEventBridgeRuleTemplateResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetEventBridgeRuleTemplateResponseContent.add_member(:event_targets, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateTarget, location_name: "eventTargets"))
    GetEventBridgeRuleTemplateResponseContent.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, required: true, location_name: "eventType"))
    GetEventBridgeRuleTemplateResponseContent.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "groupId"))
    GetEventBridgeRuleTemplateResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    GetEventBridgeRuleTemplateResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    GetEventBridgeRuleTemplateResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    GetEventBridgeRuleTemplateResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetEventBridgeRuleTemplateResponseContent.struct_class = Types::GetEventBridgeRuleTemplateResponseContent

    GetSignalMapRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    GetSignalMapRequest.struct_class = Types::GetSignalMapRequest

    GetSignalMapResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, location_name: "arn"))
    GetSignalMapResponse.add_member(:cloud_watch_alarm_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "cloudWatchAlarmTemplateGroupIds"))
    GetSignalMapResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    GetSignalMapResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetSignalMapResponse.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "discoveryEntryPointArn"))
    GetSignalMapResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    GetSignalMapResponse.add_member(:event_bridge_rule_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "eventBridgeRuleTemplateGroupIds"))
    GetSignalMapResponse.add_member(:failed_media_resource_map, Shapes::ShapeRef.new(shape: FailedMediaResourceMap, location_name: "failedMediaResourceMap"))
    GetSignalMapResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    GetSignalMapResponse.add_member(:last_discovered_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastDiscoveredAt"))
    GetSignalMapResponse.add_member(:last_successful_monitor_deployment, Shapes::ShapeRef.new(shape: SuccessfulMonitorDeployment, location_name: "lastSuccessfulMonitorDeployment"))
    GetSignalMapResponse.add_member(:media_resource_map, Shapes::ShapeRef.new(shape: MediaResourceMap, location_name: "mediaResourceMap"))
    GetSignalMapResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    GetSignalMapResponse.add_member(:monitor_changes_pending_deployment, Shapes::ShapeRef.new(shape: __boolean, location_name: "monitorChangesPendingDeployment"))
    GetSignalMapResponse.add_member(:monitor_deployment, Shapes::ShapeRef.new(shape: MonitorDeployment, location_name: "monitorDeployment"))
    GetSignalMapResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    GetSignalMapResponse.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, location_name: "status"))
    GetSignalMapResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSignalMapResponse.struct_class = Types::GetSignalMapResponse

    GetSignalMapResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, required: true, location_name: "arn"))
    GetSignalMapResponseContent.add_member(:cloud_watch_alarm_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "cloudWatchAlarmTemplateGroupIds"))
    GetSignalMapResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    GetSignalMapResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    GetSignalMapResponseContent.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, required: true, location_name: "discoveryEntryPointArn"))
    GetSignalMapResponseContent.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    GetSignalMapResponseContent.add_member(:event_bridge_rule_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "eventBridgeRuleTemplateGroupIds"))
    GetSignalMapResponseContent.add_member(:failed_media_resource_map, Shapes::ShapeRef.new(shape: FailedMediaResourceMap, location_name: "failedMediaResourceMap"))
    GetSignalMapResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    GetSignalMapResponseContent.add_member(:last_discovered_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastDiscoveredAt"))
    GetSignalMapResponseContent.add_member(:last_successful_monitor_deployment, Shapes::ShapeRef.new(shape: SuccessfulMonitorDeployment, location_name: "lastSuccessfulMonitorDeployment"))
    GetSignalMapResponseContent.add_member(:media_resource_map, Shapes::ShapeRef.new(shape: MediaResourceMap, location_name: "mediaResourceMap"))
    GetSignalMapResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    GetSignalMapResponseContent.add_member(:monitor_changes_pending_deployment, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "monitorChangesPendingDeployment"))
    GetSignalMapResponseContent.add_member(:monitor_deployment, Shapes::ShapeRef.new(shape: MonitorDeployment, location_name: "monitorDeployment"))
    GetSignalMapResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    GetSignalMapResponseContent.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, required: true, location_name: "status"))
    GetSignalMapResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSignalMapResponseContent.struct_class = Types::GetSignalMapResponseContent

    GlobalConfiguration.add_member(:initial_audio_gain, Shapes::ShapeRef.new(shape: __integerMinNegative60Max60, location_name: "initialAudioGain"))
    GlobalConfiguration.add_member(:input_end_action, Shapes::ShapeRef.new(shape: GlobalConfigurationInputEndAction, location_name: "inputEndAction"))
    GlobalConfiguration.add_member(:input_loss_behavior, Shapes::ShapeRef.new(shape: InputLossBehavior, location_name: "inputLossBehavior"))
    GlobalConfiguration.add_member(:output_locking_mode, Shapes::ShapeRef.new(shape: GlobalConfigurationOutputLockingMode, location_name: "outputLockingMode"))
    GlobalConfiguration.add_member(:output_timing_source, Shapes::ShapeRef.new(shape: GlobalConfigurationOutputTimingSource, location_name: "outputTimingSource"))
    GlobalConfiguration.add_member(:support_low_framerate_inputs, Shapes::ShapeRef.new(shape: GlobalConfigurationLowFramerateInputs, location_name: "supportLowFramerateInputs"))
    GlobalConfiguration.add_member(:output_locking_settings, Shapes::ShapeRef.new(shape: OutputLockingSettings, location_name: "outputLockingSettings"))
    GlobalConfiguration.struct_class = Types::GlobalConfiguration

    H264ColorSpaceSettings.add_member(:color_space_passthrough_settings, Shapes::ShapeRef.new(shape: ColorSpacePassthroughSettings, location_name: "colorSpacePassthroughSettings"))
    H264ColorSpaceSettings.add_member(:rec_601_settings, Shapes::ShapeRef.new(shape: Rec601Settings, location_name: "rec601Settings"))
    H264ColorSpaceSettings.add_member(:rec_709_settings, Shapes::ShapeRef.new(shape: Rec709Settings, location_name: "rec709Settings"))
    H264ColorSpaceSettings.struct_class = Types::H264ColorSpaceSettings

    H264FilterSettings.add_member(:temporal_filter_settings, Shapes::ShapeRef.new(shape: TemporalFilterSettings, location_name: "temporalFilterSettings"))
    H264FilterSettings.add_member(:bandwidth_reduction_filter_settings, Shapes::ShapeRef.new(shape: BandwidthReductionFilterSettings, location_name: "bandwidthReductionFilterSettings"))
    H264FilterSettings.struct_class = Types::H264FilterSettings

    H264Settings.add_member(:adaptive_quantization, Shapes::ShapeRef.new(shape: H264AdaptiveQuantization, location_name: "adaptiveQuantization"))
    H264Settings.add_member(:afd_signaling, Shapes::ShapeRef.new(shape: AfdSignaling, location_name: "afdSignaling"))
    H264Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integerMin1000, location_name: "bitrate"))
    H264Settings.add_member(:buf_fill_pct, Shapes::ShapeRef.new(shape: __integerMin0Max100, location_name: "bufFillPct"))
    H264Settings.add_member(:buf_size, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "bufSize"))
    H264Settings.add_member(:color_metadata, Shapes::ShapeRef.new(shape: H264ColorMetadata, location_name: "colorMetadata"))
    H264Settings.add_member(:color_space_settings, Shapes::ShapeRef.new(shape: H264ColorSpaceSettings, location_name: "colorSpaceSettings"))
    H264Settings.add_member(:entropy_encoding, Shapes::ShapeRef.new(shape: H264EntropyEncoding, location_name: "entropyEncoding"))
    H264Settings.add_member(:filter_settings, Shapes::ShapeRef.new(shape: H264FilterSettings, location_name: "filterSettings"))
    H264Settings.add_member(:fixed_afd, Shapes::ShapeRef.new(shape: FixedAfd, location_name: "fixedAfd"))
    H264Settings.add_member(:flicker_aq, Shapes::ShapeRef.new(shape: H264FlickerAq, location_name: "flickerAq"))
    H264Settings.add_member(:force_field_pictures, Shapes::ShapeRef.new(shape: H264ForceFieldPictures, location_name: "forceFieldPictures"))
    H264Settings.add_member(:framerate_control, Shapes::ShapeRef.new(shape: H264FramerateControl, location_name: "framerateControl"))
    H264Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "framerateDenominator"))
    H264Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "framerateNumerator"))
    H264Settings.add_member(:gop_b_reference, Shapes::ShapeRef.new(shape: H264GopBReference, location_name: "gopBReference"))
    H264Settings.add_member(:gop_closed_cadence, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "gopClosedCadence"))
    H264Settings.add_member(:gop_num_b_frames, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "gopNumBFrames"))
    H264Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __double, location_name: "gopSize"))
    H264Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: H264GopSizeUnits, location_name: "gopSizeUnits"))
    H264Settings.add_member(:level, Shapes::ShapeRef.new(shape: H264Level, location_name: "level"))
    H264Settings.add_member(:look_ahead_rate_control, Shapes::ShapeRef.new(shape: H264LookAheadRateControl, location_name: "lookAheadRateControl"))
    H264Settings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integerMin1000, location_name: "maxBitrate"))
    H264Settings.add_member(:min_i_interval, Shapes::ShapeRef.new(shape: __integerMin0Max30, location_name: "minIInterval"))
    H264Settings.add_member(:num_ref_frames, Shapes::ShapeRef.new(shape: __integerMin1Max6, location_name: "numRefFrames"))
    H264Settings.add_member(:par_control, Shapes::ShapeRef.new(shape: H264ParControl, location_name: "parControl"))
    H264Settings.add_member(:par_denominator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parDenominator"))
    H264Settings.add_member(:par_numerator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parNumerator"))
    H264Settings.add_member(:profile, Shapes::ShapeRef.new(shape: H264Profile, location_name: "profile"))
    H264Settings.add_member(:quality_level, Shapes::ShapeRef.new(shape: H264QualityLevel, location_name: "qualityLevel"))
    H264Settings.add_member(:qvbr_quality_level, Shapes::ShapeRef.new(shape: __integerMin1Max10, location_name: "qvbrQualityLevel"))
    H264Settings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: H264RateControlMode, location_name: "rateControlMode"))
    H264Settings.add_member(:scan_type, Shapes::ShapeRef.new(shape: H264ScanType, location_name: "scanType"))
    H264Settings.add_member(:scene_change_detect, Shapes::ShapeRef.new(shape: H264SceneChangeDetect, location_name: "sceneChangeDetect"))
    H264Settings.add_member(:slices, Shapes::ShapeRef.new(shape: __integerMin1Max32, location_name: "slices"))
    H264Settings.add_member(:softness, Shapes::ShapeRef.new(shape: __integerMin0Max128, location_name: "softness"))
    H264Settings.add_member(:spatial_aq, Shapes::ShapeRef.new(shape: H264SpatialAq, location_name: "spatialAq"))
    H264Settings.add_member(:subgop_length, Shapes::ShapeRef.new(shape: H264SubGopLength, location_name: "subgopLength"))
    H264Settings.add_member(:syntax, Shapes::ShapeRef.new(shape: H264Syntax, location_name: "syntax"))
    H264Settings.add_member(:temporal_aq, Shapes::ShapeRef.new(shape: H264TemporalAq, location_name: "temporalAq"))
    H264Settings.add_member(:timecode_insertion, Shapes::ShapeRef.new(shape: H264TimecodeInsertionBehavior, location_name: "timecodeInsertion"))
    H264Settings.add_member(:timecode_burnin_settings, Shapes::ShapeRef.new(shape: TimecodeBurninSettings, location_name: "timecodeBurninSettings"))
    H264Settings.add_member(:min_qp, Shapes::ShapeRef.new(shape: __integerMin1Max51, location_name: "minQp"))
    H264Settings.struct_class = Types::H264Settings

    H265ColorSpaceSettings.add_member(:color_space_passthrough_settings, Shapes::ShapeRef.new(shape: ColorSpacePassthroughSettings, location_name: "colorSpacePassthroughSettings"))
    H265ColorSpaceSettings.add_member(:dolby_vision_81_settings, Shapes::ShapeRef.new(shape: DolbyVision81Settings, location_name: "dolbyVision81Settings"))
    H265ColorSpaceSettings.add_member(:hdr_10_settings, Shapes::ShapeRef.new(shape: Hdr10Settings, location_name: "hdr10Settings"))
    H265ColorSpaceSettings.add_member(:rec_601_settings, Shapes::ShapeRef.new(shape: Rec601Settings, location_name: "rec601Settings"))
    H265ColorSpaceSettings.add_member(:rec_709_settings, Shapes::ShapeRef.new(shape: Rec709Settings, location_name: "rec709Settings"))
    H265ColorSpaceSettings.struct_class = Types::H265ColorSpaceSettings

    H265FilterSettings.add_member(:temporal_filter_settings, Shapes::ShapeRef.new(shape: TemporalFilterSettings, location_name: "temporalFilterSettings"))
    H265FilterSettings.add_member(:bandwidth_reduction_filter_settings, Shapes::ShapeRef.new(shape: BandwidthReductionFilterSettings, location_name: "bandwidthReductionFilterSettings"))
    H265FilterSettings.struct_class = Types::H265FilterSettings

    H265Settings.add_member(:adaptive_quantization, Shapes::ShapeRef.new(shape: H265AdaptiveQuantization, location_name: "adaptiveQuantization"))
    H265Settings.add_member(:afd_signaling, Shapes::ShapeRef.new(shape: AfdSignaling, location_name: "afdSignaling"))
    H265Settings.add_member(:alternative_transfer_function, Shapes::ShapeRef.new(shape: H265AlternativeTransferFunction, location_name: "alternativeTransferFunction"))
    H265Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integerMin100000Max40000000, location_name: "bitrate"))
    H265Settings.add_member(:buf_size, Shapes::ShapeRef.new(shape: __integerMin100000Max80000000, location_name: "bufSize"))
    H265Settings.add_member(:color_metadata, Shapes::ShapeRef.new(shape: H265ColorMetadata, location_name: "colorMetadata"))
    H265Settings.add_member(:color_space_settings, Shapes::ShapeRef.new(shape: H265ColorSpaceSettings, location_name: "colorSpaceSettings"))
    H265Settings.add_member(:filter_settings, Shapes::ShapeRef.new(shape: H265FilterSettings, location_name: "filterSettings"))
    H265Settings.add_member(:fixed_afd, Shapes::ShapeRef.new(shape: FixedAfd, location_name: "fixedAfd"))
    H265Settings.add_member(:flicker_aq, Shapes::ShapeRef.new(shape: H265FlickerAq, location_name: "flickerAq"))
    H265Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integerMin1Max3003, required: true, location_name: "framerateDenominator"))
    H265Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "framerateNumerator"))
    H265Settings.add_member(:gop_closed_cadence, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "gopClosedCadence"))
    H265Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __double, location_name: "gopSize"))
    H265Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: H265GopSizeUnits, location_name: "gopSizeUnits"))
    H265Settings.add_member(:level, Shapes::ShapeRef.new(shape: H265Level, location_name: "level"))
    H265Settings.add_member(:look_ahead_rate_control, Shapes::ShapeRef.new(shape: H265LookAheadRateControl, location_name: "lookAheadRateControl"))
    H265Settings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integerMin100000Max40000000, location_name: "maxBitrate"))
    H265Settings.add_member(:min_i_interval, Shapes::ShapeRef.new(shape: __integerMin0Max30, location_name: "minIInterval"))
    H265Settings.add_member(:par_denominator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parDenominator"))
    H265Settings.add_member(:par_numerator, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "parNumerator"))
    H265Settings.add_member(:profile, Shapes::ShapeRef.new(shape: H265Profile, location_name: "profile"))
    H265Settings.add_member(:qvbr_quality_level, Shapes::ShapeRef.new(shape: __integerMin1Max10, location_name: "qvbrQualityLevel"))
    H265Settings.add_member(:rate_control_mode, Shapes::ShapeRef.new(shape: H265RateControlMode, location_name: "rateControlMode"))
    H265Settings.add_member(:scan_type, Shapes::ShapeRef.new(shape: H265ScanType, location_name: "scanType"))
    H265Settings.add_member(:scene_change_detect, Shapes::ShapeRef.new(shape: H265SceneChangeDetect, location_name: "sceneChangeDetect"))
    H265Settings.add_member(:slices, Shapes::ShapeRef.new(shape: __integerMin1Max16, location_name: "slices"))
    H265Settings.add_member(:tier, Shapes::ShapeRef.new(shape: H265Tier, location_name: "tier"))
    H265Settings.add_member(:timecode_insertion, Shapes::ShapeRef.new(shape: H265TimecodeInsertionBehavior, location_name: "timecodeInsertion"))
    H265Settings.add_member(:timecode_burnin_settings, Shapes::ShapeRef.new(shape: TimecodeBurninSettings, location_name: "timecodeBurninSettings"))
    H265Settings.add_member(:mv_over_picture_boundaries, Shapes::ShapeRef.new(shape: H265MvOverPictureBoundaries, location_name: "mvOverPictureBoundaries"))
    H265Settings.add_member(:mv_temporal_predictor, Shapes::ShapeRef.new(shape: H265MvTemporalPredictor, location_name: "mvTemporalPredictor"))
    H265Settings.add_member(:tile_height, Shapes::ShapeRef.new(shape: __integerMin64Max2160, location_name: "tileHeight"))
    H265Settings.add_member(:tile_padding, Shapes::ShapeRef.new(shape: H265TilePadding, location_name: "tilePadding"))
    H265Settings.add_member(:tile_width, Shapes::ShapeRef.new(shape: __integerMin256Max3840, location_name: "tileWidth"))
    H265Settings.add_member(:treeblock_size, Shapes::ShapeRef.new(shape: H265TreeblockSize, location_name: "treeblockSize"))
    H265Settings.add_member(:min_qp, Shapes::ShapeRef.new(shape: __integerMin1Max51, location_name: "minQp"))
    H265Settings.add_member(:deblocking, Shapes::ShapeRef.new(shape: H265Deblocking, location_name: "deblocking"))
    H265Settings.struct_class = Types::H265Settings

    Hdr10Settings.add_member(:max_cll, Shapes::ShapeRef.new(shape: __integerMin0Max32768, location_name: "maxCll"))
    Hdr10Settings.add_member(:max_fall, Shapes::ShapeRef.new(shape: __integerMin0Max32768, location_name: "maxFall"))
    Hdr10Settings.struct_class = Types::Hdr10Settings

    HlsAkamaiSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    HlsAkamaiSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0Max600, location_name: "filecacheDuration"))
    HlsAkamaiSettings.add_member(:http_transfer_mode, Shapes::ShapeRef.new(shape: HlsAkamaiHttpTransferMode, location_name: "httpTransferMode"))
    HlsAkamaiSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    HlsAkamaiSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0Max15, location_name: "restartDelay"))
    HlsAkamaiSettings.add_member(:salt, Shapes::ShapeRef.new(shape: __string, location_name: "salt"))
    HlsAkamaiSettings.add_member(:token, Shapes::ShapeRef.new(shape: __string, location_name: "token"))
    HlsAkamaiSettings.struct_class = Types::HlsAkamaiSettings

    HlsBasicPutSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    HlsBasicPutSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0Max600, location_name: "filecacheDuration"))
    HlsBasicPutSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    HlsBasicPutSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0Max15, location_name: "restartDelay"))
    HlsBasicPutSettings.struct_class = Types::HlsBasicPutSettings

    HlsCdnSettings.add_member(:hls_akamai_settings, Shapes::ShapeRef.new(shape: HlsAkamaiSettings, location_name: "hlsAkamaiSettings"))
    HlsCdnSettings.add_member(:hls_basic_put_settings, Shapes::ShapeRef.new(shape: HlsBasicPutSettings, location_name: "hlsBasicPutSettings"))
    HlsCdnSettings.add_member(:hls_media_store_settings, Shapes::ShapeRef.new(shape: HlsMediaStoreSettings, location_name: "hlsMediaStoreSettings"))
    HlsCdnSettings.add_member(:hls_s3_settings, Shapes::ShapeRef.new(shape: HlsS3Settings, location_name: "hlsS3Settings"))
    HlsCdnSettings.add_member(:hls_webdav_settings, Shapes::ShapeRef.new(shape: HlsWebdavSettings, location_name: "hlsWebdavSettings"))
    HlsCdnSettings.struct_class = Types::HlsCdnSettings

    HlsGroupSettings.add_member(:ad_markers, Shapes::ShapeRef.new(shape: __listOfHlsAdMarkers, location_name: "adMarkers"))
    HlsGroupSettings.add_member(:base_url_content, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrlContent"))
    HlsGroupSettings.add_member(:base_url_content_1, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrlContent1"))
    HlsGroupSettings.add_member(:base_url_manifest, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrlManifest"))
    HlsGroupSettings.add_member(:base_url_manifest_1, Shapes::ShapeRef.new(shape: __string, location_name: "baseUrlManifest1"))
    HlsGroupSettings.add_member(:caption_language_mappings, Shapes::ShapeRef.new(shape: __listOfCaptionLanguageMapping, location_name: "captionLanguageMappings"))
    HlsGroupSettings.add_member(:caption_language_setting, Shapes::ShapeRef.new(shape: HlsCaptionLanguageSetting, location_name: "captionLanguageSetting"))
    HlsGroupSettings.add_member(:client_cache, Shapes::ShapeRef.new(shape: HlsClientCache, location_name: "clientCache"))
    HlsGroupSettings.add_member(:codec_specification, Shapes::ShapeRef.new(shape: HlsCodecSpecification, location_name: "codecSpecification"))
    HlsGroupSettings.add_member(:constant_iv, Shapes::ShapeRef.new(shape: __stringMin32Max32, location_name: "constantIv"))
    HlsGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    HlsGroupSettings.add_member(:directory_structure, Shapes::ShapeRef.new(shape: HlsDirectoryStructure, location_name: "directoryStructure"))
    HlsGroupSettings.add_member(:discontinuity_tags, Shapes::ShapeRef.new(shape: HlsDiscontinuityTags, location_name: "discontinuityTags"))
    HlsGroupSettings.add_member(:encryption_type, Shapes::ShapeRef.new(shape: HlsEncryptionType, location_name: "encryptionType"))
    HlsGroupSettings.add_member(:hls_cdn_settings, Shapes::ShapeRef.new(shape: HlsCdnSettings, location_name: "hlsCdnSettings"))
    HlsGroupSettings.add_member(:hls_id_3_segment_tagging, Shapes::ShapeRef.new(shape: HlsId3SegmentTaggingState, location_name: "hlsId3SegmentTagging"))
    HlsGroupSettings.add_member(:i_frame_only_playlists, Shapes::ShapeRef.new(shape: IFrameOnlyPlaylistType, location_name: "iFrameOnlyPlaylists"))
    HlsGroupSettings.add_member(:incomplete_segment_behavior, Shapes::ShapeRef.new(shape: HlsIncompleteSegmentBehavior, location_name: "incompleteSegmentBehavior"))
    HlsGroupSettings.add_member(:index_n_segments, Shapes::ShapeRef.new(shape: __integerMin3, location_name: "indexNSegments"))
    HlsGroupSettings.add_member(:input_loss_action, Shapes::ShapeRef.new(shape: InputLossActionForHlsOut, location_name: "inputLossAction"))
    HlsGroupSettings.add_member(:iv_in_manifest, Shapes::ShapeRef.new(shape: HlsIvInManifest, location_name: "ivInManifest"))
    HlsGroupSettings.add_member(:iv_source, Shapes::ShapeRef.new(shape: HlsIvSource, location_name: "ivSource"))
    HlsGroupSettings.add_member(:keep_segments, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "keepSegments"))
    HlsGroupSettings.add_member(:key_format, Shapes::ShapeRef.new(shape: __string, location_name: "keyFormat"))
    HlsGroupSettings.add_member(:key_format_versions, Shapes::ShapeRef.new(shape: __string, location_name: "keyFormatVersions"))
    HlsGroupSettings.add_member(:key_provider_settings, Shapes::ShapeRef.new(shape: KeyProviderSettings, location_name: "keyProviderSettings"))
    HlsGroupSettings.add_member(:manifest_compression, Shapes::ShapeRef.new(shape: HlsManifestCompression, location_name: "manifestCompression"))
    HlsGroupSettings.add_member(:manifest_duration_format, Shapes::ShapeRef.new(shape: HlsManifestDurationFormat, location_name: "manifestDurationFormat"))
    HlsGroupSettings.add_member(:min_segment_length, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "minSegmentLength"))
    HlsGroupSettings.add_member(:mode, Shapes::ShapeRef.new(shape: HlsMode, location_name: "mode"))
    HlsGroupSettings.add_member(:output_selection, Shapes::ShapeRef.new(shape: HlsOutputSelection, location_name: "outputSelection"))
    HlsGroupSettings.add_member(:program_date_time, Shapes::ShapeRef.new(shape: HlsProgramDateTime, location_name: "programDateTime"))
    HlsGroupSettings.add_member(:program_date_time_clock, Shapes::ShapeRef.new(shape: HlsProgramDateTimeClock, location_name: "programDateTimeClock"))
    HlsGroupSettings.add_member(:program_date_time_period, Shapes::ShapeRef.new(shape: __integerMin0Max3600, location_name: "programDateTimePeriod"))
    HlsGroupSettings.add_member(:redundant_manifest, Shapes::ShapeRef.new(shape: HlsRedundantManifest, location_name: "redundantManifest"))
    HlsGroupSettings.add_member(:segment_length, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "segmentLength"))
    HlsGroupSettings.add_member(:segmentation_mode, Shapes::ShapeRef.new(shape: HlsSegmentationMode, location_name: "segmentationMode"))
    HlsGroupSettings.add_member(:segments_per_subdirectory, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "segmentsPerSubdirectory"))
    HlsGroupSettings.add_member(:stream_inf_resolution, Shapes::ShapeRef.new(shape: HlsStreamInfResolution, location_name: "streamInfResolution"))
    HlsGroupSettings.add_member(:timed_metadata_id_3_frame, Shapes::ShapeRef.new(shape: HlsTimedMetadataId3Frame, location_name: "timedMetadataId3Frame"))
    HlsGroupSettings.add_member(:timed_metadata_id_3_period, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "timedMetadataId3Period"))
    HlsGroupSettings.add_member(:timestamp_delta_milliseconds, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "timestampDeltaMilliseconds"))
    HlsGroupSettings.add_member(:ts_file_mode, Shapes::ShapeRef.new(shape: HlsTsFileMode, location_name: "tsFileMode"))
    HlsGroupSettings.struct_class = Types::HlsGroupSettings

    HlsId3SegmentTaggingScheduleActionSettings.add_member(:tag, Shapes::ShapeRef.new(shape: __string, location_name: "tag"))
    HlsId3SegmentTaggingScheduleActionSettings.add_member(:id_3, Shapes::ShapeRef.new(shape: __string, location_name: "id3"))
    HlsId3SegmentTaggingScheduleActionSettings.struct_class = Types::HlsId3SegmentTaggingScheduleActionSettings

    HlsInputSettings.add_member(:bandwidth, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "bandwidth"))
    HlsInputSettings.add_member(:buffer_segments, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "bufferSegments"))
    HlsInputSettings.add_member(:retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "retries"))
    HlsInputSettings.add_member(:retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "retryInterval"))
    HlsInputSettings.add_member(:scte_35_source, Shapes::ShapeRef.new(shape: HlsScte35SourceType, location_name: "scte35Source"))
    HlsInputSettings.struct_class = Types::HlsInputSettings

    HlsMediaStoreSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    HlsMediaStoreSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0Max600, location_name: "filecacheDuration"))
    HlsMediaStoreSettings.add_member(:media_store_storage_class, Shapes::ShapeRef.new(shape: HlsMediaStoreStorageClass, location_name: "mediaStoreStorageClass"))
    HlsMediaStoreSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    HlsMediaStoreSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0Max15, location_name: "restartDelay"))
    HlsMediaStoreSettings.struct_class = Types::HlsMediaStoreSettings

    HlsOutputSettings.add_member(:h265_packaging_type, Shapes::ShapeRef.new(shape: HlsH265PackagingType, location_name: "h265PackagingType"))
    HlsOutputSettings.add_member(:hls_settings, Shapes::ShapeRef.new(shape: HlsSettings, required: true, location_name: "hlsSettings"))
    HlsOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "nameModifier"))
    HlsOutputSettings.add_member(:segment_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "segmentModifier"))
    HlsOutputSettings.struct_class = Types::HlsOutputSettings

    HlsS3Settings.add_member(:canned_acl, Shapes::ShapeRef.new(shape: S3CannedAcl, location_name: "cannedAcl"))
    HlsS3Settings.struct_class = Types::HlsS3Settings

    HlsSettings.add_member(:audio_only_hls_settings, Shapes::ShapeRef.new(shape: AudioOnlyHlsSettings, location_name: "audioOnlyHlsSettings"))
    HlsSettings.add_member(:fmp_4_hls_settings, Shapes::ShapeRef.new(shape: Fmp4HlsSettings, location_name: "fmp4HlsSettings"))
    HlsSettings.add_member(:frame_capture_hls_settings, Shapes::ShapeRef.new(shape: FrameCaptureHlsSettings, location_name: "frameCaptureHlsSettings"))
    HlsSettings.add_member(:standard_hls_settings, Shapes::ShapeRef.new(shape: StandardHlsSettings, location_name: "standardHlsSettings"))
    HlsSettings.struct_class = Types::HlsSettings

    HlsTimedMetadataScheduleActionSettings.add_member(:id_3, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id3"))
    HlsTimedMetadataScheduleActionSettings.struct_class = Types::HlsTimedMetadataScheduleActionSettings

    HlsWebdavSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    HlsWebdavSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0Max600, location_name: "filecacheDuration"))
    HlsWebdavSettings.add_member(:http_transfer_mode, Shapes::ShapeRef.new(shape: HlsWebdavHttpTransferMode, location_name: "httpTransferMode"))
    HlsWebdavSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    HlsWebdavSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0Max15, location_name: "restartDelay"))
    HlsWebdavSettings.struct_class = Types::HlsWebdavSettings

    HtmlMotionGraphicsSettings.struct_class = Types::HtmlMotionGraphicsSettings

    Id3SegmentTaggingScheduleActionSettings.add_member(:id_3, Shapes::ShapeRef.new(shape: __string, location_name: "id3"))
    Id3SegmentTaggingScheduleActionSettings.add_member(:tag, Shapes::ShapeRef.new(shape: __string, location_name: "tag"))
    Id3SegmentTaggingScheduleActionSettings.struct_class = Types::Id3SegmentTaggingScheduleActionSettings

    ImmediateModeScheduleActionStartSettings.struct_class = Types::ImmediateModeScheduleActionStartSettings

    Input.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Input.add_member(:attached_channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "attachedChannels"))
    Input.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestination, location_name: "destinations"))
    Input.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Input.add_member(:input_class, Shapes::ShapeRef.new(shape: InputClass, location_name: "inputClass"))
    Input.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSettings, location_name: "inputDevices"))
    Input.add_member(:input_partner_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputPartnerIds"))
    Input.add_member(:input_source_type, Shapes::ShapeRef.new(shape: InputSourceType, location_name: "inputSourceType"))
    Input.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlow, location_name: "mediaConnectFlows"))
    Input.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Input.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    Input.add_member(:security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroups"))
    Input.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSource, location_name: "sources"))
    Input.add_member(:state, Shapes::ShapeRef.new(shape: InputState, location_name: "state"))
    Input.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Input.add_member(:type, Shapes::ShapeRef.new(shape: InputType, location_name: "type"))
    Input.add_member(:srt_settings, Shapes::ShapeRef.new(shape: SrtSettings, location_name: "srtSettings"))
    Input.add_member(:input_network_location, Shapes::ShapeRef.new(shape: InputNetworkLocation, location_name: "inputNetworkLocation"))
    Input.add_member(:multicast_settings, Shapes::ShapeRef.new(shape: MulticastSettings, location_name: "multicastSettings"))
    Input.add_member(:smpte_2110_receiver_group_settings, Shapes::ShapeRef.new(shape: Smpte2110ReceiverGroupSettings, location_name: "smpte2110ReceiverGroupSettings"))
    Input.add_member(:sdi_sources, Shapes::ShapeRef.new(shape: InputSdiSources, location_name: "sdiSources"))
    Input.struct_class = Types::Input

    InputAttachment.add_member(:automatic_input_failover_settings, Shapes::ShapeRef.new(shape: AutomaticInputFailoverSettings, location_name: "automaticInputFailoverSettings"))
    InputAttachment.add_member(:input_attachment_name, Shapes::ShapeRef.new(shape: __string, location_name: "inputAttachmentName"))
    InputAttachment.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, location_name: "inputId"))
    InputAttachment.add_member(:input_settings, Shapes::ShapeRef.new(shape: InputSettings, location_name: "inputSettings"))
    InputAttachment.add_member(:logical_interface_names, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "logicalInterfaceNames"))
    InputAttachment.struct_class = Types::InputAttachment

    InputChannelLevel.add_member(:gain, Shapes::ShapeRef.new(shape: __integerMinNegative60Max6, required: true, location_name: "gain"))
    InputChannelLevel.add_member(:input_channel, Shapes::ShapeRef.new(shape: __integerMin0Max15, required: true, location_name: "inputChannel"))
    InputChannelLevel.struct_class = Types::InputChannelLevel

    InputClippingSettings.add_member(:input_timecode_source, Shapes::ShapeRef.new(shape: InputTimecodeSource, required: true, location_name: "inputTimecodeSource"))
    InputClippingSettings.add_member(:start_timecode, Shapes::ShapeRef.new(shape: StartTimecode, location_name: "startTimecode"))
    InputClippingSettings.add_member(:stop_timecode, Shapes::ShapeRef.new(shape: StopTimecode, location_name: "stopTimecode"))
    InputClippingSettings.struct_class = Types::InputClippingSettings

    InputDestination.add_member(:ip, Shapes::ShapeRef.new(shape: __string, location_name: "ip"))
    InputDestination.add_member(:port, Shapes::ShapeRef.new(shape: __string, location_name: "port"))
    InputDestination.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    InputDestination.add_member(:vpc, Shapes::ShapeRef.new(shape: InputDestinationVpc, location_name: "vpc"))
    InputDestination.add_member(:network, Shapes::ShapeRef.new(shape: __string, location_name: "network"))
    InputDestination.add_member(:network_routes, Shapes::ShapeRef.new(shape: __listOfInputDestinationRoute, location_name: "networkRoutes"))
    InputDestination.struct_class = Types::InputDestination

    InputDestinationRequest.add_member(:stream_name, Shapes::ShapeRef.new(shape: __string, location_name: "streamName"))
    InputDestinationRequest.add_member(:network, Shapes::ShapeRef.new(shape: __string, location_name: "network"))
    InputDestinationRequest.add_member(:network_routes, Shapes::ShapeRef.new(shape: __listOfInputRequestDestinationRoute, location_name: "networkRoutes"))
    InputDestinationRequest.add_member(:static_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "staticIpAddress"))
    InputDestinationRequest.struct_class = Types::InputDestinationRequest

    InputDestinationRoute.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    InputDestinationRoute.add_member(:gateway, Shapes::ShapeRef.new(shape: __string, location_name: "gateway"))
    InputDestinationRoute.struct_class = Types::InputDestinationRoute

    InputDestinationVpc.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    InputDestinationVpc.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: __string, location_name: "networkInterfaceId"))
    InputDestinationVpc.struct_class = Types::InputDestinationVpc

    InputDevice.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    InputDevice.add_member(:connection_state, Shapes::ShapeRef.new(shape: InputDeviceConnectionState, location_name: "connectionState"))
    InputDevice.add_member(:device_settings_sync_state, Shapes::ShapeRef.new(shape: DeviceSettingsSyncState, location_name: "deviceSettingsSyncState"))
    InputDevice.add_member(:device_update_status, Shapes::ShapeRef.new(shape: DeviceUpdateStatus, location_name: "deviceUpdateStatus"))
    InputDevice.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceHdSettings, location_name: "hdDeviceSettings"))
    InputDevice.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputDevice.add_member(:mac_address, Shapes::ShapeRef.new(shape: __string, location_name: "macAddress"))
    InputDevice.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    InputDevice.add_member(:network_settings, Shapes::ShapeRef.new(shape: InputDeviceNetworkSettings, location_name: "networkSettings"))
    InputDevice.add_member(:serial_number, Shapes::ShapeRef.new(shape: __string, location_name: "serialNumber"))
    InputDevice.add_member(:type, Shapes::ShapeRef.new(shape: InputDeviceType, location_name: "type"))
    InputDevice.add_member(:uhd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceUhdSettings, location_name: "uhdDeviceSettings"))
    InputDevice.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    InputDevice.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    InputDevice.add_member(:medialive_input_arns, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "medialiveInputArns"))
    InputDevice.add_member(:output_type, Shapes::ShapeRef.new(shape: InputDeviceOutputType, location_name: "outputType"))
    InputDevice.struct_class = Types::InputDevice

    InputDeviceConfigurableAudioChannelPairConfig.add_member(:id, Shapes::ShapeRef.new(shape: __integer, location_name: "id"))
    InputDeviceConfigurableAudioChannelPairConfig.add_member(:profile, Shapes::ShapeRef.new(shape: InputDeviceConfigurableAudioChannelPairProfile, location_name: "profile"))
    InputDeviceConfigurableAudioChannelPairConfig.struct_class = Types::InputDeviceConfigurableAudioChannelPairConfig

    InputDeviceConfigurableSettings.add_member(:configured_input, Shapes::ShapeRef.new(shape: InputDeviceConfiguredInput, location_name: "configuredInput"))
    InputDeviceConfigurableSettings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    InputDeviceConfigurableSettings.add_member(:latency_ms, Shapes::ShapeRef.new(shape: __integer, location_name: "latencyMs"))
    InputDeviceConfigurableSettings.add_member(:codec, Shapes::ShapeRef.new(shape: InputDeviceCodec, location_name: "codec"))
    InputDeviceConfigurableSettings.add_member(:mediaconnect_settings, Shapes::ShapeRef.new(shape: InputDeviceMediaConnectConfigurableSettings, location_name: "mediaconnectSettings"))
    InputDeviceConfigurableSettings.add_member(:audio_channel_pairs, Shapes::ShapeRef.new(shape: __listOfInputDeviceConfigurableAudioChannelPairConfig, location_name: "audioChannelPairs"))
    InputDeviceConfigurableSettings.add_member(:input_resolution, Shapes::ShapeRef.new(shape: __string, location_name: "inputResolution"))
    InputDeviceConfigurableSettings.struct_class = Types::InputDeviceConfigurableSettings

    InputDeviceConfigurationValidationError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InputDeviceConfigurationValidationError.add_member(:validation_errors, Shapes::ShapeRef.new(shape: __listOfValidationError, location_name: "validationErrors"))
    InputDeviceConfigurationValidationError.struct_class = Types::InputDeviceConfigurationValidationError

    InputDeviceHdSettings.add_member(:active_input, Shapes::ShapeRef.new(shape: InputDeviceActiveInput, location_name: "activeInput"))
    InputDeviceHdSettings.add_member(:configured_input, Shapes::ShapeRef.new(shape: InputDeviceConfiguredInput, location_name: "configuredInput"))
    InputDeviceHdSettings.add_member(:device_state, Shapes::ShapeRef.new(shape: InputDeviceState, location_name: "deviceState"))
    InputDeviceHdSettings.add_member(:framerate, Shapes::ShapeRef.new(shape: __double, location_name: "framerate"))
    InputDeviceHdSettings.add_member(:height, Shapes::ShapeRef.new(shape: __integer, location_name: "height"))
    InputDeviceHdSettings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    InputDeviceHdSettings.add_member(:scan_type, Shapes::ShapeRef.new(shape: InputDeviceScanType, location_name: "scanType"))
    InputDeviceHdSettings.add_member(:width, Shapes::ShapeRef.new(shape: __integer, location_name: "width"))
    InputDeviceHdSettings.add_member(:latency_ms, Shapes::ShapeRef.new(shape: __integer, location_name: "latencyMs"))
    InputDeviceHdSettings.struct_class = Types::InputDeviceHdSettings

    InputDeviceMediaConnectConfigurableSettings.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    InputDeviceMediaConnectConfigurableSettings.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    InputDeviceMediaConnectConfigurableSettings.add_member(:secret_arn, Shapes::ShapeRef.new(shape: __string, location_name: "secretArn"))
    InputDeviceMediaConnectConfigurableSettings.add_member(:source_name, Shapes::ShapeRef.new(shape: __string, location_name: "sourceName"))
    InputDeviceMediaConnectConfigurableSettings.struct_class = Types::InputDeviceMediaConnectConfigurableSettings

    InputDeviceMediaConnectSettings.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    InputDeviceMediaConnectSettings.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    InputDeviceMediaConnectSettings.add_member(:secret_arn, Shapes::ShapeRef.new(shape: __string, location_name: "secretArn"))
    InputDeviceMediaConnectSettings.add_member(:source_name, Shapes::ShapeRef.new(shape: __string, location_name: "sourceName"))
    InputDeviceMediaConnectSettings.struct_class = Types::InputDeviceMediaConnectSettings

    InputDeviceNetworkSettings.add_member(:dns_addresses, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "dnsAddresses"))
    InputDeviceNetworkSettings.add_member(:gateway, Shapes::ShapeRef.new(shape: __string, location_name: "gateway"))
    InputDeviceNetworkSettings.add_member(:ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "ipAddress"))
    InputDeviceNetworkSettings.add_member(:ip_scheme, Shapes::ShapeRef.new(shape: InputDeviceIpScheme, location_name: "ipScheme"))
    InputDeviceNetworkSettings.add_member(:subnet_mask, Shapes::ShapeRef.new(shape: __string, location_name: "subnetMask"))
    InputDeviceNetworkSettings.struct_class = Types::InputDeviceNetworkSettings

    InputDeviceRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputDeviceRequest.struct_class = Types::InputDeviceRequest

    InputDeviceSettings.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputDeviceSettings.struct_class = Types::InputDeviceSettings

    InputDeviceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    InputDeviceSummary.add_member(:connection_state, Shapes::ShapeRef.new(shape: InputDeviceConnectionState, location_name: "connectionState"))
    InputDeviceSummary.add_member(:device_settings_sync_state, Shapes::ShapeRef.new(shape: DeviceSettingsSyncState, location_name: "deviceSettingsSyncState"))
    InputDeviceSummary.add_member(:device_update_status, Shapes::ShapeRef.new(shape: DeviceUpdateStatus, location_name: "deviceUpdateStatus"))
    InputDeviceSummary.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceHdSettings, location_name: "hdDeviceSettings"))
    InputDeviceSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputDeviceSummary.add_member(:mac_address, Shapes::ShapeRef.new(shape: __string, location_name: "macAddress"))
    InputDeviceSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    InputDeviceSummary.add_member(:network_settings, Shapes::ShapeRef.new(shape: InputDeviceNetworkSettings, location_name: "networkSettings"))
    InputDeviceSummary.add_member(:serial_number, Shapes::ShapeRef.new(shape: __string, location_name: "serialNumber"))
    InputDeviceSummary.add_member(:type, Shapes::ShapeRef.new(shape: InputDeviceType, location_name: "type"))
    InputDeviceSummary.add_member(:uhd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceUhdSettings, location_name: "uhdDeviceSettings"))
    InputDeviceSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    InputDeviceSummary.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    InputDeviceSummary.add_member(:medialive_input_arns, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "medialiveInputArns"))
    InputDeviceSummary.add_member(:output_type, Shapes::ShapeRef.new(shape: InputDeviceOutputType, location_name: "outputType"))
    InputDeviceSummary.struct_class = Types::InputDeviceSummary

    InputDeviceUhdAudioChannelPairConfig.add_member(:id, Shapes::ShapeRef.new(shape: __integer, location_name: "id"))
    InputDeviceUhdAudioChannelPairConfig.add_member(:profile, Shapes::ShapeRef.new(shape: InputDeviceUhdAudioChannelPairProfile, location_name: "profile"))
    InputDeviceUhdAudioChannelPairConfig.struct_class = Types::InputDeviceUhdAudioChannelPairConfig

    InputDeviceUhdSettings.add_member(:active_input, Shapes::ShapeRef.new(shape: InputDeviceActiveInput, location_name: "activeInput"))
    InputDeviceUhdSettings.add_member(:configured_input, Shapes::ShapeRef.new(shape: InputDeviceConfiguredInput, location_name: "configuredInput"))
    InputDeviceUhdSettings.add_member(:device_state, Shapes::ShapeRef.new(shape: InputDeviceState, location_name: "deviceState"))
    InputDeviceUhdSettings.add_member(:framerate, Shapes::ShapeRef.new(shape: __double, location_name: "framerate"))
    InputDeviceUhdSettings.add_member(:height, Shapes::ShapeRef.new(shape: __integer, location_name: "height"))
    InputDeviceUhdSettings.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    InputDeviceUhdSettings.add_member(:scan_type, Shapes::ShapeRef.new(shape: InputDeviceScanType, location_name: "scanType"))
    InputDeviceUhdSettings.add_member(:width, Shapes::ShapeRef.new(shape: __integer, location_name: "width"))
    InputDeviceUhdSettings.add_member(:latency_ms, Shapes::ShapeRef.new(shape: __integer, location_name: "latencyMs"))
    InputDeviceUhdSettings.add_member(:codec, Shapes::ShapeRef.new(shape: InputDeviceCodec, location_name: "codec"))
    InputDeviceUhdSettings.add_member(:mediaconnect_settings, Shapes::ShapeRef.new(shape: InputDeviceMediaConnectSettings, location_name: "mediaconnectSettings"))
    InputDeviceUhdSettings.add_member(:audio_channel_pairs, Shapes::ShapeRef.new(shape: __listOfInputDeviceUhdAudioChannelPairConfig, location_name: "audioChannelPairs"))
    InputDeviceUhdSettings.add_member(:input_resolution, Shapes::ShapeRef.new(shape: __string, location_name: "inputResolution"))
    InputDeviceUhdSettings.struct_class = Types::InputDeviceUhdSettings

    InputLocation.add_member(:password_param, Shapes::ShapeRef.new(shape: __string, location_name: "passwordParam"))
    InputLocation.add_member(:uri, Shapes::ShapeRef.new(shape: __stringMax2048, required: true, location_name: "uri"))
    InputLocation.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    InputLocation.struct_class = Types::InputLocation

    InputLossBehavior.add_member(:black_frame_msec, Shapes::ShapeRef.new(shape: __integerMin0Max1000000, location_name: "blackFrameMsec"))
    InputLossBehavior.add_member(:input_loss_image_color, Shapes::ShapeRef.new(shape: __stringMin6Max6, location_name: "inputLossImageColor"))
    InputLossBehavior.add_member(:input_loss_image_slate, Shapes::ShapeRef.new(shape: InputLocation, location_name: "inputLossImageSlate"))
    InputLossBehavior.add_member(:input_loss_image_type, Shapes::ShapeRef.new(shape: InputLossImageType, location_name: "inputLossImageType"))
    InputLossBehavior.add_member(:repeat_frame_msec, Shapes::ShapeRef.new(shape: __integerMin0Max1000000, location_name: "repeatFrameMsec"))
    InputLossBehavior.struct_class = Types::InputLossBehavior

    InputLossFailoverSettings.add_member(:input_loss_threshold_msec, Shapes::ShapeRef.new(shape: __integerMin100, location_name: "inputLossThresholdMsec"))
    InputLossFailoverSettings.struct_class = Types::InputLossFailoverSettings

    InputPrepareScheduleActionSettings.add_member(:input_attachment_name_reference, Shapes::ShapeRef.new(shape: __string, location_name: "inputAttachmentNameReference"))
    InputPrepareScheduleActionSettings.add_member(:input_clipping_settings, Shapes::ShapeRef.new(shape: InputClippingSettings, location_name: "inputClippingSettings"))
    InputPrepareScheduleActionSettings.add_member(:url_path, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "urlPath"))
    InputPrepareScheduleActionSettings.struct_class = Types::InputPrepareScheduleActionSettings

    InputRequestDestinationRoute.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    InputRequestDestinationRoute.add_member(:gateway, Shapes::ShapeRef.new(shape: __string, location_name: "gateway"))
    InputRequestDestinationRoute.struct_class = Types::InputRequestDestinationRoute

    InputSdiSources.member = Shapes::ShapeRef.new(shape: __string)

    InputSdpLocation.add_member(:media_index, Shapes::ShapeRef.new(shape: __integer, location_name: "mediaIndex"))
    InputSdpLocation.add_member(:sdp_url, Shapes::ShapeRef.new(shape: __string, location_name: "sdpUrl"))
    InputSdpLocation.struct_class = Types::InputSdpLocation

    InputSecurityGroup.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    InputSecurityGroup.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    InputSecurityGroup.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputs"))
    InputSecurityGroup.add_member(:state, Shapes::ShapeRef.new(shape: InputSecurityGroupState, location_name: "state"))
    InputSecurityGroup.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    InputSecurityGroup.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRule, location_name: "whitelistRules"))
    InputSecurityGroup.struct_class = Types::InputSecurityGroup

    InputSecurityGroupWhitelistRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    InputSecurityGroupWhitelistRequest.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRuleCidr, location_name: "whitelistRules"))
    InputSecurityGroupWhitelistRequest.struct_class = Types::InputSecurityGroupWhitelistRequest

    InputSettings.add_member(:audio_selectors, Shapes::ShapeRef.new(shape: __listOfAudioSelector, location_name: "audioSelectors"))
    InputSettings.add_member(:caption_selectors, Shapes::ShapeRef.new(shape: __listOfCaptionSelector, location_name: "captionSelectors"))
    InputSettings.add_member(:deblock_filter, Shapes::ShapeRef.new(shape: InputDeblockFilter, location_name: "deblockFilter"))
    InputSettings.add_member(:denoise_filter, Shapes::ShapeRef.new(shape: InputDenoiseFilter, location_name: "denoiseFilter"))
    InputSettings.add_member(:filter_strength, Shapes::ShapeRef.new(shape: __integerMin1Max5, location_name: "filterStrength"))
    InputSettings.add_member(:input_filter, Shapes::ShapeRef.new(shape: InputFilter, location_name: "inputFilter"))
    InputSettings.add_member(:network_input_settings, Shapes::ShapeRef.new(shape: NetworkInputSettings, location_name: "networkInputSettings"))
    InputSettings.add_member(:scte_35_pid, Shapes::ShapeRef.new(shape: __integerMin32Max8191, location_name: "scte35Pid"))
    InputSettings.add_member(:smpte_2038_data_preference, Shapes::ShapeRef.new(shape: Smpte2038DataPreference, location_name: "smpte2038DataPreference"))
    InputSettings.add_member(:source_end_behavior, Shapes::ShapeRef.new(shape: InputSourceEndBehavior, location_name: "sourceEndBehavior"))
    InputSettings.add_member(:video_selector, Shapes::ShapeRef.new(shape: VideoSelector, location_name: "videoSelector"))
    InputSettings.struct_class = Types::InputSettings

    InputSource.add_member(:password_param, Shapes::ShapeRef.new(shape: __string, location_name: "passwordParam"))
    InputSource.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    InputSource.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    InputSource.struct_class = Types::InputSource

    InputSourceRequest.add_member(:password_param, Shapes::ShapeRef.new(shape: __string, location_name: "passwordParam"))
    InputSourceRequest.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    InputSourceRequest.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    InputSourceRequest.struct_class = Types::InputSourceRequest

    InputSpecification.add_member(:codec, Shapes::ShapeRef.new(shape: InputCodec, location_name: "codec"))
    InputSpecification.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: InputMaximumBitrate, location_name: "maximumBitrate"))
    InputSpecification.add_member(:resolution, Shapes::ShapeRef.new(shape: InputResolution, location_name: "resolution"))
    InputSpecification.struct_class = Types::InputSpecification

    InputSwitchScheduleActionSettings.add_member(:input_attachment_name_reference, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "inputAttachmentNameReference"))
    InputSwitchScheduleActionSettings.add_member(:input_clipping_settings, Shapes::ShapeRef.new(shape: InputClippingSettings, location_name: "inputClippingSettings"))
    InputSwitchScheduleActionSettings.add_member(:url_path, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "urlPath"))
    InputSwitchScheduleActionSettings.struct_class = Types::InputSwitchScheduleActionSettings

    InputVpcRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroupIds"))
    InputVpcRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "subnetIds"))
    InputVpcRequest.struct_class = Types::InputVpcRequest

    InputWhitelistRule.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    InputWhitelistRule.struct_class = Types::InputWhitelistRule

    InputWhitelistRuleCidr.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    InputWhitelistRuleCidr.struct_class = Types::InputWhitelistRuleCidr

    InterfaceMapping.add_member(:logical_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "logicalInterfaceName"))
    InterfaceMapping.add_member(:network_id, Shapes::ShapeRef.new(shape: __string, location_name: "networkId"))
    InterfaceMapping.struct_class = Types::InterfaceMapping

    InterfaceMappingCreateRequest.add_member(:logical_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "logicalInterfaceName"))
    InterfaceMappingCreateRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: __string, location_name: "networkId"))
    InterfaceMappingCreateRequest.struct_class = Types::InterfaceMappingCreateRequest

    InterfaceMappingUpdateRequest.add_member(:logical_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "logicalInterfaceName"))
    InterfaceMappingUpdateRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: __string, location_name: "networkId"))
    InterfaceMappingUpdateRequest.struct_class = Types::InterfaceMappingUpdateRequest

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    InternalServerErrorExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerErrorExceptionResponseContent.struct_class = Types::InternalServerErrorExceptionResponseContent

    InternalServiceError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServiceError.struct_class = Types::InternalServiceError

    InvalidRequest.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InvalidRequest.struct_class = Types::InvalidRequest

    IpPool.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    IpPool.struct_class = Types::IpPool

    IpPoolCreateRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    IpPoolCreateRequest.struct_class = Types::IpPoolCreateRequest

    IpPoolUpdateRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    IpPoolUpdateRequest.struct_class = Types::IpPoolUpdateRequest

    KeyProviderSettings.add_member(:static_key_settings, Shapes::ShapeRef.new(shape: StaticKeySettings, location_name: "staticKeySettings"))
    KeyProviderSettings.struct_class = Types::KeyProviderSettings

    LimitExceeded.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    LimitExceeded.struct_class = Types::LimitExceeded

    ListChannelPlacementGroupsRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    ListChannelPlacementGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListChannelPlacementGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListChannelPlacementGroupsRequest.struct_class = Types::ListChannelPlacementGroupsRequest

    ListChannelPlacementGroupsResponse.add_member(:channel_placement_groups, Shapes::ShapeRef.new(shape: __listOfDescribeChannelPlacementGroupSummary, location_name: "channelPlacementGroups"))
    ListChannelPlacementGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListChannelPlacementGroupsResponse.struct_class = Types::ListChannelPlacementGroupsResponse

    ListChannelPlacementGroupsResult.add_member(:channel_placement_groups, Shapes::ShapeRef.new(shape: __listOfDescribeChannelPlacementGroupSummary, location_name: "channelPlacementGroups"))
    ListChannelPlacementGroupsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListChannelPlacementGroupsResult.struct_class = Types::ListChannelPlacementGroupsResult

    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: __listOfChannelSummary, location_name: "channels"))
    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListChannelsResultModel.add_member(:channels, Shapes::ShapeRef.new(shape: __listOfChannelSummary, location_name: "channels"))
    ListChannelsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListChannelsResultModel.struct_class = Types::ListChannelsResultModel

    ListCloudWatchAlarmTemplateGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCloudWatchAlarmTemplateGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListCloudWatchAlarmTemplateGroupsRequest.add_member(:scope, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "scope"))
    ListCloudWatchAlarmTemplateGroupsRequest.add_member(:signal_map_identifier, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "signalMapIdentifier"))
    ListCloudWatchAlarmTemplateGroupsRequest.struct_class = Types::ListCloudWatchAlarmTemplateGroupsRequest

    ListCloudWatchAlarmTemplateGroupsResponse.add_member(:cloud_watch_alarm_template_groups, Shapes::ShapeRef.new(shape: __listOfCloudWatchAlarmTemplateGroupSummary, location_name: "cloudWatchAlarmTemplateGroups"))
    ListCloudWatchAlarmTemplateGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListCloudWatchAlarmTemplateGroupsResponse.struct_class = Types::ListCloudWatchAlarmTemplateGroupsResponse

    ListCloudWatchAlarmTemplateGroupsResponseContent.add_member(:cloud_watch_alarm_template_groups, Shapes::ShapeRef.new(shape: __listOfCloudWatchAlarmTemplateGroupSummary, required: true, location_name: "cloudWatchAlarmTemplateGroups"))
    ListCloudWatchAlarmTemplateGroupsResponseContent.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListCloudWatchAlarmTemplateGroupsResponseContent.struct_class = Types::ListCloudWatchAlarmTemplateGroupsResponseContent

    ListCloudWatchAlarmTemplatesRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "groupIdentifier"))
    ListCloudWatchAlarmTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCloudWatchAlarmTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListCloudWatchAlarmTemplatesRequest.add_member(:scope, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "scope"))
    ListCloudWatchAlarmTemplatesRequest.add_member(:signal_map_identifier, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "signalMapIdentifier"))
    ListCloudWatchAlarmTemplatesRequest.struct_class = Types::ListCloudWatchAlarmTemplatesRequest

    ListCloudWatchAlarmTemplatesResponse.add_member(:cloud_watch_alarm_templates, Shapes::ShapeRef.new(shape: __listOfCloudWatchAlarmTemplateSummary, location_name: "cloudWatchAlarmTemplates"))
    ListCloudWatchAlarmTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListCloudWatchAlarmTemplatesResponse.struct_class = Types::ListCloudWatchAlarmTemplatesResponse

    ListCloudWatchAlarmTemplatesResponseContent.add_member(:cloud_watch_alarm_templates, Shapes::ShapeRef.new(shape: __listOfCloudWatchAlarmTemplateSummary, required: true, location_name: "cloudWatchAlarmTemplates"))
    ListCloudWatchAlarmTemplatesResponseContent.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListCloudWatchAlarmTemplatesResponseContent.struct_class = Types::ListCloudWatchAlarmTemplatesResponseContent

    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: __listOfDescribeClusterSummary, location_name: "clusters"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

    ListClustersResult.add_member(:clusters, Shapes::ShapeRef.new(shape: __listOfDescribeClusterSummary, location_name: "clusters"))
    ListClustersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClustersResult.struct_class = Types::ListClustersResult

    ListEventBridgeRuleTemplateGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEventBridgeRuleTemplateGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListEventBridgeRuleTemplateGroupsRequest.add_member(:signal_map_identifier, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "signalMapIdentifier"))
    ListEventBridgeRuleTemplateGroupsRequest.struct_class = Types::ListEventBridgeRuleTemplateGroupsRequest

    ListEventBridgeRuleTemplateGroupsResponse.add_member(:event_bridge_rule_template_groups, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateGroupSummary, location_name: "eventBridgeRuleTemplateGroups"))
    ListEventBridgeRuleTemplateGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListEventBridgeRuleTemplateGroupsResponse.struct_class = Types::ListEventBridgeRuleTemplateGroupsResponse

    ListEventBridgeRuleTemplateGroupsResponseContent.add_member(:event_bridge_rule_template_groups, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateGroupSummary, required: true, location_name: "eventBridgeRuleTemplateGroups"))
    ListEventBridgeRuleTemplateGroupsResponseContent.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListEventBridgeRuleTemplateGroupsResponseContent.struct_class = Types::ListEventBridgeRuleTemplateGroupsResponseContent

    ListEventBridgeRuleTemplatesRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "groupIdentifier"))
    ListEventBridgeRuleTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEventBridgeRuleTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListEventBridgeRuleTemplatesRequest.add_member(:signal_map_identifier, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "signalMapIdentifier"))
    ListEventBridgeRuleTemplatesRequest.struct_class = Types::ListEventBridgeRuleTemplatesRequest

    ListEventBridgeRuleTemplatesResponse.add_member(:event_bridge_rule_templates, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateSummary, location_name: "eventBridgeRuleTemplates"))
    ListEventBridgeRuleTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListEventBridgeRuleTemplatesResponse.struct_class = Types::ListEventBridgeRuleTemplatesResponse

    ListEventBridgeRuleTemplatesResponseContent.add_member(:event_bridge_rule_templates, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateSummary, required: true, location_name: "eventBridgeRuleTemplates"))
    ListEventBridgeRuleTemplatesResponseContent.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListEventBridgeRuleTemplatesResponseContent.struct_class = Types::ListEventBridgeRuleTemplatesResponseContent

    ListInputDeviceTransfersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInputDeviceTransfersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListInputDeviceTransfersRequest.add_member(:transfer_type, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "transferType"))
    ListInputDeviceTransfersRequest.struct_class = Types::ListInputDeviceTransfersRequest

    ListInputDeviceTransfersResponse.add_member(:input_device_transfers, Shapes::ShapeRef.new(shape: __listOfTransferringInputDeviceSummary, location_name: "inputDeviceTransfers"))
    ListInputDeviceTransfersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputDeviceTransfersResponse.struct_class = Types::ListInputDeviceTransfersResponse

    ListInputDeviceTransfersResultModel.add_member(:input_device_transfers, Shapes::ShapeRef.new(shape: __listOfTransferringInputDeviceSummary, location_name: "inputDeviceTransfers"))
    ListInputDeviceTransfersResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputDeviceTransfersResultModel.struct_class = Types::ListInputDeviceTransfersResultModel

    ListInputDevicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInputDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListInputDevicesRequest.struct_class = Types::ListInputDevicesRequest

    ListInputDevicesResponse.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSummary, location_name: "inputDevices"))
    ListInputDevicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputDevicesResponse.struct_class = Types::ListInputDevicesResponse

    ListInputDevicesResultModel.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceSummary, location_name: "inputDevices"))
    ListInputDevicesResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputDevicesResultModel.struct_class = Types::ListInputDevicesResultModel

    ListInputSecurityGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInputSecurityGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListInputSecurityGroupsRequest.struct_class = Types::ListInputSecurityGroupsRequest

    ListInputSecurityGroupsResponse.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOfInputSecurityGroup, location_name: "inputSecurityGroups"))
    ListInputSecurityGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputSecurityGroupsResponse.struct_class = Types::ListInputSecurityGroupsResponse

    ListInputSecurityGroupsResultModel.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOfInputSecurityGroup, location_name: "inputSecurityGroups"))
    ListInputSecurityGroupsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputSecurityGroupsResultModel.struct_class = Types::ListInputSecurityGroupsResultModel

    ListInputsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInputsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListInputsRequest.struct_class = Types::ListInputsRequest

    ListInputsResponse.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOfInput, location_name: "inputs"))
    ListInputsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputsResponse.struct_class = Types::ListInputsResponse

    ListInputsResultModel.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOfInput, location_name: "inputs"))
    ListInputsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInputsResultModel.struct_class = Types::ListInputsResultModel

    ListMultiplexProgramsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMultiplexProgramsRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    ListMultiplexProgramsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListMultiplexProgramsRequest.struct_class = Types::ListMultiplexProgramsRequest

    ListMultiplexProgramsResponse.add_member(:multiplex_programs, Shapes::ShapeRef.new(shape: __listOfMultiplexProgramSummary, location_name: "multiplexPrograms"))
    ListMultiplexProgramsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListMultiplexProgramsResponse.struct_class = Types::ListMultiplexProgramsResponse

    ListMultiplexProgramsResultModel.add_member(:multiplex_programs, Shapes::ShapeRef.new(shape: __listOfMultiplexProgramSummary, location_name: "multiplexPrograms"))
    ListMultiplexProgramsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListMultiplexProgramsResultModel.struct_class = Types::ListMultiplexProgramsResultModel

    ListMultiplexesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMultiplexesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListMultiplexesRequest.struct_class = Types::ListMultiplexesRequest

    ListMultiplexesResponse.add_member(:multiplexes, Shapes::ShapeRef.new(shape: __listOfMultiplexSummary, location_name: "multiplexes"))
    ListMultiplexesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListMultiplexesResponse.struct_class = Types::ListMultiplexesResponse

    ListMultiplexesResultModel.add_member(:multiplexes, Shapes::ShapeRef.new(shape: __listOfMultiplexSummary, location_name: "multiplexes"))
    ListMultiplexesResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListMultiplexesResultModel.struct_class = Types::ListMultiplexesResultModel

    ListNetworksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListNetworksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListNetworksRequest.struct_class = Types::ListNetworksRequest

    ListNetworksResponse.add_member(:networks, Shapes::ShapeRef.new(shape: __listOfDescribeNetworkSummary, location_name: "networks"))
    ListNetworksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListNetworksResponse.struct_class = Types::ListNetworksResponse

    ListNetworksResult.add_member(:networks, Shapes::ShapeRef.new(shape: __listOfDescribeNetworkSummary, location_name: "networks"))
    ListNetworksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListNetworksResult.struct_class = Types::ListNetworksResult

    ListNodesRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    ListNodesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListNodesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListNodesRequest.struct_class = Types::ListNodesRequest

    ListNodesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListNodesResponse.add_member(:nodes, Shapes::ShapeRef.new(shape: __listOfDescribeNodeSummary, location_name: "nodes"))
    ListNodesResponse.struct_class = Types::ListNodesResponse

    ListNodesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListNodesResult.add_member(:nodes, Shapes::ShapeRef.new(shape: __listOfDescribeNodeSummary, location_name: "nodes"))
    ListNodesResult.struct_class = Types::ListNodesResult

    ListOfferingsRequest.add_member(:channel_class, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "channelClass"))
    ListOfferingsRequest.add_member(:channel_configuration, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "channelConfiguration"))
    ListOfferingsRequest.add_member(:codec, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "codec"))
    ListOfferingsRequest.add_member(:duration, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "duration"))
    ListOfferingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListOfferingsRequest.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maximumBitrate"))
    ListOfferingsRequest.add_member(:maximum_framerate, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maximumFramerate"))
    ListOfferingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListOfferingsRequest.add_member(:resolution, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resolution"))
    ListOfferingsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceType"))
    ListOfferingsRequest.add_member(:special_feature, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "specialFeature"))
    ListOfferingsRequest.add_member(:video_quality, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "videoQuality"))
    ListOfferingsRequest.struct_class = Types::ListOfferingsRequest

    ListOfferingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListOfferingsResponse.add_member(:offerings, Shapes::ShapeRef.new(shape: __listOfOffering, location_name: "offerings"))
    ListOfferingsResponse.struct_class = Types::ListOfferingsResponse

    ListOfferingsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListOfferingsResultModel.add_member(:offerings, Shapes::ShapeRef.new(shape: __listOfOffering, location_name: "offerings"))
    ListOfferingsResultModel.struct_class = Types::ListOfferingsResultModel

    ListReservationsRequest.add_member(:channel_class, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "channelClass"))
    ListReservationsRequest.add_member(:codec, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "codec"))
    ListReservationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListReservationsRequest.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maximumBitrate"))
    ListReservationsRequest.add_member(:maximum_framerate, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "maximumFramerate"))
    ListReservationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListReservationsRequest.add_member(:resolution, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resolution"))
    ListReservationsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceType"))
    ListReservationsRequest.add_member(:special_feature, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "specialFeature"))
    ListReservationsRequest.add_member(:video_quality, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "videoQuality"))
    ListReservationsRequest.struct_class = Types::ListReservationsRequest

    ListReservationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListReservationsResponse.add_member(:reservations, Shapes::ShapeRef.new(shape: __listOfReservation, location_name: "reservations"))
    ListReservationsResponse.struct_class = Types::ListReservationsResponse

    ListReservationsResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListReservationsResultModel.add_member(:reservations, Shapes::ShapeRef.new(shape: __listOfReservation, location_name: "reservations"))
    ListReservationsResultModel.struct_class = Types::ListReservationsResultModel

    ListSdiSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSdiSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListSdiSourcesRequest.struct_class = Types::ListSdiSourcesRequest

    ListSdiSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListSdiSourcesResponse.add_member(:sdi_sources, Shapes::ShapeRef.new(shape: __listOfSdiSourceSummary, location_name: "sdiSources"))
    ListSdiSourcesResponse.struct_class = Types::ListSdiSourcesResponse

    ListSignalMapsRequest.add_member(:cloud_watch_alarm_template_group_identifier, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "cloudWatchAlarmTemplateGroupIdentifier"))
    ListSignalMapsRequest.add_member(:event_bridge_rule_template_group_identifier, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "eventBridgeRuleTemplateGroupIdentifier"))
    ListSignalMapsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSignalMapsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListSignalMapsRequest.struct_class = Types::ListSignalMapsRequest

    ListSignalMapsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListSignalMapsResponse.add_member(:signal_maps, Shapes::ShapeRef.new(shape: __listOfSignalMapSummary, location_name: "signalMaps"))
    ListSignalMapsResponse.struct_class = Types::ListSignalMapsResponse

    ListSignalMapsResponseContent.add_member(:next_token, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "nextToken"))
    ListSignalMapsResponseContent.add_member(:signal_maps, Shapes::ShapeRef.new(shape: __listOfSignalMapSummary, required: true, location_name: "signalMaps"))
    ListSignalMapsResponseContent.struct_class = Types::ListSignalMapsResponseContent

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListVersionsRequest.struct_class = Types::ListVersionsRequest

    ListVersionsResponse.add_member(:versions, Shapes::ShapeRef.new(shape: __listOfChannelEngineVersionResponse, location_name: "versions"))
    ListVersionsResponse.struct_class = Types::ListVersionsResponse

    M2tsSettings.add_member(:absent_input_audio_behavior, Shapes::ShapeRef.new(shape: M2tsAbsentInputAudioBehavior, location_name: "absentInputAudioBehavior"))
    M2tsSettings.add_member(:arib, Shapes::ShapeRef.new(shape: M2tsArib, location_name: "arib"))
    M2tsSettings.add_member(:arib_captions_pid, Shapes::ShapeRef.new(shape: __string, location_name: "aribCaptionsPid"))
    M2tsSettings.add_member(:arib_captions_pid_control, Shapes::ShapeRef.new(shape: M2tsAribCaptionsPidControl, location_name: "aribCaptionsPidControl"))
    M2tsSettings.add_member(:audio_buffer_model, Shapes::ShapeRef.new(shape: M2tsAudioBufferModel, location_name: "audioBufferModel"))
    M2tsSettings.add_member(:audio_frames_per_pes, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "audioFramesPerPes"))
    M2tsSettings.add_member(:audio_pids, Shapes::ShapeRef.new(shape: __string, location_name: "audioPids"))
    M2tsSettings.add_member(:audio_stream_type, Shapes::ShapeRef.new(shape: M2tsAudioStreamType, location_name: "audioStreamType"))
    M2tsSettings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "bitrate"))
    M2tsSettings.add_member(:buffer_model, Shapes::ShapeRef.new(shape: M2tsBufferModel, location_name: "bufferModel"))
    M2tsSettings.add_member(:cc_descriptor, Shapes::ShapeRef.new(shape: M2tsCcDescriptor, location_name: "ccDescriptor"))
    M2tsSettings.add_member(:dvb_nit_settings, Shapes::ShapeRef.new(shape: DvbNitSettings, location_name: "dvbNitSettings"))
    M2tsSettings.add_member(:dvb_sdt_settings, Shapes::ShapeRef.new(shape: DvbSdtSettings, location_name: "dvbSdtSettings"))
    M2tsSettings.add_member(:dvb_sub_pids, Shapes::ShapeRef.new(shape: __string, location_name: "dvbSubPids"))
    M2tsSettings.add_member(:dvb_tdt_settings, Shapes::ShapeRef.new(shape: DvbTdtSettings, location_name: "dvbTdtSettings"))
    M2tsSettings.add_member(:dvb_teletext_pid, Shapes::ShapeRef.new(shape: __string, location_name: "dvbTeletextPid"))
    M2tsSettings.add_member(:ebif, Shapes::ShapeRef.new(shape: M2tsEbifControl, location_name: "ebif"))
    M2tsSettings.add_member(:ebp_audio_interval, Shapes::ShapeRef.new(shape: M2tsAudioInterval, location_name: "ebpAudioInterval"))
    M2tsSettings.add_member(:ebp_lookahead_ms, Shapes::ShapeRef.new(shape: __integerMin0Max10000, location_name: "ebpLookaheadMs"))
    M2tsSettings.add_member(:ebp_placement, Shapes::ShapeRef.new(shape: M2tsEbpPlacement, location_name: "ebpPlacement"))
    M2tsSettings.add_member(:ecm_pid, Shapes::ShapeRef.new(shape: __string, location_name: "ecmPid"))
    M2tsSettings.add_member(:es_rate_in_pes, Shapes::ShapeRef.new(shape: M2tsEsRateInPes, location_name: "esRateInPes"))
    M2tsSettings.add_member(:etv_platform_pid, Shapes::ShapeRef.new(shape: __string, location_name: "etvPlatformPid"))
    M2tsSettings.add_member(:etv_signal_pid, Shapes::ShapeRef.new(shape: __string, location_name: "etvSignalPid"))
    M2tsSettings.add_member(:fragment_time, Shapes::ShapeRef.new(shape: __doubleMin0, location_name: "fragmentTime"))
    M2tsSettings.add_member(:klv, Shapes::ShapeRef.new(shape: M2tsKlv, location_name: "klv"))
    M2tsSettings.add_member(:klv_data_pids, Shapes::ShapeRef.new(shape: __string, location_name: "klvDataPids"))
    M2tsSettings.add_member(:nielsen_id_3_behavior, Shapes::ShapeRef.new(shape: M2tsNielsenId3Behavior, location_name: "nielsenId3Behavior"))
    M2tsSettings.add_member(:null_packet_bitrate, Shapes::ShapeRef.new(shape: __doubleMin0, location_name: "nullPacketBitrate"))
    M2tsSettings.add_member(:pat_interval, Shapes::ShapeRef.new(shape: __integerMin0Max1000, location_name: "patInterval"))
    M2tsSettings.add_member(:pcr_control, Shapes::ShapeRef.new(shape: M2tsPcrControl, location_name: "pcrControl"))
    M2tsSettings.add_member(:pcr_period, Shapes::ShapeRef.new(shape: __integerMin0Max500, location_name: "pcrPeriod"))
    M2tsSettings.add_member(:pcr_pid, Shapes::ShapeRef.new(shape: __string, location_name: "pcrPid"))
    M2tsSettings.add_member(:pmt_interval, Shapes::ShapeRef.new(shape: __integerMin0Max1000, location_name: "pmtInterval"))
    M2tsSettings.add_member(:pmt_pid, Shapes::ShapeRef.new(shape: __string, location_name: "pmtPid"))
    M2tsSettings.add_member(:program_num, Shapes::ShapeRef.new(shape: __integerMin0Max65535, location_name: "programNum"))
    M2tsSettings.add_member(:rate_mode, Shapes::ShapeRef.new(shape: M2tsRateMode, location_name: "rateMode"))
    M2tsSettings.add_member(:scte_27_pids, Shapes::ShapeRef.new(shape: __string, location_name: "scte27Pids"))
    M2tsSettings.add_member(:scte_35_control, Shapes::ShapeRef.new(shape: M2tsScte35Control, location_name: "scte35Control"))
    M2tsSettings.add_member(:scte_35_pid, Shapes::ShapeRef.new(shape: __string, location_name: "scte35Pid"))
    M2tsSettings.add_member(:scte_35_preroll_pullup_milliseconds, Shapes::ShapeRef.new(shape: __doubleMin0Max5000, location_name: "scte35PrerollPullupMilliseconds"))
    M2tsSettings.add_member(:segmentation_markers, Shapes::ShapeRef.new(shape: M2tsSegmentationMarkers, location_name: "segmentationMarkers"))
    M2tsSettings.add_member(:segmentation_style, Shapes::ShapeRef.new(shape: M2tsSegmentationStyle, location_name: "segmentationStyle"))
    M2tsSettings.add_member(:segmentation_time, Shapes::ShapeRef.new(shape: __doubleMin1, location_name: "segmentationTime"))
    M2tsSettings.add_member(:timed_metadata_behavior, Shapes::ShapeRef.new(shape: M2tsTimedMetadataBehavior, location_name: "timedMetadataBehavior"))
    M2tsSettings.add_member(:timed_metadata_pid, Shapes::ShapeRef.new(shape: __string, location_name: "timedMetadataPid"))
    M2tsSettings.add_member(:transport_stream_id, Shapes::ShapeRef.new(shape: __integerMin0Max65535, location_name: "transportStreamId"))
    M2tsSettings.add_member(:video_pid, Shapes::ShapeRef.new(shape: __string, location_name: "videoPid"))
    M2tsSettings.struct_class = Types::M2tsSettings

    M3u8Settings.add_member(:audio_frames_per_pes, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "audioFramesPerPes"))
    M3u8Settings.add_member(:audio_pids, Shapes::ShapeRef.new(shape: __string, location_name: "audioPids"))
    M3u8Settings.add_member(:ecm_pid, Shapes::ShapeRef.new(shape: __string, location_name: "ecmPid"))
    M3u8Settings.add_member(:nielsen_id_3_behavior, Shapes::ShapeRef.new(shape: M3u8NielsenId3Behavior, location_name: "nielsenId3Behavior"))
    M3u8Settings.add_member(:pat_interval, Shapes::ShapeRef.new(shape: __integerMin0Max1000, location_name: "patInterval"))
    M3u8Settings.add_member(:pcr_control, Shapes::ShapeRef.new(shape: M3u8PcrControl, location_name: "pcrControl"))
    M3u8Settings.add_member(:pcr_period, Shapes::ShapeRef.new(shape: __integerMin0Max500, location_name: "pcrPeriod"))
    M3u8Settings.add_member(:pcr_pid, Shapes::ShapeRef.new(shape: __string, location_name: "pcrPid"))
    M3u8Settings.add_member(:pmt_interval, Shapes::ShapeRef.new(shape: __integerMin0Max1000, location_name: "pmtInterval"))
    M3u8Settings.add_member(:pmt_pid, Shapes::ShapeRef.new(shape: __string, location_name: "pmtPid"))
    M3u8Settings.add_member(:program_num, Shapes::ShapeRef.new(shape: __integerMin0Max65535, location_name: "programNum"))
    M3u8Settings.add_member(:scte_35_behavior, Shapes::ShapeRef.new(shape: M3u8Scte35Behavior, location_name: "scte35Behavior"))
    M3u8Settings.add_member(:scte_35_pid, Shapes::ShapeRef.new(shape: __string, location_name: "scte35Pid"))
    M3u8Settings.add_member(:timed_metadata_behavior, Shapes::ShapeRef.new(shape: M3u8TimedMetadataBehavior, location_name: "timedMetadataBehavior"))
    M3u8Settings.add_member(:timed_metadata_pid, Shapes::ShapeRef.new(shape: __string, location_name: "timedMetadataPid"))
    M3u8Settings.add_member(:transport_stream_id, Shapes::ShapeRef.new(shape: __integerMin0Max65535, location_name: "transportStreamId"))
    M3u8Settings.add_member(:video_pid, Shapes::ShapeRef.new(shape: __string, location_name: "videoPid"))
    M3u8Settings.add_member(:klv_behavior, Shapes::ShapeRef.new(shape: M3u8KlvBehavior, location_name: "klvBehavior"))
    M3u8Settings.add_member(:klv_data_pids, Shapes::ShapeRef.new(shape: __string, location_name: "klvDataPids"))
    M3u8Settings.struct_class = Types::M3u8Settings

    MaintenanceCreateSettings.add_member(:maintenance_day, Shapes::ShapeRef.new(shape: MaintenanceDay, location_name: "maintenanceDay"))
    MaintenanceCreateSettings.add_member(:maintenance_start_time, Shapes::ShapeRef.new(shape: __stringPattern010920300, location_name: "maintenanceStartTime"))
    MaintenanceCreateSettings.struct_class = Types::MaintenanceCreateSettings

    MaintenanceStatus.add_member(:maintenance_day, Shapes::ShapeRef.new(shape: MaintenanceDay, location_name: "maintenanceDay"))
    MaintenanceStatus.add_member(:maintenance_deadline, Shapes::ShapeRef.new(shape: __string, location_name: "maintenanceDeadline"))
    MaintenanceStatus.add_member(:maintenance_scheduled_date, Shapes::ShapeRef.new(shape: __string, location_name: "maintenanceScheduledDate"))
    MaintenanceStatus.add_member(:maintenance_start_time, Shapes::ShapeRef.new(shape: __string, location_name: "maintenanceStartTime"))
    MaintenanceStatus.struct_class = Types::MaintenanceStatus

    MaintenanceUpdateSettings.add_member(:maintenance_day, Shapes::ShapeRef.new(shape: MaintenanceDay, location_name: "maintenanceDay"))
    MaintenanceUpdateSettings.add_member(:maintenance_scheduled_date, Shapes::ShapeRef.new(shape: __string, location_name: "maintenanceScheduledDate"))
    MaintenanceUpdateSettings.add_member(:maintenance_start_time, Shapes::ShapeRef.new(shape: __stringPattern010920300, location_name: "maintenanceStartTime"))
    MaintenanceUpdateSettings.struct_class = Types::MaintenanceUpdateSettings

    MediaConnectFlow.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    MediaConnectFlow.struct_class = Types::MediaConnectFlow

    MediaConnectFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    MediaConnectFlowRequest.struct_class = Types::MediaConnectFlowRequest

    MediaPackageGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    MediaPackageGroupSettings.struct_class = Types::MediaPackageGroupSettings

    MediaPackageOutputDestinationSettings.add_member(:channel_id, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "channelId"))
    MediaPackageOutputDestinationSettings.add_member(:channel_group, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "channelGroup"))
    MediaPackageOutputDestinationSettings.add_member(:channel_name, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "channelName"))
    MediaPackageOutputDestinationSettings.struct_class = Types::MediaPackageOutputDestinationSettings

    MediaPackageOutputSettings.struct_class = Types::MediaPackageOutputSettings

    MediaResource.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMediaResourceNeighbor, location_name: "destinations"))
    MediaResource.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max256, location_name: "name"))
    MediaResource.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfMediaResourceNeighbor, location_name: "sources"))
    MediaResource.struct_class = Types::MediaResource

    MediaResourceMap.key = Shapes::ShapeRef.new(shape: __string)
    MediaResourceMap.value = Shapes::ShapeRef.new(shape: MediaResource)

    MediaResourceNeighbor.add_member(:arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048PatternArn, required: true, location_name: "arn"))
    MediaResourceNeighbor.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max256, location_name: "name"))
    MediaResourceNeighbor.struct_class = Types::MediaResourceNeighbor

    MonitorDeployment.add_member(:details_uri, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "detailsUri"))
    MonitorDeployment.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    MonitorDeployment.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapMonitorDeploymentStatus, required: true, location_name: "status"))
    MonitorDeployment.struct_class = Types::MonitorDeployment

    MotionGraphicsActivateScheduleActionSettings.add_member(:duration, Shapes::ShapeRef.new(shape: __longMin0Max86400000, location_name: "duration"))
    MotionGraphicsActivateScheduleActionSettings.add_member(:password_param, Shapes::ShapeRef.new(shape: __string, location_name: "passwordParam"))
    MotionGraphicsActivateScheduleActionSettings.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    MotionGraphicsActivateScheduleActionSettings.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    MotionGraphicsActivateScheduleActionSettings.struct_class = Types::MotionGraphicsActivateScheduleActionSettings

    MotionGraphicsConfiguration.add_member(:motion_graphics_insertion, Shapes::ShapeRef.new(shape: MotionGraphicsInsertion, location_name: "motionGraphicsInsertion"))
    MotionGraphicsConfiguration.add_member(:motion_graphics_settings, Shapes::ShapeRef.new(shape: MotionGraphicsSettings, required: true, location_name: "motionGraphicsSettings"))
    MotionGraphicsConfiguration.struct_class = Types::MotionGraphicsConfiguration

    MotionGraphicsDeactivateScheduleActionSettings.struct_class = Types::MotionGraphicsDeactivateScheduleActionSettings

    MotionGraphicsSettings.add_member(:html_motion_graphics_settings, Shapes::ShapeRef.new(shape: HtmlMotionGraphicsSettings, location_name: "htmlMotionGraphicsSettings"))
    MotionGraphicsSettings.struct_class = Types::MotionGraphicsSettings

    Mp2Settings.add_member(:bitrate, Shapes::ShapeRef.new(shape: __double, location_name: "bitrate"))
    Mp2Settings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: Mp2CodingMode, location_name: "codingMode"))
    Mp2Settings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __double, location_name: "sampleRate"))
    Mp2Settings.struct_class = Types::Mp2Settings

    Mpeg2FilterSettings.add_member(:temporal_filter_settings, Shapes::ShapeRef.new(shape: TemporalFilterSettings, location_name: "temporalFilterSettings"))
    Mpeg2FilterSettings.struct_class = Types::Mpeg2FilterSettings

    Mpeg2Settings.add_member(:adaptive_quantization, Shapes::ShapeRef.new(shape: Mpeg2AdaptiveQuantization, location_name: "adaptiveQuantization"))
    Mpeg2Settings.add_member(:afd_signaling, Shapes::ShapeRef.new(shape: AfdSignaling, location_name: "afdSignaling"))
    Mpeg2Settings.add_member(:color_metadata, Shapes::ShapeRef.new(shape: Mpeg2ColorMetadata, location_name: "colorMetadata"))
    Mpeg2Settings.add_member(:color_space, Shapes::ShapeRef.new(shape: Mpeg2ColorSpace, location_name: "colorSpace"))
    Mpeg2Settings.add_member(:display_aspect_ratio, Shapes::ShapeRef.new(shape: Mpeg2DisplayRatio, location_name: "displayAspectRatio"))
    Mpeg2Settings.add_member(:filter_settings, Shapes::ShapeRef.new(shape: Mpeg2FilterSettings, location_name: "filterSettings"))
    Mpeg2Settings.add_member(:fixed_afd, Shapes::ShapeRef.new(shape: FixedAfd, location_name: "fixedAfd"))
    Mpeg2Settings.add_member(:framerate_denominator, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "framerateDenominator"))
    Mpeg2Settings.add_member(:framerate_numerator, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "framerateNumerator"))
    Mpeg2Settings.add_member(:gop_closed_cadence, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "gopClosedCadence"))
    Mpeg2Settings.add_member(:gop_num_b_frames, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "gopNumBFrames"))
    Mpeg2Settings.add_member(:gop_size, Shapes::ShapeRef.new(shape: __double, location_name: "gopSize"))
    Mpeg2Settings.add_member(:gop_size_units, Shapes::ShapeRef.new(shape: Mpeg2GopSizeUnits, location_name: "gopSizeUnits"))
    Mpeg2Settings.add_member(:scan_type, Shapes::ShapeRef.new(shape: Mpeg2ScanType, location_name: "scanType"))
    Mpeg2Settings.add_member(:subgop_length, Shapes::ShapeRef.new(shape: Mpeg2SubGopLength, location_name: "subgopLength"))
    Mpeg2Settings.add_member(:timecode_insertion, Shapes::ShapeRef.new(shape: Mpeg2TimecodeInsertionBehavior, location_name: "timecodeInsertion"))
    Mpeg2Settings.add_member(:timecode_burnin_settings, Shapes::ShapeRef.new(shape: TimecodeBurninSettings, location_name: "timecodeBurninSettings"))
    Mpeg2Settings.struct_class = Types::Mpeg2Settings

    MsSmoothGroupSettings.add_member(:acquisition_point_id, Shapes::ShapeRef.new(shape: __string, location_name: "acquisitionPointId"))
    MsSmoothGroupSettings.add_member(:audio_only_timecode_control, Shapes::ShapeRef.new(shape: SmoothGroupAudioOnlyTimecodeControl, location_name: "audioOnlyTimecodeControl"))
    MsSmoothGroupSettings.add_member(:certificate_mode, Shapes::ShapeRef.new(shape: SmoothGroupCertificateMode, location_name: "certificateMode"))
    MsSmoothGroupSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "connectionRetryInterval"))
    MsSmoothGroupSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    MsSmoothGroupSettings.add_member(:event_id, Shapes::ShapeRef.new(shape: __string, location_name: "eventId"))
    MsSmoothGroupSettings.add_member(:event_id_mode, Shapes::ShapeRef.new(shape: SmoothGroupEventIdMode, location_name: "eventIdMode"))
    MsSmoothGroupSettings.add_member(:event_stop_behavior, Shapes::ShapeRef.new(shape: SmoothGroupEventStopBehavior, location_name: "eventStopBehavior"))
    MsSmoothGroupSettings.add_member(:filecache_duration, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "filecacheDuration"))
    MsSmoothGroupSettings.add_member(:fragment_length, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "fragmentLength"))
    MsSmoothGroupSettings.add_member(:input_loss_action, Shapes::ShapeRef.new(shape: InputLossActionForMsSmoothOut, location_name: "inputLossAction"))
    MsSmoothGroupSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    MsSmoothGroupSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "restartDelay"))
    MsSmoothGroupSettings.add_member(:segmentation_mode, Shapes::ShapeRef.new(shape: SmoothGroupSegmentationMode, location_name: "segmentationMode"))
    MsSmoothGroupSettings.add_member(:send_delay_ms, Shapes::ShapeRef.new(shape: __integerMin0Max10000, location_name: "sendDelayMs"))
    MsSmoothGroupSettings.add_member(:sparse_track_type, Shapes::ShapeRef.new(shape: SmoothGroupSparseTrackType, location_name: "sparseTrackType"))
    MsSmoothGroupSettings.add_member(:stream_manifest_behavior, Shapes::ShapeRef.new(shape: SmoothGroupStreamManifestBehavior, location_name: "streamManifestBehavior"))
    MsSmoothGroupSettings.add_member(:timestamp_offset, Shapes::ShapeRef.new(shape: __string, location_name: "timestampOffset"))
    MsSmoothGroupSettings.add_member(:timestamp_offset_mode, Shapes::ShapeRef.new(shape: SmoothGroupTimestampOffsetMode, location_name: "timestampOffsetMode"))
    MsSmoothGroupSettings.struct_class = Types::MsSmoothGroupSettings

    MsSmoothOutputSettings.add_member(:h265_packaging_type, Shapes::ShapeRef.new(shape: MsSmoothH265PackagingType, location_name: "h265PackagingType"))
    MsSmoothOutputSettings.add_member(:name_modifier, Shapes::ShapeRef.new(shape: __string, location_name: "nameModifier"))
    MsSmoothOutputSettings.struct_class = Types::MsSmoothOutputSettings

    MulticastInputSettings.add_member(:source_ip_address, Shapes::ShapeRef.new(shape: __string, location_name: "sourceIpAddress"))
    MulticastInputSettings.struct_class = Types::MulticastInputSettings

    MulticastSettings.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfMulticastSource, location_name: "sources"))
    MulticastSettings.struct_class = Types::MulticastSettings

    MulticastSettingsCreateRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfMulticastSourceCreateRequest, location_name: "sources"))
    MulticastSettingsCreateRequest.struct_class = Types::MulticastSettingsCreateRequest

    MulticastSettingsUpdateRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfMulticastSourceUpdateRequest, location_name: "sources"))
    MulticastSettingsUpdateRequest.struct_class = Types::MulticastSettingsUpdateRequest

    MulticastSource.add_member(:source_ip, Shapes::ShapeRef.new(shape: __string, location_name: "sourceIp"))
    MulticastSource.add_member(:url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "url"))
    MulticastSource.struct_class = Types::MulticastSource

    MulticastSourceCreateRequest.add_member(:source_ip, Shapes::ShapeRef.new(shape: __string, location_name: "sourceIp"))
    MulticastSourceCreateRequest.add_member(:url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "url"))
    MulticastSourceCreateRequest.struct_class = Types::MulticastSourceCreateRequest

    MulticastSourceUpdateRequest.add_member(:source_ip, Shapes::ShapeRef.new(shape: __string, location_name: "sourceIp"))
    MulticastSourceUpdateRequest.add_member(:url, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "url"))
    MulticastSourceUpdateRequest.struct_class = Types::MulticastSourceUpdateRequest

    Multiplex.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Multiplex.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    Multiplex.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMultiplexOutputDestination, location_name: "destinations"))
    Multiplex.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Multiplex.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    Multiplex.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Multiplex.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    Multiplex.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    Multiplex.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    Multiplex.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Multiplex.struct_class = Types::Multiplex

    MultiplexConfigurationValidationError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    MultiplexConfigurationValidationError.add_member(:validation_errors, Shapes::ShapeRef.new(shape: __listOfValidationError, location_name: "validationErrors"))
    MultiplexConfigurationValidationError.struct_class = Types::MultiplexConfigurationValidationError

    MultiplexContainerSettings.add_member(:multiplex_m2ts_settings, Shapes::ShapeRef.new(shape: MultiplexM2tsSettings, location_name: "multiplexM2tsSettings"))
    MultiplexContainerSettings.struct_class = Types::MultiplexContainerSettings

    MultiplexGroupSettings.struct_class = Types::MultiplexGroupSettings

    MultiplexM2tsSettings.add_member(:absent_input_audio_behavior, Shapes::ShapeRef.new(shape: M2tsAbsentInputAudioBehavior, location_name: "absentInputAudioBehavior"))
    MultiplexM2tsSettings.add_member(:arib, Shapes::ShapeRef.new(shape: M2tsArib, location_name: "arib"))
    MultiplexM2tsSettings.add_member(:audio_buffer_model, Shapes::ShapeRef.new(shape: M2tsAudioBufferModel, location_name: "audioBufferModel"))
    MultiplexM2tsSettings.add_member(:audio_frames_per_pes, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "audioFramesPerPes"))
    MultiplexM2tsSettings.add_member(:audio_stream_type, Shapes::ShapeRef.new(shape: M2tsAudioStreamType, location_name: "audioStreamType"))
    MultiplexM2tsSettings.add_member(:cc_descriptor, Shapes::ShapeRef.new(shape: M2tsCcDescriptor, location_name: "ccDescriptor"))
    MultiplexM2tsSettings.add_member(:ebif, Shapes::ShapeRef.new(shape: M2tsEbifControl, location_name: "ebif"))
    MultiplexM2tsSettings.add_member(:es_rate_in_pes, Shapes::ShapeRef.new(shape: M2tsEsRateInPes, location_name: "esRateInPes"))
    MultiplexM2tsSettings.add_member(:klv, Shapes::ShapeRef.new(shape: M2tsKlv, location_name: "klv"))
    MultiplexM2tsSettings.add_member(:nielsen_id_3_behavior, Shapes::ShapeRef.new(shape: M2tsNielsenId3Behavior, location_name: "nielsenId3Behavior"))
    MultiplexM2tsSettings.add_member(:pcr_control, Shapes::ShapeRef.new(shape: M2tsPcrControl, location_name: "pcrControl"))
    MultiplexM2tsSettings.add_member(:pcr_period, Shapes::ShapeRef.new(shape: __integerMin0Max500, location_name: "pcrPeriod"))
    MultiplexM2tsSettings.add_member(:scte_35_control, Shapes::ShapeRef.new(shape: M2tsScte35Control, location_name: "scte35Control"))
    MultiplexM2tsSettings.add_member(:scte_35_preroll_pullup_milliseconds, Shapes::ShapeRef.new(shape: __doubleMin0Max5000, location_name: "scte35PrerollPullupMilliseconds"))
    MultiplexM2tsSettings.struct_class = Types::MultiplexM2tsSettings

    MultiplexMediaConnectOutputDestinationSettings.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "entitlementArn"))
    MultiplexMediaConnectOutputDestinationSettings.struct_class = Types::MultiplexMediaConnectOutputDestinationSettings

    MultiplexOutputDestination.add_member(:media_connect_settings, Shapes::ShapeRef.new(shape: MultiplexMediaConnectOutputDestinationSettings, location_name: "mediaConnectSettings"))
    MultiplexOutputDestination.struct_class = Types::MultiplexOutputDestination

    MultiplexOutputSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    MultiplexOutputSettings.add_member(:container_settings, Shapes::ShapeRef.new(shape: MultiplexContainerSettings, location_name: "containerSettings"))
    MultiplexOutputSettings.struct_class = Types::MultiplexOutputSettings

    MultiplexPacketIdentifiersMapping.key = Shapes::ShapeRef.new(shape: __string)
    MultiplexPacketIdentifiersMapping.value = Shapes::ShapeRef.new(shape: MultiplexProgramPacketIdentifiersMap)

    MultiplexProgram.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    MultiplexProgram.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, location_name: "multiplexProgramSettings"))
    MultiplexProgram.add_member(:packet_identifiers_map, Shapes::ShapeRef.new(shape: MultiplexProgramPacketIdentifiersMap, location_name: "packetIdentifiersMap"))
    MultiplexProgram.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfMultiplexProgramPipelineDetail, location_name: "pipelineDetails"))
    MultiplexProgram.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "programName"))
    MultiplexProgram.struct_class = Types::MultiplexProgram

    MultiplexProgramChannelDestinationSettings.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "multiplexId"))
    MultiplexProgramChannelDestinationSettings.add_member(:program_name, Shapes::ShapeRef.new(shape: __stringMin1, location_name: "programName"))
    MultiplexProgramChannelDestinationSettings.struct_class = Types::MultiplexProgramChannelDestinationSettings

    MultiplexProgramPacketIdentifiersMap.add_member(:audio_pids, Shapes::ShapeRef.new(shape: __listOf__integer, location_name: "audioPids"))
    MultiplexProgramPacketIdentifiersMap.add_member(:dvb_sub_pids, Shapes::ShapeRef.new(shape: __listOf__integer, location_name: "dvbSubPids"))
    MultiplexProgramPacketIdentifiersMap.add_member(:dvb_teletext_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "dvbTeletextPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:etv_platform_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "etvPlatformPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:etv_signal_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "etvSignalPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:klv_data_pids, Shapes::ShapeRef.new(shape: __listOf__integer, location_name: "klvDataPids"))
    MultiplexProgramPacketIdentifiersMap.add_member(:pcr_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "pcrPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:pmt_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "pmtPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:private_metadata_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "privateMetadataPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:scte_27_pids, Shapes::ShapeRef.new(shape: __listOf__integer, location_name: "scte27Pids"))
    MultiplexProgramPacketIdentifiersMap.add_member(:scte_35_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "scte35Pid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:timed_metadata_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "timedMetadataPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:video_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "videoPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:arib_captions_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "aribCaptionsPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:dvb_teletext_pids, Shapes::ShapeRef.new(shape: __listOf__integer, location_name: "dvbTeletextPids"))
    MultiplexProgramPacketIdentifiersMap.add_member(:ecm_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "ecmPid"))
    MultiplexProgramPacketIdentifiersMap.add_member(:smpte_2038_pid, Shapes::ShapeRef.new(shape: __integer, location_name: "smpte2038Pid"))
    MultiplexProgramPacketIdentifiersMap.struct_class = Types::MultiplexProgramPacketIdentifiersMap

    MultiplexProgramPipelineDetail.add_member(:active_channel_pipeline, Shapes::ShapeRef.new(shape: __string, location_name: "activeChannelPipeline"))
    MultiplexProgramPipelineDetail.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: __string, location_name: "pipelineId"))
    MultiplexProgramPipelineDetail.struct_class = Types::MultiplexProgramPipelineDetail

    MultiplexProgramServiceDescriptor.add_member(:provider_name, Shapes::ShapeRef.new(shape: __stringMax256, required: true, location_name: "providerName"))
    MultiplexProgramServiceDescriptor.add_member(:service_name, Shapes::ShapeRef.new(shape: __stringMax256, required: true, location_name: "serviceName"))
    MultiplexProgramServiceDescriptor.struct_class = Types::MultiplexProgramServiceDescriptor

    MultiplexProgramSettings.add_member(:preferred_channel_pipeline, Shapes::ShapeRef.new(shape: PreferredChannelPipeline, location_name: "preferredChannelPipeline"))
    MultiplexProgramSettings.add_member(:program_number, Shapes::ShapeRef.new(shape: __integerMin0Max65535, required: true, location_name: "programNumber"))
    MultiplexProgramSettings.add_member(:service_descriptor, Shapes::ShapeRef.new(shape: MultiplexProgramServiceDescriptor, location_name: "serviceDescriptor"))
    MultiplexProgramSettings.add_member(:video_settings, Shapes::ShapeRef.new(shape: MultiplexVideoSettings, location_name: "videoSettings"))
    MultiplexProgramSettings.struct_class = Types::MultiplexProgramSettings

    MultiplexProgramSummary.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, location_name: "channelId"))
    MultiplexProgramSummary.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, location_name: "programName"))
    MultiplexProgramSummary.struct_class = Types::MultiplexProgramSummary

    MultiplexSettings.add_member(:maximum_video_buffer_delay_milliseconds, Shapes::ShapeRef.new(shape: __integerMin800Max3000, location_name: "maximumVideoBufferDelayMilliseconds"))
    MultiplexSettings.add_member(:transport_stream_bitrate, Shapes::ShapeRef.new(shape: __integerMin1000000Max100000000, required: true, location_name: "transportStreamBitrate"))
    MultiplexSettings.add_member(:transport_stream_id, Shapes::ShapeRef.new(shape: __integerMin0Max65535, required: true, location_name: "transportStreamId"))
    MultiplexSettings.add_member(:transport_stream_reserved_bitrate, Shapes::ShapeRef.new(shape: __integerMin0Max100000000, location_name: "transportStreamReservedBitrate"))
    MultiplexSettings.struct_class = Types::MultiplexSettings

    MultiplexSettingsSummary.add_member(:transport_stream_bitrate, Shapes::ShapeRef.new(shape: __integerMin1000000Max100000000, location_name: "transportStreamBitrate"))
    MultiplexSettingsSummary.struct_class = Types::MultiplexSettingsSummary

    MultiplexStatmuxVideoSettings.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: __integerMin100000Max100000000, location_name: "maximumBitrate"))
    MultiplexStatmuxVideoSettings.add_member(:minimum_bitrate, Shapes::ShapeRef.new(shape: __integerMin100000Max100000000, location_name: "minimumBitrate"))
    MultiplexStatmuxVideoSettings.add_member(:priority, Shapes::ShapeRef.new(shape: __integerMinNegative5Max5, location_name: "priority"))
    MultiplexStatmuxVideoSettings.struct_class = Types::MultiplexStatmuxVideoSettings

    MultiplexSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    MultiplexSummary.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    MultiplexSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    MultiplexSummary.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettingsSummary, location_name: "multiplexSettings"))
    MultiplexSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    MultiplexSummary.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    MultiplexSummary.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    MultiplexSummary.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    MultiplexSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    MultiplexSummary.struct_class = Types::MultiplexSummary

    MultiplexVideoSettings.add_member(:constant_bitrate, Shapes::ShapeRef.new(shape: __integerMin100000Max100000000, location_name: "constantBitrate"))
    MultiplexVideoSettings.add_member(:statmux_settings, Shapes::ShapeRef.new(shape: MultiplexStatmuxVideoSettings, location_name: "statmuxSettings"))
    MultiplexVideoSettings.struct_class = Types::MultiplexVideoSettings

    NetworkInputSettings.add_member(:hls_input_settings, Shapes::ShapeRef.new(shape: HlsInputSettings, location_name: "hlsInputSettings"))
    NetworkInputSettings.add_member(:server_validation, Shapes::ShapeRef.new(shape: NetworkInputServerValidation, location_name: "serverValidation"))
    NetworkInputSettings.add_member(:multicast_input_settings, Shapes::ShapeRef.new(shape: MulticastInputSettings, location_name: "multicastInputSettings"))
    NetworkInputSettings.struct_class = Types::NetworkInputSettings

    NielsenCBET.add_member(:cbet_check_digit_string, Shapes::ShapeRef.new(shape: __stringMin2Max2, required: true, location_name: "cbetCheckDigitString"))
    NielsenCBET.add_member(:cbet_stepaside, Shapes::ShapeRef.new(shape: NielsenWatermarksCbetStepaside, required: true, location_name: "cbetStepaside"))
    NielsenCBET.add_member(:csid, Shapes::ShapeRef.new(shape: __stringMin1Max7, required: true, location_name: "csid"))
    NielsenCBET.struct_class = Types::NielsenCBET

    NielsenConfiguration.add_member(:distributor_id, Shapes::ShapeRef.new(shape: __string, location_name: "distributorId"))
    NielsenConfiguration.add_member(:nielsen_pcm_to_id_3_tagging, Shapes::ShapeRef.new(shape: NielsenPcmToId3TaggingState, location_name: "nielsenPcmToId3Tagging"))
    NielsenConfiguration.struct_class = Types::NielsenConfiguration

    NielsenNaesIiNw.add_member(:check_digit_string, Shapes::ShapeRef.new(shape: __stringMin2Max2, required: true, location_name: "checkDigitString"))
    NielsenNaesIiNw.add_member(:sid, Shapes::ShapeRef.new(shape: __doubleMin1Max65535, required: true, location_name: "sid"))
    NielsenNaesIiNw.add_member(:timezone, Shapes::ShapeRef.new(shape: NielsenWatermarkTimezones, location_name: "timezone"))
    NielsenNaesIiNw.struct_class = Types::NielsenNaesIiNw

    NielsenWatermarksSettings.add_member(:nielsen_cbet_settings, Shapes::ShapeRef.new(shape: NielsenCBET, location_name: "nielsenCbetSettings"))
    NielsenWatermarksSettings.add_member(:nielsen_distribution_type, Shapes::ShapeRef.new(shape: NielsenWatermarksDistributionTypes, location_name: "nielsenDistributionType"))
    NielsenWatermarksSettings.add_member(:nielsen_naes_ii_nw_settings, Shapes::ShapeRef.new(shape: NielsenNaesIiNw, location_name: "nielsenNaesIiNwSettings"))
    NielsenWatermarksSettings.struct_class = Types::NielsenWatermarksSettings

    NodeConfigurationValidationError.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NodeConfigurationValidationError.add_member(:validation_errors, Shapes::ShapeRef.new(shape: __listOfValidationError, location_name: "validationErrors"))
    NodeConfigurationValidationError.struct_class = Types::NodeConfigurationValidationError

    NodeInterfaceMapping.add_member(:logical_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "logicalInterfaceName"))
    NodeInterfaceMapping.add_member(:network_interface_mode, Shapes::ShapeRef.new(shape: NetworkInterfaceMode, location_name: "networkInterfaceMode"))
    NodeInterfaceMapping.add_member(:physical_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "physicalInterfaceName"))
    NodeInterfaceMapping.struct_class = Types::NodeInterfaceMapping

    NodeInterfaceMappingCreateRequest.add_member(:logical_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "logicalInterfaceName"))
    NodeInterfaceMappingCreateRequest.add_member(:network_interface_mode, Shapes::ShapeRef.new(shape: NetworkInterfaceMode, location_name: "networkInterfaceMode"))
    NodeInterfaceMappingCreateRequest.add_member(:physical_interface_name, Shapes::ShapeRef.new(shape: __string, location_name: "physicalInterfaceName"))
    NodeInterfaceMappingCreateRequest.struct_class = Types::NodeInterfaceMappingCreateRequest

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    NotFoundExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    NotFoundExceptionResponseContent.struct_class = Types::NotFoundExceptionResponseContent

    Offering.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Offering.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, location_name: "currencyCode"))
    Offering.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    Offering.add_member(:duration_units, Shapes::ShapeRef.new(shape: OfferingDurationUnits, location_name: "durationUnits"))
    Offering.add_member(:fixed_price, Shapes::ShapeRef.new(shape: __double, location_name: "fixedPrice"))
    Offering.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, location_name: "offeringDescription"))
    Offering.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, location_name: "offeringId"))
    Offering.add_member(:offering_type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "offeringType"))
    Offering.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    Offering.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ReservationResourceSpecification, location_name: "resourceSpecification"))
    Offering.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    Offering.struct_class = Types::Offering

    Output.add_member(:audio_description_names, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "audioDescriptionNames"))
    Output.add_member(:caption_description_names, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "captionDescriptionNames"))
    Output.add_member(:output_name, Shapes::ShapeRef.new(shape: __stringMin1Max255, location_name: "outputName"))
    Output.add_member(:output_settings, Shapes::ShapeRef.new(shape: OutputSettings, required: true, location_name: "outputSettings"))
    Output.add_member(:video_description_name, Shapes::ShapeRef.new(shape: __string, location_name: "videoDescriptionName"))
    Output.struct_class = Types::Output

    OutputDestination.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    OutputDestination.add_member(:media_package_settings, Shapes::ShapeRef.new(shape: __listOfMediaPackageOutputDestinationSettings, location_name: "mediaPackageSettings"))
    OutputDestination.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexProgramChannelDestinationSettings, location_name: "multiplexSettings"))
    OutputDestination.add_member(:settings, Shapes::ShapeRef.new(shape: __listOfOutputDestinationSettings, location_name: "settings"))
    OutputDestination.add_member(:srt_settings, Shapes::ShapeRef.new(shape: __listOfSrtOutputDestinationSettings, location_name: "srtSettings"))
    OutputDestination.add_member(:logical_interface_names, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "logicalInterfaceNames"))
    OutputDestination.struct_class = Types::OutputDestination

    OutputDestinationSettings.add_member(:password_param, Shapes::ShapeRef.new(shape: __string, location_name: "passwordParam"))
    OutputDestinationSettings.add_member(:stream_name, Shapes::ShapeRef.new(shape: __string, location_name: "streamName"))
    OutputDestinationSettings.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    OutputDestinationSettings.add_member(:username, Shapes::ShapeRef.new(shape: __string, location_name: "username"))
    OutputDestinationSettings.struct_class = Types::OutputDestinationSettings

    OutputGroup.add_member(:name, Shapes::ShapeRef.new(shape: __stringMax32, location_name: "name"))
    OutputGroup.add_member(:output_group_settings, Shapes::ShapeRef.new(shape: OutputGroupSettings, required: true, location_name: "outputGroupSettings"))
    OutputGroup.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfOutput, required: true, location_name: "outputs"))
    OutputGroup.struct_class = Types::OutputGroup

    OutputGroupSettings.add_member(:archive_group_settings, Shapes::ShapeRef.new(shape: ArchiveGroupSettings, location_name: "archiveGroupSettings"))
    OutputGroupSettings.add_member(:frame_capture_group_settings, Shapes::ShapeRef.new(shape: FrameCaptureGroupSettings, location_name: "frameCaptureGroupSettings"))
    OutputGroupSettings.add_member(:hls_group_settings, Shapes::ShapeRef.new(shape: HlsGroupSettings, location_name: "hlsGroupSettings"))
    OutputGroupSettings.add_member(:media_package_group_settings, Shapes::ShapeRef.new(shape: MediaPackageGroupSettings, location_name: "mediaPackageGroupSettings"))
    OutputGroupSettings.add_member(:ms_smooth_group_settings, Shapes::ShapeRef.new(shape: MsSmoothGroupSettings, location_name: "msSmoothGroupSettings"))
    OutputGroupSettings.add_member(:multiplex_group_settings, Shapes::ShapeRef.new(shape: MultiplexGroupSettings, location_name: "multiplexGroupSettings"))
    OutputGroupSettings.add_member(:rtmp_group_settings, Shapes::ShapeRef.new(shape: RtmpGroupSettings, location_name: "rtmpGroupSettings"))
    OutputGroupSettings.add_member(:udp_group_settings, Shapes::ShapeRef.new(shape: UdpGroupSettings, location_name: "udpGroupSettings"))
    OutputGroupSettings.add_member(:cmaf_ingest_group_settings, Shapes::ShapeRef.new(shape: CmafIngestGroupSettings, location_name: "cmafIngestGroupSettings"))
    OutputGroupSettings.add_member(:srt_group_settings, Shapes::ShapeRef.new(shape: SrtGroupSettings, location_name: "srtGroupSettings"))
    OutputGroupSettings.struct_class = Types::OutputGroupSettings

    OutputLocationRef.add_member(:destination_ref_id, Shapes::ShapeRef.new(shape: __string, location_name: "destinationRefId"))
    OutputLocationRef.struct_class = Types::OutputLocationRef

    OutputLockingSettings.add_member(:epoch_locking_settings, Shapes::ShapeRef.new(shape: EpochLockingSettings, location_name: "epochLockingSettings"))
    OutputLockingSettings.add_member(:pipeline_locking_settings, Shapes::ShapeRef.new(shape: PipelineLockingSettings, location_name: "pipelineLockingSettings"))
    OutputLockingSettings.struct_class = Types::OutputLockingSettings

    OutputSettings.add_member(:archive_output_settings, Shapes::ShapeRef.new(shape: ArchiveOutputSettings, location_name: "archiveOutputSettings"))
    OutputSettings.add_member(:frame_capture_output_settings, Shapes::ShapeRef.new(shape: FrameCaptureOutputSettings, location_name: "frameCaptureOutputSettings"))
    OutputSettings.add_member(:hls_output_settings, Shapes::ShapeRef.new(shape: HlsOutputSettings, location_name: "hlsOutputSettings"))
    OutputSettings.add_member(:media_package_output_settings, Shapes::ShapeRef.new(shape: MediaPackageOutputSettings, location_name: "mediaPackageOutputSettings"))
    OutputSettings.add_member(:ms_smooth_output_settings, Shapes::ShapeRef.new(shape: MsSmoothOutputSettings, location_name: "msSmoothOutputSettings"))
    OutputSettings.add_member(:multiplex_output_settings, Shapes::ShapeRef.new(shape: MultiplexOutputSettings, location_name: "multiplexOutputSettings"))
    OutputSettings.add_member(:rtmp_output_settings, Shapes::ShapeRef.new(shape: RtmpOutputSettings, location_name: "rtmpOutputSettings"))
    OutputSettings.add_member(:udp_output_settings, Shapes::ShapeRef.new(shape: UdpOutputSettings, location_name: "udpOutputSettings"))
    OutputSettings.add_member(:cmaf_ingest_output_settings, Shapes::ShapeRef.new(shape: CmafIngestOutputSettings, location_name: "cmafIngestOutputSettings"))
    OutputSettings.add_member(:srt_output_settings, Shapes::ShapeRef.new(shape: SrtOutputSettings, location_name: "srtOutputSettings"))
    OutputSettings.struct_class = Types::OutputSettings

    PassThroughSettings.struct_class = Types::PassThroughSettings

    PauseStateScheduleActionSettings.add_member(:pipelines, Shapes::ShapeRef.new(shape: __listOfPipelinePauseStateSettings, location_name: "pipelines"))
    PauseStateScheduleActionSettings.struct_class = Types::PauseStateScheduleActionSettings

    PipelineDetail.add_member(:active_input_attachment_name, Shapes::ShapeRef.new(shape: __string, location_name: "activeInputAttachmentName"))
    PipelineDetail.add_member(:active_input_switch_action_name, Shapes::ShapeRef.new(shape: __string, location_name: "activeInputSwitchActionName"))
    PipelineDetail.add_member(:active_motion_graphics_action_name, Shapes::ShapeRef.new(shape: __string, location_name: "activeMotionGraphicsActionName"))
    PipelineDetail.add_member(:active_motion_graphics_uri, Shapes::ShapeRef.new(shape: __string, location_name: "activeMotionGraphicsUri"))
    PipelineDetail.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: __string, location_name: "pipelineId"))
    PipelineDetail.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionResponse, location_name: "channelEngineVersion"))
    PipelineDetail.struct_class = Types::PipelineDetail

    PipelineLockingSettings.struct_class = Types::PipelineLockingSettings

    PipelinePauseStateSettings.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: PipelineId, required: true, location_name: "pipelineId"))
    PipelinePauseStateSettings.struct_class = Types::PipelinePauseStateSettings

    PurchaseOffering.add_member(:count, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "count"))
    PurchaseOffering.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    PurchaseOffering.add_member(:renewal_settings, Shapes::ShapeRef.new(shape: RenewalSettings, location_name: "renewalSettings"))
    PurchaseOffering.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    PurchaseOffering.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    PurchaseOffering.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PurchaseOffering.struct_class = Types::PurchaseOffering

    PurchaseOfferingRequest.add_member(:count, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "count"))
    PurchaseOfferingRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    PurchaseOfferingRequest.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "offeringId"))
    PurchaseOfferingRequest.add_member(:renewal_settings, Shapes::ShapeRef.new(shape: RenewalSettings, location_name: "renewalSettings"))
    PurchaseOfferingRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: __string, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    PurchaseOfferingRequest.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    PurchaseOfferingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    PurchaseOfferingRequest.struct_class = Types::PurchaseOfferingRequest

    PurchaseOfferingResponse.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    PurchaseOfferingResponse.struct_class = Types::PurchaseOfferingResponse

    PurchaseOfferingResultModel.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    PurchaseOfferingResultModel.struct_class = Types::PurchaseOfferingResultModel

    RawSettings.struct_class = Types::RawSettings

    RebootInputDevice.add_member(:force, Shapes::ShapeRef.new(shape: RebootInputDeviceForce, location_name: "force"))
    RebootInputDevice.struct_class = Types::RebootInputDevice

    RebootInputDeviceRequest.add_member(:force, Shapes::ShapeRef.new(shape: RebootInputDeviceForce, location_name: "force"))
    RebootInputDeviceRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    RebootInputDeviceRequest.struct_class = Types::RebootInputDeviceRequest

    RebootInputDeviceResponse.struct_class = Types::RebootInputDeviceResponse

    Rec601Settings.struct_class = Types::Rec601Settings

    Rec709Settings.struct_class = Types::Rec709Settings

    RejectInputDeviceTransferRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    RejectInputDeviceTransferRequest.struct_class = Types::RejectInputDeviceTransferRequest

    RejectInputDeviceTransferResponse.struct_class = Types::RejectInputDeviceTransferResponse

    RemixSettings.add_member(:channel_mappings, Shapes::ShapeRef.new(shape: __listOfAudioChannelMapping, required: true, location_name: "channelMappings"))
    RemixSettings.add_member(:channels_in, Shapes::ShapeRef.new(shape: __integerMin1Max16, location_name: "channelsIn"))
    RemixSettings.add_member(:channels_out, Shapes::ShapeRef.new(shape: __integerMin1Max8, location_name: "channelsOut"))
    RemixSettings.struct_class = Types::RemixSettings

    RenewalSettings.add_member(:automatic_renewal, Shapes::ShapeRef.new(shape: ReservationAutomaticRenewal, location_name: "automaticRenewal"))
    RenewalSettings.add_member(:renewal_count, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "renewalCount"))
    RenewalSettings.struct_class = Types::RenewalSettings

    Reservation.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Reservation.add_member(:count, Shapes::ShapeRef.new(shape: __integer, location_name: "count"))
    Reservation.add_member(:currency_code, Shapes::ShapeRef.new(shape: __string, location_name: "currencyCode"))
    Reservation.add_member(:duration, Shapes::ShapeRef.new(shape: __integer, location_name: "duration"))
    Reservation.add_member(:duration_units, Shapes::ShapeRef.new(shape: OfferingDurationUnits, location_name: "durationUnits"))
    Reservation.add_member(:end, Shapes::ShapeRef.new(shape: __string, location_name: "end"))
    Reservation.add_member(:fixed_price, Shapes::ShapeRef.new(shape: __double, location_name: "fixedPrice"))
    Reservation.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Reservation.add_member(:offering_description, Shapes::ShapeRef.new(shape: __string, location_name: "offeringDescription"))
    Reservation.add_member(:offering_id, Shapes::ShapeRef.new(shape: __string, location_name: "offeringId"))
    Reservation.add_member(:offering_type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "offeringType"))
    Reservation.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    Reservation.add_member(:renewal_settings, Shapes::ShapeRef.new(shape: RenewalSettings, location_name: "renewalSettings"))
    Reservation.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, location_name: "reservationId"))
    Reservation.add_member(:resource_specification, Shapes::ShapeRef.new(shape: ReservationResourceSpecification, location_name: "resourceSpecification"))
    Reservation.add_member(:start, Shapes::ShapeRef.new(shape: __string, location_name: "start"))
    Reservation.add_member(:state, Shapes::ShapeRef.new(shape: ReservationState, location_name: "state"))
    Reservation.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Reservation.add_member(:usage_price, Shapes::ShapeRef.new(shape: __double, location_name: "usagePrice"))
    Reservation.struct_class = Types::Reservation

    ReservationResourceSpecification.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    ReservationResourceSpecification.add_member(:codec, Shapes::ShapeRef.new(shape: ReservationCodec, location_name: "codec"))
    ReservationResourceSpecification.add_member(:maximum_bitrate, Shapes::ShapeRef.new(shape: ReservationMaximumBitrate, location_name: "maximumBitrate"))
    ReservationResourceSpecification.add_member(:maximum_framerate, Shapes::ShapeRef.new(shape: ReservationMaximumFramerate, location_name: "maximumFramerate"))
    ReservationResourceSpecification.add_member(:resolution, Shapes::ShapeRef.new(shape: ReservationResolution, location_name: "resolution"))
    ReservationResourceSpecification.add_member(:resource_type, Shapes::ShapeRef.new(shape: ReservationResourceType, location_name: "resourceType"))
    ReservationResourceSpecification.add_member(:special_feature, Shapes::ShapeRef.new(shape: ReservationSpecialFeature, location_name: "specialFeature"))
    ReservationResourceSpecification.add_member(:video_quality, Shapes::ShapeRef.new(shape: ReservationVideoQuality, location_name: "videoQuality"))
    ReservationResourceSpecification.struct_class = Types::ReservationResourceSpecification

    ResourceConflict.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ResourceConflict.struct_class = Types::ResourceConflict

    ResourceNotFound.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ResourceNotFound.struct_class = Types::ResourceNotFound

    RestartChannelPipelinesRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    RestartChannelPipelinesRequest.add_member(:pipeline_ids, Shapes::ShapeRef.new(shape: __listOfChannelPipelineIdToRestart, location_name: "pipelineIds"))
    RestartChannelPipelinesRequest.struct_class = Types::RestartChannelPipelinesRequest

    RestartChannelPipelinesResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    RestartChannelPipelinesResponse.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    RestartChannelPipelinesResponse.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    RestartChannelPipelinesResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    RestartChannelPipelinesResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    RestartChannelPipelinesResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    RestartChannelPipelinesResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    RestartChannelPipelinesResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    RestartChannelPipelinesResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    RestartChannelPipelinesResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    RestartChannelPipelinesResponse.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "maintenance"))
    RestartChannelPipelinesResponse.add_member(:maintenance_status, Shapes::ShapeRef.new(shape: __string, location_name: "maintenanceStatus"))
    RestartChannelPipelinesResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    RestartChannelPipelinesResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    RestartChannelPipelinesResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    RestartChannelPipelinesResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    RestartChannelPipelinesResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    RestartChannelPipelinesResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RestartChannelPipelinesResponse.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcOutputSettingsDescription, location_name: "vpc"))
    RestartChannelPipelinesResponse.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: DescribeAnywhereSettings, location_name: "anywhereSettings"))
    RestartChannelPipelinesResponse.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionResponse, location_name: "channelEngineVersion"))
    RestartChannelPipelinesResponse.struct_class = Types::RestartChannelPipelinesResponse

    Route.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    Route.add_member(:gateway, Shapes::ShapeRef.new(shape: __string, location_name: "gateway"))
    Route.struct_class = Types::Route

    RouteCreateRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    RouteCreateRequest.add_member(:gateway, Shapes::ShapeRef.new(shape: __string, location_name: "gateway"))
    RouteCreateRequest.struct_class = Types::RouteCreateRequest

    RouteUpdateRequest.add_member(:cidr, Shapes::ShapeRef.new(shape: __string, location_name: "cidr"))
    RouteUpdateRequest.add_member(:gateway, Shapes::ShapeRef.new(shape: __string, location_name: "gateway"))
    RouteUpdateRequest.struct_class = Types::RouteUpdateRequest

    RtmpCaptionInfoDestinationSettings.struct_class = Types::RtmpCaptionInfoDestinationSettings

    RtmpGroupSettings.add_member(:ad_markers, Shapes::ShapeRef.new(shape: __listOfRtmpAdMarkers, location_name: "adMarkers"))
    RtmpGroupSettings.add_member(:authentication_scheme, Shapes::ShapeRef.new(shape: AuthenticationScheme, location_name: "authenticationScheme"))
    RtmpGroupSettings.add_member(:cache_full_behavior, Shapes::ShapeRef.new(shape: RtmpCacheFullBehavior, location_name: "cacheFullBehavior"))
    RtmpGroupSettings.add_member(:cache_length, Shapes::ShapeRef.new(shape: __integerMin30, location_name: "cacheLength"))
    RtmpGroupSettings.add_member(:caption_data, Shapes::ShapeRef.new(shape: RtmpCaptionData, location_name: "captionData"))
    RtmpGroupSettings.add_member(:input_loss_action, Shapes::ShapeRef.new(shape: InputLossActionForRtmpOut, location_name: "inputLossAction"))
    RtmpGroupSettings.add_member(:restart_delay, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "restartDelay"))
    RtmpGroupSettings.add_member(:include_filler_nal_units, Shapes::ShapeRef.new(shape: IncludeFillerNalUnits, location_name: "includeFillerNalUnits"))
    RtmpGroupSettings.struct_class = Types::RtmpGroupSettings

    RtmpOutputSettings.add_member(:certificate_mode, Shapes::ShapeRef.new(shape: RtmpOutputCertificateMode, location_name: "certificateMode"))
    RtmpOutputSettings.add_member(:connection_retry_interval, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "connectionRetryInterval"))
    RtmpOutputSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    RtmpOutputSettings.add_member(:num_retries, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "numRetries"))
    RtmpOutputSettings.struct_class = Types::RtmpOutputSettings

    ScheduleAction.add_member(:action_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "actionName"))
    ScheduleAction.add_member(:schedule_action_settings, Shapes::ShapeRef.new(shape: ScheduleActionSettings, required: true, location_name: "scheduleActionSettings"))
    ScheduleAction.add_member(:schedule_action_start_settings, Shapes::ShapeRef.new(shape: ScheduleActionStartSettings, required: true, location_name: "scheduleActionStartSettings"))
    ScheduleAction.struct_class = Types::ScheduleAction

    ScheduleActionSettings.add_member(:hls_id_3_segment_tagging_settings, Shapes::ShapeRef.new(shape: HlsId3SegmentTaggingScheduleActionSettings, location_name: "hlsId3SegmentTaggingSettings"))
    ScheduleActionSettings.add_member(:hls_timed_metadata_settings, Shapes::ShapeRef.new(shape: HlsTimedMetadataScheduleActionSettings, location_name: "hlsTimedMetadataSettings"))
    ScheduleActionSettings.add_member(:input_prepare_settings, Shapes::ShapeRef.new(shape: InputPrepareScheduleActionSettings, location_name: "inputPrepareSettings"))
    ScheduleActionSettings.add_member(:input_switch_settings, Shapes::ShapeRef.new(shape: InputSwitchScheduleActionSettings, location_name: "inputSwitchSettings"))
    ScheduleActionSettings.add_member(:motion_graphics_image_activate_settings, Shapes::ShapeRef.new(shape: MotionGraphicsActivateScheduleActionSettings, location_name: "motionGraphicsImageActivateSettings"))
    ScheduleActionSettings.add_member(:motion_graphics_image_deactivate_settings, Shapes::ShapeRef.new(shape: MotionGraphicsDeactivateScheduleActionSettings, location_name: "motionGraphicsImageDeactivateSettings"))
    ScheduleActionSettings.add_member(:pause_state_settings, Shapes::ShapeRef.new(shape: PauseStateScheduleActionSettings, location_name: "pauseStateSettings"))
    ScheduleActionSettings.add_member(:scte_35_input_settings, Shapes::ShapeRef.new(shape: Scte35InputScheduleActionSettings, location_name: "scte35InputSettings"))
    ScheduleActionSettings.add_member(:scte_35_return_to_network_settings, Shapes::ShapeRef.new(shape: Scte35ReturnToNetworkScheduleActionSettings, location_name: "scte35ReturnToNetworkSettings"))
    ScheduleActionSettings.add_member(:scte_35_splice_insert_settings, Shapes::ShapeRef.new(shape: Scte35SpliceInsertScheduleActionSettings, location_name: "scte35SpliceInsertSettings"))
    ScheduleActionSettings.add_member(:scte_35_time_signal_settings, Shapes::ShapeRef.new(shape: Scte35TimeSignalScheduleActionSettings, location_name: "scte35TimeSignalSettings"))
    ScheduleActionSettings.add_member(:static_image_activate_settings, Shapes::ShapeRef.new(shape: StaticImageActivateScheduleActionSettings, location_name: "staticImageActivateSettings"))
    ScheduleActionSettings.add_member(:static_image_deactivate_settings, Shapes::ShapeRef.new(shape: StaticImageDeactivateScheduleActionSettings, location_name: "staticImageDeactivateSettings"))
    ScheduleActionSettings.add_member(:static_image_output_activate_settings, Shapes::ShapeRef.new(shape: StaticImageOutputActivateScheduleActionSettings, location_name: "staticImageOutputActivateSettings"))
    ScheduleActionSettings.add_member(:static_image_output_deactivate_settings, Shapes::ShapeRef.new(shape: StaticImageOutputDeactivateScheduleActionSettings, location_name: "staticImageOutputDeactivateSettings"))
    ScheduleActionSettings.add_member(:id_3_segment_tagging_settings, Shapes::ShapeRef.new(shape: Id3SegmentTaggingScheduleActionSettings, location_name: "id3SegmentTaggingSettings"))
    ScheduleActionSettings.add_member(:timed_metadata_settings, Shapes::ShapeRef.new(shape: TimedMetadataScheduleActionSettings, location_name: "timedMetadataSettings"))
    ScheduleActionSettings.struct_class = Types::ScheduleActionSettings

    ScheduleActionStartSettings.add_member(:fixed_mode_schedule_action_start_settings, Shapes::ShapeRef.new(shape: FixedModeScheduleActionStartSettings, location_name: "fixedModeScheduleActionStartSettings"))
    ScheduleActionStartSettings.add_member(:follow_mode_schedule_action_start_settings, Shapes::ShapeRef.new(shape: FollowModeScheduleActionStartSettings, location_name: "followModeScheduleActionStartSettings"))
    ScheduleActionStartSettings.add_member(:immediate_mode_schedule_action_start_settings, Shapes::ShapeRef.new(shape: ImmediateModeScheduleActionStartSettings, location_name: "immediateModeScheduleActionStartSettings"))
    ScheduleActionStartSettings.struct_class = Types::ScheduleActionStartSettings

    ScheduleDeleteResultModel.struct_class = Types::ScheduleDeleteResultModel

    ScheduleDescribeResultModel.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ScheduleDescribeResultModel.add_member(:schedule_actions, Shapes::ShapeRef.new(shape: __listOfScheduleAction, required: true, location_name: "scheduleActions"))
    ScheduleDescribeResultModel.struct_class = Types::ScheduleDescribeResultModel

    Scte20PlusEmbeddedDestinationSettings.struct_class = Types::Scte20PlusEmbeddedDestinationSettings

    Scte20SourceSettings.add_member(:convert_608_to_708, Shapes::ShapeRef.new(shape: Scte20Convert608To708, location_name: "convert608To708"))
    Scte20SourceSettings.add_member(:source_608_channel_number, Shapes::ShapeRef.new(shape: __integerMin1Max4, location_name: "source608ChannelNumber"))
    Scte20SourceSettings.struct_class = Types::Scte20SourceSettings

    Scte27DestinationSettings.struct_class = Types::Scte27DestinationSettings

    Scte27SourceSettings.add_member(:ocr_language, Shapes::ShapeRef.new(shape: Scte27OcrLanguage, location_name: "ocrLanguage"))
    Scte27SourceSettings.add_member(:pid, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "pid"))
    Scte27SourceSettings.struct_class = Types::Scte27SourceSettings

    Scte35DeliveryRestrictions.add_member(:archive_allowed_flag, Shapes::ShapeRef.new(shape: Scte35ArchiveAllowedFlag, required: true, location_name: "archiveAllowedFlag"))
    Scte35DeliveryRestrictions.add_member(:device_restrictions, Shapes::ShapeRef.new(shape: Scte35DeviceRestrictions, required: true, location_name: "deviceRestrictions"))
    Scte35DeliveryRestrictions.add_member(:no_regional_blackout_flag, Shapes::ShapeRef.new(shape: Scte35NoRegionalBlackoutFlag, required: true, location_name: "noRegionalBlackoutFlag"))
    Scte35DeliveryRestrictions.add_member(:web_delivery_allowed_flag, Shapes::ShapeRef.new(shape: Scte35WebDeliveryAllowedFlag, required: true, location_name: "webDeliveryAllowedFlag"))
    Scte35DeliveryRestrictions.struct_class = Types::Scte35DeliveryRestrictions

    Scte35Descriptor.add_member(:scte_35_descriptor_settings, Shapes::ShapeRef.new(shape: Scte35DescriptorSettings, required: true, location_name: "scte35DescriptorSettings"))
    Scte35Descriptor.struct_class = Types::Scte35Descriptor

    Scte35DescriptorSettings.add_member(:segmentation_descriptor_scte_35_descriptor_settings, Shapes::ShapeRef.new(shape: Scte35SegmentationDescriptor, required: true, location_name: "segmentationDescriptorScte35DescriptorSettings"))
    Scte35DescriptorSettings.struct_class = Types::Scte35DescriptorSettings

    Scte35InputScheduleActionSettings.add_member(:input_attachment_name_reference, Shapes::ShapeRef.new(shape: __string, location_name: "inputAttachmentNameReference"))
    Scte35InputScheduleActionSettings.add_member(:mode, Shapes::ShapeRef.new(shape: Scte35InputMode, required: true, location_name: "mode"))
    Scte35InputScheduleActionSettings.struct_class = Types::Scte35InputScheduleActionSettings

    Scte35ReturnToNetworkScheduleActionSettings.add_member(:splice_event_id, Shapes::ShapeRef.new(shape: __longMin0Max4294967295, required: true, location_name: "spliceEventId"))
    Scte35ReturnToNetworkScheduleActionSettings.struct_class = Types::Scte35ReturnToNetworkScheduleActionSettings

    Scte35SegmentationDescriptor.add_member(:delivery_restrictions, Shapes::ShapeRef.new(shape: Scte35DeliveryRestrictions, location_name: "deliveryRestrictions"))
    Scte35SegmentationDescriptor.add_member(:segment_num, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "segmentNum"))
    Scte35SegmentationDescriptor.add_member(:segmentation_cancel_indicator, Shapes::ShapeRef.new(shape: Scte35SegmentationCancelIndicator, required: true, location_name: "segmentationCancelIndicator"))
    Scte35SegmentationDescriptor.add_member(:segmentation_duration, Shapes::ShapeRef.new(shape: __longMin0Max1099511627775, location_name: "segmentationDuration"))
    Scte35SegmentationDescriptor.add_member(:segmentation_event_id, Shapes::ShapeRef.new(shape: __longMin0Max4294967295, required: true, location_name: "segmentationEventId"))
    Scte35SegmentationDescriptor.add_member(:segmentation_type_id, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "segmentationTypeId"))
    Scte35SegmentationDescriptor.add_member(:segmentation_upid, Shapes::ShapeRef.new(shape: __string, location_name: "segmentationUpid"))
    Scte35SegmentationDescriptor.add_member(:segmentation_upid_type, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "segmentationUpidType"))
    Scte35SegmentationDescriptor.add_member(:segments_expected, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "segmentsExpected"))
    Scte35SegmentationDescriptor.add_member(:sub_segment_num, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "subSegmentNum"))
    Scte35SegmentationDescriptor.add_member(:sub_segments_expected, Shapes::ShapeRef.new(shape: __integerMin0Max255, location_name: "subSegmentsExpected"))
    Scte35SegmentationDescriptor.struct_class = Types::Scte35SegmentationDescriptor

    Scte35SpliceInsert.add_member(:ad_avail_offset, Shapes::ShapeRef.new(shape: __integerMinNegative1000Max1000, location_name: "adAvailOffset"))
    Scte35SpliceInsert.add_member(:no_regional_blackout_flag, Shapes::ShapeRef.new(shape: Scte35SpliceInsertNoRegionalBlackoutBehavior, location_name: "noRegionalBlackoutFlag"))
    Scte35SpliceInsert.add_member(:web_delivery_allowed_flag, Shapes::ShapeRef.new(shape: Scte35SpliceInsertWebDeliveryAllowedBehavior, location_name: "webDeliveryAllowedFlag"))
    Scte35SpliceInsert.struct_class = Types::Scte35SpliceInsert

    Scte35SpliceInsertScheduleActionSettings.add_member(:duration, Shapes::ShapeRef.new(shape: __longMin0Max8589934591, location_name: "duration"))
    Scte35SpliceInsertScheduleActionSettings.add_member(:splice_event_id, Shapes::ShapeRef.new(shape: __longMin0Max4294967295, required: true, location_name: "spliceEventId"))
    Scte35SpliceInsertScheduleActionSettings.struct_class = Types::Scte35SpliceInsertScheduleActionSettings

    Scte35TimeSignalApos.add_member(:ad_avail_offset, Shapes::ShapeRef.new(shape: __integerMinNegative1000Max1000, location_name: "adAvailOffset"))
    Scte35TimeSignalApos.add_member(:no_regional_blackout_flag, Shapes::ShapeRef.new(shape: Scte35AposNoRegionalBlackoutBehavior, location_name: "noRegionalBlackoutFlag"))
    Scte35TimeSignalApos.add_member(:web_delivery_allowed_flag, Shapes::ShapeRef.new(shape: Scte35AposWebDeliveryAllowedBehavior, location_name: "webDeliveryAllowedFlag"))
    Scte35TimeSignalApos.struct_class = Types::Scte35TimeSignalApos

    Scte35TimeSignalScheduleActionSettings.add_member(:scte_35_descriptors, Shapes::ShapeRef.new(shape: __listOfScte35Descriptor, required: true, location_name: "scte35Descriptors"))
    Scte35TimeSignalScheduleActionSettings.struct_class = Types::Scte35TimeSignalScheduleActionSettings

    SdiSource.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    SdiSource.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    SdiSource.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputs"))
    SdiSource.add_member(:mode, Shapes::ShapeRef.new(shape: SdiSourceMode, location_name: "mode"))
    SdiSource.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    SdiSource.add_member(:state, Shapes::ShapeRef.new(shape: SdiSourceState, location_name: "state"))
    SdiSource.add_member(:type, Shapes::ShapeRef.new(shape: SdiSourceType, location_name: "type"))
    SdiSource.struct_class = Types::SdiSource

    SdiSourceMapping.add_member(:card_number, Shapes::ShapeRef.new(shape: __integer, location_name: "cardNumber"))
    SdiSourceMapping.add_member(:channel_number, Shapes::ShapeRef.new(shape: __integer, location_name: "channelNumber"))
    SdiSourceMapping.add_member(:sdi_source, Shapes::ShapeRef.new(shape: __string, location_name: "sdiSource"))
    SdiSourceMapping.struct_class = Types::SdiSourceMapping

    SdiSourceMappingUpdateRequest.add_member(:card_number, Shapes::ShapeRef.new(shape: __integer, location_name: "cardNumber"))
    SdiSourceMappingUpdateRequest.add_member(:channel_number, Shapes::ShapeRef.new(shape: __integer, location_name: "channelNumber"))
    SdiSourceMappingUpdateRequest.add_member(:sdi_source, Shapes::ShapeRef.new(shape: __string, location_name: "sdiSource"))
    SdiSourceMappingUpdateRequest.struct_class = Types::SdiSourceMappingUpdateRequest

    SdiSourceMappings.member = Shapes::ShapeRef.new(shape: SdiSourceMapping)

    SdiSourceMappingsUpdateRequest.member = Shapes::ShapeRef.new(shape: SdiSourceMappingUpdateRequest)

    SdiSourceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    SdiSourceSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    SdiSourceSummary.add_member(:inputs, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputs"))
    SdiSourceSummary.add_member(:mode, Shapes::ShapeRef.new(shape: SdiSourceMode, location_name: "mode"))
    SdiSourceSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    SdiSourceSummary.add_member(:state, Shapes::ShapeRef.new(shape: SdiSourceState, location_name: "state"))
    SdiSourceSummary.add_member(:type, Shapes::ShapeRef.new(shape: SdiSourceType, location_name: "type"))
    SdiSourceSummary.struct_class = Types::SdiSourceSummary

    SignalMapSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, required: true, location_name: "arn"))
    SignalMapSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    SignalMapSummary.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    SignalMapSummary.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    SignalMapSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    SignalMapSummary.add_member(:monitor_deployment_status, Shapes::ShapeRef.new(shape: SignalMapMonitorDeploymentStatus, required: true, location_name: "monitorDeploymentStatus"))
    SignalMapSummary.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    SignalMapSummary.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, required: true, location_name: "status"))
    SignalMapSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    SignalMapSummary.struct_class = Types::SignalMapSummary

    Smpte2110ReceiverGroup.add_member(:sdp_settings, Shapes::ShapeRef.new(shape: Smpte2110ReceiverGroupSdpSettings, location_name: "sdpSettings"))
    Smpte2110ReceiverGroup.struct_class = Types::Smpte2110ReceiverGroup

    Smpte2110ReceiverGroupSdpSettings.add_member(:ancillary_sdps, Shapes::ShapeRef.new(shape: __listOfInputSdpLocation, location_name: "ancillarySdps"))
    Smpte2110ReceiverGroupSdpSettings.add_member(:audio_sdps, Shapes::ShapeRef.new(shape: __listOfInputSdpLocation, location_name: "audioSdps"))
    Smpte2110ReceiverGroupSdpSettings.add_member(:video_sdp, Shapes::ShapeRef.new(shape: InputSdpLocation, location_name: "videoSdp"))
    Smpte2110ReceiverGroupSdpSettings.struct_class = Types::Smpte2110ReceiverGroupSdpSettings

    Smpte2110ReceiverGroupSettings.add_member(:smpte_2110_receiver_groups, Shapes::ShapeRef.new(shape: __listOfSmpte2110ReceiverGroup, location_name: "smpte2110ReceiverGroups"))
    Smpte2110ReceiverGroupSettings.struct_class = Types::Smpte2110ReceiverGroupSettings

    SmpteTtDestinationSettings.struct_class = Types::SmpteTtDestinationSettings

    SrtCallerDecryption.add_member(:algorithm, Shapes::ShapeRef.new(shape: Algorithm, location_name: "algorithm"))
    SrtCallerDecryption.add_member(:passphrase_secret_arn, Shapes::ShapeRef.new(shape: __string, location_name: "passphraseSecretArn"))
    SrtCallerDecryption.struct_class = Types::SrtCallerDecryption

    SrtCallerDecryptionRequest.add_member(:algorithm, Shapes::ShapeRef.new(shape: Algorithm, location_name: "algorithm"))
    SrtCallerDecryptionRequest.add_member(:passphrase_secret_arn, Shapes::ShapeRef.new(shape: __string, location_name: "passphraseSecretArn"))
    SrtCallerDecryptionRequest.struct_class = Types::SrtCallerDecryptionRequest

    SrtCallerSource.add_member(:decryption, Shapes::ShapeRef.new(shape: SrtCallerDecryption, location_name: "decryption"))
    SrtCallerSource.add_member(:minimum_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "minimumLatency"))
    SrtCallerSource.add_member(:srt_listener_address, Shapes::ShapeRef.new(shape: __string, location_name: "srtListenerAddress"))
    SrtCallerSource.add_member(:srt_listener_port, Shapes::ShapeRef.new(shape: __string, location_name: "srtListenerPort"))
    SrtCallerSource.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    SrtCallerSource.struct_class = Types::SrtCallerSource

    SrtCallerSourceRequest.add_member(:decryption, Shapes::ShapeRef.new(shape: SrtCallerDecryptionRequest, location_name: "decryption"))
    SrtCallerSourceRequest.add_member(:minimum_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "minimumLatency"))
    SrtCallerSourceRequest.add_member(:srt_listener_address, Shapes::ShapeRef.new(shape: __string, location_name: "srtListenerAddress"))
    SrtCallerSourceRequest.add_member(:srt_listener_port, Shapes::ShapeRef.new(shape: __string, location_name: "srtListenerPort"))
    SrtCallerSourceRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    SrtCallerSourceRequest.struct_class = Types::SrtCallerSourceRequest

    SrtGroupSettings.add_member(:input_loss_action, Shapes::ShapeRef.new(shape: InputLossActionForUdpOut, location_name: "inputLossAction"))
    SrtGroupSettings.struct_class = Types::SrtGroupSettings

    SrtOutputDestinationSettings.add_member(:encryption_passphrase_secret_arn, Shapes::ShapeRef.new(shape: __string, location_name: "encryptionPassphraseSecretArn"))
    SrtOutputDestinationSettings.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    SrtOutputDestinationSettings.add_member(:url, Shapes::ShapeRef.new(shape: __string, location_name: "url"))
    SrtOutputDestinationSettings.struct_class = Types::SrtOutputDestinationSettings

    SrtOutputSettings.add_member(:buffer_msec, Shapes::ShapeRef.new(shape: __integerMin0Max10000, location_name: "bufferMsec"))
    SrtOutputSettings.add_member(:container_settings, Shapes::ShapeRef.new(shape: UdpContainerSettings, required: true, location_name: "containerSettings"))
    SrtOutputSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    SrtOutputSettings.add_member(:encryption_type, Shapes::ShapeRef.new(shape: SrtEncryptionType, location_name: "encryptionType"))
    SrtOutputSettings.add_member(:latency, Shapes::ShapeRef.new(shape: __integerMin40Max16000, location_name: "latency"))
    SrtOutputSettings.struct_class = Types::SrtOutputSettings

    SrtSettings.add_member(:srt_caller_sources, Shapes::ShapeRef.new(shape: __listOfSrtCallerSource, location_name: "srtCallerSources"))
    SrtSettings.struct_class = Types::SrtSettings

    SrtSettingsRequest.add_member(:srt_caller_sources, Shapes::ShapeRef.new(shape: __listOfSrtCallerSourceRequest, location_name: "srtCallerSources"))
    SrtSettingsRequest.struct_class = Types::SrtSettingsRequest

    StandardHlsSettings.add_member(:audio_rendition_sets, Shapes::ShapeRef.new(shape: __string, location_name: "audioRenditionSets"))
    StandardHlsSettings.add_member(:m3u_8_settings, Shapes::ShapeRef.new(shape: M3u8Settings, required: true, location_name: "m3u8Settings"))
    StandardHlsSettings.struct_class = Types::StandardHlsSettings

    StartChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    StartChannelRequest.struct_class = Types::StartChannelRequest

    StartChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StartChannelResponse.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    StartChannelResponse.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    StartChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    StartChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    StartChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    StartChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    StartChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    StartChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    StartChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    StartChannelResponse.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "maintenance"))
    StartChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    StartChannelResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    StartChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    StartChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    StartChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    StartChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StartChannelResponse.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcOutputSettingsDescription, location_name: "vpc"))
    StartChannelResponse.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: DescribeAnywhereSettings, location_name: "anywhereSettings"))
    StartChannelResponse.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionResponse, location_name: "channelEngineVersion"))
    StartChannelResponse.struct_class = Types::StartChannelResponse

    StartDeleteMonitorDeploymentRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    StartDeleteMonitorDeploymentRequest.struct_class = Types::StartDeleteMonitorDeploymentRequest

    StartDeleteMonitorDeploymentResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, location_name: "arn"))
    StartDeleteMonitorDeploymentResponse.add_member(:cloud_watch_alarm_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "cloudWatchAlarmTemplateGroupIds"))
    StartDeleteMonitorDeploymentResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    StartDeleteMonitorDeploymentResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    StartDeleteMonitorDeploymentResponse.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "discoveryEntryPointArn"))
    StartDeleteMonitorDeploymentResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    StartDeleteMonitorDeploymentResponse.add_member(:event_bridge_rule_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "eventBridgeRuleTemplateGroupIds"))
    StartDeleteMonitorDeploymentResponse.add_member(:failed_media_resource_map, Shapes::ShapeRef.new(shape: FailedMediaResourceMap, location_name: "failedMediaResourceMap"))
    StartDeleteMonitorDeploymentResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    StartDeleteMonitorDeploymentResponse.add_member(:last_discovered_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastDiscoveredAt"))
    StartDeleteMonitorDeploymentResponse.add_member(:last_successful_monitor_deployment, Shapes::ShapeRef.new(shape: SuccessfulMonitorDeployment, location_name: "lastSuccessfulMonitorDeployment"))
    StartDeleteMonitorDeploymentResponse.add_member(:media_resource_map, Shapes::ShapeRef.new(shape: MediaResourceMap, location_name: "mediaResourceMap"))
    StartDeleteMonitorDeploymentResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    StartDeleteMonitorDeploymentResponse.add_member(:monitor_changes_pending_deployment, Shapes::ShapeRef.new(shape: __boolean, location_name: "monitorChangesPendingDeployment"))
    StartDeleteMonitorDeploymentResponse.add_member(:monitor_deployment, Shapes::ShapeRef.new(shape: MonitorDeployment, location_name: "monitorDeployment"))
    StartDeleteMonitorDeploymentResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    StartDeleteMonitorDeploymentResponse.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, location_name: "status"))
    StartDeleteMonitorDeploymentResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartDeleteMonitorDeploymentResponse.struct_class = Types::StartDeleteMonitorDeploymentResponse

    StartDeleteMonitorDeploymentResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, required: true, location_name: "arn"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:cloud_watch_alarm_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "cloudWatchAlarmTemplateGroupIds"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, required: true, location_name: "discoveryEntryPointArn"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:event_bridge_rule_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "eventBridgeRuleTemplateGroupIds"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:failed_media_resource_map, Shapes::ShapeRef.new(shape: FailedMediaResourceMap, location_name: "failedMediaResourceMap"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:last_discovered_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastDiscoveredAt"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:last_successful_monitor_deployment, Shapes::ShapeRef.new(shape: SuccessfulMonitorDeployment, location_name: "lastSuccessfulMonitorDeployment"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:media_resource_map, Shapes::ShapeRef.new(shape: MediaResourceMap, location_name: "mediaResourceMap"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:monitor_changes_pending_deployment, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "monitorChangesPendingDeployment"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:monitor_deployment, Shapes::ShapeRef.new(shape: MonitorDeployment, location_name: "monitorDeployment"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, required: true, location_name: "status"))
    StartDeleteMonitorDeploymentResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartDeleteMonitorDeploymentResponseContent.struct_class = Types::StartDeleteMonitorDeploymentResponseContent

    StartInputDeviceMaintenanceWindowRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    StartInputDeviceMaintenanceWindowRequest.struct_class = Types::StartInputDeviceMaintenanceWindowRequest

    StartInputDeviceMaintenanceWindowResponse.struct_class = Types::StartInputDeviceMaintenanceWindowResponse

    StartInputDeviceRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    StartInputDeviceRequest.struct_class = Types::StartInputDeviceRequest

    StartInputDeviceResponse.struct_class = Types::StartInputDeviceResponse

    StartMonitorDeploymentRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: __boolean, location_name: "dryRun"))
    StartMonitorDeploymentRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    StartMonitorDeploymentRequest.struct_class = Types::StartMonitorDeploymentRequest

    StartMonitorDeploymentRequestContent.add_member(:dry_run, Shapes::ShapeRef.new(shape: __boolean, location_name: "dryRun"))
    StartMonitorDeploymentRequestContent.struct_class = Types::StartMonitorDeploymentRequestContent

    StartMonitorDeploymentResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, location_name: "arn"))
    StartMonitorDeploymentResponse.add_member(:cloud_watch_alarm_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "cloudWatchAlarmTemplateGroupIds"))
    StartMonitorDeploymentResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    StartMonitorDeploymentResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    StartMonitorDeploymentResponse.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "discoveryEntryPointArn"))
    StartMonitorDeploymentResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    StartMonitorDeploymentResponse.add_member(:event_bridge_rule_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "eventBridgeRuleTemplateGroupIds"))
    StartMonitorDeploymentResponse.add_member(:failed_media_resource_map, Shapes::ShapeRef.new(shape: FailedMediaResourceMap, location_name: "failedMediaResourceMap"))
    StartMonitorDeploymentResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    StartMonitorDeploymentResponse.add_member(:last_discovered_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastDiscoveredAt"))
    StartMonitorDeploymentResponse.add_member(:last_successful_monitor_deployment, Shapes::ShapeRef.new(shape: SuccessfulMonitorDeployment, location_name: "lastSuccessfulMonitorDeployment"))
    StartMonitorDeploymentResponse.add_member(:media_resource_map, Shapes::ShapeRef.new(shape: MediaResourceMap, location_name: "mediaResourceMap"))
    StartMonitorDeploymentResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    StartMonitorDeploymentResponse.add_member(:monitor_changes_pending_deployment, Shapes::ShapeRef.new(shape: __boolean, location_name: "monitorChangesPendingDeployment"))
    StartMonitorDeploymentResponse.add_member(:monitor_deployment, Shapes::ShapeRef.new(shape: MonitorDeployment, location_name: "monitorDeployment"))
    StartMonitorDeploymentResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    StartMonitorDeploymentResponse.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, location_name: "status"))
    StartMonitorDeploymentResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartMonitorDeploymentResponse.struct_class = Types::StartMonitorDeploymentResponse

    StartMonitorDeploymentResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, required: true, location_name: "arn"))
    StartMonitorDeploymentResponseContent.add_member(:cloud_watch_alarm_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "cloudWatchAlarmTemplateGroupIds"))
    StartMonitorDeploymentResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    StartMonitorDeploymentResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    StartMonitorDeploymentResponseContent.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, required: true, location_name: "discoveryEntryPointArn"))
    StartMonitorDeploymentResponseContent.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    StartMonitorDeploymentResponseContent.add_member(:event_bridge_rule_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "eventBridgeRuleTemplateGroupIds"))
    StartMonitorDeploymentResponseContent.add_member(:failed_media_resource_map, Shapes::ShapeRef.new(shape: FailedMediaResourceMap, location_name: "failedMediaResourceMap"))
    StartMonitorDeploymentResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    StartMonitorDeploymentResponseContent.add_member(:last_discovered_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastDiscoveredAt"))
    StartMonitorDeploymentResponseContent.add_member(:last_successful_monitor_deployment, Shapes::ShapeRef.new(shape: SuccessfulMonitorDeployment, location_name: "lastSuccessfulMonitorDeployment"))
    StartMonitorDeploymentResponseContent.add_member(:media_resource_map, Shapes::ShapeRef.new(shape: MediaResourceMap, location_name: "mediaResourceMap"))
    StartMonitorDeploymentResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    StartMonitorDeploymentResponseContent.add_member(:monitor_changes_pending_deployment, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "monitorChangesPendingDeployment"))
    StartMonitorDeploymentResponseContent.add_member(:monitor_deployment, Shapes::ShapeRef.new(shape: MonitorDeployment, location_name: "monitorDeployment"))
    StartMonitorDeploymentResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    StartMonitorDeploymentResponseContent.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, required: true, location_name: "status"))
    StartMonitorDeploymentResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartMonitorDeploymentResponseContent.struct_class = Types::StartMonitorDeploymentResponseContent

    StartMultiplexRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    StartMultiplexRequest.struct_class = Types::StartMultiplexRequest

    StartMultiplexResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StartMultiplexResponse.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    StartMultiplexResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMultiplexOutputDestination, location_name: "destinations"))
    StartMultiplexResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    StartMultiplexResponse.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    StartMultiplexResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    StartMultiplexResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    StartMultiplexResponse.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    StartMultiplexResponse.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    StartMultiplexResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StartMultiplexResponse.struct_class = Types::StartMultiplexResponse

    StartTimecode.add_member(:timecode, Shapes::ShapeRef.new(shape: __string, location_name: "timecode"))
    StartTimecode.struct_class = Types::StartTimecode

    StartUpdateSignalMapRequest.add_member(:cloud_watch_alarm_template_group_identifiers, Shapes::ShapeRef.new(shape: __listOf__stringPatternS, location_name: "cloudWatchAlarmTemplateGroupIdentifiers"))
    StartUpdateSignalMapRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    StartUpdateSignalMapRequest.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "discoveryEntryPointArn"))
    StartUpdateSignalMapRequest.add_member(:event_bridge_rule_template_group_identifiers, Shapes::ShapeRef.new(shape: __listOf__stringPatternS, location_name: "eventBridgeRuleTemplateGroupIdentifiers"))
    StartUpdateSignalMapRequest.add_member(:force_rediscovery, Shapes::ShapeRef.new(shape: __boolean, location_name: "forceRediscovery"))
    StartUpdateSignalMapRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    StartUpdateSignalMapRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    StartUpdateSignalMapRequest.struct_class = Types::StartUpdateSignalMapRequest

    StartUpdateSignalMapRequestContent.add_member(:cloud_watch_alarm_template_group_identifiers, Shapes::ShapeRef.new(shape: __listOf__stringPatternS, location_name: "cloudWatchAlarmTemplateGroupIdentifiers"))
    StartUpdateSignalMapRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    StartUpdateSignalMapRequestContent.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "discoveryEntryPointArn"))
    StartUpdateSignalMapRequestContent.add_member(:event_bridge_rule_template_group_identifiers, Shapes::ShapeRef.new(shape: __listOf__stringPatternS, location_name: "eventBridgeRuleTemplateGroupIdentifiers"))
    StartUpdateSignalMapRequestContent.add_member(:force_rediscovery, Shapes::ShapeRef.new(shape: __boolean, location_name: "forceRediscovery"))
    StartUpdateSignalMapRequestContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    StartUpdateSignalMapRequestContent.struct_class = Types::StartUpdateSignalMapRequestContent

    StartUpdateSignalMapResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, location_name: "arn"))
    StartUpdateSignalMapResponse.add_member(:cloud_watch_alarm_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "cloudWatchAlarmTemplateGroupIds"))
    StartUpdateSignalMapResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    StartUpdateSignalMapResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    StartUpdateSignalMapResponse.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "discoveryEntryPointArn"))
    StartUpdateSignalMapResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    StartUpdateSignalMapResponse.add_member(:event_bridge_rule_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "eventBridgeRuleTemplateGroupIds"))
    StartUpdateSignalMapResponse.add_member(:failed_media_resource_map, Shapes::ShapeRef.new(shape: FailedMediaResourceMap, location_name: "failedMediaResourceMap"))
    StartUpdateSignalMapResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    StartUpdateSignalMapResponse.add_member(:last_discovered_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastDiscoveredAt"))
    StartUpdateSignalMapResponse.add_member(:last_successful_monitor_deployment, Shapes::ShapeRef.new(shape: SuccessfulMonitorDeployment, location_name: "lastSuccessfulMonitorDeployment"))
    StartUpdateSignalMapResponse.add_member(:media_resource_map, Shapes::ShapeRef.new(shape: MediaResourceMap, location_name: "mediaResourceMap"))
    StartUpdateSignalMapResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    StartUpdateSignalMapResponse.add_member(:monitor_changes_pending_deployment, Shapes::ShapeRef.new(shape: __boolean, location_name: "monitorChangesPendingDeployment"))
    StartUpdateSignalMapResponse.add_member(:monitor_deployment, Shapes::ShapeRef.new(shape: MonitorDeployment, location_name: "monitorDeployment"))
    StartUpdateSignalMapResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    StartUpdateSignalMapResponse.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, location_name: "status"))
    StartUpdateSignalMapResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartUpdateSignalMapResponse.struct_class = Types::StartUpdateSignalMapResponse

    StartUpdateSignalMapResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveSignalMap, required: true, location_name: "arn"))
    StartUpdateSignalMapResponseContent.add_member(:cloud_watch_alarm_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "cloudWatchAlarmTemplateGroupIds"))
    StartUpdateSignalMapResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    StartUpdateSignalMapResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    StartUpdateSignalMapResponseContent.add_member(:discovery_entry_point_arn, Shapes::ShapeRef.new(shape: __stringMin1Max2048, required: true, location_name: "discoveryEntryPointArn"))
    StartUpdateSignalMapResponseContent.add_member(:error_message, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "errorMessage"))
    StartUpdateSignalMapResponseContent.add_member(:event_bridge_rule_template_group_ids, Shapes::ShapeRef.new(shape: __listOf__stringMin7Max11PatternAws097, location_name: "eventBridgeRuleTemplateGroupIds"))
    StartUpdateSignalMapResponseContent.add_member(:failed_media_resource_map, Shapes::ShapeRef.new(shape: FailedMediaResourceMap, location_name: "failedMediaResourceMap"))
    StartUpdateSignalMapResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    StartUpdateSignalMapResponseContent.add_member(:last_discovered_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastDiscoveredAt"))
    StartUpdateSignalMapResponseContent.add_member(:last_successful_monitor_deployment, Shapes::ShapeRef.new(shape: SuccessfulMonitorDeployment, location_name: "lastSuccessfulMonitorDeployment"))
    StartUpdateSignalMapResponseContent.add_member(:media_resource_map, Shapes::ShapeRef.new(shape: MediaResourceMap, location_name: "mediaResourceMap"))
    StartUpdateSignalMapResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    StartUpdateSignalMapResponseContent.add_member(:monitor_changes_pending_deployment, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "monitorChangesPendingDeployment"))
    StartUpdateSignalMapResponseContent.add_member(:monitor_deployment, Shapes::ShapeRef.new(shape: MonitorDeployment, location_name: "monitorDeployment"))
    StartUpdateSignalMapResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    StartUpdateSignalMapResponseContent.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapStatus, required: true, location_name: "status"))
    StartUpdateSignalMapResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartUpdateSignalMapResponseContent.struct_class = Types::StartUpdateSignalMapResponseContent

    StaticImageActivateScheduleActionSettings.add_member(:duration, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "duration"))
    StaticImageActivateScheduleActionSettings.add_member(:fade_in, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "fadeIn"))
    StaticImageActivateScheduleActionSettings.add_member(:fade_out, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "fadeOut"))
    StaticImageActivateScheduleActionSettings.add_member(:height, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "height"))
    StaticImageActivateScheduleActionSettings.add_member(:image, Shapes::ShapeRef.new(shape: InputLocation, required: true, location_name: "image"))
    StaticImageActivateScheduleActionSettings.add_member(:image_x, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "imageX"))
    StaticImageActivateScheduleActionSettings.add_member(:image_y, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "imageY"))
    StaticImageActivateScheduleActionSettings.add_member(:layer, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "layer"))
    StaticImageActivateScheduleActionSettings.add_member(:opacity, Shapes::ShapeRef.new(shape: __integerMin0Max100, location_name: "opacity"))
    StaticImageActivateScheduleActionSettings.add_member(:width, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "width"))
    StaticImageActivateScheduleActionSettings.struct_class = Types::StaticImageActivateScheduleActionSettings

    StaticImageDeactivateScheduleActionSettings.add_member(:fade_out, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "fadeOut"))
    StaticImageDeactivateScheduleActionSettings.add_member(:layer, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "layer"))
    StaticImageDeactivateScheduleActionSettings.struct_class = Types::StaticImageDeactivateScheduleActionSettings

    StaticImageOutputActivateScheduleActionSettings.add_member(:duration, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "duration"))
    StaticImageOutputActivateScheduleActionSettings.add_member(:fade_in, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "fadeIn"))
    StaticImageOutputActivateScheduleActionSettings.add_member(:fade_out, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "fadeOut"))
    StaticImageOutputActivateScheduleActionSettings.add_member(:height, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "height"))
    StaticImageOutputActivateScheduleActionSettings.add_member(:image, Shapes::ShapeRef.new(shape: InputLocation, required: true, location_name: "image"))
    StaticImageOutputActivateScheduleActionSettings.add_member(:image_x, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "imageX"))
    StaticImageOutputActivateScheduleActionSettings.add_member(:image_y, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "imageY"))
    StaticImageOutputActivateScheduleActionSettings.add_member(:layer, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "layer"))
    StaticImageOutputActivateScheduleActionSettings.add_member(:opacity, Shapes::ShapeRef.new(shape: __integerMin0Max100, location_name: "opacity"))
    StaticImageOutputActivateScheduleActionSettings.add_member(:output_names, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "outputNames"))
    StaticImageOutputActivateScheduleActionSettings.add_member(:width, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "width"))
    StaticImageOutputActivateScheduleActionSettings.struct_class = Types::StaticImageOutputActivateScheduleActionSettings

    StaticImageOutputDeactivateScheduleActionSettings.add_member(:fade_out, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "fadeOut"))
    StaticImageOutputDeactivateScheduleActionSettings.add_member(:layer, Shapes::ShapeRef.new(shape: __integerMin0Max7, location_name: "layer"))
    StaticImageOutputDeactivateScheduleActionSettings.add_member(:output_names, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "outputNames"))
    StaticImageOutputDeactivateScheduleActionSettings.struct_class = Types::StaticImageOutputDeactivateScheduleActionSettings

    StaticKeySettings.add_member(:key_provider_server, Shapes::ShapeRef.new(shape: InputLocation, location_name: "keyProviderServer"))
    StaticKeySettings.add_member(:static_key_value, Shapes::ShapeRef.new(shape: __stringMin32Max32, required: true, location_name: "staticKeyValue"))
    StaticKeySettings.struct_class = Types::StaticKeySettings

    StopChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    StopChannelRequest.struct_class = Types::StopChannelRequest

    StopChannelResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StopChannelResponse.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    StopChannelResponse.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, location_name: "channelClass"))
    StopChannelResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    StopChannelResponse.add_member(:egress_endpoints, Shapes::ShapeRef.new(shape: __listOfChannelEgressEndpoint, location_name: "egressEndpoints"))
    StopChannelResponse.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    StopChannelResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    StopChannelResponse.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    StopChannelResponse.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    StopChannelResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    StopChannelResponse.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "maintenance"))
    StopChannelResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    StopChannelResponse.add_member(:pipeline_details, Shapes::ShapeRef.new(shape: __listOfPipelineDetail, location_name: "pipelineDetails"))
    StopChannelResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    StopChannelResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    StopChannelResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelState, location_name: "state"))
    StopChannelResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StopChannelResponse.add_member(:vpc, Shapes::ShapeRef.new(shape: VpcOutputSettingsDescription, location_name: "vpc"))
    StopChannelResponse.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: DescribeAnywhereSettings, location_name: "anywhereSettings"))
    StopChannelResponse.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionResponse, location_name: "channelEngineVersion"))
    StopChannelResponse.struct_class = Types::StopChannelResponse

    StopInputDeviceRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    StopInputDeviceRequest.struct_class = Types::StopInputDeviceRequest

    StopInputDeviceResponse.struct_class = Types::StopInputDeviceResponse

    StopMultiplexRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    StopMultiplexRequest.struct_class = Types::StopMultiplexRequest

    StopMultiplexResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    StopMultiplexResponse.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    StopMultiplexResponse.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfMultiplexOutputDestination, location_name: "destinations"))
    StopMultiplexResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    StopMultiplexResponse.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    StopMultiplexResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    StopMultiplexResponse.add_member(:pipelines_running_count, Shapes::ShapeRef.new(shape: __integer, location_name: "pipelinesRunningCount"))
    StopMultiplexResponse.add_member(:program_count, Shapes::ShapeRef.new(shape: __integer, location_name: "programCount"))
    StopMultiplexResponse.add_member(:state, Shapes::ShapeRef.new(shape: MultiplexState, location_name: "state"))
    StopMultiplexResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StopMultiplexResponse.struct_class = Types::StopMultiplexResponse

    StopTimecode.add_member(:last_frame_clipping_behavior, Shapes::ShapeRef.new(shape: LastFrameClippingBehavior, location_name: "lastFrameClippingBehavior"))
    StopTimecode.add_member(:timecode, Shapes::ShapeRef.new(shape: __string, location_name: "timecode"))
    StopTimecode.struct_class = Types::StopTimecode

    SuccessfulMonitorDeployment.add_member(:details_uri, Shapes::ShapeRef.new(shape: __stringMin1Max2048, required: true, location_name: "detailsUri"))
    SuccessfulMonitorDeployment.add_member(:status, Shapes::ShapeRef.new(shape: SignalMapMonitorDeploymentStatus, required: true, location_name: "status"))
    SuccessfulMonitorDeployment.struct_class = Types::SuccessfulMonitorDeployment

    TagMap.key = Shapes::ShapeRef.new(shape: __string)
    TagMap.value = Shapes::ShapeRef.new(shape: __string)

    Tags.key = Shapes::ShapeRef.new(shape: __string)
    Tags.value = Shapes::ShapeRef.new(shape: __string)

    TagsModel.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagsModel.struct_class = Types::TagsModel

    TeletextDestinationSettings.struct_class = Types::TeletextDestinationSettings

    TeletextSourceSettings.add_member(:output_rectangle, Shapes::ShapeRef.new(shape: CaptionRectangle, location_name: "outputRectangle"))
    TeletextSourceSettings.add_member(:page_number, Shapes::ShapeRef.new(shape: __string, location_name: "pageNumber"))
    TeletextSourceSettings.struct_class = Types::TeletextSourceSettings

    TemporalFilterSettings.add_member(:post_filter_sharpening, Shapes::ShapeRef.new(shape: TemporalFilterPostFilterSharpening, location_name: "postFilterSharpening"))
    TemporalFilterSettings.add_member(:strength, Shapes::ShapeRef.new(shape: TemporalFilterStrength, location_name: "strength"))
    TemporalFilterSettings.struct_class = Types::TemporalFilterSettings

    Thumbnail.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "body"))
    Thumbnail.add_member(:content_type, Shapes::ShapeRef.new(shape: __string, location_name: "contentType"))
    Thumbnail.add_member(:thumbnail_type, Shapes::ShapeRef.new(shape: ThumbnailType, location_name: "thumbnailType"))
    Thumbnail.add_member(:time_stamp, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "timeStamp"))
    Thumbnail.struct_class = Types::Thumbnail

    ThumbnailConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: ThumbnailState, required: true, location_name: "state"))
    ThumbnailConfiguration.struct_class = Types::ThumbnailConfiguration

    ThumbnailData.add_member(:body, Shapes::ShapeRef.new(shape: __string, location_name: "body"))
    ThumbnailData.struct_class = Types::ThumbnailData

    ThumbnailDetail.add_member(:pipeline_id, Shapes::ShapeRef.new(shape: __string, location_name: "pipelineId"))
    ThumbnailDetail.add_member(:thumbnails, Shapes::ShapeRef.new(shape: __listOfThumbnail, location_name: "thumbnails"))
    ThumbnailDetail.struct_class = Types::ThumbnailDetail

    ThumbnailNoData.struct_class = Types::ThumbnailNoData

    TimecodeBurninSettings.add_member(:font_size, Shapes::ShapeRef.new(shape: TimecodeBurninFontSize, required: true, location_name: "fontSize"))
    TimecodeBurninSettings.add_member(:position, Shapes::ShapeRef.new(shape: TimecodeBurninPosition, required: true, location_name: "position"))
    TimecodeBurninSettings.add_member(:prefix, Shapes::ShapeRef.new(shape: __stringMax255, location_name: "prefix"))
    TimecodeBurninSettings.struct_class = Types::TimecodeBurninSettings

    TimecodeConfig.add_member(:source, Shapes::ShapeRef.new(shape: TimecodeConfigSource, required: true, location_name: "source"))
    TimecodeConfig.add_member(:sync_threshold, Shapes::ShapeRef.new(shape: __integerMin1Max1000000, location_name: "syncThreshold"))
    TimecodeConfig.struct_class = Types::TimecodeConfig

    TimedMetadataScheduleActionSettings.add_member(:id_3, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "id3"))
    TimedMetadataScheduleActionSettings.struct_class = Types::TimedMetadataScheduleActionSettings

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TooManyRequestsExceptionResponseContent.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TooManyRequestsExceptionResponseContent.struct_class = Types::TooManyRequestsExceptionResponseContent

    TransferInputDevice.add_member(:target_customer_id, Shapes::ShapeRef.new(shape: __string, location_name: "targetCustomerId"))
    TransferInputDevice.add_member(:target_region, Shapes::ShapeRef.new(shape: __string, location_name: "targetRegion"))
    TransferInputDevice.add_member(:transfer_message, Shapes::ShapeRef.new(shape: __string, location_name: "transferMessage"))
    TransferInputDevice.struct_class = Types::TransferInputDevice

    TransferInputDeviceRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    TransferInputDeviceRequest.add_member(:target_customer_id, Shapes::ShapeRef.new(shape: __string, location_name: "targetCustomerId"))
    TransferInputDeviceRequest.add_member(:target_region, Shapes::ShapeRef.new(shape: __string, location_name: "targetRegion"))
    TransferInputDeviceRequest.add_member(:transfer_message, Shapes::ShapeRef.new(shape: __string, location_name: "transferMessage"))
    TransferInputDeviceRequest.struct_class = Types::TransferInputDeviceRequest

    TransferInputDeviceResponse.struct_class = Types::TransferInputDeviceResponse

    TransferringInputDeviceSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    TransferringInputDeviceSummary.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    TransferringInputDeviceSummary.add_member(:target_customer_id, Shapes::ShapeRef.new(shape: __string, location_name: "targetCustomerId"))
    TransferringInputDeviceSummary.add_member(:transfer_type, Shapes::ShapeRef.new(shape: InputDeviceTransferType, location_name: "transferType"))
    TransferringInputDeviceSummary.struct_class = Types::TransferringInputDeviceSummary

    TtmlDestinationSettings.add_member(:style_control, Shapes::ShapeRef.new(shape: TtmlDestinationStyleControl, location_name: "styleControl"))
    TtmlDestinationSettings.struct_class = Types::TtmlDestinationSettings

    UdpContainerSettings.add_member(:m2ts_settings, Shapes::ShapeRef.new(shape: M2tsSettings, location_name: "m2tsSettings"))
    UdpContainerSettings.struct_class = Types::UdpContainerSettings

    UdpGroupSettings.add_member(:input_loss_action, Shapes::ShapeRef.new(shape: InputLossActionForUdpOut, location_name: "inputLossAction"))
    UdpGroupSettings.add_member(:timed_metadata_id_3_frame, Shapes::ShapeRef.new(shape: UdpTimedMetadataId3Frame, location_name: "timedMetadataId3Frame"))
    UdpGroupSettings.add_member(:timed_metadata_id_3_period, Shapes::ShapeRef.new(shape: __integerMin0, location_name: "timedMetadataId3Period"))
    UdpGroupSettings.struct_class = Types::UdpGroupSettings

    UdpOutputSettings.add_member(:buffer_msec, Shapes::ShapeRef.new(shape: __integerMin0Max10000, location_name: "bufferMsec"))
    UdpOutputSettings.add_member(:container_settings, Shapes::ShapeRef.new(shape: UdpContainerSettings, required: true, location_name: "containerSettings"))
    UdpOutputSettings.add_member(:destination, Shapes::ShapeRef.new(shape: OutputLocationRef, required: true, location_name: "destination"))
    UdpOutputSettings.add_member(:fec_output_settings, Shapes::ShapeRef.new(shape: FecOutputSettings, location_name: "fecOutputSettings"))
    UdpOutputSettings.struct_class = Types::UdpOutputSettings

    UnprocessableEntityException.add_member(:element_path, Shapes::ShapeRef.new(shape: __string, location_name: "elementPath"))
    UnprocessableEntityException.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "errorMessage"))
    UnprocessableEntityException.struct_class = Types::UnprocessableEntityException

    UpdateAccountConfigurationRequest.add_member(:account_configuration, Shapes::ShapeRef.new(shape: AccountConfiguration, location_name: "accountConfiguration"))
    UpdateAccountConfigurationRequest.struct_class = Types::UpdateAccountConfigurationRequest

    UpdateAccountConfigurationRequestModel.add_member(:account_configuration, Shapes::ShapeRef.new(shape: AccountConfiguration, location_name: "accountConfiguration"))
    UpdateAccountConfigurationRequestModel.struct_class = Types::UpdateAccountConfigurationRequestModel

    UpdateAccountConfigurationResponse.add_member(:account_configuration, Shapes::ShapeRef.new(shape: AccountConfiguration, location_name: "accountConfiguration"))
    UpdateAccountConfigurationResponse.struct_class = Types::UpdateAccountConfigurationResponse

    UpdateAccountConfigurationResultModel.add_member(:account_configuration, Shapes::ShapeRef.new(shape: AccountConfiguration, location_name: "accountConfiguration"))
    UpdateAccountConfigurationResultModel.struct_class = Types::UpdateAccountConfigurationResultModel

    UpdateChannel.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    UpdateChannel.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    UpdateChannel.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    UpdateChannel.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    UpdateChannel.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    UpdateChannel.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    UpdateChannel.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceUpdateSettings, location_name: "maintenance"))
    UpdateChannel.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateChannel.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateChannel.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionRequest, location_name: "channelEngineVersion"))
    UpdateChannel.add_member(:dry_run, Shapes::ShapeRef.new(shape: __boolean, location_name: "dryRun"))
    UpdateChannel.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: AnywhereSettings, location_name: "anywhereSettings"))
    UpdateChannel.struct_class = Types::UpdateChannel

    UpdateChannelClass.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, required: true, location_name: "channelClass"))
    UpdateChannelClass.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    UpdateChannelClass.struct_class = Types::UpdateChannelClass

    UpdateChannelClassRequest.add_member(:channel_class, Shapes::ShapeRef.new(shape: ChannelClass, required: true, location_name: "channelClass"))
    UpdateChannelClassRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    UpdateChannelClassRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    UpdateChannelClassRequest.struct_class = Types::UpdateChannelClassRequest

    UpdateChannelClassResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    UpdateChannelClassResponse.struct_class = Types::UpdateChannelClassResponse

    UpdateChannelPlacementGroupRequest.add_member(:channel_placement_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelPlacementGroupId"))
    UpdateChannelPlacementGroupRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    UpdateChannelPlacementGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateChannelPlacementGroupRequest.add_member(:nodes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "nodes"))
    UpdateChannelPlacementGroupRequest.struct_class = Types::UpdateChannelPlacementGroupRequest

    UpdateChannelPlacementGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateChannelPlacementGroupResponse.add_member(:channels, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channels"))
    UpdateChannelPlacementGroupResponse.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    UpdateChannelPlacementGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateChannelPlacementGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateChannelPlacementGroupResponse.add_member(:nodes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "nodes"))
    UpdateChannelPlacementGroupResponse.add_member(:state, Shapes::ShapeRef.new(shape: ChannelPlacementGroupState, location_name: "state"))
    UpdateChannelPlacementGroupResponse.struct_class = Types::UpdateChannelPlacementGroupResponse

    UpdateChannelRequest.add_member(:cdi_input_specification, Shapes::ShapeRef.new(shape: CdiInputSpecification, location_name: "cdiInputSpecification"))
    UpdateChannelRequest.add_member(:channel_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "channelId"))
    UpdateChannelRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfOutputDestination, location_name: "destinations"))
    UpdateChannelRequest.add_member(:encoder_settings, Shapes::ShapeRef.new(shape: EncoderSettings, location_name: "encoderSettings"))
    UpdateChannelRequest.add_member(:input_attachments, Shapes::ShapeRef.new(shape: __listOfInputAttachment, location_name: "inputAttachments"))
    UpdateChannelRequest.add_member(:input_specification, Shapes::ShapeRef.new(shape: InputSpecification, location_name: "inputSpecification"))
    UpdateChannelRequest.add_member(:log_level, Shapes::ShapeRef.new(shape: LogLevel, location_name: "logLevel"))
    UpdateChannelRequest.add_member(:maintenance, Shapes::ShapeRef.new(shape: MaintenanceUpdateSettings, location_name: "maintenance"))
    UpdateChannelRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateChannelRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateChannelRequest.add_member(:channel_engine_version, Shapes::ShapeRef.new(shape: ChannelEngineVersionRequest, location_name: "channelEngineVersion"))
    UpdateChannelRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: __boolean, location_name: "dryRun"))
    UpdateChannelRequest.add_member(:anywhere_settings, Shapes::ShapeRef.new(shape: AnywhereSettings, location_name: "anywhereSettings"))
    UpdateChannelRequest.struct_class = Types::UpdateChannelRequest

    UpdateChannelResponse.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    UpdateChannelResponse.struct_class = Types::UpdateChannelResponse

    UpdateChannelResultModel.add_member(:channel, Shapes::ShapeRef.new(shape: Channel, location_name: "channel"))
    UpdateChannelResultModel.struct_class = Types::UpdateChannelResultModel

    UpdateCloudWatchAlarmTemplateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateCloudWatchAlarmTemplateGroupRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    UpdateCloudWatchAlarmTemplateGroupRequest.struct_class = Types::UpdateCloudWatchAlarmTemplateGroupRequest

    UpdateCloudWatchAlarmTemplateGroupRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateCloudWatchAlarmTemplateGroupRequestContent.struct_class = Types::UpdateCloudWatchAlarmTemplateGroupRequestContent

    UpdateCloudWatchAlarmTemplateGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplateGroup, location_name: "arn"))
    UpdateCloudWatchAlarmTemplateGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    UpdateCloudWatchAlarmTemplateGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateCloudWatchAlarmTemplateGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    UpdateCloudWatchAlarmTemplateGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    UpdateCloudWatchAlarmTemplateGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    UpdateCloudWatchAlarmTemplateGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateCloudWatchAlarmTemplateGroupResponse.struct_class = Types::UpdateCloudWatchAlarmTemplateGroupResponse

    UpdateCloudWatchAlarmTemplateGroupResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplateGroup, required: true, location_name: "arn"))
    UpdateCloudWatchAlarmTemplateGroupResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    UpdateCloudWatchAlarmTemplateGroupResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateCloudWatchAlarmTemplateGroupResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    UpdateCloudWatchAlarmTemplateGroupResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    UpdateCloudWatchAlarmTemplateGroupResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    UpdateCloudWatchAlarmTemplateGroupResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateCloudWatchAlarmTemplateGroupResponseContent.struct_class = Types::UpdateCloudWatchAlarmTemplateGroupResponseContent

    UpdateCloudWatchAlarmTemplateRequest.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, location_name: "comparisonOperator"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "evaluationPeriods"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: __stringPatternS, location_name: "groupIdentifier"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, location_name: "metricName"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, location_name: "period"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, location_name: "statistic"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, location_name: "targetResourceType"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, location_name: "threshold"))
    UpdateCloudWatchAlarmTemplateRequest.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, location_name: "treatMissingData"))
    UpdateCloudWatchAlarmTemplateRequest.struct_class = Types::UpdateCloudWatchAlarmTemplateRequest

    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, location_name: "comparisonOperator"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "evaluationPeriods"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:group_identifier, Shapes::ShapeRef.new(shape: __stringPatternS, location_name: "groupIdentifier"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, location_name: "metricName"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, location_name: "period"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, location_name: "statistic"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, location_name: "targetResourceType"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, location_name: "threshold"))
    UpdateCloudWatchAlarmTemplateRequestContent.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, location_name: "treatMissingData"))
    UpdateCloudWatchAlarmTemplateRequestContent.struct_class = Types::UpdateCloudWatchAlarmTemplateRequestContent

    UpdateCloudWatchAlarmTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplate, location_name: "arn"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, location_name: "comparisonOperator"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "evaluationPeriods"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "groupId"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, location_name: "metricName"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, location_name: "period"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, location_name: "statistic"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, location_name: "targetResourceType"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, location_name: "threshold"))
    UpdateCloudWatchAlarmTemplateResponse.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, location_name: "treatMissingData"))
    UpdateCloudWatchAlarmTemplateResponse.struct_class = Types::UpdateCloudWatchAlarmTemplateResponse

    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveCloudwatchAlarmTemplate, required: true, location_name: "arn"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateComparisonOperator, required: true, location_name: "comparisonOperator"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:datapoints_to_alarm, Shapes::ShapeRef.new(shape: __integerMin1, location_name: "datapointsToAlarm"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: __integerMin1, required: true, location_name: "evaluationPeriods"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "groupId"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:metric_name, Shapes::ShapeRef.new(shape: __stringMax64, required: true, location_name: "metricName"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:period, Shapes::ShapeRef.new(shape: __integerMin10Max86400, required: true, location_name: "period"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:statistic, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateStatistic, required: true, location_name: "statistic"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:target_resource_type, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTargetResourceType, required: true, location_name: "targetResourceType"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:threshold, Shapes::ShapeRef.new(shape: __double, required: true, location_name: "threshold"))
    UpdateCloudWatchAlarmTemplateResponseContent.add_member(:treat_missing_data, Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateTreatMissingData, required: true, location_name: "treatMissingData"))
    UpdateCloudWatchAlarmTemplateResponseContent.struct_class = Types::UpdateCloudWatchAlarmTemplateResponseContent

    UpdateClusterRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    UpdateClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateClusterRequest.add_member(:network_settings, Shapes::ShapeRef.new(shape: ClusterNetworkSettingsUpdateRequest, location_name: "networkSettings"))
    UpdateClusterRequest.struct_class = Types::UpdateClusterRequest

    UpdateClusterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateClusterResponse.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    UpdateClusterResponse.add_member(:cluster_type, Shapes::ShapeRef.new(shape: ClusterType, location_name: "clusterType"))
    UpdateClusterResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateClusterResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateClusterResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: ClusterNetworkSettings, location_name: "networkSettings"))
    UpdateClusterResponse.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    UpdateClusterResponse.struct_class = Types::UpdateClusterResponse

    UpdateClusterResult.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateClusterResult.add_member(:channel_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelIds"))
    UpdateClusterResult.add_member(:cluster_type, Shapes::ShapeRef.new(shape: ClusterType, location_name: "clusterType"))
    UpdateClusterResult.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateClusterResult.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateClusterResult.add_member(:network_settings, Shapes::ShapeRef.new(shape: ClusterNetworkSettings, location_name: "networkSettings"))
    UpdateClusterResult.add_member(:state, Shapes::ShapeRef.new(shape: ClusterState, location_name: "state"))
    UpdateClusterResult.struct_class = Types::UpdateClusterResult

    UpdateEventBridgeRuleTemplateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateEventBridgeRuleTemplateGroupRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    UpdateEventBridgeRuleTemplateGroupRequest.struct_class = Types::UpdateEventBridgeRuleTemplateGroupRequest

    UpdateEventBridgeRuleTemplateGroupRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateEventBridgeRuleTemplateGroupRequestContent.struct_class = Types::UpdateEventBridgeRuleTemplateGroupRequestContent

    UpdateEventBridgeRuleTemplateGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplateGroup, location_name: "arn"))
    UpdateEventBridgeRuleTemplateGroupResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    UpdateEventBridgeRuleTemplateGroupResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateEventBridgeRuleTemplateGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    UpdateEventBridgeRuleTemplateGroupResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    UpdateEventBridgeRuleTemplateGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    UpdateEventBridgeRuleTemplateGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateEventBridgeRuleTemplateGroupResponse.struct_class = Types::UpdateEventBridgeRuleTemplateGroupResponse

    UpdateEventBridgeRuleTemplateGroupResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplateGroup, required: true, location_name: "arn"))
    UpdateEventBridgeRuleTemplateGroupResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    UpdateEventBridgeRuleTemplateGroupResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateEventBridgeRuleTemplateGroupResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    UpdateEventBridgeRuleTemplateGroupResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    UpdateEventBridgeRuleTemplateGroupResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    UpdateEventBridgeRuleTemplateGroupResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateEventBridgeRuleTemplateGroupResponseContent.struct_class = Types::UpdateEventBridgeRuleTemplateGroupResponseContent

    UpdateEventBridgeRuleTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateEventBridgeRuleTemplateRequest.add_member(:event_targets, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateTarget, location_name: "eventTargets"))
    UpdateEventBridgeRuleTemplateRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, location_name: "eventType"))
    UpdateEventBridgeRuleTemplateRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: __stringPatternS, location_name: "groupIdentifier"))
    UpdateEventBridgeRuleTemplateRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "identifier"))
    UpdateEventBridgeRuleTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    UpdateEventBridgeRuleTemplateRequest.struct_class = Types::UpdateEventBridgeRuleTemplateRequest

    UpdateEventBridgeRuleTemplateRequestContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateEventBridgeRuleTemplateRequestContent.add_member(:event_targets, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateTarget, location_name: "eventTargets"))
    UpdateEventBridgeRuleTemplateRequestContent.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, location_name: "eventType"))
    UpdateEventBridgeRuleTemplateRequestContent.add_member(:group_identifier, Shapes::ShapeRef.new(shape: __stringPatternS, location_name: "groupIdentifier"))
    UpdateEventBridgeRuleTemplateRequestContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    UpdateEventBridgeRuleTemplateRequestContent.struct_class = Types::UpdateEventBridgeRuleTemplateRequestContent

    UpdateEventBridgeRuleTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplate, location_name: "arn"))
    UpdateEventBridgeRuleTemplateResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    UpdateEventBridgeRuleTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateEventBridgeRuleTemplateResponse.add_member(:event_targets, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateTarget, location_name: "eventTargets"))
    UpdateEventBridgeRuleTemplateResponse.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, location_name: "eventType"))
    UpdateEventBridgeRuleTemplateResponse.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "groupId"))
    UpdateEventBridgeRuleTemplateResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, location_name: "id"))
    UpdateEventBridgeRuleTemplateResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    UpdateEventBridgeRuleTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, location_name: "name"))
    UpdateEventBridgeRuleTemplateResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateEventBridgeRuleTemplateResponse.struct_class = Types::UpdateEventBridgeRuleTemplateResponse

    UpdateEventBridgeRuleTemplateResponseContent.add_member(:arn, Shapes::ShapeRef.new(shape: __stringPatternArnMedialiveEventbridgeRuleTemplate, required: true, location_name: "arn"))
    UpdateEventBridgeRuleTemplateResponseContent.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, required: true, location_name: "createdAt"))
    UpdateEventBridgeRuleTemplateResponseContent.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin0Max1024, location_name: "description"))
    UpdateEventBridgeRuleTemplateResponseContent.add_member(:event_targets, Shapes::ShapeRef.new(shape: __listOfEventBridgeRuleTemplateTarget, location_name: "eventTargets"))
    UpdateEventBridgeRuleTemplateResponseContent.add_member(:event_type, Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateEventType, required: true, location_name: "eventType"))
    UpdateEventBridgeRuleTemplateResponseContent.add_member(:group_id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "groupId"))
    UpdateEventBridgeRuleTemplateResponseContent.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097, required: true, location_name: "id"))
    UpdateEventBridgeRuleTemplateResponseContent.add_member(:modified_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "modifiedAt"))
    UpdateEventBridgeRuleTemplateResponseContent.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max255PatternS, required: true, location_name: "name"))
    UpdateEventBridgeRuleTemplateResponseContent.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateEventBridgeRuleTemplateResponseContent.struct_class = Types::UpdateEventBridgeRuleTemplateResponseContent

    UpdateInput.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    UpdateInput.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceRequest, location_name: "inputDevices"))
    UpdateInput.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    UpdateInput.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlowRequest, location_name: "mediaConnectFlows"))
    UpdateInput.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateInput.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    UpdateInput.add_member(:srt_settings, Shapes::ShapeRef.new(shape: SrtSettingsRequest, location_name: "srtSettings"))
    UpdateInput.add_member(:multicast_settings, Shapes::ShapeRef.new(shape: MulticastSettingsUpdateRequest, location_name: "multicastSettings"))
    UpdateInput.add_member(:smpte_2110_receiver_group_settings, Shapes::ShapeRef.new(shape: Smpte2110ReceiverGroupSettings, location_name: "smpte2110ReceiverGroupSettings"))
    UpdateInput.add_member(:sdi_sources, Shapes::ShapeRef.new(shape: InputSdiSources, location_name: "sdiSources"))
    UpdateInput.struct_class = Types::UpdateInput

    UpdateInputDevice.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceConfigurableSettings, location_name: "hdDeviceSettings"))
    UpdateInputDevice.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInputDevice.add_member(:uhd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceConfigurableSettings, location_name: "uhdDeviceSettings"))
    UpdateInputDevice.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    UpdateInputDevice.struct_class = Types::UpdateInputDevice

    UpdateInputDeviceRequest.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceConfigurableSettings, location_name: "hdDeviceSettings"))
    UpdateInputDeviceRequest.add_member(:input_device_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputDeviceId"))
    UpdateInputDeviceRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInputDeviceRequest.add_member(:uhd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceConfigurableSettings, location_name: "uhdDeviceSettings"))
    UpdateInputDeviceRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    UpdateInputDeviceRequest.struct_class = Types::UpdateInputDeviceRequest

    UpdateInputDeviceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateInputDeviceResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: InputDeviceConnectionState, location_name: "connectionState"))
    UpdateInputDeviceResponse.add_member(:device_settings_sync_state, Shapes::ShapeRef.new(shape: DeviceSettingsSyncState, location_name: "deviceSettingsSyncState"))
    UpdateInputDeviceResponse.add_member(:device_update_status, Shapes::ShapeRef.new(shape: DeviceUpdateStatus, location_name: "deviceUpdateStatus"))
    UpdateInputDeviceResponse.add_member(:hd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceHdSettings, location_name: "hdDeviceSettings"))
    UpdateInputDeviceResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateInputDeviceResponse.add_member(:mac_address, Shapes::ShapeRef.new(shape: __string, location_name: "macAddress"))
    UpdateInputDeviceResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInputDeviceResponse.add_member(:network_settings, Shapes::ShapeRef.new(shape: InputDeviceNetworkSettings, location_name: "networkSettings"))
    UpdateInputDeviceResponse.add_member(:serial_number, Shapes::ShapeRef.new(shape: __string, location_name: "serialNumber"))
    UpdateInputDeviceResponse.add_member(:type, Shapes::ShapeRef.new(shape: InputDeviceType, location_name: "type"))
    UpdateInputDeviceResponse.add_member(:uhd_device_settings, Shapes::ShapeRef.new(shape: InputDeviceUhdSettings, location_name: "uhdDeviceSettings"))
    UpdateInputDeviceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateInputDeviceResponse.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    UpdateInputDeviceResponse.add_member(:medialive_input_arns, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "medialiveInputArns"))
    UpdateInputDeviceResponse.add_member(:output_type, Shapes::ShapeRef.new(shape: InputDeviceOutputType, location_name: "outputType"))
    UpdateInputDeviceResponse.struct_class = Types::UpdateInputDeviceResponse

    UpdateInputRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: __listOfInputDestinationRequest, location_name: "destinations"))
    UpdateInputRequest.add_member(:input_devices, Shapes::ShapeRef.new(shape: __listOfInputDeviceRequest, location_name: "inputDevices"))
    UpdateInputRequest.add_member(:input_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputId"))
    UpdateInputRequest.add_member(:input_security_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "inputSecurityGroups"))
    UpdateInputRequest.add_member(:media_connect_flows, Shapes::ShapeRef.new(shape: __listOfMediaConnectFlowRequest, location_name: "mediaConnectFlows"))
    UpdateInputRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateInputRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateInputRequest.add_member(:sources, Shapes::ShapeRef.new(shape: __listOfInputSourceRequest, location_name: "sources"))
    UpdateInputRequest.add_member(:srt_settings, Shapes::ShapeRef.new(shape: SrtSettingsRequest, location_name: "srtSettings"))
    UpdateInputRequest.add_member(:multicast_settings, Shapes::ShapeRef.new(shape: MulticastSettingsUpdateRequest, location_name: "multicastSettings"))
    UpdateInputRequest.add_member(:smpte_2110_receiver_group_settings, Shapes::ShapeRef.new(shape: Smpte2110ReceiverGroupSettings, location_name: "smpte2110ReceiverGroupSettings"))
    UpdateInputRequest.add_member(:sdi_sources, Shapes::ShapeRef.new(shape: InputSdiSources, location_name: "sdiSources"))
    UpdateInputRequest.struct_class = Types::UpdateInputRequest

    UpdateInputResponse.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    UpdateInputResponse.struct_class = Types::UpdateInputResponse

    UpdateInputResultModel.add_member(:input, Shapes::ShapeRef.new(shape: Input, location_name: "input"))
    UpdateInputResultModel.struct_class = Types::UpdateInputResultModel

    UpdateInputSecurityGroupRequest.add_member(:input_security_group_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "inputSecurityGroupId"))
    UpdateInputSecurityGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, deprecated: true, location_name: "tags", metadata: {"deprecatedMessage" => "This API is deprecated. You must use UpdateTagsForResource instead.", "deprecatedSince" => "2024-11-20"}))
    UpdateInputSecurityGroupRequest.add_member(:whitelist_rules, Shapes::ShapeRef.new(shape: __listOfInputWhitelistRuleCidr, location_name: "whitelistRules"))
    UpdateInputSecurityGroupRequest.struct_class = Types::UpdateInputSecurityGroupRequest

    UpdateInputSecurityGroupResponse.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    UpdateInputSecurityGroupResponse.struct_class = Types::UpdateInputSecurityGroupResponse

    UpdateInputSecurityGroupResultModel.add_member(:security_group, Shapes::ShapeRef.new(shape: InputSecurityGroup, location_name: "securityGroup"))
    UpdateInputSecurityGroupResultModel.struct_class = Types::UpdateInputSecurityGroupResultModel

    UpdateMultiplex.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    UpdateMultiplex.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateMultiplex.add_member(:packet_identifiers_mapping, Shapes::ShapeRef.new(shape: MultiplexPacketIdentifiersMapping, location_name: "packetIdentifiersMapping"))
    UpdateMultiplex.struct_class = Types::UpdateMultiplex

    UpdateMultiplexProgram.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, location_name: "multiplexProgramSettings"))
    UpdateMultiplexProgram.struct_class = Types::UpdateMultiplexProgram

    UpdateMultiplexProgramRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    UpdateMultiplexProgramRequest.add_member(:multiplex_program_settings, Shapes::ShapeRef.new(shape: MultiplexProgramSettings, location_name: "multiplexProgramSettings"))
    UpdateMultiplexProgramRequest.add_member(:program_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "programName"))
    UpdateMultiplexProgramRequest.struct_class = Types::UpdateMultiplexProgramRequest

    UpdateMultiplexProgramResponse.add_member(:multiplex_program, Shapes::ShapeRef.new(shape: MultiplexProgram, location_name: "multiplexProgram"))
    UpdateMultiplexProgramResponse.struct_class = Types::UpdateMultiplexProgramResponse

    UpdateMultiplexProgramResultModel.add_member(:multiplex_program, Shapes::ShapeRef.new(shape: MultiplexProgram, location_name: "multiplexProgram"))
    UpdateMultiplexProgramResultModel.struct_class = Types::UpdateMultiplexProgramResultModel

    UpdateMultiplexRequest.add_member(:multiplex_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "multiplexId"))
    UpdateMultiplexRequest.add_member(:multiplex_settings, Shapes::ShapeRef.new(shape: MultiplexSettings, location_name: "multiplexSettings"))
    UpdateMultiplexRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateMultiplexRequest.add_member(:packet_identifiers_mapping, Shapes::ShapeRef.new(shape: MultiplexPacketIdentifiersMapping, location_name: "packetIdentifiersMapping"))
    UpdateMultiplexRequest.struct_class = Types::UpdateMultiplexRequest

    UpdateMultiplexResponse.add_member(:multiplex, Shapes::ShapeRef.new(shape: Multiplex, location_name: "multiplex"))
    UpdateMultiplexResponse.struct_class = Types::UpdateMultiplexResponse

    UpdateMultiplexResultModel.add_member(:multiplex, Shapes::ShapeRef.new(shape: Multiplex, location_name: "multiplex"))
    UpdateMultiplexResultModel.struct_class = Types::UpdateMultiplexResultModel

    UpdateNetworkRequest.add_member(:ip_pools, Shapes::ShapeRef.new(shape: __listOfIpPoolUpdateRequest, location_name: "ipPools"))
    UpdateNetworkRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateNetworkRequest.add_member(:network_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "networkId"))
    UpdateNetworkRequest.add_member(:routes, Shapes::ShapeRef.new(shape: __listOfRouteUpdateRequest, location_name: "routes"))
    UpdateNetworkRequest.struct_class = Types::UpdateNetworkRequest

    UpdateNetworkResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateNetworkResponse.add_member(:associated_cluster_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "associatedClusterIds"))
    UpdateNetworkResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateNetworkResponse.add_member(:ip_pools, Shapes::ShapeRef.new(shape: __listOfIpPool, location_name: "ipPools"))
    UpdateNetworkResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateNetworkResponse.add_member(:routes, Shapes::ShapeRef.new(shape: __listOfRoute, location_name: "routes"))
    UpdateNetworkResponse.add_member(:state, Shapes::ShapeRef.new(shape: NetworkState, location_name: "state"))
    UpdateNetworkResponse.struct_class = Types::UpdateNetworkResponse

    UpdateNetworkResult.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateNetworkResult.add_member(:associated_cluster_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "associatedClusterIds"))
    UpdateNetworkResult.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateNetworkResult.add_member(:ip_pools, Shapes::ShapeRef.new(shape: __listOfIpPool, location_name: "ipPools"))
    UpdateNetworkResult.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateNetworkResult.add_member(:routes, Shapes::ShapeRef.new(shape: __listOfRoute, location_name: "routes"))
    UpdateNetworkResult.add_member(:state, Shapes::ShapeRef.new(shape: NetworkState, location_name: "state"))
    UpdateNetworkResult.struct_class = Types::UpdateNetworkResult

    UpdateNodeRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    UpdateNodeRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateNodeRequest.add_member(:node_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "nodeId"))
    UpdateNodeRequest.add_member(:role, Shapes::ShapeRef.new(shape: NodeRole, location_name: "role"))
    UpdateNodeRequest.add_member(:sdi_source_mappings, Shapes::ShapeRef.new(shape: SdiSourceMappingsUpdateRequest, location_name: "sdiSourceMappings"))
    UpdateNodeRequest.struct_class = Types::UpdateNodeRequest

    UpdateNodeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateNodeResponse.add_member(:channel_placement_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelPlacementGroups"))
    UpdateNodeResponse.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    UpdateNodeResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: NodeConnectionState, location_name: "connectionState"))
    UpdateNodeResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateNodeResponse.add_member(:instance_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceArn"))
    UpdateNodeResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateNodeResponse.add_member(:node_interface_mappings, Shapes::ShapeRef.new(shape: __listOfNodeInterfaceMapping, location_name: "nodeInterfaceMappings"))
    UpdateNodeResponse.add_member(:role, Shapes::ShapeRef.new(shape: NodeRole, location_name: "role"))
    UpdateNodeResponse.add_member(:state, Shapes::ShapeRef.new(shape: NodeState, location_name: "state"))
    UpdateNodeResponse.add_member(:sdi_source_mappings, Shapes::ShapeRef.new(shape: SdiSourceMappings, location_name: "sdiSourceMappings"))
    UpdateNodeResponse.struct_class = Types::UpdateNodeResponse

    UpdateNodeStateRequest.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "clusterId"))
    UpdateNodeStateRequest.add_member(:node_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "nodeId"))
    UpdateNodeStateRequest.add_member(:state, Shapes::ShapeRef.new(shape: UpdateNodeState, location_name: "state"))
    UpdateNodeStateRequest.struct_class = Types::UpdateNodeStateRequest

    UpdateNodeStateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateNodeStateResponse.add_member(:channel_placement_groups, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "channelPlacementGroups"))
    UpdateNodeStateResponse.add_member(:cluster_id, Shapes::ShapeRef.new(shape: __string, location_name: "clusterId"))
    UpdateNodeStateResponse.add_member(:connection_state, Shapes::ShapeRef.new(shape: NodeConnectionState, location_name: "connectionState"))
    UpdateNodeStateResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateNodeStateResponse.add_member(:instance_arn, Shapes::ShapeRef.new(shape: __string, location_name: "instanceArn"))
    UpdateNodeStateResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateNodeStateResponse.add_member(:node_interface_mappings, Shapes::ShapeRef.new(shape: __listOfNodeInterfaceMapping, location_name: "nodeInterfaceMappings"))
    UpdateNodeStateResponse.add_member(:role, Shapes::ShapeRef.new(shape: NodeRole, location_name: "role"))
    UpdateNodeStateResponse.add_member(:state, Shapes::ShapeRef.new(shape: NodeState, location_name: "state"))
    UpdateNodeStateResponse.add_member(:sdi_source_mappings, Shapes::ShapeRef.new(shape: SdiSourceMappings, location_name: "sdiSourceMappings"))
    UpdateNodeStateResponse.struct_class = Types::UpdateNodeStateResponse

    UpdateReservation.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateReservation.add_member(:renewal_settings, Shapes::ShapeRef.new(shape: RenewalSettings, location_name: "renewalSettings"))
    UpdateReservation.struct_class = Types::UpdateReservation

    UpdateReservationRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateReservationRequest.add_member(:renewal_settings, Shapes::ShapeRef.new(shape: RenewalSettings, location_name: "renewalSettings"))
    UpdateReservationRequest.add_member(:reservation_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "reservationId"))
    UpdateReservationRequest.struct_class = Types::UpdateReservationRequest

    UpdateReservationResponse.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    UpdateReservationResponse.struct_class = Types::UpdateReservationResponse

    UpdateReservationResultModel.add_member(:reservation, Shapes::ShapeRef.new(shape: Reservation, location_name: "reservation"))
    UpdateReservationResultModel.struct_class = Types::UpdateReservationResultModel

    UpdateSdiSourceRequest.add_member(:mode, Shapes::ShapeRef.new(shape: SdiSourceMode, location_name: "mode"))
    UpdateSdiSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateSdiSourceRequest.add_member(:sdi_source_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sdiSourceId"))
    UpdateSdiSourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: SdiSourceType, location_name: "type"))
    UpdateSdiSourceRequest.struct_class = Types::UpdateSdiSourceRequest

    UpdateSdiSourceResponse.add_member(:sdi_source, Shapes::ShapeRef.new(shape: SdiSource, location_name: "sdiSource"))
    UpdateSdiSourceResponse.struct_class = Types::UpdateSdiSourceResponse

    ValidationError.add_member(:element_path, Shapes::ShapeRef.new(shape: __string, location_name: "elementPath"))
    ValidationError.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "errorMessage"))
    ValidationError.struct_class = Types::ValidationError

    VideoBlackFailoverSettings.add_member(:black_detect_threshold, Shapes::ShapeRef.new(shape: __doubleMin0Max1, location_name: "blackDetectThreshold"))
    VideoBlackFailoverSettings.add_member(:video_black_threshold_msec, Shapes::ShapeRef.new(shape: __integerMin1000, location_name: "videoBlackThresholdMsec"))
    VideoBlackFailoverSettings.struct_class = Types::VideoBlackFailoverSettings

    VideoCodecSettings.add_member(:frame_capture_settings, Shapes::ShapeRef.new(shape: FrameCaptureSettings, location_name: "frameCaptureSettings"))
    VideoCodecSettings.add_member(:h264_settings, Shapes::ShapeRef.new(shape: H264Settings, location_name: "h264Settings"))
    VideoCodecSettings.add_member(:h265_settings, Shapes::ShapeRef.new(shape: H265Settings, location_name: "h265Settings"))
    VideoCodecSettings.add_member(:mpeg_2_settings, Shapes::ShapeRef.new(shape: Mpeg2Settings, location_name: "mpeg2Settings"))
    VideoCodecSettings.add_member(:av_1_settings, Shapes::ShapeRef.new(shape: Av1Settings, location_name: "av1Settings"))
    VideoCodecSettings.struct_class = Types::VideoCodecSettings

    VideoDescription.add_member(:codec_settings, Shapes::ShapeRef.new(shape: VideoCodecSettings, location_name: "codecSettings"))
    VideoDescription.add_member(:height, Shapes::ShapeRef.new(shape: __integer, location_name: "height"))
    VideoDescription.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    VideoDescription.add_member(:respond_to_afd, Shapes::ShapeRef.new(shape: VideoDescriptionRespondToAfd, location_name: "respondToAfd"))
    VideoDescription.add_member(:scaling_behavior, Shapes::ShapeRef.new(shape: VideoDescriptionScalingBehavior, location_name: "scalingBehavior"))
    VideoDescription.add_member(:sharpness, Shapes::ShapeRef.new(shape: __integerMin0Max100, location_name: "sharpness"))
    VideoDescription.add_member(:width, Shapes::ShapeRef.new(shape: __integer, location_name: "width"))
    VideoDescription.struct_class = Types::VideoDescription

    VideoSelector.add_member(:color_space, Shapes::ShapeRef.new(shape: VideoSelectorColorSpace, location_name: "colorSpace"))
    VideoSelector.add_member(:color_space_settings, Shapes::ShapeRef.new(shape: VideoSelectorColorSpaceSettings, location_name: "colorSpaceSettings"))
    VideoSelector.add_member(:color_space_usage, Shapes::ShapeRef.new(shape: VideoSelectorColorSpaceUsage, location_name: "colorSpaceUsage"))
    VideoSelector.add_member(:selector_settings, Shapes::ShapeRef.new(shape: VideoSelectorSettings, location_name: "selectorSettings"))
    VideoSelector.struct_class = Types::VideoSelector

    VideoSelectorColorSpaceSettings.add_member(:hdr_10_settings, Shapes::ShapeRef.new(shape: Hdr10Settings, location_name: "hdr10Settings"))
    VideoSelectorColorSpaceSettings.struct_class = Types::VideoSelectorColorSpaceSettings

    VideoSelectorPid.add_member(:pid, Shapes::ShapeRef.new(shape: __integerMin0Max8191, location_name: "pid"))
    VideoSelectorPid.struct_class = Types::VideoSelectorPid

    VideoSelectorProgramId.add_member(:program_id, Shapes::ShapeRef.new(shape: __integerMin0Max65536, location_name: "programId"))
    VideoSelectorProgramId.struct_class = Types::VideoSelectorProgramId

    VideoSelectorSettings.add_member(:video_selector_pid, Shapes::ShapeRef.new(shape: VideoSelectorPid, location_name: "videoSelectorPid"))
    VideoSelectorSettings.add_member(:video_selector_program_id, Shapes::ShapeRef.new(shape: VideoSelectorProgramId, location_name: "videoSelectorProgramId"))
    VideoSelectorSettings.struct_class = Types::VideoSelectorSettings

    VpcOutputSettings.add_member(:public_address_allocation_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "publicAddressAllocationIds"))
    VpcOutputSettings.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroupIds"))
    VpcOutputSettings.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "subnetIds"))
    VpcOutputSettings.struct_class = Types::VpcOutputSettings

    VpcOutputSettingsDescription.add_member(:availability_zones, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "availabilityZones"))
    VpcOutputSettingsDescription.add_member(:network_interface_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "networkInterfaceIds"))
    VpcOutputSettingsDescription.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "securityGroupIds"))
    VpcOutputSettingsDescription.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "subnetIds"))
    VpcOutputSettingsDescription.struct_class = Types::VpcOutputSettingsDescription

    WavSettings.add_member(:bit_depth, Shapes::ShapeRef.new(shape: __double, location_name: "bitDepth"))
    WavSettings.add_member(:coding_mode, Shapes::ShapeRef.new(shape: WavCodingMode, location_name: "codingMode"))
    WavSettings.add_member(:sample_rate, Shapes::ShapeRef.new(shape: __double, location_name: "sampleRate"))
    WavSettings.struct_class = Types::WavSettings

    WebvttDestinationSettings.add_member(:style_control, Shapes::ShapeRef.new(shape: WebvttDestinationStyleControl, location_name: "styleControl"))
    WebvttDestinationSettings.struct_class = Types::WebvttDestinationSettings

    __listOfAudioChannelMapping.member = Shapes::ShapeRef.new(shape: AudioChannelMapping)

    __listOfAudioDescription.member = Shapes::ShapeRef.new(shape: AudioDescription)

    __listOfAudioSelector.member = Shapes::ShapeRef.new(shape: AudioSelector)

    __listOfAudioTrack.member = Shapes::ShapeRef.new(shape: AudioTrack)

    __listOfBatchFailedResultModel.member = Shapes::ShapeRef.new(shape: BatchFailedResultModel)

    __listOfBatchSuccessfulResultModel.member = Shapes::ShapeRef.new(shape: BatchSuccessfulResultModel)

    __listOfCaptionDescription.member = Shapes::ShapeRef.new(shape: CaptionDescription)

    __listOfCaptionLanguageMapping.member = Shapes::ShapeRef.new(shape: CaptionLanguageMapping)

    __listOfCaptionSelector.member = Shapes::ShapeRef.new(shape: CaptionSelector)

    __listOfChannelEgressEndpoint.member = Shapes::ShapeRef.new(shape: ChannelEgressEndpoint)

    __listOfChannelEngineVersionResponse.member = Shapes::ShapeRef.new(shape: ChannelEngineVersionResponse)

    __listOfChannelPipelineIdToRestart.member = Shapes::ShapeRef.new(shape: ChannelPipelineIdToRestart)

    __listOfChannelSummary.member = Shapes::ShapeRef.new(shape: ChannelSummary)

    __listOfCloudWatchAlarmTemplateGroupSummary.member = Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateGroupSummary)

    __listOfCloudWatchAlarmTemplateSummary.member = Shapes::ShapeRef.new(shape: CloudWatchAlarmTemplateSummary)

    __listOfCmafIngestCaptionLanguageMapping.member = Shapes::ShapeRef.new(shape: CmafIngestCaptionLanguageMapping)

    __listOfColorCorrection.member = Shapes::ShapeRef.new(shape: ColorCorrection)

    __listOfDashRoleAudio.member = Shapes::ShapeRef.new(shape: DashRoleAudio)

    __listOfDashRoleCaption.member = Shapes::ShapeRef.new(shape: DashRoleCaption)

    __listOfDescribeChannelPlacementGroupSummary.member = Shapes::ShapeRef.new(shape: DescribeChannelPlacementGroupSummary)

    __listOfDescribeClusterSummary.member = Shapes::ShapeRef.new(shape: DescribeClusterSummary)

    __listOfDescribeNetworkSummary.member = Shapes::ShapeRef.new(shape: DescribeNetworkSummary)

    __listOfDescribeNodeSummary.member = Shapes::ShapeRef.new(shape: DescribeNodeSummary)

    __listOfEventBridgeRuleTemplateGroupSummary.member = Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateGroupSummary)

    __listOfEventBridgeRuleTemplateSummary.member = Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateSummary)

    __listOfEventBridgeRuleTemplateTarget.member = Shapes::ShapeRef.new(shape: EventBridgeRuleTemplateTarget)

    __listOfFailoverCondition.member = Shapes::ShapeRef.new(shape: FailoverCondition)

    __listOfHlsAdMarkers.member = Shapes::ShapeRef.new(shape: HlsAdMarkers)

    __listOfInput.member = Shapes::ShapeRef.new(shape: Input)

    __listOfInputAttachment.member = Shapes::ShapeRef.new(shape: InputAttachment)

    __listOfInputChannelLevel.member = Shapes::ShapeRef.new(shape: InputChannelLevel)

    __listOfInputDestination.member = Shapes::ShapeRef.new(shape: InputDestination)

    __listOfInputDestinationRequest.member = Shapes::ShapeRef.new(shape: InputDestinationRequest)

    __listOfInputDestinationRoute.member = Shapes::ShapeRef.new(shape: InputDestinationRoute)

    __listOfInputDeviceConfigurableAudioChannelPairConfig.member = Shapes::ShapeRef.new(shape: InputDeviceConfigurableAudioChannelPairConfig)

    __listOfInputDeviceRequest.member = Shapes::ShapeRef.new(shape: InputDeviceRequest)

    __listOfInputDeviceSettings.member = Shapes::ShapeRef.new(shape: InputDeviceSettings)

    __listOfInputDeviceSummary.member = Shapes::ShapeRef.new(shape: InputDeviceSummary)

    __listOfInputDeviceUhdAudioChannelPairConfig.member = Shapes::ShapeRef.new(shape: InputDeviceUhdAudioChannelPairConfig)

    __listOfInputRequestDestinationRoute.member = Shapes::ShapeRef.new(shape: InputRequestDestinationRoute)

    __listOfInputSdpLocation.member = Shapes::ShapeRef.new(shape: InputSdpLocation)

    __listOfInputSecurityGroup.member = Shapes::ShapeRef.new(shape: InputSecurityGroup)

    __listOfInputSource.member = Shapes::ShapeRef.new(shape: InputSource)

    __listOfInputSourceRequest.member = Shapes::ShapeRef.new(shape: InputSourceRequest)

    __listOfInputWhitelistRule.member = Shapes::ShapeRef.new(shape: InputWhitelistRule)

    __listOfInputWhitelistRuleCidr.member = Shapes::ShapeRef.new(shape: InputWhitelistRuleCidr)

    __listOfInterfaceMapping.member = Shapes::ShapeRef.new(shape: InterfaceMapping)

    __listOfInterfaceMappingCreateRequest.member = Shapes::ShapeRef.new(shape: InterfaceMappingCreateRequest)

    __listOfInterfaceMappingUpdateRequest.member = Shapes::ShapeRef.new(shape: InterfaceMappingUpdateRequest)

    __listOfIpPool.member = Shapes::ShapeRef.new(shape: IpPool)

    __listOfIpPoolCreateRequest.member = Shapes::ShapeRef.new(shape: IpPoolCreateRequest)

    __listOfIpPoolUpdateRequest.member = Shapes::ShapeRef.new(shape: IpPoolUpdateRequest)

    __listOfMediaConnectFlow.member = Shapes::ShapeRef.new(shape: MediaConnectFlow)

    __listOfMediaConnectFlowRequest.member = Shapes::ShapeRef.new(shape: MediaConnectFlowRequest)

    __listOfMediaPackageOutputDestinationSettings.member = Shapes::ShapeRef.new(shape: MediaPackageOutputDestinationSettings)

    __listOfMediaResourceNeighbor.member = Shapes::ShapeRef.new(shape: MediaResourceNeighbor)

    __listOfMulticastSource.member = Shapes::ShapeRef.new(shape: MulticastSource)

    __listOfMulticastSourceCreateRequest.member = Shapes::ShapeRef.new(shape: MulticastSourceCreateRequest)

    __listOfMulticastSourceUpdateRequest.member = Shapes::ShapeRef.new(shape: MulticastSourceUpdateRequest)

    __listOfMultiplexOutputDestination.member = Shapes::ShapeRef.new(shape: MultiplexOutputDestination)

    __listOfMultiplexProgramPipelineDetail.member = Shapes::ShapeRef.new(shape: MultiplexProgramPipelineDetail)

    __listOfMultiplexProgramSummary.member = Shapes::ShapeRef.new(shape: MultiplexProgramSummary)

    __listOfMultiplexSummary.member = Shapes::ShapeRef.new(shape: MultiplexSummary)

    __listOfNodeInterfaceMapping.member = Shapes::ShapeRef.new(shape: NodeInterfaceMapping)

    __listOfNodeInterfaceMappingCreateRequest.member = Shapes::ShapeRef.new(shape: NodeInterfaceMappingCreateRequest)

    __listOfOffering.member = Shapes::ShapeRef.new(shape: Offering)

    __listOfOutput.member = Shapes::ShapeRef.new(shape: Output)

    __listOfOutputDestination.member = Shapes::ShapeRef.new(shape: OutputDestination)

    __listOfOutputDestinationSettings.member = Shapes::ShapeRef.new(shape: OutputDestinationSettings)

    __listOfOutputGroup.member = Shapes::ShapeRef.new(shape: OutputGroup)

    __listOfPipelineDetail.member = Shapes::ShapeRef.new(shape: PipelineDetail)

    __listOfPipelinePauseStateSettings.member = Shapes::ShapeRef.new(shape: PipelinePauseStateSettings)

    __listOfReservation.member = Shapes::ShapeRef.new(shape: Reservation)

    __listOfRoute.member = Shapes::ShapeRef.new(shape: Route)

    __listOfRouteCreateRequest.member = Shapes::ShapeRef.new(shape: RouteCreateRequest)

    __listOfRouteUpdateRequest.member = Shapes::ShapeRef.new(shape: RouteUpdateRequest)

    __listOfRtmpAdMarkers.member = Shapes::ShapeRef.new(shape: RtmpAdMarkers)

    __listOfScheduleAction.member = Shapes::ShapeRef.new(shape: ScheduleAction)

    __listOfScte35Descriptor.member = Shapes::ShapeRef.new(shape: Scte35Descriptor)

    __listOfSdiSourceSummary.member = Shapes::ShapeRef.new(shape: SdiSourceSummary)

    __listOfSignalMapSummary.member = Shapes::ShapeRef.new(shape: SignalMapSummary)

    __listOfSmpte2110ReceiverGroup.member = Shapes::ShapeRef.new(shape: Smpte2110ReceiverGroup)

    __listOfSrtCallerSource.member = Shapes::ShapeRef.new(shape: SrtCallerSource)

    __listOfSrtCallerSourceRequest.member = Shapes::ShapeRef.new(shape: SrtCallerSourceRequest)

    __listOfSrtOutputDestinationSettings.member = Shapes::ShapeRef.new(shape: SrtOutputDestinationSettings)

    __listOfThumbnail.member = Shapes::ShapeRef.new(shape: Thumbnail)

    __listOfThumbnailDetail.member = Shapes::ShapeRef.new(shape: ThumbnailDetail)

    __listOfTransferringInputDeviceSummary.member = Shapes::ShapeRef.new(shape: TransferringInputDeviceSummary)

    __listOfValidationError.member = Shapes::ShapeRef.new(shape: ValidationError)

    __listOfVideoDescription.member = Shapes::ShapeRef.new(shape: VideoDescription)

    __listOf__integer.member = Shapes::ShapeRef.new(shape: __integer)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)

    __listOf__stringMin7Max11PatternAws097.member = Shapes::ShapeRef.new(shape: __stringMin7Max11PatternAws097)

    __listOf__stringPatternS.member = Shapes::ShapeRef.new(shape: __stringPatternS)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-14"

      api.metadata = {
        "apiVersion" => "2017-10-14",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "medialive",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "MediaLive",
        "serviceFullName" => "AWS Elemental MediaLive",
        "serviceId" => "MediaLive",
        "signatureVersion" => "v4",
        "signingName" => "medialive",
        "uid" => "medialive-2017-10-14",
      }

      api.add_operation(:accept_input_device_transfer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInputDeviceTransfer"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/accept"
        o.input = Shapes::ShapeRef.new(shape: AcceptInputDeviceTransferRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptInputDeviceTransferResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:batch_delete, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDelete"
        o.http_method = "POST"
        o.http_request_uri = "/prod/batch/delete"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:batch_start, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchStart"
        o.http_method = "POST"
        o.http_request_uri = "/prod/batch/start"
        o.input = Shapes::ShapeRef.new(shape: BatchStartRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchStartResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:batch_stop, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchStop"
        o.http_method = "POST"
        o.http_request_uri = "/prod/batch/stop"
        o.input = Shapes::ShapeRef.new(shape: BatchStopRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchStopResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:batch_update_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateSchedule"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/channels/{channelId}/schedule"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:cancel_input_device_transfer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelInputDeviceTransfer"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelInputDeviceTransferRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelInputDeviceTransferResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:claim_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ClaimDevice"
        o.http_method = "POST"
        o.http_request_uri = "/prod/claimDevice"
        o.input = Shapes::ShapeRef.new(shape: ClaimDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: ClaimDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/prod/channels"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInput"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputs"
        o.input = Shapes::ShapeRef.new(shape: CreateInputRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_input_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInputSecurityGroup"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputSecurityGroups"
        o.input = Shapes::ShapeRef.new(shape: CreateInputSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInputSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMultiplex"
        o.http_method = "POST"
        o.http_request_uri = "/prod/multiplexes"
        o.input = Shapes::ShapeRef.new(shape: CreateMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_multiplex_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMultiplexProgram"
        o.http_method = "POST"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/programs"
        o.input = Shapes::ShapeRef.new(shape: CreateMultiplexProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMultiplexProgramResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_partner_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePartnerInput"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputs/{inputId}/partners"
        o.input = Shapes::ShapeRef.new(shape: CreatePartnerInputRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePartnerInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTags"
        o.http_method = "POST"
        o.http_request_uri = "/prod/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: CreateTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:delete_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannel"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/channels/{channelId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInput"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/inputs/{inputId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInputRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_input_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInputSecurityGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/inputSecurityGroups/{inputSecurityGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInputSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInputSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMultiplex"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_multiplex_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMultiplexProgram"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/programs/{programName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMultiplexProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMultiplexProgramResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReservation"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/reservations/{reservationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteReservationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReservationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSchedule"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/channels/{channelId}/schedule"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTags"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:describe_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/prod/accountConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannel"
        o.http_method = "GET"
        o.http_request_uri = "/prod/channels/{channelId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInput"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputs/{inputId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInputRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_input_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInputDevice"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInputDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInputDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_input_device_thumbnail, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInputDeviceThumbnail"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/thumbnailData"
        o.input = Shapes::ShapeRef.new(shape: DescribeInputDeviceThumbnailRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInputDeviceThumbnailResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_input_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInputSecurityGroup"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputSecurityGroups/{inputSecurityGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeInputSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInputSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMultiplex"
        o.http_method = "GET"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_multiplex_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMultiplexProgram"
        o.http_method = "GET"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/programs/{programName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeMultiplexProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMultiplexProgramResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOffering"
        o.http_method = "GET"
        o.http_request_uri = "/prod/offerings/{offeringId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservation"
        o.http_method = "GET"
        o.http_request_uri = "/prod/reservations/{reservationId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSchedule"
        o.http_method = "GET"
        o.http_request_uri = "/prod/channels/{channelId}/schedule"
        o.input = Shapes::ShapeRef.new(shape: DescribeScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_thumbnails, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeThumbnails"
        o.http_method = "GET"
        o.http_request_uri = "/prod/channels/{channelId}/thumbnails"
        o.input = Shapes::ShapeRef.new(shape: DescribeThumbnailsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeThumbnailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "GET"
        o.http_request_uri = "/prod/channels"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_input_device_transfers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputDeviceTransfers"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputDeviceTransfers"
        o.input = Shapes::ShapeRef.new(shape: ListInputDeviceTransfersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputDeviceTransfersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_input_devices, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputDevices"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputDevices"
        o.input = Shapes::ShapeRef.new(shape: ListInputDevicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputDevicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_input_security_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputSecurityGroups"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputSecurityGroups"
        o.input = Shapes::ShapeRef.new(shape: ListInputSecurityGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputSecurityGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_inputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputs"
        o.http_method = "GET"
        o.http_request_uri = "/prod/inputs"
        o.input = Shapes::ShapeRef.new(shape: ListInputsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_multiplex_programs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMultiplexPrograms"
        o.http_method = "GET"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/programs"
        o.input = Shapes::ShapeRef.new(shape: ListMultiplexProgramsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMultiplexProgramsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_multiplexes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMultiplexes"
        o.http_method = "GET"
        o.http_request_uri = "/prod/multiplexes"
        o.input = Shapes::ShapeRef.new(shape: ListMultiplexesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMultiplexesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOfferings"
        o.http_method = "GET"
        o.http_request_uri = "/prod/offerings"
        o.input = Shapes::ShapeRef.new(shape: ListOfferingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOfferingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_reservations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReservations"
        o.http_method = "GET"
        o.http_request_uri = "/prod/reservations"
        o.input = Shapes::ShapeRef.new(shape: ListReservationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReservationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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
        o.http_request_uri = "/prod/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:purchase_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurchaseOffering"
        o.http_method = "POST"
        o.http_request_uri = "/prod/offerings/{offeringId}/purchase"
        o.input = Shapes::ShapeRef.new(shape: PurchaseOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: PurchaseOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:reboot_input_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootInputDevice"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/reboot"
        o.input = Shapes::ShapeRef.new(shape: RebootInputDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: RebootInputDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:reject_input_device_transfer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectInputDeviceTransfer"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/reject"
        o.input = Shapes::ShapeRef.new(shape: RejectInputDeviceTransferRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectInputDeviceTransferResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartChannel"
        o.http_method = "POST"
        o.http_request_uri = "/prod/channels/{channelId}/start"
        o.input = Shapes::ShapeRef.new(shape: StartChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: StartChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_input_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartInputDevice"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/start"
        o.input = Shapes::ShapeRef.new(shape: StartInputDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: StartInputDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_input_device_maintenance_window, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartInputDeviceMaintenanceWindow"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/startInputDeviceMaintenanceWindow"
        o.input = Shapes::ShapeRef.new(shape: StartInputDeviceMaintenanceWindowRequest)
        o.output = Shapes::ShapeRef.new(shape: StartInputDeviceMaintenanceWindowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMultiplex"
        o.http_method = "POST"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/start"
        o.input = Shapes::ShapeRef.new(shape: StartMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopChannel"
        o.http_method = "POST"
        o.http_request_uri = "/prod/channels/{channelId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: StopChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_input_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopInputDevice"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopInputDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: StopInputDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopMultiplex"
        o.http_method = "POST"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: StopMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:transfer_input_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TransferInputDevice"
        o.http_method = "POST"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}/transfer"
        o.input = Shapes::ShapeRef.new(shape: TransferInputDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: TransferInputDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_account_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/accountConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannel"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/channels/{channelId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_channel_class, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelClass"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/channels/{channelId}/channelClass"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelClassRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelClassResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_input, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInput"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/inputs/{inputId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_input_device, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInputDevice"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/inputDevices/{inputDeviceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInputDeviceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInputDeviceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_input_security_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInputSecurityGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/inputSecurityGroups/{inputSecurityGroupId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateInputSecurityGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInputSecurityGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_multiplex, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMultiplex"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMultiplexRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMultiplexResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_multiplex_program, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMultiplexProgram"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/multiplexes/{multiplexId}/programs/{programName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMultiplexProgramRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMultiplexProgramResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_reservation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReservation"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/reservations/{reservationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateReservationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateReservationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:restart_channel_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestartChannelPipelines"
        o.http_method = "POST"
        o.http_request_uri = "/prod/channels/{channelId}/restartChannelPipelines"
        o.input = Shapes::ShapeRef.new(shape: RestartChannelPipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: RestartChannelPipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_cloud_watch_alarm_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCloudWatchAlarmTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/prod/cloudwatch-alarm-templates"
        o.input = Shapes::ShapeRef.new(shape: CreateCloudWatchAlarmTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCloudWatchAlarmTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_cloud_watch_alarm_template_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCloudWatchAlarmTemplateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/prod/cloudwatch-alarm-template-groups"
        o.input = Shapes::ShapeRef.new(shape: CreateCloudWatchAlarmTemplateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCloudWatchAlarmTemplateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_event_bridge_rule_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventBridgeRuleTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/prod/eventbridge-rule-templates"
        o.input = Shapes::ShapeRef.new(shape: CreateEventBridgeRuleTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventBridgeRuleTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_event_bridge_rule_template_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventBridgeRuleTemplateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/prod/eventbridge-rule-template-groups"
        o.input = Shapes::ShapeRef.new(shape: CreateEventBridgeRuleTemplateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventBridgeRuleTemplateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_signal_map, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSignalMap"
        o.http_method = "POST"
        o.http_request_uri = "/prod/signal-maps"
        o.input = Shapes::ShapeRef.new(shape: CreateSignalMapRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSignalMapResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_cloud_watch_alarm_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCloudWatchAlarmTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/cloudwatch-alarm-templates/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCloudWatchAlarmTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_cloud_watch_alarm_template_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCloudWatchAlarmTemplateGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/cloudwatch-alarm-template-groups/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCloudWatchAlarmTemplateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_event_bridge_rule_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventBridgeRuleTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/eventbridge-rule-templates/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventBridgeRuleTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_event_bridge_rule_template_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventBridgeRuleTemplateGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/eventbridge-rule-template-groups/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventBridgeRuleTemplateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_signal_map, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSignalMap"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/signal-maps/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSignalMapRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_cloud_watch_alarm_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudWatchAlarmTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/prod/cloudwatch-alarm-templates/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCloudWatchAlarmTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCloudWatchAlarmTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_cloud_watch_alarm_template_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCloudWatchAlarmTemplateGroup"
        o.http_method = "GET"
        o.http_request_uri = "/prod/cloudwatch-alarm-template-groups/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetCloudWatchAlarmTemplateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCloudWatchAlarmTemplateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_event_bridge_rule_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventBridgeRuleTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/prod/eventbridge-rule-templates/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetEventBridgeRuleTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventBridgeRuleTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_event_bridge_rule_template_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventBridgeRuleTemplateGroup"
        o.http_method = "GET"
        o.http_request_uri = "/prod/eventbridge-rule-template-groups/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetEventBridgeRuleTemplateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventBridgeRuleTemplateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:get_signal_map, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSignalMap"
        o.http_method = "GET"
        o.http_request_uri = "/prod/signal-maps/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: GetSignalMapRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSignalMapResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
      end)

      api.add_operation(:list_cloud_watch_alarm_template_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCloudWatchAlarmTemplateGroups"
        o.http_method = "GET"
        o.http_request_uri = "/prod/cloudwatch-alarm-template-groups"
        o.input = Shapes::ShapeRef.new(shape: ListCloudWatchAlarmTemplateGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCloudWatchAlarmTemplateGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cloud_watch_alarm_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCloudWatchAlarmTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/prod/cloudwatch-alarm-templates"
        o.input = Shapes::ShapeRef.new(shape: ListCloudWatchAlarmTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCloudWatchAlarmTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_bridge_rule_template_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventBridgeRuleTemplateGroups"
        o.http_method = "GET"
        o.http_request_uri = "/prod/eventbridge-rule-template-groups"
        o.input = Shapes::ShapeRef.new(shape: ListEventBridgeRuleTemplateGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventBridgeRuleTemplateGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_bridge_rule_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventBridgeRuleTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/prod/eventbridge-rule-templates"
        o.input = Shapes::ShapeRef.new(shape: ListEventBridgeRuleTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventBridgeRuleTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_signal_maps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSignalMaps"
        o.http_method = "GET"
        o.http_request_uri = "/prod/signal-maps"
        o.input = Shapes::ShapeRef.new(shape: ListSignalMapsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSignalMapsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_delete_monitor_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDeleteMonitorDeployment"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/signal-maps/{identifier}/monitor-deployment"
        o.input = Shapes::ShapeRef.new(shape: StartDeleteMonitorDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDeleteMonitorDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_monitor_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMonitorDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/prod/signal-maps/{identifier}/monitor-deployment"
        o.input = Shapes::ShapeRef.new(shape: StartMonitorDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMonitorDeploymentResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_update_signal_map, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartUpdateSignalMap"
        o.http_method = "PATCH"
        o.http_request_uri = "/prod/signal-maps/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: StartUpdateSignalMapRequest)
        o.output = Shapes::ShapeRef.new(shape: StartUpdateSignalMapResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_cloud_watch_alarm_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCloudWatchAlarmTemplate"
        o.http_method = "PATCH"
        o.http_request_uri = "/prod/cloudwatch-alarm-templates/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCloudWatchAlarmTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCloudWatchAlarmTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_cloud_watch_alarm_template_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCloudWatchAlarmTemplateGroup"
        o.http_method = "PATCH"
        o.http_request_uri = "/prod/cloudwatch-alarm-template-groups/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCloudWatchAlarmTemplateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCloudWatchAlarmTemplateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_event_bridge_rule_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventBridgeRuleTemplate"
        o.http_method = "PATCH"
        o.http_request_uri = "/prod/eventbridge-rule-templates/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventBridgeRuleTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventBridgeRuleTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_event_bridge_rule_template_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventBridgeRuleTemplateGroup"
        o.http_method = "PATCH"
        o.http_request_uri = "/prod/eventbridge-rule-template-groups/{identifier}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventBridgeRuleTemplateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventBridgeRuleTemplateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_channel_placement_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateChannelPlacementGroup"
        o.http_method = "POST"
        o.http_request_uri = "/prod/clusters/{clusterId}/channelplacementgroups"
        o.input = Shapes::ShapeRef.new(shape: CreateChannelPlacementGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateChannelPlacementGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/prod/clusters"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNetwork"
        o.http_method = "POST"
        o.http_request_uri = "/prod/networks"
        o.input = Shapes::ShapeRef.new(shape: CreateNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNode"
        o.http_method = "POST"
        o.http_request_uri = "/prod/clusters/{clusterId}/nodes"
        o.input = Shapes::ShapeRef.new(shape: CreateNodeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_node_registration_script, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNodeRegistrationScript"
        o.http_method = "POST"
        o.http_request_uri = "/prod/clusters/{clusterId}/nodeRegistrationScript"
        o.input = Shapes::ShapeRef.new(shape: CreateNodeRegistrationScriptRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNodeRegistrationScriptResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_channel_placement_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteChannelPlacementGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/clusters/{clusterId}/channelplacementgroups/{channelPlacementGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteChannelPlacementGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteChannelPlacementGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/clusters/{clusterId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNetwork"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/networks/{networkId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNode"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/clusters/{clusterId}/nodes/{nodeId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNodeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_channel_placement_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeChannelPlacementGroup"
        o.http_method = "GET"
        o.http_request_uri = "/prod/clusters/{clusterId}/channelplacementgroups/{channelPlacementGroupId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeChannelPlacementGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeChannelPlacementGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCluster"
        o.http_method = "GET"
        o.http_request_uri = "/prod/clusters/{clusterId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNetwork"
        o.http_method = "GET"
        o.http_request_uri = "/prod/networks/{networkId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNode"
        o.http_method = "GET"
        o.http_request_uri = "/prod/clusters/{clusterId}/nodes/{nodeId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeNodeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_channel_placement_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannelPlacementGroups"
        o.http_method = "GET"
        o.http_request_uri = "/prod/clusters/{clusterId}/channelplacementgroups"
        o.input = Shapes::ShapeRef.new(shape: ListChannelPlacementGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelPlacementGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "GET"
        o.http_request_uri = "/prod/clusters"
        o.input = Shapes::ShapeRef.new(shape: ListClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_networks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNetworks"
        o.http_method = "GET"
        o.http_request_uri = "/prod/networks"
        o.input = Shapes::ShapeRef.new(shape: ListNetworksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNetworksResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNodes"
        o.http_method = "GET"
        o.http_request_uri = "/prod/clusters/{clusterId}/nodes"
        o.input = Shapes::ShapeRef.new(shape: ListNodesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNodesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_channel_placement_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateChannelPlacementGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/clusters/{clusterId}/channelplacementgroups/{channelPlacementGroupId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateChannelPlacementGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateChannelPlacementGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCluster"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/clusters/{clusterId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_network, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNetwork"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/networks/{networkId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNetworkRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNetworkResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNode"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/clusters/{clusterId}/nodes/{nodeId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNodeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_node_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNodeState"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/clusters/{clusterId}/nodes/{nodeId}/state"
        o.input = Shapes::ShapeRef.new(shape: UpdateNodeStateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNodeStateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVersions"
        o.http_method = "GET"
        o.http_request_uri = "/prod/versions"
        o.input = Shapes::ShapeRef.new(shape: ListVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_sdi_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSdiSource"
        o.http_method = "POST"
        o.http_request_uri = "/prod/sdiSources"
        o.input = Shapes::ShapeRef.new(shape: CreateSdiSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSdiSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_sdi_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSdiSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/prod/sdiSources/{sdiSourceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSdiSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSdiSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_sdi_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSdiSource"
        o.http_method = "GET"
        o.http_request_uri = "/prod/sdiSources/{sdiSourceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeSdiSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSdiSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_sdi_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSdiSources"
        o.http_method = "GET"
        o.http_request_uri = "/prod/sdiSources"
        o.input = Shapes::ShapeRef.new(shape: ListSdiSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSdiSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_sdi_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSdiSource"
        o.http_method = "PUT"
        o.http_request_uri = "/prod/sdiSources/{sdiSourceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSdiSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSdiSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: GatewayTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
