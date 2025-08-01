# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::StorageGateway
  module Types

    # A JSON object containing one or more of the following fields:
    #
    # * ActivateGatewayInput$ActivationKey
    #
    # * ActivateGatewayInput$GatewayName
    #
    # * ActivateGatewayInput$GatewayRegion
    #
    # * ActivateGatewayInput$GatewayTimezone
    #
    # * ActivateGatewayInput$GatewayType
    #
    # * ActivateGatewayInput$MediumChangerType
    #
    # * ActivateGatewayInput$TapeDriveType
    #
    # @!attribute [rw] activation_key
    #   Your gateway activation key. You can obtain the activation key by
    #   sending an HTTP GET request with redirects enabled to the gateway IP
    #   address (port 80). The redirect URL returned in the response
    #   provides you the activation key for your gateway in the query string
    #   parameter `activationKey`. It may also include other
    #   activation-related parameters, however, these are merely defaults --
    #   the arguments you pass to the `ActivateGateway` API call determine
    #   the actual configuration of your gateway.
    #
    #   For more information, see [Getting activation key][1] in the
    #   *Storage Gateway User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name you configured for your gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_timezone
    #   A value that indicates the time zone you want to set for the
    #   gateway. The time zone is of the format "GMT", "GMT-hr:mm", or
    #   "GMT+hr:mm". For example, GMT indicates Greenwich Mean Time
    #   without any offset. GMT-4:00 indicates the time is 4 hours behind
    #   GMT. GMT+2:00 indicates the time is 2 hours ahead of GMT. The time
    #   zone is used, for example, for scheduling snapshots and your
    #   gateway's maintenance schedule.
    #   @return [String]
    #
    # @!attribute [rw] gateway_region
    #   A value that indicates the Amazon Web Services Region where you want
    #   to store your data. The gateway Amazon Web Services Region specified
    #   must be the same Amazon Web Services Region as the Amazon Web
    #   Services Region in your `Host` header in the request. For more
    #   information about available Amazon Web Services Regions and
    #   endpoints for Storage Gateway, see [ Storage Gateway endpoints and
    #   quotas][1] in the *Amazon Web Services General Reference*.
    #
    #   Valid Values: See [ Storage Gateway endpoints and quotas][1] in the
    #   *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/sg.html
    #   @return [String]
    #
    # @!attribute [rw] gateway_type
    #   A value that defines the type of gateway to activate. The type
    #   specified is critical to all later functions of the gateway and
    #   cannot be changed after activation. The default value is `CACHED`.
    #
    #   Amazon FSx File Gateway is no longer available to new customers.
    #   Existing customers of FSx File Gateway can continue to use the
    #   service normally. For capabilities similar to FSx File Gateway,
    #   visit [this blog post][1].
    #
    #   Valid Values: `STORED` \| `CACHED` \| `VTL` \| `FILE_S3` \|
    #   `FILE_FSX_SMB`
    #
    #
    #
    #   [1]: https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/
    #   @return [String]
    #
    # @!attribute [rw] tape_drive_type
    #   The value that indicates the type of tape drive to use for tape
    #   gateway. This field is optional.
    #
    #   Valid Values: `IBM-ULT3580-TD5`
    #   @return [String]
    #
    # @!attribute [rw] medium_changer_type
    #   The value that indicates the type of medium changer to use for tape
    #   gateway. This field is optional.
    #
    #   Valid Values: `STK-L700` \| `AWS-Gateway-VTL` \| `IBM-03584L32-0402`
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that you can assign to the gateway. Each tag
    #   is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   that can be represented in UTF-8 format, and the following special
    #   characters: + - = . \_ : / @. The maximum length of a tag's key is
    #   128 characters, and the maximum length for a tag's value is 256
    #   characters.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ActivateGatewayInput AWS API Documentation
    #
    class ActivateGatewayInput < Struct.new(
      :activation_key,
      :gateway_name,
      :gateway_timezone,
      :gateway_region,
      :gateway_type,
      :tape_drive_type,
      :medium_changer_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Storage Gateway returns the Amazon Resource Name (ARN) of the
    # activated gateway. It is a string made of information such as your
    # account, gateway name, and Amazon Web Services Region. This ARN is
    # used to reference the gateway in other API operations as well as
    # resource-based authorization.
    #
    # <note markdown="1"> For gateways activated prior to September 02, 2015, the gateway ARN
    # contains the gateway name rather than the gateway ID. Changing the
    # name of the gateway has no effect on the gateway ARN.
    #
    #  </note>
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ActivateGatewayOutput AWS API Documentation
    #
    class ActivateGatewayOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   An array of strings that identify disks that are to be configured as
    #   working storage. Each string has a minimum length of 1 and maximum
    #   length of 300. You can get the disk IDs from the ListLocalDisks API.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddCacheInput AWS API Documentation
    #
    class AddCacheInput < Struct.new(
      :gateway_arn,
      :disk_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddCacheOutput AWS API Documentation
    #
    class AddCacheOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # AddTagsToResourceInput
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to add tags
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair that represents the tag you want to add to the
    #   resource. The value can be an empty string.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @. The maximum length of a tag's key is 128
    #   characters, and the maximum length for a tag's value is 256.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddTagsToResourceInput AWS API Documentation
    #
    class AddTagsToResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # AddTagsToResourceOutput
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to add tags
    #   to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddTagsToResourceOutput AWS API Documentation
    #
    class AddTagsToResourceOutput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   An array of strings that identify disks that are to be configured as
    #   working storage. Each string has a minimum length of 1 and maximum
    #   length of 300. You can get the disk IDs from the ListLocalDisks API.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddUploadBufferInput AWS API Documentation
    #
    class AddUploadBufferInput < Struct.new(
      :gateway_arn,
      :disk_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddUploadBufferOutput AWS API Documentation
    #
    class AddUploadBufferOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * AddWorkingStorageInput$DiskIds
    #
    # ^
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   An array of strings that identify disks that are to be configured as
    #   working storage. Each string has a minimum length of 1 and maximum
    #   length of 300. You can get the disk IDs from the ListLocalDisks API.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddWorkingStorageInput AWS API Documentation
    #
    class AddWorkingStorageInput < Struct.new(
      :gateway_arn,
      :disk_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # for which working storage was configured.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddWorkingStorageOutput AWS API Documentation
    #
    class AddWorkingStorageOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tape_arn
    #   The unique Amazon Resource Name (ARN) of the virtual tape that you
    #   want to add to the tape pool.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The ID of the pool that you want to add your tape to for archiving.
    #   The tape in this pool is archived in the S3 storage class that is
    #   associated with the pool. When you use your backup application to
    #   eject the tape, the tape is archived directly into the storage class
    #   (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the
    #   pool.
    #   @return [String]
    #
    # @!attribute [rw] bypass_governance_retention
    #   Set permissions to bypass governance retention. If the lock type of
    #   the archived tape is `Governance`, the tape's archived age is not
    #   older than `RetentionLockInDays`, and the user does not already have
    #   `BypassGovernanceRetention`, setting this to TRUE enables the user
    #   to bypass the retention lock. This parameter is set to true by
    #   default for calls from the console.
    #
    #   Valid values: `TRUE` \| `FALSE`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AssignTapePoolInput AWS API Documentation
    #
    class AssignTapePoolInput < Struct.new(
      :tape_arn,
      :pool_id,
      :bypass_governance_retention)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tape_arn
    #   The unique Amazon Resource Names (ARN) of the virtual tape that was
    #   added to the tape pool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AssignTapePoolOutput AWS API Documentation
    #
    class AssignTapePoolOutput < Struct.new(
      :tape_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The user name of the user credential that has permission to access
    #   the root share D$ of the Amazon FSx file system. The user account
    #   must belong to the Amazon FSx delegated admin user group.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of the user credential.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique string value that you supply that is used by the FSx File
    #   Gateway to ensure idempotent file system association creation.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] location_arn
    #   The Amazon Resource Name (ARN) of the Amazon FSx file system to
    #   associate with the FSx File Gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that can be assigned to the file system
    #   association. Each tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for the audit
    #   logs.
    #   @return [String]
    #
    # @!attribute [rw] cache_attributes
    #   The refresh cache information for the file share or FSx file
    #   systems.
    #   @return [Types::CacheAttributes]
    #
    # @!attribute [rw] endpoint_network_configuration
    #   Specifies the network configuration information for the gateway
    #   associated with the Amazon FSx file system.
    #
    #   <note markdown="1"> If multiple file systems are associated with this gateway, this
    #   parameter's `IpAddresses` field is required.
    #
    #    </note>
    #   @return [Types::EndpointNetworkConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AssociateFileSystemInput AWS API Documentation
    #
    class AssociateFileSystemInput < Struct.new(
      :user_name,
      :password,
      :client_token,
      :gateway_arn,
      :location_arn,
      :tags,
      :audit_destination_arn,
      :cache_attributes,
      :endpoint_network_configuration)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] file_system_association_arn
    #   The ARN of the newly created file system association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AssociateFileSystemOutput AWS API Documentation
    #
    class AssociateFileSystemOutput < Struct.new(
      :file_system_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # AttachVolumeInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway that you want to
    #   attach the volume to.
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The name of the iSCSI target used by an initiator to connect to a
    #   volume and used as a suffix for the target ARN. For example,
    #   specifying `TargetName` as *myvolume* results in the target ARN of
    #   `arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume`.
    #   The target name must be unique across all volumes on a gateway.
    #
    #   If you don't specify a value, Storage Gateway uses the value that
    #   was previously used for this volume as the new target name.
    #   @return [String]
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume to attach to the
    #   specified gateway.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface of the gateway on which to expose the iSCSI
    #   target. Accepts IPv4 and IPv6 addresses. Use
    #   DescribeGatewayInformation to get a list of the network interfaces
    #   available on a gateway.
    #
    #   Valid Values: A valid IP address.
    #   @return [String]
    #
    # @!attribute [rw] disk_id
    #   The unique device ID or other distinguishing data that identifies
    #   the local disk used to create the volume. This value is only
    #   required when you are attaching a stored volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AttachVolumeInput AWS API Documentation
    #
    class AttachVolumeInput < Struct.new(
      :gateway_arn,
      :target_name,
      :volume_arn,
      :network_interface_id,
      :disk_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # AttachVolumeOutput
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume that was attached to
    #   the gateway.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the volume target, which includes
    #   the iSCSI name for the initiator that was used to connect to the
    #   target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AttachVolumeOutput AWS API Documentation
    #
    class AttachVolumeOutput < Struct.new(
      :volume_arn,
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the gateway's automatic tape creation policies,
    # including the automatic tape creation rules and the gateway that is
    # using the policies.
    #
    # @!attribute [rw] automatic_tape_creation_rules
    #   An automatic tape creation policy consists of a list of automatic
    #   tape creation rules. This returns the rules that determine when and
    #   how to automatically create new tapes.
    #   @return [Array<Types::AutomaticTapeCreationRule>]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AutomaticTapeCreationPolicyInfo AWS API Documentation
    #
    class AutomaticTapeCreationPolicyInfo < Struct.new(
      :automatic_tape_creation_rules,
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An automatic tape creation policy consists of automatic tape creation
    # rules where each rule defines when and how to create new tapes. For
    # more information about automatic tape creation, see [Creating Tapes
    # Automatically][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedCreateTapes.html#CreateTapesAutomatically
    #
    # @!attribute [rw] tape_barcode_prefix
    #   A prefix that you append to the barcode of the virtual tape that you
    #   are creating. This prefix makes the barcode unique.
    #
    #   <note markdown="1"> The prefix must be 1-4 characters in length and must be one of the
    #   uppercase letters from A to Z.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The ID of the pool that you want to add your tape to for archiving.
    #   The tape in this pool is archived in the Amazon S3 storage class
    #   that is associated with the pool. When you use your backup
    #   application to eject the tape, the tape is archived directly into
    #   the storage class (S3 Glacier or S3 Glacier Deep Archive) that
    #   corresponds to the pool.
    #   @return [String]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the virtual tape capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_num_tapes
    #   The minimum number of available virtual tapes that the gateway
    #   maintains at all times. If the number of tapes on the gateway goes
    #   below this value, the gateway creates as many new tapes as are
    #   needed to have `MinimumNumTapes` on the gateway. For more
    #   information about automatic tape creation, see [Creating Tapes
    #   Automatically][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedCreateTapes.html#CreateTapesAutomatically
    #   @return [Integer]
    #
    # @!attribute [rw] worm
    #   Set to `true` to indicate that tapes are to be archived as
    #   write-once-read-many (WORM). Set to `false` when WORM is not enabled
    #   for tapes.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AutomaticTapeCreationRule AWS API Documentation
    #
    class AutomaticTapeCreationRule < Struct.new(
      :tape_barcode_prefix,
      :pool_id,
      :tape_size_in_bytes,
      :minimum_num_tapes,
      :worm)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a bandwidth rate limit interval for a gateway. A bandwidth
    # rate limit schedule consists of one or more bandwidth rate limit
    # intervals. A bandwidth rate limit interval defines a period of time on
    # one or more days of the week, during which bandwidth rate limits are
    # specified for uploading, downloading, or both.
    #
    # <note markdown="1"> FSx File Gateway does not support this feature.
    #
    #  </note>
    #
    # @!attribute [rw] start_hour_of_day
    #   The hour of the day to start the bandwidth rate limit interval.
    #   @return [Integer]
    #
    # @!attribute [rw] start_minute_of_hour
    #   The minute of the hour to start the bandwidth rate limit interval.
    #   The interval begins at the start of that minute. To begin an
    #   interval exactly at the start of the hour, use the value `0`.
    #   @return [Integer]
    #
    # @!attribute [rw] end_hour_of_day
    #   The hour of the day to end the bandwidth rate limit interval.
    #   @return [Integer]
    #
    # @!attribute [rw] end_minute_of_hour
    #   The minute of the hour to end the bandwidth rate limit interval.
    #
    #   The bandwidth rate limit interval ends at the end of the minute. To
    #   end an interval at the end of an hour, use the value `59`.
    #   @return [Integer]
    #
    # @!attribute [rw] days_of_week
    #   The days of the week component of the bandwidth rate limit interval,
    #   represented as ordinal numbers from 0 to 6, where 0 represents
    #   Sunday and 6 represents Saturday.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] average_upload_rate_limit_in_bits_per_sec
    #   The average upload rate limit component of the bandwidth rate limit
    #   interval, in bits per second. This field does not appear in the
    #   response if the upload rate limit is not set.
    #
    #   <note markdown="1"> For Tape Gateway and Volume Gateway, the minimum value is `51200`.
    #
    #    This field is required for S3 File Gateway, and the minimum value is
    #   `104857600`.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] average_download_rate_limit_in_bits_per_sec
    #   The average download rate limit component of the bandwidth rate
    #   limit interval, in bits per second. This field does not appear in
    #   the response if the download rate limit is not set.
    #
    #   <note markdown="1"> S3 File Gateway does not support this feature.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/BandwidthRateLimitInterval AWS API Documentation
    #
    class BandwidthRateLimitInterval < Struct.new(
      :start_hour_of_day,
      :start_minute_of_hour,
      :end_hour_of_day,
      :end_minute_of_hour,
      :days_of_week,
      :average_upload_rate_limit_in_bits_per_sec,
      :average_download_rate_limit_in_bits_per_sec)
      SENSITIVE = []
      include Aws::Structure
    end

    # The refresh cache information for the file share or FSx file systems.
    #
    # @!attribute [rw] cache_stale_timeout_in_seconds
    #   Refreshes a file share's cache by using Time To Live (TTL). TTL is
    #   the length of time since the last refresh after which access to the
    #   directory would cause the file gateway to first refresh that
    #   directory's contents from the Amazon S3 bucket or Amazon FSx file
    #   system. The TTL duration is in seconds.
    #
    #   Valid Values:0, 300 to 2,592,000 seconds (5 minutes to 30 days)
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CacheAttributes AWS API Documentation
    #
    class CacheAttributes < Struct.new(
      :cache_stale_timeout_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of filter parameters and associated values that determine which
    # files are included or excluded from a cache report created by a
    # `StartCacheReport` request. Multiple instances of the same filter
    # parameter are combined with an OR operation, while different
    # parameters are combined with an AND operation.
    #
    # @!attribute [rw] name
    #   The parameter name for a filter that determines which files are
    #   included or excluded from a cache report.
    #
    #   **Valid Names:**
    #
    #   UploadFailureReason \| UploadState
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The parameter value for a filter that determines which files are
    #   included or excluded from a cache report.
    #
    #   **Valid `UploadFailureReason` Values:**
    #
    #   `InaccessibleStorageClass` \| `InvalidObjectState` \|
    #   `ObjectMissing` \| `S3AccessDenied`
    #
    #   **Valid `UploadState` Values:**
    #
    #   `FailingUpload`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CacheReportFilter AWS API Documentation
    #
    class CacheReportFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all informational fields associated with a cache report.
    # Includes name, ARN, tags, status, progress, filters, start time, and
    # end time.
    #
    # @!attribute [rw] cache_report_arn
    #   The Amazon Resource Name (ARN) of the cache report you want to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] cache_report_status
    #   The status of the specified cache report.
    #   @return [String]
    #
    # @!attribute [rw] report_completion_percent
    #   The percentage of the report generation process that has been
    #   completed at time of inquiry.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The time at which the gateway stopped generating the cache report.
    #   @return [Time]
    #
    # @!attribute [rw] role
    #   The ARN of the IAM role that an S3 File Gateway assumes when it
    #   accesses the underlying storage.
    #   @return [String]
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share.
    #   @return [String]
    #
    # @!attribute [rw] location_arn
    #   The ARN of the Amazon S3 bucket location where the cache report is
    #   saved.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the gateway started generating the cache report.
    #   @return [Time]
    #
    # @!attribute [rw] inclusion_filters
    #   The list of filters and parameters that determine which files are
    #   included in the report.
    #   @return [Array<Types::CacheReportFilter>]
    #
    # @!attribute [rw] exclusion_filters
    #   The list of filters and parameters that determine which files are
    #   excluded from the report.
    #   @return [Array<Types::CacheReportFilter>]
    #
    # @!attribute [rw] report_name
    #   The file name of the completed cache report object stored in Amazon
    #   S3.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key/value tags associated with the report.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CacheReportInfo AWS API Documentation
    #
    class CacheReportInfo < Struct.new(
      :cache_report_arn,
      :cache_report_status,
      :report_completion_percent,
      :end_time,
      :role,
      :file_share_arn,
      :location_arn,
      :start_time,
      :inclusion_filters,
      :exclusion_filters,
      :report_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an iSCSI cached volume.
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the storage volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The unique identifier of the volume, e.g., vol-AE4B946D.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   One of the VolumeType enumeration values that describes the type of
    #   the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_status
    #   One of the VolumeStatus values that indicates the state of the
    #   storage volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_attachment_status
    #   A value that indicates whether a storage volume is attached to or
    #   detached from a gateway. For more information, see [Moving your
    #   volumes to a different gateway][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#attach-detach-volume
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   The size, in bytes, of the volume capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_progress
    #   Represents the percentage complete if the volume is restoring or
    #   bootstrapping that represents the percent of data transferred. This
    #   field does not appear in the response if the cached volume is not
    #   restoring or bootstrapping.
    #   @return [Float]
    #
    # @!attribute [rw] source_snapshot_id
    #   If the cached volume was created from a snapshot, this field
    #   contains the snapshot ID used, e.g., snap-78e22663. Otherwise, this
    #   field is not included.
    #   @return [String]
    #
    # @!attribute [rw] volume_iscsi_attributes
    #   An VolumeiSCSIAttributes object that represents a collection of
    #   iSCSI attributes for one stored volume.
    #   @return [Types::VolumeiSCSIAttributes]
    #
    # @!attribute [rw] created_date
    #   The date the volume was created. Volumes created prior to March 28,
    #   2017 don’t have this timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] volume_used_in_bytes
    #   The size of the data stored on the volume in bytes. This value is
    #   calculated based on the number of blocks that are touched, instead
    #   of the actual amount of data written. This value can be useful for
    #   sequential write patterns but less accurate for random write
    #   patterns. `VolumeUsedInBytes` is different from the compressed size
    #   of the volume, which is the value that is used to calculate your
    #   bill.
    #
    #   <note markdown="1"> This value is not available for volumes created prior to May 13,
    #   2015, until you store data on the volume.
    #
    #    If you use a delete tool that overwrites the data on your volume
    #   with random data, your usage will not be reduced. This is because
    #   the random data is not compressible. If you want to reduce the
    #   amount of billed storage on your volume, we recommend overwriting
    #   your files with zeros to compress the data to a negligible amount of
    #   actual storage.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key
    #   Optional. The Amazon Resource Name (ARN) of a symmetric customer
    #   master key (CMK) used for Amazon S3 server-side encryption. Storage
    #   Gateway does not support asymmetric CMKs. This value must be set if
    #   `KMSEncrypted` is `true`, or if `EncryptionType` is `SseKms` or
    #   `DsseKms`.
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The name of the iSCSI target used by an initiator to connect to a
    #   volume and used as a suffix for the target ARN. For example,
    #   specifying `TargetName` as *myvolume* results in the target ARN of
    #   `arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume`.
    #   The target name must be unique across all volumes on a gateway.
    #
    #   If you don't specify a value, Storage Gateway uses the value that
    #   was previously used for this volume as the new target name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CachediSCSIVolume AWS API Documentation
    #
    class CachediSCSIVolume < Struct.new(
      :volume_arn,
      :volume_id,
      :volume_type,
      :volume_status,
      :volume_attachment_status,
      :volume_size_in_bytes,
      :volume_progress,
      :source_snapshot_id,
      :volume_iscsi_attributes,
      :created_date,
      :volume_used_in_bytes,
      :kms_key,
      :target_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # CancelArchivalInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to
    #   cancel archiving for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelArchivalInput AWS API Documentation
    #
    class CancelArchivalInput < Struct.new(
      :gateway_arn,
      :tape_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CancelArchivalOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape for which
    #   archiving was canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelArchivalOutput AWS API Documentation
    #
    class CancelArchivalOutput < Struct.new(
      :tape_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_report_arn
    #   The Amazon Resource Name (ARN) of the cache report you want to
    #   cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelCacheReportInput AWS API Documentation
    #
    class CancelCacheReportInput < Struct.new(
      :cache_report_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_report_arn
    #   The Amazon Resource Name (ARN) of the cache report you want to
    #   cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelCacheReportOutput AWS API Documentation
    #
    class CancelCacheReportOutput < Struct.new(
      :cache_report_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CancelRetrievalInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to
    #   cancel retrieval for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelRetrievalInput AWS API Documentation
    #
    class CancelRetrievalInput < Struct.new(
      :gateway_arn,
      :tape_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CancelRetrievalOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape for which
    #   retrieval was canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelRetrievalOutput AWS API Documentation
    #
    class CancelRetrievalOutput < Struct.new(
      :tape_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes Challenge-Handshake Authentication Protocol (CHAP)
    # information that supports authentication between your gateway and
    # iSCSI initiators.
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the volume.
    #
    #   Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
    #   hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] secret_to_authenticate_initiator
    #   The secret key that the initiator (for example, the Windows client)
    #   must provide to participate in mutual CHAP with the target.
    #   @return [String]
    #
    # @!attribute [rw] initiator_name
    #   The iSCSI initiator that connects to the target.
    #   @return [String]
    #
    # @!attribute [rw] secret_to_authenticate_target
    #   The secret key that the target must provide to participate in mutual
    #   CHAP with the initiator (e.g., Windows client).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ChapInfo AWS API Documentation
    #
    class ChapInfo < Struct.new(
      :target_arn,
      :secret_to_authenticate_initiator,
      :initiator_name,
      :secret_to_authenticate_target)
      SENSITIVE = [:secret_to_authenticate_initiator, :secret_to_authenticate_target]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   The size of the volume in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore
    #   as the new cached volume. Specify this field if you want to create
    #   the iSCSI storage volume from a snapshot; otherwise, do not include
    #   this field. To list snapshots for your account use
    #   [DescribeSnapshots][1] in the *Amazon Elastic Compute Cloud API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The name of the iSCSI target used by an initiator to connect to a
    #   volume and used as a suffix for the target ARN. For example,
    #   specifying `TargetName` as *myvolume* results in the target ARN of
    #   `arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume`.
    #   The target name must be unique across all volumes on a gateway.
    #
    #   If you don't specify a value, Storage Gateway uses the value that
    #   was previously used for this volume as the new target name.
    #   @return [String]
    #
    # @!attribute [rw] source_volume_arn
    #   The ARN for an existing volume. Specifying this ARN makes the new
    #   volume into an exact copy of the specified existing volume's latest
    #   recovery point. The `VolumeSizeInBytes` value for this new volume
    #   must be equal to or larger than the size of the existing volume, in
    #   bytes.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface of the gateway on which to expose the iSCSI
    #   target. Accepts IPv4 and IPv6 addresses. Use
    #   DescribeGatewayInformation to get a list of the network interfaces
    #   available on a gateway.
    #
    #   Valid Values: A valid IP address.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you use to retry a request. If you retry a
    #   request, use the same `ClientToken` you specified in the initial
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway
    #   does not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that you can assign to a cached volume. Each
    #   tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   that you can represent in UTF-8 format, and the following special
    #   characters: + - = . \_ : / @. The maximum length of a tag's key is
    #   128 characters, and the maximum length for a tag's value is 256
    #   characters.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateCachediSCSIVolumeInput AWS API Documentation
    #
    class CreateCachediSCSIVolumeInput < Struct.new(
      :gateway_arn,
      :volume_size_in_bytes,
      :snapshot_id,
      :target_name,
      :source_volume_arn,
      :network_interface_id,
      :client_token,
      :kms_encrypted,
      :kms_key,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the configured volume.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the volume target, which includes
    #   the iSCSI name that initiators can use to connect to the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateCachediSCSIVolumeOutput AWS API Documentation
    #
    class CreateCachediSCSIVolumeOutput < Struct.new(
      :volume_arn,
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateNFSFileShareInput
    #
    # @!attribute [rw] client_token
    #   A unique string value that you supply that is used by S3 File
    #   Gateway to ensure idempotent file share creation.
    #   @return [String]
    #
    # @!attribute [rw] nfs_file_share_defaults
    #   File share default values. Optional.
    #   @return [Types::NFSFileShareDefaults]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the S3 File Gateway on which you
    #   want to create a file share.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   A value that specifies the type of server-side encryption that the
    #   file share will use for the data that it stores in Amazon S3.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kms_encrypted
    #   Optional. Set to `true` to use Amazon S3 server-side encryption with
    #   your own KMS key (SSE-KMS), or `false` to use a key managed by
    #   Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #   `EncryptionType` parameter instead.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   Optional. The Amazon Resource Name (ARN) of a symmetric customer
    #   master key (CMK) used for Amazon S3 server-side encryption. Storage
    #   Gateway does not support asymmetric CMKs. This value must be set if
    #   `KMSEncrypted` is `true`, or if `EncryptionType` is `SseKms` or
    #   `DsseKms`.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the Identity and Access Management (IAM) role that an S3
    #   File Gateway assumes when it accesses the underlying storage.
    #   @return [String]
    #
    # @!attribute [rw] location_arn
    #   A custom ARN for the backend storage used for storing data for file
    #   shares. It includes a resource ARN with an optional prefix
    #   concatenation. The prefix must end with a forward slash (/).
    #
    #   <note markdown="1"> You can specify LocationARN as a bucket ARN, access point ARN or
    #   access point alias, as shown in the following examples.
    #
    #    Bucket ARN:
    #
    #    `arn:aws:s3:::amzn-s3-demo-bucket/prefix/`
    #
    #    Access point ARN:
    #
    #    `arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/`
    #
    #    If you specify an access point, the bucket policy must be configured
    #   to delegate access control to the access point. For information, see
    #   [Delegating access control to access points][1] in the *Amazon S3
    #   User Guide*.
    #
    #    Access point alias:
    #
    #    `test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias`
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control
    #   @return [String]
    #
    # @!attribute [rw] default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket
    #   by the S3 File Gateway. The default value is `S3_STANDARD`.
    #   Optional.
    #
    #   Valid Values: `S3_STANDARD` \| `S3_INTELLIGENT_TIERING` \|
    #   `S3_STANDARD_IA` \| `S3_ONEZONE_IA`
    #   @return [String]
    #
    # @!attribute [rw] object_acl
    #   A value that sets the access control list (ACL) permission for
    #   objects in the S3 bucket that a S3 File Gateway puts objects into.
    #   The default value is `private`.
    #   @return [String]
    #
    # @!attribute [rw] client_list
    #   The list of clients that are allowed to access the S3 File Gateway.
    #   The list must contain either valid IPv4/IPv6 addresses or valid CIDR
    #   blocks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] squash
    #   A value that maps a user to anonymous user.
    #
    #   Valid values are the following:
    #
    #   * `RootSquash`: Only root is mapped to anonymous user.
    #
    #   * `NoSquash`: No one is mapped to anonymous user.
    #
    #   * `AllSquash`: Everyone is mapped to anonymous user.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   A value that sets the write status of a file share. Set this value
    #   to `true` to set the write status to read-only, otherwise set to
    #   `false`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] guess_mime_type_enabled
    #   A value that enables guessing of the MIME type for uploaded objects
    #   based on file extensions. Set this value to `true` to enable MIME
    #   type guessing, otherwise set to `false`. The default value is
    #   `true`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] requester_pays
    #   A value that sets who pays the cost of the request and the cost
    #   associated with data download from the S3 bucket. If this value is
    #   set to `true`, the requester pays the costs; otherwise, the S3
    #   bucket owner pays. However, the S3 bucket owner always pays the cost
    #   of storing data.
    #
    #   <note markdown="1"> `RequesterPays` is a configuration for the S3 bucket that backs the
    #   file share, so make sure that the configuration on the file share is
    #   the same as the S3 bucket configuration.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that can be assigned to the NFS file share.
    #   Each tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @. The maximum length of a tag's key is 128
    #   characters, and the maximum length for a tag's value is 256.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] file_share_name
    #   The name of the file share. Optional.
    #
    #   <note markdown="1"> `FileShareName` must be set if an S3 prefix name is set in
    #   `LocationARN`, or if an access point or access point alias is used.
    #
    #    A valid NFS file share name can only contain the following
    #   characters: `a`-`z`, `A`-`Z`, `0`-`9`, `-`, `.`, and `_`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cache_attributes
    #   Specifies refresh cache information for the file share.
    #   @return [Types::CacheAttributes]
    #
    # @!attribute [rw] notification_policy
    #   The notification policy of the file share. `SettlingTimeInSeconds`
    #   controls the number of seconds to wait after the last point in time
    #   a client wrote to a file before generating an `ObjectUploaded`
    #   notification. Because clients can make many small writes to files,
    #   it's best to set this parameter for as long as possible to avoid
    #   generating multiple notifications for the same file in a small time
    #   period.
    #
    #   <note markdown="1"> `SettlingTimeInSeconds` has no effect on the timing of the object
    #   uploading to Amazon S3, only the timing of the notification.
    #
    #    This setting is not meant to specify an exact time at which the
    #   notification will be sent. In some cases, the gateway might require
    #   more than the specified delay time to generate and send
    #   notifications.
    #
    #    </note>
    #
    #   The following example sets `NotificationPolicy` on with
    #   `SettlingTimeInSeconds` set to 60.
    #
    #   `{"Upload": {"SettlingTimeInSeconds": 60}}`
    #
    #   The following example sets `NotificationPolicy` off.
    #
    #   `{}`
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_dns_name
    #   Specifies the DNS name for the VPC endpoint that the NFS file share
    #   uses to connect to Amazon S3.
    #
    #   <note markdown="1"> This parameter is required for NFS file shares that connect to
    #   Amazon S3 through a VPC endpoint, a VPC access point, or an access
    #   point alias that points to a VPC access point.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] bucket_region
    #   Specifies the Region of the S3 bucket where the NFS file share
    #   stores files.
    #
    #   <note markdown="1"> This parameter is required for NFS file shares that connect to
    #   Amazon S3 through a VPC endpoint, a VPC access point, or an access
    #   point alias that points to a VPC access point.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for audit logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateNFSFileShareInput AWS API Documentation
    #
    class CreateNFSFileShareInput < Struct.new(
      :client_token,
      :nfs_file_share_defaults,
      :gateway_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :role,
      :location_arn,
      :default_storage_class,
      :object_acl,
      :client_list,
      :squash,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :tags,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :vpc_endpoint_dns_name,
      :bucket_region,
      :audit_destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateNFSFileShareOutput
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the newly created file share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateNFSFileShareOutput AWS API Documentation
    #
    class CreateNFSFileShareOutput < Struct.new(
      :file_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateSMBFileShareInput
    #
    # @!attribute [rw] client_token
    #   A unique string value that you supply that is used by S3 File
    #   Gateway to ensure idempotent file share creation.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The ARN of the S3 File Gateway on which you want to create a file
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   A value that specifies the type of server-side encryption that the
    #   file share will use for the data that it stores in Amazon S3.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kms_encrypted
    #   Optional. Set to `true` to use Amazon S3 server-side encryption with
    #   your own KMS key (SSE-KMS), or `false` to use a key managed by
    #   Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #   `EncryptionType` parameter instead.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   Optional. The Amazon Resource Name (ARN) of a symmetric customer
    #   master key (CMK) used for Amazon S3 server-side encryption. Storage
    #   Gateway does not support asymmetric CMKs. This value must be set if
    #   `KMSEncrypted` is `true`, or if `EncryptionType` is `SseKms` or
    #   `DsseKms`.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the Identity and Access Management (IAM) role that an S3
    #   File Gateway assumes when it accesses the underlying storage.
    #   @return [String]
    #
    # @!attribute [rw] location_arn
    #   A custom ARN for the backend storage used for storing data for file
    #   shares. It includes a resource ARN with an optional prefix
    #   concatenation. The prefix must end with a forward slash (/).
    #
    #   <note markdown="1"> You can specify LocationARN as a bucket ARN, access point ARN or
    #   access point alias, as shown in the following examples.
    #
    #    Bucket ARN:
    #
    #    `arn:aws:s3:::amzn-s3-demo-bucket/prefix/`
    #
    #    Access point ARN:
    #
    #    `arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/`
    #
    #    If you specify an access point, the bucket policy must be configured
    #   to delegate access control to the access point. For information, see
    #   [Delegating access control to access points][1] in the *Amazon S3
    #   User Guide*.
    #
    #    Access point alias:
    #
    #    `test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias`
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control
    #   @return [String]
    #
    # @!attribute [rw] default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket
    #   by the S3 File Gateway. The default value is `S3_STANDARD`.
    #   Optional.
    #
    #   Valid Values: `S3_STANDARD` \| `S3_INTELLIGENT_TIERING` \|
    #   `S3_STANDARD_IA` \| `S3_ONEZONE_IA`
    #   @return [String]
    #
    # @!attribute [rw] object_acl
    #   A value that sets the access control list (ACL) permission for
    #   objects in the S3 bucket that a S3 File Gateway puts objects into.
    #   The default value is `private`.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   A value that sets the write status of a file share. Set this value
    #   to `true` to set the write status to read-only, otherwise set to
    #   `false`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] guess_mime_type_enabled
    #   A value that enables guessing of the MIME type for uploaded objects
    #   based on file extensions. Set this value to `true` to enable MIME
    #   type guessing, otherwise set to `false`. The default value is
    #   `true`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] requester_pays
    #   A value that sets who pays the cost of the request and the cost
    #   associated with data download from the S3 bucket. If this value is
    #   set to `true`, the requester pays the costs; otherwise, the S3
    #   bucket owner pays. However, the S3 bucket owner always pays the cost
    #   of storing data.
    #
    #   <note markdown="1"> `RequesterPays` is a configuration for the S3 bucket that backs the
    #   file share, so make sure that the configuration on the file share is
    #   the same as the S3 bucket configuration.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] smbacl_enabled
    #   Set this value to `true` to enable access control list (ACL) on the
    #   SMB file share. Set it to `false` to map file and directory
    #   permissions to the POSIX permissions.
    #
    #   For more information, see [Using Windows ACLs to limit SMB file
    #   share access][1] in the *Amazon S3 File Gateway User Guide*.
    #
    #   Valid Values: `true` \| `false`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html
    #   @return [Boolean]
    #
    # @!attribute [rw] access_based_enumeration
    #   The files and folders on this share will only be visible to users
    #   with read access.
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_user_list
    #   A list of users or groups in the Active Directory that will be
    #   granted administrator privileges on the file share. These users can
    #   do all file operations as the super-user. Acceptable formats
    #   include: `DOMAIN\User1`, `user1`, `@group1`, and `@DOMAIN\group1`.
    #
    #   Use this option very carefully, because any user in this list can do
    #   anything they like on the file share, regardless of file
    #   permissions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] valid_user_list
    #   A list of users or groups in the Active Directory that are allowed
    #   to access the file []() share. A group must be prefixed with the @
    #   character. Acceptable formats include: `DOMAIN\User1`, `user1`,
    #   `@group1`, and `@DOMAIN\group1`. Can only be set if Authentication
    #   is set to `ActiveDirectory`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] invalid_user_list
    #   A list of users or groups in the Active Directory that are not
    #   allowed to access the file share. A group must be prefixed with the
    #   @ character. Acceptable formats include: `DOMAIN\User1`, `user1`,
    #   `@group1`, and `@DOMAIN\group1`. Can only be set if Authentication
    #   is set to `ActiveDirectory`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for audit logs.
    #   @return [String]
    #
    # @!attribute [rw] authentication
    #   The authentication method that users use to access the file share.
    #   The default is `ActiveDirectory`.
    #
    #   Valid Values: `ActiveDirectory` \| `GuestAccess`
    #   @return [String]
    #
    # @!attribute [rw] case_sensitivity
    #   The case of an object name in an Amazon S3 bucket. For
    #   `ClientSpecified`, the client determines the case sensitivity. For
    #   `CaseSensitive`, the gateway determines the case sensitivity. The
    #   default value is `ClientSpecified`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that can be assigned to the NFS file share.
    #   Each tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @. The maximum length of a tag's key is 128
    #   characters, and the maximum length for a tag's value is 256.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] file_share_name
    #   The name of the file share. Optional.
    #
    #   <note markdown="1"> `FileShareName` must be set if an S3 prefix name is set in
    #   `LocationARN`, or if an access point or access point alias is used.
    #
    #    A valid SMB file share name cannot contain the following characters:
    #   `[`,`]`,`#`,`;`,`<`,`>`,`:`,`"`,``,`/`,`|`,`?`,`*`,`+`, or ASCII
    #   control characters `1-31`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cache_attributes
    #   Specifies refresh cache information for the file share.
    #   @return [Types::CacheAttributes]
    #
    # @!attribute [rw] notification_policy
    #   The notification policy of the file share. `SettlingTimeInSeconds`
    #   controls the number of seconds to wait after the last point in time
    #   a client wrote to a file before generating an `ObjectUploaded`
    #   notification. Because clients can make many small writes to files,
    #   it's best to set this parameter for as long as possible to avoid
    #   generating multiple notifications for the same file in a small time
    #   period.
    #
    #   <note markdown="1"> `SettlingTimeInSeconds` has no effect on the timing of the object
    #   uploading to Amazon S3, only the timing of the notification.
    #
    #    This setting is not meant to specify an exact time at which the
    #   notification will be sent. In some cases, the gateway might require
    #   more than the specified delay time to generate and send
    #   notifications.
    #
    #    </note>
    #
    #   The following example sets `NotificationPolicy` on with
    #   `SettlingTimeInSeconds` set to 60.
    #
    #   `{"Upload": {"SettlingTimeInSeconds": 60}}`
    #
    #   The following example sets `NotificationPolicy` off.
    #
    #   `{}`
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_dns_name
    #   Specifies the DNS name for the VPC endpoint that the SMB file share
    #   uses to connect to Amazon S3.
    #
    #   <note markdown="1"> This parameter is required for SMB file shares that connect to
    #   Amazon S3 through a VPC endpoint, a VPC access point, or an access
    #   point alias that points to a VPC access point.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] bucket_region
    #   Specifies the Region of the S3 bucket where the SMB file share
    #   stores files.
    #
    #   <note markdown="1"> This parameter is required for SMB file shares that connect to
    #   Amazon S3 through a VPC endpoint, a VPC access point, or an access
    #   point alias that points to a VPC access point.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] oplocks_enabled
    #   Specifies whether opportunistic locking is enabled for the SMB file
    #   share.
    #
    #   <note markdown="1"> Enabling opportunistic locking on case-sensitive shares is not
    #   recommended for workloads that involve access to files with the same
    #   name in different case.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSMBFileShareInput AWS API Documentation
    #
    class CreateSMBFileShareInput < Struct.new(
      :client_token,
      :gateway_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :role,
      :location_arn,
      :default_storage_class,
      :object_acl,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :smbacl_enabled,
      :access_based_enumeration,
      :admin_user_list,
      :valid_user_list,
      :invalid_user_list,
      :audit_destination_arn,
      :authentication,
      :case_sensitivity,
      :tags,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :vpc_endpoint_dns_name,
      :bucket_region,
      :oplocks_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateSMBFileShareOutput
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the newly created file share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSMBFileShareOutput AWS API Documentation
    #
    class CreateSMBFileShareOutput < Struct.new(
      :file_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_description
    #   Textual description of the snapshot that appears in the Amazon EC2
    #   console, Elastic Block Store snapshots panel in the **Description**
    #   field, and in the Storage Gateway snapshot **Details** pane,
    #   **Description** field.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that can be assigned to a snapshot. Each tag
    #   is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @. The maximum length of a tag's key is 128
    #   characters, and the maximum length for a tag's value is 256.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSnapshotFromVolumeRecoveryPointInput AWS API Documentation
    #
    class CreateSnapshotFromVolumeRecoveryPointInput < Struct.new(
      :volume_arn,
      :snapshot_description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #   @return [String]
    #
    # @!attribute [rw] volume_recovery_point_time
    #   The time the volume was created from the recovery point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSnapshotFromVolumeRecoveryPointOutput AWS API Documentation
    #
    class CreateSnapshotFromVolumeRecoveryPointOutput < Struct.new(
      :snapshot_id,
      :volume_arn,
      :volume_recovery_point_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * CreateSnapshotInput$SnapshotDescription
    #
    # * CreateSnapshotInput$VolumeARN
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_description
    #   Textual description of the snapshot that appears in the Amazon EC2
    #   console, Elastic Block Store snapshots panel in the **Description**
    #   field, and in the Storage Gateway snapshot **Details** pane,
    #   **Description** field.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that can be assigned to a snapshot. Each tag
    #   is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @. The maximum length of a tag's key is 128
    #   characters, and the maximum length for a tag's value is 256.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSnapshotInput AWS API Documentation
    #
    class CreateSnapshotInput < Struct.new(
      :volume_arn,
      :snapshot_description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume of which the snapshot
    #   was taken.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID that is used to refer to the snapshot in future
    #   operations such as describing snapshots (Amazon Elastic Compute
    #   Cloud API `DescribeSnapshots`) or creating a volume from a snapshot
    #   (CreateStorediSCSIVolume).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSnapshotOutput AWS API Documentation
    #
    class CreateSnapshotOutput < Struct.new(
      :volume_arn,
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * CreateStorediSCSIVolumeInput$DiskId
    #
    # * CreateStorediSCSIVolumeInput$NetworkInterfaceId
    #
    # * CreateStorediSCSIVolumeInput$PreserveExistingData
    #
    # * CreateStorediSCSIVolumeInput$SnapshotId
    #
    # * CreateStorediSCSIVolumeInput$TargetName
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] disk_id
    #   The unique identifier for the gateway local disk that is configured
    #   as a stored volume. Use [ListLocalDisks][1] to list disk IDs for a
    #   gateway.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID (e.g., "snap-1122aabb") of the snapshot to restore
    #   as the new stored volume. Specify this field if you want to create
    #   the iSCSI storage volume from a snapshot; otherwise, do not include
    #   this field. To list snapshots for your account use
    #   [DescribeSnapshots][1] in the *Amazon Elastic Compute Cloud API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
    #   @return [String]
    #
    # @!attribute [rw] preserve_existing_data
    #   Set to `true` if you want to preserve the data on the local disk.
    #   Otherwise, set to `false` to create an empty volume.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] target_name
    #   The name of the iSCSI target used by an initiator to connect to a
    #   volume and used as a suffix for the target ARN. For example,
    #   specifying `TargetName` as *myvolume* results in the target ARN of
    #   `arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume`.
    #   The target name must be unique across all volumes on a gateway.
    #
    #   If you don't specify a value, Storage Gateway uses the value that
    #   was previously used for this volume as the new target name.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface of the gateway on which to expose the iSCSI
    #   target. Accepts IPv4 and IPv6 addresses. Use
    #   DescribeGatewayInformation to get a list of the network interfaces
    #   available on a gateway.
    #
    #   Valid Values: A valid IP address.
    #   @return [String]
    #
    # @!attribute [rw] kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway
    #   does not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that can be assigned to a stored volume.
    #   Each tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @. The maximum length of a tag's key is 128
    #   characters, and the maximum length for a tag's value is 256.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateStorediSCSIVolumeInput AWS API Documentation
    #
    class CreateStorediSCSIVolumeInput < Struct.new(
      :gateway_arn,
      :disk_id,
      :snapshot_id,
      :preserve_existing_data,
      :target_name,
      :network_interface_id,
      :kms_encrypted,
      :kms_key,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the configured volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   The size of the volume in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the volume target, which includes
    #   the iSCSI name that initiators can use to connect to the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateStorediSCSIVolumeOutput AWS API Documentation
    #
    class CreateStorediSCSIVolumeOutput < Struct.new(
      :volume_arn,
      :volume_size_in_bytes,
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_name
    #   The name of the new custom tape pool.
    #   @return [String]
    #
    # @!attribute [rw] storage_class
    #   The storage class that is associated with the new custom pool. When
    #   you use your backup application to eject the tape, the tape is
    #   archived directly into the storage class (S3 Glacier or S3 Glacier
    #   Deep Archive) that corresponds to the pool.
    #   @return [String]
    #
    # @!attribute [rw] retention_lock_type
    #   Tape retention lock can be configured in two modes. When configured
    #   in governance mode, Amazon Web Services accounts with specific IAM
    #   permissions are authorized to remove the tape retention lock from
    #   archived virtual tapes. When configured in compliance mode, the tape
    #   retention lock cannot be removed by any user, including the root
    #   Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] retention_lock_time_in_days
    #   Tape retention lock time is set in days. Tape retention lock can be
    #   enabled for up to 100 years (36,500 days).
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that can be assigned to tape pool. Each tag
    #   is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @. The maximum length of a tag's key is 128
    #   characters, and the maximum length for a tag's value is 256.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapePoolInput AWS API Documentation
    #
    class CreateTapePoolInput < Struct.new(
      :pool_name,
      :storage_class,
      :retention_lock_type,
      :retention_lock_time_in_days,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_arn
    #   The unique Amazon Resource Name (ARN) that represents the custom
    #   tape pool. Use the ListTapePools operation to return a list of tape
    #   pools for your account and Amazon Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapePoolOutput AWS API Documentation
    #
    class CreateTapePoolOutput < Struct.new(
      :pool_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateTapeWithBarcodeInput
    #
    # @!attribute [rw] gateway_arn
    #   The unique Amazon Resource Name (ARN) that represents the gateway to
    #   associate the virtual tape with. Use the ListGateways operation to
    #   return a list of gateways for your account and Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the virtual tape that you want to create.
    #
    #   <note markdown="1"> The size must be aligned by gigabyte (1024*1024*1024 bytes).
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] tape_barcode
    #   The barcode that you want to assign to the tape.
    #
    #   <note markdown="1"> Barcodes cannot be reused. This includes barcodes used for tapes
    #   that have been deleted.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway
    #   does not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The ID of the pool that you want to add your tape to for archiving.
    #   The tape in this pool is archived in the S3 storage class that is
    #   associated with the pool. When you use your backup application to
    #   eject the tape, the tape is archived directly into the storage class
    #   (S3 Glacier or S3 Deep Archive) that corresponds to the pool.
    #   @return [String]
    #
    # @!attribute [rw] worm
    #   Set to `TRUE` if the tape you are creating is to be configured as a
    #   write-once-read-many (WORM) tape.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that can be assigned to a virtual tape that
    #   has a barcode. Each tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @. The maximum length of a tag's key is 128
    #   characters, and the maximum length for a tag's value is 256.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapeWithBarcodeInput AWS API Documentation
    #
    class CreateTapeWithBarcodeInput < Struct.new(
      :gateway_arn,
      :tape_size_in_bytes,
      :tape_barcode,
      :kms_encrypted,
      :kms_key,
      :pool_id,
      :worm,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateTapeOutput
    #
    # @!attribute [rw] tape_arn
    #   A unique Amazon Resource Name (ARN) that represents the virtual tape
    #   that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapeWithBarcodeOutput AWS API Documentation
    #
    class CreateTapeWithBarcodeOutput < Struct.new(
      :tape_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateTapesInput
    #
    # @!attribute [rw] gateway_arn
    #   The unique Amazon Resource Name (ARN) that represents the gateway to
    #   associate the virtual tapes with. Use the ListGateways operation to
    #   return a list of gateways for your account and Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the virtual tapes that you want to create.
    #
    #   <note markdown="1"> The size must be aligned by gigabyte (1024*1024*1024 bytes).
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you use to retry a request. If you retry a
    #   request, use the same `ClientToken` you specified in the initial
    #   request.
    #
    #   <note markdown="1"> Using the same `ClientToken` prevents creating the tape multiple
    #   times.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] num_tapes_to_create
    #   The number of virtual tapes that you want to create.
    #   @return [Integer]
    #
    # @!attribute [rw] tape_barcode_prefix
    #   A prefix that you append to the barcode of the virtual tape you are
    #   creating. This prefix makes the barcode unique.
    #
    #   <note markdown="1"> The prefix must be 1-4 characters in length and must be one of the
    #   uppercase letters from A to Z.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway
    #   does not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The ID of the pool that you want to add your tape to for archiving.
    #   The tape in this pool is archived in the S3 storage class that is
    #   associated with the pool. When you use your backup application to
    #   eject the tape, the tape is archived directly into the storage class
    #   (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the
    #   pool.
    #   @return [String]
    #
    # @!attribute [rw] worm
    #   Set to `TRUE` if the tape you are creating is to be configured as a
    #   write-once-read-many (WORM) tape.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that can be assigned to a virtual tape. Each
    #   tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @. The maximum length of a tag's key is 128
    #   characters, and the maximum length for a tag's value is 256.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapesInput AWS API Documentation
    #
    class CreateTapesInput < Struct.new(
      :gateway_arn,
      :tape_size_in_bytes,
      :client_token,
      :num_tapes_to_create,
      :tape_barcode_prefix,
      :kms_encrypted,
      :kms_key,
      :pool_id,
      :worm,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # CreateTapeOutput
    #
    # @!attribute [rw] tape_arns
    #   A list of unique Amazon Resource Names (ARNs) that represents the
    #   virtual tapes that were created.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapesOutput AWS API Documentation
    #
    class CreateTapesOutput < Struct.new(
      :tape_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteAutomaticTapeCreationPolicyInput AWS API Documentation
    #
    class DeleteAutomaticTapeCreationPolicyInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteAutomaticTapeCreationPolicyOutput AWS API Documentation
    #
    class DeleteAutomaticTapeCreationPolicyOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # * DeleteBandwidthRateLimitInput$BandwidthType
    #
    # ^
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth_type
    #   One of the BandwidthType values that indicates the gateway bandwidth
    #   rate limit to delete.
    #
    #   Valid Values: `UPLOAD` \| `DOWNLOAD` \| `ALL`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteBandwidthRateLimitInput AWS API Documentation
    #
    class DeleteBandwidthRateLimitInput < Struct.new(
      :gateway_arn,
      :bandwidth_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # whose bandwidth rate information was deleted.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteBandwidthRateLimitOutput AWS API Documentation
    #
    class DeleteBandwidthRateLimitOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_report_arn
    #   The Amazon Resource Name (ARN) of the cache report you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteCacheReportInput AWS API Documentation
    #
    class DeleteCacheReportInput < Struct.new(
      :cache_report_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_report_arn
    #   The Amazon Resource Name (ARN) of the cache report you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteCacheReportOutput AWS API Documentation
    #
    class DeleteCacheReportOutput < Struct.new(
      :cache_report_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * DeleteChapCredentialsInput$InitiatorName
    #
    # * DeleteChapCredentialsInput$TargetARN
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #   @return [String]
    #
    # @!attribute [rw] initiator_name
    #   The iSCSI initiator that connects to the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteChapCredentialsInput AWS API Documentation
    #
    class DeleteChapCredentialsInput < Struct.new(
      :target_arn,
      :initiator_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the target.
    #   @return [String]
    #
    # @!attribute [rw] initiator_name
    #   The iSCSI initiator that connects to the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteChapCredentialsOutput AWS API Documentation
    #
    class DeleteChapCredentialsOutput < Struct.new(
      :target_arn,
      :initiator_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # DeleteFileShareInput
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   If this value is set to `true`, the operation deletes a file share
    #   immediately and aborts all data uploads to Amazon Web Services.
    #   Otherwise, the file share is not deleted until all data is uploaded
    #   to Amazon Web Services. This process aborts the data upload process,
    #   and the file share enters the `FORCE_DELETING` status.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteFileShareInput AWS API Documentation
    #
    class DeleteFileShareInput < Struct.new(
      :file_share_arn,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # DeleteFileShareOutput
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the deleted file share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteFileShareOutput AWS API Documentation
    #
    class DeleteFileShareOutput < Struct.new(
      :file_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the ID of the gateway to delete.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteGatewayInput AWS API Documentation
    #
    class DeleteGatewayInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the ID of the deleted gateway.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteGatewayOutput AWS API Documentation
    #
    class DeleteGatewayOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   The volume which snapshot schedule to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteSnapshotScheduleInput AWS API Documentation
    #
    class DeleteSnapshotScheduleInput < Struct.new(
      :volume_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   The volume which snapshot schedule was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteSnapshotScheduleOutput AWS API Documentation
    #
    class DeleteSnapshotScheduleOutput < Struct.new(
      :volume_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DeleteTapeArchiveInput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape to delete from
    #   the virtual tape shelf (VTS).
    #   @return [String]
    #
    # @!attribute [rw] bypass_governance_retention
    #   Set to `TRUE` to delete an archived tape that belongs to a custom
    #   pool with tape retention lock. Only archived tapes with tape
    #   retention lock set to `governance` can be deleted. Archived tapes
    #   with tape retention lock set to `compliance` can't be deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTapeArchiveInput AWS API Documentation
    #
    class DeleteTapeArchiveInput < Struct.new(
      :tape_arn,
      :bypass_governance_retention)
      SENSITIVE = []
      include Aws::Structure
    end

    # DeleteTapeArchiveOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape that was deleted
    #   from the virtual tape shelf (VTS).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTapeArchiveOutput AWS API Documentation
    #
    class DeleteTapeArchiveOutput < Struct.new(
      :tape_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DeleteTapeInput
    #
    # @!attribute [rw] gateway_arn
    #   The unique Amazon Resource Name (ARN) of the gateway that the
    #   virtual tape to delete is associated with. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape to delete.
    #   @return [String]
    #
    # @!attribute [rw] bypass_governance_retention
    #   Set to `TRUE` to delete an archived tape that belongs to a custom
    #   pool with tape retention lock. Only archived tapes with tape
    #   retention lock set to `governance` can be deleted. Archived tapes
    #   with tape retention lock set to `compliance` can't be deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTapeInput AWS API Documentation
    #
    class DeleteTapeInput < Struct.new(
      :gateway_arn,
      :tape_arn,
      :bypass_governance_retention)
      SENSITIVE = []
      include Aws::Structure
    end

    # DeleteTapeOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the deleted virtual tape.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTapeOutput AWS API Documentation
    #
    class DeleteTapeOutput < Struct.new(
      :tape_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_arn
    #   The Amazon Resource Name (ARN) of the custom tape pool to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTapePoolInput AWS API Documentation
    #
    class DeleteTapePoolInput < Struct.new(
      :pool_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_arn
    #   The Amazon Resource Name (ARN) of the custom tape pool being
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTapePoolOutput AWS API Documentation
    #
    class DeleteTapePoolOutput < Struct.new(
      :pool_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the DeleteVolumeInput$VolumeARN to delete.
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteVolumeInput AWS API Documentation
    #
    class DeleteVolumeInput < Struct.new(
      :volume_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the storage
    # volume that was deleted.
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the storage volume that was
    #   deleted. It is the same ARN you provided in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteVolumeOutput AWS API Documentation
    #
    class DeleteVolumeOutput < Struct.new(
      :volume_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeAvailabilityMonitorTestInput AWS API Documentation
    #
    class DescribeAvailabilityMonitorTestInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the high availability monitoring test. If a test
    #   hasn't been performed, the value of this field is null.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the high availability monitoring test was started. If a
    #   test hasn't been performed, the value of this field is null.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeAvailabilityMonitorTestOutput AWS API Documentation
    #
    class DescribeAvailabilityMonitorTestOutput < Struct.new(
      :gateway_arn,
      :status,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the
    # gateway.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeBandwidthRateLimitInput AWS API Documentation
    #
    class DescribeBandwidthRateLimitInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] average_upload_rate_limit_in_bits_per_sec
    #   The average upload bandwidth rate limit in bits per second. This
    #   field does not appear in the response if the upload rate limit is
    #   not set.
    #   @return [Integer]
    #
    # @!attribute [rw] average_download_rate_limit_in_bits_per_sec
    #   The average download bandwidth rate limit in bits per second. This
    #   field does not appear in the response if the download rate limit is
    #   not set.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeBandwidthRateLimitOutput AWS API Documentation
    #
    class DescribeBandwidthRateLimitOutput < Struct.new(
      :gateway_arn,
      :average_upload_rate_limit_in_bits_per_sec,
      :average_download_rate_limit_in_bits_per_sec)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeBandwidthRateLimitScheduleInput AWS API Documentation
    #
    class DescribeBandwidthRateLimitScheduleInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth_rate_limit_intervals
    #   An array that contains the bandwidth rate limit intervals for a tape
    #   or volume gateway.
    #   @return [Array<Types::BandwidthRateLimitInterval>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeBandwidthRateLimitScheduleOutput AWS API Documentation
    #
    class DescribeBandwidthRateLimitScheduleOutput < Struct.new(
      :gateway_arn,
      :bandwidth_rate_limit_intervals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCacheInput AWS API Documentation
    #
    class DescribeCacheInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   An array of strings that identify disks that are to be configured as
    #   working storage. Each string has a minimum length of 1 and maximum
    #   length of 300. You can get the disk IDs from the ListLocalDisks API.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cache_allocated_in_bytes
    #   The amount of cache in bytes allocated to a gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_used_percentage
    #   Percent use of the gateway's cache storage. This metric applies
    #   only to the gateway-cached volume setup. The sample is taken at the
    #   end of the reporting period.
    #   @return [Float]
    #
    # @!attribute [rw] cache_dirty_percentage
    #   The file share's contribution to the overall percentage of the
    #   gateway's cache that has not been persisted to Amazon Web Services.
    #   The sample is taken at the end of the reporting period.
    #   @return [Float]
    #
    # @!attribute [rw] cache_hit_percentage
    #   Percent of application read operations from the file shares that are
    #   served from cache. The sample is taken at the end of the reporting
    #   period.
    #   @return [Float]
    #
    # @!attribute [rw] cache_miss_percentage
    #   Percent of application read operations from the file shares that are
    #   not served from cache. The sample is taken at the end of the
    #   reporting period.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCacheOutput AWS API Documentation
    #
    class DescribeCacheOutput < Struct.new(
      :gateway_arn,
      :disk_ids,
      :cache_allocated_in_bytes,
      :cache_used_percentage,
      :cache_dirty_percentage,
      :cache_hit_percentage,
      :cache_miss_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_report_arn
    #   The Amazon Resource Name (ARN) of the cache report you want to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCacheReportInput AWS API Documentation
    #
    class DescribeCacheReportInput < Struct.new(
      :cache_report_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_report_info
    #   Contains all informational fields associated with a cache report.
    #   Includes name, ARN, tags, status, progress, filters, start time, and
    #   end time.
    #   @return [Types::CacheReportInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCacheReportOutput AWS API Documentation
    #
    class DescribeCacheReportOutput < Struct.new(
      :cache_report_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_arns
    #   An array of strings where each string represents the Amazon Resource
    #   Name (ARN) of a cached volume. All of the specified cached volumes
    #   must be from the same gateway. Use ListVolumes to get volume ARNs
    #   for a gateway.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCachediSCSIVolumesInput AWS API Documentation
    #
    class DescribeCachediSCSIVolumesInput < Struct.new(
      :volume_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] cached_iscsi_volumes
    #   An array of objects where each object contains metadata about one
    #   cached volume.
    #   @return [Array<Types::CachediSCSIVolume>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCachediSCSIVolumesOutput AWS API Documentation
    #
    class DescribeCachediSCSIVolumesOutput < Struct.new(
      :cached_iscsi_volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the iSCSI
    # volume target.
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeChapCredentialsInput AWS API Documentation
    #
    class DescribeChapCredentialsInput < Struct.new(
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] chap_credentials
    #   An array of ChapInfo objects that represent CHAP credentials. Each
    #   object in the array contains CHAP credential information for one
    #   target-initiator pair. If no CHAP credentials are set, an empty
    #   array is returned. CHAP credential information is provided in a JSON
    #   object with the following fields:
    #
    #   * **InitiatorName**: The iSCSI initiator that connects to the
    #     target.
    #
    #   * **SecretToAuthenticateInitiator**: The secret key that the
    #     initiator (for example, the Windows client) must provide to
    #     participate in mutual CHAP with the target.
    #
    #   * **SecretToAuthenticateTarget**: The secret key that the target
    #     must provide to participate in mutual CHAP with the initiator
    #     (e.g. Windows client).
    #
    #   * **TargetARN**: The Amazon Resource Name (ARN) of the storage
    #     volume.
    #   @return [Array<Types::ChapInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeChapCredentialsOutput AWS API Documentation
    #
    class DescribeChapCredentialsOutput < Struct.new(
      :chap_credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_association_arn_list
    #   An array containing the Amazon Resource Name (ARN) of each file
    #   system association to be described.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeFileSystemAssociationsInput AWS API Documentation
    #
    class DescribeFileSystemAssociationsInput < Struct.new(
      :file_system_association_arn_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_association_info_list
    #   An array containing the `FileSystemAssociationInfo` data type of
    #   each file system association to be described.
    #   @return [Array<Types::FileSystemAssociationInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeFileSystemAssociationsOutput AWS API Documentation
    #
    class DescribeFileSystemAssociationsOutput < Struct.new(
      :file_system_association_info_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the ID of the gateway.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeGatewayInformationInput AWS API Documentation
    #
    class DescribeGatewayInformationInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier assigned to your gateway during activation.
    #   This ID becomes part of the gateway Amazon Resource Name (ARN),
    #   which you use as input for other operations.
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name you configured for your gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_timezone
    #   A value that indicates the time zone configured for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_state
    #   A value that indicates the operating state of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_network_interfaces
    #   A NetworkInterface array that contains descriptions of the gateway
    #   network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] gateway_type
    #   The type of the gateway.
    #
    #   Amazon FSx File Gateway is no longer available to new customers.
    #   Existing customers of FSx File Gateway can continue to use the
    #   service normally. For capabilities similar to FSx File Gateway,
    #   visit [this blog post][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/
    #   @return [String]
    #
    # @!attribute [rw] next_update_availability_date
    #   The date on which an update to the gateway is available. This date
    #   is in the time zone of the gateway. If the gateway is not available
    #   for an update this field is not returned in the response.
    #   @return [String]
    #
    # @!attribute [rw] last_software_update
    #   The date on which the last software update was applied to the
    #   gateway. If the gateway has never been updated, this field does not
    #   return a value in the response. This only only exist and returns
    #   once it have been chosen and set by the SGW service, based on the OS
    #   version of the gateway VM
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   The ID of the Amazon EC2 instance that was used to launch the
    #   gateway.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_region
    #   The Amazon Web Services Region where the Amazon EC2 instance is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags assigned to the gateway, sorted
    #   alphabetically by key name. Each tag is a key-value pair. For a
    #   gateway with more than 10 tags assigned, you can view all tags using
    #   the `ListTagsForResource` API operation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_endpoint
    #   The configuration settings for the virtual private cloud (VPC)
    #   endpoint for your gateway.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch log group
    #   that is used to monitor events in the gateway. This field only only
    #   exist and returns once it have been chosen and set by the SGW
    #   service, based on the OS version of the gateway VM
    #   @return [String]
    #
    # @!attribute [rw] host_environment
    #   The type of hardware or software platform on which the gateway is
    #   running.
    #
    #   <note markdown="1"> Tape Gateway is no longer available on Snow Family devices.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint for your gateway.
    #
    #   Valid Values: `STANDARD` \| `FIPS`
    #   @return [String]
    #
    # @!attribute [rw] software_updates_end_date
    #   Date after which this gateway will not receive software updates for
    #   new features.
    #   @return [String]
    #
    # @!attribute [rw] deprecation_date
    #   Date after which this gateway will not receive software updates for
    #   new features and bug fixes.
    #   @return [String]
    #
    # @!attribute [rw] gateway_capacity
    #   Specifies the size of the gateway's metadata cache.
    #   @return [String]
    #
    # @!attribute [rw] supported_gateway_capacities
    #   A list of the metadata cache sizes that the gateway can support
    #   based on its current hardware specifications.
    #   @return [Array<String>]
    #
    # @!attribute [rw] host_environment_id
    #   A unique identifier for the specific instance of the host platform
    #   running the gateway. This value is only available for certain host
    #   environments, and its format depends on the host environment type.
    #   @return [String]
    #
    # @!attribute [rw] software_version
    #   The version number of the software running on the gateway appliance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeGatewayInformationOutput AWS API Documentation
    #
    class DescribeGatewayInformationOutput < Struct.new(
      :gateway_arn,
      :gateway_id,
      :gateway_name,
      :gateway_timezone,
      :gateway_state,
      :gateway_network_interfaces,
      :gateway_type,
      :next_update_availability_date,
      :last_software_update,
      :ec2_instance_id,
      :ec2_instance_region,
      :tags,
      :vpc_endpoint,
      :cloud_watch_log_group_arn,
      :host_environment,
      :endpoint_type,
      :software_updates_end_date,
      :deprecation_date,
      :gateway_capacity,
      :supported_gateway_capacities,
      :host_environment_id,
      :software_version)
      SENSITIVE = [:gateway_network_interfaces]
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the
    # gateway.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeMaintenanceStartTimeInput AWS API Documentation
    #
    class DescribeMaintenanceStartTimeInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # * DescribeMaintenanceStartTimeOutput$SoftwareUpdatePreferences
    #
    # * DescribeMaintenanceStartTimeOutput$DayOfMonth
    #
    # * DescribeMaintenanceStartTimeOutput$DayOfWeek
    #
    # * DescribeMaintenanceStartTimeOutput$HourOfDay
    #
    # * DescribeMaintenanceStartTimeOutput$MinuteOfHour
    #
    # * DescribeMaintenanceStartTimeOutput$Timezone
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] hour_of_day
    #   The hour component of the maintenance start time represented as
    #   *hh*, where *hh* is the hour (0 to 23). The hour of the day is in
    #   the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] minute_of_hour
    #   The minute component of the maintenance start time represented as
    #   *mm*, where *mm* is the minute (0 to 59). The minute of the hour is
    #   in the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] day_of_week
    #   An ordinal number between 0 and 6 that represents the day of the
    #   week, where 0 represents Sunday and 6 represents Saturday. The day
    #   of week is in the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] day_of_month
    #   The day of the month component of the maintenance start time
    #   represented as an ordinal number from 1 to 28, where 1 represents
    #   the first day of the month. It is not possible to set the
    #   maintenance schedule to start on days 29 through 31.
    #   @return [Integer]
    #
    # @!attribute [rw] timezone
    #   A value that indicates the time zone that is set for the gateway.
    #   The start time and day of week specified should be in the time zone
    #   of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] software_update_preferences
    #   A set of variables indicating the software update preferences for
    #   the gateway.
    #
    #   Includes `AutomaticUpdatePolicy` parameter with the following
    #   inputs:
    #
    #   `ALL_VERSIONS` - Enables regular gateway maintenance updates.
    #
    #   `EMERGENCY_VERSIONS_ONLY` - Disables regular gateway maintenance
    #   updates. The gateway will still receive emergency version updates on
    #   rare occasions if necessary to remedy highly critical security or
    #   durability issues. You will be notified before an emergency version
    #   update is applied. These updates are applied during your gateway's
    #   scheduled maintenance window.
    #   @return [Types::SoftwareUpdatePreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeMaintenanceStartTimeOutput AWS API Documentation
    #
    class DescribeMaintenanceStartTimeOutput < Struct.new(
      :gateway_arn,
      :hour_of_day,
      :minute_of_hour,
      :day_of_week,
      :day_of_month,
      :timezone,
      :software_update_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeNFSFileSharesInput
    #
    # @!attribute [rw] file_share_arn_list
    #   An array containing the Amazon Resource Name (ARN) of each file
    #   share to be described.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeNFSFileSharesInput AWS API Documentation
    #
    class DescribeNFSFileSharesInput < Struct.new(
      :file_share_arn_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeNFSFileSharesOutput
    #
    # @!attribute [rw] nfs_file_share_info_list
    #   An array containing a description for each requested file share.
    #   @return [Array<Types::NFSFileShareInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeNFSFileSharesOutput AWS API Documentation
    #
    class DescribeNFSFileSharesOutput < Struct.new(
      :nfs_file_share_info_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeSMBFileSharesInput
    #
    # @!attribute [rw] file_share_arn_list
    #   An array containing the Amazon Resource Name (ARN) of each file
    #   share to be described.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSMBFileSharesInput AWS API Documentation
    #
    class DescribeSMBFileSharesInput < Struct.new(
      :file_share_arn_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeSMBFileSharesOutput
    #
    # @!attribute [rw] smb_file_share_info_list
    #   An array containing a description for each requested file share.
    #   @return [Array<Types::SMBFileShareInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSMBFileSharesOutput AWS API Documentation
    #
    class DescribeSMBFileSharesOutput < Struct.new(
      :smb_file_share_info_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSMBSettingsInput AWS API Documentation
    #
    class DescribeSMBSettingsInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that the gateway is joined to.
    #   @return [String]
    #
    # @!attribute [rw] active_directory_status
    #   Indicates the status of a gateway that is a member of the Active
    #   Directory domain.
    #
    #   <note markdown="1"> This field is only used as part of a `JoinDomain` request. It is not
    #   affected by Active Directory connectivity changes that occur after
    #   the `JoinDomain` request succeeds.
    #
    #    </note>
    #
    #   * `ACCESS_DENIED`: Indicates that the `JoinDomain` operation failed
    #     due to an authentication error.
    #
    #   * `DETACHED`: Indicates that gateway is not joined to a domain.
    #
    #   * `JOINED`: Indicates that the gateway has successfully joined a
    #     domain.
    #
    #   * `JOINING`: Indicates that a `JoinDomain` operation is in progress.
    #
    #   * `NETWORK_ERROR`: Indicates that `JoinDomain` operation failed due
    #     to a network or connectivity error.
    #
    #   * `TIMEOUT`: Indicates that the `JoinDomain` operation failed
    #     because the operation didn't complete within the allotted time.
    #
    #   * `UNKNOWN_ERROR`: Indicates that the `JoinDomain` operation failed
    #     due to another type of error.
    #   @return [String]
    #
    # @!attribute [rw] smb_guest_password_set
    #   This value is `true` if a password for the guest user `smbguest` is
    #   set, otherwise `false`. Only supported for S3 File Gateways.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] smb_security_strategy
    #   The type of security strategy that was specified for file gateway.
    #
    #   * `ClientSpecified`: If you choose this option, requests are
    #     established based on what is negotiated by the client. This option
    #     is recommended when you want to maximize compatibility across
    #     different clients in your environment. Supported only for S3 File
    #     Gateway.
    #
    #   * `MandatorySigning`: If you choose this option, File Gateway only
    #     allows connections from SMBv2 or SMBv3 clients that have signing
    #     turned on. This option works with SMB clients on Microsoft Windows
    #     Vista, Windows Server 2008, or later.
    #
    #   * `MandatoryEncryption`: If you choose this option, File Gateway
    #     only allows connections from SMBv3 clients that have encryption
    #     turned on. Both 256-bit and 128-bit algorithms are allowed. This
    #     option is recommended for environments that handle sensitive data.
    #     It works with SMB clients on Microsoft Windows 8, Windows Server
    #     2012, or later.
    #
    #   * `MandatoryEncryptionNoAes128`: If you choose this option, File
    #     Gateway only allows connections from SMBv3 clients that use
    #     256-bit AES encryption algorithms. 128-bit algorithms are not
    #     allowed. This option is recommended for environments that handle
    #     sensitive data. It works with SMB clients on Microsoft Windows 8,
    #     Windows Server 2012, or later.
    #   @return [String]
    #
    # @!attribute [rw] file_shares_visible
    #   The shares on this gateway appear when listing shares. Only
    #   supported for S3 File Gateways.
    #   @return [Boolean]
    #
    # @!attribute [rw] smb_local_groups
    #   A list of Active Directory users and groups that have special
    #   permissions for SMB file shares on the gateway.
    #   @return [Types::SMBLocalGroups]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSMBSettingsOutput AWS API Documentation
    #
    class DescribeSMBSettingsOutput < Struct.new(
      :gateway_arn,
      :domain_name,
      :active_directory_status,
      :smb_guest_password_set,
      :smb_security_strategy,
      :file_shares_visible,
      :smb_local_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the DescribeSnapshotScheduleInput$VolumeARN
    # of the volume.
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSnapshotScheduleInput AWS API Documentation
    #
    class DescribeSnapshotScheduleInput < Struct.new(
      :volume_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume that was specified in
    #   the request.
    #   @return [String]
    #
    # @!attribute [rw] start_at
    #   The hour of the day at which the snapshot schedule begins
    #   represented as *hh*, where *hh* is the hour (0 to 23). The hour of
    #   the day is in the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] recurrence_in_hours
    #   The number of hours between snapshots.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The snapshot description.
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   A value that indicates the time zone of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags assigned to the snapshot schedule, sorted
    #   alphabetically by key name. Each tag is a key-value pair. For a
    #   gateway with more than 10 tags assigned, you can view all tags using
    #   the `ListTagsForResource` API operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSnapshotScheduleOutput AWS API Documentation
    #
    class DescribeSnapshotScheduleOutput < Struct.new(
      :volume_arn,
      :start_at,
      :recurrence_in_hours,
      :description,
      :timezone,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing a list of
    # DescribeStorediSCSIVolumesInput$VolumeARNs.
    #
    # @!attribute [rw] volume_arns
    #   An array of strings where each string represents the Amazon Resource
    #   Name (ARN) of a stored volume. All of the specified stored volumes
    #   must be from the same gateway. Use ListVolumes to get volume ARNs
    #   for a gateway.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeStorediSCSIVolumesInput AWS API Documentation
    #
    class DescribeStorediSCSIVolumesInput < Struct.new(
      :volume_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stored_iscsi_volumes
    #   Describes a single unit of output from DescribeStorediSCSIVolumes.
    #   The following fields are returned:
    #
    #   * `ChapEnabled`: Indicates whether mutual CHAP is enabled for the
    #     iSCSI target.
    #
    #   * `LunNumber`: The logical disk number.
    #
    #   * `NetworkInterfaceId`: The network interface ID of the stored
    #     volume that initiator use to map the stored volume as an iSCSI
    #     target.
    #
    #   * `NetworkInterfacePort`: The port used to communicate with iSCSI
    #     targets.
    #
    #   * `PreservedExistingData`: Indicates when the stored volume was
    #     created, existing data on the underlying local disk was preserved.
    #
    #   * `SourceSnapshotId`: If the stored volume was created from a
    #     snapshot, this field contains the snapshot ID used, e.g.
    #     `snap-1122aabb`. Otherwise, this field is not included.
    #
    #   * `StorediSCSIVolumes`: An array of StorediSCSIVolume objects where
    #     each object contains metadata about one stored volume.
    #
    #   * `TargetARN`: The Amazon Resource Name (ARN) of the volume target.
    #
    #   * `VolumeARN`: The Amazon Resource Name (ARN) of the stored volume.
    #
    #   * `VolumeDiskId`: The disk ID of the local disk that was specified
    #     in the CreateStorediSCSIVolume operation.
    #
    #   * `VolumeId`: The unique identifier of the storage volume, e.g.
    #     `vol-1122AABB`.
    #
    #   * `VolumeiSCSIAttributes`: An VolumeiSCSIAttributes object that
    #     represents a collection of iSCSI attributes for one stored volume.
    #
    #   * `VolumeProgress`: Represents the percentage complete if the volume
    #     is restoring or bootstrapping that represents the percent of data
    #     transferred. This field does not appear in the response if the
    #     stored volume is not restoring or bootstrapping.
    #
    #   * `VolumeSizeInBytes`: The size of the volume in bytes.
    #
    #   * `VolumeStatus`: One of the `VolumeStatus` values that indicates
    #     the state of the volume.
    #
    #   * `VolumeType`: One of the enumeration values describing the type of
    #     the volume. Currently, only `STORED` volumes are supported.
    #   @return [Array<Types::StorediSCSIVolume>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeStorediSCSIVolumesOutput AWS API Documentation
    #
    class DescribeStorediSCSIVolumesOutput < Struct.new(
      :stored_iscsi_volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTapeArchivesInput
    #
    # @!attribute [rw] tape_arns
    #   Specifies one or more unique Amazon Resource Names (ARNs) that
    #   represent the virtual tapes you want to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to begin
    #   describing virtual tapes.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the number of virtual tapes described be limited to
    #   the specified number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapeArchivesInput AWS API Documentation
    #
    class DescribeTapeArchivesInput < Struct.new(
      :tape_arns,
      :marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTapeArchivesOutput
    #
    # @!attribute [rw] tape_archives
    #   An array of virtual tape objects in the virtual tape shelf (VTS).
    #   The description includes of the Amazon Resource Name (ARN) of the
    #   virtual tapes. The information returned includes the Amazon Resource
    #   Names (ARNs) of the tapes, size of the tapes, status of the tapes,
    #   progress of the description, and tape barcode.
    #   @return [Array<Types::TapeArchive>]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which the virtual
    #   tapes that were fetched for description ended. Use this marker in
    #   your next request to fetch the next set of virtual tapes in the
    #   virtual tape shelf (VTS). If there are no more virtual tapes to
    #   describe, this field does not appear in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapeArchivesOutput AWS API Documentation
    #
    class DescribeTapeArchivesOutput < Struct.new(
      :tape_archives,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTapeRecoveryPointsInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to begin
    #   describing the virtual tape recovery points.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the number of virtual tape recovery points that are
    #   described be limited to the specified number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapeRecoveryPointsInput AWS API Documentation
    #
    class DescribeTapeRecoveryPointsInput < Struct.new(
      :gateway_arn,
      :marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTapeRecoveryPointsOutput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] tape_recovery_point_infos
    #   An array of TapeRecoveryPointInfos that are available for the
    #   specified gateway.
    #   @return [Array<Types::TapeRecoveryPointInfo>]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which the virtual
    #   tape recovery points that were listed for description ended.
    #
    #   Use this marker in your next request to list the next set of virtual
    #   tape recovery points in the list. If there are no more recovery
    #   points to describe, this field does not appear in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapeRecoveryPointsOutput AWS API Documentation
    #
    class DescribeTapeRecoveryPointsOutput < Struct.new(
      :gateway_arn,
      :tape_recovery_point_infos,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTapesInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] tape_arns
    #   Specifies one or more unique Amazon Resource Names (ARNs) that
    #   represent the virtual tapes you want to describe. If this parameter
    #   is not specified, Tape gateway returns a description of all virtual
    #   tapes associated with the specified gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   A marker value, obtained in a previous call to `DescribeTapes`. This
    #   marker indicates which page of results to retrieve.
    #
    #   If not specified, the first page of results is retrieved.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the number of virtual tapes described be limited to
    #   the specified number.
    #
    #   <note markdown="1"> Amazon Web Services may impose its own limit, if this field is not
    #   set.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapesInput AWS API Documentation
    #
    class DescribeTapesInput < Struct.new(
      :gateway_arn,
      :tape_arns,
      :marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeTapesOutput
    #
    # @!attribute [rw] tapes
    #   An array of virtual tape descriptions.
    #   @return [Array<Types::Tape>]
    #
    # @!attribute [rw] marker
    #   An opaque string that can be used as part of a subsequent
    #   `DescribeTapes` call to retrieve the next page of results.
    #
    #   If a response does not contain a marker, then there are no more
    #   results to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapesOutput AWS API Documentation
    #
    class DescribeTapesOutput < Struct.new(
      :tapes,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeUploadBufferInput AWS API Documentation
    #
    class DescribeUploadBufferInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   An array of the gateway's local disk IDs that are configured as
    #   working storage. Each local disk ID is specified as a string
    #   (minimum length of 1 and maximum length of 300). If no local disks
    #   are configured as working storage, then the DiskIds array is empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] upload_buffer_used_in_bytes
    #   The total number of bytes being used in the gateway's upload
    #   buffer.
    #   @return [Integer]
    #
    # @!attribute [rw] upload_buffer_allocated_in_bytes
    #   The total number of bytes allocated in the gateway's as upload
    #   buffer.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeUploadBufferOutput AWS API Documentation
    #
    class DescribeUploadBufferOutput < Struct.new(
      :gateway_arn,
      :disk_ids,
      :upload_buffer_used_in_bytes,
      :upload_buffer_allocated_in_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeVTLDevicesInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] vtl_device_arns
    #   An array of strings, where each string represents the Amazon
    #   Resource Name (ARN) of a VTL device.
    #
    #   <note markdown="1"> All of the specified VTL devices must be from the same gateway. If
    #   no VTL devices are specified, the result will contain all devices on
    #   the specified gateway.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to begin
    #   describing the VTL devices.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the number of VTL devices described be limited to the
    #   specified number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeVTLDevicesInput AWS API Documentation
    #
    class DescribeVTLDevicesInput < Struct.new(
      :gateway_arn,
      :vtl_device_arns,
      :marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeVTLDevicesOutput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] vtl_devices
    #   An array of VTL device objects composed of the Amazon Resource Name
    #   (ARN) of the VTL devices.
    #   @return [Array<Types::VTLDevice>]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which the VTL
    #   devices that were fetched for description ended. Use the marker in
    #   your next request to fetch the next set of VTL devices in the list.
    #   If there are no more VTL devices to describe, this field does not
    #   appear in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeVTLDevicesOutput AWS API Documentation
    #
    class DescribeVTLDevicesOutput < Struct.new(
      :gateway_arn,
      :vtl_devices,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the
    # gateway.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeWorkingStorageInput AWS API Documentation
    #
    class DescribeWorkingStorageInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] disk_ids
    #   An array of the gateway's local disk IDs that are configured as
    #   working storage. Each local disk ID is specified as a string
    #   (minimum length of 1 and maximum length of 300). If no local disks
    #   are configured as working storage, then the DiskIds array is empty.
    #   @return [Array<String>]
    #
    # @!attribute [rw] working_storage_used_in_bytes
    #   The total working storage in bytes in use by the gateway. If no
    #   working storage is configured for the gateway, this field returns 0.
    #   @return [Integer]
    #
    # @!attribute [rw] working_storage_allocated_in_bytes
    #   The total working storage in bytes allocated for the gateway. If no
    #   working storage is configured for the gateway, this field returns 0.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeWorkingStorageOutput AWS API Documentation
    #
    class DescribeWorkingStorageOutput < Struct.new(
      :gateway_arn,
      :disk_ids,
      :working_storage_used_in_bytes,
      :working_storage_allocated_in_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # AttachVolumeInput
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume to detach from the
    #   gateway.
    #   @return [String]
    #
    # @!attribute [rw] force_detach
    #   Set to `true` to forcibly remove the iSCSI connection of the target
    #   volume and detach the volume. The default is `false`. If this value
    #   is set to `false`, you must manually disconnect the iSCSI connection
    #   from the target volume.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DetachVolumeInput AWS API Documentation
    #
    class DetachVolumeInput < Struct.new(
      :volume_arn,
      :force_detach)
      SENSITIVE = []
      include Aws::Structure
    end

    # AttachVolumeOutput
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume that was detached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DetachVolumeOutput AWS API Documentation
    #
    class DetachVolumeOutput < Struct.new(
      :volume_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists iSCSI information about a VTL device.
    #
    # @!attribute [rw] target_arn
    #   Specifies the unique Amazon Resource Name (ARN) that encodes the
    #   iSCSI qualified name(iqn) of a tape drive or media changer target.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface identifier of the VTL device.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_port
    #   The port used to communicate with iSCSI VTL device targets.
    #   @return [Integer]
    #
    # @!attribute [rw] chap_enabled
    #   Indicates whether mutual CHAP is enabled for the iSCSI target.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeviceiSCSIAttributes AWS API Documentation
    #
    class DeviceiSCSIAttributes < Struct.new(
      :target_arn,
      :network_interface_id,
      :network_interface_port,
      :chap_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # DisableGatewayInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DisableGatewayInput AWS API Documentation
    #
    class DisableGatewayInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # DisableGatewayOutput
    #
    # @!attribute [rw] gateway_arn
    #   The unique Amazon Resource Name (ARN) of the disabled gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DisableGatewayOutput AWS API Documentation
    #
    class DisableGatewayOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_association_arn
    #   The Amazon Resource Name (ARN) of the file system association to be
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   If this value is set to true, the operation disassociates an Amazon
    #   FSx file system immediately. It ends all data uploads to the file
    #   system, and the file system association enters the `FORCE_DELETING`
    #   status. If this value is set to false, the Amazon FSx file system
    #   does not disassociate until all data is uploaded.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DisassociateFileSystemInput AWS API Documentation
    #
    class DisassociateFileSystemInput < Struct.new(
      :file_system_association_arn,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_association_arn
    #   The Amazon Resource Name (ARN) of the deleted file system
    #   association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DisassociateFileSystemOutput AWS API Documentation
    #
    class DisassociateFileSystemOutput < Struct.new(
      :file_system_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a gateway's local disk.
    #
    # @!attribute [rw] disk_id
    #   The unique device ID or other distinguishing data that identifies a
    #   local disk.
    #   @return [String]
    #
    # @!attribute [rw] disk_path
    #   The path of a local disk in the gateway virtual machine (VM).
    #   @return [String]
    #
    # @!attribute [rw] disk_node
    #   The device node of a local disk as assigned by the virtualization
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] disk_status
    #   A value that represents the status of a local disk.
    #   @return [String]
    #
    # @!attribute [rw] disk_size_in_bytes
    #   The local disk size in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] disk_allocation_type
    #   One of the `DiskAllocationType` enumeration values that identifies
    #   how a local disk is used.
    #
    #   Valid Values: `UPLOAD_BUFFER` \| `CACHE_STORAGE`
    #   @return [String]
    #
    # @!attribute [rw] disk_allocation_resource
    #   The iSCSI qualified name (IQN) that is defined for a disk. This
    #   field is not included in the response if the local disk is not
    #   defined as an iSCSI target. The format of this field is
    #   *targetIqn::LUNNumber::region-volumeId*.
    #   @return [String]
    #
    # @!attribute [rw] disk_attribute_list
    #   A list of values that represents attributes of a local disk.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/Disk AWS API Documentation
    #
    class Disk < Struct.new(
      :disk_id,
      :disk_path,
      :disk_node,
      :disk_status,
      :disk_size_in_bytes,
      :disk_allocation_type,
      :disk_allocation_resource,
      :disk_attribute_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies network configuration information for the gateway associated
    # with the Amazon FSx file system.
    #
    # @!attribute [rw] ip_addresses
    #   A list of gateway IP addresses on which the associated Amazon FSx
    #   file system is available.
    #
    #   <note markdown="1"> If multiple file systems are associated with this gateway, this
    #   field is required.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/EndpointNetworkConfiguration AWS API Documentation
    #
    class EndpointNetworkConfiguration < Struct.new(
      :ip_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share for which you want
    #   to start the cache clean operation.
    #   @return [String]
    #
    # @!attribute [rw] force_remove
    #   Specifies whether cache entries with full or partial file data
    #   currently stored on the gateway will be forcibly removed by the
    #   cache clean operation.
    #
    #   Valid arguments:
    #
    #   * `False` - The cache clean operation skips cache entries failing
    #     upload if they are associated with data currently stored on the
    #     gateway. This preserves the cached data.
    #
    #   * `True` - The cache clean operation removes cache entries failing
    #     upload even if they are associated with data currently stored on
    #     the gateway. This deletes the cached data.
    #
    #     If `ForceRemove` is set to `True`, the cache clean operation will
    #     delete file data from the gateway which might otherwise be
    #     recoverable.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/EvictFilesFailingUploadInput AWS API Documentation
    #
    class EvictFilesFailingUploadInput < Struct.new(
      :file_share_arn,
      :force_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_id
    #   The randomly generated ID of the CloudWatch notification associated
    #   with the cache clean operation. This ID is in UUID format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/EvictFilesFailingUploadOutput AWS API Documentation
    #
    class EvictFilesFailingUploadOutput < Struct.new(
      :notification_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a file share. Only supported S3 File Gateway.
    #
    # @!attribute [rw] file_share_type
    #   The type of the file share.
    #   @return [String]
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share.
    #   @return [String]
    #
    # @!attribute [rw] file_share_id
    #   The ID of the file share.
    #   @return [String]
    #
    # @!attribute [rw] file_share_status
    #   The status of the file share.
    #
    #   Valid Values: `CREATING` \| `UPDATING` \| `AVAILABLE` \| `DELETING`
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/FileShareInfo AWS API Documentation
    #
    class FileShareInfo < Struct.new(
      :file_share_type,
      :file_share_arn,
      :file_share_id,
      :file_share_status,
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the object returned by `DescribeFileSystemAssociations` that
    # describes a created file system association.
    #
    # @!attribute [rw] file_system_association_arn
    #   The Amazon Resource Name (ARN) of the file system association.
    #   @return [String]
    #
    # @!attribute [rw] location_arn
    #   The ARN of the backend Amazon FSx file system used for storing file
    #   data. For information, see [FileSystem][1] in the *Amazon FSx API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/fsx/latest/APIReference/API_FileSystem.html
    #   @return [String]
    #
    # @!attribute [rw] file_system_association_status
    #   The status of the file system association. Valid Values: `AVAILABLE`
    #   \| `CREATING` \| `DELETING` \| `FORCE_DELETING` \| `UPDATING` \|
    #   `ERROR`
    #   @return [String]
    #
    # @!attribute [rw] audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for the audit
    #   logs.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags assigned to the SMB file share, sorted
    #   alphabetically by key name. Each tag is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] cache_attributes
    #   The refresh cache information for the file share or FSx file
    #   systems.
    #   @return [Types::CacheAttributes]
    #
    # @!attribute [rw] endpoint_network_configuration
    #   Specifies network configuration information for the gateway
    #   associated with the Amazon FSx file system.
    #
    #   <note markdown="1"> If multiple file systems are associated with this gateway, this
    #   parameter's `IpAddresses` field is required.
    #
    #    </note>
    #   @return [Types::EndpointNetworkConfiguration]
    #
    # @!attribute [rw] file_system_association_status_details
    #   An array containing the FileSystemAssociationStatusDetail data type,
    #   which provides detailed information on file system association
    #   status.
    #   @return [Array<Types::FileSystemAssociationStatusDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/FileSystemAssociationInfo AWS API Documentation
    #
    class FileSystemAssociationInfo < Struct.new(
      :file_system_association_arn,
      :location_arn,
      :file_system_association_status,
      :audit_destination_arn,
      :gateway_arn,
      :tags,
      :cache_attributes,
      :endpoint_network_configuration,
      :file_system_association_status_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information on file system association status.
    #
    # @!attribute [rw] error_code
    #   The error code for a given file system association status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/FileSystemAssociationStatusDetail AWS API Documentation
    #
    class FileSystemAssociationStatusDetail < Struct.new(
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets the summary returned by `ListFileSystemAssociation`, which is a
    # summary of a created file system association.
    #
    # @!attribute [rw] file_system_association_id
    #   The ID of the file system association.
    #   @return [String]
    #
    # @!attribute [rw] file_system_association_arn
    #   The Amazon Resource Name (ARN) of the file system association.
    #   @return [String]
    #
    # @!attribute [rw] file_system_association_status
    #   The status of the file share. Valid Values: `AVAILABLE` \|
    #   `CREATING` \| `DELETING` \| `FORCE_DELETING` \| `UPDATING` \|
    #   `ERROR`
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/FileSystemAssociationSummary AWS API Documentation
    #
    class FileSystemAssociationSummary < Struct.new(
      :file_system_association_id,
      :file_system_association_arn,
      :file_system_association_status,
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a gateway object.
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier assigned to your gateway during activation.
    #   This ID becomes part of the gateway Amazon Resource Name (ARN),
    #   which you use as input for other operations.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_type
    #   The type of the gateway.
    #
    #   Amazon FSx File Gateway is no longer available to new customers.
    #   Existing customers of FSx File Gateway can continue to use the
    #   service normally. For capabilities similar to FSx File Gateway,
    #   visit [this blog post][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/blogs/storage/switch-your-file-share-access-from-amazon-fsx-file-gateway-to-amazon-fsx-for-windows-file-server/
    #   @return [String]
    #
    # @!attribute [rw] gateway_operational_state
    #   The state of the gateway.
    #
    #   Valid Values: `DISABLED` \| `ACTIVE`
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_id
    #   The ID of the Amazon EC2 instance that was used to launch the
    #   gateway.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_region
    #   The Amazon Web Services Region where the Amazon EC2 instance is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] host_environment
    #   The type of hardware or software platform on which the gateway is
    #   running.
    #
    #   <note markdown="1"> Tape Gateway is no longer available on Snow Family devices.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] host_environment_id
    #   A unique identifier for the specific instance of the host platform
    #   running the gateway. This value is only available for certain host
    #   environments, and its format depends on the host environment type.
    #   @return [String]
    #
    # @!attribute [rw] deprecation_date
    #   Date after which this gateway will not receive software updates for
    #   new features and bug fixes.
    #   @return [String]
    #
    # @!attribute [rw] software_version
    #   The version number of the software running on the gateway appliance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/GatewayInfo AWS API Documentation
    #
    class GatewayInfo < Struct.new(
      :gateway_id,
      :gateway_arn,
      :gateway_type,
      :gateway_operational_state,
      :gateway_name,
      :ec2_instance_id,
      :ec2_instance_region,
      :host_environment,
      :host_environment_id,
      :deprecation_date,
      :software_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error has occurred during the request. For more
    # information, see the error and message fields.
    #
    # @!attribute [rw] message
    #   A human-readable message describing the error that occurred.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   A StorageGatewayError that provides more information about the cause
    #   of the error.
    #   @return [Types::StorageGatewayError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :message,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception occurred because an invalid gateway request was issued to
    # the service. For more information, see the error and message fields.
    #
    # @!attribute [rw] message
    #   A human-readable message describing the error that occurred.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   A StorageGatewayError that provides more detail about the cause of
    #   the error.
    #   @return [Types::StorageGatewayError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/InvalidGatewayRequestException AWS API Documentation
    #
    class InvalidGatewayRequestException < Struct.new(
      :message,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # JoinDomainInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the
    #   `ListGateways` operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that you want the gateway to join.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit
    #   The organizational unit (OU) is a container in an Active Directory
    #   that can hold users, groups, computers, and other OUs and this
    #   parameter specifies the OU that the gateway will join within the AD
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_controllers
    #   List of IP addresses, NetBIOS names, or host names of your domain
    #   server. If you need to specify the port number include it after the
    #   colon (“:”). For example, `mydc.mydomain.com:389`.
    #
    #   <note markdown="1"> S3 File Gateway supports IPv6 addresses in addition to IPv4 and
    #   other existing formats.
    #
    #    FSx File Gateway does not support IPv6.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] timeout_in_seconds
    #   Specifies the time in seconds, in which the `JoinDomain` operation
    #   must complete. The default is 20 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] user_name
    #   Sets the user name of user who has permission to add the gateway to
    #   the Active Directory domain. The domain user account should be
    #   enabled to join computers to the domain. For example, you can use
    #   the domain administrator account or an account with delegated
    #   permissions to join computers to the domain.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Sets the password of the user who has permission to add the gateway
    #   to the Active Directory domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/JoinDomainInput AWS API Documentation
    #
    class JoinDomainInput < Struct.new(
      :gateway_arn,
      :domain_name,
      :organizational_unit,
      :domain_controllers,
      :timeout_in_seconds,
      :user_name,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # JoinDomainOutput
    #
    # @!attribute [rw] gateway_arn
    #   The unique Amazon Resource Name (ARN) of the gateway that joined the
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] active_directory_status
    #   Indicates the status of the gateway as a member of the Active
    #   Directory domain.
    #
    #   <note markdown="1"> This field is only used as part of a `JoinDomain` request. It is not
    #   affected by Active Directory connectivity changes that occur after
    #   the `JoinDomain` request succeeds.
    #
    #    </note>
    #
    #   * `ACCESS_DENIED`: Indicates that the `JoinDomain` operation failed
    #     due to an authentication error.
    #
    #   * `DETACHED`: Indicates that gateway is not joined to a domain.
    #
    #   * `JOINED`: Indicates that the gateway has successfully joined a
    #     domain.
    #
    #   * `JOINING`: Indicates that a `JoinDomain` operation is in progress.
    #
    #   * `INSUFFICIENT_PERMISSIONS`: Indicates that the `JoinDomain`
    #     operation failed because the specified user lacks the necessary
    #     permissions to join the domain.
    #
    #   * `NETWORK_ERROR`: Indicates that `JoinDomain` operation failed due
    #     to a network or connectivity error.
    #
    #   * `TIMEOUT`: Indicates that the `JoinDomain` operation failed
    #     because the operation didn't complete within the allotted time.
    #
    #   * `UNKNOWN_ERROR`: Indicates that the `JoinDomain` operation failed
    #     due to another type of error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/JoinDomainOutput AWS API Documentation
    #
    class JoinDomainOutput < Struct.new(
      :gateway_arn,
      :active_directory_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListAutomaticTapeCreationPoliciesInput AWS API Documentation
    #
    class ListAutomaticTapeCreationPoliciesInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automatic_tape_creation_policy_infos
    #   Gets a listing of information about the gateway's automatic tape
    #   creation policies, including the automatic tape creation rules and
    #   the gateway that is using the policies.
    #   @return [Array<Types::AutomaticTapeCreationPolicyInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListAutomaticTapeCreationPoliciesOutput AWS API Documentation
    #
    class ListAutomaticTapeCreationPoliciesOutput < Struct.new(
      :automatic_tape_creation_policy_infos)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Opaque pagination token returned from a previous `ListCacheReports`
    #   operation. If present, `Marker` specifies where to continue the list
    #   from after a previous call to `ListCacheReports`. Optional.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListCacheReportsInput AWS API Documentation
    #
    class ListCacheReportsInput < Struct.new(
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_report_list
    #   A list of existing cache reports for all file shares associated with
    #   your Amazon Web Services account. This list includes all information
    #   provided by the `DescribeCacheReport` action, such as report status,
    #   completion progress, start time, end time, filters, and tags.
    #   @return [Array<Types::CacheReportInfo>]
    #
    # @!attribute [rw] marker
    #   If the request includes `Marker`, the response returns that value in
    #   this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListCacheReportsOutput AWS API Documentation
    #
    class ListCacheReportsOutput < Struct.new(
      :cache_report_list,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListFileShareInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway whose file shares you
    #   want to list. If this field is not present, all file shares under
    #   your account are listed.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of file shares to return in the response. The
    #   value must be an integer with a value greater than zero. Optional.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Opaque pagination token returned from a previous ListFileShares
    #   operation. If present, `Marker` specifies where to continue the list
    #   from after a previous call to ListFileShares. Optional.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListFileSharesInput AWS API Documentation
    #
    class ListFileSharesInput < Struct.new(
      :gateway_arn,
      :limit,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListFileShareOutput
    #
    # @!attribute [rw] marker
    #   If the request includes `Marker`, the response returns that value in
    #   this field.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   If a value is present, there are more file shares to return. In a
    #   subsequent request, use `NextMarker` as the value for `Marker` to
    #   retrieve the next set of file shares.
    #   @return [String]
    #
    # @!attribute [rw] file_share_info_list
    #   An array of information about the S3 File Gateway's file shares.
    #   @return [Array<Types::FileShareInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListFileSharesOutput AWS API Documentation
    #
    class ListFileSharesOutput < Struct.new(
      :marker,
      :next_marker,
      :file_share_info_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of file system associations to return in the
    #   response. If present, `Limit` must be an integer with a value
    #   greater than zero. Optional.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Opaque pagination token returned from a previous
    #   `ListFileSystemAssociations` operation. If present, `Marker`
    #   specifies where to continue the list from after a previous call to
    #   `ListFileSystemAssociations`. Optional.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListFileSystemAssociationsInput AWS API Documentation
    #
    class ListFileSystemAssociationsInput < Struct.new(
      :gateway_arn,
      :limit,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   If the request includes `Marker`, the response returns that value in
    #   this field.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   If a value is present, there are more file system associations to
    #   return. In a subsequent request, use `NextMarker` as the value for
    #   `Marker` to retrieve the next set of file system associations.
    #   @return [String]
    #
    # @!attribute [rw] file_system_association_summary_list
    #   An array of information about the Amazon FSx gateway's file system
    #   associations.
    #   @return [Array<Types::FileSystemAssociationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListFileSystemAssociationsOutput AWS API Documentation
    #
    class ListFileSystemAssociationsOutput < Struct.new(
      :marker,
      :next_marker,
      :file_system_association_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing zero or more of the following fields:
    #
    # * ListGatewaysInput$Limit
    #
    # * ListGatewaysInput$Marker
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to begin the
    #   returned list of gateways.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the list of gateways returned be limited to the
    #   specified number of items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListGatewaysInput AWS API Documentation
    #
    class ListGatewaysInput < Struct.new(
      :marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateways
    #   An array of GatewayInfo objects.
    #   @return [Array<Types::GatewayInfo>]
    #
    # @!attribute [rw] marker
    #   Use the marker in your next request to fetch the next set of
    #   gateways in the list. If there are no more gateways to list, this
    #   field does not appear in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListGatewaysOutput AWS API Documentation
    #
    class ListGatewaysOutput < Struct.new(
      :gateways,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the
    # gateway.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListLocalDisksInput AWS API Documentation
    #
    class ListLocalDisksInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] disks
    #   A JSON object containing the following fields:
    #
    #   * ListLocalDisksOutput$Disks
    #
    #   ^
    #   @return [Array<Types::Disk>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListLocalDisksOutput AWS API Documentation
    #
    class ListLocalDisksOutput < Struct.new(
      :gateway_arn,
      :disks)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListTagsForResourceInput
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   list tags.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to begin
    #   returning the list of tags.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the list of tags returned be limited to the specified
    #   number of items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      :marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListTagsForResourceOutput
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   list tags.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An opaque string that indicates the position at which to stop
    #   returning the list of tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array that contains the tags for the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :resource_arn,
      :marker,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_arns
    #   The Amazon Resource Name (ARN) of each of the custom tape pools you
    #   want to list. If you don't specify a custom tape pool ARN, the
    #   response lists all custom tape pools.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   A string that indicates the position at which to begin the returned
    #   list of tape pools.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   An optional number limit for the tape pools in the list returned by
    #   this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTapePoolsInput AWS API Documentation
    #
    class ListTapePoolsInput < Struct.new(
      :pool_arns,
      :marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pool_infos
    #   An array of `PoolInfo` objects, where each object describes a single
    #   custom tape pool. If there are no custom tape pools, the `PoolInfos`
    #   is an empty array.
    #   @return [Array<Types::PoolInfo>]
    #
    # @!attribute [rw] marker
    #   A string that indicates the position at which to begin the returned
    #   list of tape pools. Use the marker in your next request to continue
    #   pagination of tape pools. If there are no more tape pools to list,
    #   this element does not appear in the response body.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTapePoolsOutput AWS API Documentation
    #
    class ListTapePoolsOutput < Struct.new(
      :pool_infos,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object that contains one or more of the following fields:
    #
    # * ListTapesInput$Limit
    #
    # * ListTapesInput$Marker
    #
    # * ListTapesInput$TapeARNs
    #
    # @!attribute [rw] tape_arns
    #   The Amazon Resource Name (ARN) of each of the tapes you want to
    #   list. If you don't specify a tape ARN, the response lists all tapes
    #   in both your VTL and VTS.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   A string that indicates the position at which to begin the returned
    #   list of tapes.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   An optional number limit for the tapes in the list returned by this
    #   call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTapesInput AWS API Documentation
    #
    class ListTapesInput < Struct.new(
      :tape_arns,
      :marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # * ListTapesOutput$Marker
    #
    # * ListTapesOutput$VolumeInfos
    #
    # @!attribute [rw] tape_infos
    #   An array of TapeInfo objects, where each object describes a single
    #   tape. If there are no tapes in the tape library or VTS, then the
    #   `TapeInfos` is an empty array.
    #   @return [Array<Types::TapeInfo>]
    #
    # @!attribute [rw] marker
    #   A string that indicates the position at which to begin returning the
    #   next list of tapes. Use the marker in your next request to continue
    #   pagination of tapes. If there are no more tapes to list, this
    #   element does not appear in the response body.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTapesOutput AWS API Documentation
    #
    class ListTapesOutput < Struct.new(
      :tape_infos,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListVolumeInitiatorsInput
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes for the gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumeInitiatorsInput AWS API Documentation
    #
    class ListVolumeInitiatorsInput < Struct.new(
      :volume_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListVolumeInitiatorsOutput
    #
    # @!attribute [rw] initiators
    #   The host names and port numbers of all iSCSI initiators that are
    #   connected to the gateway.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumeInitiatorsOutput AWS API Documentation
    #
    class ListVolumeInitiatorsOutput < Struct.new(
      :initiators)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumeRecoveryPointsInput AWS API Documentation
    #
    class ListVolumeRecoveryPointsInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] volume_recovery_point_infos
    #   An array of VolumeRecoveryPointInfo objects.
    #   @return [Array<Types::VolumeRecoveryPointInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumeRecoveryPointsOutput AWS API Documentation
    #
    class ListVolumeRecoveryPointsOutput < Struct.new(
      :gateway_arn,
      :volume_recovery_point_infos)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object that contains one or more of the following fields:
    #
    # * ListVolumesInput$Limit
    #
    # * ListVolumesInput$Marker
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A string that indicates the position at which to begin the returned
    #   list of volumes. Obtain the marker from the response of a previous
    #   List iSCSI Volumes request.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifies that the list of volumes returned be limited to the
    #   specified number of items.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumesInput AWS API Documentation
    #
    class ListVolumesInput < Struct.new(
      :gateway_arn,
      :marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # * ListVolumesOutput$Marker
    #
    # * ListVolumesOutput$VolumeInfos
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use the marker in your next request to continue pagination of iSCSI
    #   volumes. If there are no more volumes to list, this field does not
    #   appear in the response body.
    #   @return [String]
    #
    # @!attribute [rw] volume_infos
    #   An array of VolumeInfo objects, where each object describes an iSCSI
    #   volume. If no volumes are defined for the gateway, then
    #   `VolumeInfos` is an empty array "\[\]".
    #   @return [Array<Types::VolumeInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumesOutput AWS API Documentation
    #
    class ListVolumesOutput < Struct.new(
      :gateway_arn,
      :marker,
      :volume_infos)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes Network File System (NFS) file share default values. Files
    # and folders stored as Amazon S3 objects in S3 buckets don't, by
    # default, have Unix file permissions assigned to them. Upon discovery
    # in an S3 bucket by Storage Gateway, the S3 objects that represent
    # files and folders are assigned these default Unix permissions. This
    # operation is only supported for S3 File Gateways.
    #
    # @!attribute [rw] file_mode
    #   The Unix file mode in the form "nnnn". For example, `0666`
    #   represents the default file mode inside the file share. The default
    #   value is `0666`.
    #   @return [String]
    #
    # @!attribute [rw] directory_mode
    #   The Unix directory mode in the form "nnnn". For example, `0666`
    #   represents the default access mode for all directories inside the
    #   file share. The default value is `0777`.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The default group ID for the file share (unless the files have
    #   another group ID specified). The default value is `nfsnobody`.
    #   @return [Integer]
    #
    # @!attribute [rw] owner_id
    #   The default owner ID for files in the file share (unless the files
    #   have another owner ID specified). The default value is `nfsnobody`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/NFSFileShareDefaults AWS API Documentation
    #
    class NFSFileShareDefaults < Struct.new(
      :file_mode,
      :directory_mode,
      :group_id,
      :owner_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Unix file permissions and ownership information assigned, by
    # default, to native S3 objects when an S3 File Gateway discovers them
    # in S3 buckets. This operation is only supported in S3 File Gateways.
    #
    # @!attribute [rw] nfs_file_share_defaults
    #   Describes Network File System (NFS) file share default values. Files
    #   and folders stored as Amazon S3 objects in S3 buckets don't, by
    #   default, have Unix file permissions assigned to them. Upon discovery
    #   in an S3 bucket by Storage Gateway, the S3 objects that represent
    #   files and folders are assigned these default Unix permissions. This
    #   operation is only supported for S3 File Gateways.
    #   @return [Types::NFSFileShareDefaults]
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share.
    #   @return [String]
    #
    # @!attribute [rw] file_share_id
    #   The ID of the file share.
    #   @return [String]
    #
    # @!attribute [rw] file_share_status
    #   The status of the file share.
    #
    #   Valid Values: `CREATING` \| `UPDATING` \| `AVAILABLE` \| `DELETING`
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   A value that specifies the type of server-side encryption that the
    #   file share will use for the data that it stores in Amazon S3.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kms_encrypted
    #   Optional. Set to `true` to use Amazon S3 server-side encryption with
    #   your own KMS key (SSE-KMS), or `false` to use a key managed by
    #   Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #   `EncryptionType` parameter instead.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   Optional. The Amazon Resource Name (ARN) of a symmetric customer
    #   master key (CMK) used for Amazon S3 server-side encryption. Storage
    #   Gateway does not support asymmetric CMKs. This value must be set if
    #   `KMSEncrypted` is `true`, or if `EncryptionType` is `SseKms` or
    #   `DsseKms`.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The file share path used by the NFS client to identify the mount
    #   point.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the IAM role that an S3 File Gateway assumes when it
    #   accesses the underlying storage.
    #   @return [String]
    #
    # @!attribute [rw] location_arn
    #   A custom ARN for the backend storage used for storing data for file
    #   shares. It includes a resource ARN with an optional prefix
    #   concatenation. The prefix must end with a forward slash (/).
    #
    #   <note markdown="1"> You can specify LocationARN as a bucket ARN, access point ARN or
    #   access point alias, as shown in the following examples.
    #
    #    Bucket ARN:
    #
    #    `arn:aws:s3:::amzn-s3-demo-bucket/prefix/`
    #
    #    Access point ARN:
    #
    #    `arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/`
    #
    #    If you specify an access point, the bucket policy must be configured
    #   to delegate access control to the access point. For information, see
    #   [Delegating access control to access points][1] in the *Amazon S3
    #   User Guide*.
    #
    #    Access point alias:
    #
    #    `test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias`
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control
    #   @return [String]
    #
    # @!attribute [rw] default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket
    #   by the S3 File Gateway. The default value is `S3_STANDARD`.
    #   Optional.
    #
    #   Valid Values: `S3_STANDARD` \| `S3_INTELLIGENT_TIERING` \|
    #   `S3_STANDARD_IA` \| `S3_ONEZONE_IA`
    #   @return [String]
    #
    # @!attribute [rw] object_acl
    #   A value that sets the access control list (ACL) permission for
    #   objects in the S3 bucket that an S3 File Gateway puts objects into.
    #   The default value is `private`.
    #   @return [String]
    #
    # @!attribute [rw] client_list
    #   The list of clients that are allowed to access the S3 File Gateway.
    #   The list must contain either valid IPv4/IPv6 addresses or valid CIDR
    #   blocks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] squash
    #   The user mapped to anonymous user. Valid options are the following:
    #
    #   * `RootSquash`: Only root is mapped to anonymous user.
    #
    #   * `NoSquash`: No one is mapped to anonymous user.
    #
    #   * `AllSquash`: Everyone is mapped to anonymous user.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   A value that sets the write status of a file share. Set this value
    #   to `true` to set the write status to read-only, otherwise set to
    #   `false`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] guess_mime_type_enabled
    #   A value that enables guessing of the MIME type for uploaded objects
    #   based on file extensions. Set this value to `true` to enable MIME
    #   type guessing, otherwise set to `false`. The default value is
    #   `true`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] requester_pays
    #   A value that sets who pays the cost of the request and the cost
    #   associated with data download from the S3 bucket. If this value is
    #   set to `true`, the requester pays the costs; otherwise, the S3
    #   bucket owner pays. However, the S3 bucket owner always pays the cost
    #   of storing data.
    #
    #   <note markdown="1"> `RequesterPays` is a configuration for the S3 bucket that backs the
    #   file share, so make sure that the configuration on the file share is
    #   the same as the S3 bucket configuration.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags assigned to the NFS file share, sorted
    #   alphabetically by key name. Each tag is a key-value pair. For a
    #   gateway with more than 10 tags assigned, you can view all tags using
    #   the `ListTagsForResource` API operation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] file_share_name
    #   The name of the file share. Optional.
    #
    #   <note markdown="1"> `FileShareName` must be set if an S3 prefix name is set in
    #   `LocationARN`, or if an access point or access point alias is used.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cache_attributes
    #   Refresh cache information for the file share.
    #   @return [Types::CacheAttributes]
    #
    # @!attribute [rw] notification_policy
    #   The notification policy of the file share. `SettlingTimeInSeconds`
    #   controls the number of seconds to wait after the last point in time
    #   a client wrote to a file before generating an `ObjectUploaded`
    #   notification. Because clients can make many small writes to files,
    #   it's best to set this parameter for as long as possible to avoid
    #   generating multiple notifications for the same file in a small time
    #   period.
    #
    #   <note markdown="1"> `SettlingTimeInSeconds` has no effect on the timing of the object
    #   uploading to Amazon S3, only the timing of the notification.
    #
    #    This setting is not meant to specify an exact time at which the
    #   notification will be sent. In some cases, the gateway might require
    #   more than the specified delay time to generate and send
    #   notifications.
    #
    #    </note>
    #
    #   The following example sets `NotificationPolicy` on with
    #   `SettlingTimeInSeconds` set to 60.
    #
    #   `{"Upload": {"SettlingTimeInSeconds": 60}}`
    #
    #   The following example sets `NotificationPolicy` off.
    #
    #   `{}`
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_dns_name
    #   Specifies the DNS name for the VPC endpoint that the NFS file share
    #   uses to connect to Amazon S3.
    #
    #   <note markdown="1"> This parameter is required for NFS file shares that connect to
    #   Amazon S3 through a VPC endpoint, a VPC access point, or an access
    #   point alias that points to a VPC access point.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] bucket_region
    #   Specifies the Region of the S3 bucket where the NFS file share
    #   stores files.
    #
    #   <note markdown="1"> This parameter is required for NFS file shares that connect to
    #   Amazon S3 through a VPC endpoint, a VPC access point, or an access
    #   point alias that points to a VPC access point.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for audit logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/NFSFileShareInfo AWS API Documentation
    #
    class NFSFileShareInfo < Struct.new(
      :nfs_file_share_defaults,
      :file_share_arn,
      :file_share_id,
      :file_share_status,
      :gateway_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :path,
      :role,
      :location_arn,
      :default_storage_class,
      :object_acl,
      :client_list,
      :squash,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :tags,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :vpc_endpoint_dns_name,
      :bucket_region,
      :audit_destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a gateway's network interface.
    #
    # @!attribute [rw] ipv_4_address
    #   The Internet Protocol version 4 (IPv4) address of the interface.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   The Media Access Control (MAC) address of the interface.
    #
    #   <note markdown="1"> This is currently unsupported and will not be returned in output.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_address
    #   The Internet Protocol version 6 (IPv6) address of the interface.
    #
    #   <note markdown="1"> This element returns IPv6 addresses for all gateway types except FSx
    #   File Gateway.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :ipv_4_address,
      :mac_address,
      :ipv_6_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/NotifyWhenUploadedInput AWS API Documentation
    #
    class NotifyWhenUploadedInput < Struct.new(
      :file_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share.
    #   @return [String]
    #
    # @!attribute [rw] notification_id
    #   The randomly generated ID of the notification that was sent. This ID
    #   is in UUID format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/NotifyWhenUploadedOutput AWS API Documentation
    #
    class NotifyWhenUploadedOutput < Struct.new(
      :file_share_arn,
      :notification_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a custom tape pool.
    #
    # @!attribute [rw] pool_arn
    #   The Amazon Resource Name (ARN) of the custom tape pool. Use the
    #   ListTapePools operation to return a list of custom tape pools for
    #   your account and Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] pool_name
    #   The name of the custom tape pool. `PoolName` can use all ASCII
    #   characters, except '/' and '\\'.
    #   @return [String]
    #
    # @!attribute [rw] storage_class
    #   The storage class that is associated with the custom pool. When you
    #   use your backup application to eject the tape, the tape is archived
    #   directly into the storage class (S3 Glacier or S3 Glacier Deep
    #   Archive) that corresponds to the pool.
    #   @return [String]
    #
    # @!attribute [rw] retention_lock_type
    #   Tape retention lock type, which can be configured in two modes. When
    #   configured in governance mode, Amazon Web Services accounts with
    #   specific IAM permissions are authorized to remove the tape retention
    #   lock from archived virtual tapes. When configured in compliance
    #   mode, the tape retention lock cannot be removed by any user,
    #   including the root Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] retention_lock_time_in_days
    #   Tape retention lock time is set in days. Tape retention lock can be
    #   enabled for up to 100 years (36,500 days).
    #   @return [Integer]
    #
    # @!attribute [rw] pool_status
    #   Status of the custom tape pool. Pool can be `ACTIVE` or `DELETED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/PoolInfo AWS API Documentation
    #
    class PoolInfo < Struct.new(
      :pool_arn,
      :pool_name,
      :storage_class,
      :retention_lock_type,
      :retention_lock_time_in_days,
      :pool_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # RefreshCacheInput
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share you want to
    #   refresh.
    #   @return [String]
    #
    # @!attribute [rw] folder_list
    #   A comma-separated list of the paths of folders to refresh in the
    #   cache. The default is \[`"/"`\]. The default refreshes objects and
    #   folders at the root of the Amazon S3 bucket. If `Recursive` is set
    #   to `true`, the entire S3 bucket that the file share has access to is
    #   refreshed.
    #
    #   Do not include `/` when specifying folder names. For example, you
    #   would specify `samplefolder` rather than `samplefolder/`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recursive
    #   A value that specifies whether to recursively refresh folders in the
    #   cache. The refresh includes folders that were in the cache the last
    #   time the gateway listed the folder's contents. If this value set to
    #   `true`, each folder that is listed in `FolderList` is recursively
    #   updated. Otherwise, subfolders listed in `FolderList` are not
    #   refreshed. Only objects that are in folders listed directly under
    #   `FolderList` are found and used for the update. The default is
    #   `true`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RefreshCacheInput AWS API Documentation
    #
    class RefreshCacheInput < Struct.new(
      :file_share_arn,
      :folder_list,
      :recursive)
      SENSITIVE = []
      include Aws::Structure
    end

    # RefreshCacheOutput
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share.
    #   @return [String]
    #
    # @!attribute [rw] notification_id
    #   The randomly generated ID of the notification that was sent. This ID
    #   is in UUID format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RefreshCacheOutput AWS API Documentation
    #
    class RefreshCacheOutput < Struct.new(
      :file_share_arn,
      :notification_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # RemoveTagsFromResourceInput
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to remove
    #   the tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags you want to remove from the specified resource.
    #   A tag is composed of a key-value pair.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RemoveTagsFromResourceInput AWS API Documentation
    #
    class RemoveTagsFromResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # RemoveTagsFromResourceOutput
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that the tags were
    #   removed from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RemoveTagsFromResourceOutput AWS API Documentation
    #
    class RemoveTagsFromResourceOutput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ResetCacheInput AWS API Documentation
    #
    class ResetCacheInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ResetCacheOutput AWS API Documentation
    #
    class ResetCacheOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # RetrieveTapeArchiveInput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to
    #   retrieve from the virtual tape shelf (VTS).
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you want to retrieve
    #   the virtual tape to. Use the ListGateways operation to return a list
    #   of gateways for your account and Amazon Web Services Region.
    #
    #   You retrieve archived virtual tapes to only one gateway and the
    #   gateway must be a tape gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RetrieveTapeArchiveInput AWS API Documentation
    #
    class RetrieveTapeArchiveInput < Struct.new(
      :tape_arn,
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # RetrieveTapeArchiveOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the retrieved virtual tape.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RetrieveTapeArchiveOutput AWS API Documentation
    #
    class RetrieveTapeArchiveOutput < Struct.new(
      :tape_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # RetrieveTapeRecoveryPointInput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape for which you
    #   want to retrieve the recovery point.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RetrieveTapeRecoveryPointInput AWS API Documentation
    #
    class RetrieveTapeRecoveryPointInput < Struct.new(
      :tape_arn,
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # RetrieveTapeRecoveryPointOutput
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape for which the
    #   recovery point was retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RetrieveTapeRecoveryPointOutput AWS API Documentation
    #
    class RetrieveTapeRecoveryPointOutput < Struct.new(
      :tape_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Windows file permissions and ownership information assigned, by
    # default, to native S3 objects when S3 File Gateway discovers them in
    # S3 buckets. This operation is only supported for S3 File Gateways.
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share.
    #   @return [String]
    #
    # @!attribute [rw] file_share_id
    #   The ID of the file share.
    #   @return [String]
    #
    # @!attribute [rw] file_share_status
    #   The status of the file share.
    #
    #   Valid Values: `CREATING` \| `UPDATING` \| `AVAILABLE` \| `DELETING`
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   A value that specifies the type of server-side encryption that the
    #   file share will use for the data that it stores in Amazon S3.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kms_encrypted
    #   Optional. Set to `true` to use Amazon S3 server-side encryption with
    #   your own KMS key (SSE-KMS), or `false` to use a key managed by
    #   Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #   `EncryptionType` parameter instead.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   Optional. The Amazon Resource Name (ARN) of a symmetric customer
    #   master key (CMK) used for Amazon S3 server-side encryption. Storage
    #   Gateway does not support asymmetric CMKs. This value must be set if
    #   `KMSEncrypted` is `true`, or if `EncryptionType` is `SseKms` or
    #   `DsseKms`.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The file share path used by the SMB client to identify the mount
    #   point.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the IAM role that an S3 File Gateway assumes when it
    #   accesses the underlying storage.
    #   @return [String]
    #
    # @!attribute [rw] location_arn
    #   A custom ARN for the backend storage used for storing data for file
    #   shares. It includes a resource ARN with an optional prefix
    #   concatenation. The prefix must end with a forward slash (/).
    #
    #   <note markdown="1"> You can specify LocationARN as a bucket ARN, access point ARN or
    #   access point alias, as shown in the following examples.
    #
    #    Bucket ARN:
    #
    #    `arn:aws:s3:::amzn-s3-demo-bucket/prefix/`
    #
    #    Access point ARN:
    #
    #    `arn:aws:s3:region:account-id:accesspoint/access-point-name/prefix/`
    #
    #    If you specify an access point, the bucket policy must be configured
    #   to delegate access control to the access point. For information, see
    #   [Delegating access control to access points][1] in the *Amazon S3
    #   User Guide*.
    #
    #    Access point alias:
    #
    #    `test-ap-ab123cdef4gehijklmn5opqrstuvuse1a-s3alias`
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-policies.html#access-points-delegating-control
    #   @return [String]
    #
    # @!attribute [rw] default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket
    #   by the S3 File Gateway. The default value is `S3_STANDARD`.
    #   Optional.
    #
    #   Valid Values: `S3_STANDARD` \| `S3_INTELLIGENT_TIERING` \|
    #   `S3_STANDARD_IA` \| `S3_ONEZONE_IA`
    #   @return [String]
    #
    # @!attribute [rw] object_acl
    #   A value that sets the access control list (ACL) permission for
    #   objects in the S3 bucket that an S3 File Gateway puts objects into.
    #   The default value is `private`.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   A value that sets the write status of a file share. Set this value
    #   to `true` to set the write status to read-only, otherwise set to
    #   `false`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] guess_mime_type_enabled
    #   A value that enables guessing of the MIME type for uploaded objects
    #   based on file extensions. Set this value to `true` to enable MIME
    #   type guessing, otherwise set to `false`. The default value is
    #   `true`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] requester_pays
    #   A value that sets who pays the cost of the request and the cost
    #   associated with data download from the S3 bucket. If this value is
    #   set to `true`, the requester pays the costs; otherwise, the S3
    #   bucket owner pays. However, the S3 bucket owner always pays the cost
    #   of storing data.
    #
    #   <note markdown="1"> `RequesterPays` is a configuration for the S3 bucket that backs the
    #   file share, so make sure that the configuration on the file share is
    #   the same as the S3 bucket configuration.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] smbacl_enabled
    #   If this value is set to `true`, it indicates that access control
    #   list (ACL) is enabled on the SMB file share. If it is set to
    #   `false`, it indicates that file and directory permissions are mapped
    #   to the POSIX permission.
    #
    #   For more information, see [Using Windows ACLs to limit SMB file
    #   share access][1] in the *Amazon S3 File Gateway User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html
    #   @return [Boolean]
    #
    # @!attribute [rw] access_based_enumeration
    #   Indicates whether `AccessBasedEnumeration` is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_user_list
    #   A list of users or groups in the Active Directory that have
    #   administrator rights to the file share. A group must be prefixed
    #   with the @ character. Acceptable formats include: `DOMAIN\User1`,
    #   `user1`, `@group1`, and `@DOMAIN\group1`. Can only be set if
    #   Authentication is set to `ActiveDirectory`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] valid_user_list
    #   A list of users or groups in the Active Directory that are allowed
    #   to access the file share. A group must be prefixed with the @
    #   character. Acceptable formats include: `DOMAIN\User1`, `user1`,
    #   `@group1`, and `@DOMAIN\group1`. Can only be set if Authentication
    #   is set to `ActiveDirectory`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] invalid_user_list
    #   A list of users or groups in the Active Directory that are not
    #   allowed to access the file share. A group must be prefixed with the
    #   @ character. Acceptable formats include: `DOMAIN\User1`, `user1`,
    #   `@group1`, and `@DOMAIN\group1`. Can only be set if Authentication
    #   is set to `ActiveDirectory`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for audit logs.
    #   @return [String]
    #
    # @!attribute [rw] authentication
    #   The authentication method of the file share. The default is
    #   `ActiveDirectory`.
    #
    #   Valid Values: `ActiveDirectory` \| `GuestAccess`
    #   @return [String]
    #
    # @!attribute [rw] case_sensitivity
    #   The case of an object name in an Amazon S3 bucket. For
    #   `ClientSpecified`, the client determines the case sensitivity. For
    #   `CaseSensitive`, the gateway determines the case sensitivity. The
    #   default value is `ClientSpecified`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags assigned to the SMB file share, sorted
    #   alphabetically by key name. Each tag is a key-value pair. For a
    #   gateway with more than 10 tags assigned, you can view all tags using
    #   the `ListTagsForResource` API operation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] file_share_name
    #   The name of the file share. Optional.
    #
    #   <note markdown="1"> `FileShareName` must be set if an S3 prefix name is set in
    #   `LocationARN`, or if an access point or access point alias is used.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cache_attributes
    #   Refresh cache information for the file share.
    #   @return [Types::CacheAttributes]
    #
    # @!attribute [rw] notification_policy
    #   The notification policy of the file share. `SettlingTimeInSeconds`
    #   controls the number of seconds to wait after the last point in time
    #   a client wrote to a file before generating an `ObjectUploaded`
    #   notification. Because clients can make many small writes to files,
    #   it's best to set this parameter for as long as possible to avoid
    #   generating multiple notifications for the same file in a small time
    #   period.
    #
    #   <note markdown="1"> `SettlingTimeInSeconds` has no effect on the timing of the object
    #   uploading to Amazon S3, only the timing of the notification.
    #
    #    This setting is not meant to specify an exact time at which the
    #   notification will be sent. In some cases, the gateway might require
    #   more than the specified delay time to generate and send
    #   notifications.
    #
    #    </note>
    #
    #   The following example sets `NotificationPolicy` on with
    #   `SettlingTimeInSeconds` set to 60.
    #
    #   `{"Upload": {"SettlingTimeInSeconds": 60}}`
    #
    #   The following example sets `NotificationPolicy` off.
    #
    #   `{}`
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_dns_name
    #   Specifies the DNS name for the VPC endpoint that the SMB file share
    #   uses to connect to Amazon S3.
    #
    #   <note markdown="1"> This parameter is required for SMB file shares that connect to
    #   Amazon S3 through a VPC endpoint, a VPC access point, or an access
    #   point alias that points to a VPC access point.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] bucket_region
    #   Specifies the Region of the S3 bucket where the SMB file share
    #   stores files.
    #
    #   <note markdown="1"> This parameter is required for SMB file shares that connect to
    #   Amazon S3 through a VPC endpoint, a VPC access point, or an access
    #   point alias that points to a VPC access point.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] oplocks_enabled
    #   Specifies whether opportunistic locking is enabled for the SMB file
    #   share.
    #
    #   <note markdown="1"> Enabling opportunistic locking on case-sensitive shares is not
    #   recommended for workloads that involve access to files with the same
    #   name in different case.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SMBFileShareInfo AWS API Documentation
    #
    class SMBFileShareInfo < Struct.new(
      :file_share_arn,
      :file_share_id,
      :file_share_status,
      :gateway_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :path,
      :role,
      :location_arn,
      :default_storage_class,
      :object_acl,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :smbacl_enabled,
      :access_based_enumeration,
      :admin_user_list,
      :valid_user_list,
      :invalid_user_list,
      :audit_destination_arn,
      :authentication,
      :case_sensitivity,
      :tags,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :vpc_endpoint_dns_name,
      :bucket_region,
      :oplocks_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Active Directory users and groups that have special
    # permissions for SMB file shares on the gateway.
    #
    # @!attribute [rw] gateway_admins
    #   A list of Active Directory users and groups that have local Gateway
    #   Admin permissions. Acceptable formats include: `DOMAIN\User1`,
    #   `user1`, `DOMAIN\group1`, and `group1`.
    #
    #   Gateway Admins can use the Shared Folders Microsoft Management
    #   Console snap-in to force-close files that are open and locked.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SMBLocalGroups AWS API Documentation
    #
    class SMBLocalGroups < Struct.new(
      :gateway_admins)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error has occurred because the service is
    # unavailable. For more information, see the error and message fields.
    #
    # @!attribute [rw] message
    #   A human-readable message describing the error that occurred.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   A StorageGatewayError that provides more information about the cause
    #   of the error.
    #   @return [Types::StorageGatewayError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ServiceUnavailableError AWS API Documentation
    #
    class ServiceUnavailableError < Struct.new(
      :message,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # SetLocalConsolePasswordInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] local_console_password
    #   The password you want to set for your VM local console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SetLocalConsolePasswordInput AWS API Documentation
    #
    class SetLocalConsolePasswordInput < Struct.new(
      :gateway_arn,
      :local_console_password)
      SENSITIVE = [:local_console_password]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SetLocalConsolePasswordOutput AWS API Documentation
    #
    class SetLocalConsolePasswordOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # SetSMBGuestPasswordInput
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the S3 File Gateway the SMB file
    #   share is associated with.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password that you want to set for your SMB server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SetSMBGuestPasswordInput AWS API Documentation
    #
    class SetSMBGuestPasswordInput < Struct.new(
      :gateway_arn,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SetSMBGuestPasswordOutput AWS API Documentation
    #
    class SetSMBGuestPasswordOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # to shut down.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ShutdownGatewayInput AWS API Documentation
    #
    class ShutdownGatewayInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # that was shut down.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ShutdownGatewayOutput AWS API Documentation
    #
    class ShutdownGatewayOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of variables indicating the software update preferences for the
    # gateway.
    #
    # @!attribute [rw] automatic_update_policy
    #   Indicates the automatic update policy for a gateway.
    #
    #   `ALL_VERSIONS` - Enables regular gateway maintenance updates.
    #
    #   `EMERGENCY_VERSIONS_ONLY` - Disables regular gateway maintenance
    #   updates. The gateway will still receive emergency version updates on
    #   rare occasions if necessary to remedy highly critical security or
    #   durability issues. You will be notified before an emergency version
    #   update is applied. These updates are applied during your gateway's
    #   scheduled maintenance window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SoftwareUpdatePreferences AWS API Documentation
    #
    class SoftwareUpdatePreferences < Struct.new(
      :automatic_update_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StartAvailabilityMonitorTestInput AWS API Documentation
    #
    class StartAvailabilityMonitorTestInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StartAvailabilityMonitorTestOutput AWS API Documentation
    #
    class StartAvailabilityMonitorTestOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of the IAM role used when saving the cache report to Amazon
    #   S3.
    #   @return [String]
    #
    # @!attribute [rw] location_arn
    #   The ARN of the Amazon S3 bucket where you want to save the cache
    #   report.
    #
    #   <note markdown="1"> We do not recommend saving the cache report to the same Amazon S3
    #   bucket for which you are generating the report.
    #
    #    This field does not accept access point ARNs.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] bucket_region
    #   The Amazon Web Services Region of the Amazon S3 bucket where you
    #   want to save the cache report.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_dns_name
    #   The DNS name of the VPC endpoint associated with the Amazon S3 where
    #   you want to save the cache report. Optional.
    #   @return [String]
    #
    # @!attribute [rw] inclusion_filters
    #   The list of filters and parameters that determine which files are
    #   included in the report. You must specify at least one value for
    #   `InclusionFilters` or `ExclusionFilters` in a `StartCacheReport`
    #   request.
    #   @return [Array<Types::CacheReportFilter>]
    #
    # @!attribute [rw] exclusion_filters
    #   The list of filters and parameters that determine which files are
    #   excluded from the report. You must specify at least one value for
    #   `InclusionFilters` or `ExclusionFilters` in a `StartCacheReport`
    #   request.
    #   @return [Array<Types::CacheReportFilter>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you use to ensure idempotent report
    #   generation if you need to retry an unsuccessful `StartCacheReport`
    #   request. If you retry a request, use the same `ClientToken` you
    #   specified in the initial request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 key/value tags that you can assign to the cache
    #   report. Using tags can help you categorize your reports and more
    #   easily locate them in search results.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StartCacheReportInput AWS API Documentation
    #
    class StartCacheReportInput < Struct.new(
      :file_share_arn,
      :role,
      :location_arn,
      :bucket_region,
      :vpc_endpoint_dns_name,
      :inclusion_filters,
      :exclusion_filters,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_report_arn
    #   The Amazon Resource Name (ARN) of the cache report generated by the
    #   `StartCacheReport` request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StartCacheReportOutput AWS API Documentation
    #
    class StartCacheReportOutput < Struct.new(
      :cache_report_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # to start.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StartGatewayInput AWS API Documentation
    #
    class StartGatewayInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # that was restarted.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StartGatewayOutput AWS API Documentation
    #
    class StartGatewayOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides additional information about an error that was returned by
    # the service. See the `errorCode` and `errorDetails` members for more
    # information about the error.
    #
    # @!attribute [rw] error_code
    #   Additional information about the error.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   Human-readable text that provides detail about the error that
    #   occurred.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StorageGatewayError AWS API Documentation
    #
    class StorageGatewayError < Struct.new(
      :error_code,
      :error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an iSCSI stored volume.
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the storage volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The unique identifier of the volume, e.g., vol-AE4B946D.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   One of the VolumeType enumeration values describing the type of the
    #   volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_status
    #   One of the VolumeStatus values that indicates the state of the
    #   storage volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_attachment_status
    #   A value that indicates whether a storage volume is attached to,
    #   detached from, or is in the process of detaching from a gateway. For
    #   more information, see [Moving your volumes to a different
    #   gateway][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#attach-detach-volume
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   The size of the volume in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_progress
    #   Represents the percentage complete if the volume is restoring or
    #   bootstrapping that represents the percent of data transferred. This
    #   field does not appear in the response if the stored volume is not
    #   restoring or bootstrapping.
    #   @return [Float]
    #
    # @!attribute [rw] volume_disk_id
    #   The ID of the local disk that was specified in the
    #   CreateStorediSCSIVolume operation.
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   If the stored volume was created from a snapshot, this field
    #   contains the snapshot ID used, e.g. snap-78e22663. Otherwise, this
    #   field is not included.
    #   @return [String]
    #
    # @!attribute [rw] preserved_existing_data
    #   Indicates if when the stored volume was created, existing data on
    #   the underlying local disk was preserved.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_iscsi_attributes
    #   An VolumeiSCSIAttributes object that represents a collection of
    #   iSCSI attributes for one stored volume.
    #   @return [Types::VolumeiSCSIAttributes]
    #
    # @!attribute [rw] created_date
    #   The date the volume was created. Volumes created prior to March 28,
    #   2017 don’t have this timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] volume_used_in_bytes
    #   The size of the data stored on the volume in bytes. This value is
    #   calculated based on the number of blocks that are touched, instead
    #   of the actual amount of data written. This value can be useful for
    #   sequential write patterns but less accurate for random write
    #   patterns. `VolumeUsedInBytes` is different from the compressed size
    #   of the volume, which is the value that is used to calculate your
    #   bill.
    #
    #   <note markdown="1"> This value is not available for volumes created prior to May 13,
    #   2015, until you store data on the volume.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key
    #   Optional. The Amazon Resource Name (ARN) of a symmetric customer
    #   master key (CMK) used for Amazon S3 server-side encryption. Storage
    #   Gateway does not support asymmetric CMKs. This value must be set if
    #   `KMSEncrypted` is `true`, or if `EncryptionType` is `SseKms` or
    #   `DsseKms`.
    #   @return [String]
    #
    # @!attribute [rw] target_name
    #   The name of the iSCSI target used by an initiator to connect to a
    #   volume and used as a suffix for the target ARN. For example,
    #   specifying `TargetName` as *myvolume* results in the target ARN of
    #   `arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume`.
    #   The target name must be unique across all volumes on a gateway.
    #
    #   If you don't specify a value, Storage Gateway uses the value that
    #   was previously used for this volume as the new target name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StorediSCSIVolume AWS API Documentation
    #
    class StorediSCSIVolume < Struct.new(
      :volume_arn,
      :volume_id,
      :volume_type,
      :volume_status,
      :volume_attachment_status,
      :volume_size_in_bytes,
      :volume_progress,
      :volume_disk_id,
      :source_snapshot_id,
      :preserved_existing_data,
      :volume_iscsi_attributes,
      :created_date,
      :volume_used_in_bytes,
      :kms_key,
      :target_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair that helps you manage, filter, and search for your
    # resource. Allowed characters: letters, white space, and numbers,
    # representable in UTF-8, and the following characters: + - = . \_ : /.
    #
    # @!attribute [rw] key
    #   Tag key. The key can't start with aws:.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of the tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a virtual tape object.
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_barcode
    #   The barcode that identifies a specific virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_created_date
    #   The date the virtual tape was created.
    #   @return [Time]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the virtual tape capacity.
    #   @return [Integer]
    #
    # @!attribute [rw] tape_status
    #   The current state of the virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] vtl_device
    #   The virtual tape library (VTL) device that the virtual tape is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   For archiving virtual tapes, indicates how much data remains to be
    #   uploaded before archiving is complete.
    #
    #   Range: 0 (not started) to 100 (complete).
    #   @return [Float]
    #
    # @!attribute [rw] tape_used_in_bytes
    #   The size, in bytes, of data stored on the virtual tape.
    #
    #   <note markdown="1"> This value is not available for tapes created prior to May 13, 2015.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key
    #   Optional. The Amazon Resource Name (ARN) of a symmetric customer
    #   master key (CMK) used for Amazon S3 server-side encryption. Storage
    #   Gateway does not support asymmetric CMKs. This value must be set if
    #   `KMSEncrypted` is `true`, or if `EncryptionType` is `SseKms` or
    #   `DsseKms`.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The ID of the pool that contains tapes that will be archived. The
    #   tapes in this pool are archived in the S3 storage class that is
    #   associated with the pool. When you use your backup application to
    #   eject the tape, the tape is archived directly into the storage class
    #   (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the
    #   pool.
    #   @return [String]
    #
    # @!attribute [rw] worm
    #   If the tape is archived as write-once-read-many (WORM), this value
    #   is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] retention_start_date
    #   The date that the tape is first archived with tape retention lock
    #   enabled.
    #   @return [Time]
    #
    # @!attribute [rw] pool_entry_date
    #   The date that the tape enters a custom tape pool.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/Tape AWS API Documentation
    #
    class Tape < Struct.new(
      :tape_arn,
      :tape_barcode,
      :tape_created_date,
      :tape_size_in_bytes,
      :tape_status,
      :vtl_device,
      :progress,
      :tape_used_in_bytes,
      :kms_key,
      :pool_id,
      :worm,
      :retention_start_date,
      :pool_entry_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a virtual tape that is archived in the virtual tape shelf
    # (VTS).
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of an archived virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_barcode
    #   The barcode that identifies the archived virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_created_date
    #   The date the virtual tape was created.
    #   @return [Time]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the archived virtual tape.
    #   @return [Integer]
    #
    # @!attribute [rw] completion_time
    #   The time that the archiving of the virtual tape was completed.
    #
    #   The default timestamp format is in the ISO8601 extended
    #   YYYY-MM-DD'T'HH:MM:SS'Z' format.
    #   @return [Time]
    #
    # @!attribute [rw] retrieved_to
    #   The Amazon Resource Name (ARN) of the tape gateway that the virtual
    #   tape is being retrieved to.
    #
    #   The virtual tape is retrieved from the virtual tape shelf (VTS).
    #   @return [String]
    #
    # @!attribute [rw] tape_status
    #   The current state of the archived virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_used_in_bytes
    #   The size, in bytes, of data stored on the virtual tape.
    #
    #   <note markdown="1"> This value is not available for tapes created prior to May 13, 2015.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key
    #   Optional. The Amazon Resource Name (ARN) of a symmetric customer
    #   master key (CMK) used for Amazon S3 server-side encryption. Storage
    #   Gateway does not support asymmetric CMKs. This value must be set if
    #   `KMSEncrypted` is `true`, or if `EncryptionType` is `SseKms` or
    #   `DsseKms`.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The ID of the pool that was used to archive the tape. The tapes in
    #   this pool are archived in the S3 storage class that is associated
    #   with the pool.
    #   @return [String]
    #
    # @!attribute [rw] worm
    #   Set to `true` if the archived tape is stored as write-once-read-many
    #   (WORM).
    #   @return [Boolean]
    #
    # @!attribute [rw] retention_start_date
    #   If the archived tape is subject to tape retention lock, the date
    #   that the archived tape started being retained.
    #   @return [Time]
    #
    # @!attribute [rw] pool_entry_date
    #   The time that the tape entered the custom tape pool.
    #
    #   The default timestamp format is in the ISO8601 extended
    #   YYYY-MM-DD'T'HH:MM:SS'Z' format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/TapeArchive AWS API Documentation
    #
    class TapeArchive < Struct.new(
      :tape_arn,
      :tape_barcode,
      :tape_created_date,
      :tape_size_in_bytes,
      :completion_time,
      :retrieved_to,
      :tape_status,
      :tape_used_in_bytes,
      :kms_key,
      :pool_id,
      :worm,
      :retention_start_date,
      :pool_entry_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a virtual tape.
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of a virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_barcode
    #   The barcode that identifies a specific virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of a virtual tape.
    #   @return [Integer]
    #
    # @!attribute [rw] tape_status
    #   The status of the tape.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] pool_id
    #   The ID of the pool that you want to add your tape to for archiving.
    #   The tape in this pool is archived in the S3 storage class that is
    #   associated with the pool. When you use your backup application to
    #   eject the tape, the tape is archived directly into the storage class
    #   (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the
    #   pool.
    #   @return [String]
    #
    # @!attribute [rw] retention_start_date
    #   The date that the tape became subject to tape retention lock.
    #   @return [Time]
    #
    # @!attribute [rw] pool_entry_date
    #   The date that the tape entered the custom tape pool with tape
    #   retention lock enabled.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/TapeInfo AWS API Documentation
    #
    class TapeInfo < Struct.new(
      :tape_arn,
      :tape_barcode,
      :tape_size_in_bytes,
      :tape_status,
      :gateway_arn,
      :pool_id,
      :retention_start_date,
      :pool_entry_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a recovery point.
    #
    # @!attribute [rw] tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape.
    #   @return [String]
    #
    # @!attribute [rw] tape_recovery_point_time
    #   The time when the point-in-time view of the virtual tape was
    #   replicated for later recovery.
    #
    #   The default timestamp format of the tape recovery point time is in
    #   the ISO8601 extended YYYY-MM-DD'T'HH:MM:SS'Z' format.
    #   @return [Time]
    #
    # @!attribute [rw] tape_size_in_bytes
    #   The size, in bytes, of the virtual tapes to recover.
    #   @return [Integer]
    #
    # @!attribute [rw] tape_status
    #   The status of the virtual tapes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/TapeRecoveryPointInfo AWS API Documentation
    #
    class TapeRecoveryPointInfo < Struct.new(
      :tape_arn,
      :tape_recovery_point_time,
      :tape_size_in_bytes,
      :tape_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] automatic_tape_creation_rules
    #   An automatic tape creation policy consists of a list of automatic
    #   tape creation rules. The rules determine when and how to
    #   automatically create new tapes.
    #   @return [Array<Types::AutomaticTapeCreationRule>]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateAutomaticTapeCreationPolicyInput AWS API Documentation
    #
    class UpdateAutomaticTapeCreationPolicyInput < Struct.new(
      :automatic_tape_creation_rules,
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateAutomaticTapeCreationPolicyOutput AWS API Documentation
    #
    class UpdateAutomaticTapeCreationPolicyOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec
    #
    # * UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] average_upload_rate_limit_in_bits_per_sec
    #   The average upload bandwidth rate limit in bits per second.
    #   @return [Integer]
    #
    # @!attribute [rw] average_download_rate_limit_in_bits_per_sec
    #   The average download bandwidth rate limit in bits per second.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateBandwidthRateLimitInput AWS API Documentation
    #
    class UpdateBandwidthRateLimitInput < Struct.new(
      :gateway_arn,
      :average_upload_rate_limit_in_bits_per_sec,
      :average_download_rate_limit_in_bits_per_sec)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # whose throttle information was updated.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateBandwidthRateLimitOutput AWS API Documentation
    #
    class UpdateBandwidthRateLimitOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] bandwidth_rate_limit_intervals
    #   An array containing bandwidth rate limit schedule intervals for a
    #   gateway. When no bandwidth rate limit intervals have been scheduled,
    #   the array is empty.
    #   @return [Array<Types::BandwidthRateLimitInterval>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateBandwidthRateLimitScheduleInput AWS API Documentation
    #
    class UpdateBandwidthRateLimitScheduleInput < Struct.new(
      :gateway_arn,
      :bandwidth_rate_limit_intervals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateBandwidthRateLimitScheduleOutput AWS API Documentation
    #
    class UpdateBandwidthRateLimitScheduleOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * UpdateChapCredentialsInput$InitiatorName
    #
    # * UpdateChapCredentialsInput$SecretToAuthenticateInitiator
    #
    # * UpdateChapCredentialsInput$SecretToAuthenticateTarget
    #
    # * UpdateChapCredentialsInput$TargetARN
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return the TargetARN for
    #   specified VolumeARN.
    #   @return [String]
    #
    # @!attribute [rw] secret_to_authenticate_initiator
    #   The secret key that the initiator (for example, the Windows client)
    #   must provide to participate in mutual CHAP with the target.
    #
    #   <note markdown="1"> The secret key must be between 12 and 16 bytes when encoded in
    #   UTF-8.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] initiator_name
    #   The iSCSI initiator that connects to the target.
    #   @return [String]
    #
    # @!attribute [rw] secret_to_authenticate_target
    #   The secret key that the target must provide to participate in mutual
    #   CHAP with the initiator (e.g. Windows client).
    #
    #   Byte constraints: Minimum bytes of 12. Maximum bytes of 16.
    #
    #   <note markdown="1"> The secret key must be between 12 and 16 bytes when encoded in
    #   UTF-8.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateChapCredentialsInput AWS API Documentation
    #
    class UpdateChapCredentialsInput < Struct.new(
      :target_arn,
      :secret_to_authenticate_initiator,
      :initiator_name,
      :secret_to_authenticate_target)
      SENSITIVE = [:secret_to_authenticate_initiator, :secret_to_authenticate_target]
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the target. This is the same
    #   target specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] initiator_name
    #   The iSCSI initiator that connects to the target. This is the same
    #   initiator name specified in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateChapCredentialsOutput AWS API Documentation
    #
    class UpdateChapCredentialsOutput < Struct.new(
      :target_arn,
      :initiator_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_system_association_arn
    #   The Amazon Resource Name (ARN) of the file system association that
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user name of the user credential that has permission to access
    #   the root share D$ of the Amazon FSx file system. The user account
    #   must belong to the Amazon FSx delegated admin user group.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of the user credential.
    #   @return [String]
    #
    # @!attribute [rw] audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for the audit
    #   logs.
    #   @return [String]
    #
    # @!attribute [rw] cache_attributes
    #   The refresh cache information for the file share or FSx file
    #   systems.
    #   @return [Types::CacheAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateFileSystemAssociationInput AWS API Documentation
    #
    class UpdateFileSystemAssociationInput < Struct.new(
      :file_system_association_arn,
      :user_name,
      :password,
      :audit_destination_arn,
      :cache_attributes)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] file_system_association_arn
    #   The ARN of the updated file system association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateFileSystemAssociationOutput AWS API Documentation
    #
    class UpdateFileSystemAssociationOutput < Struct.new(
      :file_system_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name you configured for your gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_timezone
    #   A value that indicates the time zone of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch log group
    #   that you want to use to monitor and log events in the gateway.
    #
    #   For more information, see [What is Amazon CloudWatch Logs?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html
    #   @return [String]
    #
    # @!attribute [rw] gateway_capacity
    #   Specifies the size of the gateway's metadata cache. This setting
    #   impacts gateway performance and hardware recommendations. For more
    #   information, see [Performance guidance for gateways with multiple
    #   file shares][1] in the *Amazon S3 File Gateway User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/filegateway/latest/files3/performance-multiple-file-shares.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateGatewayInformationInput AWS API Documentation
    #
    class UpdateGatewayInformationInput < Struct.new(
      :gateway_arn,
      :gateway_name,
      :gateway_timezone,
      :cloud_watch_log_group_arn,
      :gateway_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # that was updated.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_name
    #   The name you configured for your gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateGatewayInformationOutput AWS API Documentation
    #
    class UpdateGatewayInformationOutput < Struct.new(
      :gateway_arn,
      :gateway_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # to update.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateGatewaySoftwareNowInput AWS API Documentation
    #
    class UpdateGatewaySoftwareNowInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # that was updated.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateGatewaySoftwareNowOutput AWS API Documentation
    #
    class UpdateGatewaySoftwareNowOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the following fields:
    #
    # * UpdateMaintenanceStartTimeInput$SoftwareUpdatePreferences
    #
    # * UpdateMaintenanceStartTimeInput$DayOfMonth
    #
    # * UpdateMaintenanceStartTimeInput$DayOfWeek
    #
    # * UpdateMaintenanceStartTimeInput$HourOfDay
    #
    # * UpdateMaintenanceStartTimeInput$MinuteOfHour
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] hour_of_day
    #   The hour component of the maintenance start time represented as
    #   *hh*, where *hh* is the hour (00 to 23). The hour of the day is in
    #   the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] minute_of_hour
    #   The minute component of the maintenance start time represented as
    #   *mm*, where *mm* is the minute (00 to 59). The minute of the hour is
    #   in the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] day_of_week
    #   The day of the week component of the maintenance start time week
    #   represented as an ordinal number from 0 to 6, where 0 represents
    #   Sunday and 6 represents Saturday.
    #   @return [Integer]
    #
    # @!attribute [rw] day_of_month
    #   The day of the month component of the maintenance start time
    #   represented as an ordinal number from 1 to 28, where 1 represents
    #   the first day of the month. It is not possible to set the
    #   maintenance schedule to start on days 29 through 31.
    #   @return [Integer]
    #
    # @!attribute [rw] software_update_preferences
    #   A set of variables indicating the software update preferences for
    #   the gateway.
    #
    #   Includes `AutomaticUpdatePolicy` field with the following inputs:
    #
    #   `ALL_VERSIONS` - Enables regular gateway maintenance updates.
    #
    #   `EMERGENCY_VERSIONS_ONLY` - Disables regular gateway maintenance
    #   updates. The gateway will still receive emergency version updates on
    #   rare occasions if necessary to remedy highly critical security or
    #   durability issues. You will be notified before an emergency version
    #   update is applied. These updates are applied during your gateway's
    #   scheduled maintenance window.
    #   @return [Types::SoftwareUpdatePreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateMaintenanceStartTimeInput AWS API Documentation
    #
    class UpdateMaintenanceStartTimeInput < Struct.new(
      :gateway_arn,
      :hour_of_day,
      :minute_of_hour,
      :day_of_week,
      :day_of_month,
      :software_update_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the gateway
    # whose maintenance start time is updated.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateMaintenanceStartTimeOutput AWS API Documentation
    #
    class UpdateMaintenanceStartTimeOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateNFSFileShareInput
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the file share to be updated.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   A value that specifies the type of server-side encryption that the
    #   file share will use for the data that it stores in Amazon S3.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kms_encrypted
    #   Optional. Set to `true` to use Amazon S3 server-side encryption with
    #   your own KMS key (SSE-KMS), or `false` to use a key managed by
    #   Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #   `EncryptionType` parameter instead.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   Optional. The Amazon Resource Name (ARN) of a symmetric customer
    #   master key (CMK) used for Amazon S3 server-side encryption. Storage
    #   Gateway does not support asymmetric CMKs. This value must be set if
    #   `KMSEncrypted` is `true`, or if `EncryptionType` is `SseKms` or
    #   `DsseKms`.
    #   @return [String]
    #
    # @!attribute [rw] nfs_file_share_defaults
    #   The default values for the file share. Optional.
    #   @return [Types::NFSFileShareDefaults]
    #
    # @!attribute [rw] default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket
    #   by the S3 File Gateway. The default value is `S3_STANDARD`.
    #   Optional.
    #
    #   Valid Values: `S3_STANDARD` \| `S3_INTELLIGENT_TIERING` \|
    #   `S3_STANDARD_IA` \| `S3_ONEZONE_IA`
    #   @return [String]
    #
    # @!attribute [rw] object_acl
    #   A value that sets the access control list (ACL) permission for
    #   objects in the S3 bucket that a S3 File Gateway puts objects into.
    #   The default value is `private`.
    #   @return [String]
    #
    # @!attribute [rw] client_list
    #   The list of clients that are allowed to access the S3 File Gateway.
    #   The list must contain either valid IPv4/IPv6 addresses or valid CIDR
    #   blocks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] squash
    #   The user mapped to anonymous user.
    #
    #   Valid values are the following:
    #
    #   * `RootSquash`: Only root is mapped to anonymous user.
    #
    #   * `NoSquash`: No one is mapped to anonymous user.
    #
    #   * `AllSquash`: Everyone is mapped to anonymous user.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   A value that sets the write status of a file share. Set this value
    #   to `true` to set the write status to read-only, otherwise set to
    #   `false`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] guess_mime_type_enabled
    #   A value that enables guessing of the MIME type for uploaded objects
    #   based on file extensions. Set this value to `true` to enable MIME
    #   type guessing, otherwise set to `false`. The default value is
    #   `true`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] requester_pays
    #   A value that sets who pays the cost of the request and the cost
    #   associated with data download from the S3 bucket. If this value is
    #   set to `true`, the requester pays the costs; otherwise, the S3
    #   bucket owner pays. However, the S3 bucket owner always pays the cost
    #   of storing data.
    #
    #   <note markdown="1"> `RequesterPays` is a configuration for the S3 bucket that backs the
    #   file share, so make sure that the configuration on the file share is
    #   the same as the S3 bucket configuration.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] file_share_name
    #   The name of the file share. Optional.
    #
    #   <note markdown="1"> `FileShareName` must be set if an S3 prefix name is set in
    #   `LocationARN`, or if an access point or access point alias is used.
    #
    #    A valid NFS file share name can only contain the following
    #   characters: `a`-`z`, `A`-`Z`, `0`-`9`, `-`, `.`, and `_`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cache_attributes
    #   Specifies refresh cache information for the file share.
    #   @return [Types::CacheAttributes]
    #
    # @!attribute [rw] notification_policy
    #   The notification policy of the file share. `SettlingTimeInSeconds`
    #   controls the number of seconds to wait after the last point in time
    #   a client wrote to a file before generating an `ObjectUploaded`
    #   notification. Because clients can make many small writes to files,
    #   it's best to set this parameter for as long as possible to avoid
    #   generating multiple notifications for the same file in a small time
    #   period.
    #
    #   <note markdown="1"> `SettlingTimeInSeconds` has no effect on the timing of the object
    #   uploading to Amazon S3, only the timing of the notification.
    #
    #    This setting is not meant to specify an exact time at which the
    #   notification will be sent. In some cases, the gateway might require
    #   more than the specified delay time to generate and send
    #   notifications.
    #
    #    </note>
    #
    #   The following example sets `NotificationPolicy` on with
    #   `SettlingTimeInSeconds` set to 60.
    #
    #   `{"Upload": {"SettlingTimeInSeconds": 60}}`
    #
    #   The following example sets `NotificationPolicy` off.
    #
    #   `{}`
    #   @return [String]
    #
    # @!attribute [rw] audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for audit logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateNFSFileShareInput AWS API Documentation
    #
    class UpdateNFSFileShareInput < Struct.new(
      :file_share_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :nfs_file_share_defaults,
      :default_storage_class,
      :object_acl,
      :client_list,
      :squash,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :audit_destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateNFSFileShareOutput
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the updated file share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateNFSFileShareOutput AWS API Documentation
    #
    class UpdateNFSFileShareOutput < Struct.new(
      :file_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateSMBFileShareInput
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the SMB file share that you want
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   A value that specifies the type of server-side encryption that the
    #   file share will use for the data that it stores in Amazon S3.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] kms_encrypted
    #   Optional. Set to `true` to use Amazon S3 server-side encryption with
    #   your own KMS key (SSE-KMS), or `false` to use a key managed by
    #   Amazon S3 (SSE-S3). To use dual-layer encryption (DSSE-KMS), set the
    #   `EncryptionType` parameter instead.
    #
    #   <note markdown="1"> We recommend using `EncryptionType` instead of `KMSEncrypted` to set
    #   the file share encryption method. You do not need to provide values
    #   for both parameters.
    #
    #    If values for both parameters exist in the same request, then the
    #   specified encryption methods must not conflict. For example, if
    #   `EncryptionType` is `SseS3`, then `KMSEncrypted` must be `false`. If
    #   `EncryptionType` is `SseKms` or `DsseKms`, then `KMSEncrypted` must
    #   be `true`.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key
    #   Optional. The Amazon Resource Name (ARN) of a symmetric customer
    #   master key (CMK) used for Amazon S3 server-side encryption. Storage
    #   Gateway does not support asymmetric CMKs. This value must be set if
    #   `KMSEncrypted` is `true`, or if `EncryptionType` is `SseKms` or
    #   `DsseKms`.
    #   @return [String]
    #
    # @!attribute [rw] default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket
    #   by the S3 File Gateway. The default value is `S3_STANDARD`.
    #   Optional.
    #
    #   Valid Values: `S3_STANDARD` \| `S3_INTELLIGENT_TIERING` \|
    #   `S3_STANDARD_IA` \| `S3_ONEZONE_IA`
    #   @return [String]
    #
    # @!attribute [rw] object_acl
    #   A value that sets the access control list (ACL) permission for
    #   objects in the S3 bucket that a S3 File Gateway puts objects into.
    #   The default value is `private`.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   A value that sets the write status of a file share. Set this value
    #   to `true` to set write status to read-only, otherwise set to
    #   `false`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] guess_mime_type_enabled
    #   A value that enables guessing of the MIME type for uploaded objects
    #   based on file extensions. Set this value to `true` to enable MIME
    #   type guessing, otherwise set to `false`. The default value is
    #   `true`.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] requester_pays
    #   A value that sets who pays the cost of the request and the cost
    #   associated with data download from the S3 bucket. If this value is
    #   set to `true`, the requester pays the costs; otherwise, the S3
    #   bucket owner pays. However, the S3 bucket owner always pays the cost
    #   of storing data.
    #
    #   <note markdown="1"> `RequesterPays` is a configuration for the S3 bucket that backs the
    #   file share, so make sure that the configuration on the file share is
    #   the same as the S3 bucket configuration.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] smbacl_enabled
    #   Set this value to `true` to enable access control list (ACL) on the
    #   SMB file share. Set it to `false` to map file and directory
    #   permissions to the POSIX permissions.
    #
    #   For more information, see [Using Windows ACLs to limit SMB file
    #   share access][1] in the *Amazon S3 File Gateway User Guide*.
    #
    #   Valid Values: `true` \| `false`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/filegateway/latest/files3/smb-acl.html
    #   @return [Boolean]
    #
    # @!attribute [rw] access_based_enumeration
    #   The files and folders on this share will only be visible to users
    #   with read access.
    #   @return [Boolean]
    #
    # @!attribute [rw] admin_user_list
    #   A list of users or groups in the Active Directory that have
    #   administrator rights to the file share. A group must be prefixed
    #   with the @ character. Acceptable formats include: `DOMAIN\User1`,
    #   `user1`, `@group1`, and `@DOMAIN\group1`. Can only be set if
    #   Authentication is set to `ActiveDirectory`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] valid_user_list
    #   A list of users or groups in the Active Directory that are allowed
    #   to access the file share. A group must be prefixed with the @
    #   character. Acceptable formats include: `DOMAIN\User1`, `user1`,
    #   `@group1`, and `@DOMAIN\group1`. Can only be set if Authentication
    #   is set to `ActiveDirectory`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] invalid_user_list
    #   A list of users or groups in the Active Directory that are not
    #   allowed to access the file share. A group must be prefixed with the
    #   @ character. Acceptable formats include: `DOMAIN\User1`, `user1`,
    #   `@group1`, and `@DOMAIN\group1`. Can only be set if Authentication
    #   is set to `ActiveDirectory`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for audit logs.
    #   @return [String]
    #
    # @!attribute [rw] case_sensitivity
    #   The case of an object name in an Amazon S3 bucket. For
    #   `ClientSpecified`, the client determines the case sensitivity. For
    #   `CaseSensitive`, the gateway determines the case sensitivity. The
    #   default value is `ClientSpecified`.
    #   @return [String]
    #
    # @!attribute [rw] file_share_name
    #   The name of the file share. Optional.
    #
    #   <note markdown="1"> `FileShareName` must be set if an S3 prefix name is set in
    #   `LocationARN`, or if an access point or access point alias is used.
    #
    #    A valid SMB file share name cannot contain the following characters:
    #   `[`,`]`,`#`,`;`,`<`,`>`,`:`,`"`,``,`/`,`|`,`?`,`*`,`+`, or ASCII
    #   control characters `1-31`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cache_attributes
    #   Specifies refresh cache information for the file share.
    #   @return [Types::CacheAttributes]
    #
    # @!attribute [rw] notification_policy
    #   The notification policy of the file share. `SettlingTimeInSeconds`
    #   controls the number of seconds to wait after the last point in time
    #   a client wrote to a file before generating an `ObjectUploaded`
    #   notification. Because clients can make many small writes to files,
    #   it's best to set this parameter for as long as possible to avoid
    #   generating multiple notifications for the same file in a small time
    #   period.
    #
    #   <note markdown="1"> `SettlingTimeInSeconds` has no effect on the timing of the object
    #   uploading to Amazon S3, only the timing of the notification.
    #
    #    This setting is not meant to specify an exact time at which the
    #   notification will be sent. In some cases, the gateway might require
    #   more than the specified delay time to generate and send
    #   notifications.
    #
    #    </note>
    #
    #   The following example sets `NotificationPolicy` on with
    #   `SettlingTimeInSeconds` set to 60.
    #
    #   `{"Upload": {"SettlingTimeInSeconds": 60}}`
    #
    #   The following example sets `NotificationPolicy` off.
    #
    #   `{}`
    #   @return [String]
    #
    # @!attribute [rw] oplocks_enabled
    #   Specifies whether opportunistic locking is enabled for the SMB file
    #   share.
    #
    #   <note markdown="1"> Enabling opportunistic locking on case-sensitive shares is not
    #   recommended for workloads that involve access to files with the same
    #   name in different case.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBFileShareInput AWS API Documentation
    #
    class UpdateSMBFileShareInput < Struct.new(
      :file_share_arn,
      :encryption_type,
      :kms_encrypted,
      :kms_key,
      :default_storage_class,
      :object_acl,
      :read_only,
      :guess_mime_type_enabled,
      :requester_pays,
      :smbacl_enabled,
      :access_based_enumeration,
      :admin_user_list,
      :valid_user_list,
      :invalid_user_list,
      :audit_destination_arn,
      :case_sensitivity,
      :file_share_name,
      :cache_attributes,
      :notification_policy,
      :oplocks_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateSMBFileShareOutput
    #
    # @!attribute [rw] file_share_arn
    #   The Amazon Resource Name (ARN) of the updated SMB file share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBFileShareOutput AWS API Documentation
    #
    class UpdateSMBFileShareOutput < Struct.new(
      :file_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] file_shares_visible
    #   The shares on this gateway appear when listing shares.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBFileShareVisibilityInput AWS API Documentation
    #
    class UpdateSMBFileShareVisibilityInput < Struct.new(
      :gateway_arn,
      :file_shares_visible)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBFileShareVisibilityOutput AWS API Documentation
    #
    class UpdateSMBFileShareVisibilityOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] smb_local_groups
    #   A list of Active Directory users and groups that you want to grant
    #   special permissions for SMB file shares on the gateway.
    #   @return [Types::SMBLocalGroups]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBLocalGroupsInput AWS API Documentation
    #
    class UpdateSMBLocalGroupsInput < Struct.new(
      :gateway_arn,
      :smb_local_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBLocalGroupsOutput AWS API Documentation
    #
    class UpdateSMBLocalGroupsOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] smb_security_strategy
    #   Specifies the type of security strategy.
    #
    #   `ClientSpecified`: If you choose this option, requests are
    #   established based on what is negotiated by the client. This option
    #   is recommended when you want to maximize compatibility across
    #   different clients in your environment. Supported only for S3 File
    #   Gateway.
    #
    #   `MandatorySigning`: If you choose this option, File Gateway only
    #   allows connections from SMBv2 or SMBv3 clients that have signing
    #   enabled. This option works with SMB clients on Microsoft Windows
    #   Vista, Windows Server 2008 or newer.
    #
    #   `MandatoryEncryption`: If you choose this option, File Gateway only
    #   allows connections from SMBv3 clients that have encryption enabled.
    #   This option is recommended for environments that handle sensitive
    #   data. This option works with SMB clients on Microsoft Windows 8,
    #   Windows Server 2012 or newer.
    #
    #   `MandatoryEncryptionNoAes128`: If you choose this option, File
    #   Gateway only allows connections from SMBv3 clients that use 256-bit
    #   AES encryption algorithms. 128-bit algorithms are not allowed. This
    #   option is recommended for environments that handle sensitive data.
    #   It works with SMB clients on Microsoft Windows 8, Windows Server
    #   2012, or later.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBSecurityStrategyInput AWS API Documentation
    #
    class UpdateSMBSecurityStrategyInput < Struct.new(
      :gateway_arn,
      :smb_security_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBSecurityStrategyOutput AWS API Documentation
    #
    class UpdateSMBSecurityStrategyOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing one or more of the following fields:
    #
    # * UpdateSnapshotScheduleInput$Description
    #
    # * UpdateSnapshotScheduleInput$RecurrenceInHours
    #
    # * UpdateSnapshotScheduleInput$StartAt
    #
    # * UpdateSnapshotScheduleInput$VolumeARN
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #   @return [String]
    #
    # @!attribute [rw] start_at
    #   The hour of the day at which the snapshot schedule begins
    #   represented as *hh*, where *hh* is the hour (0 to 23). The hour of
    #   the day is in the time zone of the gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] recurrence_in_hours
    #   Frequency of snapshots. Specify the number of hours between
    #   snapshots.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   Optional description of the snapshot that overwrites the existing
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags that can be assigned to a snapshot. Each tag
    #   is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters:
    #   + - = . \_ : / @. The maximum length of a tag's key is 128
    #   characters, and the maximum length for a tag's value is 256.
    #
    #    </note>
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSnapshotScheduleInput AWS API Documentation
    #
    class UpdateSnapshotScheduleInput < Struct.new(
      :volume_arn,
      :start_at,
      :recurrence_in_hours,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON object containing the Amazon Resource Name (ARN) of the updated
    # storage volume.
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSnapshotScheduleOutput AWS API Documentation
    #
    class UpdateSnapshotScheduleOutput < Struct.new(
      :volume_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vtl_device_arn
    #   The Amazon Resource Name (ARN) of the medium changer you want to
    #   select.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of medium changer you want to select.
    #
    #   Valid Values: `STK-L700` \| `AWS-Gateway-VTL` \| `IBM-03584L32-0402`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateVTLDeviceTypeInput AWS API Documentation
    #
    class UpdateVTLDeviceTypeInput < Struct.new(
      :vtl_device_arn,
      :device_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateVTLDeviceTypeOutput
    #
    # @!attribute [rw] vtl_device_arn
    #   The Amazon Resource Name (ARN) of the medium changer you have
    #   selected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateVTLDeviceTypeOutput AWS API Documentation
    #
    class UpdateVTLDeviceTypeOutput < Struct.new(
      :vtl_device_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a device object associated with a tape gateway.
    #
    # @!attribute [rw] vtl_device_arn
    #   Specifies the unique Amazon Resource Name (ARN) of the device (tape
    #   drive or media changer).
    #   @return [String]
    #
    # @!attribute [rw] vtl_device_type
    #   Specifies the type of device that the VTL device emulates.
    #   @return [String]
    #
    # @!attribute [rw] vtl_device_vendor
    #   Specifies the vendor of the device that the VTL device object
    #   emulates.
    #   @return [String]
    #
    # @!attribute [rw] vtl_device_product_identifier
    #   Specifies the model number of device that the VTL device emulates.
    #   @return [String]
    #
    # @!attribute [rw] device_iscsi_attributes
    #   A list of iSCSI information about a VTL device.
    #   @return [Types::DeviceiSCSIAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/VTLDevice AWS API Documentation
    #
    class VTLDevice < Struct.new(
      :vtl_device_arn,
      :vtl_device_type,
      :vtl_device_vendor,
      :vtl_device_product_identifier,
      :device_iscsi_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a storage volume object.
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) for the storage volume. For example,
    #   the following is a valid ARN:
    #
    #   `arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB`
    #
    #   Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
    #   hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The unique identifier assigned to the volume. This ID becomes part
    #   of the volume Amazon Resource Name (ARN), which you use as input for
    #   other operations.
    #
    #   Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
    #   hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier assigned to your gateway during activation.
    #   This ID becomes part of the gateway Amazon Resource Name (ARN),
    #   which you use as input for other operations.
    #
    #   Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
    #   hyphens (-).
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   One of the VolumeType enumeration values describing the type of the
    #   volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   The size of the volume in bytes.
    #
    #   Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and
    #   hyphens (-).
    #   @return [Integer]
    #
    # @!attribute [rw] volume_attachment_status
    #   One of the VolumeStatus values that indicates the state of the
    #   storage volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/VolumeInfo AWS API Documentation
    #
    class VolumeInfo < Struct.new(
      :volume_arn,
      :volume_id,
      :gateway_arn,
      :gateway_id,
      :volume_type,
      :volume_size_in_bytes,
      :volume_attachment_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a storage volume recovery point object.
    #
    # @!attribute [rw] volume_arn
    #   The Amazon Resource Name (ARN) of the volume target.
    #   @return [String]
    #
    # @!attribute [rw] volume_size_in_bytes
    #   The size of the volume in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_usage_in_bytes
    #   The size of the data stored on the volume in bytes.
    #
    #   <note markdown="1"> This value is not available for volumes created prior to May 13,
    #   2015, until you store data on the volume.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] volume_recovery_point_time
    #   The time the recovery point was taken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/VolumeRecoveryPointInfo AWS API Documentation
    #
    class VolumeRecoveryPointInfo < Struct.new(
      :volume_arn,
      :volume_size_in_bytes,
      :volume_usage_in_bytes,
      :volume_recovery_point_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists iSCSI information about a volume.
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the volume target.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface identifier.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_port
    #   The port used to communicate with iSCSI targets.
    #   @return [Integer]
    #
    # @!attribute [rw] lun_number
    #   The logical disk number.
    #   @return [Integer]
    #
    # @!attribute [rw] chap_enabled
    #   Indicates whether mutual CHAP is enabled for the iSCSI target.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/VolumeiSCSIAttributes AWS API Documentation
    #
    class VolumeiSCSIAttributes < Struct.new(
      :target_arn,
      :network_interface_id,
      :network_interface_port,
      :lun_number,
      :chap_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

