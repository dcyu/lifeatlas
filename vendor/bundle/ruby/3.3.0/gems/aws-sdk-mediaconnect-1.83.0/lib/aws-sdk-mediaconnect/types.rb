# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaConnect
  module Types

    # Add a flow source to an existing bridge.
    #
    # @!attribute [rw] flow_arn
    #   The Amazon Resource Number (ARN) of the flow to use as a source of
    #   this bridge.
    #   @return [String]
    #
    # @!attribute [rw] flow_vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this source.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @!attribute [rw] name
    #   The name of the flow source. This name is used to reference the
    #   source and must be unique among sources in this bridge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeFlowSourceRequest AWS API Documentation
    #
    class AddBridgeFlowSourceRequest < Struct.new(
      :flow_arn,
      :flow_vpc_interface_attachment,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Add a network output to an existing bridge.
    #
    # @!attribute [rw] ip_address
    #   The network output IP Address.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The network output name. This name is used to reference the output
    #   and must be unique among outputs in this bridge.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The network output's gateway network name.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The network output port.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The network output protocol.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The network output TTL.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeNetworkOutputRequest AWS API Documentation
    #
    class AddBridgeNetworkOutputRequest < Struct.new(
      :ip_address,
      :name,
      :network_name,
      :port,
      :protocol,
      :ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # Add a network source to an existing bridge.
    #
    # @!attribute [rw] multicast_ip
    #   The network source multicast IP.
    #   @return [String]
    #
    # @!attribute [rw] multicast_source_settings
    #   The settings related to the multicast source.
    #   @return [Types::MulticastSourceSettings]
    #
    # @!attribute [rw] name
    #   The name of the network source. This name is used to reference the
    #   source and must be unique among sources in this bridge.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The network source's gateway network name.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The network source port.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The network source protocol.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeNetworkSourceRequest AWS API Documentation
    #
    class AddBridgeNetworkSourceRequest < Struct.new(
      :multicast_ip,
      :multicast_source_settings,
      :name,
      :network_name,
      :port,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # Add outputs to the specified bridge.
    #
    # @!attribute [rw] network_output
    #   The network output of the bridge. A network output is delivered to
    #   your premises.
    #   @return [Types::AddBridgeNetworkOutputRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeOutputRequest AWS API Documentation
    #
    class AddBridgeOutputRequest < Struct.new(
      :network_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The outputs that you want to add to this bridge.
    #   @return [Array<Types::AddBridgeOutputRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeOutputsRequest AWS API Documentation
    #
    class AddBridgeOutputsRequest < Struct.new(
      :bridge_arn,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The ARN of the bridge that you added outputs to.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The outputs that you added to this bridge.
    #   @return [Array<Types::BridgeOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeOutputsResponse AWS API Documentation
    #
    class AddBridgeOutputsResponse < Struct.new(
      :bridge_arn,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Add an output to a bridge.
    #
    # @!attribute [rw] flow_source
    #   The source of the flow.
    #   @return [Types::AddBridgeFlowSourceRequest]
    #
    # @!attribute [rw] network_source
    #   The source of the network.
    #   @return [Types::AddBridgeNetworkSourceRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeSourceRequest AWS API Documentation
    #
    class AddBridgeSourceRequest < Struct.new(
      :flow_source,
      :network_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources that you want to add to this bridge.
    #   @return [Array<Types::AddBridgeSourceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeSourcesRequest AWS API Documentation
    #
    class AddBridgeSourcesRequest < Struct.new(
      :bridge_arn,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The ARN of the bridge that you added sources to.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources that you added to this bridge.
    #   @return [Array<Types::BridgeSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeSourcesResponse AWS API Documentation
    #
    class AddBridgeSourcesResponse < Struct.new(
      :bridge_arn,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create a bridge with the egress bridge type. An egress bridge is a
    # cloud-to-ground bridge. The content comes from an existing
    # MediaConnect flow and is delivered to your premises.
    #
    # @!attribute [rw] max_bitrate
    #   The maximum expected bitrate (in bps) of the egress bridge.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddEgressGatewayBridgeRequest AWS API Documentation
    #
    class AddEgressGatewayBridgeRequest < Struct.new(
      :max_bitrate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] media_streams
    #   The media streams that you want to add to the flow.
    #   @return [Array<Types::AddMediaStreamRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowMediaStreamsRequest AWS API Documentation
    #
    class AddFlowMediaStreamsRequest < Struct.new(
      :flow_arn,
      :media_streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that you added media streams to.
    #   @return [String]
    #
    # @!attribute [rw] media_streams
    #   The media streams that you added to the flow.
    #   @return [Array<Types::MediaStream>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowMediaStreamsResponse AWS API Documentation
    #
    class AddFlowMediaStreamsResponse < Struct.new(
      :flow_arn,
      :media_streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by Elemental MediaConnect when adding the flow
    # output. See the error message for the operation for more information
    # on the cause of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowOutputs420Exception AWS API Documentation
    #
    class AddFlowOutputs420Exception < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to add
    #   outputs to.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   A list of outputs that you want to add to the flow.
    #   @return [Array<Types::AddOutputRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowOutputsRequest AWS API Documentation
    #
    class AddFlowOutputsRequest < Struct.new(
      :flow_arn,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that these outputs were added to.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The details of the newly added outputs.
    #   @return [Array<Types::Output>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowOutputsResponse AWS API Documentation
    #
    class AddFlowOutputsResponse < Struct.new(
      :flow_arn,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   A list of sources that you want to add to the flow.
    #   @return [Array<Types::SetSourceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowSourcesRequest AWS API Documentation
    #
    class AddFlowSourcesRequest < Struct.new(
      :flow_arn,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that these sources were added to.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The details of the newly added sources.
    #   @return [Array<Types::Source>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowSourcesResponse AWS API Documentation
    #
    class AddFlowSourcesResponse < Struct.new(
      :flow_arn,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interfaces
    #   A list of VPC interfaces that you want to add to the flow.
    #   @return [Array<Types::VpcInterfaceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowVpcInterfacesRequest AWS API Documentation
    #
    class AddFlowVpcInterfacesRequest < Struct.new(
      :flow_arn,
      :vpc_interfaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that these VPC interfaces were added to.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interfaces
    #   The details of the newly added VPC interfaces.
    #   @return [Array<Types::VpcInterface>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowVpcInterfacesResponse AWS API Documentation
    #
    class AddFlowVpcInterfacesResponse < Struct.new(
      :flow_arn,
      :vpc_interfaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create a bridge with the ingress bridge type. An ingress bridge is a
    # ground-to-cloud bridge. The content originates at your premises and is
    # delivered to the cloud.
    #
    # @!attribute [rw] max_bitrate
    #   The maximum expected bitrate (in bps) of the ingress bridge.
    #   @return [Integer]
    #
    # @!attribute [rw] max_outputs
    #   The maximum number of expected outputs on the ingress bridge.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddIngressGatewayBridgeRequest AWS API Documentation
    #
    class AddIngressGatewayBridgeRequest < Struct.new(
      :max_bitrate,
      :max_outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create a maintenance setting for a flow.
    #
    # @!attribute [rw] maintenance_day
    #   A day of a week when the maintenance will happen.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_start_hour
    #   UTC time when the maintenance will happen.
    #
    #   Use 24-hour HH:MM format.
    #
    #   Minutes must be 00.
    #
    #   Example: 13:00.
    #
    #   The default value is 02:00.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddMaintenance AWS API Documentation
    #
    class AddMaintenance < Struct.new(
      :maintenance_day,
      :maintenance_start_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # The media stream that you want to add to the flow.
    #
    # @!attribute [rw] attributes
    #   The attributes that you want to assign to the new media stream.
    #   @return [Types::MediaStreamAttributesRequest]
    #
    # @!attribute [rw] clock_rate
    #   The sample rate (in Hz) for the stream. If the media stream type is
    #   video or ancillary data, set this value to 90000. If the media
    #   stream type is audio, set this value to either 48000 or 96000.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description that can help you quickly identify what your media
    #   stream is used for.
    #   @return [String]
    #
    # @!attribute [rw] media_stream_id
    #   A unique identifier for the media stream.
    #   @return [Integer]
    #
    # @!attribute [rw] media_stream_name
    #   A name that helps you distinguish one media stream from another.
    #   @return [String]
    #
    # @!attribute [rw] media_stream_type
    #   The type of media stream.
    #   @return [String]
    #
    # @!attribute [rw] video_format
    #   The resolution of the video.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddMediaStreamRequest AWS API Documentation
    #
    class AddMediaStreamRequest < Struct.new(
      :attributes,
      :clock_rate,
      :description,
      :media_stream_id,
      :media_stream_name,
      :media_stream_type,
      :video_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to add an output to a flow.
    #
    # @!attribute [rw] cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output
    #   requests to this flow. These IP addresses should be in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the output. This description appears only on the
    #   Audit Manager console and will not be seen by the end user.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The IP address from which video will be sent to output destinations.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of key used for the encryption. If no keyType is provided,
    #   the service will use the default setting (static-key). Allowable
    #   encryption types: static-key.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] media_stream_output_configurations
    #   The media streams that are associated with the output, and the
    #   parameters for those associations.
    #   @return [Array<Types::MediaStreamOutputConfigurationRequest>]
    #
    # @!attribute [rw] min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In
    #   streams that use the SRT protocol, this value that you set on your
    #   MediaConnect source or output represents the minimal potential
    #   latency of that connection. The latency of the stream is set to the
    #   highest number between the sender’s minimum latency and the
    #   receiver’s minimum latency.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the output. This value must be unique within the current
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port to use when content is distributed to this output.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol to use for the output.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] remote_id
    #   The remote ID for the Zixi-pull output stream.
    #   @return [String]
    #
    # @!attribute [rw] sender_control_port
    #   The port that the flow uses to send outbound requests to initiate
    #   connection with the sender.
    #   @return [Integer]
    #
    # @!attribute [rw] smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
    #   streams.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi and SRT caller-based streams.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @!attribute [rw] output_status
    #   An indication of whether the new output should be enabled or
    #   disabled as soon as it is created. If you don't specify the
    #   outputStatus field in your request, MediaConnect sets it to ENABLED.
    #   @return [String]
    #
    # @!attribute [rw] ndi_speed_hq_quality
    #   A quality setting for the NDI Speed HQ encoder.
    #   @return [Integer]
    #
    # @!attribute [rw] ndi_program_name
    #   A suffix for the names of the NDI sources that the flow creates. If
    #   a custom name isn't specified, MediaConnect uses the output name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddOutputRequest AWS API Documentation
    #
    class AddOutputRequest < Struct.new(
      :cidr_allow_list,
      :description,
      :destination,
      :encryption,
      :max_latency,
      :media_stream_output_configurations,
      :min_latency,
      :name,
      :port,
      :protocol,
      :remote_id,
      :sender_control_port,
      :smoothing_latency,
      :stream_id,
      :vpc_interface_attachment,
      :output_status,
      :ndi_speed_hq_quality,
      :ndi_program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for audio stream metrics monitoring.
    #
    # @!attribute [rw] silent_audio
    #   Detects periods of silence.
    #   @return [Types::SilentAudio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AudioMonitoringSetting AWS API Documentation
    #
    class AudioMonitoringSetting < Struct.new(
      :silent_audio)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown if the request contains a semantic error. The
    # precise meaning depends on the API, and is documented in the error
    # message.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures settings for the `BlackFrames` metric.
    #
    # @!attribute [rw] state
    #   Indicates whether the `BlackFrames` metric is enabled or disabled..
    #   @return [String]
    #
    # @!attribute [rw] threshold_seconds
    #   Specifies the number of consecutive seconds of black frames that
    #   triggers an event or alert.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/BlackFrames AWS API Documentation
    #
    class BlackFrames < Struct.new(
      :state,
      :threshold_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Bridge is the connection between your data center's Instances and
    # the Amazon Web Services cloud. A bridge can be used to send video from
    # the Amazon Web Services cloud to your data center or from your data
    # center to the Amazon Web Services cloud.
    #
    # @!attribute [rw] bridge_arn
    #   The Amazon Resource Number (ARN) of the bridge.
    #   @return [String]
    #
    # @!attribute [rw] bridge_messages
    #   Messages with details about the bridge.
    #   @return [Array<Types::MessageDetail>]
    #
    # @!attribute [rw] bridge_state
    #   The state of the bridge.
    #   @return [String]
    #
    # @!attribute [rw] egress_gateway_bridge
    #   An egress bridge is a cloud-to-ground bridge. The content comes from
    #   an existing MediaConnect flow and is delivered to your premises.
    #   @return [Types::EgressGatewayBridge]
    #
    # @!attribute [rw] ingress_gateway_bridge
    #   An ingress bridge is a ground-to-cloud bridge. The content
    #   originates at your premises and is delivered to the cloud.
    #   @return [Types::IngressGatewayBridge]
    #
    # @!attribute [rw] name
    #   The name of the bridge.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The outputs on this bridge.
    #   @return [Array<Types::BridgeOutput>]
    #
    # @!attribute [rw] placement_arn
    #   The placement Amazon Resource Number (ARN) of the bridge.
    #   @return [String]
    #
    # @!attribute [rw] source_failover_config
    #   The settings for source failover.
    #   @return [Types::FailoverConfig]
    #
    # @!attribute [rw] sources
    #   The sources on this bridge.
    #   @return [Array<Types::BridgeSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Bridge AWS API Documentation
    #
    class Bridge < Struct.new(
      :bridge_arn,
      :bridge_messages,
      :bridge_state,
      :egress_gateway_bridge,
      :ingress_gateway_bridge,
      :name,
      :outputs,
      :placement_arn,
      :source_failover_config,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the bridge. A flow output is delivered to the Amazon Web
    # Services cloud.
    #
    # @!attribute [rw] flow_arn
    #   The Amazon Resource Number (ARN) of the cloud flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_source_arn
    #   The Amazon Resource Number (ARN) of the flow source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the bridge's output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/BridgeFlowOutput AWS API Documentation
    #
    class BridgeFlowOutput < Struct.new(
      :flow_arn,
      :flow_source_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of the bridge. A flow source originates in MediaConnect as
    # an existing cloud flow.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the cloud flow used as a source of this bridge.
    #   @return [String]
    #
    # @!attribute [rw] flow_vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this source.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @!attribute [rw] name
    #   The name of the flow source.
    #   @return [String]
    #
    # @!attribute [rw] output_arn
    #   The Amazon Resource Number (ARN) of the output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/BridgeFlowSource AWS API Documentation
    #
    class BridgeFlowSource < Struct.new(
      :flow_arn,
      :flow_vpc_interface_attachment,
      :name,
      :output_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the bridge. A network output is delivered to your
    # premises.
    #
    # @!attribute [rw] ip_address
    #   The network output IP address.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The network output name.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The network output's gateway network name.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The network output's port.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The network output protocol.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The network output TTL.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/BridgeNetworkOutput AWS API Documentation
    #
    class BridgeNetworkOutput < Struct.new(
      :ip_address,
      :name,
      :network_name,
      :port,
      :protocol,
      :ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of the bridge. A network source originates at your
    # premises.
    #
    # @!attribute [rw] multicast_ip
    #   The network source multicast IP.
    #   @return [String]
    #
    # @!attribute [rw] multicast_source_settings
    #   The settings related to the multicast source.
    #   @return [Types::MulticastSourceSettings]
    #
    # @!attribute [rw] name
    #   The name of the network source.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The network source's gateway network name.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The network source port.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The network source protocol.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/BridgeNetworkSource AWS API Documentation
    #
    class BridgeNetworkSource < Struct.new(
      :multicast_ip,
      :multicast_source_settings,
      :name,
      :network_name,
      :port,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of the bridge.
    #
    # @!attribute [rw] flow_output
    #   The output of the associated flow.
    #   @return [Types::BridgeFlowOutput]
    #
    # @!attribute [rw] network_output
    #   The network output for the bridge.
    #   @return [Types::BridgeNetworkOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/BridgeOutput AWS API Documentation
    #
    class BridgeOutput < Struct.new(
      :flow_output,
      :network_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # The bridge's source.
    #
    # @!attribute [rw] flow_source
    #   The source of the associated flow.
    #   @return [Types::BridgeFlowSource]
    #
    # @!attribute [rw] network_source
    #   The network source for the bridge.
    #   @return [Types::BridgeNetworkSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/BridgeSource AWS API Documentation
    #
    class BridgeSource < Struct.new(
      :flow_source,
      :network_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a service resource associated with the request. Resolve the
    # conflict before retrying this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by Elemental MediaConnect when creating the bridge.
    # See the error message for the operation for more information on the
    # cause of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateBridge420Exception AWS API Documentation
    #
    class CreateBridge420Exception < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] egress_gateway_bridge
    #   An egress bridge is a cloud-to-ground bridge. The content comes from
    #   an existing MediaConnect flow and is delivered to your premises.
    #   @return [Types::AddEgressGatewayBridgeRequest]
    #
    # @!attribute [rw] ingress_gateway_bridge
    #   An ingress bridge is a ground-to-cloud bridge. The content
    #   originates at your premises and is delivered to the cloud.
    #   @return [Types::AddIngressGatewayBridgeRequest]
    #
    # @!attribute [rw] name
    #   The name of the bridge. This name can not be modified after the
    #   bridge is created.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The outputs that you want to add to this bridge.
    #   @return [Array<Types::AddBridgeOutputRequest>]
    #
    # @!attribute [rw] placement_arn
    #   The bridge placement Amazon Resource Number (ARN).
    #   @return [String]
    #
    # @!attribute [rw] source_failover_config
    #   The settings for source failover.
    #   @return [Types::FailoverConfig]
    #
    # @!attribute [rw] sources
    #   The sources that you want to add to this bridge.
    #   @return [Array<Types::AddBridgeSourceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateBridgeRequest AWS API Documentation
    #
    class CreateBridgeRequest < Struct.new(
      :egress_gateway_bridge,
      :ingress_gateway_bridge,
      :name,
      :outputs,
      :placement_arn,
      :source_failover_config,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge
    #   The name of the bridge that was created.
    #   @return [Types::Bridge]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateBridgeResponse AWS API Documentation
    #
    class CreateBridgeResponse < Struct.new(
      :bridge)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by Elemental MediaConnect when creating the flow. See
    # the error message for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateFlow420Exception AWS API Documentation
    #
    class CreateFlow420Exception < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zone
    #   The Availability Zone that you want to create the flow in. These
    #   options are limited to the Availability Zones within the current
    #   Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] entitlements
    #   The entitlements that you want to grant on a flow.
    #   @return [Array<Types::GrantEntitlementRequest>]
    #
    # @!attribute [rw] media_streams
    #   The media streams that you want to add to the flow. You can
    #   associate these media streams with sources and outputs on the flow.
    #   @return [Array<Types::AddMediaStreamRequest>]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The outputs that you want to add to this flow.
    #   @return [Array<Types::AddOutputRequest>]
    #
    # @!attribute [rw] source
    #   The settings for the source that you want to use for the new flow.
    #   @return [Types::SetSourceRequest]
    #
    # @!attribute [rw] source_failover_config
    #   The settings for source failover.
    #   @return [Types::FailoverConfig]
    #
    # @!attribute [rw] sources
    #   The sources that are assigned to the flow.
    #   @return [Array<Types::SetSourceRequest>]
    #
    # @!attribute [rw] vpc_interfaces
    #   The VPC interfaces you want on the flow.
    #   @return [Array<Types::VpcInterfaceRequest>]
    #
    # @!attribute [rw] maintenance
    #   The maintenance settings you want to use for the flow.
    #   @return [Types::AddMaintenance]
    #
    # @!attribute [rw] source_monitoring_config
    #   The settings for source monitoring.
    #   @return [Types::MonitoringConfig]
    #
    # @!attribute [rw] flow_size
    #   Determines the processing capacity and feature set of the flow. Set
    #   this optional parameter to `LARGE` if you want to enable NDI outputs
    #   on the flow.
    #   @return [String]
    #
    # @!attribute [rw] ndi_config
    #   Specifies the configuration settings for NDI outputs. Required when
    #   the flow includes NDI outputs.
    #   @return [Types::NdiConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateFlowRequest AWS API Documentation
    #
    class CreateFlowRequest < Struct.new(
      :availability_zone,
      :entitlements,
      :media_streams,
      :name,
      :outputs,
      :source,
      :source_failover_config,
      :sources,
      :vpc_interfaces,
      :maintenance,
      :source_monitoring_config,
      :flow_size,
      :ndi_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow
    #   The flow that you created.
    #   @return [Types::Flow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateFlowResponse AWS API Documentation
    #
    class CreateFlowResponse < Struct.new(
      :flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by Elemental MediaConnect when creating the gateway.
    # See the error message for the operation for more information on the
    # cause of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateGateway420Exception AWS API Documentation
    #
    class CreateGateway420Exception < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] egress_cidr_blocks
    #   The range of IP addresses that are allowed to contribute content or
    #   initiate output requests for flows communicating with this gateway.
    #   These IP addresses should be in the form of a Classless Inter-Domain
    #   Routing (CIDR) block; for example, 10.0.0.0/16.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the gateway. This name can not be modified after the
    #   gateway is created.
    #   @return [String]
    #
    # @!attribute [rw] networks
    #   The list of networks that you want to add to the gateway.
    #   @return [Array<Types::GatewayNetwork>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateGatewayRequest AWS API Documentation
    #
    class CreateGatewayRequest < Struct.new(
      :egress_cidr_blocks,
      :name,
      :networks)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway
    #   The gateway that you created.
    #   @return [Types::Gateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateGatewayResponse AWS API Documentation
    #
    class CreateGatewayResponse < Struct.new(
      :gateway)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteBridgeRequest AWS API Documentation
    #
    class DeleteBridgeRequest < Struct.new(
      :bridge_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The ARN of the deleted bridge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteBridgeResponse AWS API Documentation
    #
    class DeleteBridgeResponse < Struct.new(
      :bridge_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteFlowRequest AWS API Documentation
    #
    class DeleteFlowRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow when the `DeleteFlow` process begins.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteFlowResponse AWS API Documentation
    #
    class DeleteFlowResponse < Struct.new(
      :flow_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteGatewayRequest AWS API Documentation
    #
    class DeleteGatewayRequest < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The ARN of the gateway that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteGatewayResponse AWS API Documentation
    #
    class DeleteGatewayResponse < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] force
    #   Force the deregistration of an instance. Force will deregister an
    #   instance, even if there are bridges running on it.
    #   @return [Boolean]
    #
    # @!attribute [rw] gateway_instance_arn
    #   The Amazon Resource Name (ARN) of the gateway that contains the
    #   instance that you want to deregister.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeregisterGatewayInstanceRequest AWS API Documentation
    #
    class DeregisterGatewayInstanceRequest < Struct.new(
      :force,
      :gateway_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_instance_arn
    #   The ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_state
    #   The status of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeregisterGatewayInstanceResponse AWS API Documentation
    #
    class DeregisterGatewayInstanceResponse < Struct.new(
      :gateway_instance_arn,
      :instance_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeBridgeRequest AWS API Documentation
    #
    class DescribeBridgeRequest < Struct.new(
      :bridge_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge
    #   The bridge that you requested a description of.
    #   @return [Types::Bridge]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeBridgeResponse AWS API Documentation
    #
    class DescribeBridgeResponse < Struct.new(
      :bridge)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlowRequest AWS API Documentation
    #
    class DescribeFlowRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow
    #   The flow that you requested a description of.
    #   @return [Types::Flow]
    #
    # @!attribute [rw] messages
    #   Any errors that apply currently to the flow. If there are no errors,
    #   MediaConnect will not include this field in the response.
    #   @return [Types::Messages]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlowResponse AWS API Documentation
    #
    class DescribeFlowResponse < Struct.new(
      :flow,
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlowSourceMetadataRequest AWS API Documentation
    #
    class DescribeFlowSourceMetadataRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that DescribeFlowSourceMetadata was performed
    #   on.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   Provides a status code and message regarding issues found with the
    #   flow source metadata.
    #   @return [Array<Types::MessageDetail>]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the most recent change in metadata for this flow’s
    #   source.
    #   @return [Time]
    #
    # @!attribute [rw] transport_media_info
    #   Information about the flow's transport media.
    #   @return [Types::TransportMediaInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlowSourceMetadataResponse AWS API Documentation
    #
    class DescribeFlowSourceMetadataResponse < Struct.new(
      :flow_arn,
      :messages,
      :timestamp,
      :transport_media_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlowSourceThumbnailRequest AWS API Documentation
    #
    class DescribeFlowSourceThumbnailRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thumbnail_details
    #   The details of the thumbnail, including thumbnail base64 string,
    #   timecode and the time when thumbnail was generated.
    #   @return [Types::ThumbnailDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlowSourceThumbnailResponse AWS API Documentation
    #
    class DescribeFlowSourceThumbnailResponse < Struct.new(
      :thumbnail_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_instance_arn
    #   The Amazon Resource Name (ARN) of the gateway instance that you want
    #   to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeGatewayInstanceRequest AWS API Documentation
    #
    class DescribeGatewayInstanceRequest < Struct.new(
      :gateway_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_instance
    #   The gateway instance that you requested a description of.
    #   @return [Types::GatewayInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeGatewayInstanceResponse AWS API Documentation
    #
    class DescribeGatewayInstanceResponse < Struct.new(
      :gateway_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The ARN of the gateway that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeGatewayRequest AWS API Documentation
    #
    class DescribeGatewayRequest < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway
    #   The gateway that you wanted to describe.
    #   @return [Types::Gateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeGatewayResponse AWS API Documentation
    #
    class DescribeGatewayResponse < Struct.new(
      :gateway)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] offering_arn
    #   The ARN of the offering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeOfferingRequest AWS API Documentation
    #
    class DescribeOfferingRequest < Struct.new(
      :offering_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] offering
    #   The offering that you requested a description of.
    #   @return [Types::Offering]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeOfferingResponse AWS API Documentation
    #
    class DescribeOfferingResponse < Struct.new(
      :offering)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reservation_arn
    #   The Amazon Resource Name (ARN) of the offering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeReservationRequest AWS API Documentation
    #
    class DescribeReservationRequest < Struct.new(
      :reservation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reservation
    #   A pricing agreement for a discounted rate for a specific outbound
    #   bandwidth that your MediaConnect account will use each month over a
    #   specific time period. The discounted rate in the reservation applies
    #   to outbound bandwidth for all flows from your account until your
    #   account reaches the amount of bandwidth in your reservation. If you
    #   use more outbound bandwidth than the agreed upon amount in a single
    #   month, the overage is charged at the on-demand rate.
    #   @return [Types::Reservation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeReservationResponse AWS API Documentation
    #
    class DescribeReservationResponse < Struct.new(
      :reservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The transport parameters that you want to associate with an outbound
    # media stream.
    #
    # @!attribute [rw] destination_ip
    #   The IP address where you want MediaConnect to send contents of the
    #   media stream.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The port that you want MediaConnect to use when it distributes the
    #   media stream to the output.
    #   @return [Integer]
    #
    # @!attribute [rw] interface
    #   The VPC interface that you want to use for the media stream
    #   associated with the output.
    #   @return [Types::Interface]
    #
    # @!attribute [rw] outbound_ip
    #   The IP address that the receiver requires in order to establish a
    #   connection with the flow. This value is represented by the elastic
    #   network interface IP address of the VPC. This field applies only to
    #   outputs that use the CDI or ST 2110 JPEG XS or protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DestinationConfiguration AWS API Documentation
    #
    class DestinationConfiguration < Struct.new(
      :destination_ip,
      :destination_port,
      :interface,
      :outbound_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of a media stream that you want to associate with the
    # output.
    #
    # @!attribute [rw] destination_ip
    #   The IP address where you want MediaConnect to send contents of the
    #   media stream.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The port that you want MediaConnect to use when it distributes the
    #   media stream to the output.
    #   @return [Integer]
    #
    # @!attribute [rw] interface
    #   The VPC interface that you want to use for the media stream
    #   associated with the output.
    #   @return [Types::InterfaceRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DestinationConfigurationRequest AWS API Documentation
    #
    class DestinationConfigurationRequest < Struct.new(
      :destination_ip,
      :destination_port,
      :interface)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create a bridge with the egress bridge type. An egress bridge is a
    # cloud-to-ground bridge. The content comes from an existing
    # MediaConnect flow and is delivered to your premises.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance running this bridge.
    #   @return [String]
    #
    # @!attribute [rw] max_bitrate
    #   The maximum expected bitrate (in bps) of the egress bridge.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/EgressGatewayBridge AWS API Documentation
    #
    class EgressGatewayBridge < Struct.new(
      :instance_id,
      :max_bitrate)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of parameters that determine how MediaConnect will
    # convert the content. These fields only apply to outputs on flows that
    # have a CDI source.
    #
    # @!attribute [rw] compression_factor
    #   A value that is used to calculate compression for an output. The
    #   bitrate of the output is calculated as follows: Output bitrate = (1
    #   / compressionFactor) * (source bitrate) This property only applies
    #   to outputs that use the ST 2110 JPEG XS protocol, with a flow source
    #   that uses the CDI protocol. Valid values are floating point numbers
    #   in the range of 3.0 to 10.0, inclusive.
    #   @return [Float]
    #
    # @!attribute [rw] encoder_profile
    #   A setting on the encoder that drives compression settings. This
    #   property only applies to video media streams associated with outputs
    #   that use the ST 2110 JPEG XS protocol, with a flow source that uses
    #   the CDI protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/EncodingParameters AWS API Documentation
    #
    class EncodingParameters < Struct.new(
      :compression_factor,
      :encoder_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of parameters that determine how MediaConnect will
    # convert the content. These fields only apply to outputs on flows that
    # have a CDI source.
    #
    # @!attribute [rw] compression_factor
    #   A value that is used to calculate compression for an output. The
    #   bitrate of the output is calculated as follows: Output bitrate = (1
    #   / compressionFactor) * (source bitrate) This property only applies
    #   to outputs that use the ST 2110 JPEG XS protocol, with a flow source
    #   that uses the CDI protocol. Valid values are floating point numbers
    #   in the range of 3.0 to 10.0, inclusive.
    #   @return [Float]
    #
    # @!attribute [rw] encoder_profile
    #   A setting on the encoder that drives compression settings. This
    #   property only applies to video media streams associated with outputs
    #   that use the ST 2110 JPEG XS protocol, if at least one source on the
    #   flow uses the CDI protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/EncodingParametersRequest AWS API Documentation
    #
    class EncodingParametersRequest < Struct.new(
      :compression_factor,
      :encoder_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the encryption of the flow.
    #
    # @!attribute [rw] algorithm
    #   The type of algorithm that is used for the encryption (such as
    #   aes128, aes192, or aes256).
    #   @return [String]
    #
    # @!attribute [rw] constant_initialization_vector
    #   A 128-bit, 16-byte hex value represented by a 32-character string,
    #   to be used with the key for encrypting content. This parameter is
    #   not valid for static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The value of one of the devices that you configured with your
    #   digital rights management (DRM) platform key provider. This
    #   parameter is required for SPEKE encryption and is not valid for
    #   static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of key that is used for the encryption. If no keyType is
    #   provided, the service will use the default setting (static-key).
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region that the API Gateway proxy endpoint
    #   was created in. This parameter is required for SPEKE encryption and
    #   is not valid for static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   An identifier for the content. The service sends this value to the
    #   key server to identify the current endpoint. The resource ID is also
    #   known as the content ID. This parameter is required for SPEKE
    #   encryption and is not valid for static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that you created during setup (when you set up
    #   MediaConnect as a trusted entity).
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the secret that you created in Secrets Manager to store
    #   the encryption key. This parameter is required for static key
    #   encryption and is not valid for SPEKE encryption.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL from the API Gateway proxy that you set up to talk to your
    #   key server. This parameter is required for SPEKE encryption and is
    #   not valid for static key encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Encryption AWS API Documentation
    #
    class Encryption < Struct.new(
      :algorithm,
      :constant_initialization_vector,
      :device_id,
      :key_type,
      :region,
      :resource_id,
      :role_arn,
      :secret_arn,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a flow entitlement.
    #
    # @!attribute [rw] data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the
    #   subscriber.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of encryption that will be used on the output that is
    #   associated with this entitlement.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_status
    #   An indication of whether the entitlement is enabled.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] subscribers
    #   The Amazon Web Services account IDs that you want to share your
    #   content with. The receiving accounts (subscribers) will be allowed
    #   to create their own flow using your content as the source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Entitlement AWS API Documentation
    #
    class Entitlement < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :description,
      :encryption,
      :entitlement_arn,
      :entitlement_status,
      :name,
      :subscribers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for source failover.
    #
    # @!attribute [rw] failover_mode
    #   The type of failover you choose for this flow. MERGE combines the
    #   source streams into a single stream, allowing graceful recovery from
    #   any single-source loss. FAILOVER allows switching between different
    #   streams.
    #   @return [String]
    #
    # @!attribute [rw] recovery_window
    #   Search window time to look for dash-7 packets.
    #   @return [Integer]
    #
    # @!attribute [rw] source_priority
    #   The priority you want to assign to a source. You can have a primary
    #   stream and a backup stream or two equally prioritized streams.
    #   @return [Types::SourcePriority]
    #
    # @!attribute [rw] state
    #   The state of source failover on the flow. If the state is inactive,
    #   the flow can have only one source. If the state is active, the flow
    #   can have one or two sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/FailoverConfig AWS API Documentation
    #
    class FailoverConfig < Struct.new(
      :failover_mode,
      :recovery_window,
      :source_priority,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a flow, including its source, outputs, and
    # entitlements.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone that you want to create the flow in. These
    #   options are limited to the Availability Zones within the current
    #   Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the flow. This value is not used or seen outside of
    #   the current MediaConnect account.
    #   @return [String]
    #
    # @!attribute [rw] egress_ip
    #   The IP address from which video will be sent to output destinations.
    #   @return [String]
    #
    # @!attribute [rw] entitlements
    #   The entitlements in this flow.
    #   @return [Array<Types::Entitlement>]
    #
    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #   @return [String]
    #
    # @!attribute [rw] media_streams
    #   The media streams that are associated with the flow. After you
    #   associate a media stream with a source, you can also associate it
    #   with outputs on the flow.
    #   @return [Array<Types::MediaStream>]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The outputs in this flow.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] source
    #   The source for the flow.
    #   @return [Types::Source]
    #
    # @!attribute [rw] source_failover_config
    #   The settings for the source failover.
    #   @return [Types::FailoverConfig]
    #
    # @!attribute [rw] sources
    #   The settings for the sources that are assigned to the flow.
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] status
    #   The current status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interfaces
    #   The VPC Interfaces for this flow.
    #   @return [Array<Types::VpcInterface>]
    #
    # @!attribute [rw] maintenance
    #   The maintenance settings for the flow.
    #   @return [Types::Maintenance]
    #
    # @!attribute [rw] source_monitoring_config
    #   The settings for source monitoring.
    #   @return [Types::MonitoringConfig]
    #
    # @!attribute [rw] flow_size
    #   Determines the processing capacity and feature set of the flow. Set
    #   this optional parameter to LARGE if you want to enable NDI outputs
    #   on the flow.
    #   @return [String]
    #
    # @!attribute [rw] ndi_config
    #   Specifies the configuration settings for NDI outputs. Required when
    #   the flow includes NDI outputs.
    #   @return [Types::NdiConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Flow AWS API Documentation
    #
    class Flow < Struct.new(
      :availability_zone,
      :description,
      :egress_ip,
      :entitlements,
      :flow_arn,
      :media_streams,
      :name,
      :outputs,
      :source,
      :source_failover_config,
      :sources,
      :status,
      :vpc_interfaces,
      :maintenance,
      :source_monitoring_config,
      :flow_size,
      :ndi_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of parameters that define the media stream.
    #
    # @!attribute [rw] channel_order
    #   The format of the audio channel.
    #   @return [String]
    #
    # @!attribute [rw] colorimetry
    #   The format used for the representation of color.
    #   @return [String]
    #
    # @!attribute [rw] exact_framerate
    #   The frame rate for the video stream, in frames/second. For example:
    #   60000/1001.
    #   @return [String]
    #
    # @!attribute [rw] par
    #   The pixel aspect ratio (PAR) of the video.
    #   @return [String]
    #
    # @!attribute [rw] range
    #   The encoding range of the video.
    #   @return [String]
    #
    # @!attribute [rw] scan_mode
    #   The type of compression that was used to smooth the video’s
    #   appearance.
    #   @return [String]
    #
    # @!attribute [rw] tcs
    #   The transfer characteristic system (TCS) that is used in the video.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Fmtp AWS API Documentation
    #
    class Fmtp < Struct.new(
      :channel_order,
      :colorimetry,
      :exact_framerate,
      :par,
      :range,
      :scan_mode,
      :tcs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings that you want to use to define the media stream.
    #
    # @!attribute [rw] channel_order
    #   The format of the audio channel.
    #   @return [String]
    #
    # @!attribute [rw] colorimetry
    #   The format that is used for the representation of color.
    #   @return [String]
    #
    # @!attribute [rw] exact_framerate
    #   The frame rate for the video stream, in frames/second. For example:
    #   60000/1001. If you specify a whole number, MediaConnect uses a ratio
    #   of N/1. For example, if you specify 60, MediaConnect uses 60/1 as
    #   the `exactFramerate`.
    #   @return [String]
    #
    # @!attribute [rw] par
    #   The pixel aspect ratio (PAR) of the video.
    #   @return [String]
    #
    # @!attribute [rw] range
    #   The encoding range of the video.
    #   @return [String]
    #
    # @!attribute [rw] scan_mode
    #   The type of compression that was used to smooth the video’s
    #   appearance.
    #   @return [String]
    #
    # @!attribute [rw] tcs
    #   The transfer characteristic system (TCS) that is used in the video.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/FmtpRequest AWS API Documentation
    #
    class FmtpRequest < Struct.new(
      :channel_order,
      :colorimetry,
      :exact_framerate,
      :par,
      :range,
      :scan_mode,
      :tcs)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The frame resolution used by the video stream.
    #
    # @!attribute [rw] frame_height
    #   The number of pixels in the height of the video frame.
    #   @return [Integer]
    #
    # @!attribute [rw] frame_width
    #   The number of pixels in the width of the video frame.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/FrameResolution AWS API Documentation
    #
    class FrameResolution < Struct.new(
      :frame_height,
      :frame_width)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures settings for the `FrozenFrames` metric.
    #
    # @!attribute [rw] state
    #   Indicates whether the `FrozenFrames` metric is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] threshold_seconds
    #   Specifies the number of consecutive seconds of a static image that
    #   triggers an event or alert.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/FrozenFrames AWS API Documentation
    #
    class FrozenFrames < Struct.new(
      :state,
      :threshold_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a gateway, including its networks.
    #
    # @!attribute [rw] egress_cidr_blocks
    #   The range of IP addresses that contribute content or initiate output
    #   requests for flows communicating with this gateway. These IP
    #   addresses should be in the form of a Classless Inter-Domain Routing
    #   (CIDR) block; for example, 10.0.0.0/16.
    #   @return [Array<String>]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_messages
    #   Messages with information about the gateway.
    #   @return [Array<Types::MessageDetail>]
    #
    # @!attribute [rw] gateway_state
    #   The current status of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the gateway. This name can not be modified after the
    #   gateway is created.
    #   @return [String]
    #
    # @!attribute [rw] networks
    #   The list of networks in the gateway.
    #   @return [Array<Types::GatewayNetwork>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Gateway AWS API Documentation
    #
    class Gateway < Struct.new(
      :egress_cidr_blocks,
      :gateway_arn,
      :gateway_messages,
      :gateway_state,
      :name,
      :networks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source configuration for cloud flows receiving a stream from a
    # bridge.
    #
    # @!attribute [rw] bridge_arn
    #   The ARN of the bridge feeding this flow.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this bridge
    #   source.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GatewayBridgeSource AWS API Documentation
    #
    class GatewayBridgeSource < Struct.new(
      :bridge_arn,
      :vpc_interface_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for an instance in a gateway.
    #
    # @!attribute [rw] bridge_placement
    #   The availability of the instance to host new bridges. The
    #   bridgePlacement property can be LOCKED or AVAILABLE. If it is
    #   LOCKED, no new bridges can be deployed to this instance. If it is
    #   AVAILABLE, new bridges can be deployed to this instance.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   The connection state of the instance.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] gateway_instance_arn
    #   The ARN of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The instance ID generated by the SSM install. This will begin with
    #   "mi-".
    #   @return [String]
    #
    # @!attribute [rw] instance_messages
    #   Messages with information about the gateway.
    #   @return [Array<Types::MessageDetail>]
    #
    # @!attribute [rw] instance_state
    #   The status of the instance.
    #   @return [String]
    #
    # @!attribute [rw] running_bridge_count
    #   The running bridge count.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GatewayInstance AWS API Documentation
    #
    class GatewayInstance < Struct.new(
      :bridge_placement,
      :connection_status,
      :gateway_arn,
      :gateway_instance_arn,
      :instance_id,
      :instance_messages,
      :instance_state,
      :running_bridge_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network settings for a gateway.
    #
    # @!attribute [rw] cidr_block
    #   A unique IP address range to use for this network. These IP
    #   addresses should be in the form of a Classless Inter-Domain Routing
    #   (CIDR) block; for example, 10.0.0.0/16.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the network. This name is used to reference the network
    #   and must be unique among networks in this gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GatewayNetwork AWS API Documentation
    #
    class GatewayNetwork < Struct.new(
      :cidr_block,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entitlements that you want to grant on a flow.
    #
    # @!attribute [rw] data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the
    #   subscriber.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the entitlement. This description appears only on
    #   the MediaConnect console and will not be seen by the subscriber or
    #   end user.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of encryption that will be used on the output that is
    #   associated with this entitlement. Allowable encryption types:
    #   static-key, speke.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] entitlement_status
    #   An indication of whether the new entitlement should be enabled or
    #   disabled as soon as it is created. If you don’t specify the
    #   entitlementStatus field in your request, MediaConnect sets it to
    #   ENABLED.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the entitlement. This value must be unique within the
    #   current flow.
    #   @return [String]
    #
    # @!attribute [rw] subscribers
    #   The Amazon Web Services account IDs that you want to share your
    #   content with. The receiving accounts (subscribers) will be allowed
    #   to create their own flows using your content as the source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GrantEntitlementRequest AWS API Documentation
    #
    class GrantEntitlementRequest < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :description,
      :encryption,
      :entitlement_status,
      :name,
      :subscribers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by Elemental MediaConnect when granting the
    # entitlement. See the error message for the operation for more
    # information on the cause of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GrantFlowEntitlements420Exception AWS API Documentation
    #
    class GrantFlowEntitlements420Exception < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entitlements
    #   The list of entitlements that you want to grant.
    #   @return [Array<Types::GrantEntitlementRequest>]
    #
    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to grant
    #   entitlements on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GrantFlowEntitlementsRequest AWS API Documentation
    #
    class GrantFlowEntitlementsRequest < Struct.new(
      :entitlements,
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entitlements
    #   The entitlements that were just granted.
    #   @return [Array<Types::Entitlement>]
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that these entitlements were granted to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GrantFlowEntitlementsResponse AWS API Documentation
    #
    class GrantFlowEntitlementsResponse < Struct.new(
      :entitlements,
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create a bridge with the ingress bridge type. An ingress bridge is a
    # ground-to-cloud bridge. The content originates at your premises and is
    # delivered to the cloud.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance running this bridge.
    #   @return [String]
    #
    # @!attribute [rw] max_bitrate
    #   The maximum expected bitrate (in bps) of the ingress bridge.
    #   @return [Integer]
    #
    # @!attribute [rw] max_outputs
    #   The maximum number of outputs on the ingress bridge.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/IngressGatewayBridge AWS API Documentation
    #
    class IngressGatewayBridge < Struct.new(
      :instance_id,
      :max_bitrate,
      :max_outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The transport parameters that are associated with an incoming media
    # stream.
    #
    # @!attribute [rw] input_ip
    #   The IP address that the flow listens on for incoming content for a
    #   media stream.
    #   @return [String]
    #
    # @!attribute [rw] input_port
    #   The port that the flow listens on for an incoming media stream.
    #   @return [Integer]
    #
    # @!attribute [rw] interface
    #   The VPC interface where the media stream comes in from.
    #   @return [Types::Interface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/InputConfiguration AWS API Documentation
    #
    class InputConfiguration < Struct.new(
      :input_ip,
      :input_port,
      :interface)
      SENSITIVE = []
      include Aws::Structure
    end

    # The transport parameters that you want to associate with an incoming
    # media stream.
    #
    # @!attribute [rw] input_port
    #   The port that you want the flow to listen on for an incoming media
    #   stream.
    #   @return [Integer]
    #
    # @!attribute [rw] interface
    #   The VPC interface that you want to use for the incoming media
    #   stream.
    #   @return [Types::InterfaceRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/InputConfigurationRequest AWS API Documentation
    #
    class InputConfigurationRequest < Struct.new(
      :input_port,
      :interface)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC interface that is used for the media stream associated with
    # the source or output.
    #
    # @!attribute [rw] name
    #   The name of the VPC interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Interface AWS API Documentation
    #
    class Interface < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC interface that you want to designate where the media stream is
    # coming from or going to.
    #
    # @!attribute [rw] name
    #   The name of the VPC interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/InterfaceRequest AWS API Documentation
    #
    class InterfaceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server encountered an internal error and is unable to complete the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_arn
    #   Filter the list results to display only the bridges associated with
    #   the selected ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListBridges` request with `MaxResults`
    #   set at 5. Although 20 items match your request, the service returns
    #   no more than the first 5 items. (The service also returns a
    #   `NextToken` value that you can use to fetch the next batch of
    #   results.)
    #
    #   The service might return fewer results than the `MaxResults` value.
    #   If `MaxResults` is not included in the request, the service defaults
    #   to pagination with a maximum of 10 results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListBridges` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5)
    #   and a `NextToken` value. To see the next batch of results, you can
    #   submit the `ListBridges` request a second time and specify the
    #   `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListBridgesRequest AWS API Documentation
    #
    class ListBridgesRequest < Struct.new(
      :filter_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridges
    #   A list of bridge summaries.
    #   @return [Array<Types::ListedBridge>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListBridges` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5)
    #   and a `NextToken` value. To see the next batch of results, you can
    #   submit the `ListBridges` request a second time and specify the
    #   `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListBridgesResponse AWS API Documentation
    #
    class ListBridgesResponse < Struct.new(
      :bridges,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListEntitlements` request with set at 5.
    #   Although 20 items match your request, the service returns no more
    #   than the first 5 items. (The service also returns a NextToken value
    #   that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the `MaxResults` value.
    #   If `MaxResults` is not included in the request, the service defaults
    #   to pagination with a maximum of 20 results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListEntitlements` request with
    #   `MaxResults` set at 5. The service returns the first batch of
    #   results (up to 5) and a `NextToken` value. To see the next batch of
    #   results, you can submit the `ListEntitlements` request a second time
    #   and specify the `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListEntitlementsRequest AWS API Documentation
    #
    class ListEntitlementsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entitlements
    #   A list of entitlements that have been granted to you from other
    #   Amazon Web Services accounts.
    #   @return [Array<Types::ListedEntitlement>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a ListEntitlements request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5)
    #   and a NextToken value. To see the next batch of results, you can
    #   submit the `ListEntitlements` request a second time and specify the
    #   `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListEntitlementsResponse AWS API Documentation
    #
    class ListEntitlementsResponse < Struct.new(
      :entitlements,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListFlows` request with MaxResults set at
    #   5. Although 20 items match your request, the service returns no more
    #   than the first 5 items. (The service also returns a `NextToken`
    #   value that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the `MaxResults` value.
    #   If `MaxResults` is not included in the request, the service defaults
    #   to pagination with a maximum of 10 results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListFlows` request with MaxResults set at
    #   5. The service returns the first batch of results (up to 5) and a
    #   `NextToken` value. To see the next batch of results, you can submit
    #   the `ListFlows` request a second time and specify the `NextToken`
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListFlowsRequest AWS API Documentation
    #
    class ListFlowsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flows
    #   A list of flow summaries.
    #   @return [Array<Types::ListedFlow>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListFlows` request with MaxResults set at
    #   5. The service returns the first batch of results (up to 5) and a
    #   `NextToken` value. To see the next batch of results, you can submit
    #   the `ListFlows` request a second time and specify the `NextToken`
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListFlowsResponse AWS API Documentation
    #
    class ListFlowsResponse < Struct.new(
      :flows,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_arn
    #   Filter the list results to display only the instances associated
    #   with the selected Gateway ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a ListInstances request with `MaxResults`
    #   set at 5. Although 20 items match your request, the service returns
    #   no more than the first 5 items. (The service also returns a
    #   `NextToken` value that you can use to fetch the next batch of
    #   results.)
    #
    #   The service might return fewer results than the `MaxResults` value.
    #   If `MaxResults` is not included in the request, the service defaults
    #   to pagination with a maximum of 10 results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListInstances` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5)
    #   and a `NextToken` value. To see the next batch of results, you can
    #   submit the `ListInstances` request a second time and specify the
    #   `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListGatewayInstancesRequest AWS API Documentation
    #
    class ListGatewayInstancesRequest < Struct.new(
      :filter_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   A list of instance summaries.
    #   @return [Array<Types::ListedGatewayInstance>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListInstances` request with MaxResults
    #   set at 5. The service returns the first batch of results (up to 5)
    #   and a `NextToken` value. To see the next batch of results, you can
    #   submit the `ListInstances` request a second time and specify the
    #   `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListGatewayInstancesResponse AWS API Documentation
    #
    class ListGatewayInstancesResponse < Struct.new(
      :instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListGateways` request with `MaxResults`
    #   set at 5. Although 20 items match your request, the service returns
    #   no more than the first 5 items. (The service also returns a
    #   `NextToken` value that you can use to fetch the next batch of
    #   results.)
    #
    #   The service might return fewer results than the `MaxResults` value.
    #   If `MaxResults` is not included in the request, the service defaults
    #   to pagination with a maximum of 10 results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListGateways` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5)
    #   and a `NextToken` value. To see the next batch of results, you can
    #   submit the `ListGateways` request a second time and specify the
    #   `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListGatewaysRequest AWS API Documentation
    #
    class ListGatewaysRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateways
    #   A list of gateway summaries.
    #   @return [Array<Types::ListedGateway>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListGateways` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5)
    #   and a `NextToken` value. To see the next batch of results, you can
    #   submit the `ListGateways` request a second time and specify the
    #   `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListGatewaysResponse AWS API Documentation
    #
    class ListGatewaysResponse < Struct.new(
      :gateways,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListOfferings` request with `MaxResults`
    #   set at 5. Although 20 items match your request, the service returns
    #   no more than the first 5 items. (The service also returns a
    #   `NextToken` value that you can use to fetch the next batch of
    #   results.)
    #
    #   The service might return fewer results than the `MaxResults` value.
    #   If `MaxResults` is not included in the request, the service defaults
    #   to pagination with a maximum of 10 results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListOfferings` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5)
    #   and a `NextToken` value. To see the next batch of results, you can
    #   submit the `ListOfferings` request a second time and specify the
    #   `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListOfferingsRequest AWS API Documentation
    #
    class ListOfferingsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListOfferings` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5)
    #   and a `NextToken` value. To see the next batch of results, you can
    #   submit the `ListOfferings` request a second time and specify the
    #   `NextToken` value.
    #   @return [String]
    #
    # @!attribute [rw] offerings
    #   A list of offerings that are available to this account in the
    #   current Amazon Web Services Region.
    #   @return [Array<Types::Offering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListOfferingsResponse AWS API Documentation
    #
    class ListOfferingsResponse < Struct.new(
      :next_token,
      :offerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListReservations` request with
    #   `MaxResults` set at 5. Although 20 items match your request, the
    #   service returns no more than the first 5 items. (The service also
    #   returns a NextToken value that you can use to fetch the next batch
    #   of results.)
    #
    #   The service might return fewer results than the `MaxResults` value.
    #   If `MaxResults` is not included in the request, the service defaults
    #   to pagination with a maximum of 10 results per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListReservations` request with
    #   `MaxResults` set at 5. The service returns the first batch of
    #   results (up to 5) and a `NextToken` value. To see the next batch of
    #   results, you can submit the `ListOfferings` request a second time
    #   and specify the `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListReservationsRequest AWS API Documentation
    #
    class ListReservationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListReservations` request with
    #   `MaxResults` set at 5. The service returns the first batch of
    #   results (up to 5) and a `NextToken` value. To see the next batch of
    #   results, you can submit the `ListReservations` request a second time
    #   and specify the `NextToken` value.
    #   @return [String]
    #
    # @!attribute [rw] reservations
    #   A list of all reservations that have been purchased by this account
    #   in the current Amazon Web Services Region.
    #   @return [Array<Types::Reservation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListReservationsResponse AWS API Documentation
    #
    class ListReservationsResponse < Struct.new(
      :next_token,
      :reservations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the MediaConnect
    #   resource for which to list the tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map from tag keys to values. Tag keys can have a maximum character
    #   length of 128 characters, and tag values can have a maximum length
    #   of 256 characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Displays details of the selected bridge.
    #
    # @!attribute [rw] bridge_arn
    #   The ARN of the bridge.
    #   @return [String]
    #
    # @!attribute [rw] bridge_state
    #   The state of the bridge.
    #   @return [String]
    #
    # @!attribute [rw] bridge_type
    #   The type of the bridge.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the bridge.
    #   @return [String]
    #
    # @!attribute [rw] placement_arn
    #   The ARN of the gateway associated with the bridge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListedBridge AWS API Documentation
    #
    class ListedBridge < Struct.new(
      :bridge_arn,
      :bridge_state,
      :bridge_type,
      :name,
      :placement_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entitlement that has been granted to you from other Amazon Web
    # Services accounts.
    #
    # @!attribute [rw] data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the
    #   subscriber.
    #   @return [Integer]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_name
    #   The name of the entitlement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListedEntitlement AWS API Documentation
    #
    class ListedEntitlement < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :entitlement_arn,
      :entitlement_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a flow, including its ARN, Availability Zone, and source
    # type.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone that the flow was created in.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of source. This value is either owned (originated somewhere
    #   other than an MediaConnect flow owned by another Amazon Web Services
    #   account) or entitled (originated at a MediaConnect flow owned by
    #   another Amazon Web Services account).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] maintenance
    #   The maintenance settings for the flow.
    #   @return [Types::Maintenance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListedFlow AWS API Documentation
    #
    class ListedFlow < Struct.new(
      :availability_zone,
      :description,
      :flow_arn,
      :name,
      :source_type,
      :status,
      :maintenance)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a gateway, including its name, ARN, and status.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_state
    #   The status of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListedGateway AWS API Documentation
    #
    class ListedGateway < Struct.new(
      :gateway_arn,
      :gateway_state,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an instance.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_instance_arn
    #   The Amazon Resource Name (ARN) of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The managed instance ID generated by the SSM install. This will
    #   begin with "mi-".
    #   @return [String]
    #
    # @!attribute [rw] instance_state
    #   The status of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListedGatewayInstance AWS API Documentation
    #
    class ListedGatewayInstance < Struct.new(
      :gateway_arn,
      :gateway_instance_arn,
      :instance_id,
      :instance_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maintenance setting of a flow.
    #
    # @!attribute [rw] maintenance_day
    #   A day of a week when the maintenance will happen. Use
    #   Monday/Tuesday/Wednesday/Thursday/Friday/Saturday/Sunday.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_deadline
    #   The Maintenance has to be performed before this deadline in ISO UTC
    #   format. Example: 2021-01-30T08:30:00Z.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_scheduled_date
    #   A scheduled date in ISO UTC format when the maintenance will happen.
    #   Use YYYY-MM-DD format. Example: 2021-01-30.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_start_hour
    #   UTC time when the maintenance will happen. Use 24-hour HH:MM format.
    #   Minutes must be 00. Example: 13:00. The default value is 02:00.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Maintenance AWS API Documentation
    #
    class Maintenance < Struct.new(
      :maintenance_day,
      :maintenance_deadline,
      :maintenance_scheduled_date,
      :maintenance_start_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # A media stream represents one component of your content, such as
    # video, audio, or ancillary data. After you add a media stream to your
    # flow, you can associate it with sources and outputs that use the ST
    # 2110 JPEG XS or CDI protocol.
    #
    # @!attribute [rw] attributes
    #   Attributes that are related to the media stream.
    #   @return [Types::MediaStreamAttributes]
    #
    # @!attribute [rw] clock_rate
    #   The sample rate for the stream. This value is measured in Hz.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description that can help you quickly identify what your media
    #   stream is used for.
    #   @return [String]
    #
    # @!attribute [rw] fmt
    #   The format type number (sometimes referred to as RTP payload type)
    #   of the media stream. MediaConnect assigns this value to the media
    #   stream. For ST 2110 JPEG XS outputs, you need to provide this value
    #   to the receiver.
    #   @return [Integer]
    #
    # @!attribute [rw] media_stream_id
    #   A unique identifier for the media stream.
    #   @return [Integer]
    #
    # @!attribute [rw] media_stream_name
    #   A name that helps you distinguish one media stream from another.
    #   @return [String]
    #
    # @!attribute [rw] media_stream_type
    #   The type of media stream.
    #   @return [String]
    #
    # @!attribute [rw] video_format
    #   The resolution of the video.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/MediaStream AWS API Documentation
    #
    class MediaStream < Struct.new(
      :attributes,
      :clock_rate,
      :description,
      :fmt,
      :media_stream_id,
      :media_stream_name,
      :media_stream_type,
      :video_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes that are related to the media stream.
    #
    # @!attribute [rw] fmtp
    #   The settings that you want to use to define the media stream.
    #   @return [Types::Fmtp]
    #
    # @!attribute [rw] lang
    #   The audio language, in a format that is recognized by the receiver.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/MediaStreamAttributes AWS API Documentation
    #
    class MediaStreamAttributes < Struct.new(
      :fmtp,
      :lang)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes that are related to the media stream.
    #
    # @!attribute [rw] fmtp
    #   The settings that you want to use to define the media stream.
    #   @return [Types::FmtpRequest]
    #
    # @!attribute [rw] lang
    #   The audio language, in a format that is recognized by the receiver.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/MediaStreamAttributesRequest AWS API Documentation
    #
    class MediaStreamAttributesRequest < Struct.new(
      :fmtp,
      :lang)
      SENSITIVE = []
      include Aws::Structure
    end

    # The media stream that is associated with the output, and the
    # parameters for that association.
    #
    # @!attribute [rw] destination_configurations
    #   The transport parameters that are associated with each outbound
    #   media stream.
    #   @return [Array<Types::DestinationConfiguration>]
    #
    # @!attribute [rw] encoding_name
    #   The format that was used to encode the data. For ancillary data
    #   streams, set the encoding name to smpte291. For audio streams, set
    #   the encoding name to pcm. For video, 2110 streams, set the encoding
    #   name to raw. For video, JPEG XS streams, set the encoding name to
    #   jxsv.
    #   @return [String]
    #
    # @!attribute [rw] encoding_parameters
    #   A collection of parameters that determine how MediaConnect will
    #   convert the content. These fields only apply to outputs on flows
    #   that have a CDI source.
    #   @return [Types::EncodingParameters]
    #
    # @!attribute [rw] media_stream_name
    #   The name of the media stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/MediaStreamOutputConfiguration AWS API Documentation
    #
    class MediaStreamOutputConfiguration < Struct.new(
      :destination_configurations,
      :encoding_name,
      :encoding_parameters,
      :media_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The media stream that you want to associate with the output, and the
    # parameters for that association.
    #
    # @!attribute [rw] destination_configurations
    #   The media streams that you want to associate with the output.
    #   @return [Array<Types::DestinationConfigurationRequest>]
    #
    # @!attribute [rw] encoding_name
    #   The format that will be used to encode the data. For ancillary data
    #   streams, set the encoding name to smpte291. For audio streams, set
    #   the encoding name to pcm. For video, 2110 streams, set the encoding
    #   name to raw. For video, JPEG XS streams, set the encoding name to
    #   jxsv.
    #   @return [String]
    #
    # @!attribute [rw] encoding_parameters
    #   A collection of parameters that determine how MediaConnect will
    #   convert the content. These fields only apply to outputs on flows
    #   that have a CDI source.
    #   @return [Types::EncodingParametersRequest]
    #
    # @!attribute [rw] media_stream_name
    #   The name of the media stream that is associated with the output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/MediaStreamOutputConfigurationRequest AWS API Documentation
    #
    class MediaStreamOutputConfigurationRequest < Struct.new(
      :destination_configurations,
      :encoding_name,
      :encoding_parameters,
      :media_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The media stream that is associated with the source, and the
    # parameters for that association.
    #
    # @!attribute [rw] encoding_name
    #   The format that was used to encode the data. For ancillary data
    #   streams, set the encoding name to smpte291. For audio streams, set
    #   the encoding name to pcm. For video, 2110 streams, set the encoding
    #   name to raw. For video, JPEG XS streams, set the encoding name to
    #   jxsv.
    #   @return [String]
    #
    # @!attribute [rw] input_configurations
    #   The media streams that you want to associate with the source.
    #   @return [Array<Types::InputConfiguration>]
    #
    # @!attribute [rw] media_stream_name
    #   A name that helps you distinguish one media stream from another.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/MediaStreamSourceConfiguration AWS API Documentation
    #
    class MediaStreamSourceConfiguration < Struct.new(
      :encoding_name,
      :input_configurations,
      :media_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The media stream that you want to associate with the source, and the
    # parameters for that association.
    #
    # @!attribute [rw] encoding_name
    #   The format that was used to encode the data. For ancillary data
    #   streams, set the encoding name to smpte291. For audio streams, set
    #   the encoding name to pcm. For video, 2110 streams, set the encoding
    #   name to raw. For video, JPEG XS streams, set the encoding name to
    #   jxsv.
    #   @return [String]
    #
    # @!attribute [rw] input_configurations
    #   The media streams that you want to associate with the source.
    #   @return [Array<Types::InputConfigurationRequest>]
    #
    # @!attribute [rw] media_stream_name
    #   The name of the media stream.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/MediaStreamSourceConfigurationRequest AWS API Documentation
    #
    class MediaStreamSourceConfigurationRequest < Struct.new(
      :encoding_name,
      :input_configurations,
      :media_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an error message.
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The specific error message that MediaConnect returns to help you
    #   understand the reason that the request did not succeed.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/MessageDetail AWS API Documentation
    #
    class MessageDetail < Struct.new(
      :code,
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Messages that provide the state of the flow.
    #
    # @!attribute [rw] errors
    #   A list of errors that might have been generated from processes on
    #   this flow.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Messages AWS API Documentation
    #
    class Messages < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for source monitoring.
    #
    # @!attribute [rw] thumbnail_state
    #   Indicates whether thumbnails are enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] audio_monitoring_settings
    #   Contains the settings for audio stream metrics monitoring.
    #   @return [Array<Types::AudioMonitoringSetting>]
    #
    # @!attribute [rw] content_quality_analysis_state
    #   Indicates whether content quality analysis is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] video_monitoring_settings
    #   Contains the settings for video stream metrics monitoring.
    #   @return [Array<Types::VideoMonitoringSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/MonitoringConfig AWS API Documentation
    #
    class MonitoringConfig < Struct.new(
      :thumbnail_state,
      :audio_monitoring_settings,
      :content_quality_analysis_state,
      :video_monitoring_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings related to the multicast source.
    #
    # @!attribute [rw] multicast_source_ip
    #   The IP address of the source for source-specific multicast (SSM).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/MulticastSourceSettings AWS API Documentation
    #
    class MulticastSourceSettings < Struct.new(
      :multicast_source_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration settings for NDI outputs. Required when
    # the flow includes NDI outputs.
    #
    # @!attribute [rw] ndi_state
    #   A setting that controls whether NDI outputs can be used in the flow.
    #   Must be ENABLED to add NDI outputs. Default is DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] machine_name
    #   A prefix for the names of the NDI sources that the flow creates. If
    #   a custom name isn't specified, MediaConnect generates a unique
    #   12-character ID as the prefix.
    #   @return [String]
    #
    # @!attribute [rw] ndi_discovery_servers
    #   A list of up to three NDI discovery server configurations. While not
    #   required by the API, this configuration is necessary for NDI
    #   functionality to work properly.
    #   @return [Array<Types::NdiDiscoveryServerConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/NdiConfig AWS API Documentation
    #
    class NdiConfig < Struct.new(
      :ndi_state,
      :machine_name,
      :ndi_discovery_servers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration settings for individual NDI discovery
    # servers. A maximum of 3 servers is allowed.
    #
    # @!attribute [rw] discovery_server_address
    #   The unique network address of the NDI discovery server.
    #   @return [String]
    #
    # @!attribute [rw] discovery_server_port
    #   The port for the NDI discovery server. Defaults to 5959 if a custom
    #   port isn't specified.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_interface_adapter
    #   The identifier for the Virtual Private Cloud (VPC) network interface
    #   used by the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/NdiDiscoveryServerConfig AWS API Documentation
    #
    class NdiDiscoveryServerConfig < Struct.new(
      :discovery_server_address,
      :discovery_server_port,
      :vpc_interface_adapter)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the resources in the request does not exist in the
    # system.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A savings plan that reserves a certain amount of outbound bandwidth
    # usage at a discounted rate each month over a period of time.
    #
    # @!attribute [rw] currency_code
    #   The type of currency that is used for billing. The currencyCode used
    #   for all reservations is US dollars.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The length of time that your reservation would be active.
    #   @return [Integer]
    #
    # @!attribute [rw] duration_units
    #   The unit of measurement for the duration of the offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_arn
    #   The Amazon Resource Name (ARN) that MediaConnect assigns to the
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_description
    #   A description of the offering.
    #   @return [String]
    #
    # @!attribute [rw] price_per_unit
    #   The cost of a single unit. This value, in combination with
    #   priceUnits, makes up the rate.
    #   @return [String]
    #
    # @!attribute [rw] price_units
    #   The unit of measurement that is used for billing. This value, in
    #   combination with pricePerUnit, makes up the rate.
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   A definition of the amount of outbound bandwidth that you would be
    #   reserving if you purchase the offering.
    #   @return [Types::ResourceSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Offering AWS API Documentation
    #
    class Offering < Struct.new(
      :currency_code,
      :duration,
      :duration_units,
      :offering_arn,
      :offering_description,
      :price_per_unit,
      :price_units,
      :resource_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for an output.
    #
    # @!attribute [rw] data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the
    #   subscriber.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the output.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The address where you want to send the output.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of key used for the encryption. If no keyType is provided,
    #   the service will use the default setting (static-key).
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement on the originator''s flow. This value
    #   is relevant only on entitled flows.
    #   @return [String]
    #
    # @!attribute [rw] listener_address
    #   The IP address that the receiver requires in order to establish a
    #   connection with the flow. For public networking, the ListenerAddress
    #   is represented by the elastic IP address of the flow. For private
    #   networking, the ListenerAddress is represented by the elastic
    #   network interface IP address of the VPC. This field applies only to
    #   outputs that use the Zixi pull or SRT listener protocol.
    #   @return [String]
    #
    # @!attribute [rw] media_live_input_arn
    #   The input ARN of the MediaLive channel. This parameter is relevant
    #   only for outputs that were added by creating a MediaLive input.
    #   @return [String]
    #
    # @!attribute [rw] media_stream_output_configurations
    #   The configuration for each media stream that is associated with the
    #   output.
    #   @return [Array<Types::MediaStreamOutputConfiguration>]
    #
    # @!attribute [rw] name
    #   The name of the output. This value must be unique within the current
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] output_arn
    #   The ARN of the output.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port to use when content is distributed to this output.
    #   @return [Integer]
    #
    # @!attribute [rw] transport
    #   Attributes related to the transport stream that are used in the
    #   output.
    #   @return [Types::Transport]
    #
    # @!attribute [rw] vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @!attribute [rw] bridge_arn
    #   The ARN of the bridge added to this output.
    #   @return [String]
    #
    # @!attribute [rw] bridge_ports
    #   The bridge output ports currently in use.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] output_status
    #   An indication of whether the output is transmitting data or not.
    #   @return [String]
    #
    # @!attribute [rw] peer_ip_address
    #   The IP address of the device that is currently receiving content
    #   from this output.
    #
    #   <note markdown="1"> * For outputs that use protocols where you specify the destination
    #     (such as SRT Caller or Zixi Push), this value matches the
    #     configured destination address.
    #
    #   * For outputs that use listener protocols (such as SRT Listener),
    #     this value shows the address of the connected receiver.
    #
    #   * Peer IP addresses aren't available for entitlements, managed
    #     MediaLive outputs, NDI outputs, and CDI/ST2110 outputs.
    #
    #   * The peer IP address might not be visible for flows that haven't
    #     been started yet, or flows that were started before May 2025. In
    #     these cases, restart your flow to see the peer IP address.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Output AWS API Documentation
    #
    class Output < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :description,
      :destination,
      :encryption,
      :entitlement_arn,
      :listener_address,
      :media_live_input_arn,
      :media_stream_output_configurations,
      :name,
      :output_arn,
      :port,
      :transport,
      :vpc_interface_attachment,
      :bridge_arn,
      :bridge_ports,
      :output_status,
      :peer_ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] offering_arn
    #   The Amazon Resource Name (ARN) of the offering.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   The name that you want to use for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The date and time that you want the reservation to begin, in
    #   Coordinated Universal Time (UTC).
    #
    #   You can specify any date and time between 12:00am on the first day
    #   of the current month to the current time on today's date,
    #   inclusive. Specify the start in a 24-hour notation. Use the
    #   following format: `YYYY-MM-DDTHH:mm:SSZ`, where `T` and `Z` are
    #   literal characters. For example, to specify 11:30pm on March 5,
    #   2020, enter `2020-03-05T23:30:00Z`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/PurchaseOfferingRequest AWS API Documentation
    #
    class PurchaseOfferingRequest < Struct.new(
      :offering_arn,
      :reservation_name,
      :start)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reservation
    #   The details of the reservation that you just created when you
    #   purchased the offering.
    #   @return [Types::Reservation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/PurchaseOfferingResponse AWS API Documentation
    #
    class PurchaseOfferingResponse < Struct.new(
      :reservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] output_name
    #   The name of the bridge output that you want to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveBridgeOutputRequest AWS API Documentation
    #
    class RemoveBridgeOutputRequest < Struct.new(
      :bridge_arn,
      :output_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The ARN of the bridge from which the output was removed.
    #   @return [String]
    #
    # @!attribute [rw] output_name
    #   The name of the bridge output that was removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveBridgeOutputResponse AWS API Documentation
    #
    class RemoveBridgeOutputResponse < Struct.new(
      :bridge_arn,
      :output_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] source_name
    #   The name of the bridge source that you want to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveBridgeSourceRequest AWS API Documentation
    #
    class RemoveBridgeSourceRequest < Struct.new(
      :bridge_arn,
      :source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The ARN of the bridge from which the source was removed.
    #   @return [String]
    #
    # @!attribute [rw] source_name
    #   The name of the bridge source that was removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveBridgeSourceResponse AWS API Documentation
    #
    class RemoveBridgeSourceResponse < Struct.new(
      :bridge_arn,
      :source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] media_stream_name
    #   The name of the media stream that you want to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowMediaStreamRequest AWS API Documentation
    #
    class RemoveFlowMediaStreamRequest < Struct.new(
      :flow_arn,
      :media_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that was updated.
    #   @return [String]
    #
    # @!attribute [rw] media_stream_name
    #   The name of the media stream that was removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowMediaStreamResponse AWS API Documentation
    #
    class RemoveFlowMediaStreamResponse < Struct.new(
      :flow_arn,
      :media_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to remove
    #   an output from.
    #   @return [String]
    #
    # @!attribute [rw] output_arn
    #   The ARN of the output that you want to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowOutputRequest AWS API Documentation
    #
    class RemoveFlowOutputRequest < Struct.new(
      :flow_arn,
      :output_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that the output was removed from.
    #   @return [String]
    #
    # @!attribute [rw] output_arn
    #   The ARN of the output that was removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowOutputResponse AWS API Documentation
    #
    class RemoveFlowOutputResponse < Struct.new(
      :flow_arn,
      :output_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to remove a
    #   source from.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the source that you want to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowSourceRequest AWS API Documentation
    #
    class RemoveFlowSourceRequest < Struct.new(
      :flow_arn,
      :source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that the source was removed from.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the source that was removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowSourceResponse AWS API Documentation
    #
    class RemoveFlowSourceResponse < Struct.new(
      :flow_arn,
      :source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to remove a
    #   VPC interface from.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC interface that you want to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowVpcInterfaceRequest AWS API Documentation
    #
    class RemoveFlowVpcInterfaceRequest < Struct.new(
      :flow_arn,
      :vpc_interface_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that is associated with the VPC interface you
    #   removed.
    #   @return [String]
    #
    # @!attribute [rw] non_deleted_network_interface_ids
    #   IDs of network interfaces associated with the removed VPC interface
    #   that MediaConnect was unable to remove.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC interface that was removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowVpcInterfaceResponse AWS API Documentation
    #
    class RemoveFlowVpcInterfaceResponse < Struct.new(
      :flow_arn,
      :non_deleted_network_interface_ids,
      :vpc_interface_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pricing agreement for a discounted rate for a specific outbound
    # bandwidth that your MediaConnect account will use each month over a
    # specific time period. The discounted rate in the reservation applies
    # to outbound bandwidth for all flows from your account until your
    # account reaches the amount of bandwidth in your reservation. If you
    # use more outbound bandwidth than the agreed upon amount in a single
    # month, the overage is charged at the on-demand rate.
    #
    # @!attribute [rw] currency_code
    #   The type of currency that is used for billing. The currencyCode used
    #   for your reservation is US dollars.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The length of time that this reservation is active. MediaConnect
    #   defines this value in the offering.
    #   @return [Integer]
    #
    # @!attribute [rw] duration_units
    #   The unit of measurement for the duration of the reservation.
    #   MediaConnect defines this value in the offering.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   The day and time that this reservation expires. This value is
    #   calculated based on the start date and time that you set and the
    #   offering's duration.
    #   @return [String]
    #
    # @!attribute [rw] offering_arn
    #   The Amazon Resource Name (ARN) that MediaConnect assigns to the
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_description
    #   A description of the offering. MediaConnect defines this value in
    #   the offering.
    #   @return [String]
    #
    # @!attribute [rw] price_per_unit
    #   The cost of a single unit. This value, in combination with
    #   priceUnits, makes up the rate. MediaConnect defines this value in
    #   the offering.
    #   @return [String]
    #
    # @!attribute [rw] price_units
    #   The unit of measurement that is used for billing. This value, in
    #   combination with pricePerUnit, makes up the rate. MediaConnect
    #   defines this value in the offering.
    #   @return [String]
    #
    # @!attribute [rw] reservation_arn
    #   The Amazon Resource Name (ARN) that MediaConnect assigns to the
    #   reservation when you purchase an offering.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   The name that you assigned to the reservation when you purchased the
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] reservation_state
    #   The status of your reservation.
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   A definition of the amount of outbound bandwidth that you would be
    #   reserving if you purchase the offering. MediaConnect defines the
    #   values that make up the resourceSpecification in the offering.
    #   @return [Types::ResourceSpecification]
    #
    # @!attribute [rw] start
    #   The day and time that the reservation becomes active. You set this
    #   value when you purchase the offering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Reservation AWS API Documentation
    #
    class Reservation < Struct.new(
      :currency_code,
      :duration,
      :duration_units,
      :end,
      :offering_arn,
      :offering_description,
      :price_per_unit,
      :price_units,
      :reservation_arn,
      :reservation_name,
      :reservation_state,
      :resource_specification,
      :start)
      SENSITIVE = []
      include Aws::Structure
    end

    # A definition of what is being billed for, including the type and
    # amount.
    #
    # @!attribute [rw] reserved_bitrate
    #   The amount of outbound bandwidth that is discounted in the offering.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_type
    #   The type of resource and the unit that is being billed for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ResourceSpecification AWS API Documentation
    #
    class ResourceSpecification < Struct.new(
      :reserved_bitrate,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entitlement_arn
    #   The Amazon Resource Name (ARN) of the entitlement that you want to
    #   revoke.
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   The flow that you want to revoke an entitlement from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RevokeFlowEntitlementRequest AWS API Documentation
    #
    class RevokeFlowEntitlementRequest < Struct.new(
      :entitlement_arn,
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement that was revoked.
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that the entitlement was revoked from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RevokeFlowEntitlementResponse AWS API Documentation
    #
    class RevokeFlowEntitlementResponse < Struct.new(
      :entitlement_arn,
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is currently unavailable or busy.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source configuration for cloud flows receiving a stream from a
    # bridge.
    #
    # @!attribute [rw] bridge_arn
    #   The ARN of the bridge feeding this flow.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this bridge
    #   source.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/SetGatewayBridgeSourceRequest AWS API Documentation
    #
    class SetGatewayBridgeSourceRequest < Struct.new(
      :bridge_arn,
      :vpc_interface_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for the source of the flow.
    #
    # @!attribute [rw] decryption
    #   The type of encryption that is used on the content ingested from
    #   this source. Allowable encryption types: static-key.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] description
    #   A description for the source. This value is not used or seen outside
    #   of the current MediaConnect account.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement that allows you to subscribe to this
    #   flow. The entitlement is set by the flow originator, and the ARN is
    #   generated as part of the originator's flow.
    #   @return [String]
    #
    # @!attribute [rw] ingest_port
    #   The port that the flow will be listening on for incoming content.
    #   @return [Integer]
    #
    # @!attribute [rw] max_bitrate
    #   The smoothing max bitrate (in bps) for RIST, RTP, and RTP-FEC
    #   streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_sync_buffer
    #   The size of the buffer (in milliseconds) to use to sync incoming
    #   source data.
    #   @return [Integer]
    #
    # @!attribute [rw] media_stream_source_configurations
    #   The media streams that are associated with the source, and the
    #   parameters for those associations.
    #   @return [Array<Types::MediaStreamSourceConfigurationRequest>]
    #
    # @!attribute [rw] min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In
    #   streams that use the SRT protocol, this value that you set on your
    #   MediaConnect source or output represents the minimal potential
    #   latency of that connection. The latency of the stream is set to the
    #   highest number between the sender’s minimum latency and the
    #   receiver’s minimum latency.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the source.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol that is used by the source.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] sender_control_port
    #   The port that the flow uses to send outbound requests to initiate
    #   connection with the sender.
    #   @return [Integer]
    #
    # @!attribute [rw] sender_ip_address
    #   The IP address that the flow communicates with to initiate
    #   connection with the sender.
    #   @return [String]
    #
    # @!attribute [rw] source_listener_address
    #   Source IP or domain name for SRT-caller protocol.
    #   @return [String]
    #
    # @!attribute [rw] source_listener_port
    #   Source port for SRT-caller protocol.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi and SRT caller-based streams.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC interface to use for this source.
    #   @return [String]
    #
    # @!attribute [rw] whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute
    #   content to your source. These IP addresses should be in the form of
    #   a Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [String]
    #
    # @!attribute [rw] gateway_bridge_source
    #   The source configuration for cloud flows receiving a stream from a
    #   bridge.
    #   @return [Types::SetGatewayBridgeSourceRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/SetSourceRequest AWS API Documentation
    #
    class SetSourceRequest < Struct.new(
      :decryption,
      :description,
      :entitlement_arn,
      :ingest_port,
      :max_bitrate,
      :max_latency,
      :max_sync_buffer,
      :media_stream_source_configurations,
      :min_latency,
      :name,
      :protocol,
      :sender_control_port,
      :sender_ip_address,
      :source_listener_address,
      :source_listener_port,
      :stream_id,
      :vpc_interface_name,
      :whitelist_cidr,
      :gateway_bridge_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures settings for the `SilentAudio` metric.
    #
    # @!attribute [rw] state
    #   Indicates whether the `SilentAudio` metric is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] threshold_seconds
    #   Specifies the number of consecutive seconds of silence that triggers
    #   an event or alert.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/SilentAudio AWS API Documentation
    #
    class SilentAudio < Struct.new(
      :state,
      :threshold_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for the source of the flow.
    #
    # @!attribute [rw] data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the
    #   subscriber.
    #   @return [Integer]
    #
    # @!attribute [rw] decryption
    #   The type of encryption that is used on the content ingested from
    #   this source.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] description
    #   A description for the source. This value is not used or seen outside
    #   of the current MediaConnect account.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement that allows you to subscribe to content
    #   that comes from another Amazon Web Services account. The entitlement
    #   is set by the content originator and the ARN is generated as part of
    #   the originator's flow.
    #   @return [String]
    #
    # @!attribute [rw] ingest_ip
    #   The IP address that the flow will be listening on for incoming
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] ingest_port
    #   The port that the flow will be listening on for incoming content.
    #   @return [Integer]
    #
    # @!attribute [rw] media_stream_source_configurations
    #   The media streams that are associated with the source, and the
    #   parameters for those associations.
    #   @return [Array<Types::MediaStreamSourceConfiguration>]
    #
    # @!attribute [rw] name
    #   The name of the source.
    #   @return [String]
    #
    # @!attribute [rw] sender_control_port
    #   The IP address that the flow communicates with to initiate
    #   connection with the sender.
    #   @return [Integer]
    #
    # @!attribute [rw] sender_ip_address
    #   The port that the flow uses to send outbound requests to initiate
    #   connection with the sender.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the source.
    #   @return [String]
    #
    # @!attribute [rw] transport
    #   Attributes related to the transport stream that are used in the
    #   source.
    #   @return [Types::Transport]
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC interface that is used for this source.
    #   @return [String]
    #
    # @!attribute [rw] whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute
    #   content to your source. These IP addresses should be in the form of
    #   a Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [String]
    #
    # @!attribute [rw] gateway_bridge_source
    #   The source configuration for cloud flows receiving a stream from a
    #   bridge.
    #   @return [Types::GatewayBridgeSource]
    #
    # @!attribute [rw] peer_ip_address
    #   The IP address of the device that is currently sending content to
    #   this source.
    #
    #   <note markdown="1"> * For sources that use protocols where you specify the origin (such
    #     as SRT Caller), this value matches the configured origin address.
    #
    #   * For sources that use listener protocols (such as SRT Listener or
    #     RTP), this value shows the address of the connected sender.
    #
    #   * Peer IP addresses aren't available for entitlements and
    #     CDI/ST2110 sources.
    #
    #   * The peer IP address might not be visible for flows that haven't
    #     been started yet, or flows that were started before May 2025. In
    #     these cases, restart your flow to see the peer IP address.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Source AWS API Documentation
    #
    class Source < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :decryption,
      :description,
      :entitlement_arn,
      :ingest_ip,
      :ingest_port,
      :media_stream_source_configurations,
      :name,
      :sender_control_port,
      :sender_ip_address,
      :source_arn,
      :transport,
      :vpc_interface_name,
      :whitelist_cidr,
      :gateway_bridge_source,
      :peer_ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The priority you want to assign to a source. You can have a primary
    # stream and a backup stream or two equally prioritized streams.
    #
    # @!attribute [rw] primary_source
    #   The name of the source you choose as the primary source for this
    #   flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/SourcePriority AWS API Documentation
    #
    class SourcePriority < Struct.new(
      :primary_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StartFlowRequest AWS API Documentation
    #
    class StartFlowRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that you started.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow when the `StartFlow` process begins.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StartFlowResponse AWS API Documentation
    #
    class StartFlowResponse < Struct.new(
      :flow_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StopFlowRequest AWS API Documentation
    #
    class StopFlowRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that you stopped.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow when the `StopFlow` process begins.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StopFlowResponse AWS API Documentation
    #
    class StopFlowResponse < Struct.new(
      :flow_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the MediaConnect
    #   resource to which to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map from tag keys to values. Tag keys can have a maximum character
    #   length of 128 characters, and tag values can have a maximum length
    #   of 256 characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the thumbnail, including thumbnail base64 string,
    # timecode and the time when thumbnail was generated.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that DescribeFlowSourceThumbnail was performed
    #   on.
    #   @return [String]
    #
    # @!attribute [rw] thumbnail
    #   Thumbnail Base64 string.
    #   @return [String]
    #
    # @!attribute [rw] thumbnail_messages
    #   Status code and messages about the flow source thumbnail.
    #   @return [Array<Types::MessageDetail>]
    #
    # @!attribute [rw] timecode
    #   Timecode of thumbnail.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of when thumbnail was generated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ThumbnailDetails AWS API Documentation
    #
    class ThumbnailDetails < Struct.new(
      :flow_arn,
      :thumbnail,
      :thumbnail_messages,
      :timecode,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes related to the transport stream that are used in a source
    # or output.
    #
    # @!attribute [rw] cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output
    #   requests to this flow. These IP addresses should be in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_bitrate
    #   The smoothing max bitrate (in bps) for RIST, RTP, and RTP-FEC
    #   streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_sync_buffer
    #   The size of the buffer (in milliseconds) to use to sync incoming
    #   source data.
    #   @return [Integer]
    #
    # @!attribute [rw] min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In
    #   streams that use the SRT protocol, this value that you set on your
    #   MediaConnect source or output represents the minimal potential
    #   latency of that connection. The latency of the stream is set to the
    #   highest number between the sender’s minimum latency and the
    #   receiver’s minimum latency.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol that is used by the source or output.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] remote_id
    #   The remote ID for the Zixi-pull stream.
    #   @return [String]
    #
    # @!attribute [rw] sender_control_port
    #   The port that the flow uses to send outbound requests to initiate
    #   connection with the sender.
    #   @return [Integer]
    #
    # @!attribute [rw] sender_ip_address
    #   The IP address that the flow communicates with to initiate
    #   connection with the sender.
    #   @return [String]
    #
    # @!attribute [rw] smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
    #   streams.
    #   @return [Integer]
    #
    # @!attribute [rw] source_listener_address
    #   Source IP or domain name for SRT-caller protocol.
    #   @return [String]
    #
    # @!attribute [rw] source_listener_port
    #   Source port for SRT-caller protocol.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi and SRT caller-based streams.
    #   @return [String]
    #
    # @!attribute [rw] ndi_speed_hq_quality
    #   A quality setting for the NDI Speed HQ encoder.
    #   @return [Integer]
    #
    # @!attribute [rw] ndi_program_name
    #   A suffix for the names of the NDI sources that the flow creates. If
    #   a custom name isn't specified, MediaConnect uses the output name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Transport AWS API Documentation
    #
    class Transport < Struct.new(
      :cidr_allow_list,
      :max_bitrate,
      :max_latency,
      :max_sync_buffer,
      :min_latency,
      :protocol,
      :remote_id,
      :sender_control_port,
      :sender_ip_address,
      :smoothing_latency,
      :source_listener_address,
      :source_listener_port,
      :stream_id,
      :ndi_speed_hq_quality,
      :ndi_program_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of the transport stream in the current flow's source.
    #
    # @!attribute [rw] programs
    #   The list of transport stream programs in the current flow's source.
    #   @return [Array<Types::TransportStreamProgram>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/TransportMediaInfo AWS API Documentation
    #
    class TransportMediaInfo < Struct.new(
      :programs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of an elementary transport stream.
    #
    # @!attribute [rw] channels
    #   The number of channels in the audio stream.
    #   @return [Integer]
    #
    # @!attribute [rw] codec
    #   The codec used by the stream.
    #   @return [String]
    #
    # @!attribute [rw] frame_rate
    #   The frame rate used by the video stream.
    #   @return [String]
    #
    # @!attribute [rw] frame_resolution
    #   The frame resolution used by the video stream.
    #   @return [Types::FrameResolution]
    #
    # @!attribute [rw] pid
    #   The Packet ID (PID) as it is reported in the Program Map Table.
    #   @return [Integer]
    #
    # @!attribute [rw] sample_rate
    #   The sample rate used by the audio stream.
    #   @return [Integer]
    #
    # @!attribute [rw] sample_size
    #   The sample bit size used by the audio stream.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_type
    #   The Stream Type as it is reported in the Program Map Table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/TransportStream AWS API Documentation
    #
    class TransportStream < Struct.new(
      :channels,
      :codec,
      :frame_rate,
      :frame_resolution,
      :pid,
      :sample_rate,
      :sample_size,
      :stream_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of a single transport stream program.
    #
    # @!attribute [rw] pcr_pid
    #   The Program Clock Reference (PCR) Packet ID (PID) as it is reported
    #   in the Program Association Table.
    #   @return [Integer]
    #
    # @!attribute [rw] program_name
    #   The program name as it is reported in the Program Association Table.
    #   @return [String]
    #
    # @!attribute [rw] program_number
    #   The program number as it is reported in the Program Association
    #   Table.
    #   @return [Integer]
    #
    # @!attribute [rw] program_pid
    #   The program Packet ID (PID) as it is reported in the Program
    #   Association Table.
    #   @return [Integer]
    #
    # @!attribute [rw] streams
    #   The list of elementary transport streams in the program. The list
    #   includes video, audio, and data streams.
    #   @return [Array<Types::TransportStream>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/TransportStreamProgram AWS API Documentation
    #
    class TransportStreamProgram < Struct.new(
      :pcr_pid,
      :program_name,
      :program_number,
      :program_pid,
      :streams)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update the flow source of the bridge.
    #
    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) that identifies the MediaConnect
    #   resource from which to delete tags.
    #   @return [String]
    #
    # @!attribute [rw] flow_vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this source.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeFlowSourceRequest AWS API Documentation
    #
    class UpdateBridgeFlowSourceRequest < Struct.new(
      :flow_arn,
      :flow_vpc_interface_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update an existing network output.
    #
    # @!attribute [rw] ip_address
    #   The network output IP Address.
    #   @return [String]
    #
    # @!attribute [rw] network_name
    #   The network output's gateway network name.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The network output port.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The network output protocol.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The network output TTL.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeNetworkOutputRequest AWS API Documentation
    #
    class UpdateBridgeNetworkOutputRequest < Struct.new(
      :ip_address,
      :network_name,
      :port,
      :protocol,
      :ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update the network source of the bridge.
    #
    # @!attribute [rw] multicast_ip
    #   The network source multicast IP.
    #   @return [String]
    #
    # @!attribute [rw] multicast_source_settings
    #   The settings related to the multicast source.
    #   @return [Types::MulticastSourceSettings]
    #
    # @!attribute [rw] network_name
    #   The network source's gateway network name.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The network source port.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The network source protocol.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeNetworkSourceRequest AWS API Documentation
    #
    class UpdateBridgeNetworkSourceRequest < Struct.new(
      :multicast_ip,
      :multicast_source_settings,
      :network_name,
      :port,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] network_output
    #   The network of the bridge output.
    #   @return [Types::UpdateBridgeNetworkOutputRequest]
    #
    # @!attribute [rw] output_name
    #   Tname of the output that you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeOutputRequest AWS API Documentation
    #
    class UpdateBridgeOutputRequest < Struct.new(
      :bridge_arn,
      :network_output,
      :output_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The ARN of the bridge that was updated.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The bridge output that was updated.
    #   @return [Types::BridgeOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeOutputResponse AWS API Documentation
    #
    class UpdateBridgeOutputResponse < Struct.new(
      :bridge_arn,
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   TheAmazon Resource Name (ARN) of the bridge that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] egress_gateway_bridge
    #   A cloud-to-ground bridge. The content comes from an existing
    #   MediaConnect flow and is delivered to your premises.
    #   @return [Types::UpdateEgressGatewayBridgeRequest]
    #
    # @!attribute [rw] ingress_gateway_bridge
    #   A ground-to-cloud bridge. The content originates at your premises
    #   and is delivered to the cloud.
    #   @return [Types::UpdateIngressGatewayBridgeRequest]
    #
    # @!attribute [rw] source_failover_config
    #   The settings for source failover.
    #   @return [Types::UpdateFailoverConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeRequest AWS API Documentation
    #
    class UpdateBridgeRequest < Struct.new(
      :bridge_arn,
      :egress_gateway_bridge,
      :ingress_gateway_bridge,
      :source_failover_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge
    #   The bridge that was updated.
    #   @return [Types::Bridge]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeResponse AWS API Documentation
    #
    class UpdateBridgeResponse < Struct.new(
      :bridge)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] flow_source
    #   The name of the flow that you want to update.
    #   @return [Types::UpdateBridgeFlowSourceRequest]
    #
    # @!attribute [rw] network_source
    #   The network for the bridge source.
    #   @return [Types::UpdateBridgeNetworkSourceRequest]
    #
    # @!attribute [rw] source_name
    #   The name of the source that you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeSourceRequest AWS API Documentation
    #
    class UpdateBridgeSourceRequest < Struct.new(
      :bridge_arn,
      :flow_source,
      :network_source,
      :source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The ARN of the updated bridge source.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The updated bridge source.
    #   @return [Types::BridgeSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeSourceResponse AWS API Documentation
    #
    class UpdateBridgeSourceResponse < Struct.new(
      :bridge_arn,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to update
    #   the state of.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The desired state for the bridge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeStateRequest AWS API Documentation
    #
    class UpdateBridgeStateRequest < Struct.new(
      :bridge_arn,
      :desired_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_arn
    #   The ARN of the updated bridge.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The new state of the bridge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeStateResponse AWS API Documentation
    #
    class UpdateBridgeStateResponse < Struct.new(
      :bridge_arn,
      :desired_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update an existing egress-type bridge.
    #
    # @!attribute [rw] max_bitrate
    #   The maximum expected bitrate (in bps).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateEgressGatewayBridgeRequest AWS API Documentation
    #
    class UpdateEgressGatewayBridgeRequest < Struct.new(
      :max_bitrate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the encryption of the flow.
    #
    # @!attribute [rw] algorithm
    #   The type of algorithm that is used for the encryption (such as
    #   aes128, aes192, or aes256).
    #   @return [String]
    #
    # @!attribute [rw] constant_initialization_vector
    #   A 128-bit, 16-byte hex value represented by a 32-character string,
    #   to be used with the key for encrypting content. This parameter is
    #   not valid for static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The value of one of the devices that you configured with your
    #   digital rights management (DRM) platform key provider. This
    #   parameter is required for SPEKE encryption and is not valid for
    #   static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of key that is used for the encryption. If no keyType is
    #   provided, the service will use the default setting (static-key).
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region that the API Gateway proxy endpoint
    #   was created in. This parameter is required for SPEKE encryption and
    #   is not valid for static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   An identifier for the content. The service sends this value to the
    #   key server to identify the current endpoint. The resource ID is also
    #   known as the content ID. This parameter is required for SPEKE
    #   encryption and is not valid for static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that you created during setup (when you set up
    #   MediaConnect as a trusted entity).
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the secret that you created in Secrets Manager to store
    #   the encryption key. This parameter is required for static key
    #   encryption and is not valid for SPEKE encryption.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL from the API Gateway proxy that you set up to talk to your
    #   key server. This parameter is required for SPEKE encryption and is
    #   not valid for static key encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateEncryption AWS API Documentation
    #
    class UpdateEncryption < Struct.new(
      :algorithm,
      :constant_initialization_vector,
      :device_id,
      :key_type,
      :region,
      :resource_id,
      :role_arn,
      :secret_arn,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for source failover.
    #
    # @!attribute [rw] failover_mode
    #   The type of failover you choose for this flow. MERGE combines the
    #   source streams into a single stream, allowing graceful recovery from
    #   any single-source loss. FAILOVER allows switching between different
    #   streams.
    #   @return [String]
    #
    # @!attribute [rw] recovery_window
    #   Recovery window time to look for dash-7 packets.
    #   @return [Integer]
    #
    # @!attribute [rw] source_priority
    #   The priority you want to assign to a source. You can have a primary
    #   stream and a backup stream or two equally prioritized streams.
    #   @return [Types::SourcePriority]
    #
    # @!attribute [rw] state
    #   The state of source failover on the flow. If the state is inactive,
    #   the flow can have only one source. If the state is active, the flow
    #   can have one or two sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFailoverConfig AWS API Documentation
    #
    class UpdateFailoverConfig < Struct.new(
      :failover_mode,
      :recovery_window,
      :source_priority,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description of the entitlement. This description appears only on
    #   the MediaConnect console and will not be seen by the subscriber or
    #   end user.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of encryption that will be used on the output associated
    #   with this entitlement. Allowable encryption types: static-key,
    #   speke.
    #   @return [Types::UpdateEncryption]
    #
    # @!attribute [rw] entitlement_arn
    #   The Amazon Resource Name (ARN) of the entitlement that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_status
    #   An indication of whether you want to enable the entitlement to allow
    #   access, or disable it to stop streaming content to the subscriber’s
    #   flow temporarily. If you don’t specify the `entitlementStatus` field
    #   in your request, MediaConnect leaves the value unchanged.
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that is associated with the entitlement that you
    #   want to update.
    #   @return [String]
    #
    # @!attribute [rw] subscribers
    #   The Amazon Web Services account IDs that you want to share your
    #   content with. The receiving accounts (subscribers) will be allowed
    #   to create their own flow using your content as the source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowEntitlementRequest AWS API Documentation
    #
    class UpdateFlowEntitlementRequest < Struct.new(
      :description,
      :encryption,
      :entitlement_arn,
      :entitlement_status,
      :flow_arn,
      :subscribers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entitlement
    #   The new configuration of the entitlement that you updated.
    #   @return [Types::Entitlement]
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that this entitlement was granted on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowEntitlementResponse AWS API Documentation
    #
    class UpdateFlowEntitlementResponse < Struct.new(
      :entitlement,
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   The attributes that you want to assign to the media stream.
    #   @return [Types::MediaStreamAttributesRequest]
    #
    # @!attribute [rw] clock_rate
    #   The sample rate for the stream. This value in measured in kHz.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description that can help you quickly identify what your media
    #   stream is used for.
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that is associated with
    #   the media stream that you updated.
    #   @return [String]
    #
    # @!attribute [rw] media_stream_name
    #   The media stream that you updated.
    #   @return [String]
    #
    # @!attribute [rw] media_stream_type
    #   The type of media stream.
    #   @return [String]
    #
    # @!attribute [rw] video_format
    #   The resolution of the video.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowMediaStreamRequest AWS API Documentation
    #
    class UpdateFlowMediaStreamRequest < Struct.new(
      :attributes,
      :clock_rate,
      :description,
      :flow_arn,
      :media_stream_name,
      :media_stream_type,
      :video_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that is associated with the media stream that
    #   you updated.
    #   @return [String]
    #
    # @!attribute [rw] media_stream
    #   The media stream that you updated.
    #   @return [Types::MediaStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowMediaStreamResponse AWS API Documentation
    #
    class UpdateFlowMediaStreamResponse < Struct.new(
      :flow_arn,
      :media_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output
    #   requests to this flow. These IP addresses should be in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the output. This description appears only on the
    #   MediaConnect console and will not be seen by the end user.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The IP address where you want to send the output.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of key used for the encryption. If no `keyType` is
    #   provided, the service will use the default setting (static-key).
    #   Allowable encryption types: static-key.
    #   @return [Types::UpdateEncryption]
    #
    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that is associated with
    #   the output that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] media_stream_output_configurations
    #   The media streams that are associated with the output, and the
    #   parameters for those associations.
    #   @return [Array<Types::MediaStreamOutputConfigurationRequest>]
    #
    # @!attribute [rw] min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In
    #   streams that use the SRT protocol, this value that you set on your
    #   MediaConnect source or output represents the minimal potential
    #   latency of that connection. The latency of the stream is set to the
    #   highest number between the sender’s minimum latency and the
    #   receiver’s minimum latency.
    #   @return [Integer]
    #
    # @!attribute [rw] output_arn
    #   The ARN of the output that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port to use when content is distributed to this output.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol to use for the output.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] remote_id
    #   The remote ID for the Zixi-pull stream.
    #   @return [String]
    #
    # @!attribute [rw] sender_control_port
    #   The port that the flow uses to send outbound requests to initiate
    #   connection with the sender.
    #   @return [Integer]
    #
    # @!attribute [rw] sender_ip_address
    #   The IP address that the flow communicates with to initiate
    #   connection with the sender.
    #   @return [String]
    #
    # @!attribute [rw] smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
    #   streams.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi and SRT caller-based streams.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @!attribute [rw] output_status
    #   An indication of whether the output should transmit data or not. If
    #   you don't specify the `outputStatus` field in your request,
    #   MediaConnect leaves the value unchanged.
    #   @return [String]
    #
    # @!attribute [rw] ndi_program_name
    #   A suffix for the names of the NDI sources that the flow creates. If
    #   a custom name isn't specified, MediaConnect uses the output name.
    #   @return [String]
    #
    # @!attribute [rw] ndi_speed_hq_quality
    #   A quality setting for the NDI Speed HQ encoder.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowOutputRequest AWS API Documentation
    #
    class UpdateFlowOutputRequest < Struct.new(
      :cidr_allow_list,
      :description,
      :destination,
      :encryption,
      :flow_arn,
      :max_latency,
      :media_stream_output_configurations,
      :min_latency,
      :output_arn,
      :port,
      :protocol,
      :remote_id,
      :sender_control_port,
      :sender_ip_address,
      :smoothing_latency,
      :stream_id,
      :vpc_interface_attachment,
      :output_status,
      :ndi_program_name,
      :ndi_speed_hq_quality)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that is associated with the updated output.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The new settings of the output that you updated.
    #   @return [Types::Output]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowOutputResponse AWS API Documentation
    #
    class UpdateFlowOutputResponse < Struct.new(
      :flow_arn,
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] source_failover_config
    #   The settings for source failover.
    #   @return [Types::UpdateFailoverConfig]
    #
    # @!attribute [rw] maintenance
    #   The maintenance setting of the flow.
    #   @return [Types::UpdateMaintenance]
    #
    # @!attribute [rw] source_monitoring_config
    #   The settings for source monitoring.
    #   @return [Types::MonitoringConfig]
    #
    # @!attribute [rw] ndi_config
    #   Specifies the configuration settings for NDI outputs. Required when
    #   the flow includes NDI outputs.
    #   @return [Types::NdiConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowRequest AWS API Documentation
    #
    class UpdateFlowRequest < Struct.new(
      :flow_arn,
      :source_failover_config,
      :maintenance,
      :source_monitoring_config,
      :ndi_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow
    #   The updated flow.
    #   @return [Types::Flow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowResponse AWS API Documentation
    #
    class UpdateFlowResponse < Struct.new(
      :flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] decryption
    #   The type of encryption that is used on the content ingested from the
    #   source.
    #   @return [Types::UpdateEncryption]
    #
    # @!attribute [rw] description
    #   A description of the source. This description is not visible outside
    #   of the current Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_arn
    #   The Amazon Resource Name (ARN) of the entitlement that allows you to
    #   subscribe to the flow. The entitlement is set by the content
    #   originator, and the ARN is generated as part of the originator's
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] ingest_port
    #   The port that the flow listens on for incoming content. If the
    #   protocol of the source is Zixi, the port must be set to 2088.
    #   @return [Integer]
    #
    # @!attribute [rw] max_bitrate
    #   The maximum bitrate for RIST, RTP, and RTP-FEC streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_sync_buffer
    #   The size of the buffer (in milliseconds) to use to sync incoming
    #   source data.
    #   @return [Integer]
    #
    # @!attribute [rw] media_stream_source_configurations
    #   The media stream that is associated with the source, and the
    #   parameters for that association.
    #   @return [Array<Types::MediaStreamSourceConfigurationRequest>]
    #
    # @!attribute [rw] min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In
    #   streams that use the SRT protocol, this value that you set on your
    #   MediaConnect source or output represents the minimal potential
    #   latency of that connection. The latency of the stream is set to the
    #   highest number between the sender’s minimum latency and the
    #   receiver’s minimum latency.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol that the source uses to deliver the content to
    #   MediaConnect.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] sender_control_port
    #   The port that the flow uses to send outbound requests to initiate
    #   connection with the sender.
    #   @return [Integer]
    #
    # @!attribute [rw] sender_ip_address
    #   The IP address that the flow communicates with to initiate
    #   connection with the sender.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the source that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] source_listener_address
    #   The source IP or domain name for SRT-caller protocol.
    #   @return [String]
    #
    # @!attribute [rw] source_listener_port
    #   Source port for SRT-caller protocol.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi and SRT caller-based streams.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC interface that you want to send your output to.
    #   @return [String]
    #
    # @!attribute [rw] whitelist_cidr
    #   The range of IP addresses that are allowed to contribute content to
    #   your source. Format the IP addresses as a Classless Inter-Domain
    #   Routing (CIDR) block; for example, 10.0.0.0/16.
    #   @return [String]
    #
    # @!attribute [rw] gateway_bridge_source
    #   The source configuration for cloud flows receiving a stream from a
    #   bridge.
    #   @return [Types::UpdateGatewayBridgeSourceRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowSourceRequest AWS API Documentation
    #
    class UpdateFlowSourceRequest < Struct.new(
      :decryption,
      :description,
      :entitlement_arn,
      :flow_arn,
      :ingest_port,
      :max_bitrate,
      :max_latency,
      :max_sync_buffer,
      :media_stream_source_configurations,
      :min_latency,
      :protocol,
      :sender_control_port,
      :sender_ip_address,
      :source_arn,
      :source_listener_address,
      :source_listener_port,
      :stream_id,
      :vpc_interface_name,
      :whitelist_cidr,
      :gateway_bridge_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_arn
    #   The ARN of the flow that you was updated.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The details of the sources that are assigned to the flow.
    #   @return [Types::Source]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowSourceResponse AWS API Documentation
    #
    class UpdateFlowSourceResponse < Struct.new(
      :flow_arn,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source configuration for cloud flows receiving a stream from a
    # bridge.
    #
    # @!attribute [rw] bridge_arn
    #   The ARN of the bridge feeding this flow.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this bridge
    #   source.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateGatewayBridgeSourceRequest AWS API Documentation
    #
    class UpdateGatewayBridgeSourceRequest < Struct.new(
      :bridge_arn,
      :vpc_interface_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_placement
    #   The state of the instance. `ACTIVE` or `INACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] gateway_instance_arn
    #   The Amazon Resource Name (ARN) of the gateway instance that you want
    #   to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateGatewayInstanceRequest AWS API Documentation
    #
    class UpdateGatewayInstanceRequest < Struct.new(
      :bridge_placement,
      :gateway_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bridge_placement
    #   The state of the instance. `ACTIVE` or `INACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] gateway_instance_arn
    #   The ARN of the instance that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateGatewayInstanceResponse AWS API Documentation
    #
    class UpdateGatewayInstanceResponse < Struct.new(
      :bridge_placement,
      :gateway_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update an existing ingress-type bridge.
    #
    # @!attribute [rw] max_bitrate
    #   The maximum expected bitrate (in bps).
    #   @return [Integer]
    #
    # @!attribute [rw] max_outputs
    #   The maximum number of expected outputs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateIngressGatewayBridgeRequest AWS API Documentation
    #
    class UpdateIngressGatewayBridgeRequest < Struct.new(
      :max_bitrate,
      :max_outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update maintenance setting for a flow.
    #
    # @!attribute [rw] maintenance_day
    #   A day of a week when the maintenance will happen.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_scheduled_date
    #   A scheduled date in ISO UTC format when the maintenance will happen.
    #   Use YYYY-MM-DD format. Example: 2021-01-30.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_start_hour
    #   UTC time when the maintenance will happen. Use 24-hour HH:MM format.
    #   Minutes must be 00. Example: 13:00. The default value is 02:00.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateMaintenance AWS API Documentation
    #
    class UpdateMaintenance < Struct.new(
      :maintenance_day,
      :maintenance_scheduled_date,
      :maintenance_start_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration for video stream metrics monitoring.
    #
    # @!attribute [rw] black_frames
    #   Detects video frames that are black.
    #   @return [Types::BlackFrames]
    #
    # @!attribute [rw] frozen_frames
    #   Detects video frames that have not changed.
    #   @return [Types::FrozenFrames]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/VideoMonitoringSetting AWS API Documentation
    #
    class VideoMonitoringSetting < Struct.new(
      :black_frames,
      :frozen_frames)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a VPC source.
    #
    # @!attribute [rw] name
    #   Immutable and has to be a unique against other VpcInterfaces in this
    #   Flow.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_ids
    #   IDs of the network interfaces created in customer's account by
    #   MediaConnect.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_interface_type
    #   The type of network interface.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   A role Arn MediaConnect can assume to create ENIs in your account.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   Security Group IDs to be used on ENI.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   Subnet must be in the AZ of the Flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/VpcInterface AWS API Documentation
    #
    class VpcInterface < Struct.new(
      :name,
      :network_interface_ids,
      :network_interface_type,
      :role_arn,
      :security_group_ids,
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for attaching a VPC interface to an resource.
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC interface to use for this resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/VpcInterfaceAttachment AWS API Documentation
    #
    class VpcInterfaceAttachment < Struct.new(
      :vpc_interface_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the VPC interfaces that you want to add to the flow.
    #
    # @!attribute [rw] name
    #   The name for the VPC interface. This name must be unique within the
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_type
    #   The type of network interface.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that you created when you
    #   set up MediaConnect as a trusted service.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A virtual firewall to control inbound and outbound traffic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet IDs that you want to use for your VPC interface. A range
    #   of IP addresses in your VPC. When you create your VPC, you specify a
    #   range of IPv4 addresses for the VPC in the form of a Classless
    #   Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16. This is
    #   the primary CIDR block for your VPC. When you create a subnet for
    #   your VPC, you specify the CIDR block for the subnet, which is a
    #   subset of the VPC CIDR block. The subnets that you use across all
    #   VPC interfaces on the flow must be in the same Availability Zone as
    #   the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/VpcInterfaceRequest AWS API Documentation
    #
    class VpcInterfaceRequest < Struct.new(
      :name,
      :network_interface_type,
      :role_arn,
      :security_group_ids,
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

