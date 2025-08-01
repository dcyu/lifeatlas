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

module Aws::MediaPackageV2
  # An API client for MediaPackageV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaPackageV2::Client.new(
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

    @identifier = :mediapackagev2

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
    add_plugin(Aws::MediaPackageV2::Plugins::Endpoints)

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
    #   @option options [Aws::MediaPackageV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MediaPackageV2::EndpointParameters`.
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

    # Cancels an in-progress harvest job.
    #
    # @option params [required, String] :channel_group_name
    #   The name of the channel group containing the channel from which the
    #   harvest job is running.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel from which the harvest job is running.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name of the origin endpoint that the harvest job is harvesting
    #   from. This cannot be changed after the harvest job is submitted.
    #
    # @option params [required, String] :harvest_job_name
    #   The name of the harvest job to cancel. This name must be unique within
    #   the channel and cannot be changed after the harvest job is submitted.
    #
    # @option params [String] :etag
    #   The current Entity Tag (ETag) associated with the harvest job. Used
    #   for concurrency control.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Cancel a Harvest Job
    #
    #   resp = client.cancel_harvest_job({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannelName", 
    #     harvest_job_name: "HarvestJobName", 
    #     origin_endpoint_name: "exampleOriginEndpointName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_harvest_job({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     harvest_job_name: "ResourceName", # required
    #     etag: "EntityTag",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CancelHarvestJob AWS API Documentation
    #
    # @overload cancel_harvest_job(params = {})
    # @param [Hash] params ({})
    def cancel_harvest_job(params = {}, options = {})
      req = build_request(:cancel_harvest_job, params)
      req.send_request(options)
    end

    # Create a channel to start receiving content streams. The channel
    # represents the input to MediaPackage for incoming live content from an
    # encoder such as AWS Elemental MediaLive. The channel receives content,
    # and after packaging it, outputs it through an origin endpoint to
    # downstream devices (such as video players or CDNs) that request the
    # content. You can create only one channel with each request. We
    # recommend that you spread out channels between channel groups, such as
    # putting redundant channels in the same AWS Region in different channel
    # groups.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group. You can't change the name after you
    #   create the channel.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :input_type
    #   The input type will be an immutable field which will be used to define
    #   whether the channel will allow CMAF ingest or HLS ingest. If
    #   unprovided, it will default to HLS to preserve current behavior.
    #
    #   The allowed values are:
    #
    #   * `HLS` - The HLS streaming specification (which defines M3U8
    #     manifests and TS segments).
    #
    #   * `CMAF` - The DASH-IF CMAF Ingest specification (which defines CMAF
    #     segments with optional DASH manifests).
    #
    # @option params [String] :description
    #   Enter any descriptive text that helps you to identify the channel.
    #
    # @option params [Types::InputSwitchConfiguration] :input_switch_configuration
    #   The configuration for input switching based on the media quality
    #   confidence score (MQCS) as provided from AWS Elemental MediaLive. This
    #   setting is valid only when `InputType` is `CMAF`.
    #
    # @option params [Types::OutputHeaderConfiguration] :output_header_configuration
    #   The settings for what common media server data (CMSD) headers AWS
    #   Elemental MediaPackage includes in responses to the CDN. This setting
    #   is valid only when `InputType` is `CMAF`.
    #
    # @option params [Hash<String,String>] :tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#arn #arn} => String
    #   * {Types::CreateChannelResponse#channel_name #channel_name} => String
    #   * {Types::CreateChannelResponse#channel_group_name #channel_group_name} => String
    #   * {Types::CreateChannelResponse#created_at #created_at} => Time
    #   * {Types::CreateChannelResponse#modified_at #modified_at} => Time
    #   * {Types::CreateChannelResponse#description #description} => String
    #   * {Types::CreateChannelResponse#ingest_endpoints #ingest_endpoints} => Array&lt;Types::IngestEndpoint&gt;
    #   * {Types::CreateChannelResponse#input_type #input_type} => String
    #   * {Types::CreateChannelResponse#etag #etag} => String
    #   * {Types::CreateChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateChannelResponse#input_switch_configuration #input_switch_configuration} => Types::InputSwitchConfiguration
    #   * {Types::CreateChannelResponse#output_header_configuration #output_header_configuration} => Types::OutputHeaderConfiguration
    #
    #
    # @example Example: Creating a Channel
    #
    #   resp = client.create_channel({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     description: "Description for exampleChannel", 
    #     input_type: "HLS", 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Description for exampleChannel", 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     ingest_endpoints: [
    #       {
    #         id: "1", 
    #         url: "https://abcde-1.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index", 
    #       }, 
    #       {
    #         id: "2", 
    #         url: "https://abcde-2.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index", 
    #       }, 
    #     ], 
    #     input_type: "HLS", 
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     client_token: "IdempotencyToken",
    #     input_type: "HLS", # accepts HLS, CMAF
    #     description: "ResourceDescription",
    #     input_switch_configuration: {
    #       mqcs_input_switching: false,
    #       preferred_input: 1,
    #     },
    #     output_header_configuration: {
    #       publish_mqcs: false,
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.channel_group_name #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.ingest_endpoints #=> Array
    #   resp.ingest_endpoints[0].id #=> String
    #   resp.ingest_endpoints[0].url #=> String
    #   resp.input_type #=> String, one of "HLS", "CMAF"
    #   resp.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.input_switch_configuration.mqcs_input_switching #=> Boolean
    #   resp.input_switch_configuration.preferred_input #=> Integer
    #   resp.output_header_configuration.publish_mqcs #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Create a channel group to group your channels and origin endpoints. A
    # channel group is the top-level resource that consists of channels and
    # origin endpoints that are associated with it and that provides
    # predictable URLs for stream delivery. All channels and origin
    # endpoints within the channel group are guaranteed to share the DNS.
    # You can create only one channel group with each request.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region. You can't use spaces in the name. You can't
    #   change the name after you create the channel group.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   Enter any descriptive text that helps you to identify the channel
    #   group.
    #
    # @option params [Hash<String,String>] :tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #
    # @return [Types::CreateChannelGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelGroupResponse#channel_group_name #channel_group_name} => String
    #   * {Types::CreateChannelGroupResponse#arn #arn} => String
    #   * {Types::CreateChannelGroupResponse#egress_domain #egress_domain} => String
    #   * {Types::CreateChannelGroupResponse#created_at #created_at} => Time
    #   * {Types::CreateChannelGroupResponse#modified_at #modified_at} => Time
    #   * {Types::CreateChannelGroupResponse#etag #etag} => String
    #   * {Types::CreateChannelGroupResponse#description #description} => String
    #   * {Types::CreateChannelGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Creating a Channel Group
    #
    #   resp = client.create_channel_group({
    #     channel_group_name: "exampleChannelGroup", 
    #     description: "Description for exampleChannelGroup", 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup", 
    #     channel_group_name: "exampleChannelGroup", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Description for exampleChannelGroup", 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     egress_domain: "abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com", 
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_group({
    #     channel_group_name: "ResourceName", # required
    #     client_token: "IdempotencyToken",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.arn #=> String
    #   resp.egress_domain #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.etag #=> String
    #   resp.description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateChannelGroup AWS API Documentation
    #
    # @overload create_channel_group(params = {})
    # @param [Hash] params ({})
    def create_channel_group(params = {}, options = {})
      req = build_request(:create_channel_group, params)
      req.send_request(options)
    end

    # Creates a new harvest job to export content from a MediaPackage v2
    # channel to an S3 bucket.
    #
    # @option params [required, String] :channel_group_name
    #   The name of the channel group containing the channel from which to
    #   harvest content.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel from which to harvest content.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name of the origin endpoint from which to harvest content.
    #
    # @option params [String] :description
    #   An optional description for the harvest job.
    #
    # @option params [required, Types::HarvestedManifests] :harvested_manifests
    #   A list of manifests to be harvested.
    #
    # @option params [required, Types::HarvesterScheduleConfiguration] :schedule_configuration
    #   The configuration for when the harvest job should run, including start
    #   and end times.
    #
    # @option params [required, Types::Destination] :destination
    #   The S3 destination where the harvested content will be placed.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :harvest_job_name
    #   A name for the harvest job. This name must be unique within the
    #   channel.
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of tags associated with the harvest job.
    #
    # @return [Types::CreateHarvestJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHarvestJobResponse#channel_group_name #channel_group_name} => String
    #   * {Types::CreateHarvestJobResponse#channel_name #channel_name} => String
    #   * {Types::CreateHarvestJobResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::CreateHarvestJobResponse#destination #destination} => Types::Destination
    #   * {Types::CreateHarvestJobResponse#harvest_job_name #harvest_job_name} => String
    #   * {Types::CreateHarvestJobResponse#harvested_manifests #harvested_manifests} => Types::HarvestedManifests
    #   * {Types::CreateHarvestJobResponse#description #description} => String
    #   * {Types::CreateHarvestJobResponse#schedule_configuration #schedule_configuration} => Types::HarvesterScheduleConfiguration
    #   * {Types::CreateHarvestJobResponse#arn #arn} => String
    #   * {Types::CreateHarvestJobResponse#created_at #created_at} => Time
    #   * {Types::CreateHarvestJobResponse#modified_at #modified_at} => Time
    #   * {Types::CreateHarvestJobResponse#status #status} => String
    #   * {Types::CreateHarvestJobResponse#error_message #error_message} => String
    #   * {Types::CreateHarvestJobResponse#etag #etag} => String
    #   * {Types::CreateHarvestJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Creating a Harvest Job
    #
    #   resp = client.create_harvest_job({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannelName", 
    #     description: "Example HarvestJob description", 
    #     destination: {
    #       s3_destination: {
    #         bucket_name: "harvestJobS3DestinationBucket", 
    #         destination_path: "manifests", 
    #       }, 
    #     }, 
    #     harvested_manifests: {
    #       dash_manifests: [
    #         {
    #           manifest_name: "DashManifest", 
    #         }, 
    #       ], 
    #       hls_manifests: [
    #         {
    #           manifest_name: "HlsManifest", 
    #         }, 
    #       ], 
    #       low_latency_hls_manifests: [
    #         {
    #           manifest_name: "LowLatencyHlsManifest", 
    #         }, 
    #       ], 
    #     }, 
    #     origin_endpoint_name: "exampleOriginEndpointName", 
    #     schedule_configuration: {
    #       end_time: Time.parse("2024-05-28T12:00:00.00Z"), 
    #       start_time: Time.parse("2024-05-28T06:00:00.00Z"), 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannelName", 
    #     created_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #     description: "Example HarvestJob description", 
    #     destination: {
    #       s3_destination: {
    #         bucket_name: "harvestJobS3DestinationBucket", 
    #         destination_path: "manifests", 
    #       }, 
    #     }, 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     harvest_job_name: "HarvestJobName", 
    #     harvested_manifests: {
    #       dash_manifests: [
    #         {
    #           manifest_name: "DashManifest", 
    #         }, 
    #       ], 
    #       hls_manifests: [
    #         {
    #           manifest_name: "HlsManifest", 
    #         }, 
    #       ], 
    #       low_latency_hls_manifests: [
    #         {
    #           manifest_name: "LowLatencyHlsManifest", 
    #         }, 
    #       ], 
    #     }, 
    #     modified_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #     origin_endpoint_name: "exampleOriginEndpointName", 
    #     schedule_configuration: {
    #       end_time: Time.parse("2024-05-28T12:00:00.00Z"), 
    #       start_time: Time.parse("2024-05-28T06:00:00.00Z"), 
    #     }, 
    #     status: "QUEUED", 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_harvest_job({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     harvested_manifests: { # required
    #       hls_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         },
    #       ],
    #       dash_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         },
    #       ],
    #       low_latency_hls_manifests: [
    #         {
    #           manifest_name: "ResourceName", # required
    #         },
    #       ],
    #     },
    #     schedule_configuration: { # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     destination: { # required
    #       s3_destination: { # required
    #         bucket_name: "S3BucketName", # required
    #         destination_path: "S3DestinationPath", # required
    #       },
    #     },
    #     client_token: "IdempotencyToken",
    #     harvest_job_name: "ResourceName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.destination.s3_destination.bucket_name #=> String
    #   resp.destination.s3_destination.destination_path #=> String
    #   resp.harvest_job_name #=> String
    #   resp.harvested_manifests.hls_manifests #=> Array
    #   resp.harvested_manifests.hls_manifests[0].manifest_name #=> String
    #   resp.harvested_manifests.dash_manifests #=> Array
    #   resp.harvested_manifests.dash_manifests[0].manifest_name #=> String
    #   resp.harvested_manifests.low_latency_hls_manifests #=> Array
    #   resp.harvested_manifests.low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.description #=> String
    #   resp.schedule_configuration.start_time #=> Time
    #   resp.schedule_configuration.end_time #=> Time
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.status #=> String, one of "QUEUED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"
    #   resp.error_message #=> String
    #   resp.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateHarvestJob AWS API Documentation
    #
    # @overload create_harvest_job(params = {})
    # @param [Hash] params ({})
    def create_harvest_job(params = {}, options = {})
      req = build_request(:create_harvest_job, params)
      req.send_request(options)
    end

    # The endpoint is attached to a channel, and represents the output of
    # the live content. You can associate multiple endpoints to a single
    # channel. Each endpoint gives players and downstream CDNs (such as
    # Amazon CloudFront) access to the content for playback. Content can't
    # be served from a channel until it has an endpoint. You can create only
    # one endpoint with each request.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and must be unique for your
    #   account in the AWS Region and channel. You can't use spaces in the
    #   name. You can't change the name after you create the endpoint.
    #
    # @option params [required, String] :container_type
    #   The type of container to attach to this origin endpoint. A container
    #   type is a file format that encapsulates one or more media streams,
    #   such as audio and video, into a single file. You can't change the
    #   container type after you create the endpoint.
    #
    # @option params [Types::Segment] :segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive token that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   Enter any descriptive text that helps you to identify the origin
    #   endpoint.
    #
    # @option params [Integer] :startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can start-over
    #   or catch-up on content that falls within the window. The maximum
    #   startover window is 1,209,600 seconds (14 days).
    #
    # @option params [Array<Types::CreateHlsManifestConfiguration>] :hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #
    # @option params [Array<Types::CreateLowLatencyHlsManifestConfiguration>] :low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #
    # @option params [Array<Types::CreateDashManifestConfiguration>] :dash_manifests
    #   A DASH manifest configuration.
    #
    # @option params [Array<Types::CreateMssManifestConfiguration>] :mss_manifests
    #   A list of Microsoft Smooth Streaming (MSS) manifest configurations for
    #   the origin endpoint. You can configure multiple MSS manifests to
    #   provide different streaming experiences or to support different client
    #   requirements.
    #
    # @option params [Types::ForceEndpointErrorConfiguration] :force_endpoint_error_configuration
    #   The failover settings for the endpoint.
    #
    # @option params [Hash<String,String>] :tags
    #   A comma-separated list of tag key:value pairs that you define. For
    #   example:
    #
    #   `"Key1": "Value1",`
    #
    #   `"Key2": "Value2"`
    #
    # @return [Types::CreateOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOriginEndpointResponse#arn #arn} => String
    #   * {Types::CreateOriginEndpointResponse#channel_group_name #channel_group_name} => String
    #   * {Types::CreateOriginEndpointResponse#channel_name #channel_name} => String
    #   * {Types::CreateOriginEndpointResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::CreateOriginEndpointResponse#container_type #container_type} => String
    #   * {Types::CreateOriginEndpointResponse#segment #segment} => Types::Segment
    #   * {Types::CreateOriginEndpointResponse#created_at #created_at} => Time
    #   * {Types::CreateOriginEndpointResponse#modified_at #modified_at} => Time
    #   * {Types::CreateOriginEndpointResponse#description #description} => String
    #   * {Types::CreateOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::CreateOriginEndpointResponse#hls_manifests #hls_manifests} => Array&lt;Types::GetHlsManifestConfiguration&gt;
    #   * {Types::CreateOriginEndpointResponse#low_latency_hls_manifests #low_latency_hls_manifests} => Array&lt;Types::GetLowLatencyHlsManifestConfiguration&gt;
    #   * {Types::CreateOriginEndpointResponse#dash_manifests #dash_manifests} => Array&lt;Types::GetDashManifestConfiguration&gt;
    #   * {Types::CreateOriginEndpointResponse#mss_manifests #mss_manifests} => Array&lt;Types::GetMssManifestConfiguration&gt;
    #   * {Types::CreateOriginEndpointResponse#force_endpoint_error_configuration #force_endpoint_error_configuration} => Types::ForceEndpointErrorConfiguration
    #   * {Types::CreateOriginEndpointResponse#etag #etag} => String
    #   * {Types::CreateOriginEndpointResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Creating an OriginEndpoint with container type TS, and encryption enabled
    #
    #   resp = client.create_origin_endpoint({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "TS", 
    #     description: "Description for exampleOriginEndpointTS", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     hls_manifests: [
    #       {
    #         child_manifest_name: "exampleChildManifest1", 
    #         manifest_name: "exampleManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #       {
    #         child_manifest_name: "exampleManifest2", 
    #         manifest_name: "exampleManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #     ], 
    #     low_latency_hls_manifests: [
    #       {
    #         child_manifest_name: "exampleLLChildManifest1", 
    #         manifest_name: "exampleLLManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #       {
    #         child_manifest_name: "exampleLLManifest2", 
    #         manifest_name: "exampleLLManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #     ], 
    #     origin_endpoint_name: "exampleOriginEndpointTS", 
    #     segment: {
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B7E", 
    #         encryption_method: {
    #           ts_encryption_method: "AES_128", 
    #         }, 
    #         key_rotation_interval_seconds: 300, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "CLEAR_KEY_AES_128", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "SHARED", 
    #             preset_speke_20_video: "SHARED", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://foo.com", 
    #         }, 
    #       }, 
    #       include_iframe_only_streams: true, 
    #       scte: {
    #         scte_filter: [
    #           "SPLICE_INSERT", 
    #           "BREAK", 
    #         ], 
    #       }, 
    #       segment_duration_seconds: 6, 
    #       segment_name: "segmentName", 
    #       ts_include_dvb_subtitles: true, 
    #       ts_use_audio_rendition_group: true, 
    #     }, 
    #     startover_window_seconds: 300, 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointTS", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "TS", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Description for exampleOriginEndpointTS", 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     hls_manifests: [
    #       {
    #         child_manifest_name: "exampleChildManifest1", 
    #         manifest_name: "exampleManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest1.m3u8", 
    #       }, 
    #       {
    #         child_manifest_name: "exampleManifest2", 
    #         manifest_name: "exampleManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest2.m3u8", 
    #       }, 
    #     ], 
    #     low_latency_hls_manifests: [
    #       {
    #         child_manifest_name: "exampleLLChildManifest1", 
    #         manifest_name: "exampleLLManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest1.m3u8", 
    #       }, 
    #       {
    #         child_manifest_name: "exampleLLManifest2", 
    #         manifest_name: "exampleLLManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest2.m3u8", 
    #       }, 
    #     ], 
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     origin_endpoint_name: "exampleOriginEndpointTS", 
    #     segment: {
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B7E", 
    #         encryption_method: {
    #           ts_encryption_method: "AES_128", 
    #         }, 
    #         key_rotation_interval_seconds: 300, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "CLEAR_KEY_AES_128", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "SHARED", 
    #             preset_speke_20_video: "SHARED", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://foo.com", 
    #         }, 
    #       }, 
    #       include_iframe_only_streams: true, 
    #       scte: {
    #         scte_filter: [
    #           "SPLICE_INSERT", 
    #           "BREAK", 
    #         ], 
    #       }, 
    #       segment_duration_seconds: 6, 
    #       segment_name: "segmentName", 
    #       ts_include_dvb_subtitles: true, 
    #       ts_use_audio_rendition_group: true, 
    #     }, 
    #     startover_window_seconds: 300, 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Example: Creating an OriginEndpoint with container type CMAF, and encryption enabled
    #
    #   resp = client.create_origin_endpoint({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "CMAF", 
    #     dash_manifests: [
    #       {
    #         base_urls: [
    #           {
    #             dvb_priority: 1, 
    #             dvb_weight: 3, 
    #             service_location: "A", 
    #             url: "http://example.com/", 
    #           }, 
    #         ], 
    #         compactness: "STANDARD", 
    #         drm_signaling: "INDIVIDUAL", 
    #         dvb_settings: {
    #           error_metrics: [
    #             {
    #               probability: 500, 
    #               reporting_url: "https://example.com/dvb-errors/errors", 
    #             }, 
    #           ], 
    #           font_download: {
    #             font_family: "SubtitleDisplay", 
    #             mime_type: "application/font", 
    #             url: "https://example.com/fonts/SubtitleDisplay.woff", 
    #           }, 
    #         }, 
    #         manifest_name: "exampleDashManifest1", 
    #         manifest_window_seconds: 300, 
    #         min_buffer_time_seconds: 30, 
    #         min_update_period_seconds: 5, 
    #         period_triggers: [
    #           "AVAILS", 
    #         ], 
    #         profiles: [
    #           "DVB_DASH", 
    #         ], 
    #         program_information: {
    #           copyright: "(c) Example. All rights reserved", 
    #           language_code: "en", 
    #           more_information_url: "https://example.com/more-information", 
    #           source: "exampleSource", 
    #           title: "exampleTitle", 
    #         }, 
    #         scte_dash: {
    #           ad_marker_dash: "XML", 
    #         }, 
    #         segment_template_format: "NUMBER_WITH_TIMELINE", 
    #         suggested_presentation_delay_seconds: 2, 
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD", 
    #           timing_source: "example", 
    #         }, 
    #       }, 
    #       {
    #         base_urls: [
    #           {
    #             dvb_priority: 2, 
    #             dvb_weight: 2, 
    #             service_location: "B", 
    #             url: "http://example2.com/", 
    #           }, 
    #         ], 
    #         compactness: "STANDARD", 
    #         drm_signaling: "INDIVIDUAL", 
    #         dvb_settings: {
    #           error_metrics: [
    #             {
    #               probability: 600, 
    #               reporting_url: "https://example2.com/dvb-errors/errors", 
    #             }, 
    #           ], 
    #           font_download: {
    #             font_family: "SubtitleDisplay", 
    #             mime_type: "application/font", 
    #             url: "https://example.com/fonts/SubtitleDisplay.woff", 
    #           }, 
    #         }, 
    #         manifest_name: "exampleDashManifest2", 
    #         manifest_window_seconds: 60, 
    #         min_buffer_time_seconds: 9, 
    #         min_update_period_seconds: 3, 
    #         period_triggers: [
    #           "AVAILS", 
    #           "DRM_KEY_ROTATION", 
    #           "SOURCE_CHANGES", 
    #           "SOURCE_DISRUPTIONS", 
    #         ], 
    #         profiles: [
    #           "DVB_DASH", 
    #         ], 
    #         program_information: {
    #           copyright: "(c) Example. All rights reserved", 
    #           language_code: "en", 
    #           more_information_url: "https://example2.com/more-information", 
    #           source: "exampleSource2", 
    #           title: "exampleTitle2", 
    #         }, 
    #         scte_dash: {
    #           ad_marker_dash: "XML", 
    #         }, 
    #         segment_template_format: "NUMBER_WITH_TIMELINE", 
    #         suggested_presentation_delay_seconds: 12, 
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD", 
    #           timing_source: "example", 
    #         }, 
    #       }, 
    #     ], 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     hls_manifests: [
    #       {
    #         child_manifest_name: "exampleChildManifest1", 
    #         manifest_name: "exampleManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #       {
    #         child_manifest_name: "exampleManifest2", 
    #         manifest_name: "exampleManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #     ], 
    #     low_latency_hls_manifests: [
    #       {
    #         child_manifest_name: "exampleLLChildManifest1", 
    #         manifest_name: "exampleLLManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #       {
    #         child_manifest_name: "exampleLLManifest2", 
    #         manifest_name: "exampleLLManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #     ], 
    #     origin_endpoint_name: "exampleOriginEndpointCMAF", 
    #     segment: {
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B9F", 
    #         encryption_method: {
    #           cmaf_encryption_method: "CBCS", 
    #         }, 
    #         key_rotation_interval_seconds: 300, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "PLAYREADY", 
    #             "WIDEVINE", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "PRESET_AUDIO_1", 
    #             preset_speke_20_video: "PRESET_VIDEO_1", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://foo.com", 
    #         }, 
    #       }, 
    #       include_iframe_only_streams: true, 
    #       scte: {
    #         scte_filter: [
    #           "SPLICE_INSERT", 
    #           "BREAK", 
    #         ], 
    #       }, 
    #       segment_duration_seconds: 6, 
    #       segment_name: "segmentName", 
    #     }, 
    #     startover_window_seconds: 300, 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointCMAF", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "CMAF", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     dash_manifests: [
    #       {
    #         base_urls: [
    #           {
    #             dvb_priority: 1, 
    #             dvb_weight: 3, 
    #             service_location: "A", 
    #             url: "http://example.com/", 
    #           }, 
    #         ], 
    #         compactness: "STANDARD", 
    #         drm_signaling: "INDIVIDUAL", 
    #         dvb_settings: {
    #           error_metrics: [
    #             {
    #               probability: 500, 
    #               reporting_url: "https://example.com/dvb-errors/errors", 
    #             }, 
    #           ], 
    #           font_download: {
    #             font_family: "SubtitleDisplay", 
    #             mime_type: "application/font", 
    #             url: "https://example.com/fonts/SubtitleDisplay.woff", 
    #           }, 
    #         }, 
    #         manifest_name: "exampleDashManifest1", 
    #         manifest_window_seconds: 300, 
    #         min_buffer_time_seconds: 30, 
    #         min_update_period_seconds: 5, 
    #         period_triggers: [
    #           "AVAILS", 
    #         ], 
    #         profiles: [
    #           "DVB_DASH", 
    #         ], 
    #         program_information: {
    #           copyright: "(c) Example. All rights reserved", 
    #           language_code: "en", 
    #           more_information_url: "https://example.com/more-information", 
    #           source: "exampleSource", 
    #           title: "exampleTitle", 
    #         }, 
    #         scte_dash: {
    #           ad_marker_dash: "XML", 
    #         }, 
    #         segment_template_format: "NUMBER_WITH_TIMELINE", 
    #         suggested_presentation_delay_seconds: 2, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleDashManifest1.mpd", 
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD", 
    #           timing_source: "example", 
    #         }, 
    #       }, 
    #       {
    #         base_urls: [
    #           {
    #             dvb_priority: 2, 
    #             dvb_weight: 2, 
    #             service_location: "B", 
    #             url: "http://example2.com/", 
    #           }, 
    #         ], 
    #         compactness: "STANDARD", 
    #         drm_signaling: "INDIVIDUAL", 
    #         dvb_settings: {
    #           error_metrics: [
    #             {
    #               probability: 600, 
    #               reporting_url: "https://example2.com/dvb-errors/errors", 
    #             }, 
    #           ], 
    #           font_download: {
    #             font_family: "SubtitleDisplay", 
    #             mime_type: "application/font", 
    #             url: "https://example.com/fonts/SubtitleDisplay.woff", 
    #           }, 
    #         }, 
    #         manifest_name: "exampleDashManifest2", 
    #         manifest_window_seconds: 60, 
    #         min_buffer_time_seconds: 9, 
    #         min_update_period_seconds: 3, 
    #         period_triggers: [
    #           "AVAILS", 
    #           "DRM_KEY_ROTATION", 
    #           "SOURCE_CHANGES", 
    #           "SOURCE_DISRUPTIONS", 
    #         ], 
    #         profiles: [
    #           "DVB_DASH", 
    #         ], 
    #         program_information: {
    #           copyright: "(c) Example. All rights reserved", 
    #           language_code: "en", 
    #           more_information_url: "https://example2.com/more-information", 
    #           source: "exampleSource2", 
    #           title: "exampleTitle2", 
    #         }, 
    #         scte_dash: {
    #           ad_marker_dash: "XML", 
    #         }, 
    #         segment_template_format: "NUMBER_WITH_TIMELINE", 
    #         suggested_presentation_delay_seconds: 12, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleDashManifest2.mpd", 
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD", 
    #           timing_source: "example", 
    #         }, 
    #       }, 
    #     ], 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     hls_manifests: [
    #       {
    #         child_manifest_name: "exampleChildManifest1", 
    #         manifest_name: "exampleManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleManifest1.m3u8", 
    #       }, 
    #       {
    #         child_manifest_name: "exampleManifest2", 
    #         manifest_name: "exampleManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleManifest2.m3u8", 
    #       }, 
    #     ], 
    #     low_latency_hls_manifests: [
    #       {
    #         child_manifest_name: "exampleLLChildManifest1", 
    #         manifest_name: "exampleLLManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleLLManifest1.m3u8", 
    #       }, 
    #       {
    #         child_manifest_name: "exampleLLManifest2", 
    #         manifest_name: "exampleLLManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleLLManifest2.m3u8", 
    #       }, 
    #     ], 
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     origin_endpoint_name: "exampleOriginEndpointCMAF", 
    #     segment: {
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B9F", 
    #         encryption_method: {
    #           cmaf_encryption_method: "CBCS", 
    #         }, 
    #         key_rotation_interval_seconds: 300, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "PLAYREADY", 
    #             "WIDEVINE", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "PRESET_AUDIO_1", 
    #             preset_speke_20_video: "PRESET_VIDEO_1", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://foo.com", 
    #         }, 
    #       }, 
    #       include_iframe_only_streams: true, 
    #       scte: {
    #         scte_filter: [
    #           "SPLICE_INSERT", 
    #           "BREAK", 
    #         ], 
    #       }, 
    #       segment_duration_seconds: 6, 
    #       segment_name: "segmentName", 
    #     }, 
    #     startover_window_seconds: 300, 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Example: Creating an OriginEndpoint with container type ISM, and encryption enabled
    #
    #   resp = client.create_origin_endpoint({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "ISM", 
    #     description: "Description for exampleOriginEndpointISM", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     mss_manifests: [
    #       {
    #         manifest_layout: "FULL", 
    #         manifest_name: "exampleMssManifest1", 
    #         manifest_window_seconds: 60, 
    #       }, 
    #     ], 
    #     origin_endpoint_name: "exampleOriginEndpointISM", 
    #     segment: {
    #       encryption: {
    #         encryption_method: {
    #           ism_encryption_method: "CENC", 
    #         }, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "PLAYREADY", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "SHARED", 
    #             preset_speke_20_video: "SHARED", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://speke-key-provider.example.com", 
    #         }, 
    #       }, 
    #       segment_duration_seconds: 2, 
    #       segment_name: "segmentName", 
    #     }, 
    #     startover_window_seconds: 300, 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointISM", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "ISM", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Description for exampleOriginEndpointISM", 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     mss_manifests: [
    #       {
    #         manifest_layout: "FULL", 
    #         manifest_name: "exampleMssManifest1", 
    #         manifest_window_seconds: 60, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest1.ism/Manifest", 
    #       }, 
    #     ], 
    #     origin_endpoint_name: "exampleOriginEndpointISM", 
    #     segment: {
    #       encryption: {
    #         encryption_method: {
    #           ism_encryption_method: "CENC", 
    #         }, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "PLAYREADY", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "SHARED", 
    #             preset_speke_20_video: "SHARED", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://speke-key-provider.example.com", 
    #         }, 
    #       }, 
    #       segment_duration_seconds: 2, 
    #       segment_name: "segmentName", 
    #     }, 
    #     startover_window_seconds: 300, 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_origin_endpoint({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     container_type: "TS", # required, accepts TS, CMAF, ISM
    #     segment: {
    #       segment_duration_seconds: 1,
    #       segment_name: "SegmentSegmentNameString",
    #       ts_use_audio_rendition_group: false,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: ["SPLICE_INSERT"], # accepts SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY, PROGRAM
    #       },
    #       encryption: {
    #         constant_initialization_vector: "EncryptionConstantInitializationVectorString",
    #         encryption_method: { # required
    #           ts_encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #           cmaf_encryption_method: "CENC", # accepts CENC, CBCS
    #           ism_encryption_method: "CENC", # accepts CENC
    #         },
    #         key_rotation_interval_seconds: 1,
    #         cmaf_exclude_segment_drm_metadata: false,
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: { # required
    #             preset_speke_20_audio: "PRESET_AUDIO_1", # required, accepts PRESET_AUDIO_1, PRESET_AUDIO_2, PRESET_AUDIO_3, SHARED, UNENCRYPTED
    #             preset_speke_20_video: "PRESET_VIDEO_1", # required, accepts PRESET_VIDEO_1, PRESET_VIDEO_2, PRESET_VIDEO_3, PRESET_VIDEO_4, PRESET_VIDEO_5, PRESET_VIDEO_6, PRESET_VIDEO_7, PRESET_VIDEO_8, SHARED, UNENCRYPTED
    #           },
    #           resource_id: "SpekeKeyProviderResourceIdString", # required
    #           drm_systems: ["CLEAR_KEY_AES_128"], # required, accepts CLEAR_KEY_AES_128, FAIRPLAY, PLAYREADY, WIDEVINE, IRDETO
    #           role_arn: "SpekeKeyProviderRoleArnString", # required
    #           url: "SpekeKeyProviderUrlString", # required
    #         },
    #       },
    #     },
    #     client_token: "IdempotencyToken",
    #     description: "ResourceDescription",
    #     startover_window_seconds: 1,
    #     hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", # accepts DATERANGE
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false,
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "FilterConfigurationManifestFilterString",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #         },
    #         url_encode_child_manifest: false,
    #       },
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", # accepts DATERANGE
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false,
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "FilterConfigurationManifestFilterString",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #         },
    #         url_encode_child_manifest: false,
    #       },
    #     ],
    #     dash_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "FilterConfigurationManifestFilterString",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #         },
    #         min_update_period_seconds: 1,
    #         min_buffer_time_seconds: 1,
    #         suggested_presentation_delay_seconds: 1,
    #         segment_template_format: "NUMBER_WITH_TIMELINE", # accepts NUMBER_WITH_TIMELINE
    #         period_triggers: ["AVAILS"], # accepts AVAILS, DRM_KEY_ROTATION, SOURCE_CHANGES, SOURCE_DISRUPTIONS, NONE
    #         scte_dash: {
    #           ad_marker_dash: "BINARY", # accepts BINARY, XML
    #         },
    #         drm_signaling: "INDIVIDUAL", # accepts INDIVIDUAL, REFERENCED
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD", # accepts HTTP_HEAD, HTTP_ISO, HTTP_XSDATE, UTC_DIRECT
    #           timing_source: "DashUtcTimingTimingSourceString",
    #         },
    #         profiles: ["DVB_DASH"], # accepts DVB_DASH
    #         base_urls: [
    #           {
    #             url: "DashBaseUrlUrlString", # required
    #             service_location: "DashBaseUrlServiceLocationString",
    #             dvb_priority: 1,
    #             dvb_weight: 1,
    #           },
    #         ],
    #         program_information: {
    #           title: "DashProgramInformationTitleString",
    #           source: "DashProgramInformationSourceString",
    #           copyright: "DashProgramInformationCopyrightString",
    #           language_code: "DashProgramInformationLanguageCodeString",
    #           more_information_url: "DashProgramInformationMoreInformationUrlString",
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "DashDvbFontDownloadUrlString",
    #             mime_type: "DashDvbFontDownloadMimeTypeString",
    #             font_family: "DashDvbFontDownloadFontFamilyString",
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "DashDvbMetricsReportingReportingUrlString", # required
    #               probability: 1,
    #             },
    #           ],
    #         },
    #         compactness: "STANDARD", # accepts STANDARD, NONE
    #         subtitle_configuration: {
    #           ttml_configuration: {
    #             ttml_profile: "IMSC_1", # required, accepts IMSC_1, EBU_TT_D_101
    #           },
    #         },
    #       },
    #     ],
    #     mss_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "FilterConfigurationManifestFilterString",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #         },
    #         manifest_layout: "FULL", # accepts FULL, COMPACT
    #       },
    #     ],
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: ["STALE_MANIFEST"], # accepts STALE_MANIFEST, INCOMPLETE_MANIFEST, MISSING_DRM_KEY, SLATE_INPUT
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.container_type #=> String, one of "TS", "CMAF", "ISM"
    #   resp.segment.segment_duration_seconds #=> Integer
    #   resp.segment.segment_name #=> String
    #   resp.segment.ts_use_audio_rendition_group #=> Boolean
    #   resp.segment.include_iframe_only_streams #=> Boolean
    #   resp.segment.ts_include_dvb_subtitles #=> Boolean
    #   resp.segment.scte.scte_filter #=> Array
    #   resp.segment.scte.scte_filter[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM"
    #   resp.segment.encryption.constant_initialization_vector #=> String
    #   resp.segment.encryption.encryption_method.ts_encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.segment.encryption.encryption_method.cmaf_encryption_method #=> String, one of "CENC", "CBCS"
    #   resp.segment.encryption.encryption_method.ism_encryption_method #=> String, one of "CENC"
    #   resp.segment.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.segment.encryption.cmaf_exclude_segment_drm_metadata #=> Boolean
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.resource_id #=> String
    #   resp.segment.encryption.speke_key_provider.drm_systems #=> Array
    #   resp.segment.encryption.speke_key_provider.drm_systems[0] #=> String, one of "CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE", "IRDETO"
    #   resp.segment.encryption.speke_key_provider.role_arn #=> String
    #   resp.segment.encryption.speke_key_provider.url #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.startover_window_seconds #=> Integer
    #   resp.hls_manifests #=> Array
    #   resp.hls_manifests[0].manifest_name #=> String
    #   resp.hls_manifests[0].url #=> String
    #   resp.hls_manifests[0].child_manifest_name #=> String
    #   resp.hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.hls_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.hls_manifests[0].filter_configuration.start #=> Time
    #   resp.hls_manifests[0].filter_configuration.end #=> Time
    #   resp.hls_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.hls_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.hls_manifests[0].start_tag.time_offset #=> Float
    #   resp.hls_manifests[0].start_tag.precise #=> Boolean
    #   resp.hls_manifests[0].url_encode_child_manifest #=> Boolean
    #   resp.low_latency_hls_manifests #=> Array
    #   resp.low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].url #=> String
    #   resp.low_latency_hls_manifests[0].child_manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.low_latency_hls_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.low_latency_hls_manifests[0].filter_configuration.start #=> Time
    #   resp.low_latency_hls_manifests[0].filter_configuration.end #=> Time
    #   resp.low_latency_hls_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.low_latency_hls_manifests[0].start_tag.time_offset #=> Float
    #   resp.low_latency_hls_manifests[0].start_tag.precise #=> Boolean
    #   resp.low_latency_hls_manifests[0].url_encode_child_manifest #=> Boolean
    #   resp.dash_manifests #=> Array
    #   resp.dash_manifests[0].manifest_name #=> String
    #   resp.dash_manifests[0].url #=> String
    #   resp.dash_manifests[0].manifest_window_seconds #=> Integer
    #   resp.dash_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.dash_manifests[0].filter_configuration.start #=> Time
    #   resp.dash_manifests[0].filter_configuration.end #=> Time
    #   resp.dash_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.dash_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.dash_manifests[0].min_update_period_seconds #=> Integer
    #   resp.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.dash_manifests[0].suggested_presentation_delay_seconds #=> Integer
    #   resp.dash_manifests[0].segment_template_format #=> String, one of "NUMBER_WITH_TIMELINE"
    #   resp.dash_manifests[0].period_triggers #=> Array
    #   resp.dash_manifests[0].period_triggers[0] #=> String, one of "AVAILS", "DRM_KEY_ROTATION", "SOURCE_CHANGES", "SOURCE_DISRUPTIONS", "NONE"
    #   resp.dash_manifests[0].scte_dash.ad_marker_dash #=> String, one of "BINARY", "XML"
    #   resp.dash_manifests[0].drm_signaling #=> String, one of "INDIVIDUAL", "REFERENCED"
    #   resp.dash_manifests[0].utc_timing.timing_mode #=> String, one of "HTTP_HEAD", "HTTP_ISO", "HTTP_XSDATE", "UTC_DIRECT"
    #   resp.dash_manifests[0].utc_timing.timing_source #=> String
    #   resp.dash_manifests[0].profiles #=> Array
    #   resp.dash_manifests[0].profiles[0] #=> String, one of "DVB_DASH"
    #   resp.dash_manifests[0].base_urls #=> Array
    #   resp.dash_manifests[0].base_urls[0].url #=> String
    #   resp.dash_manifests[0].base_urls[0].service_location #=> String
    #   resp.dash_manifests[0].base_urls[0].dvb_priority #=> Integer
    #   resp.dash_manifests[0].base_urls[0].dvb_weight #=> Integer
    #   resp.dash_manifests[0].program_information.title #=> String
    #   resp.dash_manifests[0].program_information.source #=> String
    #   resp.dash_manifests[0].program_information.copyright #=> String
    #   resp.dash_manifests[0].program_information.language_code #=> String
    #   resp.dash_manifests[0].program_information.more_information_url #=> String
    #   resp.dash_manifests[0].dvb_settings.font_download.url #=> String
    #   resp.dash_manifests[0].dvb_settings.font_download.mime_type #=> String
    #   resp.dash_manifests[0].dvb_settings.font_download.font_family #=> String
    #   resp.dash_manifests[0].dvb_settings.error_metrics #=> Array
    #   resp.dash_manifests[0].dvb_settings.error_metrics[0].reporting_url #=> String
    #   resp.dash_manifests[0].dvb_settings.error_metrics[0].probability #=> Integer
    #   resp.dash_manifests[0].compactness #=> String, one of "STANDARD", "NONE"
    #   resp.dash_manifests[0].subtitle_configuration.ttml_configuration.ttml_profile #=> String, one of "IMSC_1", "EBU_TT_D_101"
    #   resp.mss_manifests #=> Array
    #   resp.mss_manifests[0].manifest_name #=> String
    #   resp.mss_manifests[0].url #=> String
    #   resp.mss_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.mss_manifests[0].filter_configuration.start #=> Time
    #   resp.mss_manifests[0].filter_configuration.end #=> Time
    #   resp.mss_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.mss_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.mss_manifests[0].manifest_window_seconds #=> Integer
    #   resp.mss_manifests[0].manifest_layout #=> String, one of "FULL", "COMPACT"
    #   resp.force_endpoint_error_configuration.endpoint_error_conditions #=> Array
    #   resp.force_endpoint_error_configuration.endpoint_error_conditions[0] #=> String, one of "STALE_MANIFEST", "INCOMPLETE_MANIFEST", "MISSING_DRM_KEY", "SLATE_INPUT"
    #   resp.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/CreateOriginEndpoint AWS API Documentation
    #
    # @overload create_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def create_origin_endpoint(params = {}, options = {})
      req = build_request(:create_origin_endpoint, params)
      req.send_request(options)
    end

    # Delete a channel to stop AWS Elemental MediaPackage from receiving
    # further content. You must delete the channel's origin endpoints
    # before you can delete the channel.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Deleting a Channel
    #
    #   resp = client.delete_channel({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Delete a channel group. You must delete the channel group's channels
    # and origin endpoints before you can delete the channel group. If you
    # delete a channel group, you'll lose access to the egress domain and
    # will have to create a new channel group to replace it.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Deleting a Channel Group
    #
    #   resp = client.delete_channel_group({
    #     channel_group_name: "exampleChannelGroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_group({
    #     channel_group_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelGroup AWS API Documentation
    #
    # @overload delete_channel_group(params = {})
    # @param [Hash] params ({})
    def delete_channel_group(params = {}, options = {})
      req = build_request(:delete_channel_group, params)
      req.send_request(options)
    end

    # Delete a channel policy.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Deleting a Channel Policy
    #
    #   resp = client.delete_channel_policy({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteChannelPolicy AWS API Documentation
    #
    # @overload delete_channel_policy(params = {})
    # @param [Hash] params ({})
    def delete_channel_policy(params = {}, options = {})
      req = build_request(:delete_channel_policy, params)
      req.send_request(options)
    end

    # Origin endpoints can serve content until they're deleted. Delete the
    # endpoint if it should no longer respond to playback requests. You must
    # delete all endpoints from a channel before you can delete the channel.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Deleting an OriginEndpoint
    #
    #   resp = client.delete_origin_endpoint({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     origin_endpoint_name: "exampleOriginEndpointTS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_origin_endpoint({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpoint AWS API Documentation
    #
    # @overload delete_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_origin_endpoint(params = {}, options = {})
      req = build_request(:delete_origin_endpoint, params)
      req.send_request(options)
    end

    # Delete an origin endpoint policy.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Deleting an Origin Endpoint Policy
    #
    #   resp = client.delete_origin_endpoint_policy({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     origin_endpoint_name: "exampleOriginEndpoint", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_origin_endpoint_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/DeleteOriginEndpointPolicy AWS API Documentation
    #
    # @overload delete_origin_endpoint_policy(params = {})
    # @param [Hash] params ({})
    def delete_origin_endpoint_policy(params = {}, options = {})
      req = build_request(:delete_origin_endpoint_policy, params)
      req.send_request(options)
    end

    # Retrieves the specified channel that's configured in AWS Elemental
    # MediaPackage.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @return [Types::GetChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelResponse#arn #arn} => String
    #   * {Types::GetChannelResponse#channel_name #channel_name} => String
    #   * {Types::GetChannelResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetChannelResponse#created_at #created_at} => Time
    #   * {Types::GetChannelResponse#modified_at #modified_at} => Time
    #   * {Types::GetChannelResponse#reset_at #reset_at} => Time
    #   * {Types::GetChannelResponse#description #description} => String
    #   * {Types::GetChannelResponse#ingest_endpoints #ingest_endpoints} => Array&lt;Types::IngestEndpoint&gt;
    #   * {Types::GetChannelResponse#input_type #input_type} => String
    #   * {Types::GetChannelResponse#etag #etag} => String
    #   * {Types::GetChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetChannelResponse#input_switch_configuration #input_switch_configuration} => Types::InputSwitchConfiguration
    #   * {Types::GetChannelResponse#output_header_configuration #output_header_configuration} => Types::OutputHeaderConfiguration
    #
    #
    # @example Example: Getting a Channel
    #
    #   resp = client.get_channel({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Description for exampleChannel", 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     ingest_endpoints: [
    #       {
    #         id: "1", 
    #         url: "https://abcde-1.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index", 
    #       }, 
    #       {
    #         id: "2", 
    #         url: "https://abcde-2.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index", 
    #       }, 
    #     ], 
    #     input_type: "HLS", 
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.channel_group_name #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.reset_at #=> Time
    #   resp.description #=> String
    #   resp.ingest_endpoints #=> Array
    #   resp.ingest_endpoints[0].id #=> String
    #   resp.ingest_endpoints[0].url #=> String
    #   resp.input_type #=> String, one of "HLS", "CMAF"
    #   resp.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.input_switch_configuration.mqcs_input_switching #=> Boolean
    #   resp.input_switch_configuration.preferred_input #=> Integer
    #   resp.output_header_configuration.publish_mqcs #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannel AWS API Documentation
    #
    # @overload get_channel(params = {})
    # @param [Hash] params ({})
    def get_channel(params = {}, options = {})
      req = build_request(:get_channel, params)
      req.send_request(options)
    end

    # Retrieves the specified channel group that's configured in AWS
    # Elemental MediaPackage.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @return [Types::GetChannelGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelGroupResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetChannelGroupResponse#arn #arn} => String
    #   * {Types::GetChannelGroupResponse#egress_domain #egress_domain} => String
    #   * {Types::GetChannelGroupResponse#created_at #created_at} => Time
    #   * {Types::GetChannelGroupResponse#modified_at #modified_at} => Time
    #   * {Types::GetChannelGroupResponse#description #description} => String
    #   * {Types::GetChannelGroupResponse#etag #etag} => String
    #   * {Types::GetChannelGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Getting a Channel Group
    #
    #   resp = client.get_channel_group({
    #     channel_group_name: "exampleChannelGroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup", 
    #     channel_group_name: "exampleChannelGroup", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Description for exampleChannelGroup", 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     egress_domain: "abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com", 
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_group({
    #     channel_group_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.arn #=> String
    #   resp.egress_domain #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelGroup AWS API Documentation
    #
    # @overload get_channel_group(params = {})
    # @param [Hash] params ({})
    def get_channel_group(params = {}, options = {})
      req = build_request(:get_channel_group, params)
      req.send_request(options)
    end

    # Retrieves the specified channel policy that's configured in AWS
    # Elemental MediaPackage. With policies, you can specify who has access
    # to AWS resources and what actions they can perform on those resources.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @return [Types::GetChannelPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelPolicyResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetChannelPolicyResponse#channel_name #channel_name} => String
    #   * {Types::GetChannelPolicyResponse#policy #policy} => String
    #
    #
    # @example Example: Getting a Channel Policy
    #
    #   resp = client.get_channel_policy({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     policy: "{...}", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetChannelPolicy AWS API Documentation
    #
    # @overload get_channel_policy(params = {})
    # @param [Hash] params ({})
    def get_channel_policy(params = {}, options = {})
      req = build_request(:get_channel_policy, params)
      req.send_request(options)
    end

    # Retrieves the details of a specific harvest job.
    #
    # @option params [required, String] :channel_group_name
    #   The name of the channel group containing the channel associated with
    #   the harvest job.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel associated with the harvest job.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name of the origin endpoint associated with the harvest job.
    #
    # @option params [required, String] :harvest_job_name
    #   The name of the harvest job to retrieve.
    #
    # @return [Types::GetHarvestJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetHarvestJobResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetHarvestJobResponse#channel_name #channel_name} => String
    #   * {Types::GetHarvestJobResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::GetHarvestJobResponse#destination #destination} => Types::Destination
    #   * {Types::GetHarvestJobResponse#harvest_job_name #harvest_job_name} => String
    #   * {Types::GetHarvestJobResponse#harvested_manifests #harvested_manifests} => Types::HarvestedManifests
    #   * {Types::GetHarvestJobResponse#description #description} => String
    #   * {Types::GetHarvestJobResponse#schedule_configuration #schedule_configuration} => Types::HarvesterScheduleConfiguration
    #   * {Types::GetHarvestJobResponse#arn #arn} => String
    #   * {Types::GetHarvestJobResponse#created_at #created_at} => Time
    #   * {Types::GetHarvestJobResponse#modified_at #modified_at} => Time
    #   * {Types::GetHarvestJobResponse#status #status} => String
    #   * {Types::GetHarvestJobResponse#error_message #error_message} => String
    #   * {Types::GetHarvestJobResponse#etag #etag} => String
    #   * {Types::GetHarvestJobResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Getting a Harvest Job
    #
    #   resp = client.get_harvest_job({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannelName", 
    #     harvest_job_name: "HarvestJobName", 
    #     origin_endpoint_name: "exampleOriginEndpointName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannelName", 
    #     created_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #     description: "Example HarvestJob description", 
    #     destination: {
    #       s3_destination: {
    #         bucket_name: "harvestJobS3DestinationBucket", 
    #         destination_path: "manifests", 
    #       }, 
    #     }, 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     harvest_job_name: "HarvestJobName", 
    #     harvested_manifests: {
    #       dash_manifests: [
    #         {
    #           manifest_name: "DashManifest", 
    #         }, 
    #       ], 
    #       hls_manifests: [
    #         {
    #           manifest_name: "HlsManifest", 
    #         }, 
    #       ], 
    #       low_latency_hls_manifests: [
    #         {
    #           manifest_name: "LowLatencyHlsManifest", 
    #         }, 
    #       ], 
    #     }, 
    #     modified_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #     origin_endpoint_name: "exampleOriginEndpointName", 
    #     schedule_configuration: {
    #       end_time: Time.parse("2024-05-28T12:00:00.00Z"), 
    #       start_time: Time.parse("2024-05-28T06:00:00.00Z"), 
    #     }, 
    #     status: "QUEUED", 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_harvest_job({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     harvest_job_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.destination.s3_destination.bucket_name #=> String
    #   resp.destination.s3_destination.destination_path #=> String
    #   resp.harvest_job_name #=> String
    #   resp.harvested_manifests.hls_manifests #=> Array
    #   resp.harvested_manifests.hls_manifests[0].manifest_name #=> String
    #   resp.harvested_manifests.dash_manifests #=> Array
    #   resp.harvested_manifests.dash_manifests[0].manifest_name #=> String
    #   resp.harvested_manifests.low_latency_hls_manifests #=> Array
    #   resp.harvested_manifests.low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.description #=> String
    #   resp.schedule_configuration.start_time #=> Time
    #   resp.schedule_configuration.end_time #=> Time
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.status #=> String, one of "QUEUED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"
    #   resp.error_message #=> String
    #   resp.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * harvest_job_finished
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetHarvestJob AWS API Documentation
    #
    # @overload get_harvest_job(params = {})
    # @param [Hash] params ({})
    def get_harvest_job(params = {}, options = {})
      req = build_request(:get_harvest_job, params)
      req.send_request(options)
    end

    # Retrieves the specified origin endpoint that's configured in AWS
    # Elemental MediaPackage to obtain its playback URL and to view the
    # packaging settings that it's currently using.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @return [Types::GetOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOriginEndpointResponse#arn #arn} => String
    #   * {Types::GetOriginEndpointResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetOriginEndpointResponse#channel_name #channel_name} => String
    #   * {Types::GetOriginEndpointResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::GetOriginEndpointResponse#container_type #container_type} => String
    #   * {Types::GetOriginEndpointResponse#segment #segment} => Types::Segment
    #   * {Types::GetOriginEndpointResponse#created_at #created_at} => Time
    #   * {Types::GetOriginEndpointResponse#modified_at #modified_at} => Time
    #   * {Types::GetOriginEndpointResponse#reset_at #reset_at} => Time
    #   * {Types::GetOriginEndpointResponse#description #description} => String
    #   * {Types::GetOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::GetOriginEndpointResponse#hls_manifests #hls_manifests} => Array&lt;Types::GetHlsManifestConfiguration&gt;
    #   * {Types::GetOriginEndpointResponse#low_latency_hls_manifests #low_latency_hls_manifests} => Array&lt;Types::GetLowLatencyHlsManifestConfiguration&gt;
    #   * {Types::GetOriginEndpointResponse#dash_manifests #dash_manifests} => Array&lt;Types::GetDashManifestConfiguration&gt;
    #   * {Types::GetOriginEndpointResponse#mss_manifests #mss_manifests} => Array&lt;Types::GetMssManifestConfiguration&gt;
    #   * {Types::GetOriginEndpointResponse#force_endpoint_error_configuration #force_endpoint_error_configuration} => Types::ForceEndpointErrorConfiguration
    #   * {Types::GetOriginEndpointResponse#etag #etag} => String
    #   * {Types::GetOriginEndpointResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Getting an OriginEndpoint
    #
    #   resp = client.get_origin_endpoint({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     origin_endpoint_name: "exampleOriginEndpointTS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointTS", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "TS", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Description for exampleOriginEndpointTS", 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     hls_manifests: [
    #       {
    #         child_manifest_name: "exampleChildManifest1", 
    #         manifest_name: "exampleManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest1.m3u8", 
    #       }, 
    #       {
    #         child_manifest_name: "exampleManifest2", 
    #         manifest_name: "exampleManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest2.m3u8", 
    #       }, 
    #     ], 
    #     low_latency_hls_manifests: [
    #       {
    #         child_manifest_name: "exampleLLChildManifest1", 
    #         manifest_name: "exampleLLManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest1.m3u8", 
    #       }, 
    #       {
    #         child_manifest_name: "exampleLLManifest2", 
    #         manifest_name: "exampleLLManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest2.m3u8", 
    #       }, 
    #     ], 
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     origin_endpoint_name: "exampleOriginEndpointTS", 
    #     segment: {
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B7E", 
    #         encryption_method: {
    #           ts_encryption_method: "AES_128", 
    #         }, 
    #         key_rotation_interval_seconds: 300, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "CLEAR_KEY_AES_128", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "SHARED", 
    #             preset_speke_20_video: "SHARED", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://foo.com", 
    #         }, 
    #       }, 
    #       include_iframe_only_streams: true, 
    #       scte: {
    #         scte_filter: [
    #           "SPLICE_INSERT", 
    #           "BREAK", 
    #         ], 
    #       }, 
    #       segment_duration_seconds: 6, 
    #       segment_name: "segmentName", 
    #       ts_include_dvb_subtitles: true, 
    #       ts_use_audio_rendition_group: true, 
    #     }, 
    #     startover_window_seconds: 300, 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Example: Getting an OriginEndpoint with ISM container
    #
    #   resp = client.get_origin_endpoint({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     origin_endpoint_name: "exampleOriginEndpointISM", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointISM", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "ISM", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Description for exampleOriginEndpointISM", 
    #     etag: "HmgU+ewBzHJS5xvz9nLXm2SEQxTsjRfk0rVvuMayoyl=", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     mss_manifests: [
    #       {
    #         manifest_layout: "FULL", 
    #         manifest_name: "exampleMssManifest1", 
    #         manifest_window_seconds: 60, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest1.ism/Manifest", 
    #       }, 
    #       {
    #         manifest_layout: "COMPACT", 
    #         manifest_name: "exampleMssManifest2", 
    #         manifest_window_seconds: 30, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest2.ism/Manifest", 
    #       }, 
    #     ], 
    #     origin_endpoint_name: "exampleOriginEndpointISM", 
    #     segment: {
    #       encryption: {
    #         encryption_method: {
    #           ism_encryption_method: "CENC", 
    #         }, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "PLAYREADY", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "SHARED", 
    #             preset_speke_20_video: "SHARED", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://speke-key-provider.example.com", 
    #         }, 
    #       }, 
    #       segment_duration_seconds: 2, 
    #       segment_name: "segmentName", 
    #     }, 
    #     startover_window_seconds: 300, 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_origin_endpoint({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.container_type #=> String, one of "TS", "CMAF", "ISM"
    #   resp.segment.segment_duration_seconds #=> Integer
    #   resp.segment.segment_name #=> String
    #   resp.segment.ts_use_audio_rendition_group #=> Boolean
    #   resp.segment.include_iframe_only_streams #=> Boolean
    #   resp.segment.ts_include_dvb_subtitles #=> Boolean
    #   resp.segment.scte.scte_filter #=> Array
    #   resp.segment.scte.scte_filter[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM"
    #   resp.segment.encryption.constant_initialization_vector #=> String
    #   resp.segment.encryption.encryption_method.ts_encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.segment.encryption.encryption_method.cmaf_encryption_method #=> String, one of "CENC", "CBCS"
    #   resp.segment.encryption.encryption_method.ism_encryption_method #=> String, one of "CENC"
    #   resp.segment.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.segment.encryption.cmaf_exclude_segment_drm_metadata #=> Boolean
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.resource_id #=> String
    #   resp.segment.encryption.speke_key_provider.drm_systems #=> Array
    #   resp.segment.encryption.speke_key_provider.drm_systems[0] #=> String, one of "CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE", "IRDETO"
    #   resp.segment.encryption.speke_key_provider.role_arn #=> String
    #   resp.segment.encryption.speke_key_provider.url #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.reset_at #=> Time
    #   resp.description #=> String
    #   resp.startover_window_seconds #=> Integer
    #   resp.hls_manifests #=> Array
    #   resp.hls_manifests[0].manifest_name #=> String
    #   resp.hls_manifests[0].url #=> String
    #   resp.hls_manifests[0].child_manifest_name #=> String
    #   resp.hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.hls_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.hls_manifests[0].filter_configuration.start #=> Time
    #   resp.hls_manifests[0].filter_configuration.end #=> Time
    #   resp.hls_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.hls_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.hls_manifests[0].start_tag.time_offset #=> Float
    #   resp.hls_manifests[0].start_tag.precise #=> Boolean
    #   resp.hls_manifests[0].url_encode_child_manifest #=> Boolean
    #   resp.low_latency_hls_manifests #=> Array
    #   resp.low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].url #=> String
    #   resp.low_latency_hls_manifests[0].child_manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.low_latency_hls_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.low_latency_hls_manifests[0].filter_configuration.start #=> Time
    #   resp.low_latency_hls_manifests[0].filter_configuration.end #=> Time
    #   resp.low_latency_hls_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.low_latency_hls_manifests[0].start_tag.time_offset #=> Float
    #   resp.low_latency_hls_manifests[0].start_tag.precise #=> Boolean
    #   resp.low_latency_hls_manifests[0].url_encode_child_manifest #=> Boolean
    #   resp.dash_manifests #=> Array
    #   resp.dash_manifests[0].manifest_name #=> String
    #   resp.dash_manifests[0].url #=> String
    #   resp.dash_manifests[0].manifest_window_seconds #=> Integer
    #   resp.dash_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.dash_manifests[0].filter_configuration.start #=> Time
    #   resp.dash_manifests[0].filter_configuration.end #=> Time
    #   resp.dash_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.dash_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.dash_manifests[0].min_update_period_seconds #=> Integer
    #   resp.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.dash_manifests[0].suggested_presentation_delay_seconds #=> Integer
    #   resp.dash_manifests[0].segment_template_format #=> String, one of "NUMBER_WITH_TIMELINE"
    #   resp.dash_manifests[0].period_triggers #=> Array
    #   resp.dash_manifests[0].period_triggers[0] #=> String, one of "AVAILS", "DRM_KEY_ROTATION", "SOURCE_CHANGES", "SOURCE_DISRUPTIONS", "NONE"
    #   resp.dash_manifests[0].scte_dash.ad_marker_dash #=> String, one of "BINARY", "XML"
    #   resp.dash_manifests[0].drm_signaling #=> String, one of "INDIVIDUAL", "REFERENCED"
    #   resp.dash_manifests[0].utc_timing.timing_mode #=> String, one of "HTTP_HEAD", "HTTP_ISO", "HTTP_XSDATE", "UTC_DIRECT"
    #   resp.dash_manifests[0].utc_timing.timing_source #=> String
    #   resp.dash_manifests[0].profiles #=> Array
    #   resp.dash_manifests[0].profiles[0] #=> String, one of "DVB_DASH"
    #   resp.dash_manifests[0].base_urls #=> Array
    #   resp.dash_manifests[0].base_urls[0].url #=> String
    #   resp.dash_manifests[0].base_urls[0].service_location #=> String
    #   resp.dash_manifests[0].base_urls[0].dvb_priority #=> Integer
    #   resp.dash_manifests[0].base_urls[0].dvb_weight #=> Integer
    #   resp.dash_manifests[0].program_information.title #=> String
    #   resp.dash_manifests[0].program_information.source #=> String
    #   resp.dash_manifests[0].program_information.copyright #=> String
    #   resp.dash_manifests[0].program_information.language_code #=> String
    #   resp.dash_manifests[0].program_information.more_information_url #=> String
    #   resp.dash_manifests[0].dvb_settings.font_download.url #=> String
    #   resp.dash_manifests[0].dvb_settings.font_download.mime_type #=> String
    #   resp.dash_manifests[0].dvb_settings.font_download.font_family #=> String
    #   resp.dash_manifests[0].dvb_settings.error_metrics #=> Array
    #   resp.dash_manifests[0].dvb_settings.error_metrics[0].reporting_url #=> String
    #   resp.dash_manifests[0].dvb_settings.error_metrics[0].probability #=> Integer
    #   resp.dash_manifests[0].compactness #=> String, one of "STANDARD", "NONE"
    #   resp.dash_manifests[0].subtitle_configuration.ttml_configuration.ttml_profile #=> String, one of "IMSC_1", "EBU_TT_D_101"
    #   resp.mss_manifests #=> Array
    #   resp.mss_manifests[0].manifest_name #=> String
    #   resp.mss_manifests[0].url #=> String
    #   resp.mss_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.mss_manifests[0].filter_configuration.start #=> Time
    #   resp.mss_manifests[0].filter_configuration.end #=> Time
    #   resp.mss_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.mss_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.mss_manifests[0].manifest_window_seconds #=> Integer
    #   resp.mss_manifests[0].manifest_layout #=> String, one of "FULL", "COMPACT"
    #   resp.force_endpoint_error_configuration.endpoint_error_conditions #=> Array
    #   resp.force_endpoint_error_configuration.endpoint_error_conditions[0] #=> String, one of "STALE_MANIFEST", "INCOMPLETE_MANIFEST", "MISSING_DRM_KEY", "SLATE_INPUT"
    #   resp.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpoint AWS API Documentation
    #
    # @overload get_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def get_origin_endpoint(params = {}, options = {})
      req = build_request(:get_origin_endpoint, params)
      req.send_request(options)
    end

    # Retrieves the specified origin endpoint policy that's configured in
    # AWS Elemental MediaPackage.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @return [Types::GetOriginEndpointPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOriginEndpointPolicyResponse#channel_group_name #channel_group_name} => String
    #   * {Types::GetOriginEndpointPolicyResponse#channel_name #channel_name} => String
    #   * {Types::GetOriginEndpointPolicyResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::GetOriginEndpointPolicyResponse#policy #policy} => String
    #   * {Types::GetOriginEndpointPolicyResponse#cdn_auth_configuration #cdn_auth_configuration} => Types::CdnAuthConfiguration
    #
    #
    # @example Example: Getting an Origin Endpoint Policy
    #
    #   resp = client.get_origin_endpoint_policy({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     origin_endpoint_name: "exampleOriginEndpoint", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     origin_endpoint_name: "exampleOriginEndpoint", 
    #     policy: "{...}", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_origin_endpoint_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.policy #=> String
    #   resp.cdn_auth_configuration.cdn_identifier_secret_arns #=> Array
    #   resp.cdn_auth_configuration.cdn_identifier_secret_arns[0] #=> String
    #   resp.cdn_auth_configuration.secrets_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/GetOriginEndpointPolicy AWS API Documentation
    #
    # @overload get_origin_endpoint_policy(params = {})
    # @param [Hash] params ({})
    def get_origin_endpoint_policy(params = {}, options = {})
      req = build_request(:get_origin_endpoint_policy, params)
      req.send_request(options)
    end

    # Retrieves all channel groups that are configured in Elemental
    # MediaPackage.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The pagination token from the GET list request. Use the token to fetch
    #   the next page of results.
    #
    # @return [Types::ListChannelGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelGroupsResponse#items #items} => Array&lt;Types::ChannelGroupListConfiguration&gt;
    #   * {Types::ListChannelGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Listing all Channel Groups
    #
    #   resp = client.list_channel_groups({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup", 
    #         channel_group_name: "exampleChannelGroup", 
    #         created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #         description: "Description for exampleChannelGroup", 
    #         modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #       }, 
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/anotherExampleChannelGroup", 
    #         channel_group_name: "anotherExampleChannelGroup", 
    #         created_at: Time.parse("2022-10-18T10:36:00.00Z"), 
    #         modified_at: Time.parse("2022-10-18T10:36:00.00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_groups({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].channel_group_name #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].modified_at #=> Time
    #   resp.items[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannelGroups AWS API Documentation
    #
    # @overload list_channel_groups(params = {})
    # @param [Hash] params ({})
    def list_channel_groups(params = {}, options = {})
      req = build_request(:list_channel_groups, params)
      req.send_request(options)
    end

    # Retrieves all channels in a specific channel group that are configured
    # in AWS Elemental MediaPackage.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The pagination token from the GET list request. Use the token to fetch
    #   the next page of results.
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#items #items} => Array&lt;Types::ChannelListConfiguration&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Listing all Channels
    #
    #   resp = client.list_channels({
    #     channel_group_name: "exampleChannelGroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "exampleChannel", 
    #         created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #         description: "Description for exampleChannel", 
    #         modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #       }, 
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/anotherExampleChannel", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "anotherExampleChannel", 
    #         created_at: Time.parse("2022-10-18T10:36:00.00Z"), 
    #         modified_at: Time.parse("2022-10-18T10:36:00.00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     channel_group_name: "ResourceName", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].channel_name #=> String
    #   resp.items[0].channel_group_name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].modified_at #=> Time
    #   resp.items[0].description #=> String
    #   resp.items[0].input_type #=> String, one of "HLS", "CMAF"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Retrieves a list of harvest jobs that match the specified criteria.
    #
    # @option params [required, String] :channel_group_name
    #   The name of the channel group to filter the harvest jobs by. If
    #   specified, only harvest jobs associated with channels in this group
    #   will be returned.
    #
    # @option params [String] :channel_name
    #   The name of the channel to filter the harvest jobs by. If specified,
    #   only harvest jobs associated with this channel will be returned.
    #
    # @option params [String] :origin_endpoint_name
    #   The name of the origin endpoint to filter the harvest jobs by. If
    #   specified, only harvest jobs associated with this origin endpoint will
    #   be returned.
    #
    # @option params [String] :status
    #   The status to filter the harvest jobs by. If specified, only harvest
    #   jobs with this status will be returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of harvest jobs to return in a single request. If
    #   not specified, a default value will be used.
    #
    # @option params [String] :next_token
    #   A token used for pagination. Provide this value in subsequent requests
    #   to retrieve the next set of results.
    #
    # @return [Types::ListHarvestJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHarvestJobsResponse#items #items} => Array&lt;Types::HarvestJob&gt;
    #   * {Types::ListHarvestJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListHarvestJobs: Specify ChannelGroup only
    #
    #   resp = client.list_harvest_jobs({
    #     channel_group_name: "exampleChannelGroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "exampleChannelName", 
    #         created_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #         description: "Example HarvestJob description", 
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket", 
    #             destination_path: "manifests", 
    #           }, 
    #         }, 
    #         etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #         harvest_job_name: "HarvestJobName", 
    #         harvested_manifests: {
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest", 
    #             }, 
    #           ], 
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest", 
    #             }, 
    #           ], 
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest", 
    #             }, 
    #           ], 
    #         }, 
    #         modified_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #         origin_endpoint_name: "exampleOriginEndpointName", 
    #         schedule_configuration: {
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z"), 
    #           start_time: Time.parse("2024-05-28T06:00:00.00Z"), 
    #         }, 
    #         status: "QUEUED", 
    #       }, 
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName2/originEndpoint/exampleOriginEndpointName2/harvestJob/HarvestJobName2", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "exampleChannelName2", 
    #         created_at: Time.parse("2024-05-28T15:30:00.00Z"), 
    #         description: "Example HarvestJob2 description", 
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket", 
    #             destination_path: "manifests", 
    #           }, 
    #         }, 
    #         etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #         harvest_job_name: "HarvestJobName2", 
    #         harvested_manifests: {
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest", 
    #             }, 
    #           ], 
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest", 
    #             }, 
    #           ], 
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest", 
    #             }, 
    #           ], 
    #         }, 
    #         modified_at: Time.parse("2024-05-28T15:30:00.00Z"), 
    #         origin_endpoint_name: "exampleOriginEndpointName2", 
    #         schedule_configuration: {
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z"), 
    #           start_time: Time.parse("2024-05-28T02:00:00.00Z"), 
    #         }, 
    #         status: "IN_PROGRESS", 
    #       }, 
    #     ], 
    #     next_token: "someTokenValue", 
    #   }
    #
    # @example Example: ListHarvestJobs: Specify ChannelGroup, Channel only
    #
    #   resp = client.list_harvest_jobs({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannelName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "exampleChannelName", 
    #         created_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #         description: "Example HarvestJob description", 
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket", 
    #             destination_path: "manifests", 
    #           }, 
    #         }, 
    #         etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #         harvest_job_name: "HarvestJobName", 
    #         harvested_manifests: {
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest", 
    #             }, 
    #           ], 
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest", 
    #             }, 
    #           ], 
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest", 
    #             }, 
    #           ], 
    #         }, 
    #         modified_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #         origin_endpoint_name: "exampleOriginEndpointName", 
    #         schedule_configuration: {
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z"), 
    #           start_time: Time.parse("2024-05-28T06:00:00.00Z"), 
    #         }, 
    #         status: "QUEUED", 
    #       }, 
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName2/harvestJob/HarvestJobName2", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "exampleChannelName", 
    #         created_at: Time.parse("2024-05-28T15:30:00.00Z"), 
    #         description: "Example HarvestJob2 description", 
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket", 
    #             destination_path: "manifests", 
    #           }, 
    #         }, 
    #         harvest_job_name: "HarvestJobName2", 
    #         harvested_manifests: {
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest", 
    #             }, 
    #           ], 
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest", 
    #             }, 
    #           ], 
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest", 
    #             }, 
    #           ], 
    #         }, 
    #         modified_at: Time.parse("2024-05-28T15:30:00.00Z"), 
    #         origin_endpoint_name: "exampleOriginEndpointName2", 
    #         schedule_configuration: {
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z"), 
    #           start_time: Time.parse("2024-05-28T02:00:00.00Z"), 
    #         }, 
    #         status: "IN_PROGRESS", 
    #       }, 
    #     ], 
    #     next_token: "someTokenValue", 
    #   }
    #
    # @example Example: ListHarvestJobs: Specify ChannelGroup, Channel, OriginEndpoint
    #
    #   resp = client.list_harvest_jobs({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannelName", 
    #     origin_endpoint_name: "exampleOriginEndpointName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "exampleChannelName", 
    #         created_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #         description: "Example HarvestJob description", 
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket", 
    #             destination_path: "manifests", 
    #           }, 
    #         }, 
    #         etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #         harvest_job_name: "HarvestJobName", 
    #         harvested_manifests: {
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest", 
    #             }, 
    #           ], 
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest", 
    #             }, 
    #           ], 
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest", 
    #             }, 
    #           ], 
    #         }, 
    #         modified_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #         origin_endpoint_name: "exampleOriginEndpointName", 
    #         schedule_configuration: {
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z"), 
    #           start_time: Time.parse("2024-05-28T06:00:00.00Z"), 
    #         }, 
    #         status: "QUEUED", 
    #       }, 
    #     ], 
    #     next_token: "someTokenValue", 
    #   }
    #
    # @example Example: ListHarvestJobs: Specify ChannelGroup, Channel, OriginEndpoint + Status filter
    #
    #   resp = client.list_harvest_jobs({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannelName", 
    #     origin_endpoint_name: "exampleOriginEndpointName", 
    #     status: "QUEUED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannelName/originEndpoint/exampleOriginEndpointName/harvestJob/HarvestJobName", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "exampleChannelName", 
    #         created_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #         description: "Example HarvestJob description", 
    #         destination: {
    #           s3_destination: {
    #             bucket_name: "harvestJobS3DestinationBucket", 
    #             destination_path: "manifests", 
    #           }, 
    #         }, 
    #         etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #         harvest_job_name: "HarvestJobName", 
    #         harvested_manifests: {
    #           dash_manifests: [
    #             {
    #               manifest_name: "DashManifest", 
    #             }, 
    #           ], 
    #           hls_manifests: [
    #             {
    #               manifest_name: "HlsManifest", 
    #             }, 
    #           ], 
    #           low_latency_hls_manifests: [
    #             {
    #               manifest_name: "LowLatencyHlsManifest", 
    #             }, 
    #           ], 
    #         }, 
    #         modified_at: Time.parse("2024-05-28T09:36:00.00Z"), 
    #         origin_endpoint_name: "exampleOriginEndpointName", 
    #         schedule_configuration: {
    #           end_time: Time.parse("2024-05-28T12:00:00.00Z"), 
    #           start_time: Time.parse("2024-05-28T06:00:00.00Z"), 
    #         }, 
    #         status: "QUEUED", 
    #       }, 
    #     ], 
    #     next_token: "someTokenValue", 
    #   }
    #
    # @example Example: ListHarvestJobs: Empty response
    #
    #   resp = client.list_harvest_jobs({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannelName", 
    #     origin_endpoint_name: "exampleOriginEndpointName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_harvest_jobs({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ListHarvestJobsRequestChannelNameString",
    #     origin_endpoint_name: "ListHarvestJobsRequestOriginEndpointNameString",
    #     status: "QUEUED", # accepts QUEUED, IN_PROGRESS, CANCELLED, COMPLETED, FAILED
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].channel_group_name #=> String
    #   resp.items[0].channel_name #=> String
    #   resp.items[0].origin_endpoint_name #=> String
    #   resp.items[0].destination.s3_destination.bucket_name #=> String
    #   resp.items[0].destination.s3_destination.destination_path #=> String
    #   resp.items[0].harvest_job_name #=> String
    #   resp.items[0].harvested_manifests.hls_manifests #=> Array
    #   resp.items[0].harvested_manifests.hls_manifests[0].manifest_name #=> String
    #   resp.items[0].harvested_manifests.dash_manifests #=> Array
    #   resp.items[0].harvested_manifests.dash_manifests[0].manifest_name #=> String
    #   resp.items[0].harvested_manifests.low_latency_hls_manifests #=> Array
    #   resp.items[0].harvested_manifests.low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].schedule_configuration.start_time #=> Time
    #   resp.items[0].schedule_configuration.end_time #=> Time
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].modified_at #=> Time
    #   resp.items[0].status #=> String, one of "QUEUED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED"
    #   resp.items[0].error_message #=> String
    #   resp.items[0].etag #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListHarvestJobs AWS API Documentation
    #
    # @overload list_harvest_jobs(params = {})
    # @param [Hash] params ({})
    def list_harvest_jobs(params = {}, options = {})
      req = build_request(:list_harvest_jobs, params)
      req.send_request(options)
    end

    # Retrieves all origin endpoints in a specific channel that are
    # configured in AWS Elemental MediaPackage.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   The pagination token from the GET list request. Use the token to fetch
    #   the next page of results.
    #
    # @return [Types::ListOriginEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOriginEndpointsResponse#items #items} => Array&lt;Types::OriginEndpointListConfiguration&gt;
    #   * {Types::ListOriginEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Listing all OriginEndpoints
    #
    #   resp = client.list_origin_endpoints({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointTS", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "exampleChannel", 
    #         container_type: "TS", 
    #         created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #         description: "Description for exampleOriginEndpointTS", 
    #         force_endpoint_error_configuration: {
    #           endpoint_error_conditions: [
    #             "STALE_MANIFEST", 
    #             "INCOMPLETE_MANIFEST", 
    #             "MISSING_DRM_KEY", 
    #             "SLATE_INPUT", 
    #           ], 
    #         }, 
    #         hls_manifests: [
    #           {
    #             child_manifest_name: "exampleChildManifest1", 
    #             manifest_name: "exampleManifest1", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest1.m3u8", 
    #           }, 
    #           {
    #             child_manifest_name: "exampleManifest2", 
    #             manifest_name: "exampleManifest2", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest2.m3u8", 
    #           }, 
    #         ], 
    #         low_latency_hls_manifests: [
    #           {
    #             child_manifest_name: "exampleLLChildManifest1", 
    #             manifest_name: "exampleLLManifest1", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest1.m3u8", 
    #           }, 
    #           {
    #             child_manifest_name: "exampleLLManifest2", 
    #             manifest_name: "exampleLLManifest2", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest2.m3u8", 
    #           }, 
    #         ], 
    #         modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #         origin_endpoint_name: "exampleOriginEndpointTS", 
    #       }, 
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointCMAF", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "exampleChannel", 
    #         container_type: "CMAF", 
    #         created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #         dash_manifests: [
    #           {
    #             manifest_name: "exampleDashManifest1", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleDashManifest1.mpd", 
    #           }, 
    #           {
    #             manifest_name: "exampleDashManifest2", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleDashManifest2.mpd", 
    #           }, 
    #         ], 
    #         force_endpoint_error_configuration: {
    #           endpoint_error_conditions: [
    #             "STALE_MANIFEST", 
    #             "INCOMPLETE_MANIFEST", 
    #             "MISSING_DRM_KEY", 
    #             "SLATE_INPUT", 
    #           ], 
    #         }, 
    #         hls_manifests: [
    #           {
    #             child_manifest_name: "exampleChildManifest1", 
    #             manifest_name: "exampleManifest1", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleManifest1.m3u8", 
    #           }, 
    #           {
    #             child_manifest_name: "exampleManifest2", 
    #             manifest_name: "exampleManifest2", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleManifest2.m3u8", 
    #           }, 
    #         ], 
    #         low_latency_hls_manifests: [
    #           {
    #             child_manifest_name: "exampleLLChildManifest1", 
    #             manifest_name: "exampleLLManifest1", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleLLManifest1.m3u8", 
    #           }, 
    #           {
    #             child_manifest_name: "exampleLLManifest2", 
    #             manifest_name: "exampleLLManifest2", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointCMAF/exampleLLManifest2.m3u8", 
    #           }, 
    #         ], 
    #         modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #         origin_endpoint_name: "exampleOriginEndpointCMAF", 
    #       }, 
    #       {
    #         arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointISM", 
    #         channel_group_name: "exampleChannelGroup", 
    #         channel_name: "exampleChannel", 
    #         container_type: "ISM", 
    #         created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #         description: "Description for exampleOriginEndpointISM", 
    #         force_endpoint_error_configuration: {
    #           endpoint_error_conditions: [
    #             "STALE_MANIFEST", 
    #             "INCOMPLETE_MANIFEST", 
    #             "MISSING_DRM_KEY", 
    #             "SLATE_INPUT", 
    #           ], 
    #         }, 
    #         modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #         mss_manifests: [
    #           {
    #             manifest_name: "exampleMssManifest1", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest1.ism/Manifest", 
    #           }, 
    #           {
    #             manifest_name: "exampleMssManifest2", 
    #             url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest2.ism/Manifest", 
    #           }, 
    #         ], 
    #         origin_endpoint_name: "exampleOriginEndpointISM", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_origin_endpoints({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].channel_group_name #=> String
    #   resp.items[0].channel_name #=> String
    #   resp.items[0].origin_endpoint_name #=> String
    #   resp.items[0].container_type #=> String, one of "TS", "CMAF", "ISM"
    #   resp.items[0].description #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].modified_at #=> Time
    #   resp.items[0].hls_manifests #=> Array
    #   resp.items[0].hls_manifests[0].manifest_name #=> String
    #   resp.items[0].hls_manifests[0].child_manifest_name #=> String
    #   resp.items[0].hls_manifests[0].url #=> String
    #   resp.items[0].low_latency_hls_manifests #=> Array
    #   resp.items[0].low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.items[0].low_latency_hls_manifests[0].child_manifest_name #=> String
    #   resp.items[0].low_latency_hls_manifests[0].url #=> String
    #   resp.items[0].dash_manifests #=> Array
    #   resp.items[0].dash_manifests[0].manifest_name #=> String
    #   resp.items[0].dash_manifests[0].url #=> String
    #   resp.items[0].mss_manifests #=> Array
    #   resp.items[0].mss_manifests[0].manifest_name #=> String
    #   resp.items[0].mss_manifests[0].url #=> String
    #   resp.items[0].force_endpoint_error_configuration.endpoint_error_conditions #=> Array
    #   resp.items[0].force_endpoint_error_configuration.endpoint_error_conditions[0] #=> String, one of "STALE_MANIFEST", "INCOMPLETE_MANIFEST", "MISSING_DRM_KEY", "SLATE_INPUT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListOriginEndpoints AWS API Documentation
    #
    # @overload list_origin_endpoints(params = {})
    # @param [Hash] params ({})
    def list_origin_endpoints(params = {}, options = {})
      req = build_request(:list_origin_endpoints, params)
      req.send_request(options)
    end

    # Lists the tags assigned to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch resource that you want to view tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: List all tags for a resource
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TagArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Attaches an IAM policy to the specified channel. With policies, you
    # can specify who has access to AWS resources and what actions they can
    # perform on those resources. You can attach only one policy with each
    # request.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :policy
    #   The policy to attach to the specified channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Creating a Channel Policy
    #
    #   resp = client.put_channel_policy({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     policy: "{...}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_channel_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     policy: "PolicyText", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutChannelPolicy AWS API Documentation
    #
    # @overload put_channel_policy(params = {})
    # @param [Hash] params ({})
    def put_channel_policy(params = {}, options = {})
      req = build_request(:put_channel_policy, params)
      req.send_request(options)
    end

    # Attaches an IAM policy to the specified origin endpoint. You can
    # attach only one policy with each request.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @option params [required, String] :policy
    #   The policy to attach to the specified origin endpoint.
    #
    # @option params [Types::CdnAuthConfiguration] :cdn_auth_configuration
    #   The settings for using authorization headers between the MediaPackage
    #   endpoint and your CDN.
    #
    #   For information about CDN authorization, see [CDN authorization in
    #   Elemental MediaPackage][1] in the MediaPackage user guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mediapackage/latest/userguide/cdn-auth.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Creating an Origin Endpoint Policy
    #
    #   resp = client.put_origin_endpoint_policy({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     origin_endpoint_name: "exampleOriginEndpoint", 
    #     policy: "{...}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_origin_endpoint_policy({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     policy: "PolicyText", # required
    #     cdn_auth_configuration: {
    #       cdn_identifier_secret_arns: ["CdnIdentifierSecretArn"], # required
    #       secrets_role_arn: "CdnAuthConfigurationSecretsRoleArnString", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/PutOriginEndpointPolicy AWS API Documentation
    #
    # @overload put_origin_endpoint_policy(params = {})
    # @param [Hash] params ({})
    def put_origin_endpoint_policy(params = {}, options = {})
      req = build_request(:put_origin_endpoint_policy, params)
      req.send_request(options)
    end

    # Resetting the channel can help to clear errors from misconfigurations
    # in the encoder. A reset refreshes the ingest stream and removes
    # previous content.
    #
    # Be sure to stop the encoder before you reset the channel, and wait at
    # least 30 seconds before you restart the encoder.
    #
    # @option params [required, String] :channel_group_name
    #   The name of the channel group that contains the channel that you are
    #   resetting.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel that you are resetting.
    #
    # @return [Types::ResetChannelStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetChannelStateResponse#channel_group_name #channel_group_name} => String
    #   * {Types::ResetChannelStateResponse#channel_name #channel_name} => String
    #   * {Types::ResetChannelStateResponse#arn #arn} => String
    #   * {Types::ResetChannelStateResponse#reset_at #reset_at} => Time
    #
    #
    # @example Example: Reset a Channel
    #
    #   resp = client.reset_channel_state({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     reset_at: Time.parse("2024-10-09T09:36:00.00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_channel_state({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.arn #=> String
    #   resp.reset_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ResetChannelState AWS API Documentation
    #
    # @overload reset_channel_state(params = {})
    # @param [Hash] params ({})
    def reset_channel_state(params = {}, options = {})
      req = build_request(:reset_channel_state, params)
      req.send_request(options)
    end

    # Resetting the origin endpoint can help to resolve unexpected behavior
    # and other content packaging issues. It also helps to preserve special
    # events when you don't want the previous content to be available for
    # viewing. A reset clears out all previous content from the origin
    # endpoint.
    #
    # MediaPackage might return old content from this endpoint in the first
    # 30 seconds after the endpoint reset. For best results, when possible,
    # wait 30 seconds from endpoint reset to send playback requests to this
    # endpoint.
    #
    # @option params [required, String] :channel_group_name
    #   The name of the channel group that contains the channel with the
    #   origin endpoint that you are resetting.
    #
    # @option params [required, String] :channel_name
    #   The name of the channel with the origin endpoint that you are
    #   resetting.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name of the origin endpoint that you are resetting.
    #
    # @return [Types::ResetOriginEndpointStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetOriginEndpointStateResponse#channel_group_name #channel_group_name} => String
    #   * {Types::ResetOriginEndpointStateResponse#channel_name #channel_name} => String
    #   * {Types::ResetOriginEndpointStateResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::ResetOriginEndpointStateResponse#arn #arn} => String
    #   * {Types::ResetOriginEndpointStateResponse#reset_at #reset_at} => Time
    #
    #
    # @example Example: Reset an OriginEndpoint
    #
    #   resp = client.reset_origin_endpoint_state({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     origin_endpoint_name: "exampleOriginEndpoint", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpoint", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     origin_endpoint_name: "exampleOriginEndpoint", 
    #     reset_at: Time.parse("2024-10-09T09:36:00.00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_origin_endpoint_state({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.arn #=> String
    #   resp.reset_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/ResetOriginEndpointState AWS API Documentation
    #
    # @overload reset_origin_endpoint_state(params = {})
    # @param [Hash] params ({})
    def reset_origin_endpoint_state(params = {}, options = {})
      req = build_request(:reset_origin_endpoint_state, params)
      req.send_request(options)
    end

    # Assigns one of more tags (key-value pairs) to the specified
    # MediaPackage resource.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions, by granting a user permission to
    # access or change only resources with certain tag values. You can use
    # the TagResource operation with a resource that already has tags. If
    # you specify a new tag key for the resource, this tag is appended to
    # the list of tags associated with the resource. If you specify a tag
    # key that is already associated with the resource, the new tag value
    # that you specify replaces the previous value for that tag.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the MediaPackage resource that you're adding tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Add tags to a resource
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel", 
    #     tags: {
    #       "key3" => "value3", 
    #       "key4" => "value4", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TagArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the MediaPackage resource that you're removing tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Remove tags from a resource
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel", 
    #     tag_keys: [
    #       "key3", 
    #       "key4", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TagArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update the specified channel. You can edit if MediaPackage sends
    # ingest or egress access logs to the CloudWatch log group, if content
    # will be encrypted, the description on a channel, and your channel's
    # policy settings. You can't edit the name of the channel or CloudFront
    # distribution details.
    #
    # Any edits you make that impact the video output may not be reflected
    # for a few minutes.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [String] :etag
    #   The expected current Entity Tag (ETag) for the resource. If the
    #   specified ETag does not match the resource's current entity tag, the
    #   update request will be rejected.
    #
    # @option params [String] :description
    #   Any descriptive information that you want to add to the channel for
    #   future identification purposes.
    #
    # @option params [Types::InputSwitchConfiguration] :input_switch_configuration
    #   The configuration for input switching based on the media quality
    #   confidence score (MQCS) as provided from AWS Elemental MediaLive. This
    #   setting is valid only when `InputType` is `CMAF`.
    #
    # @option params [Types::OutputHeaderConfiguration] :output_header_configuration
    #   The settings for what common media server data (CMSD) headers AWS
    #   Elemental MediaPackage includes in responses to the CDN. This setting
    #   is valid only when `InputType` is `CMAF`.
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#arn #arn} => String
    #   * {Types::UpdateChannelResponse#channel_name #channel_name} => String
    #   * {Types::UpdateChannelResponse#channel_group_name #channel_group_name} => String
    #   * {Types::UpdateChannelResponse#created_at #created_at} => Time
    #   * {Types::UpdateChannelResponse#modified_at #modified_at} => Time
    #   * {Types::UpdateChannelResponse#description #description} => String
    #   * {Types::UpdateChannelResponse#ingest_endpoints #ingest_endpoints} => Array&lt;Types::IngestEndpoint&gt;
    #   * {Types::UpdateChannelResponse#input_type #input_type} => String
    #   * {Types::UpdateChannelResponse#etag #etag} => String
    #   * {Types::UpdateChannelResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::UpdateChannelResponse#input_switch_configuration #input_switch_configuration} => Types::InputSwitchConfiguration
    #   * {Types::UpdateChannelResponse#output_header_configuration #output_header_configuration} => Types::OutputHeaderConfiguration
    #
    #
    # @example Example: Updating a Channel
    #
    #   resp = client.update_channel({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     description: "Updated description for exampleChannel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Updated description for exampleChannel", 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     ingest_endpoints: [
    #       {
    #         id: "1", 
    #         url: "https://abcde-1.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index", 
    #       }, 
    #       {
    #         id: "2", 
    #         url: "https://abcde-2.ingest.vwxyz.mediapackagev2.us-west-2.amazonaws.com/v1/exampleChannelGroup/exampleChannel/index", 
    #       }, 
    #     ], 
    #     input_type: "HLS", 
    #     modified_at: Time.parse("2022-10-18T10:36:00.00Z"), 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     etag: "EntityTag",
    #     description: "ResourceDescription",
    #     input_switch_configuration: {
    #       mqcs_input_switching: false,
    #       preferred_input: 1,
    #     },
    #     output_header_configuration: {
    #       publish_mqcs: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_name #=> String
    #   resp.channel_group_name #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.ingest_endpoints #=> Array
    #   resp.ingest_endpoints[0].id #=> String
    #   resp.ingest_endpoints[0].url #=> String
    #   resp.input_type #=> String, one of "HLS", "CMAF"
    #   resp.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.input_switch_configuration.mqcs_input_switching #=> Boolean
    #   resp.input_switch_configuration.preferred_input #=> Integer
    #   resp.output_header_configuration.publish_mqcs #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Update the specified channel group. You can edit the description on a
    # channel group for easier identification later from the AWS Elemental
    # MediaPackage console. You can't edit the name of the channel group.
    #
    # Any edits you make that impact the video output may not be reflected
    # for a few minutes.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [String] :etag
    #   The expected current Entity Tag (ETag) for the resource. If the
    #   specified ETag does not match the resource's current entity tag, the
    #   update request will be rejected.
    #
    # @option params [String] :description
    #   Any descriptive information that you want to add to the channel group
    #   for future identification purposes.
    #
    # @return [Types::UpdateChannelGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelGroupResponse#channel_group_name #channel_group_name} => String
    #   * {Types::UpdateChannelGroupResponse#arn #arn} => String
    #   * {Types::UpdateChannelGroupResponse#egress_domain #egress_domain} => String
    #   * {Types::UpdateChannelGroupResponse#created_at #created_at} => Time
    #   * {Types::UpdateChannelGroupResponse#modified_at #modified_at} => Time
    #   * {Types::UpdateChannelGroupResponse#description #description} => String
    #   * {Types::UpdateChannelGroupResponse#etag #etag} => String
    #   * {Types::UpdateChannelGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Updating a Channel Group
    #
    #   resp = client.update_channel_group({
    #     channel_group_name: "exampleChannelGroup", 
    #     description: "Updated description for exampleChannelGroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup", 
    #     channel_group_name: "exampleChannelGroup", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Updated description for exampleChannelGroup", 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     egress_domain: "abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com", 
    #     modified_at: Time.parse("2022-10-18T10:36:00.00Z"), 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_group({
    #     channel_group_name: "ResourceName", # required
    #     etag: "EntityTag",
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_group_name #=> String
    #   resp.arn #=> String
    #   resp.egress_domain #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateChannelGroup AWS API Documentation
    #
    # @overload update_channel_group(params = {})
    # @param [Hash] params ({})
    def update_channel_group(params = {}, options = {})
      req = build_request(:update_channel_group, params)
      req.send_request(options)
    end

    # Update the specified origin endpoint. Edit the packaging preferences
    # on an endpoint to optimize the viewing experience. You can't edit the
    # name of the endpoint.
    #
    # Any edits you make that impact the video output may not be reflected
    # for a few minutes.
    #
    # @option params [required, String] :channel_group_name
    #   The name that describes the channel group. The name is the primary
    #   identifier for the channel group, and must be unique for your account
    #   in the AWS Region.
    #
    # @option params [required, String] :channel_name
    #   The name that describes the channel. The name is the primary
    #   identifier for the channel, and must be unique for your account in the
    #   AWS Region and channel group.
    #
    # @option params [required, String] :origin_endpoint_name
    #   The name that describes the origin endpoint. The name is the primary
    #   identifier for the origin endpoint, and and must be unique for your
    #   account in the AWS Region and channel.
    #
    # @option params [required, String] :container_type
    #   The type of container attached to this origin endpoint. A container
    #   type is a file format that encapsulates one or more media streams,
    #   such as audio and video, into a single file.
    #
    # @option params [Types::Segment] :segment
    #   The segment configuration, including the segment name, duration, and
    #   other configuration values.
    #
    # @option params [String] :description
    #   Any descriptive information that you want to add to the origin
    #   endpoint for future identification purposes.
    #
    # @option params [Integer] :startover_window_seconds
    #   The size of the window (in seconds) to create a window of the live
    #   stream that's available for on-demand viewing. Viewers can start-over
    #   or catch-up on content that falls within the window. The maximum
    #   startover window is 1,209,600 seconds (14 days).
    #
    # @option params [Array<Types::CreateHlsManifestConfiguration>] :hls_manifests
    #   An HTTP live streaming (HLS) manifest configuration.
    #
    # @option params [Array<Types::CreateLowLatencyHlsManifestConfiguration>] :low_latency_hls_manifests
    #   A low-latency HLS manifest configuration.
    #
    # @option params [Array<Types::CreateDashManifestConfiguration>] :dash_manifests
    #   A DASH manifest configuration.
    #
    # @option params [Array<Types::CreateMssManifestConfiguration>] :mss_manifests
    #   A list of Microsoft Smooth Streaming (MSS) manifest configurations to
    #   update for the origin endpoint. This replaces the existing MSS
    #   manifest configurations.
    #
    # @option params [Types::ForceEndpointErrorConfiguration] :force_endpoint_error_configuration
    #   The failover settings for the endpoint.
    #
    # @option params [String] :etag
    #   The expected current Entity Tag (ETag) for the resource. If the
    #   specified ETag does not match the resource's current entity tag, the
    #   update request will be rejected.
    #
    # @return [Types::UpdateOriginEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOriginEndpointResponse#arn #arn} => String
    #   * {Types::UpdateOriginEndpointResponse#channel_group_name #channel_group_name} => String
    #   * {Types::UpdateOriginEndpointResponse#channel_name #channel_name} => String
    #   * {Types::UpdateOriginEndpointResponse#origin_endpoint_name #origin_endpoint_name} => String
    #   * {Types::UpdateOriginEndpointResponse#container_type #container_type} => String
    #   * {Types::UpdateOriginEndpointResponse#segment #segment} => Types::Segment
    #   * {Types::UpdateOriginEndpointResponse#created_at #created_at} => Time
    #   * {Types::UpdateOriginEndpointResponse#modified_at #modified_at} => Time
    #   * {Types::UpdateOriginEndpointResponse#description #description} => String
    #   * {Types::UpdateOriginEndpointResponse#startover_window_seconds #startover_window_seconds} => Integer
    #   * {Types::UpdateOriginEndpointResponse#hls_manifests #hls_manifests} => Array&lt;Types::GetHlsManifestConfiguration&gt;
    #   * {Types::UpdateOriginEndpointResponse#low_latency_hls_manifests #low_latency_hls_manifests} => Array&lt;Types::GetLowLatencyHlsManifestConfiguration&gt;
    #   * {Types::UpdateOriginEndpointResponse#mss_manifests #mss_manifests} => Array&lt;Types::GetMssManifestConfiguration&gt;
    #   * {Types::UpdateOriginEndpointResponse#force_endpoint_error_configuration #force_endpoint_error_configuration} => Types::ForceEndpointErrorConfiguration
    #   * {Types::UpdateOriginEndpointResponse#etag #etag} => String
    #   * {Types::UpdateOriginEndpointResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::UpdateOriginEndpointResponse#dash_manifests #dash_manifests} => Array&lt;Types::GetDashManifestConfiguration&gt;
    #
    #
    # @example Example: Updating an OriginEndpoint
    #
    #   resp = client.update_origin_endpoint({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "TS", 
    #     description: "Updated description for exampleOriginEndpointTS", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     hls_manifests: [
    #       {
    #         child_manifest_name: "exampleChildManifest1", 
    #         manifest_name: "exampleManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #       {
    #         child_manifest_name: "exampleManifest2", 
    #         manifest_name: "exampleManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #     ], 
    #     low_latency_hls_manifests: [
    #       {
    #         child_manifest_name: "exampleLLChildManifest1", 
    #         manifest_name: "exampleLLManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #       {
    #         child_manifest_name: "exampleLLManifest2", 
    #         manifest_name: "exampleLLManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #       }, 
    #     ], 
    #     origin_endpoint_name: "exampleOriginEndpointTS", 
    #     segment: {
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B7E", 
    #         encryption_method: {
    #           ts_encryption_method: "AES_128", 
    #         }, 
    #         key_rotation_interval_seconds: 300, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "CLEAR_KEY_AES_128", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "SHARED", 
    #             preset_speke_20_video: "SHARED", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://foo.com", 
    #         }, 
    #       }, 
    #       include_iframe_only_streams: false, 
    #       scte: {
    #         scte_filter: [
    #           "SPLICE_INSERT", 
    #         ], 
    #       }, 
    #       segment_duration_seconds: 7, 
    #       segment_name: "segmentName2", 
    #       ts_include_dvb_subtitles: false, 
    #       ts_use_audio_rendition_group: true, 
    #     }, 
    #     startover_window_seconds: 600, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointTS", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "TS", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Updated description for exampleOriginEndpointTS", 
    #     etag: "GlfT+dwAyGIR4wuy8nKWl1RDPwSrjQej9qUutLZxoxk=", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     hls_manifests: [
    #       {
    #         child_manifest_name: "exampleChildManifest1", 
    #         manifest_name: "exampleManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest1.m3u8", 
    #       }, 
    #       {
    #         child_manifest_name: "exampleManifest2", 
    #         manifest_name: "exampleManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleManifest2.m3u8", 
    #       }, 
    #     ], 
    #     low_latency_hls_manifests: [
    #       {
    #         child_manifest_name: "exampleLLChildManifest1", 
    #         manifest_name: "exampleLLManifest1", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest1.m3u8", 
    #       }, 
    #       {
    #         child_manifest_name: "exampleLLManifest2", 
    #         manifest_name: "exampleLLManifest2", 
    #         manifest_window_seconds: 30, 
    #         program_date_time_interval_seconds: 60, 
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", 
    #         }, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointTS/exampleLLManifest2.m3u8", 
    #       }, 
    #     ], 
    #     modified_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     origin_endpoint_name: "exampleOriginEndpointTS", 
    #     segment: {
    #       encryption: {
    #         constant_initialization_vector: "A382A901F3C1F7718512266CFFBB0B7E", 
    #         encryption_method: {
    #           ts_encryption_method: "AES_128", 
    #         }, 
    #         key_rotation_interval_seconds: 300, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "CLEAR_KEY_AES_128", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "SHARED", 
    #             preset_speke_20_video: "SHARED", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://foo.com", 
    #         }, 
    #       }, 
    #       include_iframe_only_streams: false, 
    #       scte: {
    #         scte_filter: [
    #           "SPLICE_INSERT", 
    #         ], 
    #       }, 
    #       segment_duration_seconds: 7, 
    #       segment_name: "segmentName2", 
    #       ts_include_dvb_subtitles: false, 
    #       ts_use_audio_rendition_group: true, 
    #     }, 
    #     startover_window_seconds: 600, 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Example: Updating an OriginEndpoint with ISM container
    #
    #   resp = client.update_origin_endpoint({
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "ISM", 
    #     description: "Updated description for exampleOriginEndpointISM", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     mss_manifests: [
    #       {
    #         manifest_layout: "FULL", 
    #         manifest_name: "exampleMssManifest1", 
    #         manifest_window_seconds: 60, 
    #       }, 
    #       {
    #         manifest_layout: "COMPACT", 
    #         manifest_name: "exampleMssManifest2", 
    #         manifest_window_seconds: 30, 
    #       }, 
    #     ], 
    #     origin_endpoint_name: "exampleOriginEndpointISM", 
    #     segment: {
    #       encryption: {
    #         encryption_method: {
    #           ism_encryption_method: "CENC", 
    #         }, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "PLAYREADY", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "SHARED", 
    #             preset_speke_20_video: "SHARED", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://speke-key-provider.example.com", 
    #         }, 
    #       }, 
    #       segment_duration_seconds: 2, 
    #       segment_name: "segmentName2", 
    #     }, 
    #     startover_window_seconds: 600, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:mediapackagev2:us-west-2:123456789012:channelGroup/exampleChannelGroup/channel/exampleChannel/originEndpoint/exampleOriginEndpointISM", 
    #     channel_group_name: "exampleChannelGroup", 
    #     channel_name: "exampleChannel", 
    #     container_type: "ISM", 
    #     created_at: Time.parse("2022-10-18T09:36:00.00Z"), 
    #     description: "Updated description for exampleOriginEndpointISM", 
    #     etag: "HmgU+ewBzHJS5xvz9nLXm2SEQxTsjRfk0rVvuMayoyl=", 
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: [
    #         "STALE_MANIFEST", 
    #         "INCOMPLETE_MANIFEST", 
    #         "MISSING_DRM_KEY", 
    #         "SLATE_INPUT", 
    #       ], 
    #     }, 
    #     modified_at: Time.parse("2022-10-18T09:37:00.00Z"), 
    #     mss_manifests: [
    #       {
    #         manifest_layout: "FULL", 
    #         manifest_name: "exampleMssManifest1", 
    #         manifest_window_seconds: 60, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest1.ism/Manifest", 
    #       }, 
    #       {
    #         manifest_layout: "COMPACT", 
    #         manifest_name: "exampleMssManifest2", 
    #         manifest_window_seconds: 30, 
    #         url: "https://abcde.egress.vwxyz.mediapackagev2.us-west-2.amazonaws.com/out/v1/exampleChannelGroup/exampleChannel/exampleOriginEndpointISM/exampleMssManifest2.ism/Manifest", 
    #       }, 
    #     ], 
    #     origin_endpoint_name: "exampleOriginEndpointISM", 
    #     segment: {
    #       encryption: {
    #         encryption_method: {
    #           ism_encryption_method: "CENC", 
    #         }, 
    #         speke_key_provider: {
    #           drm_systems: [
    #             "PLAYREADY", 
    #           ], 
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "SHARED", 
    #             preset_speke_20_video: "SHARED", 
    #           }, 
    #           resource_id: "ResourceId", 
    #           role_arn: "arn:aws:iam::123456789012:role/empRole", 
    #           url: "https://speke-key-provider.example.com", 
    #         }, 
    #       }, 
    #       segment_duration_seconds: 2, 
    #       segment_name: "segmentName2", 
    #     }, 
    #     startover_window_seconds: 600, 
    #     tags: {
    #       "key1" => "value1", 
    #       "key2" => "value2", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_origin_endpoint({
    #     channel_group_name: "ResourceName", # required
    #     channel_name: "ResourceName", # required
    #     origin_endpoint_name: "ResourceName", # required
    #     container_type: "TS", # required, accepts TS, CMAF, ISM
    #     segment: {
    #       segment_duration_seconds: 1,
    #       segment_name: "SegmentSegmentNameString",
    #       ts_use_audio_rendition_group: false,
    #       include_iframe_only_streams: false,
    #       ts_include_dvb_subtitles: false,
    #       scte: {
    #         scte_filter: ["SPLICE_INSERT"], # accepts SPLICE_INSERT, BREAK, PROVIDER_ADVERTISEMENT, DISTRIBUTOR_ADVERTISEMENT, PROVIDER_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_PLACEMENT_OPPORTUNITY, PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY, DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY, PROGRAM
    #       },
    #       encryption: {
    #         constant_initialization_vector: "EncryptionConstantInitializationVectorString",
    #         encryption_method: { # required
    #           ts_encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #           cmaf_encryption_method: "CENC", # accepts CENC, CBCS
    #           ism_encryption_method: "CENC", # accepts CENC
    #         },
    #         key_rotation_interval_seconds: 1,
    #         cmaf_exclude_segment_drm_metadata: false,
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: { # required
    #             preset_speke_20_audio: "PRESET_AUDIO_1", # required, accepts PRESET_AUDIO_1, PRESET_AUDIO_2, PRESET_AUDIO_3, SHARED, UNENCRYPTED
    #             preset_speke_20_video: "PRESET_VIDEO_1", # required, accepts PRESET_VIDEO_1, PRESET_VIDEO_2, PRESET_VIDEO_3, PRESET_VIDEO_4, PRESET_VIDEO_5, PRESET_VIDEO_6, PRESET_VIDEO_7, PRESET_VIDEO_8, SHARED, UNENCRYPTED
    #           },
    #           resource_id: "SpekeKeyProviderResourceIdString", # required
    #           drm_systems: ["CLEAR_KEY_AES_128"], # required, accepts CLEAR_KEY_AES_128, FAIRPLAY, PLAYREADY, WIDEVINE, IRDETO
    #           role_arn: "SpekeKeyProviderRoleArnString", # required
    #           url: "SpekeKeyProviderUrlString", # required
    #         },
    #       },
    #     },
    #     description: "ResourceDescription",
    #     startover_window_seconds: 1,
    #     hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", # accepts DATERANGE
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false,
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "FilterConfigurationManifestFilterString",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #         },
    #         url_encode_child_manifest: false,
    #       },
    #     ],
    #     low_latency_hls_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         child_manifest_name: "ManifestName",
    #         scte_hls: {
    #           ad_marker_hls: "DATERANGE", # accepts DATERANGE
    #         },
    #         start_tag: {
    #           time_offset: 1.0, # required
    #           precise: false,
    #         },
    #         manifest_window_seconds: 1,
    #         program_date_time_interval_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "FilterConfigurationManifestFilterString",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #         },
    #         url_encode_child_manifest: false,
    #       },
    #     ],
    #     dash_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "FilterConfigurationManifestFilterString",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #         },
    #         min_update_period_seconds: 1,
    #         min_buffer_time_seconds: 1,
    #         suggested_presentation_delay_seconds: 1,
    #         segment_template_format: "NUMBER_WITH_TIMELINE", # accepts NUMBER_WITH_TIMELINE
    #         period_triggers: ["AVAILS"], # accepts AVAILS, DRM_KEY_ROTATION, SOURCE_CHANGES, SOURCE_DISRUPTIONS, NONE
    #         scte_dash: {
    #           ad_marker_dash: "BINARY", # accepts BINARY, XML
    #         },
    #         drm_signaling: "INDIVIDUAL", # accepts INDIVIDUAL, REFERENCED
    #         utc_timing: {
    #           timing_mode: "HTTP_HEAD", # accepts HTTP_HEAD, HTTP_ISO, HTTP_XSDATE, UTC_DIRECT
    #           timing_source: "DashUtcTimingTimingSourceString",
    #         },
    #         profiles: ["DVB_DASH"], # accepts DVB_DASH
    #         base_urls: [
    #           {
    #             url: "DashBaseUrlUrlString", # required
    #             service_location: "DashBaseUrlServiceLocationString",
    #             dvb_priority: 1,
    #             dvb_weight: 1,
    #           },
    #         ],
    #         program_information: {
    #           title: "DashProgramInformationTitleString",
    #           source: "DashProgramInformationSourceString",
    #           copyright: "DashProgramInformationCopyrightString",
    #           language_code: "DashProgramInformationLanguageCodeString",
    #           more_information_url: "DashProgramInformationMoreInformationUrlString",
    #         },
    #         dvb_settings: {
    #           font_download: {
    #             url: "DashDvbFontDownloadUrlString",
    #             mime_type: "DashDvbFontDownloadMimeTypeString",
    #             font_family: "DashDvbFontDownloadFontFamilyString",
    #           },
    #           error_metrics: [
    #             {
    #               reporting_url: "DashDvbMetricsReportingReportingUrlString", # required
    #               probability: 1,
    #             },
    #           ],
    #         },
    #         compactness: "STANDARD", # accepts STANDARD, NONE
    #         subtitle_configuration: {
    #           ttml_configuration: {
    #             ttml_profile: "IMSC_1", # required, accepts IMSC_1, EBU_TT_D_101
    #           },
    #         },
    #       },
    #     ],
    #     mss_manifests: [
    #       {
    #         manifest_name: "ManifestName", # required
    #         manifest_window_seconds: 1,
    #         filter_configuration: {
    #           manifest_filter: "FilterConfigurationManifestFilterString",
    #           start: Time.now,
    #           end: Time.now,
    #           time_delay_seconds: 1,
    #           clip_start_time: Time.now,
    #         },
    #         manifest_layout: "FULL", # accepts FULL, COMPACT
    #       },
    #     ],
    #     force_endpoint_error_configuration: {
    #       endpoint_error_conditions: ["STALE_MANIFEST"], # accepts STALE_MANIFEST, INCOMPLETE_MANIFEST, MISSING_DRM_KEY, SLATE_INPUT
    #     },
    #     etag: "EntityTag",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.channel_group_name #=> String
    #   resp.channel_name #=> String
    #   resp.origin_endpoint_name #=> String
    #   resp.container_type #=> String, one of "TS", "CMAF", "ISM"
    #   resp.segment.segment_duration_seconds #=> Integer
    #   resp.segment.segment_name #=> String
    #   resp.segment.ts_use_audio_rendition_group #=> Boolean
    #   resp.segment.include_iframe_only_streams #=> Boolean
    #   resp.segment.ts_include_dvb_subtitles #=> Boolean
    #   resp.segment.scte.scte_filter #=> Array
    #   resp.segment.scte.scte_filter[0] #=> String, one of "SPLICE_INSERT", "BREAK", "PROVIDER_ADVERTISEMENT", "DISTRIBUTOR_ADVERTISEMENT", "PROVIDER_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_PLACEMENT_OPPORTUNITY", "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY", "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY", "PROGRAM"
    #   resp.segment.encryption.constant_initialization_vector #=> String
    #   resp.segment.encryption.encryption_method.ts_encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.segment.encryption.encryption_method.cmaf_encryption_method #=> String, one of "CENC", "CBCS"
    #   resp.segment.encryption.encryption_method.ism_encryption_method #=> String, one of "CENC"
    #   resp.segment.encryption.key_rotation_interval_seconds #=> Integer
    #   resp.segment.encryption.cmaf_exclude_segment_drm_metadata #=> Boolean
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET_AUDIO_1", "PRESET_AUDIO_2", "PRESET_AUDIO_3", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET_VIDEO_1", "PRESET_VIDEO_2", "PRESET_VIDEO_3", "PRESET_VIDEO_4", "PRESET_VIDEO_5", "PRESET_VIDEO_6", "PRESET_VIDEO_7", "PRESET_VIDEO_8", "SHARED", "UNENCRYPTED"
    #   resp.segment.encryption.speke_key_provider.resource_id #=> String
    #   resp.segment.encryption.speke_key_provider.drm_systems #=> Array
    #   resp.segment.encryption.speke_key_provider.drm_systems[0] #=> String, one of "CLEAR_KEY_AES_128", "FAIRPLAY", "PLAYREADY", "WIDEVINE", "IRDETO"
    #   resp.segment.encryption.speke_key_provider.role_arn #=> String
    #   resp.segment.encryption.speke_key_provider.url #=> String
    #   resp.created_at #=> Time
    #   resp.modified_at #=> Time
    #   resp.description #=> String
    #   resp.startover_window_seconds #=> Integer
    #   resp.hls_manifests #=> Array
    #   resp.hls_manifests[0].manifest_name #=> String
    #   resp.hls_manifests[0].url #=> String
    #   resp.hls_manifests[0].child_manifest_name #=> String
    #   resp.hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.hls_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.hls_manifests[0].filter_configuration.start #=> Time
    #   resp.hls_manifests[0].filter_configuration.end #=> Time
    #   resp.hls_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.hls_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.hls_manifests[0].start_tag.time_offset #=> Float
    #   resp.hls_manifests[0].start_tag.precise #=> Boolean
    #   resp.hls_manifests[0].url_encode_child_manifest #=> Boolean
    #   resp.low_latency_hls_manifests #=> Array
    #   resp.low_latency_hls_manifests[0].manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].url #=> String
    #   resp.low_latency_hls_manifests[0].child_manifest_name #=> String
    #   resp.low_latency_hls_manifests[0].manifest_window_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].scte_hls.ad_marker_hls #=> String, one of "DATERANGE"
    #   resp.low_latency_hls_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.low_latency_hls_manifests[0].filter_configuration.start #=> Time
    #   resp.low_latency_hls_manifests[0].filter_configuration.end #=> Time
    #   resp.low_latency_hls_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.low_latency_hls_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.low_latency_hls_manifests[0].start_tag.time_offset #=> Float
    #   resp.low_latency_hls_manifests[0].start_tag.precise #=> Boolean
    #   resp.low_latency_hls_manifests[0].url_encode_child_manifest #=> Boolean
    #   resp.mss_manifests #=> Array
    #   resp.mss_manifests[0].manifest_name #=> String
    #   resp.mss_manifests[0].url #=> String
    #   resp.mss_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.mss_manifests[0].filter_configuration.start #=> Time
    #   resp.mss_manifests[0].filter_configuration.end #=> Time
    #   resp.mss_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.mss_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.mss_manifests[0].manifest_window_seconds #=> Integer
    #   resp.mss_manifests[0].manifest_layout #=> String, one of "FULL", "COMPACT"
    #   resp.force_endpoint_error_configuration.endpoint_error_conditions #=> Array
    #   resp.force_endpoint_error_configuration.endpoint_error_conditions[0] #=> String, one of "STALE_MANIFEST", "INCOMPLETE_MANIFEST", "MISSING_DRM_KEY", "SLATE_INPUT"
    #   resp.etag #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.dash_manifests #=> Array
    #   resp.dash_manifests[0].manifest_name #=> String
    #   resp.dash_manifests[0].url #=> String
    #   resp.dash_manifests[0].manifest_window_seconds #=> Integer
    #   resp.dash_manifests[0].filter_configuration.manifest_filter #=> String
    #   resp.dash_manifests[0].filter_configuration.start #=> Time
    #   resp.dash_manifests[0].filter_configuration.end #=> Time
    #   resp.dash_manifests[0].filter_configuration.time_delay_seconds #=> Integer
    #   resp.dash_manifests[0].filter_configuration.clip_start_time #=> Time
    #   resp.dash_manifests[0].min_update_period_seconds #=> Integer
    #   resp.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.dash_manifests[0].suggested_presentation_delay_seconds #=> Integer
    #   resp.dash_manifests[0].segment_template_format #=> String, one of "NUMBER_WITH_TIMELINE"
    #   resp.dash_manifests[0].period_triggers #=> Array
    #   resp.dash_manifests[0].period_triggers[0] #=> String, one of "AVAILS", "DRM_KEY_ROTATION", "SOURCE_CHANGES", "SOURCE_DISRUPTIONS", "NONE"
    #   resp.dash_manifests[0].scte_dash.ad_marker_dash #=> String, one of "BINARY", "XML"
    #   resp.dash_manifests[0].drm_signaling #=> String, one of "INDIVIDUAL", "REFERENCED"
    #   resp.dash_manifests[0].utc_timing.timing_mode #=> String, one of "HTTP_HEAD", "HTTP_ISO", "HTTP_XSDATE", "UTC_DIRECT"
    #   resp.dash_manifests[0].utc_timing.timing_source #=> String
    #   resp.dash_manifests[0].profiles #=> Array
    #   resp.dash_manifests[0].profiles[0] #=> String, one of "DVB_DASH"
    #   resp.dash_manifests[0].base_urls #=> Array
    #   resp.dash_manifests[0].base_urls[0].url #=> String
    #   resp.dash_manifests[0].base_urls[0].service_location #=> String
    #   resp.dash_manifests[0].base_urls[0].dvb_priority #=> Integer
    #   resp.dash_manifests[0].base_urls[0].dvb_weight #=> Integer
    #   resp.dash_manifests[0].program_information.title #=> String
    #   resp.dash_manifests[0].program_information.source #=> String
    #   resp.dash_manifests[0].program_information.copyright #=> String
    #   resp.dash_manifests[0].program_information.language_code #=> String
    #   resp.dash_manifests[0].program_information.more_information_url #=> String
    #   resp.dash_manifests[0].dvb_settings.font_download.url #=> String
    #   resp.dash_manifests[0].dvb_settings.font_download.mime_type #=> String
    #   resp.dash_manifests[0].dvb_settings.font_download.font_family #=> String
    #   resp.dash_manifests[0].dvb_settings.error_metrics #=> Array
    #   resp.dash_manifests[0].dvb_settings.error_metrics[0].reporting_url #=> String
    #   resp.dash_manifests[0].dvb_settings.error_metrics[0].probability #=> Integer
    #   resp.dash_manifests[0].compactness #=> String, one of "STANDARD", "NONE"
    #   resp.dash_manifests[0].subtitle_configuration.ttml_configuration.ttml_profile #=> String, one of "IMSC_1", "EBU_TT_D_101"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackagev2-2022-12-25/UpdateOriginEndpoint AWS API Documentation
    #
    # @overload update_origin_endpoint(params = {})
    # @param [Hash] params ({})
    def update_origin_endpoint(params = {}, options = {})
      req = build_request(:update_origin_endpoint, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MediaPackageV2')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-mediapackagev2'
      context[:gem_version] = '1.45.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name          | params                   | :delay   | :max_attempts |
    # | -------------------- | ------------------------ | -------- | ------------- |
    # | harvest_job_finished | {Client#get_harvest_job} | 2        | 60            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        harvest_job_finished: Waiters::HarvestJobFinished
      }
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
