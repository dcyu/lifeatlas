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

module Aws::KinesisVideo
  # An API client for KinesisVideo.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::KinesisVideo::Client.new(
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

    @identifier = :kinesisvideo

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
    add_plugin(Aws::KinesisVideo::Plugins::Endpoints)

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
    #   @option options [Aws::KinesisVideo::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::KinesisVideo::EndpointParameters`.
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

    # Creates a signaling channel.
    #
    # `CreateSignalingChannel` is an asynchronous operation.
    #
    # @option params [required, String] :channel_name
    #   A name for the signaling channel that you are creating. It must be
    #   unique for each Amazon Web Services account and Amazon Web Services
    #   Region.
    #
    # @option params [String] :channel_type
    #   A type of the signaling channel that you are creating. Currently,
    #   `SINGLE_MASTER` is the only supported channel type.
    #
    # @option params [Types::SingleMasterConfiguration] :single_master_configuration
    #   A structure containing the configuration for the `SINGLE_MASTER`
    #   channel type.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A set of tags (key-value pairs) that you want to associate with this
    #   channel.
    #
    # @return [Types::CreateSignalingChannelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSignalingChannelOutput#channel_arn #channel_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_signaling_channel({
    #     channel_name: "ChannelName", # required
    #     channel_type: "SINGLE_MASTER", # accepts SINGLE_MASTER, FULL_MESH
    #     single_master_configuration: {
    #       message_ttl_seconds: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/CreateSignalingChannel AWS API Documentation
    #
    # @overload create_signaling_channel(params = {})
    # @param [Hash] params ({})
    def create_signaling_channel(params = {}, options = {})
      req = build_request(:create_signaling_channel, params)
      req.send_request(options)
    end

    # Creates a new Kinesis video stream.
    #
    # When you create a new stream, Kinesis Video Streams assigns it a
    # version number. When you change the stream's metadata, Kinesis Video
    # Streams updates the version.
    #
    # `CreateStream` is an asynchronous operation.
    #
    # For information about how the service works, see [How it Works][1].
    #
    # You must have permissions for the `KinesisVideo:CreateStream` action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html
    #
    # @option params [String] :device_name
    #   The name of the device that is writing to the stream.
    #
    #   <note markdown="1"> In the current implementation, Kinesis Video Streams does not use this
    #   name.
    #
    #    </note>
    #
    # @option params [required, String] :stream_name
    #   A name for the stream that you are creating.
    #
    #   The stream name is an identifier for the stream, and must be unique
    #   for each account and region.
    #
    # @option params [String] :media_type
    #   The media type of the stream. Consumers of the stream can use this
    #   information when processing the stream. For more information about
    #   media types, see [Media Types][1]. If you choose to specify the
    #   `MediaType`, see [Naming Requirements][2] for guidelines.
    #
    #   Example valid values include "video/h264" and
    #   "video/h264,audio/aac".
    #
    #   This parameter is optional; the default value is `null` (or empty in
    #   JSON).
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/media-types/media-types.xhtml
    #   [2]: https://tools.ietf.org/html/rfc6838#section-4.2
    #
    # @option params [String] :kms_key_id
    #   The ID of the Key Management Service (KMS) key that you want Kinesis
    #   Video Streams to use to encrypt stream data.
    #
    #   If no key ID is specified, the default, Kinesis Video-managed key
    #   (`Amazon Web Services/kinesisvideo`) is used.
    #
    #   For more information, see [DescribeKey][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters
    #
    # @option params [Integer] :data_retention_in_hours
    #   The number of hours that you want to retain the data in the stream.
    #   Kinesis Video Streams retains the data in a data store that is
    #   associated with the stream.
    #
    #   The default value is 0, indicating that the stream does not persist
    #   data.
    #
    #   When the `DataRetentionInHours` value is 0, consumers can still
    #   consume the fragments that remain in the service host buffer, which
    #   has a retention time limit of 5 minutes and a retention memory limit
    #   of 200 MB. Fragments are removed from the buffer when either limit is
    #   reached.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags to associate with the specified stream. Each tag is a
    #   key-value pair (the value is optional).
    #
    # @return [Types::CreateStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamOutput#stream_arn #stream_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream({
    #     device_name: "DeviceName",
    #     stream_name: "StreamName", # required
    #     media_type: "MediaType",
    #     kms_key_id: "KmsKeyId",
    #     data_retention_in_hours: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/CreateStream AWS API Documentation
    #
    # @overload create_stream(params = {})
    # @param [Hash] params ({})
    def create_stream(params = {}, options = {})
      req = build_request(:create_stream, params)
      req.send_request(options)
    end

    # An asynchronous API that deletes a stream’s existing edge
    # configuration, as well as the corresponding media from the Edge Agent.
    #
    # When you invoke this API, the sync status is set to `DELETING`. A
    # deletion process starts, in which active edge jobs are stopped and all
    # media is deleted from the edge device. The time to delete varies,
    # depending on the total amount of stored media. If the deletion process
    # fails, the sync status changes to `DELETE_FAILED`. You will need to
    # re-try the deletion.
    #
    # When the deletion process has completed successfully, the edge
    # configuration is no longer accessible.
    #
    # @option params [String] :stream_name
    #   The name of the stream from which to delete the edge configuration.
    #   Specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream. Specify either the
    #   `StreamName` or the `StreamARN`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_edge_configuration({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteEdgeConfiguration AWS API Documentation
    #
    # @overload delete_edge_configuration(params = {})
    # @param [Hash] params ({})
    def delete_edge_configuration(params = {}, options = {})
      req = build_request(:delete_edge_configuration, params)
      req.send_request(options)
    end

    # Deletes a specified signaling channel. `DeleteSignalingChannel` is an
    # asynchronous operation. If you don't specify the channel's current
    # version, the most recent version is deleted.
    #
    # @option params [required, String] :channel_arn
    #   The Amazon Resource Name (ARN) of the signaling channel that you want
    #   to delete.
    #
    # @option params [String] :current_version
    #   The current version of the signaling channel that you want to delete.
    #   You can obtain the current version by invoking the
    #   `DescribeSignalingChannel` or `ListSignalingChannels` API operations.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_signaling_channel({
    #     channel_arn: "ResourceARN", # required
    #     current_version: "Version",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteSignalingChannel AWS API Documentation
    #
    # @overload delete_signaling_channel(params = {})
    # @param [Hash] params ({})
    def delete_signaling_channel(params = {}, options = {})
      req = build_request(:delete_signaling_channel, params)
      req.send_request(options)
    end

    # Deletes a Kinesis video stream and the data contained in the stream.
    #
    # This method marks the stream for deletion, and makes the data in the
    # stream inaccessible immediately.
    #
    #
    #
    # To ensure that you have the latest version of the stream before
    # deleting it, you can specify the stream version. Kinesis Video Streams
    # assigns a version to each stream. When you update a stream, Kinesis
    # Video Streams assigns a new version number. To get the latest stream
    # version, use the `DescribeStream` API.
    #
    # This operation requires permission for the `KinesisVideo:DeleteStream`
    # action.
    #
    # @option params [required, String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to delete.
    #
    # @option params [String] :current_version
    #   Optional: The version of the stream that you want to delete.
    #
    #   Specify the version as a safeguard to ensure that your are deleting
    #   the correct stream. To get the stream version, use the
    #   `DescribeStream` API.
    #
    #   If not specified, only the `CreationTime` is checked before deleting
    #   the stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream({
    #     stream_arn: "ResourceARN", # required
    #     current_version: "Version",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DeleteStream AWS API Documentation
    #
    # @overload delete_stream(params = {})
    # @param [Hash] params ({})
    def delete_stream(params = {}, options = {})
      req = build_request(:delete_stream, params)
      req.send_request(options)
    end

    # Describes a stream’s edge configuration that was set using the
    # `StartEdgeConfigurationUpdate` API and the latest status of the edge
    # agent's recorder and uploader jobs. Use this API to get the status of
    # the configuration to determine if the configuration is in sync with
    # the Edge Agent. Use this API to evaluate the health of the Edge Agent.
    #
    # @option params [String] :stream_name
    #   The name of the stream whose edge configuration you want to update.
    #   Specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream. Specify either the
    #   `StreamName`or the `StreamARN`.
    #
    # @return [Types::DescribeEdgeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEdgeConfigurationOutput#stream_name #stream_name} => String
    #   * {Types::DescribeEdgeConfigurationOutput#stream_arn #stream_arn} => String
    #   * {Types::DescribeEdgeConfigurationOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeEdgeConfigurationOutput#last_updated_time #last_updated_time} => Time
    #   * {Types::DescribeEdgeConfigurationOutput#sync_status #sync_status} => String
    #   * {Types::DescribeEdgeConfigurationOutput#failed_status_details #failed_status_details} => String
    #   * {Types::DescribeEdgeConfigurationOutput#edge_config #edge_config} => Types::EdgeConfig
    #   * {Types::DescribeEdgeConfigurationOutput#edge_agent_status #edge_agent_status} => Types::EdgeAgentStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_edge_configuration({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_name #=> String
    #   resp.stream_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.sync_status #=> String, one of "SYNCING", "ACKNOWLEDGED", "IN_SYNC", "SYNC_FAILED", "DELETING", "DELETE_FAILED", "DELETING_ACKNOWLEDGED"
    #   resp.failed_status_details #=> String
    #   resp.edge_config.hub_device_arn #=> String
    #   resp.edge_config.recorder_config.media_source_config.media_uri_secret_arn #=> String
    #   resp.edge_config.recorder_config.media_source_config.media_uri_type #=> String, one of "RTSP_URI", "FILE_URI"
    #   resp.edge_config.recorder_config.schedule_config.schedule_expression #=> String
    #   resp.edge_config.recorder_config.schedule_config.duration_in_seconds #=> Integer
    #   resp.edge_config.uploader_config.schedule_config.schedule_expression #=> String
    #   resp.edge_config.uploader_config.schedule_config.duration_in_seconds #=> Integer
    #   resp.edge_config.deletion_config.edge_retention_in_hours #=> Integer
    #   resp.edge_config.deletion_config.local_size_config.max_local_media_size_in_mb #=> Integer
    #   resp.edge_config.deletion_config.local_size_config.strategy_on_full_size #=> String, one of "DELETE_OLDEST_MEDIA", "DENY_NEW_MEDIA"
    #   resp.edge_config.deletion_config.delete_after_upload #=> Boolean
    #   resp.edge_agent_status.last_recorder_status.job_status_details #=> String
    #   resp.edge_agent_status.last_recorder_status.last_collected_time #=> Time
    #   resp.edge_agent_status.last_recorder_status.last_updated_time #=> Time
    #   resp.edge_agent_status.last_recorder_status.recorder_status #=> String, one of "SUCCESS", "USER_ERROR", "SYSTEM_ERROR"
    #   resp.edge_agent_status.last_uploader_status.job_status_details #=> String
    #   resp.edge_agent_status.last_uploader_status.last_collected_time #=> Time
    #   resp.edge_agent_status.last_uploader_status.last_updated_time #=> Time
    #   resp.edge_agent_status.last_uploader_status.uploader_status #=> String, one of "SUCCESS", "USER_ERROR", "SYSTEM_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeEdgeConfiguration AWS API Documentation
    #
    # @overload describe_edge_configuration(params = {})
    # @param [Hash] params ({})
    def describe_edge_configuration(params = {}, options = {})
      req = build_request(:describe_edge_configuration, params)
      req.send_request(options)
    end

    # Gets the `ImageGenerationConfiguration` for a given Kinesis video
    # stream.
    #
    # @option params [String] :stream_name
    #   The name of the stream from which to retrieve the image generation
    #   configuration. You must specify either the `StreamName` or the
    #   `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis video stream from which
    #   to retrieve the image generation configuration. You must specify
    #   either the `StreamName` or the `StreamARN`.
    #
    # @return [Types::DescribeImageGenerationConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImageGenerationConfigurationOutput#image_generation_configuration #image_generation_configuration} => Types::ImageGenerationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_generation_configuration({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.image_generation_configuration.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.image_generation_configuration.image_selector_type #=> String, one of "SERVER_TIMESTAMP", "PRODUCER_TIMESTAMP"
    #   resp.image_generation_configuration.destination_config.uri #=> String
    #   resp.image_generation_configuration.destination_config.destination_region #=> String
    #   resp.image_generation_configuration.sampling_interval #=> Integer
    #   resp.image_generation_configuration.format #=> String, one of "JPEG", "PNG"
    #   resp.image_generation_configuration.format_config #=> Hash
    #   resp.image_generation_configuration.format_config["FormatConfigKey"] #=> String
    #   resp.image_generation_configuration.width_pixels #=> Integer
    #   resp.image_generation_configuration.height_pixels #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeImageGenerationConfiguration AWS API Documentation
    #
    # @overload describe_image_generation_configuration(params = {})
    # @param [Hash] params ({})
    def describe_image_generation_configuration(params = {}, options = {})
      req = build_request(:describe_image_generation_configuration, params)
      req.send_request(options)
    end

    # Returns the most current information about the stream. The
    # `streamName` or `streamARN` should be provided in the input.
    #
    # @option params [String] :stream_name
    #   The name of the stream.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The token to provide in your next request, to get another batch of
    #   results.
    #
    # @return [Types::DescribeMappedResourceConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMappedResourceConfigurationOutput#mapped_resource_configuration_list #mapped_resource_configuration_list} => Array&lt;Types::MappedResourceConfigurationListItem&gt;
    #   * {Types::DescribeMappedResourceConfigurationOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mapped_resource_configuration({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.mapped_resource_configuration_list #=> Array
    #   resp.mapped_resource_configuration_list[0].type #=> String
    #   resp.mapped_resource_configuration_list[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeMappedResourceConfiguration AWS API Documentation
    #
    # @overload describe_mapped_resource_configuration(params = {})
    # @param [Hash] params ({})
    def describe_mapped_resource_configuration(params = {}, options = {})
      req = build_request(:describe_mapped_resource_configuration, params)
      req.send_request(options)
    end

    # Returns the most current information about the channel. Specify the
    # `ChannelName` or `ChannelARN` in the input.
    #
    # @option params [String] :channel_name
    #   The name of the channel.
    #
    # @option params [String] :channel_arn
    #   The Amazon Resource Name (ARN) of the channel.
    #
    # @return [Types::DescribeMediaStorageConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMediaStorageConfigurationOutput#media_storage_configuration #media_storage_configuration} => Types::MediaStorageConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_media_storage_configuration({
    #     channel_name: "ChannelName",
    #     channel_arn: "ResourceARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.media_storage_configuration.stream_arn #=> String
    #   resp.media_storage_configuration.status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeMediaStorageConfiguration AWS API Documentation
    #
    # @overload describe_media_storage_configuration(params = {})
    # @param [Hash] params ({})
    def describe_media_storage_configuration(params = {}, options = {})
      req = build_request(:describe_media_storage_configuration, params)
      req.send_request(options)
    end

    # Gets the `NotificationConfiguration` for a given Kinesis video stream.
    #
    # @option params [String] :stream_name
    #   The name of the stream from which to retrieve the notification
    #   configuration. You must specify either the `StreamName` or the
    #   `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis video stream from where
    #   you want to retrieve the notification configuration. You must specify
    #   either the `StreamName` or the StreamARN.
    #
    # @return [Types::DescribeNotificationConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotificationConfigurationOutput#notification_configuration #notification_configuration} => Types::NotificationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notification_configuration({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_configuration.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.notification_configuration.destination_config.uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeNotificationConfiguration AWS API Documentation
    #
    # @overload describe_notification_configuration(params = {})
    # @param [Hash] params ({})
    def describe_notification_configuration(params = {}, options = {})
      req = build_request(:describe_notification_configuration, params)
      req.send_request(options)
    end

    # Returns the most current information about the signaling channel. You
    # must specify either the name or the Amazon Resource Name (ARN) of the
    # channel that you want to describe.
    #
    # @option params [String] :channel_name
    #   The name of the signaling channel that you want to describe.
    #
    # @option params [String] :channel_arn
    #   The ARN of the signaling channel that you want to describe.
    #
    # @return [Types::DescribeSignalingChannelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSignalingChannelOutput#channel_info #channel_info} => Types::ChannelInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_signaling_channel({
    #     channel_name: "ChannelName",
    #     channel_arn: "ResourceARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_info.channel_name #=> String
    #   resp.channel_info.channel_arn #=> String
    #   resp.channel_info.channel_type #=> String, one of "SINGLE_MASTER", "FULL_MESH"
    #   resp.channel_info.channel_status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.channel_info.creation_time #=> Time
    #   resp.channel_info.single_master_configuration.message_ttl_seconds #=> Integer
    #   resp.channel_info.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeSignalingChannel AWS API Documentation
    #
    # @overload describe_signaling_channel(params = {})
    # @param [Hash] params ({})
    def describe_signaling_channel(params = {}, options = {})
      req = build_request(:describe_signaling_channel, params)
      req.send_request(options)
    end

    # Returns the most current information about the specified stream. You
    # must specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :stream_name
    #   The name of the stream.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream.
    #
    # @return [Types::DescribeStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStreamOutput#stream_info #stream_info} => Types::StreamInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_info.device_name #=> String
    #   resp.stream_info.stream_name #=> String
    #   resp.stream_info.stream_arn #=> String
    #   resp.stream_info.media_type #=> String
    #   resp.stream_info.kms_key_id #=> String
    #   resp.stream_info.version #=> String
    #   resp.stream_info.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.stream_info.creation_time #=> Time
    #   resp.stream_info.data_retention_in_hours #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/DescribeStream AWS API Documentation
    #
    # @overload describe_stream(params = {})
    # @param [Hash] params ({})
    def describe_stream(params = {}, options = {})
      req = build_request(:describe_stream, params)
      req.send_request(options)
    end

    # Gets an endpoint for a specified stream for either reading or writing.
    # Use this endpoint in your application to read from the specified
    # stream (using the `GetMedia` or `GetMediaForFragmentList` operations)
    # or write to it (using the `PutMedia` operation).
    #
    # <note markdown="1"> The returned endpoint does not have the API name appended. The client
    # needs to add the API name to the returned endpoint.
    #
    #  </note>
    #
    # In the request, specify the stream either by `StreamName` or
    # `StreamARN`.
    #
    # @option params [String] :stream_name
    #   The name of the stream that you want to get the endpoint for. You must
    #   specify either this parameter or a `StreamARN` in the request.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to get the
    #   endpoint for. You must specify either this parameter or a `StreamName`
    #   in the request.
    #
    # @option params [required, String] :api_name
    #   The name of the API action for which to get an endpoint.
    #
    # @return [Types::GetDataEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataEndpointOutput#data_endpoint #data_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_endpoint({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     api_name: "PUT_MEDIA", # required, accepts PUT_MEDIA, GET_MEDIA, LIST_FRAGMENTS, GET_MEDIA_FOR_FRAGMENT_LIST, GET_HLS_STREAMING_SESSION_URL, GET_DASH_STREAMING_SESSION_URL, GET_CLIP, GET_IMAGES
    #   })
    #
    # @example Response structure
    #
    #   resp.data_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/GetDataEndpoint AWS API Documentation
    #
    # @overload get_data_endpoint(params = {})
    # @param [Hash] params ({})
    def get_data_endpoint(params = {}, options = {})
      req = build_request(:get_data_endpoint, params)
      req.send_request(options)
    end

    # Provides an endpoint for the specified signaling channel to send and
    # receive messages. This API uses the
    # `SingleMasterChannelEndpointConfiguration` input parameter, which
    # consists of the `Protocols` and `Role` properties.
    #
    # `Protocols` is used to determine the communication mechanism. For
    # example, if you specify `WSS` as the protocol, this API produces a
    # secure websocket endpoint. If you specify `HTTPS` as the protocol,
    # this API generates an HTTPS endpoint.
    #
    # `Role` determines the messaging permissions. A `MASTER` role results
    # in this API generating an endpoint that a client can use to
    # communicate with any of the viewers on the channel. A `VIEWER` role
    # results in this API generating an endpoint that a client can use to
    # communicate only with a `MASTER`.
    #
    # @option params [required, String] :channel_arn
    #   The Amazon Resource Name (ARN) of the signalling channel for which you
    #   want to get an endpoint.
    #
    # @option params [Types::SingleMasterChannelEndpointConfiguration] :single_master_channel_endpoint_configuration
    #   A structure containing the endpoint configuration for the
    #   `SINGLE_MASTER` channel type.
    #
    # @return [Types::GetSignalingChannelEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSignalingChannelEndpointOutput#resource_endpoint_list #resource_endpoint_list} => Array&lt;Types::ResourceEndpointListItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signaling_channel_endpoint({
    #     channel_arn: "ResourceARN", # required
    #     single_master_channel_endpoint_configuration: {
    #       protocols: ["WSS"], # accepts WSS, HTTPS, WEBRTC
    #       role: "MASTER", # accepts MASTER, VIEWER
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_endpoint_list #=> Array
    #   resp.resource_endpoint_list[0].protocol #=> String, one of "WSS", "HTTPS", "WEBRTC"
    #   resp.resource_endpoint_list[0].resource_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/GetSignalingChannelEndpoint AWS API Documentation
    #
    # @overload get_signaling_channel_endpoint(params = {})
    # @param [Hash] params ({})
    def get_signaling_channel_endpoint(params = {}, options = {})
      req = build_request(:get_signaling_channel_endpoint, params)
      req.send_request(options)
    end

    # Returns an array of edge configurations associated with the specified
    # Edge Agent.
    #
    # In the request, you must specify the Edge Agent `HubDeviceArn`.
    #
    # @option params [required, String] :hub_device_arn
    #   The "Internet of Things (IoT) Thing" Arn of the edge agent.
    #
    # @option params [Integer] :max_results
    #   The maximum number of edge configurations to return in the response.
    #   The default is 5.
    #
    # @option params [String] :next_token
    #   If you specify this parameter, when the result of a
    #   `ListEdgeAgentConfigurations` operation is truncated, the call returns
    #   the `NextToken` in the response. To get another batch of edge
    #   configurations, provide this token in your next request.
    #
    # @return [Types::ListEdgeAgentConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEdgeAgentConfigurationsOutput#edge_configs #edge_configs} => Array&lt;Types::ListEdgeAgentConfigurationsEdgeConfig&gt;
    #   * {Types::ListEdgeAgentConfigurationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_edge_agent_configurations({
    #     hub_device_arn: "HubDeviceArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.edge_configs #=> Array
    #   resp.edge_configs[0].stream_name #=> String
    #   resp.edge_configs[0].stream_arn #=> String
    #   resp.edge_configs[0].creation_time #=> Time
    #   resp.edge_configs[0].last_updated_time #=> Time
    #   resp.edge_configs[0].sync_status #=> String, one of "SYNCING", "ACKNOWLEDGED", "IN_SYNC", "SYNC_FAILED", "DELETING", "DELETE_FAILED", "DELETING_ACKNOWLEDGED"
    #   resp.edge_configs[0].failed_status_details #=> String
    #   resp.edge_configs[0].edge_config.hub_device_arn #=> String
    #   resp.edge_configs[0].edge_config.recorder_config.media_source_config.media_uri_secret_arn #=> String
    #   resp.edge_configs[0].edge_config.recorder_config.media_source_config.media_uri_type #=> String, one of "RTSP_URI", "FILE_URI"
    #   resp.edge_configs[0].edge_config.recorder_config.schedule_config.schedule_expression #=> String
    #   resp.edge_configs[0].edge_config.recorder_config.schedule_config.duration_in_seconds #=> Integer
    #   resp.edge_configs[0].edge_config.uploader_config.schedule_config.schedule_expression #=> String
    #   resp.edge_configs[0].edge_config.uploader_config.schedule_config.duration_in_seconds #=> Integer
    #   resp.edge_configs[0].edge_config.deletion_config.edge_retention_in_hours #=> Integer
    #   resp.edge_configs[0].edge_config.deletion_config.local_size_config.max_local_media_size_in_mb #=> Integer
    #   resp.edge_configs[0].edge_config.deletion_config.local_size_config.strategy_on_full_size #=> String, one of "DELETE_OLDEST_MEDIA", "DENY_NEW_MEDIA"
    #   resp.edge_configs[0].edge_config.deletion_config.delete_after_upload #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListEdgeAgentConfigurations AWS API Documentation
    #
    # @overload list_edge_agent_configurations(params = {})
    # @param [Hash] params ({})
    def list_edge_agent_configurations(params = {}, options = {})
      req = build_request(:list_edge_agent_configurations, params)
      req.send_request(options)
    end

    # Returns an array of `ChannelInfo` objects. Each object describes a
    # signaling channel. To retrieve only those channels that satisfy a
    # specific condition, you can specify a `ChannelNameCondition`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channels to return in the response. The default
    #   is 500.
    #
    # @option params [String] :next_token
    #   If you specify this parameter, when the result of a
    #   `ListSignalingChannels` operation is truncated, the call returns the
    #   `NextToken` in the response. To get another batch of channels, provide
    #   this token in your next request.
    #
    # @option params [Types::ChannelNameCondition] :channel_name_condition
    #   Optional: Returns only the channels that satisfy a specific condition.
    #
    # @return [Types::ListSignalingChannelsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSignalingChannelsOutput#channel_info_list #channel_info_list} => Array&lt;Types::ChannelInfo&gt;
    #   * {Types::ListSignalingChannelsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signaling_channels({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     channel_name_condition: {
    #       comparison_operator: "BEGINS_WITH", # accepts BEGINS_WITH
    #       comparison_value: "ChannelName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_info_list #=> Array
    #   resp.channel_info_list[0].channel_name #=> String
    #   resp.channel_info_list[0].channel_arn #=> String
    #   resp.channel_info_list[0].channel_type #=> String, one of "SINGLE_MASTER", "FULL_MESH"
    #   resp.channel_info_list[0].channel_status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.channel_info_list[0].creation_time #=> Time
    #   resp.channel_info_list[0].single_master_configuration.message_ttl_seconds #=> Integer
    #   resp.channel_info_list[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListSignalingChannels AWS API Documentation
    #
    # @overload list_signaling_channels(params = {})
    # @param [Hash] params ({})
    def list_signaling_channels(params = {}, options = {})
      req = build_request(:list_signaling_channels, params)
      req.send_request(options)
    end

    # Returns an array of `StreamInfo` objects. Each object describes a
    # stream. To retrieve only streams that satisfy a specific condition,
    # you can specify a `StreamNameCondition`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of streams to return in the response. The default
    #   is 10,000.
    #
    # @option params [String] :next_token
    #   If you specify this parameter, when the result of a `ListStreams`
    #   operation is truncated, the call returns the `NextToken` in the
    #   response. To get another batch of streams, provide this token in your
    #   next request.
    #
    # @option params [Types::StreamNameCondition] :stream_name_condition
    #   Optional: Returns only streams that satisfy a specific condition.
    #   Currently, you can specify only the prefix of a stream name as a
    #   condition.
    #
    # @return [Types::ListStreamsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamsOutput#stream_info_list #stream_info_list} => Array&lt;Types::StreamInfo&gt;
    #   * {Types::ListStreamsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     stream_name_condition: {
    #       comparison_operator: "BEGINS_WITH", # accepts BEGINS_WITH
    #       comparison_value: "StreamName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_info_list #=> Array
    #   resp.stream_info_list[0].device_name #=> String
    #   resp.stream_info_list[0].stream_name #=> String
    #   resp.stream_info_list[0].stream_arn #=> String
    #   resp.stream_info_list[0].media_type #=> String
    #   resp.stream_info_list[0].kms_key_id #=> String
    #   resp.stream_info_list[0].version #=> String
    #   resp.stream_info_list[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.stream_info_list[0].creation_time #=> Time
    #   resp.stream_info_list[0].data_retention_in_hours #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListStreams AWS API Documentation
    #
    # @overload list_streams(params = {})
    # @param [Hash] params ({})
    def list_streams(params = {}, options = {})
      req = build_request(:list_streams, params)
      req.send_request(options)
    end

    # Returns a list of tags associated with the specified signaling
    # channel.
    #
    # @option params [String] :next_token
    #   If you specify this parameter and the result of a
    #   `ListTagsForResource` call is truncated, the response includes a token
    #   that you can use in the next request to fetch the next batch of tags.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the signaling channel for which you
    #   want to list tags.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#next_token #next_token} => String
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     next_token: "NextToken",
    #     resource_arn: "ResourceARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of tags associated with the specified stream.
    #
    # In the request, you must specify either the `StreamName` or the
    # `StreamARN`.
    #
    # @option params [String] :next_token
    #   If you specify this parameter and the result of a `ListTagsForStream`
    #   call is truncated, the response includes a token that you can use in
    #   the next request to fetch the next batch of tags.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to list
    #   tags for.
    #
    # @option params [String] :stream_name
    #   The name of the stream that you want to list tags for.
    #
    # @return [Types::ListTagsForStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForStreamOutput#next_token #next_token} => String
    #   * {Types::ListTagsForStreamOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_stream({
    #     next_token: "NextToken",
    #     stream_arn: "ResourceARN",
    #     stream_name: "StreamName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/ListTagsForStream AWS API Documentation
    #
    # @overload list_tags_for_stream(params = {})
    # @param [Hash] params ({})
    def list_tags_for_stream(params = {}, options = {})
      req = build_request(:list_tags_for_stream, params)
      req.send_request(options)
    end

    # An asynchronous API that updates a stream’s existing edge
    # configuration. The Kinesis Video Stream will sync the stream’s edge
    # configuration with the Edge Agent IoT Greengrass component that runs
    # on an IoT Hub Device, setup at your premise. The time to sync can vary
    # and depends on the connectivity of the Hub Device. The `SyncStatus`
    # will be updated as the edge configuration is acknowledged, and synced
    # with the Edge Agent.
    #
    # If this API is invoked for the first time, a new edge configuration
    # will be created for the stream, and the sync status will be set to
    # `SYNCING`. You will have to wait for the sync status to reach a
    # terminal state such as: `IN_SYNC`, or `SYNC_FAILED`, before using this
    # API again. If you invoke this API during the syncing process, a
    # `ResourceInUseException` will be thrown. The connectivity of the
    # stream’s edge configuration and the Edge Agent will be retried for 15
    # minutes. After 15 minutes, the status will transition into the
    # `SYNC_FAILED` state.
    #
    # To move an edge configuration from one device to another, use
    # DeleteEdgeConfiguration to delete the current edge configuration. You
    # can then invoke StartEdgeConfigurationUpdate with an updated Hub
    # Device ARN.
    #
    # @option params [String] :stream_name
    #   The name of the stream whose edge configuration you want to update.
    #   Specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream. Specify either the
    #   `StreamName` or the `StreamARN`.
    #
    # @option params [required, Types::EdgeConfig] :edge_config
    #   The edge configuration details required to invoke the update process.
    #
    # @return [Types::StartEdgeConfigurationUpdateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartEdgeConfigurationUpdateOutput#stream_name #stream_name} => String
    #   * {Types::StartEdgeConfigurationUpdateOutput#stream_arn #stream_arn} => String
    #   * {Types::StartEdgeConfigurationUpdateOutput#creation_time #creation_time} => Time
    #   * {Types::StartEdgeConfigurationUpdateOutput#last_updated_time #last_updated_time} => Time
    #   * {Types::StartEdgeConfigurationUpdateOutput#sync_status #sync_status} => String
    #   * {Types::StartEdgeConfigurationUpdateOutput#failed_status_details #failed_status_details} => String
    #   * {Types::StartEdgeConfigurationUpdateOutput#edge_config #edge_config} => Types::EdgeConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_edge_configuration_update({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     edge_config: { # required
    #       hub_device_arn: "HubDeviceArn", # required
    #       recorder_config: { # required
    #         media_source_config: { # required
    #           media_uri_secret_arn: "MediaUriSecretArn", # required
    #           media_uri_type: "RTSP_URI", # required, accepts RTSP_URI, FILE_URI
    #         },
    #         schedule_config: {
    #           schedule_expression: "ScheduleExpression", # required
    #           duration_in_seconds: 1, # required
    #         },
    #       },
    #       uploader_config: {
    #         schedule_config: { # required
    #           schedule_expression: "ScheduleExpression", # required
    #           duration_in_seconds: 1, # required
    #         },
    #       },
    #       deletion_config: {
    #         edge_retention_in_hours: 1,
    #         local_size_config: {
    #           max_local_media_size_in_mb: 1,
    #           strategy_on_full_size: "DELETE_OLDEST_MEDIA", # accepts DELETE_OLDEST_MEDIA, DENY_NEW_MEDIA
    #         },
    #         delete_after_upload: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_name #=> String
    #   resp.stream_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.sync_status #=> String, one of "SYNCING", "ACKNOWLEDGED", "IN_SYNC", "SYNC_FAILED", "DELETING", "DELETE_FAILED", "DELETING_ACKNOWLEDGED"
    #   resp.failed_status_details #=> String
    #   resp.edge_config.hub_device_arn #=> String
    #   resp.edge_config.recorder_config.media_source_config.media_uri_secret_arn #=> String
    #   resp.edge_config.recorder_config.media_source_config.media_uri_type #=> String, one of "RTSP_URI", "FILE_URI"
    #   resp.edge_config.recorder_config.schedule_config.schedule_expression #=> String
    #   resp.edge_config.recorder_config.schedule_config.duration_in_seconds #=> Integer
    #   resp.edge_config.uploader_config.schedule_config.schedule_expression #=> String
    #   resp.edge_config.uploader_config.schedule_config.duration_in_seconds #=> Integer
    #   resp.edge_config.deletion_config.edge_retention_in_hours #=> Integer
    #   resp.edge_config.deletion_config.local_size_config.max_local_media_size_in_mb #=> Integer
    #   resp.edge_config.deletion_config.local_size_config.strategy_on_full_size #=> String, one of "DELETE_OLDEST_MEDIA", "DENY_NEW_MEDIA"
    #   resp.edge_config.deletion_config.delete_after_upload #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/StartEdgeConfigurationUpdate AWS API Documentation
    #
    # @overload start_edge_configuration_update(params = {})
    # @param [Hash] params ({})
    def start_edge_configuration_update(params = {}, options = {})
      req = build_request(:start_edge_configuration_update, params)
      req.send_request(options)
    end

    # Adds one or more tags to a signaling channel. A *tag* is a key-value
    # pair (the value is optional) that you can define and assign to Amazon
    # Web Services resources. If you specify a tag that already exists, the
    # tag value is replaced with the value that you specify in the request.
    # For more information, see [Using Cost Allocation Tags][1] in the
    # *Billing and Cost Management and Cost Management User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the signaling channel to which you
    #   want to add tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags to associate with the specified signaling channel. Each
    #   tag is a key-value pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Adds one or more tags to a stream. A *tag* is a key-value pair (the
    # value is optional) that you can define and assign to Amazon Web
    # Services resources. If you specify a tag that already exists, the tag
    # value is replaced with the value that you specify in the request. For
    # more information, see [Using Cost Allocation Tags][1] in the *Billing
    # and Cost Management and Cost Management User Guide*.
    #
    # You must provide either the `StreamName` or the `StreamARN`.
    #
    # This operation requires permission for the `KinesisVideo:TagStream`
    # action.
    #
    # A Kinesis video stream can support up to 50 tags.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add
    #   the tag or tags to.
    #
    # @option params [String] :stream_name
    #   The name of the stream that you want to add the tag or tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tags to associate with the specified stream. Each tag is a
    #   key-value pair (the value is optional).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_stream({
    #     stream_arn: "ResourceARN",
    #     stream_name: "StreamName",
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/TagStream AWS API Documentation
    #
    # @overload tag_stream(params = {})
    # @param [Hash] params ({})
    def tag_stream(params = {}, options = {})
      req = build_request(:tag_stream, params)
      req.send_request(options)
    end

    # Removes one or more tags from a signaling channel. In the request,
    # specify only a tag key or keys; don't specify the value. If you
    # specify a tag key that does not exist, it's ignored.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the signaling channel from which you
    #   want to remove tags.
    #
    # @option params [required, Array<String>] :tag_key_list
    #   A list of the keys of the tags that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tag_key_list: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a stream. In the request, specify only a
    # tag key or keys; don't specify the value. If you specify a tag key
    # that does not exist, it's ignored.
    #
    # In the request, you must provide the `StreamName` or `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream that you want to remove
    #   tags from.
    #
    # @option params [String] :stream_name
    #   The name of the stream that you want to remove tags from.
    #
    # @option params [required, Array<String>] :tag_key_list
    #   A list of the keys of the tags that you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_stream({
    #     stream_arn: "ResourceARN",
    #     stream_name: "StreamName",
    #     tag_key_list: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UntagStream AWS API Documentation
    #
    # @overload untag_stream(params = {})
    # @param [Hash] params ({})
    def untag_stream(params = {}, options = {})
      req = build_request(:untag_stream, params)
      req.send_request(options)
    end

    # Increases or decreases the stream's data retention period by the
    # value that you specify. To indicate whether you want to increase or
    # decrease the data retention period, specify the `Operation` parameter
    # in the request body. In the request, you must specify either the
    # `StreamName` or the `StreamARN`.
    #
    # This operation requires permission for the
    # `KinesisVideo:UpdateDataRetention` action.
    #
    # Changing the data retention period affects the data in the stream as
    # follows:
    #
    # * If the data retention period is increased, existing data is retained
    #   for the new retention period. For example, if the data retention
    #   period is increased from one hour to seven hours, all existing data
    #   is retained for seven hours.
    #
    # * If the data retention period is decreased, existing data is retained
    #   for the new retention period. For example, if the data retention
    #   period is decreased from seven hours to one hour, all existing data
    #   is retained for one hour, and any data older than one hour is
    #   deleted immediately.
    #
    # @option params [String] :stream_name
    #   The name of the stream whose retention period you want to change.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the stream whose retention period
    #   you want to change.
    #
    # @option params [required, String] :current_version
    #   The version of the stream whose retention period you want to change.
    #   To get the version, call either the `DescribeStream` or the
    #   `ListStreams` API.
    #
    # @option params [required, String] :operation
    #   Indicates whether you want to increase or decrease the retention
    #   period.
    #
    # @option params [required, Integer] :data_retention_change_in_hours
    #   The number of hours to adjust the current retention by. The value you
    #   specify is added to or subtracted from the current value, depending on
    #   the `operation`.
    #
    #   The minimum value for data retention is 0 and the maximum value is
    #   87600 (ten years).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_retention({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     current_version: "Version", # required
    #     operation: "INCREASE_DATA_RETENTION", # required, accepts INCREASE_DATA_RETENTION, DECREASE_DATA_RETENTION
    #     data_retention_change_in_hours: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateDataRetention AWS API Documentation
    #
    # @overload update_data_retention(params = {})
    # @param [Hash] params ({})
    def update_data_retention(params = {}, options = {})
      req = build_request(:update_data_retention, params)
      req.send_request(options)
    end

    # Updates the `StreamInfo` and `ImageProcessingConfiguration` fields.
    #
    # @option params [String] :stream_name
    #   The name of the stream from which to update the image generation
    #   configuration. You must specify either the `StreamName` or the
    #   `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis video stream from where
    #   you want to update the image generation configuration. You must
    #   specify either the `StreamName` or the `StreamARN`.
    #
    # @option params [Types::ImageGenerationConfiguration] :image_generation_configuration
    #   The structure that contains the information required for the KVS
    #   images delivery. If the structure is null, the configuration will be
    #   deleted from the stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_image_generation_configuration({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     image_generation_configuration: {
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #       image_selector_type: "SERVER_TIMESTAMP", # required, accepts SERVER_TIMESTAMP, PRODUCER_TIMESTAMP
    #       destination_config: { # required
    #         uri: "DestinationUri", # required
    #         destination_region: "DestinationRegion", # required
    #       },
    #       sampling_interval: 1, # required
    #       format: "JPEG", # required, accepts JPEG, PNG
    #       format_config: {
    #         "JPEGQuality" => "FormatConfigValue",
    #       },
    #       width_pixels: 1,
    #       height_pixels: 1,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateImageGenerationConfiguration AWS API Documentation
    #
    # @overload update_image_generation_configuration(params = {})
    # @param [Hash] params ({})
    def update_image_generation_configuration(params = {}, options = {})
      req = build_request(:update_image_generation_configuration, params)
      req.send_request(options)
    end

    # Associates a `SignalingChannel` to a stream to store the media. There
    # are two signaling modes that you can specify :
    #
    # * If `StorageStatus` is enabled, the data will be stored in the
    #   `StreamARN` provided. In order for WebRTC Ingestion to work, the
    #   stream must have data retention enabled.
    #
    # * If `StorageStatus` is disabled, no data will be stored, and the
    #   `StreamARN` parameter will not be needed.
    #
    # If `StorageStatus` is enabled, direct peer-to-peer (master-viewer)
    # connections no longer occur. Peers connect directly to the storage
    # session. You must call the `JoinStorageSession` API to trigger an SDP
    # offer send and establish a connection between a peer and the storage
    # session.
    #
    # @option params [required, String] :channel_arn
    #   The Amazon Resource Name (ARN) of the channel.
    #
    # @option params [required, Types::MediaStorageConfiguration] :media_storage_configuration
    #   A structure that encapsulates, or contains, the media storage
    #   configuration properties.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_media_storage_configuration({
    #     channel_arn: "ResourceARN", # required
    #     media_storage_configuration: { # required
    #       stream_arn: "ResourceARN",
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateMediaStorageConfiguration AWS API Documentation
    #
    # @overload update_media_storage_configuration(params = {})
    # @param [Hash] params ({})
    def update_media_storage_configuration(params = {}, options = {})
      req = build_request(:update_media_storage_configuration, params)
      req.send_request(options)
    end

    # Updates the notification information for a stream.
    #
    # @option params [String] :stream_name
    #   The name of the stream from which to update the notification
    #   configuration. You must specify either the `StreamName` or the
    #   `StreamARN`.
    #
    # @option params [String] :stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis video stream from where
    #   you want to update the notification configuration. You must specify
    #   either the `StreamName` or the `StreamARN`.
    #
    # @option params [Types::NotificationConfiguration] :notification_configuration
    #   The structure containing the information required for notifications.
    #   If the structure is null, the configuration will be deleted from the
    #   stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification_configuration({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     notification_configuration: {
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #       destination_config: { # required
    #         uri: "DestinationUri", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateNotificationConfiguration AWS API Documentation
    #
    # @overload update_notification_configuration(params = {})
    # @param [Hash] params ({})
    def update_notification_configuration(params = {}, options = {})
      req = build_request(:update_notification_configuration, params)
      req.send_request(options)
    end

    # Updates the existing signaling channel. This is an asynchronous
    # operation and takes time to complete.
    #
    # If the `MessageTtlSeconds` value is updated (either increased or
    # reduced), it only applies to new messages sent via this channel after
    # it's been updated. Existing messages are still expired as per the
    # previous `MessageTtlSeconds` value.
    #
    # @option params [required, String] :channel_arn
    #   The Amazon Resource Name (ARN) of the signaling channel that you want
    #   to update.
    #
    # @option params [required, String] :current_version
    #   The current version of the signaling channel that you want to update.
    #
    # @option params [Types::SingleMasterConfiguration] :single_master_configuration
    #   The structure containing the configuration for the `SINGLE_MASTER`
    #   type of the signaling channel that you want to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_signaling_channel({
    #     channel_arn: "ResourceARN", # required
    #     current_version: "Version", # required
    #     single_master_configuration: {
    #       message_ttl_seconds: 1,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateSignalingChannel AWS API Documentation
    #
    # @overload update_signaling_channel(params = {})
    # @param [Hash] params ({})
    def update_signaling_channel(params = {}, options = {})
      req = build_request(:update_signaling_channel, params)
      req.send_request(options)
    end

    # Updates stream metadata, such as the device name and media type.
    #
    # You must provide the stream name or the Amazon Resource Name (ARN) of
    # the stream.
    #
    # To make sure that you have the latest version of the stream before
    # updating it, you can specify the stream version. Kinesis Video Streams
    # assigns a version to each stream. When you update a stream, Kinesis
    # Video Streams assigns a new version number. To get the latest stream
    # version, use the `DescribeStream` API.
    #
    # `UpdateStream` is an asynchronous operation, and takes time to
    # complete.
    #
    # @option params [String] :stream_name
    #   The name of the stream whose metadata you want to update.
    #
    #   The stream name is an identifier for the stream, and must be unique
    #   for each account and region.
    #
    # @option params [String] :stream_arn
    #   The ARN of the stream whose metadata you want to update.
    #
    # @option params [required, String] :current_version
    #   The version of the stream whose metadata you want to update.
    #
    # @option params [String] :device_name
    #   The name of the device that is writing to the stream.
    #
    #   <note markdown="1"> In the current implementation, Kinesis Video Streams does not use this
    #   name.
    #
    #    </note>
    #
    # @option params [String] :media_type
    #   The stream's media type. Use `MediaType` to specify the type of
    #   content that the stream contains to the consumers of the stream. For
    #   more information about media types, see [Media Types][1]. If you
    #   choose to specify the `MediaType`, see [Naming Requirements][2].
    #
    #   To play video on the console, you must specify the correct video type.
    #   For example, if the video in the stream is H.264, specify `video/h264`
    #   as the `MediaType`.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/media-types/media-types.xhtml
    #   [2]: https://tools.ietf.org/html/rfc6838#section-4.2
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stream({
    #     stream_name: "StreamName",
    #     stream_arn: "ResourceARN",
    #     current_version: "Version", # required
    #     device_name: "DeviceName",
    #     media_type: "MediaType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30/UpdateStream AWS API Documentation
    #
    # @overload update_stream(params = {})
    # @param [Hash] params ({})
    def update_stream(params = {}, options = {})
      req = build_request(:update_stream, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::KinesisVideo')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-kinesisvideo'
      context[:gem_version] = '1.81.0'
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
