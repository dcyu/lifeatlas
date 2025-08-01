# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::KinesisVideoArchivedMedia
  # An API client for KinesisVideoArchivedMedia.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::KinesisVideoArchivedMedia::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :kinesisvideoarchivedmedia

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::KinesisVideoArchivedMedia::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [String] :account_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::KinesisVideoArchivedMedia::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::KinesisVideoArchivedMedia::EndpointParameters`.
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Downloads an MP4 file (clip) containing the archived, on-demand media
    # from the specified video stream over the specified time range.
    #
    # Both the StreamName and the StreamARN parameters are optional, but you
    # must specify either the StreamName or the StreamARN when invoking this
    # API operation.
    #
    # As a prerequisite to using GetCLip API, you must obtain an endpoint
    # using `GetDataEndpoint`, specifying GET\_CLIP for` the APIName
    # parameter. </p> An Amazon Kinesis video stream has the following
    # requirements for providing data through MP4:   The media must contain
    # h.264 or h.265 encoded video and, optionally, AAC or G.711 encoded
    # audio. Specifically, the codec ID of track 1 should be V_MPEG/ISO/AVC
    # (for h.264) or V_MPEGH/ISO/HEVC (for H.265). Optionally, the codec ID
    # of track 2 should be A_AAC (for AAC) or A_MS/ACM (for G.711).   Data
    # retention must be greater than 0.   The video track of each fragment
    # must contain codec private data in the Advanced Video Coding (AVC) for
    # H.264 format and HEVC for H.265 format. For more information, see
    # MPEG-4 specification ISO/IEC 14496-15. For information about adapting
    # stream data to a given format, see NAL Adaptation Flags.   The audio
    # track (if present) of each fragment must contain codec private data in
    # the AAC format (AAC specification ISO/IEC 13818-7) or the MS Wave
    # format.   You can monitor the amount of outgoing data by monitoring
    # the GetClip.OutgoingBytes Amazon CloudWatch metric. For information
    # about using CloudWatch to monitor Kinesis Video Streams, see
    # Monitoring Kinesis Video Streams. For pricing information, see Amazon
    # Kinesis Video Streams Pricing and  Amazon Web Services Pricing.
    # Charges for outgoing Amazon Web Services data apply.
    # `
    #
    # @option params [String] :stream_name
    #   The name of the stream for which to retrieve the media clip.
    #
    #   You must specify either the StreamName or the StreamARN.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream for which to retrieve the
    #   media clip.
    #
    #   You must specify either the StreamName or the StreamARN.
    #
    # @option params [required, Types::ClipFragmentSelector] :clip_fragment_selector
    #   The time range of the requested clip and the source of the timestamps.
    #
    # @return [Types::GetClipOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetClipOutput#content_type #content_type} => String
    #   * {Types::GetClipOutput#payload #payload} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_clip({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     clip_fragment_selector: { # required
    #       fragment_selector_type: "PRODUCER_TIMESTAMP", # required, accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #       timestamp_range: { # required
    #         start_timestamp: Time.now, # required
    #         end_timestamp: Time.now, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.payload #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetClip AWS API Documentation
    #
    # @overload get_clip(params = {})
    # @param [Hash] params ({})
    def get_clip(params = {}, options = {}, &block)
      req = build_request(:get_clip, params)
      req.send_request(options, &block)
    end

    # Retrieves an MPEG Dynamic Adaptive Streaming over HTTP (DASH) URL for
    # the stream. You can then open the URL in a media player to view the
    # stream contents.
    #
    # Both the `StreamName` and the `StreamARN` parameters are optional, but
    # you must specify either the `StreamName` or the `StreamARN` when
    # invoking this API operation.
    #
    # An Amazon Kinesis video stream has the following requirements for
    # providing data through MPEG-DASH:
    #
    # * The media must contain h.264 or h.265 encoded video and, optionally,
    #   AAC or G.711 encoded audio. Specifically, the codec ID of track 1
    #   should be `V_MPEG/ISO/AVC` (for h.264) or V\_MPEGH/ISO/HEVC (for
    #   H.265). Optionally, the codec ID of track 2 should be `A_AAC` (for
    #   AAC) or A\_MS/ACM (for G.711).
    #
    # * Data retention must be greater than 0.
    #
    # * The video track of each fragment must contain codec private data in
    #   the Advanced Video Coding (AVC) for H.264 format and HEVC for H.265
    #   format. For more information, see [MPEG-4 specification ISO/IEC
    #   14496-15][1]. For information about adapting stream data to a given
    #   format, see [NAL Adaptation Flags][2].
    #
    # * The audio track (if present) of each fragment must contain codec
    #   private data in the AAC format ([AAC specification ISO/IEC
    #   13818-7][3]) or the [MS Wave format][4].
    #
    # The following procedure shows how to use MPEG-DASH with Kinesis Video
    # Streams:
    #
    # 1.  Get an endpoint using [GetDataEndpoint][5], specifying
    #     `GET_DASH_STREAMING_SESSION_URL` for the `APIName` parameter.
    #
    # 2.  Retrieve the MPEG-DASH URL using `GetDASHStreamingSessionURL`.
    #     Kinesis Video Streams creates an MPEG-DASH streaming session to be
    #     used for accessing content in a stream using the MPEG-DASH
    #     protocol. `GetDASHStreamingSessionURL` returns an authenticated
    #     URL (that includes an encrypted session token) for the session's
    #     MPEG-DASH *manifest* (the root resource needed for streaming with
    #     MPEG-DASH).
    #
    #     <note markdown="1"> Don't share or store this token where an unauthorized entity can
    #     access it. The token provides access to the content of the stream.
    #     Safeguard the token with the same measures that you use with your
    #     Amazon Web Services credentials.
    #
    #      </note>
    #
    #     The media that is made available through the manifest consists
    #     only of the requested stream, time range, and format. No other
    #     media data (such as frames outside the requested window or
    #     alternate bitrates) is made available.
    #
    # 3.  Provide the URL (containing the encrypted session token) for the
    #     MPEG-DASH manifest to a media player that supports the MPEG-DASH
    #     protocol. Kinesis Video Streams makes the initialization fragment
    #     and media fragments available through the manifest URL. The
    #     initialization fragment contains the codec private data for the
    #     stream, and other data needed to set up the video or audio decoder
    #     and renderer. The media fragments contain encoded video frames or
    #     encoded audio samples.
    #
    # 4.  The media player receives the authenticated URL and requests
    #     stream metadata and media data normally. When the media player
    #     requests data, it calls the following actions:
    #
    #     * **GetDASHManifest:** Retrieves an MPEG DASH manifest, which
    #       contains the metadata for the media that you want to playback.
    #
    #     * **GetMP4InitFragment:** Retrieves the MP4 initialization
    #       fragment. The media player typically loads the initialization
    #       fragment before loading any media fragments. This fragment
    #       contains the "`fytp`" and "`moov`" MP4 atoms, and the child
    #       atoms that are needed to initialize the media player decoder.
    #
    #       The initialization fragment does not correspond to a fragment in
    #       a Kinesis video stream. It contains only the codec private data
    #       for the stream and respective track, which the media player
    #       needs to decode the media frames.
    #
    #     * **GetMP4MediaFragment:** Retrieves MP4 media fragments. These
    #       fragments contain the "`moof`" and "`mdat`" MP4 atoms and
    #       their child atoms, containing the encoded fragment's media
    #       frames and their timestamps.
    #
    #       <note markdown="1"> After the first media fragment is made available in a streaming
    #       session, any fragments that don't contain the same codec
    #       private data cause an error to be returned when those different
    #       media fragments are loaded. Therefore, the codec private data
    #       should not change between fragments in a session. This also
    #       means that the session fails if the fragments in a stream change
    #       from having only video to having both audio and video.
    #
    #        </note>
    #
    #       Data retrieved with this action is billable. See [Pricing][6]
    #       for details.
    #
    # <note markdown="1"> For restrictions that apply to MPEG-DASH sessions, see [Kinesis Video
    # Streams Limits][7].
    #
    #  </note>
    #
    # You can monitor the amount of data that the media player consumes by
    # monitoring the `GetMP4MediaFragment.OutgoingBytes` Amazon CloudWatch
    # metric. For information about using CloudWatch to monitor Kinesis
    # Video Streams, see [Monitoring Kinesis Video Streams][8]. For pricing
    # information, see [Amazon Kinesis Video Streams Pricing][6] and [Amazon
    # Web Services Pricing][9]. Charges for both HLS sessions and outgoing
    # Amazon Web Services data apply.
    #
    # For more information about HLS, see [HTTP Live Streaming][10] on the
    # [Apple Developer site][11].
    #
    # If an error is thrown after invoking a Kinesis Video Streams archived
    # media API, in addition to the HTTP status code and the response body,
    # it includes the following pieces of information:
    #
    #  * `x-amz-ErrorType` HTTP header – contains a more specific error type
    #   in addition to what the HTTP status code provides.
    #
    # * `x-amz-RequestId` HTTP header – if you want to report an issue to
    #   Amazon Web Services the support team can better diagnose the problem
    #   if given the Request Id.
    #
    #  Both the HTTP status code and the ErrorType header can be utilized to
    # make programmatic decisions about whether errors are retry-able and
    # under what conditions, as well as provide information on what actions
    # the client programmer might need to take in order to successfully try
    # again.
    #
    #  For more information, see the **Errors** section at the bottom of
    # this
    # topic, as well as [Common Errors][12].
    #
    #
    #
    # [1]: https://www.iso.org/standard/55980.html
    # [2]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html
    # [3]: https://www.iso.org/standard/43345.html
    # [4]: http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html
    # [5]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html
    # [6]: https://aws.amazon.com/kinesis/video-streams/pricing/
    # [7]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html
    # [8]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html
    # [9]: https://aws.amazon.com/pricing/
    # [10]: https://developer.apple.com/streaming/
    # [11]: https://developer.apple.com
    # [12]: https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html
    #
    # @option params [String] :stream_name
    #   The name of the stream for which to retrieve the MPEG-DASH manifest
    #   URL.
    #
    #   You must specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream for which to retrieve the
    #   MPEG-DASH manifest URL.
    #
    #   You must specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :playback_mode
    #   Whether to retrieve live, live replay, or archived, on-demand data.
    #
    #   Features of the three types of sessions include the following:
    #
    #   * <b> <code>LIVE</code> </b>: For sessions of this type, the MPEG-DASH
    #     manifest is continually updated with the latest fragments as they
    #     become available. We recommend that the media player retrieve a new
    #     manifest on a one-second interval. When this type of session is
    #     played in a media player, the user interface typically displays a
    #     "live" notification, with no scrubber control for choosing the
    #     position in the playback window to display.
    #
    #     <note markdown="1"> In `LIVE` mode, the newest available fragments are included in an
    #     MPEG-DASH manifest, even if there is a gap between fragments (that
    #     is, if a fragment is missing). A gap like this might cause a media
    #     player to halt or cause a jump in playback. In this mode, fragments
    #     are not added to the MPEG-DASH manifest if they are older than the
    #     newest fragment in the playlist. If the missing fragment becomes
    #     available after a subsequent fragment is added to the manifest, the
    #     older fragment is not added, and the gap is not filled.
    #
    #      </note>
    #
    #   * <b> <code>LIVE_REPLAY</code> </b>: For sessions of this type, the
    #     MPEG-DASH manifest is updated similarly to how it is updated for
    #     `LIVE` mode except that it starts by including fragments from a
    #     given start time. Instead of fragments being added as they are
    #     ingested, fragments are added as the duration of the next fragment
    #     elapses. For example, if the fragments in the session are two
    #     seconds long, then a new fragment is added to the manifest every two
    #     seconds. This mode is useful to be able to start playback from when
    #     an event is detected and continue live streaming media that has not
    #     yet been ingested as of the time of the session creation. This mode
    #     is also useful to stream previously archived media without being
    #     limited by the 1,000 fragment limit in the `ON_DEMAND` mode.
    #
    #   * <b> <code>ON_DEMAND</code> </b>: For sessions of this type, the
    #     MPEG-DASH manifest contains all the fragments for the session, up to
    #     the number that is specified in `MaxManifestFragmentResults`. The
    #     manifest must be retrieved only once for each session. When this
    #     type of session is played in a media player, the user interface
    #     typically displays a scrubber control for choosing the position in
    #     the playback window to display.
    #
    #   In all playback modes, if `FragmentSelectorType` is
    #   `PRODUCER_TIMESTAMP`, and if there are multiple fragments with the
    #   same start timestamp, the fragment that has the larger fragment number
    #   (that is, the newer fragment) is included in the MPEG-DASH manifest.
    #   The other fragments are not included. Fragments that have different
    #   timestamps but have overlapping durations are still included in the
    #   MPEG-DASH manifest. This can lead to unexpected behavior in the media
    #   player.
    #
    #   The default is `LIVE`.
    #
    # @option params [String] :display_fragment_timestamp
    #   Per the MPEG-DASH specification, the wall-clock time of fragments in
    #   the manifest file can be derived using attributes in the manifest
    #   itself. However, typically, MPEG-DASH compatible media players do not
    #   properly handle gaps in the media timeline. Kinesis Video Streams
    #   adjusts the media timeline in the manifest file to enable playback of
    #   media with discontinuities. Therefore, the wall-clock time derived
    #   from the manifest file may be inaccurate. If DisplayFragmentTimestamp
    #   is set to `ALWAYS`, the accurate fragment timestamp is added to each S
    #   element in the manifest file with the attribute name “kvs:ts”. A
    #   custom MPEG-DASH media player is necessary to leverage this custom
    #   attribute.
    #
    #   The default value is `NEVER`. When DASHFragmentSelector is
    #   `SERVER_TIMESTAMP`, the timestamps will be the server start
    #   timestamps. Similarly, when DASHFragmentSelector is
    #   `PRODUCER_TIMESTAMP`, the timestamps will be the producer start
    #   timestamps.
    #
    # @option params [String] :display_fragment_number
    #   Fragments are identified in the manifest file based on their sequence
    #   number in the session. If DisplayFragmentNumber is set to `ALWAYS`,
    #   the Kinesis Video Streams fragment number is added to each S element
    #   in the manifest file with the attribute name “kvs:fn”. These fragment
    #   numbers can be used for logging or for use with other APIs (e.g.
    #   `GetMedia` and `GetMediaForFragmentList`). A custom MPEG-DASH media
    #   player is necessary to leverage these this custom attribute.
    #
    #   The default value is `NEVER`.
    #
    # @option params [Types::DASHFragmentSelector] :dash_fragment_selector
    #   The time range of the requested fragment and the source of the
    #   timestamps.
    #
    #   This parameter is required if `PlaybackMode` is `ON_DEMAND` or
    #   `LIVE_REPLAY`. This parameter is optional if PlaybackMode is` LIVE. If
    #   PlaybackMode is LIVE, the FragmentSelectorType can be set, but the
    #   TimestampRange should not be set. If PlaybackMode is ON_DEMAND or
    #   LIVE_REPLAY, both FragmentSelectorType and TimestampRange must be
    #   set.</p>
    #   `
    #
    # @option params [Integer] :expires
    #   The time in seconds until the requested session expires. This value
    #   can be between 300 (5 minutes) and 43200 (12 hours).
    #
    #   When a session expires, no new calls to `GetDashManifest`,
    #   `GetMP4InitFragment`, or `GetMP4MediaFragment` can be made for that
    #   session.
    #
    #   The default is 300 (5 minutes).
    #
    # @option params [Integer] :max_manifest_fragment_results
    #   The maximum number of fragments that are returned in the MPEG-DASH
    #   manifest.
    #
    #   When the `PlaybackMode` is `LIVE`, the most recent fragments are
    #   returned up to this value. When the `PlaybackMode` is `ON_DEMAND`, the
    #   oldest fragments are returned, up to this maximum number.
    #
    #   When there are a higher number of fragments available in a live
    #   MPEG-DASH manifest, video players often buffer content before starting
    #   playback. Increasing the buffer size increases the playback latency,
    #   but it decreases the likelihood that rebuffering will occur during
    #   playback. We recommend that a live MPEG-DASH manifest have a minimum
    #   of 3 fragments and a maximum of 10 fragments.
    #
    #   The default is 5 fragments if `PlaybackMode` is `LIVE` or
    #   `LIVE_REPLAY`, and 1,000 if `PlaybackMode` is `ON_DEMAND`.
    #
    #   The maximum value of 1,000 fragments corresponds to more than 16
    #   minutes of video on streams with 1-second fragments, and more than 2
    #   1/2 hours of video on streams with 10-second fragments.
    #
    # @return [Types::GetDASHStreamingSessionURLOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDASHStreamingSessionURLOutput#dash_streaming_session_url #dash_streaming_session_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dash_streaming_session_url({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     playback_mode: "LIVE", # accepts LIVE, LIVE_REPLAY, ON_DEMAND
    #     display_fragment_timestamp: "ALWAYS", # accepts ALWAYS, NEVER
    #     display_fragment_number: "ALWAYS", # accepts ALWAYS, NEVER
    #     dash_fragment_selector: {
    #       fragment_selector_type: "PRODUCER_TIMESTAMP", # accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #       timestamp_range: {
    #         start_timestamp: Time.now,
    #         end_timestamp: Time.now,
    #       },
    #     },
    #     expires: 1,
    #     max_manifest_fragment_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dash_streaming_session_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetDASHStreamingSessionURL AWS API Documentation
    #
    # @overload get_dash_streaming_session_url(params = {})
    # @param [Hash] params ({})
    def get_dash_streaming_session_url(params = {}, options = {})
      req = build_request(:get_dash_streaming_session_url, params)
      req.send_request(options)
    end

    # Retrieves an HTTP Live Streaming (HLS) URL for the stream. You can
    # then open the URL in a browser or media player to view the stream
    # contents.
    #
    # Both the `StreamName` and the `StreamARN` parameters are optional, but
    # you must specify either the `StreamName` or the `StreamARN` when
    # invoking this API operation.
    #
    # An Amazon Kinesis video stream has the following requirements for
    # providing data through HLS:
    #
    # * For streaming video, the media must contain H.264 or H.265 encoded
    #   video and, optionally, AAC encoded audio. Specifically, the codec ID
    #   of track 1 should be `V_MPEG/ISO/AVC` (for H.264) or
    #   `V_MPEG/ISO/HEVC` (for H.265). Optionally, the codec ID of track 2
    #   should be `A_AAC`. For audio only streaming, the codec ID of track 1
    #   should be `A_AAC`.
    #
    # * Data retention must be greater than 0.
    #
    # * The video track of each fragment must contain codec private data in
    #   the Advanced Video Coding (AVC) for H.264 format or HEVC for H.265
    #   format ([MPEG-4 specification ISO/IEC 14496-15][1]). For information
    #   about adapting stream data to a given format, see [NAL Adaptation
    #   Flags][2].
    #
    # * The audio track (if present) of each fragment must contain codec
    #   private data in the AAC format ([AAC specification ISO/IEC
    #   13818-7][3]).
    #
    # Kinesis Video Streams HLS sessions contain fragments in the fragmented
    # MPEG-4 form (also called fMP4 or CMAF) or the MPEG-2 form (also called
    # TS chunks, which the HLS specification also supports). For more
    # information about HLS fragment types, see the [HLS specification][4].
    #
    # The following procedure shows how to use HLS with Kinesis Video
    # Streams:
    #
    # 1.  Get an endpoint using [GetDataEndpoint][5], specifying
    #     `GET_HLS_STREAMING_SESSION_URL` for the `APIName` parameter.
    #
    # 2.  Retrieve the HLS URL using `GetHLSStreamingSessionURL`. Kinesis
    #     Video Streams creates an HLS streaming session to be used for
    #     accessing content in a stream using the HLS protocol.
    #     `GetHLSStreamingSessionURL` returns an authenticated URL (that
    #     includes an encrypted session token) for the session's HLS
    #     *master playlist* (the root resource needed for streaming with
    #     HLS).
    #
    #     <note markdown="1"> Don't share or store this token where an unauthorized entity
    #     could access it. The token provides access to the content of the
    #     stream. Safeguard the token with the same measures that you would
    #     use with your Amazon Web Services credentials.
    #
    #      </note>
    #
    #     The media that is made available through the playlist consists
    #     only of the requested stream, time range, and format. No other
    #     media data (such as frames outside the requested window or
    #     alternate bitrates) is made available.
    #
    # 3.  Provide the URL (containing the encrypted session token) for the
    #     HLS master playlist to a media player that supports the HLS
    #     protocol. Kinesis Video Streams makes the HLS media playlist,
    #     initialization fragment, and media fragments available through the
    #     master playlist URL. The initialization fragment contains the
    #     codec private data for the stream, and other data needed to set up
    #     the video or audio decoder and renderer. The media fragments
    #     contain H.264-encoded video frames or AAC-encoded audio samples.
    #
    # 4.  The media player receives the authenticated URL and requests
    #     stream metadata and media data normally. When the media player
    #     requests data, it calls the following actions:
    #
    #     * **GetHLSMasterPlaylist:** Retrieves an HLS master playlist,
    #       which contains a URL for the `GetHLSMediaPlaylist` action for
    #       each track, and additional metadata for the media player,
    #       including estimated bitrate and resolution.
    #
    #     * **GetHLSMediaPlaylist:** Retrieves an HLS media playlist, which
    #       contains a URL to access the MP4 initialization fragment with
    #       the `GetMP4InitFragment` action, and URLs to access the MP4
    #       media fragments with the `GetMP4MediaFragment` actions. The HLS
    #       media playlist also contains metadata about the stream that the
    #       player needs to play it, such as whether the `PlaybackMode` is
    #       `LIVE` or `ON_DEMAND`. The HLS media playlist is typically
    #       static for sessions with a `PlaybackType` of `ON_DEMAND`. The
    #       HLS media playlist is continually updated with new fragments for
    #       sessions with a `PlaybackType` of `LIVE`. There is a distinct
    #       HLS media playlist for the video track and the audio track (if
    #       applicable) that contains MP4 media URLs for the specific track.
    #
    #     * **GetMP4InitFragment:** Retrieves the MP4 initialization
    #       fragment. The media player typically loads the initialization
    #       fragment before loading any media fragments. This fragment
    #       contains the "`fytp`" and "`moov`" MP4 atoms, and the child
    #       atoms that are needed to initialize the media player decoder.
    #
    #       The initialization fragment does not correspond to a fragment in
    #       a Kinesis video stream. It contains only the codec private data
    #       for the stream and respective track, which the media player
    #       needs to decode the media frames.
    #
    #     * **GetMP4MediaFragment:** Retrieves MP4 media fragments. These
    #       fragments contain the "`moof`" and "`mdat`" MP4 atoms and
    #       their child atoms, containing the encoded fragment's media
    #       frames and their timestamps.
    #
    #       <note markdown="1"> For the HLS streaming session, in-track codec private data (CPD)
    #       changes are supported. After the first media fragment is made
    #       available in a streaming session, fragments can contain CPD
    #       changes for each track. Therefore, the fragments in a session
    #       can have a different resolution, bit rate, or other information
    #       in the CPD without interrupting playback. However, any change
    #       made in the track number or track codec format can return an
    #       error when those different media fragments are loaded. For
    #       example, streaming will fail if the fragments in the stream
    #       change from having only video to having both audio and video, or
    #       if an AAC audio track is changed to an ALAW audio track. For
    #       each streaming session, only 500 CPD changes are allowed.
    #
    #        </note>
    #
    #       Data retrieved with this action is billable. For information,
    #       see [Pricing][6].
    #
    #     * **GetTSFragment:** Retrieves MPEG TS fragments containing both
    #       initialization and media data for all tracks in the stream.
    #
    #       <note markdown="1"> If the `ContainerFormat` is `MPEG_TS`, this API is used instead
    #       of `GetMP4InitFragment` and `GetMP4MediaFragment` to retrieve
    #       stream media.
    #
    #        </note>
    #
    #       Data retrieved with this action is billable. For more
    #       information, see [Kinesis Video Streams pricing][6].
    #
    # A streaming session URL must not be shared between players. The
    # service might throttle a session if multiple media players are sharing
    # it. For connection limits, see [Kinesis Video Streams Limits][7].
    #
    # You can monitor the amount of data that the media player consumes by
    # monitoring the `GetMP4MediaFragment.OutgoingBytes` Amazon CloudWatch
    # metric. For information about using CloudWatch to monitor Kinesis
    # Video Streams, see [Monitoring Kinesis Video Streams][8]. For pricing
    # information, see [Amazon Kinesis Video Streams Pricing][6] and [Amazon
    # Web Services Pricing][9]. Charges for both HLS sessions and outgoing
    # Amazon Web Services data apply.
    #
    # For more information about HLS, see [HTTP Live Streaming][10] on the
    # [Apple Developer site][11].
    #
    # If an error is thrown after invoking a Kinesis Video Streams archived
    # media API, in addition to the HTTP status code and the response body,
    # it includes the following pieces of information:
    #
    #  * `x-amz-ErrorType` HTTP header – contains a more specific error type
    #   in addition to what the HTTP status code provides.
    #
    # * `x-amz-RequestId` HTTP header – if you want to report an issue to
    #   Amazon Web Services, the support team can better diagnose the
    #   problem if given the Request Id.
    #
    #  Both the HTTP status code and the ErrorType header can be utilized to
    # make programmatic decisions about whether errors are retry-able and
    # under what conditions, as well as provide information on what actions
    # the client programmer might need to take in order to successfully try
    # again.
    #
    #  For more information, see the **Errors** section at the bottom of
    # this
    # topic, as well as [Common Errors][12].
    #
    #
    #
    # [1]: https://www.iso.org/standard/55980.html
    # [2]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html
    # [3]: https://www.iso.org/standard/43345.html
    # [4]: https://tools.ietf.org/html/draft-pantos-http-live-streaming-23
    # [5]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html
    # [6]: https://aws.amazon.com/kinesis/video-streams/pricing/
    # [7]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html
    # [8]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html
    # [9]: https://aws.amazon.com/pricing/
    # [10]: https://developer.apple.com/streaming/
    # [11]: https://developer.apple.com
    # [12]: https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html
    #
    # @option params [String] :stream_name
    #   The name of the stream for which to retrieve the HLS master playlist
    #   URL.
    #
    #   You must specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream for which to retrieve the
    #   HLS master playlist URL.
    #
    #   You must specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :playback_mode
    #   Whether to retrieve live, live replay, or archived, on-demand data.
    #
    #   Features of the three types of sessions include the following:
    #
    #   * <b> <code>LIVE</code> </b>: For sessions of this type, the HLS media
    #     playlist is continually updated with the latest fragments as they
    #     become available. We recommend that the media player retrieve a new
    #     playlist on a one-second interval. When this type of session is
    #     played in a media player, the user interface typically displays a
    #     "live" notification, with no scrubber control for choosing the
    #     position in the playback window to display.
    #
    #     <note markdown="1"> In `LIVE` mode, the newest available fragments are included in an
    #     HLS media playlist, even if there is a gap between fragments (that
    #     is, if a fragment is missing). A gap like this might cause a media
    #     player to halt or cause a jump in playback. In this mode, fragments
    #     are not added to the HLS media playlist if they are older than the
    #     newest fragment in the playlist. If the missing fragment becomes
    #     available after a subsequent fragment is added to the playlist, the
    #     older fragment is not added, and the gap is not filled.
    #
    #      </note>
    #
    #   * <b> <code>LIVE_REPLAY</code> </b>: For sessions of this type, the
    #     HLS media playlist is updated similarly to how it is updated for
    #     `LIVE` mode except that it starts by including fragments from a
    #     given start time. Instead of fragments being added as they are
    #     ingested, fragments are added as the duration of the next fragment
    #     elapses. For example, if the fragments in the session are two
    #     seconds long, then a new fragment is added to the media playlist
    #     every two seconds. This mode is useful to be able to start playback
    #     from when an event is detected and continue live streaming media
    #     that has not yet been ingested as of the time of the session
    #     creation. This mode is also useful to stream previously archived
    #     media without being limited by the 1,000 fragment limit in the
    #     `ON_DEMAND` mode.
    #
    #   * <b> <code>ON_DEMAND</code> </b>: For sessions of this type, the HLS
    #     media playlist contains all the fragments for the session, up to the
    #     number that is specified in `MaxMediaPlaylistFragmentResults`. The
    #     playlist must be retrieved only once for each session. When this
    #     type of session is played in a media player, the user interface
    #     typically displays a scrubber control for choosing the position in
    #     the playback window to display.
    #
    #   In all playback modes, if `FragmentSelectorType` is
    #   `PRODUCER_TIMESTAMP`, and if there are multiple fragments with the
    #   same start timestamp, the fragment that has the largest fragment
    #   number (that is, the newest fragment) is included in the HLS media
    #   playlist. The other fragments are not included. Fragments that have
    #   different timestamps but have overlapping durations are still included
    #   in the HLS media playlist. This can lead to unexpected behavior in the
    #   media player.
    #
    #   The default is `LIVE`.
    #
    # @option params [Types::HLSFragmentSelector] :hls_fragment_selector
    #   The time range of the requested fragment and the source of the
    #   timestamps.
    #
    #   This parameter is required if `PlaybackMode` is `ON_DEMAND` or
    #   `LIVE_REPLAY`. This parameter is optional if PlaybackMode is` LIVE. If
    #   PlaybackMode is LIVE, the FragmentSelectorType can be set, but the
    #   TimestampRange should not be set. If PlaybackMode is ON_DEMAND or
    #   LIVE_REPLAY, both FragmentSelectorType and TimestampRange must be
    #   set.</p>
    #   `
    #
    # @option params [String] :container_format
    #   Specifies which format should be used for packaging the media.
    #   Specifying the `FRAGMENTED_MP4` container format packages the media
    #   into MP4 fragments (fMP4 or CMAF). This is the recommended packaging
    #   because there is minimal packaging overhead. The other container
    #   format option is `MPEG_TS`. HLS has supported MPEG TS chunks since it
    #   was released and is sometimes the only supported packaging on older
    #   HLS players. MPEG TS typically has a 5-25 percent packaging overhead.
    #   This means MPEG TS typically requires 5-25 percent more bandwidth and
    #   cost than fMP4.
    #
    #   The default is `FRAGMENTED_MP4`.
    #
    # @option params [String] :discontinuity_mode
    #   Specifies when flags marking discontinuities between fragments are
    #   added to the media playlists.
    #
    #   Media players typically build a timeline of media content to play,
    #   based on the timestamps of each fragment. This means that if there is
    #   any overlap or gap between fragments (as is typical if
    #   HLSFragmentSelector is set to `SERVER_TIMESTAMP`), the media player
    #   timeline will also have small gaps between fragments in some places,
    #   and will overwrite frames in other places. Gaps in the media player
    #   timeline can cause playback to stall and overlaps can cause playback
    #   to be jittery. When there are discontinuity flags between fragments,
    #   the media player is expected to reset the timeline, resulting in the
    #   next fragment being played immediately after the previous fragment.
    #
    #   The following modes are supported:
    #
    #   * `ALWAYS`: a discontinuity marker is placed between every fragment in
    #     the HLS media playlist. It is recommended to use a value of `ALWAYS`
    #     if the fragment timestamps are not accurate.
    #
    #   * `NEVER`: no discontinuity markers are placed anywhere. It is
    #     recommended to use a value of `NEVER` to ensure the media player
    #     timeline most accurately maps to the producer timestamps.
    #
    #   * `ON_DISCONTINUITY`: a discontinuity marker is placed between
    #     fragments that have a gap or overlap of more than 50 milliseconds.
    #     For most playback scenarios, it is recommended to use a value of
    #     `ON_DISCONTINUITY` so that the media player timeline is only reset
    #     when there is a significant issue with the media timeline (e.g. a
    #     missing fragment).
    #
    #   The default is `ALWAYS` when HLSFragmentSelector is set to
    #   `SERVER_TIMESTAMP`, and `NEVER` when it is set to
    #   `PRODUCER_TIMESTAMP`.
    #
    # @option params [String] :display_fragment_timestamp
    #   Specifies when the fragment start timestamps should be included in the
    #   HLS media playlist. Typically, media players report the playhead
    #   position as a time relative to the start of the first fragment in the
    #   playback session. However, when the start timestamps are included in
    #   the HLS media playlist, some media players might report the current
    #   playhead as an absolute time based on the fragment timestamps. This
    #   can be useful for creating a playback experience that shows viewers
    #   the wall-clock time of the media.
    #
    #   The default is `NEVER`. When HLSFragmentSelector is
    #   `SERVER_TIMESTAMP`, the timestamps will be the server start
    #   timestamps. Similarly, when HLSFragmentSelector is
    #   `PRODUCER_TIMESTAMP`, the timestamps will be the producer start
    #   timestamps.
    #
    # @option params [Integer] :expires
    #   The time in seconds until the requested session expires. This value
    #   can be between 300 (5 minutes) and 43200 (12 hours).
    #
    #   When a session expires, no new calls to `GetHLSMasterPlaylist`,
    #   `GetHLSMediaPlaylist`, `GetMP4InitFragment`, `GetMP4MediaFragment`, or
    #   `GetTSFragment` can be made for that session.
    #
    #   The default is 300 (5 minutes).
    #
    # @option params [Integer] :max_media_playlist_fragment_results
    #   The maximum number of fragments that are returned in the HLS media
    #   playlists.
    #
    #   When the `PlaybackMode` is `LIVE`, the most recent fragments are
    #   returned up to this value. When the `PlaybackMode` is `ON_DEMAND`, the
    #   oldest fragments are returned, up to this maximum number.
    #
    #   When there are a higher number of fragments available in a live HLS
    #   media playlist, video players often buffer content before starting
    #   playback. Increasing the buffer size increases the playback latency,
    #   but it decreases the likelihood that rebuffering will occur during
    #   playback. We recommend that a live HLS media playlist have a minimum
    #   of 3 fragments and a maximum of 10 fragments.
    #
    #   The default is 5 fragments if `PlaybackMode` is `LIVE` or
    #   `LIVE_REPLAY`, and 1,000 if `PlaybackMode` is `ON_DEMAND`.
    #
    #   The maximum value of 5,000 fragments corresponds to more than 80
    #   minutes of video on streams with 1-second fragments, and more than 13
    #   hours of video on streams with 10-second fragments.
    #
    # @return [Types::GetHLSStreamingSessionURLOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHLSStreamingSessionURLOutput#hls_streaming_session_url #hls_streaming_session_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hls_streaming_session_url({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     playback_mode: "LIVE", # accepts LIVE, LIVE_REPLAY, ON_DEMAND
    #     hls_fragment_selector: {
    #       fragment_selector_type: "PRODUCER_TIMESTAMP", # accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #       timestamp_range: {
    #         start_timestamp: Time.now,
    #         end_timestamp: Time.now,
    #       },
    #     },
    #     container_format: "FRAGMENTED_MP4", # accepts FRAGMENTED_MP4, MPEG_TS
    #     discontinuity_mode: "ALWAYS", # accepts ALWAYS, NEVER, ON_DISCONTINUITY
    #     display_fragment_timestamp: "ALWAYS", # accepts ALWAYS, NEVER
    #     expires: 1,
    #     max_media_playlist_fragment_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.hls_streaming_session_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetHLSStreamingSessionURL AWS API Documentation
    #
    # @overload get_hls_streaming_session_url(params = {})
    # @param [Hash] params ({})
    def get_hls_streaming_session_url(params = {}, options = {})
      req = build_request(:get_hls_streaming_session_url, params)
      req.send_request(options)
    end

    # Retrieves a list of images corresponding to each timestamp for a given
    # time range, sampling interval, and image format configuration.
    #
    # @option params [String] :stream_name
    #   The name of the stream from which to retrieve the images. You must
    #   specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream from which to retrieve
    #   the images. You must specify either the `StreamName` or the
    #   `StreamARN`.
    #
    # @option params [required, String] :image_selector_type
    #   The origin of the Server or Producer timestamps to use to generate the
    #   images.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_timestamp
    #   The starting point from which the images should be generated. This
    #   `StartTimestamp` must be within an inclusive range of timestamps for
    #   an image to be returned.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_timestamp
    #   The end timestamp for the range of images to be generated. If the time
    #   range between `StartTimestamp` and `EndTimestamp` is more than 300
    #   seconds above `StartTimestamp`, you will receive an
    #   `IllegalArgumentException`.
    #
    # @option params [Integer] :sampling_interval
    #   The time interval in milliseconds (ms) at which the images need to be
    #   generated from the stream. The minimum value that can be provided is
    #   200 ms (5 images per second). If the timestamp range is less than the
    #   sampling interval, the image from the `startTimestamp` will be
    #   returned if available.
    #
    # @option params [required, String] :format
    #   The format that will be used to encode the image.
    #
    # @option params [Hash<String,String>] :format_config
    #   The list of a key-value pair structure that contains extra parameters
    #   that can be applied when the image is generated. The `FormatConfig`
    #   key is the `JPEGQuality`, which indicates the JPEG quality key to be
    #   used to generate the image. The `FormatConfig` value accepts ints from
    #   1 to 100. If the value is 1, the image will be generated with less
    #   quality and the best compression. If the value is 100, the image will
    #   be generated with the best quality and less compression. If no value
    #   is provided, the default value of the `JPEGQuality` key will be set to
    #   80.
    #
    # @option params [Integer] :width_pixels
    #   The width of the output image that is used in conjunction with the
    #   `HeightPixels` parameter. When both `WidthPixels` and `HeightPixels`
    #   parameters are provided, the image will be stretched to fit the
    #   specified aspect ratio. If only the `WidthPixels` parameter is
    #   provided or if only the `HeightPixels` is provided, a
    #   `ValidationException` will be thrown. If neither parameter is
    #   provided, the original image size from the stream will be returned.
    #
    # @option params [Integer] :height_pixels
    #   The height of the output image that is used in conjunction with the
    #   `WidthPixels` parameter. When both `HeightPixels` and `WidthPixels`
    #   parameters are provided, the image will be stretched to fit the
    #   specified aspect ratio. If only the `HeightPixels` parameter is
    #   provided, its original aspect ratio will be used to calculate the
    #   `WidthPixels` ratio. If neither parameter is provided, the original
    #   image size will be returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of images to be returned by the API.
    #
    #   <note markdown="1"> The default limit is 25 images per API response. Providing a
    #   `MaxResults` greater than this value will result in a page size of 25.
    #   Any additional results will be paginated.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   A token that specifies where to start paginating the next set of
    #   Images. This is the `GetImages:NextToken` from a previously truncated
    #   response.
    #
    # @return [Types::GetImagesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImagesOutput#images #images} => Array&lt;Types::Image&gt;
    #   * {Types::GetImagesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_images({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     image_selector_type: "PRODUCER_TIMESTAMP", # required, accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #     start_timestamp: Time.now, # required
    #     end_timestamp: Time.now, # required
    #     sampling_interval: 1,
    #     format: "JPEG", # required, accepts JPEG, PNG
    #     format_config: {
    #       "JPEGQuality" => "FormatConfigValue",
    #     },
    #     width_pixels: 1,
    #     height_pixels: 1,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.images #=> Array
    #   resp.images[0].time_stamp #=> Time
    #   resp.images[0].error #=> String, one of "NO_MEDIA", "MEDIA_ERROR"
    #   resp.images[0].image_content #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetImages AWS API Documentation
    #
    # @overload get_images(params = {})
    # @param [Hash] params ({})
    def get_images(params = {}, options = {})
      req = build_request(:get_images, params)
      req.send_request(options)
    end

    # Gets media for a list of fragments (specified by fragment number) from
    # the archived data in an Amazon Kinesis video stream.
    #
    # <note markdown="1"> You must first call the `GetDataEndpoint` API to get an endpoint. Then
    # send the `GetMediaForFragmentList` requests to this endpoint using the
    # [--endpoint-url parameter][1].
    #
    #  </note>
    #
    # For limits, see [Kinesis Video Streams Limits][2].
    #
    # If an error is thrown after invoking a Kinesis Video Streams archived
    # media API, in addition to the HTTP status code and the response body,
    # it includes the following pieces of information:
    #
    #  * `x-amz-ErrorType` HTTP header – contains a more specific error type
    #   in addition to what the HTTP status code provides.
    #
    # * `x-amz-RequestId` HTTP header – if you want to report an issue to
    #   Amazon Web Services, the support team can better diagnose the
    #   problem if given the Request Id.
    #
    #  Both the HTTP status code and the ErrorType header can be utilized to
    # make programmatic decisions about whether errors are retry-able and
    # under what conditions, as well as provide information on what actions
    # the client programmer might need to take in order to successfully try
    # again.
    #
    #  For more information, see the **Errors** section at the bottom of
    # this
    # topic, as well as [Common Errors][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cli/latest/reference/
    # [2]: http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html
    # [3]: https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html
    #
    # @option params [String] :stream_name
    #   The name of the stream from which to retrieve fragment media. Specify
    #   either this parameter or the `StreamARN` parameter.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream from which to retrieve
    #   fragment media. Specify either this parameter or the `StreamName`
    #   parameter.
    #
    # @option params [required, Array<String>] :fragments
    #   A list of the numbers of fragments for which to retrieve media. You
    #   retrieve these values with ListFragments.
    #
    # @return [Types::GetMediaForFragmentListOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMediaForFragmentListOutput#content_type #content_type} => String
    #   * {Types::GetMediaForFragmentListOutput#payload #payload} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media_for_fragment_list({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     fragments: ["FragmentNumberString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.payload #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetMediaForFragmentList AWS API Documentation
    #
    # @overload get_media_for_fragment_list(params = {})
    # @param [Hash] params ({})
    def get_media_for_fragment_list(params = {}, options = {}, &block)
      req = build_request(:get_media_for_fragment_list, params)
      req.send_request(options, &block)
    end

    # Returns a list of Fragment objects from the specified stream and
    # timestamp range within the archived data.
    #
    # Listing fragments is eventually consistent. This means that even if
    # the producer receives an acknowledgment that a fragment is persisted,
    # the result might not be returned immediately from a request to
    # `ListFragments`. However, results are typically available in less than
    # one second.
    #
    # <note markdown="1"> You must first call the `GetDataEndpoint` API to get an endpoint. Then
    # send the `ListFragments` requests to this endpoint using the
    # [--endpoint-url parameter][1].
    #
    #  </note>
    #
    # If an error is thrown after invoking a Kinesis Video Streams archived
    # media API, in addition to the HTTP status code and the response body,
    # it includes the following pieces of information:
    #
    #  * `x-amz-ErrorType` HTTP header – contains a more specific error type
    #   in addition to what the HTTP status code provides.
    #
    # * `x-amz-RequestId` HTTP header – if you want to report an issue to
    #   Amazon Web Services, the support team can better diagnose the
    #   problem if given the Request Id.
    #
    #  Both the HTTP status code and the ErrorType header can be utilized to
    # make programmatic decisions about whether errors are retry-able and
    # under what conditions, as well as provide information on what actions
    # the client programmer might need to take in order to successfully try
    # again.
    #
    #  For more information, see the **Errors** section at the bottom of
    # this
    # topic, as well as [Common Errors][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cli/latest/reference/
    # [2]: https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html
    #
    # @option params [String] :stream_name
    #   The name of the stream from which to retrieve a fragment list. Specify
    #   either this parameter or the `StreamARN` parameter.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream from which to retrieve a
    #   fragment list. Specify either this parameter or the `StreamName`
    #   parameter.
    #
    # @option params [Integer] :max_results
    #   The total number of fragments to return. If the total number of
    #   fragments available is more than the value specified in `max-results`,
    #   then a ListFragmentsOutput$NextToken is provided in the output that
    #   you can use to resume pagination.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the
    #   ListFragmentsOutput$NextToken from a previously truncated response.
    #
    # @option params [Types::FragmentSelector] :fragment_selector
    #   Describes the timestamp range and timestamp origin for the range of
    #   fragments to return.
    #
    #   <note markdown="1"> This is only required when the `NextToken` isn't passed in the API.
    #
    #    </note>
    #
    # @return [Types::ListFragmentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFragmentsOutput#fragments #fragments} => Array&lt;Types::Fragment&gt;
    #   * {Types::ListFragmentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fragments({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     fragment_selector: {
    #       fragment_selector_type: "PRODUCER_TIMESTAMP", # required, accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #       timestamp_range: { # required
    #         start_timestamp: Time.now, # required
    #         end_timestamp: Time.now, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fragments #=> Array
    #   resp.fragments[0].fragment_number #=> String
    #   resp.fragments[0].fragment_size_in_bytes #=> Integer
    #   resp.fragments[0].producer_timestamp #=> Time
    #   resp.fragments[0].server_timestamp #=> Time
    #   resp.fragments[0].fragment_length_in_milliseconds #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/ListFragments AWS API Documentation
    #
    # @overload list_fragments(params = {})
    # @param [Hash] params ({})
    def list_fragments(params = {}, options = {})
      req = build_request(:list_fragments, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::KinesisVideoArchivedMedia')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-kinesisvideoarchivedmedia'
      context[:gem_version] = '1.78.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
