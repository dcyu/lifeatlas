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

module Aws::MediaConnect
  # An API client for MediaConnect.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaConnect::Client.new(
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

    @identifier = :mediaconnect

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
    add_plugin(Aws::MediaConnect::Plugins::Endpoints)

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
    #   @option options [Aws::MediaConnect::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MediaConnect::EndpointParameters`.
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

    # Adds outputs to an existing bridge.
    #
    # @option params [required, String] :bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to update.
    #
    # @option params [required, Array<Types::AddBridgeOutputRequest>] :outputs
    #   The outputs that you want to add to this bridge.
    #
    # @return [Types::AddBridgeOutputsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddBridgeOutputsResponse#bridge_arn #bridge_arn} => String
    #   * {Types::AddBridgeOutputsResponse#outputs #outputs} => Array&lt;Types::BridgeOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_bridge_outputs({
    #     bridge_arn: "AddBridgeOutputsRequestBridgeArnString", # required
    #     outputs: [ # required
    #       {
    #         network_output: {
    #           ip_address: "String", # required
    #           name: "String", # required
    #           network_name: "String", # required
    #           port: 1, # required
    #           protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #           ttl: 1, # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge_arn #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].flow_output.flow_arn #=> String
    #   resp.outputs[0].flow_output.flow_source_arn #=> String
    #   resp.outputs[0].flow_output.name #=> String
    #   resp.outputs[0].network_output.ip_address #=> String
    #   resp.outputs[0].network_output.name #=> String
    #   resp.outputs[0].network_output.network_name #=> String
    #   resp.outputs[0].network_output.port #=> Integer
    #   resp.outputs[0].network_output.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.outputs[0].network_output.ttl #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeOutputs AWS API Documentation
    #
    # @overload add_bridge_outputs(params = {})
    # @param [Hash] params ({})
    def add_bridge_outputs(params = {}, options = {})
      req = build_request(:add_bridge_outputs, params)
      req.send_request(options)
    end

    # Adds sources to an existing bridge.
    #
    # @option params [required, String] :bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to update.
    #
    # @option params [required, Array<Types::AddBridgeSourceRequest>] :sources
    #   The sources that you want to add to this bridge.
    #
    # @return [Types::AddBridgeSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddBridgeSourcesResponse#bridge_arn #bridge_arn} => String
    #   * {Types::AddBridgeSourcesResponse#sources #sources} => Array&lt;Types::BridgeSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_bridge_sources({
    #     bridge_arn: "BridgeArn", # required
    #     sources: [ # required
    #       {
    #         flow_source: {
    #           flow_arn: "AddBridgeFlowSourceRequestFlowArnString", # required
    #           flow_vpc_interface_attachment: {
    #             vpc_interface_name: "String",
    #           },
    #           name: "String", # required
    #         },
    #         network_source: {
    #           multicast_ip: "String", # required
    #           multicast_source_settings: {
    #             multicast_source_ip: "String",
    #           },
    #           name: "String", # required
    #           network_name: "String", # required
    #           port: 1, # required
    #           protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge_arn #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].flow_source.flow_arn #=> String
    #   resp.sources[0].flow_source.flow_vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.sources[0].flow_source.name #=> String
    #   resp.sources[0].flow_source.output_arn #=> String
    #   resp.sources[0].network_source.multicast_ip #=> String
    #   resp.sources[0].network_source.multicast_source_settings.multicast_source_ip #=> String
    #   resp.sources[0].network_source.name #=> String
    #   resp.sources[0].network_source.network_name #=> String
    #   resp.sources[0].network_source.port #=> Integer
    #   resp.sources[0].network_source.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddBridgeSources AWS API Documentation
    #
    # @overload add_bridge_sources(params = {})
    # @param [Hash] params ({})
    def add_bridge_sources(params = {}, options = {})
      req = build_request(:add_bridge_sources, params)
      req.send_request(options)
    end

    # Adds media streams to an existing flow. After you add a media stream
    # to a flow, you can associate it with a source and/or an output that
    # uses the ST 2110 JPEG XS or CDI protocol.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #
    # @option params [required, Array<Types::AddMediaStreamRequest>] :media_streams
    #   The media streams that you want to add to the flow.
    #
    # @return [Types::AddFlowMediaStreamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddFlowMediaStreamsResponse#flow_arn #flow_arn} => String
    #   * {Types::AddFlowMediaStreamsResponse#media_streams #media_streams} => Array&lt;Types::MediaStream&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_media_streams({
    #     flow_arn: "AddFlowMediaStreamsRequestFlowArnString", # required
    #     media_streams: [ # required
    #       {
    #         attributes: {
    #           fmtp: {
    #             channel_order: "String",
    #             colorimetry: "BT601", # accepts BT601, BT709, BT2020, BT2100, ST2065-1, ST2065-3, XYZ
    #             exact_framerate: "String",
    #             par: "String",
    #             range: "NARROW", # accepts NARROW, FULL, FULLPROTECT
    #             scan_mode: "progressive", # accepts progressive, interlace, progressive-segmented-frame
    #             tcs: "SDR", # accepts SDR, PQ, HLG, LINEAR, BT2100LINPQ, BT2100LINHLG, ST2065-1, ST428-1, DENSITY
    #           },
    #           lang: "String",
    #         },
    #         clock_rate: 1,
    #         description: "String",
    #         media_stream_id: 1, # required
    #         media_stream_name: "String", # required
    #         media_stream_type: "video", # required, accepts video, audio, ancillary-data
    #         video_format: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.media_streams #=> Array
    #   resp.media_streams[0].attributes.fmtp.channel_order #=> String
    #   resp.media_streams[0].attributes.fmtp.colorimetry #=> String, one of "BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"
    #   resp.media_streams[0].attributes.fmtp.exact_framerate #=> String
    #   resp.media_streams[0].attributes.fmtp.par #=> String
    #   resp.media_streams[0].attributes.fmtp.range #=> String, one of "NARROW", "FULL", "FULLPROTECT"
    #   resp.media_streams[0].attributes.fmtp.scan_mode #=> String, one of "progressive", "interlace", "progressive-segmented-frame"
    #   resp.media_streams[0].attributes.fmtp.tcs #=> String, one of "SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"
    #   resp.media_streams[0].attributes.lang #=> String
    #   resp.media_streams[0].clock_rate #=> Integer
    #   resp.media_streams[0].description #=> String
    #   resp.media_streams[0].fmt #=> Integer
    #   resp.media_streams[0].media_stream_id #=> Integer
    #   resp.media_streams[0].media_stream_name #=> String
    #   resp.media_streams[0].media_stream_type #=> String, one of "video", "audio", "ancillary-data"
    #   resp.media_streams[0].video_format #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowMediaStreams AWS API Documentation
    #
    # @overload add_flow_media_streams(params = {})
    # @param [Hash] params ({})
    def add_flow_media_streams(params = {}, options = {})
      req = build_request(:add_flow_media_streams, params)
      req.send_request(options)
    end

    # Adds outputs to an existing flow. You can create up to 50 outputs per
    # flow.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to add
    #   outputs to.
    #
    # @option params [required, Array<Types::AddOutputRequest>] :outputs
    #   A list of outputs that you want to add to the flow.
    #
    # @return [Types::AddFlowOutputsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddFlowOutputsResponse#flow_arn #flow_arn} => String
    #   * {Types::AddFlowOutputsResponse#outputs #outputs} => Array&lt;Types::Output&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_outputs({
    #     flow_arn: "AddFlowOutputsRequestFlowArnString", # required
    #     outputs: [ # required
    #       {
    #         cidr_allow_list: ["String"],
    #         description: "String",
    #         destination: "String",
    #         encryption: {
    #           algorithm: "aes128", # accepts aes128, aes192, aes256
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke", # accepts speke, static-key, srt-password
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String",
    #         },
    #         max_latency: 1,
    #         media_stream_output_configurations: [
    #           {
    #             destination_configurations: [
    #               {
    #                 destination_ip: "String", # required
    #                 destination_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 },
    #               },
    #             ],
    #             encoding_name: "jxsv", # required, accepts jxsv, raw, smpte291, pcm
    #             encoding_parameters: {
    #               compression_factor: 1.0, # required
    #               encoder_profile: "main", # required, accepts main, high
    #             },
    #             media_stream_name: "String", # required
    #           },
    #         ],
    #         min_latency: 1,
    #         name: "String",
    #         port: 1,
    #         protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #         remote_id: "String",
    #         sender_control_port: 1,
    #         smoothing_latency: 1,
    #         stream_id: "String",
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "String",
    #         },
    #         output_status: "ENABLED", # accepts ENABLED, DISABLED
    #         ndi_speed_hq_quality: 1,
    #         ndi_program_name: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.outputs #=> Array
    #   resp.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.outputs[0].description #=> String
    #   resp.outputs[0].destination #=> String
    #   resp.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.outputs[0].encryption.constant_initialization_vector #=> String
    #   resp.outputs[0].encryption.device_id #=> String
    #   resp.outputs[0].encryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.outputs[0].encryption.region #=> String
    #   resp.outputs[0].encryption.resource_id #=> String
    #   resp.outputs[0].encryption.role_arn #=> String
    #   resp.outputs[0].encryption.secret_arn #=> String
    #   resp.outputs[0].encryption.url #=> String
    #   resp.outputs[0].entitlement_arn #=> String
    #   resp.outputs[0].listener_address #=> String
    #   resp.outputs[0].media_live_input_arn #=> String
    #   resp.outputs[0].media_stream_output_configurations #=> Array
    #   resp.outputs[0].media_stream_output_configurations[0].destination_configurations #=> Array
    #   resp.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_ip #=> String
    #   resp.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_port #=> Integer
    #   resp.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface.name #=> String
    #   resp.outputs[0].media_stream_output_configurations[0].destination_configurations[0].outbound_ip #=> String
    #   resp.outputs[0].media_stream_output_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.outputs[0].media_stream_output_configurations[0].encoding_parameters.compression_factor #=> Float
    #   resp.outputs[0].media_stream_output_configurations[0].encoding_parameters.encoder_profile #=> String, one of "main", "high"
    #   resp.outputs[0].media_stream_output_configurations[0].media_stream_name #=> String
    #   resp.outputs[0].name #=> String
    #   resp.outputs[0].output_arn #=> String
    #   resp.outputs[0].port #=> Integer
    #   resp.outputs[0].transport.cidr_allow_list #=> Array
    #   resp.outputs[0].transport.cidr_allow_list[0] #=> String
    #   resp.outputs[0].transport.max_bitrate #=> Integer
    #   resp.outputs[0].transport.max_latency #=> Integer
    #   resp.outputs[0].transport.max_sync_buffer #=> Integer
    #   resp.outputs[0].transport.min_latency #=> Integer
    #   resp.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.outputs[0].transport.remote_id #=> String
    #   resp.outputs[0].transport.sender_control_port #=> Integer
    #   resp.outputs[0].transport.sender_ip_address #=> String
    #   resp.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.outputs[0].transport.source_listener_address #=> String
    #   resp.outputs[0].transport.source_listener_port #=> Integer
    #   resp.outputs[0].transport.stream_id #=> String
    #   resp.outputs[0].transport.ndi_speed_hq_quality #=> Integer
    #   resp.outputs[0].transport.ndi_program_name #=> String
    #   resp.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.outputs[0].bridge_arn #=> String
    #   resp.outputs[0].bridge_ports #=> Array
    #   resp.outputs[0].bridge_ports[0] #=> Integer
    #   resp.outputs[0].output_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.outputs[0].peer_ip_address #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowOutputs AWS API Documentation
    #
    # @overload add_flow_outputs(params = {})
    # @param [Hash] params ({})
    def add_flow_outputs(params = {}, options = {})
      req = build_request(:add_flow_outputs, params)
      req.send_request(options)
    end

    # Adds sources to a flow.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to update.
    #
    # @option params [required, Array<Types::SetSourceRequest>] :sources
    #   A list of sources that you want to add to the flow.
    #
    # @return [Types::AddFlowSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddFlowSourcesResponse#flow_arn #flow_arn} => String
    #   * {Types::AddFlowSourcesResponse#sources #sources} => Array&lt;Types::Source&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_sources({
    #     flow_arn: "AddFlowSourcesRequestFlowArnString", # required
    #     sources: [ # required
    #       {
    #         decryption: {
    #           algorithm: "aes128", # accepts aes128, aes192, aes256
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke", # accepts speke, static-key, srt-password
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String",
    #         },
    #         description: "String",
    #         entitlement_arn: "SetSourceRequestEntitlementArnString",
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         max_sync_buffer: 1,
    #         media_stream_source_configurations: [
    #           {
    #             encoding_name: "jxsv", # required, accepts jxsv, raw, smpte291, pcm
    #             input_configurations: [
    #               {
    #                 input_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 },
    #               },
    #             ],
    #             media_stream_name: "String", # required
    #           },
    #         ],
    #         min_latency: 1,
    #         name: "String",
    #         protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #         sender_control_port: 1,
    #         sender_ip_address: "String",
    #         source_listener_address: "String",
    #         source_listener_port: 1,
    #         stream_id: "String",
    #         vpc_interface_name: "String",
    #         whitelist_cidr: "String",
    #         gateway_bridge_source: {
    #           bridge_arn: "SetGatewayBridgeSourceRequestBridgeArnString", # required
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String",
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.sources[0].decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.sources[0].decryption.constant_initialization_vector #=> String
    #   resp.sources[0].decryption.device_id #=> String
    #   resp.sources[0].decryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.sources[0].decryption.region #=> String
    #   resp.sources[0].decryption.resource_id #=> String
    #   resp.sources[0].decryption.role_arn #=> String
    #   resp.sources[0].decryption.secret_arn #=> String
    #   resp.sources[0].decryption.url #=> String
    #   resp.sources[0].description #=> String
    #   resp.sources[0].entitlement_arn #=> String
    #   resp.sources[0].ingest_ip #=> String
    #   resp.sources[0].ingest_port #=> Integer
    #   resp.sources[0].media_stream_source_configurations #=> Array
    #   resp.sources[0].media_stream_source_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.sources[0].media_stream_source_configurations[0].input_configurations #=> Array
    #   resp.sources[0].media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.sources[0].media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.sources[0].media_stream_source_configurations[0].input_configurations[0].interface.name #=> String
    #   resp.sources[0].media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.sources[0].name #=> String
    #   resp.sources[0].sender_control_port #=> Integer
    #   resp.sources[0].sender_ip_address #=> String
    #   resp.sources[0].source_arn #=> String
    #   resp.sources[0].transport.cidr_allow_list #=> Array
    #   resp.sources[0].transport.cidr_allow_list[0] #=> String
    #   resp.sources[0].transport.max_bitrate #=> Integer
    #   resp.sources[0].transport.max_latency #=> Integer
    #   resp.sources[0].transport.max_sync_buffer #=> Integer
    #   resp.sources[0].transport.min_latency #=> Integer
    #   resp.sources[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.sources[0].transport.remote_id #=> String
    #   resp.sources[0].transport.sender_control_port #=> Integer
    #   resp.sources[0].transport.sender_ip_address #=> String
    #   resp.sources[0].transport.smoothing_latency #=> Integer
    #   resp.sources[0].transport.source_listener_address #=> String
    #   resp.sources[0].transport.source_listener_port #=> Integer
    #   resp.sources[0].transport.stream_id #=> String
    #   resp.sources[0].transport.ndi_speed_hq_quality #=> Integer
    #   resp.sources[0].transport.ndi_program_name #=> String
    #   resp.sources[0].vpc_interface_name #=> String
    #   resp.sources[0].whitelist_cidr #=> String
    #   resp.sources[0].gateway_bridge_source.bridge_arn #=> String
    #   resp.sources[0].gateway_bridge_source.vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.sources[0].peer_ip_address #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowSources AWS API Documentation
    #
    # @overload add_flow_sources(params = {})
    # @param [Hash] params ({})
    def add_flow_sources(params = {}, options = {})
      req = build_request(:add_flow_sources, params)
      req.send_request(options)
    end

    # Adds VPC interfaces to a flow.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to update.
    #
    # @option params [required, Array<Types::VpcInterfaceRequest>] :vpc_interfaces
    #   A list of VPC interfaces that you want to add to the flow.
    #
    # @return [Types::AddFlowVpcInterfacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddFlowVpcInterfacesResponse#flow_arn #flow_arn} => String
    #   * {Types::AddFlowVpcInterfacesResponse#vpc_interfaces #vpc_interfaces} => Array&lt;Types::VpcInterface&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_flow_vpc_interfaces({
    #     flow_arn: "AddFlowVpcInterfacesRequestFlowArnString", # required
    #     vpc_interfaces: [ # required
    #       {
    #         name: "String", # required
    #         network_interface_type: "ena", # accepts ena, efa
    #         role_arn: "String", # required
    #         security_group_ids: ["String"], # required
    #         subnet_id: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.vpc_interfaces #=> Array
    #   resp.vpc_interfaces[0].name #=> String
    #   resp.vpc_interfaces[0].network_interface_ids #=> Array
    #   resp.vpc_interfaces[0].network_interface_ids[0] #=> String
    #   resp.vpc_interfaces[0].network_interface_type #=> String, one of "ena", "efa"
    #   resp.vpc_interfaces[0].role_arn #=> String
    #   resp.vpc_interfaces[0].security_group_ids #=> Array
    #   resp.vpc_interfaces[0].security_group_ids[0] #=> String
    #   resp.vpc_interfaces[0].subnet_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowVpcInterfaces AWS API Documentation
    #
    # @overload add_flow_vpc_interfaces(params = {})
    # @param [Hash] params ({})
    def add_flow_vpc_interfaces(params = {}, options = {})
      req = build_request(:add_flow_vpc_interfaces, params)
      req.send_request(options)
    end

    # Creates a new bridge. The request must include one source.
    #
    # @option params [Types::AddEgressGatewayBridgeRequest] :egress_gateway_bridge
    #   An egress bridge is a cloud-to-ground bridge. The content comes from
    #   an existing MediaConnect flow and is delivered to your premises.
    #
    # @option params [Types::AddIngressGatewayBridgeRequest] :ingress_gateway_bridge
    #   An ingress bridge is a ground-to-cloud bridge. The content originates
    #   at your premises and is delivered to the cloud.
    #
    # @option params [required, String] :name
    #   The name of the bridge. This name can not be modified after the bridge
    #   is created.
    #
    # @option params [Array<Types::AddBridgeOutputRequest>] :outputs
    #   The outputs that you want to add to this bridge.
    #
    # @option params [required, String] :placement_arn
    #   The bridge placement Amazon Resource Number (ARN).
    #
    # @option params [Types::FailoverConfig] :source_failover_config
    #   The settings for source failover.
    #
    # @option params [required, Array<Types::AddBridgeSourceRequest>] :sources
    #   The sources that you want to add to this bridge.
    #
    # @return [Types::CreateBridgeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBridgeResponse#bridge #bridge} => Types::Bridge
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bridge({
    #     egress_gateway_bridge: {
    #       max_bitrate: 1, # required
    #     },
    #     ingress_gateway_bridge: {
    #       max_bitrate: 1, # required
    #       max_outputs: 1, # required
    #     },
    #     name: "String", # required
    #     outputs: [
    #       {
    #         network_output: {
    #           ip_address: "String", # required
    #           name: "String", # required
    #           network_name: "String", # required
    #           port: 1, # required
    #           protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #           ttl: 1, # required
    #         },
    #       },
    #     ],
    #     placement_arn: "String", # required
    #     source_failover_config: {
    #       failover_mode: "MERGE", # accepts MERGE, FAILOVER
    #       recovery_window: 1,
    #       source_priority: {
    #         primary_source: "String",
    #       },
    #       state: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     sources: [ # required
    #       {
    #         flow_source: {
    #           flow_arn: "AddBridgeFlowSourceRequestFlowArnString", # required
    #           flow_vpc_interface_attachment: {
    #             vpc_interface_name: "String",
    #           },
    #           name: "String", # required
    #         },
    #         network_source: {
    #           multicast_ip: "String", # required
    #           multicast_source_settings: {
    #             multicast_source_ip: "String",
    #           },
    #           name: "String", # required
    #           network_name: "String", # required
    #           port: 1, # required
    #           protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge.bridge_arn #=> String
    #   resp.bridge.bridge_messages #=> Array
    #   resp.bridge.bridge_messages[0].code #=> String
    #   resp.bridge.bridge_messages[0].message #=> String
    #   resp.bridge.bridge_messages[0].resource_name #=> String
    #   resp.bridge.bridge_state #=> String, one of "CREATING", "STANDBY", "STARTING", "DEPLOYING", "ACTIVE", "STOPPING", "DELETING", "DELETED", "START_FAILED", "START_PENDING", "STOP_FAILED", "UPDATING"
    #   resp.bridge.egress_gateway_bridge.instance_id #=> String
    #   resp.bridge.egress_gateway_bridge.max_bitrate #=> Integer
    #   resp.bridge.ingress_gateway_bridge.instance_id #=> String
    #   resp.bridge.ingress_gateway_bridge.max_bitrate #=> Integer
    #   resp.bridge.ingress_gateway_bridge.max_outputs #=> Integer
    #   resp.bridge.name #=> String
    #   resp.bridge.outputs #=> Array
    #   resp.bridge.outputs[0].flow_output.flow_arn #=> String
    #   resp.bridge.outputs[0].flow_output.flow_source_arn #=> String
    #   resp.bridge.outputs[0].flow_output.name #=> String
    #   resp.bridge.outputs[0].network_output.ip_address #=> String
    #   resp.bridge.outputs[0].network_output.name #=> String
    #   resp.bridge.outputs[0].network_output.network_name #=> String
    #   resp.bridge.outputs[0].network_output.port #=> Integer
    #   resp.bridge.outputs[0].network_output.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.bridge.outputs[0].network_output.ttl #=> Integer
    #   resp.bridge.placement_arn #=> String
    #   resp.bridge.source_failover_config.failover_mode #=> String, one of "MERGE", "FAILOVER"
    #   resp.bridge.source_failover_config.recovery_window #=> Integer
    #   resp.bridge.source_failover_config.source_priority.primary_source #=> String
    #   resp.bridge.source_failover_config.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.bridge.sources #=> Array
    #   resp.bridge.sources[0].flow_source.flow_arn #=> String
    #   resp.bridge.sources[0].flow_source.flow_vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.bridge.sources[0].flow_source.name #=> String
    #   resp.bridge.sources[0].flow_source.output_arn #=> String
    #   resp.bridge.sources[0].network_source.multicast_ip #=> String
    #   resp.bridge.sources[0].network_source.multicast_source_settings.multicast_source_ip #=> String
    #   resp.bridge.sources[0].network_source.name #=> String
    #   resp.bridge.sources[0].network_source.network_name #=> String
    #   resp.bridge.sources[0].network_source.port #=> Integer
    #   resp.bridge.sources[0].network_source.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateBridge AWS API Documentation
    #
    # @overload create_bridge(params = {})
    # @param [Hash] params ({})
    def create_bridge(params = {}, options = {})
      req = build_request(:create_bridge, params)
      req.send_request(options)
    end

    # Creates a new flow. The request must include one source. The request
    # optionally can include outputs (up to 50) and entitlements (up to 50).
    #
    # @option params [String] :availability_zone
    #   The Availability Zone that you want to create the flow in. These
    #   options are limited to the Availability Zones within the current
    #   Amazon Web Services Region.
    #
    # @option params [Array<Types::GrantEntitlementRequest>] :entitlements
    #   The entitlements that you want to grant on a flow.
    #
    # @option params [Array<Types::AddMediaStreamRequest>] :media_streams
    #   The media streams that you want to add to the flow. You can associate
    #   these media streams with sources and outputs on the flow.
    #
    # @option params [required, String] :name
    #   The name of the flow.
    #
    # @option params [Array<Types::AddOutputRequest>] :outputs
    #   The outputs that you want to add to this flow.
    #
    # @option params [Types::SetSourceRequest] :source
    #   The settings for the source that you want to use for the new flow.
    #
    # @option params [Types::FailoverConfig] :source_failover_config
    #   The settings for source failover.
    #
    # @option params [Array<Types::SetSourceRequest>] :sources
    #   The sources that are assigned to the flow.
    #
    # @option params [Array<Types::VpcInterfaceRequest>] :vpc_interfaces
    #   The VPC interfaces you want on the flow.
    #
    # @option params [Types::AddMaintenance] :maintenance
    #   The maintenance settings you want to use for the flow.
    #
    # @option params [Types::MonitoringConfig] :source_monitoring_config
    #   The settings for source monitoring.
    #
    # @option params [String] :flow_size
    #   Determines the processing capacity and feature set of the flow. Set
    #   this optional parameter to `LARGE` if you want to enable NDI outputs
    #   on the flow.
    #
    # @option params [Types::NdiConfig] :ndi_config
    #   Specifies the configuration settings for NDI outputs. Required when
    #   the flow includes NDI outputs.
    #
    # @return [Types::CreateFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFlowResponse#flow #flow} => Types::Flow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flow({
    #     availability_zone: "String",
    #     entitlements: [
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: "String",
    #         encryption: {
    #           algorithm: "aes128", # accepts aes128, aes192, aes256
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke", # accepts speke, static-key, srt-password
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String",
    #         },
    #         entitlement_status: "ENABLED", # accepts ENABLED, DISABLED
    #         name: "String",
    #         subscribers: ["String"], # required
    #       },
    #     ],
    #     media_streams: [
    #       {
    #         attributes: {
    #           fmtp: {
    #             channel_order: "String",
    #             colorimetry: "BT601", # accepts BT601, BT709, BT2020, BT2100, ST2065-1, ST2065-3, XYZ
    #             exact_framerate: "String",
    #             par: "String",
    #             range: "NARROW", # accepts NARROW, FULL, FULLPROTECT
    #             scan_mode: "progressive", # accepts progressive, interlace, progressive-segmented-frame
    #             tcs: "SDR", # accepts SDR, PQ, HLG, LINEAR, BT2100LINPQ, BT2100LINHLG, ST2065-1, ST428-1, DENSITY
    #           },
    #           lang: "String",
    #         },
    #         clock_rate: 1,
    #         description: "String",
    #         media_stream_id: 1, # required
    #         media_stream_name: "String", # required
    #         media_stream_type: "video", # required, accepts video, audio, ancillary-data
    #         video_format: "String",
    #       },
    #     ],
    #     name: "String", # required
    #     outputs: [
    #       {
    #         cidr_allow_list: ["String"],
    #         description: "String",
    #         destination: "String",
    #         encryption: {
    #           algorithm: "aes128", # accepts aes128, aes192, aes256
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke", # accepts speke, static-key, srt-password
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String",
    #         },
    #         max_latency: 1,
    #         media_stream_output_configurations: [
    #           {
    #             destination_configurations: [
    #               {
    #                 destination_ip: "String", # required
    #                 destination_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 },
    #               },
    #             ],
    #             encoding_name: "jxsv", # required, accepts jxsv, raw, smpte291, pcm
    #             encoding_parameters: {
    #               compression_factor: 1.0, # required
    #               encoder_profile: "main", # required, accepts main, high
    #             },
    #             media_stream_name: "String", # required
    #           },
    #         ],
    #         min_latency: 1,
    #         name: "String",
    #         port: 1,
    #         protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #         remote_id: "String",
    #         sender_control_port: 1,
    #         smoothing_latency: 1,
    #         stream_id: "String",
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "String",
    #         },
    #         output_status: "ENABLED", # accepts ENABLED, DISABLED
    #         ndi_speed_hq_quality: 1,
    #         ndi_program_name: "String",
    #       },
    #     ],
    #     source: {
    #       decryption: {
    #         algorithm: "aes128", # accepts aes128, aes192, aes256
    #         constant_initialization_vector: "String",
    #         device_id: "String",
    #         key_type: "speke", # accepts speke, static-key, srt-password
    #         region: "String",
    #         resource_id: "String",
    #         role_arn: "String", # required
    #         secret_arn: "String",
    #         url: "String",
    #       },
    #       description: "String",
    #       entitlement_arn: "SetSourceRequestEntitlementArnString",
    #       ingest_port: 1,
    #       max_bitrate: 1,
    #       max_latency: 1,
    #       max_sync_buffer: 1,
    #       media_stream_source_configurations: [
    #         {
    #           encoding_name: "jxsv", # required, accepts jxsv, raw, smpte291, pcm
    #           input_configurations: [
    #             {
    #               input_port: 1, # required
    #               interface: { # required
    #                 name: "String", # required
    #               },
    #             },
    #           ],
    #           media_stream_name: "String", # required
    #         },
    #       ],
    #       min_latency: 1,
    #       name: "String",
    #       protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #       sender_control_port: 1,
    #       sender_ip_address: "String",
    #       source_listener_address: "String",
    #       source_listener_port: 1,
    #       stream_id: "String",
    #       vpc_interface_name: "String",
    #       whitelist_cidr: "String",
    #       gateway_bridge_source: {
    #         bridge_arn: "SetGatewayBridgeSourceRequestBridgeArnString", # required
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "String",
    #         },
    #       },
    #     },
    #     source_failover_config: {
    #       failover_mode: "MERGE", # accepts MERGE, FAILOVER
    #       recovery_window: 1,
    #       source_priority: {
    #         primary_source: "String",
    #       },
    #       state: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     sources: [
    #       {
    #         decryption: {
    #           algorithm: "aes128", # accepts aes128, aes192, aes256
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke", # accepts speke, static-key, srt-password
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String",
    #         },
    #         description: "String",
    #         entitlement_arn: "SetSourceRequestEntitlementArnString",
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         max_sync_buffer: 1,
    #         media_stream_source_configurations: [
    #           {
    #             encoding_name: "jxsv", # required, accepts jxsv, raw, smpte291, pcm
    #             input_configurations: [
    #               {
    #                 input_port: 1, # required
    #                 interface: { # required
    #                   name: "String", # required
    #                 },
    #               },
    #             ],
    #             media_stream_name: "String", # required
    #           },
    #         ],
    #         min_latency: 1,
    #         name: "String",
    #         protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #         sender_control_port: 1,
    #         sender_ip_address: "String",
    #         source_listener_address: "String",
    #         source_listener_port: 1,
    #         stream_id: "String",
    #         vpc_interface_name: "String",
    #         whitelist_cidr: "String",
    #         gateway_bridge_source: {
    #           bridge_arn: "SetGatewayBridgeSourceRequestBridgeArnString", # required
    #           vpc_interface_attachment: {
    #             vpc_interface_name: "String",
    #           },
    #         },
    #       },
    #     ],
    #     vpc_interfaces: [
    #       {
    #         name: "String", # required
    #         network_interface_type: "ena", # accepts ena, efa
    #         role_arn: "String", # required
    #         security_group_ids: ["String"], # required
    #         subnet_id: "String", # required
    #       },
    #     ],
    #     maintenance: {
    #       maintenance_day: "Monday", # required, accepts Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    #       maintenance_start_hour: "String", # required
    #     },
    #     source_monitoring_config: {
    #       thumbnail_state: "ENABLED", # accepts ENABLED, DISABLED
    #       audio_monitoring_settings: [
    #         {
    #           silent_audio: {
    #             state: "ENABLED", # accepts ENABLED, DISABLED
    #             threshold_seconds: 1,
    #           },
    #         },
    #       ],
    #       content_quality_analysis_state: "ENABLED", # accepts ENABLED, DISABLED
    #       video_monitoring_settings: [
    #         {
    #           black_frames: {
    #             state: "ENABLED", # accepts ENABLED, DISABLED
    #             threshold_seconds: 1,
    #           },
    #           frozen_frames: {
    #             state: "ENABLED", # accepts ENABLED, DISABLED
    #             threshold_seconds: 1,
    #           },
    #         },
    #       ],
    #     },
    #     flow_size: "MEDIUM", # accepts MEDIUM, LARGE
    #     ndi_config: {
    #       ndi_state: "ENABLED", # accepts ENABLED, DISABLED
    #       machine_name: "String",
    #       ndi_discovery_servers: [
    #         {
    #           discovery_server_address: "String", # required
    #           discovery_server_port: 1,
    #           vpc_interface_adapter: "String", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.flow.availability_zone #=> String
    #   resp.flow.description #=> String
    #   resp.flow.egress_ip #=> String
    #   resp.flow.entitlements #=> Array
    #   resp.flow.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.entitlements[0].description #=> String
    #   resp.flow.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.entitlements[0].encryption.device_id #=> String
    #   resp.flow.entitlements[0].encryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.entitlements[0].encryption.region #=> String
    #   resp.flow.entitlements[0].encryption.resource_id #=> String
    #   resp.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.flow.entitlements[0].encryption.url #=> String
    #   resp.flow.entitlements[0].entitlement_arn #=> String
    #   resp.flow.entitlements[0].entitlement_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.entitlements[0].name #=> String
    #   resp.flow.entitlements[0].subscribers #=> Array
    #   resp.flow.entitlements[0].subscribers[0] #=> String
    #   resp.flow.flow_arn #=> String
    #   resp.flow.media_streams #=> Array
    #   resp.flow.media_streams[0].attributes.fmtp.channel_order #=> String
    #   resp.flow.media_streams[0].attributes.fmtp.colorimetry #=> String, one of "BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"
    #   resp.flow.media_streams[0].attributes.fmtp.exact_framerate #=> String
    #   resp.flow.media_streams[0].attributes.fmtp.par #=> String
    #   resp.flow.media_streams[0].attributes.fmtp.range #=> String, one of "NARROW", "FULL", "FULLPROTECT"
    #   resp.flow.media_streams[0].attributes.fmtp.scan_mode #=> String, one of "progressive", "interlace", "progressive-segmented-frame"
    #   resp.flow.media_streams[0].attributes.fmtp.tcs #=> String, one of "SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"
    #   resp.flow.media_streams[0].attributes.lang #=> String
    #   resp.flow.media_streams[0].clock_rate #=> Integer
    #   resp.flow.media_streams[0].description #=> String
    #   resp.flow.media_streams[0].fmt #=> Integer
    #   resp.flow.media_streams[0].media_stream_id #=> Integer
    #   resp.flow.media_streams[0].media_stream_name #=> String
    #   resp.flow.media_streams[0].media_stream_type #=> String, one of "video", "audio", "ancillary-data"
    #   resp.flow.media_streams[0].video_format #=> String
    #   resp.flow.name #=> String
    #   resp.flow.outputs #=> Array
    #   resp.flow.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.outputs[0].description #=> String
    #   resp.flow.outputs[0].destination #=> String
    #   resp.flow.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.outputs[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.outputs[0].encryption.device_id #=> String
    #   resp.flow.outputs[0].encryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.outputs[0].encryption.region #=> String
    #   resp.flow.outputs[0].encryption.resource_id #=> String
    #   resp.flow.outputs[0].encryption.role_arn #=> String
    #   resp.flow.outputs[0].encryption.secret_arn #=> String
    #   resp.flow.outputs[0].encryption.url #=> String
    #   resp.flow.outputs[0].entitlement_arn #=> String
    #   resp.flow.outputs[0].listener_address #=> String
    #   resp.flow.outputs[0].media_live_input_arn #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations #=> Array
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations #=> Array
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_ip #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_port #=> Integer
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface.name #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].outbound_ip #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.compression_factor #=> Float
    #   resp.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.encoder_profile #=> String, one of "main", "high"
    #   resp.flow.outputs[0].media_stream_output_configurations[0].media_stream_name #=> String
    #   resp.flow.outputs[0].name #=> String
    #   resp.flow.outputs[0].output_arn #=> String
    #   resp.flow.outputs[0].port #=> Integer
    #   resp.flow.outputs[0].transport.cidr_allow_list #=> Array
    #   resp.flow.outputs[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.flow.outputs[0].transport.max_sync_buffer #=> Integer
    #   resp.flow.outputs[0].transport.min_latency #=> Integer
    #   resp.flow.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.flow.outputs[0].transport.remote_id #=> String
    #   resp.flow.outputs[0].transport.sender_control_port #=> Integer
    #   resp.flow.outputs[0].transport.sender_ip_address #=> String
    #   resp.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.flow.outputs[0].transport.source_listener_address #=> String
    #   resp.flow.outputs[0].transport.source_listener_port #=> Integer
    #   resp.flow.outputs[0].transport.stream_id #=> String
    #   resp.flow.outputs[0].transport.ndi_speed_hq_quality #=> Integer
    #   resp.flow.outputs[0].transport.ndi_program_name #=> String
    #   resp.flow.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.outputs[0].bridge_arn #=> String
    #   resp.flow.outputs[0].bridge_ports #=> Array
    #   resp.flow.outputs[0].bridge_ports[0] #=> Integer
    #   resp.flow.outputs[0].output_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.outputs[0].peer_ip_address #=> String
    #   resp.flow.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.source.decryption.constant_initialization_vector #=> String
    #   resp.flow.source.decryption.device_id #=> String
    #   resp.flow.source.decryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.source.decryption.region #=> String
    #   resp.flow.source.decryption.resource_id #=> String
    #   resp.flow.source.decryption.role_arn #=> String
    #   resp.flow.source.decryption.secret_arn #=> String
    #   resp.flow.source.decryption.url #=> String
    #   resp.flow.source.description #=> String
    #   resp.flow.source.entitlement_arn #=> String
    #   resp.flow.source.ingest_ip #=> String
    #   resp.flow.source.ingest_port #=> Integer
    #   resp.flow.source.media_stream_source_configurations #=> Array
    #   resp.flow.source.media_stream_source_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations #=> Array
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations[0].interface.name #=> String
    #   resp.flow.source.media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.flow.source.name #=> String
    #   resp.flow.source.sender_control_port #=> Integer
    #   resp.flow.source.sender_ip_address #=> String
    #   resp.flow.source.source_arn #=> String
    #   resp.flow.source.transport.cidr_allow_list #=> Array
    #   resp.flow.source.transport.cidr_allow_list[0] #=> String
    #   resp.flow.source.transport.max_bitrate #=> Integer
    #   resp.flow.source.transport.max_latency #=> Integer
    #   resp.flow.source.transport.max_sync_buffer #=> Integer
    #   resp.flow.source.transport.min_latency #=> Integer
    #   resp.flow.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.flow.source.transport.remote_id #=> String
    #   resp.flow.source.transport.sender_control_port #=> Integer
    #   resp.flow.source.transport.sender_ip_address #=> String
    #   resp.flow.source.transport.smoothing_latency #=> Integer
    #   resp.flow.source.transport.source_listener_address #=> String
    #   resp.flow.source.transport.source_listener_port #=> Integer
    #   resp.flow.source.transport.stream_id #=> String
    #   resp.flow.source.transport.ndi_speed_hq_quality #=> Integer
    #   resp.flow.source.transport.ndi_program_name #=> String
    #   resp.flow.source.vpc_interface_name #=> String
    #   resp.flow.source.whitelist_cidr #=> String
    #   resp.flow.source.gateway_bridge_source.bridge_arn #=> String
    #   resp.flow.source.gateway_bridge_source.vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.source.peer_ip_address #=> String
    #   resp.flow.source_failover_config.failover_mode #=> String, one of "MERGE", "FAILOVER"
    #   resp.flow.source_failover_config.recovery_window #=> Integer
    #   resp.flow.source_failover_config.source_priority.primary_source #=> String
    #   resp.flow.source_failover_config.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.sources #=> Array
    #   resp.flow.sources[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.sources[0].decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.sources[0].decryption.constant_initialization_vector #=> String
    #   resp.flow.sources[0].decryption.device_id #=> String
    #   resp.flow.sources[0].decryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.sources[0].decryption.region #=> String
    #   resp.flow.sources[0].decryption.resource_id #=> String
    #   resp.flow.sources[0].decryption.role_arn #=> String
    #   resp.flow.sources[0].decryption.secret_arn #=> String
    #   resp.flow.sources[0].decryption.url #=> String
    #   resp.flow.sources[0].description #=> String
    #   resp.flow.sources[0].entitlement_arn #=> String
    #   resp.flow.sources[0].ingest_ip #=> String
    #   resp.flow.sources[0].ingest_port #=> Integer
    #   resp.flow.sources[0].media_stream_source_configurations #=> Array
    #   resp.flow.sources[0].media_stream_source_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations #=> Array
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations[0].interface.name #=> String
    #   resp.flow.sources[0].media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.flow.sources[0].name #=> String
    #   resp.flow.sources[0].sender_control_port #=> Integer
    #   resp.flow.sources[0].sender_ip_address #=> String
    #   resp.flow.sources[0].source_arn #=> String
    #   resp.flow.sources[0].transport.cidr_allow_list #=> Array
    #   resp.flow.sources[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.sources[0].transport.max_bitrate #=> Integer
    #   resp.flow.sources[0].transport.max_latency #=> Integer
    #   resp.flow.sources[0].transport.max_sync_buffer #=> Integer
    #   resp.flow.sources[0].transport.min_latency #=> Integer
    #   resp.flow.sources[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.flow.sources[0].transport.remote_id #=> String
    #   resp.flow.sources[0].transport.sender_control_port #=> Integer
    #   resp.flow.sources[0].transport.sender_ip_address #=> String
    #   resp.flow.sources[0].transport.smoothing_latency #=> Integer
    #   resp.flow.sources[0].transport.source_listener_address #=> String
    #   resp.flow.sources[0].transport.source_listener_port #=> Integer
    #   resp.flow.sources[0].transport.stream_id #=> String
    #   resp.flow.sources[0].transport.ndi_speed_hq_quality #=> Integer
    #   resp.flow.sources[0].transport.ndi_program_name #=> String
    #   resp.flow.sources[0].vpc_interface_name #=> String
    #   resp.flow.sources[0].whitelist_cidr #=> String
    #   resp.flow.sources[0].gateway_bridge_source.bridge_arn #=> String
    #   resp.flow.sources[0].gateway_bridge_source.vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.sources[0].peer_ip_address #=> String
    #   resp.flow.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #   resp.flow.vpc_interfaces #=> Array
    #   resp.flow.vpc_interfaces[0].name #=> String
    #   resp.flow.vpc_interfaces[0].network_interface_ids #=> Array
    #   resp.flow.vpc_interfaces[0].network_interface_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].network_interface_type #=> String, one of "ena", "efa"
    #   resp.flow.vpc_interfaces[0].role_arn #=> String
    #   resp.flow.vpc_interfaces[0].security_group_ids #=> Array
    #   resp.flow.vpc_interfaces[0].security_group_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].subnet_id #=> String
    #   resp.flow.maintenance.maintenance_day #=> String, one of "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"
    #   resp.flow.maintenance.maintenance_deadline #=> String
    #   resp.flow.maintenance.maintenance_scheduled_date #=> String
    #   resp.flow.maintenance.maintenance_start_hour #=> String
    #   resp.flow.source_monitoring_config.thumbnail_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.audio_monitoring_settings #=> Array
    #   resp.flow.source_monitoring_config.audio_monitoring_settings[0].silent_audio.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.audio_monitoring_settings[0].silent_audio.threshold_seconds #=> Integer
    #   resp.flow.source_monitoring_config.content_quality_analysis_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.video_monitoring_settings #=> Array
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].black_frames.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].black_frames.threshold_seconds #=> Integer
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].frozen_frames.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].frozen_frames.threshold_seconds #=> Integer
    #   resp.flow.flow_size #=> String, one of "MEDIUM", "LARGE"
    #   resp.flow.ndi_config.ndi_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.ndi_config.machine_name #=> String
    #   resp.flow.ndi_config.ndi_discovery_servers #=> Array
    #   resp.flow.ndi_config.ndi_discovery_servers[0].discovery_server_address #=> String
    #   resp.flow.ndi_config.ndi_discovery_servers[0].discovery_server_port #=> Integer
    #   resp.flow.ndi_config.ndi_discovery_servers[0].vpc_interface_adapter #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateFlow AWS API Documentation
    #
    # @overload create_flow(params = {})
    # @param [Hash] params ({})
    def create_flow(params = {}, options = {})
      req = build_request(:create_flow, params)
      req.send_request(options)
    end

    # Creates a new gateway. The request must include at least one network
    # (up to four).
    #
    # @option params [required, Array<String>] :egress_cidr_blocks
    #   The range of IP addresses that are allowed to contribute content or
    #   initiate output requests for flows communicating with this gateway.
    #   These IP addresses should be in the form of a Classless Inter-Domain
    #   Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    # @option params [required, String] :name
    #   The name of the gateway. This name can not be modified after the
    #   gateway is created.
    #
    # @option params [required, Array<Types::GatewayNetwork>] :networks
    #   The list of networks that you want to add to the gateway.
    #
    # @return [Types::CreateGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGatewayResponse#gateway #gateway} => Types::Gateway
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway({
    #     egress_cidr_blocks: ["String"], # required
    #     name: "String", # required
    #     networks: [ # required
    #       {
    #         cidr_block: "String", # required
    #         name: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway.egress_cidr_blocks #=> Array
    #   resp.gateway.egress_cidr_blocks[0] #=> String
    #   resp.gateway.gateway_arn #=> String
    #   resp.gateway.gateway_messages #=> Array
    #   resp.gateway.gateway_messages[0].code #=> String
    #   resp.gateway.gateway_messages[0].message #=> String
    #   resp.gateway.gateway_messages[0].resource_name #=> String
    #   resp.gateway.gateway_state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "ERROR", "DELETING", "DELETED"
    #   resp.gateway.name #=> String
    #   resp.gateway.networks #=> Array
    #   resp.gateway.networks[0].cidr_block #=> String
    #   resp.gateway.networks[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateGateway AWS API Documentation
    #
    # @overload create_gateway(params = {})
    # @param [Hash] params ({})
    def create_gateway(params = {}, options = {})
      req = build_request(:create_gateway, params)
      req.send_request(options)
    end

    # Deletes a bridge. Before you can delete a bridge, you must stop the
    # bridge.
    #
    # @option params [required, String] :bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to delete.
    #
    # @return [Types::DeleteBridgeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBridgeResponse#bridge_arn #bridge_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bridge({
    #     bridge_arn: "DeleteBridgeRequestBridgeArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteBridge AWS API Documentation
    #
    # @overload delete_bridge(params = {})
    # @param [Hash] params ({})
    def delete_bridge(params = {}, options = {})
      req = build_request(:delete_bridge, params)
      req.send_request(options)
    end

    # Deletes a flow. Before you can delete a flow, you must stop the flow.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to delete.
    #
    # @return [Types::DeleteFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFlowResponse#flow_arn #flow_arn} => String
    #   * {Types::DeleteFlowResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flow({
    #     flow_arn: "DeleteFlowRequestFlowArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteFlow AWS API Documentation
    #
    # @overload delete_flow(params = {})
    # @param [Hash] params ({})
    def delete_flow(params = {}, options = {})
      req = build_request(:delete_flow, params)
      req.send_request(options)
    end

    # Deletes a gateway. Before you can delete a gateway, you must
    # deregister its instances and delete its bridges.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway that you want to delete.
    #
    # @return [Types::DeleteGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGatewayResponse#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway({
    #     gateway_arn: "DeleteGatewayRequestGatewayArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteGateway AWS API Documentation
    #
    # @overload delete_gateway(params = {})
    # @param [Hash] params ({})
    def delete_gateway(params = {}, options = {})
      req = build_request(:delete_gateway, params)
      req.send_request(options)
    end

    # Deregisters an instance. Before you deregister an instance, all
    # bridges running on the instance must be stopped. If you want to
    # deregister an instance without stopping the bridges, you must use the
    # --force option.
    #
    # @option params [Boolean] :force
    #   Force the deregistration of an instance. Force will deregister an
    #   instance, even if there are bridges running on it.
    #
    # @option params [required, String] :gateway_instance_arn
    #   The Amazon Resource Name (ARN) of the gateway that contains the
    #   instance that you want to deregister.
    #
    # @return [Types::DeregisterGatewayInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterGatewayInstanceResponse#gateway_instance_arn #gateway_instance_arn} => String
    #   * {Types::DeregisterGatewayInstanceResponse#instance_state #instance_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_gateway_instance({
    #     force: false,
    #     gateway_instance_arn: "DeregisterGatewayInstanceRequestGatewayInstanceArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_instance_arn #=> String
    #   resp.instance_state #=> String, one of "REGISTERING", "ACTIVE", "DEREGISTERING", "DEREGISTERED", "REGISTRATION_ERROR", "DEREGISTRATION_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeregisterGatewayInstance AWS API Documentation
    #
    # @overload deregister_gateway_instance(params = {})
    # @param [Hash] params ({})
    def deregister_gateway_instance(params = {}, options = {})
      req = build_request(:deregister_gateway_instance, params)
      req.send_request(options)
    end

    # Displays the details of a bridge.
    #
    # @option params [required, String] :bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to
    #   describe.
    #
    # @return [Types::DescribeBridgeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBridgeResponse#bridge #bridge} => Types::Bridge
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bridge({
    #     bridge_arn: "DescribeBridgeRequestBridgeArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge.bridge_arn #=> String
    #   resp.bridge.bridge_messages #=> Array
    #   resp.bridge.bridge_messages[0].code #=> String
    #   resp.bridge.bridge_messages[0].message #=> String
    #   resp.bridge.bridge_messages[0].resource_name #=> String
    #   resp.bridge.bridge_state #=> String, one of "CREATING", "STANDBY", "STARTING", "DEPLOYING", "ACTIVE", "STOPPING", "DELETING", "DELETED", "START_FAILED", "START_PENDING", "STOP_FAILED", "UPDATING"
    #   resp.bridge.egress_gateway_bridge.instance_id #=> String
    #   resp.bridge.egress_gateway_bridge.max_bitrate #=> Integer
    #   resp.bridge.ingress_gateway_bridge.instance_id #=> String
    #   resp.bridge.ingress_gateway_bridge.max_bitrate #=> Integer
    #   resp.bridge.ingress_gateway_bridge.max_outputs #=> Integer
    #   resp.bridge.name #=> String
    #   resp.bridge.outputs #=> Array
    #   resp.bridge.outputs[0].flow_output.flow_arn #=> String
    #   resp.bridge.outputs[0].flow_output.flow_source_arn #=> String
    #   resp.bridge.outputs[0].flow_output.name #=> String
    #   resp.bridge.outputs[0].network_output.ip_address #=> String
    #   resp.bridge.outputs[0].network_output.name #=> String
    #   resp.bridge.outputs[0].network_output.network_name #=> String
    #   resp.bridge.outputs[0].network_output.port #=> Integer
    #   resp.bridge.outputs[0].network_output.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.bridge.outputs[0].network_output.ttl #=> Integer
    #   resp.bridge.placement_arn #=> String
    #   resp.bridge.source_failover_config.failover_mode #=> String, one of "MERGE", "FAILOVER"
    #   resp.bridge.source_failover_config.recovery_window #=> Integer
    #   resp.bridge.source_failover_config.source_priority.primary_source #=> String
    #   resp.bridge.source_failover_config.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.bridge.sources #=> Array
    #   resp.bridge.sources[0].flow_source.flow_arn #=> String
    #   resp.bridge.sources[0].flow_source.flow_vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.bridge.sources[0].flow_source.name #=> String
    #   resp.bridge.sources[0].flow_source.output_arn #=> String
    #   resp.bridge.sources[0].network_source.multicast_ip #=> String
    #   resp.bridge.sources[0].network_source.multicast_source_settings.multicast_source_ip #=> String
    #   resp.bridge.sources[0].network_source.name #=> String
    #   resp.bridge.sources[0].network_source.network_name #=> String
    #   resp.bridge.sources[0].network_source.port #=> Integer
    #   resp.bridge.sources[0].network_source.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeBridge AWS API Documentation
    #
    # @overload describe_bridge(params = {})
    # @param [Hash] params ({})
    def describe_bridge(params = {}, options = {})
      req = build_request(:describe_bridge, params)
      req.send_request(options)
    end

    # Displays the details of a flow. The response includes the flow Amazon
    # Resource Name (ARN), name, and Availability Zone, as well as details
    # about the source, outputs, and entitlements.
    #
    # @option params [required, String] :flow_arn
    #   The ARN of the flow that you want to describe.
    #
    # @return [Types::DescribeFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFlowResponse#flow #flow} => Types::Flow
    #   * {Types::DescribeFlowResponse#messages #messages} => Types::Messages
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flow({
    #     flow_arn: "DescribeFlowRequestFlowArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow.availability_zone #=> String
    #   resp.flow.description #=> String
    #   resp.flow.egress_ip #=> String
    #   resp.flow.entitlements #=> Array
    #   resp.flow.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.entitlements[0].description #=> String
    #   resp.flow.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.entitlements[0].encryption.device_id #=> String
    #   resp.flow.entitlements[0].encryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.entitlements[0].encryption.region #=> String
    #   resp.flow.entitlements[0].encryption.resource_id #=> String
    #   resp.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.flow.entitlements[0].encryption.url #=> String
    #   resp.flow.entitlements[0].entitlement_arn #=> String
    #   resp.flow.entitlements[0].entitlement_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.entitlements[0].name #=> String
    #   resp.flow.entitlements[0].subscribers #=> Array
    #   resp.flow.entitlements[0].subscribers[0] #=> String
    #   resp.flow.flow_arn #=> String
    #   resp.flow.media_streams #=> Array
    #   resp.flow.media_streams[0].attributes.fmtp.channel_order #=> String
    #   resp.flow.media_streams[0].attributes.fmtp.colorimetry #=> String, one of "BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"
    #   resp.flow.media_streams[0].attributes.fmtp.exact_framerate #=> String
    #   resp.flow.media_streams[0].attributes.fmtp.par #=> String
    #   resp.flow.media_streams[0].attributes.fmtp.range #=> String, one of "NARROW", "FULL", "FULLPROTECT"
    #   resp.flow.media_streams[0].attributes.fmtp.scan_mode #=> String, one of "progressive", "interlace", "progressive-segmented-frame"
    #   resp.flow.media_streams[0].attributes.fmtp.tcs #=> String, one of "SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"
    #   resp.flow.media_streams[0].attributes.lang #=> String
    #   resp.flow.media_streams[0].clock_rate #=> Integer
    #   resp.flow.media_streams[0].description #=> String
    #   resp.flow.media_streams[0].fmt #=> Integer
    #   resp.flow.media_streams[0].media_stream_id #=> Integer
    #   resp.flow.media_streams[0].media_stream_name #=> String
    #   resp.flow.media_streams[0].media_stream_type #=> String, one of "video", "audio", "ancillary-data"
    #   resp.flow.media_streams[0].video_format #=> String
    #   resp.flow.name #=> String
    #   resp.flow.outputs #=> Array
    #   resp.flow.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.outputs[0].description #=> String
    #   resp.flow.outputs[0].destination #=> String
    #   resp.flow.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.outputs[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.outputs[0].encryption.device_id #=> String
    #   resp.flow.outputs[0].encryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.outputs[0].encryption.region #=> String
    #   resp.flow.outputs[0].encryption.resource_id #=> String
    #   resp.flow.outputs[0].encryption.role_arn #=> String
    #   resp.flow.outputs[0].encryption.secret_arn #=> String
    #   resp.flow.outputs[0].encryption.url #=> String
    #   resp.flow.outputs[0].entitlement_arn #=> String
    #   resp.flow.outputs[0].listener_address #=> String
    #   resp.flow.outputs[0].media_live_input_arn #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations #=> Array
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations #=> Array
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_ip #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_port #=> Integer
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface.name #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].outbound_ip #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.compression_factor #=> Float
    #   resp.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.encoder_profile #=> String, one of "main", "high"
    #   resp.flow.outputs[0].media_stream_output_configurations[0].media_stream_name #=> String
    #   resp.flow.outputs[0].name #=> String
    #   resp.flow.outputs[0].output_arn #=> String
    #   resp.flow.outputs[0].port #=> Integer
    #   resp.flow.outputs[0].transport.cidr_allow_list #=> Array
    #   resp.flow.outputs[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.flow.outputs[0].transport.max_sync_buffer #=> Integer
    #   resp.flow.outputs[0].transport.min_latency #=> Integer
    #   resp.flow.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.flow.outputs[0].transport.remote_id #=> String
    #   resp.flow.outputs[0].transport.sender_control_port #=> Integer
    #   resp.flow.outputs[0].transport.sender_ip_address #=> String
    #   resp.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.flow.outputs[0].transport.source_listener_address #=> String
    #   resp.flow.outputs[0].transport.source_listener_port #=> Integer
    #   resp.flow.outputs[0].transport.stream_id #=> String
    #   resp.flow.outputs[0].transport.ndi_speed_hq_quality #=> Integer
    #   resp.flow.outputs[0].transport.ndi_program_name #=> String
    #   resp.flow.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.outputs[0].bridge_arn #=> String
    #   resp.flow.outputs[0].bridge_ports #=> Array
    #   resp.flow.outputs[0].bridge_ports[0] #=> Integer
    #   resp.flow.outputs[0].output_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.outputs[0].peer_ip_address #=> String
    #   resp.flow.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.source.decryption.constant_initialization_vector #=> String
    #   resp.flow.source.decryption.device_id #=> String
    #   resp.flow.source.decryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.source.decryption.region #=> String
    #   resp.flow.source.decryption.resource_id #=> String
    #   resp.flow.source.decryption.role_arn #=> String
    #   resp.flow.source.decryption.secret_arn #=> String
    #   resp.flow.source.decryption.url #=> String
    #   resp.flow.source.description #=> String
    #   resp.flow.source.entitlement_arn #=> String
    #   resp.flow.source.ingest_ip #=> String
    #   resp.flow.source.ingest_port #=> Integer
    #   resp.flow.source.media_stream_source_configurations #=> Array
    #   resp.flow.source.media_stream_source_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations #=> Array
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations[0].interface.name #=> String
    #   resp.flow.source.media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.flow.source.name #=> String
    #   resp.flow.source.sender_control_port #=> Integer
    #   resp.flow.source.sender_ip_address #=> String
    #   resp.flow.source.source_arn #=> String
    #   resp.flow.source.transport.cidr_allow_list #=> Array
    #   resp.flow.source.transport.cidr_allow_list[0] #=> String
    #   resp.flow.source.transport.max_bitrate #=> Integer
    #   resp.flow.source.transport.max_latency #=> Integer
    #   resp.flow.source.transport.max_sync_buffer #=> Integer
    #   resp.flow.source.transport.min_latency #=> Integer
    #   resp.flow.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.flow.source.transport.remote_id #=> String
    #   resp.flow.source.transport.sender_control_port #=> Integer
    #   resp.flow.source.transport.sender_ip_address #=> String
    #   resp.flow.source.transport.smoothing_latency #=> Integer
    #   resp.flow.source.transport.source_listener_address #=> String
    #   resp.flow.source.transport.source_listener_port #=> Integer
    #   resp.flow.source.transport.stream_id #=> String
    #   resp.flow.source.transport.ndi_speed_hq_quality #=> Integer
    #   resp.flow.source.transport.ndi_program_name #=> String
    #   resp.flow.source.vpc_interface_name #=> String
    #   resp.flow.source.whitelist_cidr #=> String
    #   resp.flow.source.gateway_bridge_source.bridge_arn #=> String
    #   resp.flow.source.gateway_bridge_source.vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.source.peer_ip_address #=> String
    #   resp.flow.source_failover_config.failover_mode #=> String, one of "MERGE", "FAILOVER"
    #   resp.flow.source_failover_config.recovery_window #=> Integer
    #   resp.flow.source_failover_config.source_priority.primary_source #=> String
    #   resp.flow.source_failover_config.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.sources #=> Array
    #   resp.flow.sources[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.sources[0].decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.sources[0].decryption.constant_initialization_vector #=> String
    #   resp.flow.sources[0].decryption.device_id #=> String
    #   resp.flow.sources[0].decryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.sources[0].decryption.region #=> String
    #   resp.flow.sources[0].decryption.resource_id #=> String
    #   resp.flow.sources[0].decryption.role_arn #=> String
    #   resp.flow.sources[0].decryption.secret_arn #=> String
    #   resp.flow.sources[0].decryption.url #=> String
    #   resp.flow.sources[0].description #=> String
    #   resp.flow.sources[0].entitlement_arn #=> String
    #   resp.flow.sources[0].ingest_ip #=> String
    #   resp.flow.sources[0].ingest_port #=> Integer
    #   resp.flow.sources[0].media_stream_source_configurations #=> Array
    #   resp.flow.sources[0].media_stream_source_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations #=> Array
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations[0].interface.name #=> String
    #   resp.flow.sources[0].media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.flow.sources[0].name #=> String
    #   resp.flow.sources[0].sender_control_port #=> Integer
    #   resp.flow.sources[0].sender_ip_address #=> String
    #   resp.flow.sources[0].source_arn #=> String
    #   resp.flow.sources[0].transport.cidr_allow_list #=> Array
    #   resp.flow.sources[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.sources[0].transport.max_bitrate #=> Integer
    #   resp.flow.sources[0].transport.max_latency #=> Integer
    #   resp.flow.sources[0].transport.max_sync_buffer #=> Integer
    #   resp.flow.sources[0].transport.min_latency #=> Integer
    #   resp.flow.sources[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.flow.sources[0].transport.remote_id #=> String
    #   resp.flow.sources[0].transport.sender_control_port #=> Integer
    #   resp.flow.sources[0].transport.sender_ip_address #=> String
    #   resp.flow.sources[0].transport.smoothing_latency #=> Integer
    #   resp.flow.sources[0].transport.source_listener_address #=> String
    #   resp.flow.sources[0].transport.source_listener_port #=> Integer
    #   resp.flow.sources[0].transport.stream_id #=> String
    #   resp.flow.sources[0].transport.ndi_speed_hq_quality #=> Integer
    #   resp.flow.sources[0].transport.ndi_program_name #=> String
    #   resp.flow.sources[0].vpc_interface_name #=> String
    #   resp.flow.sources[0].whitelist_cidr #=> String
    #   resp.flow.sources[0].gateway_bridge_source.bridge_arn #=> String
    #   resp.flow.sources[0].gateway_bridge_source.vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.sources[0].peer_ip_address #=> String
    #   resp.flow.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #   resp.flow.vpc_interfaces #=> Array
    #   resp.flow.vpc_interfaces[0].name #=> String
    #   resp.flow.vpc_interfaces[0].network_interface_ids #=> Array
    #   resp.flow.vpc_interfaces[0].network_interface_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].network_interface_type #=> String, one of "ena", "efa"
    #   resp.flow.vpc_interfaces[0].role_arn #=> String
    #   resp.flow.vpc_interfaces[0].security_group_ids #=> Array
    #   resp.flow.vpc_interfaces[0].security_group_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].subnet_id #=> String
    #   resp.flow.maintenance.maintenance_day #=> String, one of "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"
    #   resp.flow.maintenance.maintenance_deadline #=> String
    #   resp.flow.maintenance.maintenance_scheduled_date #=> String
    #   resp.flow.maintenance.maintenance_start_hour #=> String
    #   resp.flow.source_monitoring_config.thumbnail_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.audio_monitoring_settings #=> Array
    #   resp.flow.source_monitoring_config.audio_monitoring_settings[0].silent_audio.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.audio_monitoring_settings[0].silent_audio.threshold_seconds #=> Integer
    #   resp.flow.source_monitoring_config.content_quality_analysis_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.video_monitoring_settings #=> Array
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].black_frames.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].black_frames.threshold_seconds #=> Integer
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].frozen_frames.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].frozen_frames.threshold_seconds #=> Integer
    #   resp.flow.flow_size #=> String, one of "MEDIUM", "LARGE"
    #   resp.flow.ndi_config.ndi_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.ndi_config.machine_name #=> String
    #   resp.flow.ndi_config.ndi_discovery_servers #=> Array
    #   resp.flow.ndi_config.ndi_discovery_servers[0].discovery_server_address #=> String
    #   resp.flow.ndi_config.ndi_discovery_servers[0].discovery_server_port #=> Integer
    #   resp.flow.ndi_config.ndi_discovery_servers[0].vpc_interface_adapter #=> String
    #   resp.messages.errors #=> Array
    #   resp.messages.errors[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * flow_active
    #   * flow_deleted
    #   * flow_standby
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlow AWS API Documentation
    #
    # @overload describe_flow(params = {})
    # @param [Hash] params ({})
    def describe_flow(params = {}, options = {})
      req = build_request(:describe_flow, params)
      req.send_request(options)
    end

    # The `DescribeFlowSourceMetadata` API is used to view information about
    # the flow's source transport stream and programs. This API displays
    # status messages about the flow's source as well as details about the
    # program's video, audio, and other data.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #
    # @return [Types::DescribeFlowSourceMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFlowSourceMetadataResponse#flow_arn #flow_arn} => String
    #   * {Types::DescribeFlowSourceMetadataResponse#messages #messages} => Array&lt;Types::MessageDetail&gt;
    #   * {Types::DescribeFlowSourceMetadataResponse#timestamp #timestamp} => Time
    #   * {Types::DescribeFlowSourceMetadataResponse#transport_media_info #transport_media_info} => Types::TransportMediaInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flow_source_metadata({
    #     flow_arn: "FlowArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.messages #=> Array
    #   resp.messages[0].code #=> String
    #   resp.messages[0].message #=> String
    #   resp.messages[0].resource_name #=> String
    #   resp.timestamp #=> Time
    #   resp.transport_media_info.programs #=> Array
    #   resp.transport_media_info.programs[0].pcr_pid #=> Integer
    #   resp.transport_media_info.programs[0].program_name #=> String
    #   resp.transport_media_info.programs[0].program_number #=> Integer
    #   resp.transport_media_info.programs[0].program_pid #=> Integer
    #   resp.transport_media_info.programs[0].streams #=> Array
    #   resp.transport_media_info.programs[0].streams[0].channels #=> Integer
    #   resp.transport_media_info.programs[0].streams[0].codec #=> String
    #   resp.transport_media_info.programs[0].streams[0].frame_rate #=> String
    #   resp.transport_media_info.programs[0].streams[0].frame_resolution.frame_height #=> Integer
    #   resp.transport_media_info.programs[0].streams[0].frame_resolution.frame_width #=> Integer
    #   resp.transport_media_info.programs[0].streams[0].pid #=> Integer
    #   resp.transport_media_info.programs[0].streams[0].sample_rate #=> Integer
    #   resp.transport_media_info.programs[0].streams[0].sample_size #=> Integer
    #   resp.transport_media_info.programs[0].streams[0].stream_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlowSourceMetadata AWS API Documentation
    #
    # @overload describe_flow_source_metadata(params = {})
    # @param [Hash] params ({})
    def describe_flow_source_metadata(params = {}, options = {})
      req = build_request(:describe_flow_source_metadata, params)
      req.send_request(options)
    end

    # Describes the thumbnail for the flow source.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow.
    #
    # @return [Types::DescribeFlowSourceThumbnailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFlowSourceThumbnailResponse#thumbnail_details #thumbnail_details} => Types::ThumbnailDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flow_source_thumbnail({
    #     flow_arn: "FlowArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.thumbnail_details.flow_arn #=> String
    #   resp.thumbnail_details.thumbnail #=> String
    #   resp.thumbnail_details.thumbnail_messages #=> Array
    #   resp.thumbnail_details.thumbnail_messages[0].code #=> String
    #   resp.thumbnail_details.thumbnail_messages[0].message #=> String
    #   resp.thumbnail_details.thumbnail_messages[0].resource_name #=> String
    #   resp.thumbnail_details.timecode #=> String
    #   resp.thumbnail_details.timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlowSourceThumbnail AWS API Documentation
    #
    # @overload describe_flow_source_thumbnail(params = {})
    # @param [Hash] params ({})
    def describe_flow_source_thumbnail(params = {}, options = {})
      req = build_request(:describe_flow_source_thumbnail, params)
      req.send_request(options)
    end

    # Displays the details of a gateway. The response includes the gateway
    # Amazon Resource Name (ARN), name, and CIDR blocks, as well as details
    # about the networks.
    #
    # @option params [required, String] :gateway_arn
    #   The ARN of the gateway that you want to describe.
    #
    # @return [Types::DescribeGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGatewayResponse#gateway #gateway} => Types::Gateway
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway({
    #     gateway_arn: "DescribeGatewayRequestGatewayArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway.egress_cidr_blocks #=> Array
    #   resp.gateway.egress_cidr_blocks[0] #=> String
    #   resp.gateway.gateway_arn #=> String
    #   resp.gateway.gateway_messages #=> Array
    #   resp.gateway.gateway_messages[0].code #=> String
    #   resp.gateway.gateway_messages[0].message #=> String
    #   resp.gateway.gateway_messages[0].resource_name #=> String
    #   resp.gateway.gateway_state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "ERROR", "DELETING", "DELETED"
    #   resp.gateway.name #=> String
    #   resp.gateway.networks #=> Array
    #   resp.gateway.networks[0].cidr_block #=> String
    #   resp.gateway.networks[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeGateway AWS API Documentation
    #
    # @overload describe_gateway(params = {})
    # @param [Hash] params ({})
    def describe_gateway(params = {}, options = {})
      req = build_request(:describe_gateway, params)
      req.send_request(options)
    end

    # Displays the details of an instance.
    #
    # @option params [required, String] :gateway_instance_arn
    #   The Amazon Resource Name (ARN) of the gateway instance that you want
    #   to describe.
    #
    # @return [Types::DescribeGatewayInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGatewayInstanceResponse#gateway_instance #gateway_instance} => Types::GatewayInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway_instance({
    #     gateway_instance_arn: "DescribeGatewayInstanceRequestGatewayInstanceArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_instance.bridge_placement #=> String, one of "AVAILABLE", "LOCKED"
    #   resp.gateway_instance.connection_status #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.gateway_instance.gateway_arn #=> String
    #   resp.gateway_instance.gateway_instance_arn #=> String
    #   resp.gateway_instance.instance_id #=> String
    #   resp.gateway_instance.instance_messages #=> Array
    #   resp.gateway_instance.instance_messages[0].code #=> String
    #   resp.gateway_instance.instance_messages[0].message #=> String
    #   resp.gateway_instance.instance_messages[0].resource_name #=> String
    #   resp.gateway_instance.instance_state #=> String, one of "REGISTERING", "ACTIVE", "DEREGISTERING", "DEREGISTERED", "REGISTRATION_ERROR", "DEREGISTRATION_ERROR"
    #   resp.gateway_instance.running_bridge_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeGatewayInstance AWS API Documentation
    #
    # @overload describe_gateway_instance(params = {})
    # @param [Hash] params ({})
    def describe_gateway_instance(params = {}, options = {})
      req = build_request(:describe_gateway_instance, params)
      req.send_request(options)
    end

    # Displays the details of an offering. The response includes the
    # offering description, duration, outbound bandwidth, price, and Amazon
    # Resource Name (ARN).
    #
    # @option params [required, String] :offering_arn
    #   The ARN of the offering.
    #
    # @return [Types::DescribeOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOfferingResponse#offering #offering} => Types::Offering
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_offering({
    #     offering_arn: "OfferingArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.offering.currency_code #=> String
    #   resp.offering.duration #=> Integer
    #   resp.offering.duration_units #=> String, one of "MONTHS"
    #   resp.offering.offering_arn #=> String
    #   resp.offering.offering_description #=> String
    #   resp.offering.price_per_unit #=> String
    #   resp.offering.price_units #=> String, one of "HOURLY"
    #   resp.offering.resource_specification.reserved_bitrate #=> Integer
    #   resp.offering.resource_specification.resource_type #=> String, one of "Mbps_Outbound_Bandwidth"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeOffering AWS API Documentation
    #
    # @overload describe_offering(params = {})
    # @param [Hash] params ({})
    def describe_offering(params = {}, options = {})
      req = build_request(:describe_offering, params)
      req.send_request(options)
    end

    # Displays the details of a reservation. The response includes the
    # reservation name, state, start date and time, and the details of the
    # offering that make up the rest of the reservation (such as price,
    # duration, and outbound bandwidth).
    #
    # @option params [required, String] :reservation_arn
    #   The Amazon Resource Name (ARN) of the offering.
    #
    # @return [Types::DescribeReservationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservationResponse#reservation #reservation} => Types::Reservation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reservation({
    #     reservation_arn: "ReservationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reservation.currency_code #=> String
    #   resp.reservation.duration #=> Integer
    #   resp.reservation.duration_units #=> String, one of "MONTHS"
    #   resp.reservation.end #=> String
    #   resp.reservation.offering_arn #=> String
    #   resp.reservation.offering_description #=> String
    #   resp.reservation.price_per_unit #=> String
    #   resp.reservation.price_units #=> String, one of "HOURLY"
    #   resp.reservation.reservation_arn #=> String
    #   resp.reservation.reservation_name #=> String
    #   resp.reservation.reservation_state #=> String, one of "ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"
    #   resp.reservation.resource_specification.reserved_bitrate #=> Integer
    #   resp.reservation.resource_specification.resource_type #=> String, one of "Mbps_Outbound_Bandwidth"
    #   resp.reservation.start #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeReservation AWS API Documentation
    #
    # @overload describe_reservation(params = {})
    # @param [Hash] params ({})
    def describe_reservation(params = {}, options = {})
      req = build_request(:describe_reservation, params)
      req.send_request(options)
    end

    # Grants entitlements to an existing flow.
    #
    # @option params [required, Array<Types::GrantEntitlementRequest>] :entitlements
    #   The list of entitlements that you want to grant.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to grant
    #   entitlements on.
    #
    # @return [Types::GrantFlowEntitlementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GrantFlowEntitlementsResponse#entitlements #entitlements} => Array&lt;Types::Entitlement&gt;
    #   * {Types::GrantFlowEntitlementsResponse#flow_arn #flow_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.grant_flow_entitlements({
    #     entitlements: [ # required
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: "String",
    #         encryption: {
    #           algorithm: "aes128", # accepts aes128, aes192, aes256
    #           constant_initialization_vector: "String",
    #           device_id: "String",
    #           key_type: "speke", # accepts speke, static-key, srt-password
    #           region: "String",
    #           resource_id: "String",
    #           role_arn: "String", # required
    #           secret_arn: "String",
    #           url: "String",
    #         },
    #         entitlement_status: "ENABLED", # accepts ENABLED, DISABLED
    #         name: "String",
    #         subscribers: ["String"], # required
    #       },
    #     ],
    #     flow_arn: "GrantFlowEntitlementsRequestFlowArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlements #=> Array
    #   resp.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.entitlements[0].description #=> String
    #   resp.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.entitlements[0].encryption.device_id #=> String
    #   resp.entitlements[0].encryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.entitlements[0].encryption.region #=> String
    #   resp.entitlements[0].encryption.resource_id #=> String
    #   resp.entitlements[0].encryption.role_arn #=> String
    #   resp.entitlements[0].encryption.secret_arn #=> String
    #   resp.entitlements[0].encryption.url #=> String
    #   resp.entitlements[0].entitlement_arn #=> String
    #   resp.entitlements[0].entitlement_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.entitlements[0].name #=> String
    #   resp.entitlements[0].subscribers #=> Array
    #   resp.entitlements[0].subscribers[0] #=> String
    #   resp.flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GrantFlowEntitlements AWS API Documentation
    #
    # @overload grant_flow_entitlements(params = {})
    # @param [Hash] params ({})
    def grant_flow_entitlements(params = {}, options = {})
      req = build_request(:grant_flow_entitlements, params)
      req.send_request(options)
    end

    # Displays a list of bridges that are associated with this account and
    # an optionally specified Amazon Resource Name (ARN). This request
    # returns a paginated result.
    #
    # @option params [String] :filter_arn
    #   Filter the list results to display only the bridges associated with
    #   the selected ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListBridges` request with `MaxResults` set
    #   at 5. Although 20 items match your request, the service returns no
    #   more than the first 5 items. (The service also returns a `NextToken`
    #   value that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the `MaxResults` value. If
    #   `MaxResults` is not included in the request, the service defaults to
    #   pagination with a maximum of 10 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListBridges` request with `MaxResults` set
    #   at 5. The service returns the first batch of results (up to 5) and a
    #   `NextToken` value. To see the next batch of results, you can submit
    #   the `ListBridges` request a second time and specify the `NextToken`
    #   value.
    #
    # @return [Types::ListBridgesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBridgesResponse#bridges #bridges} => Array&lt;Types::ListedBridge&gt;
    #   * {Types::ListBridgesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bridges({
    #     filter_arn: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.bridges #=> Array
    #   resp.bridges[0].bridge_arn #=> String
    #   resp.bridges[0].bridge_state #=> String, one of "CREATING", "STANDBY", "STARTING", "DEPLOYING", "ACTIVE", "STOPPING", "DELETING", "DELETED", "START_FAILED", "START_PENDING", "STOP_FAILED", "UPDATING"
    #   resp.bridges[0].bridge_type #=> String
    #   resp.bridges[0].name #=> String
    #   resp.bridges[0].placement_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListBridges AWS API Documentation
    #
    # @overload list_bridges(params = {})
    # @param [Hash] params ({})
    def list_bridges(params = {}, options = {})
      req = build_request(:list_bridges, params)
      req.send_request(options)
    end

    # Displays a list of all entitlements that have been granted to this
    # account. This request returns 20 results per page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListEntitlements` request with set at 5.
    #   Although 20 items match your request, the service returns no more than
    #   the first 5 items. (The service also returns a NextToken value that
    #   you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the `MaxResults` value. If
    #   `MaxResults` is not included in the request, the service defaults to
    #   pagination with a maximum of 20 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListEntitlements` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5) and
    #   a `NextToken` value. To see the next batch of results, you can submit
    #   the `ListEntitlements` request a second time and specify the
    #   `NextToken` value.
    #
    # @return [Types::ListEntitlementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntitlementsResponse#entitlements #entitlements} => Array&lt;Types::ListedEntitlement&gt;
    #   * {Types::ListEntitlementsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entitlements({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlements #=> Array
    #   resp.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.entitlements[0].entitlement_arn #=> String
    #   resp.entitlements[0].entitlement_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListEntitlements AWS API Documentation
    #
    # @overload list_entitlements(params = {})
    # @param [Hash] params ({})
    def list_entitlements(params = {}, options = {})
      req = build_request(:list_entitlements, params)
      req.send_request(options)
    end

    # Displays a list of flows that are associated with this account. This
    # request returns a paginated result.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListFlows` request with MaxResults set at
    #   5. Although 20 items match your request, the service returns no more
    #   than the first 5 items. (The service also returns a `NextToken` value
    #   that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the `MaxResults` value. If
    #   `MaxResults` is not included in the request, the service defaults to
    #   pagination with a maximum of 10 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListFlows` request with MaxResults set at
    #   5. The service returns the first batch of results (up to 5) and a
    #   `NextToken` value. To see the next batch of results, you can submit
    #   the `ListFlows` request a second time and specify the `NextToken`
    #   value.
    #
    # @return [Types::ListFlowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlowsResponse#flows #flows} => Array&lt;Types::ListedFlow&gt;
    #   * {Types::ListFlowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flows({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.flows #=> Array
    #   resp.flows[0].availability_zone #=> String
    #   resp.flows[0].description #=> String
    #   resp.flows[0].flow_arn #=> String
    #   resp.flows[0].name #=> String
    #   resp.flows[0].source_type #=> String, one of "OWNED", "ENTITLED"
    #   resp.flows[0].status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #   resp.flows[0].maintenance.maintenance_day #=> String, one of "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"
    #   resp.flows[0].maintenance.maintenance_deadline #=> String
    #   resp.flows[0].maintenance.maintenance_scheduled_date #=> String
    #   resp.flows[0].maintenance.maintenance_start_hour #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListFlows AWS API Documentation
    #
    # @overload list_flows(params = {})
    # @param [Hash] params ({})
    def list_flows(params = {}, options = {})
      req = build_request(:list_flows, params)
      req.send_request(options)
    end

    # Displays a list of instances associated with the Amazon Web Services
    # account. This request returns a paginated result. You can use the
    # filterArn property to display only the instances associated with the
    # selected Gateway Amazon Resource Name (ARN).
    #
    # @option params [String] :filter_arn
    #   Filter the list results to display only the instances associated with
    #   the selected Gateway ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a ListInstances request with `MaxResults` set
    #   at 5. Although 20 items match your request, the service returns no
    #   more than the first 5 items. (The service also returns a `NextToken`
    #   value that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the `MaxResults` value. If
    #   `MaxResults` is not included in the request, the service defaults to
    #   pagination with a maximum of 10 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListInstances` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5) and
    #   a `NextToken` value. To see the next batch of results, you can submit
    #   the `ListInstances` request a second time and specify the `NextToken`
    #   value.
    #
    # @return [Types::ListGatewayInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewayInstancesResponse#instances #instances} => Array&lt;Types::ListedGatewayInstance&gt;
    #   * {Types::ListGatewayInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateway_instances({
    #     filter_arn: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].gateway_arn #=> String
    #   resp.instances[0].gateway_instance_arn #=> String
    #   resp.instances[0].instance_id #=> String
    #   resp.instances[0].instance_state #=> String, one of "REGISTERING", "ACTIVE", "DEREGISTERING", "DEREGISTERED", "REGISTRATION_ERROR", "DEREGISTRATION_ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListGatewayInstances AWS API Documentation
    #
    # @overload list_gateway_instances(params = {})
    # @param [Hash] params ({})
    def list_gateway_instances(params = {}, options = {})
      req = build_request(:list_gateway_instances, params)
      req.send_request(options)
    end

    # Displays a list of gateways that are associated with this account.
    # This request returns a paginated result.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListGateways` request with `MaxResults` set
    #   at 5. Although 20 items match your request, the service returns no
    #   more than the first 5 items. (The service also returns a `NextToken`
    #   value that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the `MaxResults` value. If
    #   `MaxResults` is not included in the request, the service defaults to
    #   pagination with a maximum of 10 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListGateways` request with `MaxResults` set
    #   at 5. The service returns the first batch of results (up to 5) and a
    #   `NextToken` value. To see the next batch of results, you can submit
    #   the `ListGateways` request a second time and specify the `NextToken`
    #   value.
    #
    # @return [Types::ListGatewaysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewaysResponse#gateways #gateways} => Array&lt;Types::ListedGateway&gt;
    #   * {Types::ListGatewaysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateways #=> Array
    #   resp.gateways[0].gateway_arn #=> String
    #   resp.gateways[0].gateway_state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "ERROR", "DELETING", "DELETED"
    #   resp.gateways[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListGateways AWS API Documentation
    #
    # @overload list_gateways(params = {})
    # @param [Hash] params ({})
    def list_gateways(params = {}, options = {})
      req = build_request(:list_gateways, params)
      req.send_request(options)
    end

    # Displays a list of all offerings that are available to this account in
    # the current Amazon Web Services Region. If you have an active
    # reservation (which means you've purchased an offering that has
    # already started and hasn't expired yet), your account isn't eligible
    # for other offerings.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListOfferings` request with `MaxResults`
    #   set at 5. Although 20 items match your request, the service returns no
    #   more than the first 5 items. (The service also returns a `NextToken`
    #   value that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the `MaxResults` value. If
    #   `MaxResults` is not included in the request, the service defaults to
    #   pagination with a maximum of 10 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListOfferings` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5) and
    #   a `NextToken` value. To see the next batch of results, you can submit
    #   the `ListOfferings` request a second time and specify the `NextToken`
    #   value.
    #
    # @return [Types::ListOfferingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOfferingsResponse#next_token #next_token} => String
    #   * {Types::ListOfferingsResponse#offerings #offerings} => Array&lt;Types::Offering&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offerings({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.offerings #=> Array
    #   resp.offerings[0].currency_code #=> String
    #   resp.offerings[0].duration #=> Integer
    #   resp.offerings[0].duration_units #=> String, one of "MONTHS"
    #   resp.offerings[0].offering_arn #=> String
    #   resp.offerings[0].offering_description #=> String
    #   resp.offerings[0].price_per_unit #=> String
    #   resp.offerings[0].price_units #=> String, one of "HOURLY"
    #   resp.offerings[0].resource_specification.reserved_bitrate #=> Integer
    #   resp.offerings[0].resource_specification.resource_type #=> String, one of "Mbps_Outbound_Bandwidth"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListOfferings AWS API Documentation
    #
    # @overload list_offerings(params = {})
    # @param [Hash] params ({})
    def list_offerings(params = {}, options = {})
      req = build_request(:list_offerings, params)
      req.send_request(options)
    end

    # Displays a list of all reservations that have been purchased by this
    # account in the current Amazon Web Services Region. This list includes
    # all reservations in all states (such as active and expired).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a `ListReservations` request with `MaxResults`
    #   set at 5. Although 20 items match your request, the service returns no
    #   more than the first 5 items. (The service also returns a NextToken
    #   value that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the `MaxResults` value. If
    #   `MaxResults` is not included in the request, the service defaults to
    #   pagination with a maximum of 10 results per page.
    #
    # @option params [String] :next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a `ListReservations` request with `MaxResults`
    #   set at 5. The service returns the first batch of results (up to 5) and
    #   a `NextToken` value. To see the next batch of results, you can submit
    #   the `ListOfferings` request a second time and specify the `NextToken`
    #   value.
    #
    # @return [Types::ListReservationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReservationsResponse#next_token #next_token} => String
    #   * {Types::ListReservationsResponse#reservations #reservations} => Array&lt;Types::Reservation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reservations({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reservations #=> Array
    #   resp.reservations[0].currency_code #=> String
    #   resp.reservations[0].duration #=> Integer
    #   resp.reservations[0].duration_units #=> String, one of "MONTHS"
    #   resp.reservations[0].end #=> String
    #   resp.reservations[0].offering_arn #=> String
    #   resp.reservations[0].offering_description #=> String
    #   resp.reservations[0].price_per_unit #=> String
    #   resp.reservations[0].price_units #=> String, one of "HOURLY"
    #   resp.reservations[0].reservation_arn #=> String
    #   resp.reservations[0].reservation_name #=> String
    #   resp.reservations[0].reservation_state #=> String, one of "ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"
    #   resp.reservations[0].resource_specification.reserved_bitrate #=> Integer
    #   resp.reservations[0].resource_specification.resource_type #=> String, one of "Mbps_Outbound_Bandwidth"
    #   resp.reservations[0].start #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListReservations AWS API Documentation
    #
    # @overload list_reservations(params = {})
    # @param [Hash] params ({})
    def list_reservations(params = {}, options = {})
      req = build_request(:list_reservations, params)
      req.send_request(options)
    end

    # List all tags on a MediaConnect resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the MediaConnect
    #   resource for which to list the tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Submits a request to purchase an offering. If you already have an
    # active reservation, you can't purchase another offering.
    #
    # @option params [required, String] :offering_arn
    #   The Amazon Resource Name (ARN) of the offering.
    #
    # @option params [required, String] :reservation_name
    #   The name that you want to use for the reservation.
    #
    # @option params [required, String] :start
    #   The date and time that you want the reservation to begin, in
    #   Coordinated Universal Time (UTC).
    #
    #   You can specify any date and time between 12:00am on the first day of
    #   the current month to the current time on today's date, inclusive.
    #   Specify the start in a 24-hour notation. Use the following format:
    #   `YYYY-MM-DDTHH:mm:SSZ`, where `T` and `Z` are literal characters. For
    #   example, to specify 11:30pm on March 5, 2020, enter
    #   `2020-03-05T23:30:00Z`.
    #
    # @return [Types::PurchaseOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseOfferingResponse#reservation #reservation} => Types::Reservation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_offering({
    #     offering_arn: "String", # required
    #     reservation_name: "String", # required
    #     start: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reservation.currency_code #=> String
    #   resp.reservation.duration #=> Integer
    #   resp.reservation.duration_units #=> String, one of "MONTHS"
    #   resp.reservation.end #=> String
    #   resp.reservation.offering_arn #=> String
    #   resp.reservation.offering_description #=> String
    #   resp.reservation.price_per_unit #=> String
    #   resp.reservation.price_units #=> String, one of "HOURLY"
    #   resp.reservation.reservation_arn #=> String
    #   resp.reservation.reservation_name #=> String
    #   resp.reservation.reservation_state #=> String, one of "ACTIVE", "EXPIRED", "PROCESSING", "CANCELED"
    #   resp.reservation.resource_specification.reserved_bitrate #=> Integer
    #   resp.reservation.resource_specification.resource_type #=> String, one of "Mbps_Outbound_Bandwidth"
    #   resp.reservation.start #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/PurchaseOffering AWS API Documentation
    #
    # @overload purchase_offering(params = {})
    # @param [Hash] params ({})
    def purchase_offering(params = {}, options = {})
      req = build_request(:purchase_offering, params)
      req.send_request(options)
    end

    # Removes an output from a bridge.
    #
    # @option params [required, String] :bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to update.
    #
    # @option params [required, String] :output_name
    #   The name of the bridge output that you want to remove.
    #
    # @return [Types::RemoveBridgeOutputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveBridgeOutputResponse#bridge_arn #bridge_arn} => String
    #   * {Types::RemoveBridgeOutputResponse#output_name #output_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_bridge_output({
    #     bridge_arn: "RemoveBridgeOutputRequestBridgeArnString", # required
    #     output_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge_arn #=> String
    #   resp.output_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveBridgeOutput AWS API Documentation
    #
    # @overload remove_bridge_output(params = {})
    # @param [Hash] params ({})
    def remove_bridge_output(params = {}, options = {})
      req = build_request(:remove_bridge_output, params)
      req.send_request(options)
    end

    # Removes a source from a bridge.
    #
    # @option params [required, String] :bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to update.
    #
    # @option params [required, String] :source_name
    #   The name of the bridge source that you want to remove.
    #
    # @return [Types::RemoveBridgeSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveBridgeSourceResponse#bridge_arn #bridge_arn} => String
    #   * {Types::RemoveBridgeSourceResponse#source_name #source_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_bridge_source({
    #     bridge_arn: "RemoveBridgeSourceRequestBridgeArnString", # required
    #     source_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge_arn #=> String
    #   resp.source_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveBridgeSource AWS API Documentation
    #
    # @overload remove_bridge_source(params = {})
    # @param [Hash] params ({})
    def remove_bridge_source(params = {}, options = {})
      req = build_request(:remove_bridge_source, params)
      req.send_request(options)
    end

    # Removes a media stream from a flow. This action is only available if
    # the media stream is not associated with a source or output.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to update.
    #
    # @option params [required, String] :media_stream_name
    #   The name of the media stream that you want to remove.
    #
    # @return [Types::RemoveFlowMediaStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveFlowMediaStreamResponse#flow_arn #flow_arn} => String
    #   * {Types::RemoveFlowMediaStreamResponse#media_stream_name #media_stream_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_media_stream({
    #     flow_arn: "RemoveFlowMediaStreamRequestFlowArnString", # required
    #     media_stream_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.media_stream_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowMediaStream AWS API Documentation
    #
    # @overload remove_flow_media_stream(params = {})
    # @param [Hash] params ({})
    def remove_flow_media_stream(params = {}, options = {})
      req = build_request(:remove_flow_media_stream, params)
      req.send_request(options)
    end

    # Removes an output from an existing flow. This request can be made only
    # on an output that does not have an entitlement associated with it. If
    # the output has an entitlement, you must revoke the entitlement
    # instead. When an entitlement is revoked from a flow, the service
    # automatically removes the associated output.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to remove an
    #   output from.
    #
    # @option params [required, String] :output_arn
    #   The ARN of the output that you want to remove.
    #
    # @return [Types::RemoveFlowOutputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveFlowOutputResponse#flow_arn #flow_arn} => String
    #   * {Types::RemoveFlowOutputResponse#output_arn #output_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_output({
    #     flow_arn: "RemoveFlowOutputRequestFlowArnString", # required
    #     output_arn: "RemoveFlowOutputRequestOutputArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.output_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowOutput AWS API Documentation
    #
    # @overload remove_flow_output(params = {})
    # @param [Hash] params ({})
    def remove_flow_output(params = {}, options = {})
      req = build_request(:remove_flow_output, params)
      req.send_request(options)
    end

    # Removes a source from an existing flow. This request can be made only
    # if there is more than one source on the flow.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to remove a
    #   source from.
    #
    # @option params [required, String] :source_arn
    #   The ARN of the source that you want to remove.
    #
    # @return [Types::RemoveFlowSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveFlowSourceResponse#flow_arn #flow_arn} => String
    #   * {Types::RemoveFlowSourceResponse#source_arn #source_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_source({
    #     flow_arn: "RemoveFlowSourceRequestFlowArnString", # required
    #     source_arn: "RemoveFlowSourceRequestSourceArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.source_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowSource AWS API Documentation
    #
    # @overload remove_flow_source(params = {})
    # @param [Hash] params ({})
    def remove_flow_source(params = {}, options = {})
      req = build_request(:remove_flow_source, params)
      req.send_request(options)
    end

    # Removes a VPC Interface from an existing flow. This request can be
    # made only on a VPC interface that does not have a Source or Output
    # associated with it. If the VPC interface is referenced by a Source or
    # Output, you must first delete or update the Source or Output to no
    # longer reference the VPC interface.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to remove a
    #   VPC interface from.
    #
    # @option params [required, String] :vpc_interface_name
    #   The name of the VPC interface that you want to remove.
    #
    # @return [Types::RemoveFlowVpcInterfaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveFlowVpcInterfaceResponse#flow_arn #flow_arn} => String
    #   * {Types::RemoveFlowVpcInterfaceResponse#non_deleted_network_interface_ids #non_deleted_network_interface_ids} => Array&lt;String&gt;
    #   * {Types::RemoveFlowVpcInterfaceResponse#vpc_interface_name #vpc_interface_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_flow_vpc_interface({
    #     flow_arn: "RemoveFlowVpcInterfaceRequestFlowArnString", # required
    #     vpc_interface_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.non_deleted_network_interface_ids #=> Array
    #   resp.non_deleted_network_interface_ids[0] #=> String
    #   resp.vpc_interface_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowVpcInterface AWS API Documentation
    #
    # @overload remove_flow_vpc_interface(params = {})
    # @param [Hash] params ({})
    def remove_flow_vpc_interface(params = {}, options = {})
      req = build_request(:remove_flow_vpc_interface, params)
      req.send_request(options)
    end

    # Revokes an entitlement from a flow. Once an entitlement is revoked,
    # the content becomes unavailable to the subscriber and the associated
    # output is removed.
    #
    # @option params [required, String] :entitlement_arn
    #   The Amazon Resource Name (ARN) of the entitlement that you want to
    #   revoke.
    #
    # @option params [required, String] :flow_arn
    #   The flow that you want to revoke an entitlement from.
    #
    # @return [Types::RevokeFlowEntitlementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RevokeFlowEntitlementResponse#entitlement_arn #entitlement_arn} => String
    #   * {Types::RevokeFlowEntitlementResponse#flow_arn #flow_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_flow_entitlement({
    #     entitlement_arn: "RevokeFlowEntitlementRequestEntitlementArnString", # required
    #     flow_arn: "RevokeFlowEntitlementRequestFlowArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlement_arn #=> String
    #   resp.flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RevokeFlowEntitlement AWS API Documentation
    #
    # @overload revoke_flow_entitlement(params = {})
    # @param [Hash] params ({})
    def revoke_flow_entitlement(params = {}, options = {})
      req = build_request(:revoke_flow_entitlement, params)
      req.send_request(options)
    end

    # Starts a flow.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to start.
    #
    # @return [Types::StartFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFlowResponse#flow_arn #flow_arn} => String
    #   * {Types::StartFlowResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_flow({
    #     flow_arn: "StartFlowRequestFlowArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StartFlow AWS API Documentation
    #
    # @overload start_flow(params = {})
    # @param [Hash] params ({})
    def start_flow(params = {}, options = {})
      req = build_request(:start_flow, params)
      req.send_request(options)
    end

    # Stops a flow.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to stop.
    #
    # @return [Types::StopFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopFlowResponse#flow_arn #flow_arn} => String
    #   * {Types::StopFlowResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_flow({
    #     flow_arn: "StopFlowRequestFlowArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StopFlow AWS API Documentation
    #
    # @overload stop_flow(params = {})
    # @param [Hash] params ({})
    def stop_flow(params = {}, options = {})
      req = build_request(:stop_flow, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # `resourceArn`. If existing tags on a resource are not specified in the
    # request parameters, they are not changed. When a resource is deleted,
    # the tags associated with that resource are deleted as well.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the MediaConnect
    #   resource to which to add tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map from tag keys to values. Tag keys can have a maximum character
    #   length of 128 characters, and tag values can have a maximum length of
    #   256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the bridge.
    #
    # @option params [required, String] :bridge_arn
    #   TheAmazon Resource Name (ARN) of the bridge that you want to update.
    #
    # @option params [Types::UpdateEgressGatewayBridgeRequest] :egress_gateway_bridge
    #   A cloud-to-ground bridge. The content comes from an existing
    #   MediaConnect flow and is delivered to your premises.
    #
    # @option params [Types::UpdateIngressGatewayBridgeRequest] :ingress_gateway_bridge
    #   A ground-to-cloud bridge. The content originates at your premises and
    #   is delivered to the cloud.
    #
    # @option params [Types::UpdateFailoverConfig] :source_failover_config
    #   The settings for source failover.
    #
    # @return [Types::UpdateBridgeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBridgeResponse#bridge #bridge} => Types::Bridge
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bridge({
    #     bridge_arn: "UpdateBridgeRequestBridgeArnString", # required
    #     egress_gateway_bridge: {
    #       max_bitrate: 1,
    #     },
    #     ingress_gateway_bridge: {
    #       max_bitrate: 1,
    #       max_outputs: 1,
    #     },
    #     source_failover_config: {
    #       failover_mode: "MERGE", # accepts MERGE, FAILOVER
    #       recovery_window: 1,
    #       source_priority: {
    #         primary_source: "String",
    #       },
    #       state: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge.bridge_arn #=> String
    #   resp.bridge.bridge_messages #=> Array
    #   resp.bridge.bridge_messages[0].code #=> String
    #   resp.bridge.bridge_messages[0].message #=> String
    #   resp.bridge.bridge_messages[0].resource_name #=> String
    #   resp.bridge.bridge_state #=> String, one of "CREATING", "STANDBY", "STARTING", "DEPLOYING", "ACTIVE", "STOPPING", "DELETING", "DELETED", "START_FAILED", "START_PENDING", "STOP_FAILED", "UPDATING"
    #   resp.bridge.egress_gateway_bridge.instance_id #=> String
    #   resp.bridge.egress_gateway_bridge.max_bitrate #=> Integer
    #   resp.bridge.ingress_gateway_bridge.instance_id #=> String
    #   resp.bridge.ingress_gateway_bridge.max_bitrate #=> Integer
    #   resp.bridge.ingress_gateway_bridge.max_outputs #=> Integer
    #   resp.bridge.name #=> String
    #   resp.bridge.outputs #=> Array
    #   resp.bridge.outputs[0].flow_output.flow_arn #=> String
    #   resp.bridge.outputs[0].flow_output.flow_source_arn #=> String
    #   resp.bridge.outputs[0].flow_output.name #=> String
    #   resp.bridge.outputs[0].network_output.ip_address #=> String
    #   resp.bridge.outputs[0].network_output.name #=> String
    #   resp.bridge.outputs[0].network_output.network_name #=> String
    #   resp.bridge.outputs[0].network_output.port #=> Integer
    #   resp.bridge.outputs[0].network_output.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.bridge.outputs[0].network_output.ttl #=> Integer
    #   resp.bridge.placement_arn #=> String
    #   resp.bridge.source_failover_config.failover_mode #=> String, one of "MERGE", "FAILOVER"
    #   resp.bridge.source_failover_config.recovery_window #=> Integer
    #   resp.bridge.source_failover_config.source_priority.primary_source #=> String
    #   resp.bridge.source_failover_config.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.bridge.sources #=> Array
    #   resp.bridge.sources[0].flow_source.flow_arn #=> String
    #   resp.bridge.sources[0].flow_source.flow_vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.bridge.sources[0].flow_source.name #=> String
    #   resp.bridge.sources[0].flow_source.output_arn #=> String
    #   resp.bridge.sources[0].network_source.multicast_ip #=> String
    #   resp.bridge.sources[0].network_source.multicast_source_settings.multicast_source_ip #=> String
    #   resp.bridge.sources[0].network_source.name #=> String
    #   resp.bridge.sources[0].network_source.network_name #=> String
    #   resp.bridge.sources[0].network_source.port #=> Integer
    #   resp.bridge.sources[0].network_source.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridge AWS API Documentation
    #
    # @overload update_bridge(params = {})
    # @param [Hash] params ({})
    def update_bridge(params = {}, options = {})
      req = build_request(:update_bridge, params)
      req.send_request(options)
    end

    # Updates an existing bridge output.
    #
    # @option params [required, String] :bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to update.
    #
    # @option params [Types::UpdateBridgeNetworkOutputRequest] :network_output
    #   The network of the bridge output.
    #
    # @option params [required, String] :output_name
    #   Tname of the output that you want to update.
    #
    # @return [Types::UpdateBridgeOutputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBridgeOutputResponse#bridge_arn #bridge_arn} => String
    #   * {Types::UpdateBridgeOutputResponse#output #output} => Types::BridgeOutput
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bridge_output({
    #     bridge_arn: "UpdateBridgeOutputRequestBridgeArnString", # required
    #     network_output: {
    #       ip_address: "String",
    #       network_name: "String",
    #       port: 1,
    #       protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #       ttl: 1,
    #     },
    #     output_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge_arn #=> String
    #   resp.output.flow_output.flow_arn #=> String
    #   resp.output.flow_output.flow_source_arn #=> String
    #   resp.output.flow_output.name #=> String
    #   resp.output.network_output.ip_address #=> String
    #   resp.output.network_output.name #=> String
    #   resp.output.network_output.network_name #=> String
    #   resp.output.network_output.port #=> Integer
    #   resp.output.network_output.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.output.network_output.ttl #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeOutput AWS API Documentation
    #
    # @overload update_bridge_output(params = {})
    # @param [Hash] params ({})
    def update_bridge_output(params = {}, options = {})
      req = build_request(:update_bridge_output, params)
      req.send_request(options)
    end

    # Updates an existing bridge source.
    #
    # @option params [required, String] :bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to update.
    #
    # @option params [Types::UpdateBridgeFlowSourceRequest] :flow_source
    #   The name of the flow that you want to update.
    #
    # @option params [Types::UpdateBridgeNetworkSourceRequest] :network_source
    #   The network for the bridge source.
    #
    # @option params [required, String] :source_name
    #   The name of the source that you want to update.
    #
    # @return [Types::UpdateBridgeSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBridgeSourceResponse#bridge_arn #bridge_arn} => String
    #   * {Types::UpdateBridgeSourceResponse#source #source} => Types::BridgeSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bridge_source({
    #     bridge_arn: "UpdateBridgeSourceRequestBridgeArnString", # required
    #     flow_source: {
    #       flow_arn: "UpdateBridgeFlowSourceRequestFlowArnString",
    #       flow_vpc_interface_attachment: {
    #         vpc_interface_name: "String",
    #       },
    #     },
    #     network_source: {
    #       multicast_ip: "String",
    #       multicast_source_settings: {
    #         multicast_source_ip: "String",
    #       },
    #       network_name: "String",
    #       port: 1,
    #       protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #     },
    #     source_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge_arn #=> String
    #   resp.source.flow_source.flow_arn #=> String
    #   resp.source.flow_source.flow_vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.source.flow_source.name #=> String
    #   resp.source.flow_source.output_arn #=> String
    #   resp.source.network_source.multicast_ip #=> String
    #   resp.source.network_source.multicast_source_settings.multicast_source_ip #=> String
    #   resp.source.network_source.name #=> String
    #   resp.source.network_source.network_name #=> String
    #   resp.source.network_source.port #=> Integer
    #   resp.source.network_source.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeSource AWS API Documentation
    #
    # @overload update_bridge_source(params = {})
    # @param [Hash] params ({})
    def update_bridge_source(params = {}, options = {})
      req = build_request(:update_bridge_source, params)
      req.send_request(options)
    end

    # Updates the bridge state.
    #
    # @option params [required, String] :bridge_arn
    #   The Amazon Resource Name (ARN) of the bridge that you want to update
    #   the state of.
    #
    # @option params [required, String] :desired_state
    #   The desired state for the bridge.
    #
    # @return [Types::UpdateBridgeStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBridgeStateResponse#bridge_arn #bridge_arn} => String
    #   * {Types::UpdateBridgeStateResponse#desired_state #desired_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bridge_state({
    #     bridge_arn: "UpdateBridgeStateRequestBridgeArnString", # required
    #     desired_state: "ACTIVE", # required, accepts ACTIVE, STANDBY, DELETED
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge_arn #=> String
    #   resp.desired_state #=> String, one of "ACTIVE", "STANDBY", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateBridgeState AWS API Documentation
    #
    # @overload update_bridge_state(params = {})
    # @param [Hash] params ({})
    def update_bridge_state(params = {}, options = {})
      req = build_request(:update_bridge_state, params)
      req.send_request(options)
    end

    # Updates an existing flow.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that you want to update.
    #
    # @option params [Types::UpdateFailoverConfig] :source_failover_config
    #   The settings for source failover.
    #
    # @option params [Types::UpdateMaintenance] :maintenance
    #   The maintenance setting of the flow.
    #
    # @option params [Types::MonitoringConfig] :source_monitoring_config
    #   The settings for source monitoring.
    #
    # @option params [Types::NdiConfig] :ndi_config
    #   Specifies the configuration settings for NDI outputs. Required when
    #   the flow includes NDI outputs.
    #
    # @return [Types::UpdateFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowResponse#flow #flow} => Types::Flow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow({
    #     flow_arn: "UpdateFlowRequestFlowArnString", # required
    #     source_failover_config: {
    #       failover_mode: "MERGE", # accepts MERGE, FAILOVER
    #       recovery_window: 1,
    #       source_priority: {
    #         primary_source: "String",
    #       },
    #       state: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     maintenance: {
    #       maintenance_day: "Monday", # accepts Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    #       maintenance_scheduled_date: "String",
    #       maintenance_start_hour: "String",
    #     },
    #     source_monitoring_config: {
    #       thumbnail_state: "ENABLED", # accepts ENABLED, DISABLED
    #       audio_monitoring_settings: [
    #         {
    #           silent_audio: {
    #             state: "ENABLED", # accepts ENABLED, DISABLED
    #             threshold_seconds: 1,
    #           },
    #         },
    #       ],
    #       content_quality_analysis_state: "ENABLED", # accepts ENABLED, DISABLED
    #       video_monitoring_settings: [
    #         {
    #           black_frames: {
    #             state: "ENABLED", # accepts ENABLED, DISABLED
    #             threshold_seconds: 1,
    #           },
    #           frozen_frames: {
    #             state: "ENABLED", # accepts ENABLED, DISABLED
    #             threshold_seconds: 1,
    #           },
    #         },
    #       ],
    #     },
    #     ndi_config: {
    #       ndi_state: "ENABLED", # accepts ENABLED, DISABLED
    #       machine_name: "String",
    #       ndi_discovery_servers: [
    #         {
    #           discovery_server_address: "String", # required
    #           discovery_server_port: 1,
    #           vpc_interface_adapter: "String", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.flow.availability_zone #=> String
    #   resp.flow.description #=> String
    #   resp.flow.egress_ip #=> String
    #   resp.flow.entitlements #=> Array
    #   resp.flow.entitlements[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.entitlements[0].description #=> String
    #   resp.flow.entitlements[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.entitlements[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.entitlements[0].encryption.device_id #=> String
    #   resp.flow.entitlements[0].encryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.entitlements[0].encryption.region #=> String
    #   resp.flow.entitlements[0].encryption.resource_id #=> String
    #   resp.flow.entitlements[0].encryption.role_arn #=> String
    #   resp.flow.entitlements[0].encryption.secret_arn #=> String
    #   resp.flow.entitlements[0].encryption.url #=> String
    #   resp.flow.entitlements[0].entitlement_arn #=> String
    #   resp.flow.entitlements[0].entitlement_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.entitlements[0].name #=> String
    #   resp.flow.entitlements[0].subscribers #=> Array
    #   resp.flow.entitlements[0].subscribers[0] #=> String
    #   resp.flow.flow_arn #=> String
    #   resp.flow.media_streams #=> Array
    #   resp.flow.media_streams[0].attributes.fmtp.channel_order #=> String
    #   resp.flow.media_streams[0].attributes.fmtp.colorimetry #=> String, one of "BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"
    #   resp.flow.media_streams[0].attributes.fmtp.exact_framerate #=> String
    #   resp.flow.media_streams[0].attributes.fmtp.par #=> String
    #   resp.flow.media_streams[0].attributes.fmtp.range #=> String, one of "NARROW", "FULL", "FULLPROTECT"
    #   resp.flow.media_streams[0].attributes.fmtp.scan_mode #=> String, one of "progressive", "interlace", "progressive-segmented-frame"
    #   resp.flow.media_streams[0].attributes.fmtp.tcs #=> String, one of "SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"
    #   resp.flow.media_streams[0].attributes.lang #=> String
    #   resp.flow.media_streams[0].clock_rate #=> Integer
    #   resp.flow.media_streams[0].description #=> String
    #   resp.flow.media_streams[0].fmt #=> Integer
    #   resp.flow.media_streams[0].media_stream_id #=> Integer
    #   resp.flow.media_streams[0].media_stream_name #=> String
    #   resp.flow.media_streams[0].media_stream_type #=> String, one of "video", "audio", "ancillary-data"
    #   resp.flow.media_streams[0].video_format #=> String
    #   resp.flow.name #=> String
    #   resp.flow.outputs #=> Array
    #   resp.flow.outputs[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.outputs[0].description #=> String
    #   resp.flow.outputs[0].destination #=> String
    #   resp.flow.outputs[0].encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.outputs[0].encryption.constant_initialization_vector #=> String
    #   resp.flow.outputs[0].encryption.device_id #=> String
    #   resp.flow.outputs[0].encryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.outputs[0].encryption.region #=> String
    #   resp.flow.outputs[0].encryption.resource_id #=> String
    #   resp.flow.outputs[0].encryption.role_arn #=> String
    #   resp.flow.outputs[0].encryption.secret_arn #=> String
    #   resp.flow.outputs[0].encryption.url #=> String
    #   resp.flow.outputs[0].entitlement_arn #=> String
    #   resp.flow.outputs[0].listener_address #=> String
    #   resp.flow.outputs[0].media_live_input_arn #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations #=> Array
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations #=> Array
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_ip #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].destination_port #=> Integer
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].interface.name #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations[0].destination_configurations[0].outbound_ip #=> String
    #   resp.flow.outputs[0].media_stream_output_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.compression_factor #=> Float
    #   resp.flow.outputs[0].media_stream_output_configurations[0].encoding_parameters.encoder_profile #=> String, one of "main", "high"
    #   resp.flow.outputs[0].media_stream_output_configurations[0].media_stream_name #=> String
    #   resp.flow.outputs[0].name #=> String
    #   resp.flow.outputs[0].output_arn #=> String
    #   resp.flow.outputs[0].port #=> Integer
    #   resp.flow.outputs[0].transport.cidr_allow_list #=> Array
    #   resp.flow.outputs[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.outputs[0].transport.max_bitrate #=> Integer
    #   resp.flow.outputs[0].transport.max_latency #=> Integer
    #   resp.flow.outputs[0].transport.max_sync_buffer #=> Integer
    #   resp.flow.outputs[0].transport.min_latency #=> Integer
    #   resp.flow.outputs[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.flow.outputs[0].transport.remote_id #=> String
    #   resp.flow.outputs[0].transport.sender_control_port #=> Integer
    #   resp.flow.outputs[0].transport.sender_ip_address #=> String
    #   resp.flow.outputs[0].transport.smoothing_latency #=> Integer
    #   resp.flow.outputs[0].transport.source_listener_address #=> String
    #   resp.flow.outputs[0].transport.source_listener_port #=> Integer
    #   resp.flow.outputs[0].transport.stream_id #=> String
    #   resp.flow.outputs[0].transport.ndi_speed_hq_quality #=> Integer
    #   resp.flow.outputs[0].transport.ndi_program_name #=> String
    #   resp.flow.outputs[0].vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.outputs[0].bridge_arn #=> String
    #   resp.flow.outputs[0].bridge_ports #=> Array
    #   resp.flow.outputs[0].bridge_ports[0] #=> Integer
    #   resp.flow.outputs[0].output_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.outputs[0].peer_ip_address #=> String
    #   resp.flow.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.source.decryption.constant_initialization_vector #=> String
    #   resp.flow.source.decryption.device_id #=> String
    #   resp.flow.source.decryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.source.decryption.region #=> String
    #   resp.flow.source.decryption.resource_id #=> String
    #   resp.flow.source.decryption.role_arn #=> String
    #   resp.flow.source.decryption.secret_arn #=> String
    #   resp.flow.source.decryption.url #=> String
    #   resp.flow.source.description #=> String
    #   resp.flow.source.entitlement_arn #=> String
    #   resp.flow.source.ingest_ip #=> String
    #   resp.flow.source.ingest_port #=> Integer
    #   resp.flow.source.media_stream_source_configurations #=> Array
    #   resp.flow.source.media_stream_source_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations #=> Array
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.flow.source.media_stream_source_configurations[0].input_configurations[0].interface.name #=> String
    #   resp.flow.source.media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.flow.source.name #=> String
    #   resp.flow.source.sender_control_port #=> Integer
    #   resp.flow.source.sender_ip_address #=> String
    #   resp.flow.source.source_arn #=> String
    #   resp.flow.source.transport.cidr_allow_list #=> Array
    #   resp.flow.source.transport.cidr_allow_list[0] #=> String
    #   resp.flow.source.transport.max_bitrate #=> Integer
    #   resp.flow.source.transport.max_latency #=> Integer
    #   resp.flow.source.transport.max_sync_buffer #=> Integer
    #   resp.flow.source.transport.min_latency #=> Integer
    #   resp.flow.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.flow.source.transport.remote_id #=> String
    #   resp.flow.source.transport.sender_control_port #=> Integer
    #   resp.flow.source.transport.sender_ip_address #=> String
    #   resp.flow.source.transport.smoothing_latency #=> Integer
    #   resp.flow.source.transport.source_listener_address #=> String
    #   resp.flow.source.transport.source_listener_port #=> Integer
    #   resp.flow.source.transport.stream_id #=> String
    #   resp.flow.source.transport.ndi_speed_hq_quality #=> Integer
    #   resp.flow.source.transport.ndi_program_name #=> String
    #   resp.flow.source.vpc_interface_name #=> String
    #   resp.flow.source.whitelist_cidr #=> String
    #   resp.flow.source.gateway_bridge_source.bridge_arn #=> String
    #   resp.flow.source.gateway_bridge_source.vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.source.peer_ip_address #=> String
    #   resp.flow.source_failover_config.failover_mode #=> String, one of "MERGE", "FAILOVER"
    #   resp.flow.source_failover_config.recovery_window #=> Integer
    #   resp.flow.source_failover_config.source_priority.primary_source #=> String
    #   resp.flow.source_failover_config.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.sources #=> Array
    #   resp.flow.sources[0].data_transfer_subscriber_fee_percent #=> Integer
    #   resp.flow.sources[0].decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.flow.sources[0].decryption.constant_initialization_vector #=> String
    #   resp.flow.sources[0].decryption.device_id #=> String
    #   resp.flow.sources[0].decryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.flow.sources[0].decryption.region #=> String
    #   resp.flow.sources[0].decryption.resource_id #=> String
    #   resp.flow.sources[0].decryption.role_arn #=> String
    #   resp.flow.sources[0].decryption.secret_arn #=> String
    #   resp.flow.sources[0].decryption.url #=> String
    #   resp.flow.sources[0].description #=> String
    #   resp.flow.sources[0].entitlement_arn #=> String
    #   resp.flow.sources[0].ingest_ip #=> String
    #   resp.flow.sources[0].ingest_port #=> Integer
    #   resp.flow.sources[0].media_stream_source_configurations #=> Array
    #   resp.flow.sources[0].media_stream_source_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations #=> Array
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.flow.sources[0].media_stream_source_configurations[0].input_configurations[0].interface.name #=> String
    #   resp.flow.sources[0].media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.flow.sources[0].name #=> String
    #   resp.flow.sources[0].sender_control_port #=> Integer
    #   resp.flow.sources[0].sender_ip_address #=> String
    #   resp.flow.sources[0].source_arn #=> String
    #   resp.flow.sources[0].transport.cidr_allow_list #=> Array
    #   resp.flow.sources[0].transport.cidr_allow_list[0] #=> String
    #   resp.flow.sources[0].transport.max_bitrate #=> Integer
    #   resp.flow.sources[0].transport.max_latency #=> Integer
    #   resp.flow.sources[0].transport.max_sync_buffer #=> Integer
    #   resp.flow.sources[0].transport.min_latency #=> Integer
    #   resp.flow.sources[0].transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.flow.sources[0].transport.remote_id #=> String
    #   resp.flow.sources[0].transport.sender_control_port #=> Integer
    #   resp.flow.sources[0].transport.sender_ip_address #=> String
    #   resp.flow.sources[0].transport.smoothing_latency #=> Integer
    #   resp.flow.sources[0].transport.source_listener_address #=> String
    #   resp.flow.sources[0].transport.source_listener_port #=> Integer
    #   resp.flow.sources[0].transport.stream_id #=> String
    #   resp.flow.sources[0].transport.ndi_speed_hq_quality #=> Integer
    #   resp.flow.sources[0].transport.ndi_program_name #=> String
    #   resp.flow.sources[0].vpc_interface_name #=> String
    #   resp.flow.sources[0].whitelist_cidr #=> String
    #   resp.flow.sources[0].gateway_bridge_source.bridge_arn #=> String
    #   resp.flow.sources[0].gateway_bridge_source.vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.flow.sources[0].peer_ip_address #=> String
    #   resp.flow.status #=> String, one of "STANDBY", "ACTIVE", "UPDATING", "DELETING", "STARTING", "STOPPING", "ERROR"
    #   resp.flow.vpc_interfaces #=> Array
    #   resp.flow.vpc_interfaces[0].name #=> String
    #   resp.flow.vpc_interfaces[0].network_interface_ids #=> Array
    #   resp.flow.vpc_interfaces[0].network_interface_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].network_interface_type #=> String, one of "ena", "efa"
    #   resp.flow.vpc_interfaces[0].role_arn #=> String
    #   resp.flow.vpc_interfaces[0].security_group_ids #=> Array
    #   resp.flow.vpc_interfaces[0].security_group_ids[0] #=> String
    #   resp.flow.vpc_interfaces[0].subnet_id #=> String
    #   resp.flow.maintenance.maintenance_day #=> String, one of "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"
    #   resp.flow.maintenance.maintenance_deadline #=> String
    #   resp.flow.maintenance.maintenance_scheduled_date #=> String
    #   resp.flow.maintenance.maintenance_start_hour #=> String
    #   resp.flow.source_monitoring_config.thumbnail_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.audio_monitoring_settings #=> Array
    #   resp.flow.source_monitoring_config.audio_monitoring_settings[0].silent_audio.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.audio_monitoring_settings[0].silent_audio.threshold_seconds #=> Integer
    #   resp.flow.source_monitoring_config.content_quality_analysis_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.video_monitoring_settings #=> Array
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].black_frames.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].black_frames.threshold_seconds #=> Integer
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].frozen_frames.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.source_monitoring_config.video_monitoring_settings[0].frozen_frames.threshold_seconds #=> Integer
    #   resp.flow.flow_size #=> String, one of "MEDIUM", "LARGE"
    #   resp.flow.ndi_config.ndi_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.flow.ndi_config.machine_name #=> String
    #   resp.flow.ndi_config.ndi_discovery_servers #=> Array
    #   resp.flow.ndi_config.ndi_discovery_servers[0].discovery_server_address #=> String
    #   resp.flow.ndi_config.ndi_discovery_servers[0].discovery_server_port #=> Integer
    #   resp.flow.ndi_config.ndi_discovery_servers[0].vpc_interface_adapter #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlow AWS API Documentation
    #
    # @overload update_flow(params = {})
    # @param [Hash] params ({})
    def update_flow(params = {}, options = {})
      req = build_request(:update_flow, params)
      req.send_request(options)
    end

    # Updates an entitlement. You can change an entitlement's description,
    # subscribers, and encryption. If you change the subscribers, the
    # service will remove the outputs that are are used by the subscribers
    # that are removed.
    #
    # @option params [String] :description
    #   A description of the entitlement. This description appears only on the
    #   MediaConnect console and will not be seen by the subscriber or end
    #   user.
    #
    # @option params [Types::UpdateEncryption] :encryption
    #   The type of encryption that will be used on the output associated with
    #   this entitlement. Allowable encryption types: static-key, speke.
    #
    # @option params [required, String] :entitlement_arn
    #   The Amazon Resource Name (ARN) of the entitlement that you want to
    #   update.
    #
    # @option params [String] :entitlement_status
    #   An indication of whether you want to enable the entitlement to allow
    #   access, or disable it to stop streaming content to the subscriber’s
    #   flow temporarily. If you don’t specify the `entitlementStatus` field
    #   in your request, MediaConnect leaves the value unchanged.
    #
    # @option params [required, String] :flow_arn
    #   The ARN of the flow that is associated with the entitlement that you
    #   want to update.
    #
    # @option params [Array<String>] :subscribers
    #   The Amazon Web Services account IDs that you want to share your
    #   content with. The receiving accounts (subscribers) will be allowed to
    #   create their own flow using your content as the source.
    #
    # @return [Types::UpdateFlowEntitlementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowEntitlementResponse#entitlement #entitlement} => Types::Entitlement
    #   * {Types::UpdateFlowEntitlementResponse#flow_arn #flow_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_entitlement({
    #     description: "String",
    #     encryption: {
    #       algorithm: "aes128", # accepts aes128, aes192, aes256
    #       constant_initialization_vector: "String",
    #       device_id: "String",
    #       key_type: "speke", # accepts speke, static-key, srt-password
    #       region: "String",
    #       resource_id: "String",
    #       role_arn: "String",
    #       secret_arn: "String",
    #       url: "String",
    #     },
    #     entitlement_arn: "UpdateFlowEntitlementRequestEntitlementArnString", # required
    #     entitlement_status: "ENABLED", # accepts ENABLED, DISABLED
    #     flow_arn: "UpdateFlowEntitlementRequestFlowArnString", # required
    #     subscribers: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.entitlement.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.entitlement.description #=> String
    #   resp.entitlement.encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.entitlement.encryption.constant_initialization_vector #=> String
    #   resp.entitlement.encryption.device_id #=> String
    #   resp.entitlement.encryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.entitlement.encryption.region #=> String
    #   resp.entitlement.encryption.resource_id #=> String
    #   resp.entitlement.encryption.role_arn #=> String
    #   resp.entitlement.encryption.secret_arn #=> String
    #   resp.entitlement.encryption.url #=> String
    #   resp.entitlement.entitlement_arn #=> String
    #   resp.entitlement.entitlement_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.entitlement.name #=> String
    #   resp.entitlement.subscribers #=> Array
    #   resp.entitlement.subscribers[0] #=> String
    #   resp.flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowEntitlement AWS API Documentation
    #
    # @overload update_flow_entitlement(params = {})
    # @param [Hash] params ({})
    def update_flow_entitlement(params = {}, options = {})
      req = build_request(:update_flow_entitlement, params)
      req.send_request(options)
    end

    # Updates an existing media stream.
    #
    # @option params [Types::MediaStreamAttributesRequest] :attributes
    #   The attributes that you want to assign to the media stream.
    #
    # @option params [Integer] :clock_rate
    #   The sample rate for the stream. This value in measured in kHz.
    #
    # @option params [String] :description
    #   A description that can help you quickly identify what your media
    #   stream is used for.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that is associated with the
    #   media stream that you updated.
    #
    # @option params [required, String] :media_stream_name
    #   The media stream that you updated.
    #
    # @option params [String] :media_stream_type
    #   The type of media stream.
    #
    # @option params [String] :video_format
    #   The resolution of the video.
    #
    # @return [Types::UpdateFlowMediaStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowMediaStreamResponse#flow_arn #flow_arn} => String
    #   * {Types::UpdateFlowMediaStreamResponse#media_stream #media_stream} => Types::MediaStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_media_stream({
    #     attributes: {
    #       fmtp: {
    #         channel_order: "String",
    #         colorimetry: "BT601", # accepts BT601, BT709, BT2020, BT2100, ST2065-1, ST2065-3, XYZ
    #         exact_framerate: "String",
    #         par: "String",
    #         range: "NARROW", # accepts NARROW, FULL, FULLPROTECT
    #         scan_mode: "progressive", # accepts progressive, interlace, progressive-segmented-frame
    #         tcs: "SDR", # accepts SDR, PQ, HLG, LINEAR, BT2100LINPQ, BT2100LINHLG, ST2065-1, ST428-1, DENSITY
    #       },
    #       lang: "String",
    #     },
    #     clock_rate: 1,
    #     description: "String",
    #     flow_arn: "UpdateFlowMediaStreamRequestFlowArnString", # required
    #     media_stream_name: "String", # required
    #     media_stream_type: "video", # accepts video, audio, ancillary-data
    #     video_format: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.media_stream.attributes.fmtp.channel_order #=> String
    #   resp.media_stream.attributes.fmtp.colorimetry #=> String, one of "BT601", "BT709", "BT2020", "BT2100", "ST2065-1", "ST2065-3", "XYZ"
    #   resp.media_stream.attributes.fmtp.exact_framerate #=> String
    #   resp.media_stream.attributes.fmtp.par #=> String
    #   resp.media_stream.attributes.fmtp.range #=> String, one of "NARROW", "FULL", "FULLPROTECT"
    #   resp.media_stream.attributes.fmtp.scan_mode #=> String, one of "progressive", "interlace", "progressive-segmented-frame"
    #   resp.media_stream.attributes.fmtp.tcs #=> String, one of "SDR", "PQ", "HLG", "LINEAR", "BT2100LINPQ", "BT2100LINHLG", "ST2065-1", "ST428-1", "DENSITY"
    #   resp.media_stream.attributes.lang #=> String
    #   resp.media_stream.clock_rate #=> Integer
    #   resp.media_stream.description #=> String
    #   resp.media_stream.fmt #=> Integer
    #   resp.media_stream.media_stream_id #=> Integer
    #   resp.media_stream.media_stream_name #=> String
    #   resp.media_stream.media_stream_type #=> String, one of "video", "audio", "ancillary-data"
    #   resp.media_stream.video_format #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowMediaStream AWS API Documentation
    #
    # @overload update_flow_media_stream(params = {})
    # @param [Hash] params ({})
    def update_flow_media_stream(params = {}, options = {})
      req = build_request(:update_flow_media_stream, params)
      req.send_request(options)
    end

    # Updates an existing flow output.
    #
    # @option params [Array<String>] :cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output
    #   requests to this flow. These IP addresses should be in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    # @option params [String] :description
    #   A description of the output. This description appears only on the
    #   MediaConnect console and will not be seen by the end user.
    #
    # @option params [String] :destination
    #   The IP address where you want to send the output.
    #
    # @option params [Types::UpdateEncryption] :encryption
    #   The type of key used for the encryption. If no `keyType` is provided,
    #   the service will use the default setting (static-key). Allowable
    #   encryption types: static-key.
    #
    # @option params [required, String] :flow_arn
    #   The Amazon Resource Name (ARN) of the flow that is associated with the
    #   output that you want to update.
    #
    # @option params [Integer] :max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #
    # @option params [Array<Types::MediaStreamOutputConfigurationRequest>] :media_stream_output_configurations
    #   The media streams that are associated with the output, and the
    #   parameters for those associations.
    #
    # @option params [Integer] :min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In streams
    #   that use the SRT protocol, this value that you set on your
    #   MediaConnect source or output represents the minimal potential latency
    #   of that connection. The latency of the stream is set to the highest
    #   number between the sender’s minimum latency and the receiver’s minimum
    #   latency.
    #
    # @option params [required, String] :output_arn
    #   The ARN of the output that you want to update.
    #
    # @option params [Integer] :port
    #   The port to use when content is distributed to this output.
    #
    # @option params [String] :protocol
    #   The protocol to use for the output.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #
    # @option params [String] :remote_id
    #   The remote ID for the Zixi-pull stream.
    #
    # @option params [Integer] :sender_control_port
    #   The port that the flow uses to send outbound requests to initiate
    #   connection with the sender.
    #
    # @option params [String] :sender_ip_address
    #   The IP address that the flow communicates with to initiate connection
    #   with the sender.
    #
    # @option params [Integer] :smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
    #   streams.
    #
    # @option params [String] :stream_id
    #   The stream ID that you want to use for this transport. This parameter
    #   applies only to Zixi and SRT caller-based streams.
    #
    # @option params [Types::VpcInterfaceAttachment] :vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #
    # @option params [String] :output_status
    #   An indication of whether the output should transmit data or not. If
    #   you don't specify the `outputStatus` field in your request,
    #   MediaConnect leaves the value unchanged.
    #
    # @option params [String] :ndi_program_name
    #   A suffix for the names of the NDI sources that the flow creates. If a
    #   custom name isn't specified, MediaConnect uses the output name.
    #
    # @option params [Integer] :ndi_speed_hq_quality
    #   A quality setting for the NDI Speed HQ encoder.
    #
    # @return [Types::UpdateFlowOutputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowOutputResponse#flow_arn #flow_arn} => String
    #   * {Types::UpdateFlowOutputResponse#output #output} => Types::Output
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_output({
    #     cidr_allow_list: ["String"],
    #     description: "String",
    #     destination: "String",
    #     encryption: {
    #       algorithm: "aes128", # accepts aes128, aes192, aes256
    #       constant_initialization_vector: "String",
    #       device_id: "String",
    #       key_type: "speke", # accepts speke, static-key, srt-password
    #       region: "String",
    #       resource_id: "String",
    #       role_arn: "String",
    #       secret_arn: "String",
    #       url: "String",
    #     },
    #     flow_arn: "UpdateFlowOutputRequestFlowArnString", # required
    #     max_latency: 1,
    #     media_stream_output_configurations: [
    #       {
    #         destination_configurations: [
    #           {
    #             destination_ip: "String", # required
    #             destination_port: 1, # required
    #             interface: { # required
    #               name: "String", # required
    #             },
    #           },
    #         ],
    #         encoding_name: "jxsv", # required, accepts jxsv, raw, smpte291, pcm
    #         encoding_parameters: {
    #           compression_factor: 1.0, # required
    #           encoder_profile: "main", # required, accepts main, high
    #         },
    #         media_stream_name: "String", # required
    #       },
    #     ],
    #     min_latency: 1,
    #     output_arn: "UpdateFlowOutputRequestOutputArnString", # required
    #     port: 1,
    #     protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #     remote_id: "String",
    #     sender_control_port: 1,
    #     sender_ip_address: "String",
    #     smoothing_latency: 1,
    #     stream_id: "String",
    #     vpc_interface_attachment: {
    #       vpc_interface_name: "String",
    #     },
    #     output_status: "ENABLED", # accepts ENABLED, DISABLED
    #     ndi_program_name: "String",
    #     ndi_speed_hq_quality: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.output.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.output.description #=> String
    #   resp.output.destination #=> String
    #   resp.output.encryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.output.encryption.constant_initialization_vector #=> String
    #   resp.output.encryption.device_id #=> String
    #   resp.output.encryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.output.encryption.region #=> String
    #   resp.output.encryption.resource_id #=> String
    #   resp.output.encryption.role_arn #=> String
    #   resp.output.encryption.secret_arn #=> String
    #   resp.output.encryption.url #=> String
    #   resp.output.entitlement_arn #=> String
    #   resp.output.listener_address #=> String
    #   resp.output.media_live_input_arn #=> String
    #   resp.output.media_stream_output_configurations #=> Array
    #   resp.output.media_stream_output_configurations[0].destination_configurations #=> Array
    #   resp.output.media_stream_output_configurations[0].destination_configurations[0].destination_ip #=> String
    #   resp.output.media_stream_output_configurations[0].destination_configurations[0].destination_port #=> Integer
    #   resp.output.media_stream_output_configurations[0].destination_configurations[0].interface.name #=> String
    #   resp.output.media_stream_output_configurations[0].destination_configurations[0].outbound_ip #=> String
    #   resp.output.media_stream_output_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.output.media_stream_output_configurations[0].encoding_parameters.compression_factor #=> Float
    #   resp.output.media_stream_output_configurations[0].encoding_parameters.encoder_profile #=> String, one of "main", "high"
    #   resp.output.media_stream_output_configurations[0].media_stream_name #=> String
    #   resp.output.name #=> String
    #   resp.output.output_arn #=> String
    #   resp.output.port #=> Integer
    #   resp.output.transport.cidr_allow_list #=> Array
    #   resp.output.transport.cidr_allow_list[0] #=> String
    #   resp.output.transport.max_bitrate #=> Integer
    #   resp.output.transport.max_latency #=> Integer
    #   resp.output.transport.max_sync_buffer #=> Integer
    #   resp.output.transport.min_latency #=> Integer
    #   resp.output.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.output.transport.remote_id #=> String
    #   resp.output.transport.sender_control_port #=> Integer
    #   resp.output.transport.sender_ip_address #=> String
    #   resp.output.transport.smoothing_latency #=> Integer
    #   resp.output.transport.source_listener_address #=> String
    #   resp.output.transport.source_listener_port #=> Integer
    #   resp.output.transport.stream_id #=> String
    #   resp.output.transport.ndi_speed_hq_quality #=> Integer
    #   resp.output.transport.ndi_program_name #=> String
    #   resp.output.vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.output.bridge_arn #=> String
    #   resp.output.bridge_ports #=> Array
    #   resp.output.bridge_ports[0] #=> Integer
    #   resp.output.output_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.output.peer_ip_address #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowOutput AWS API Documentation
    #
    # @overload update_flow_output(params = {})
    # @param [Hash] params ({})
    def update_flow_output(params = {}, options = {})
      req = build_request(:update_flow_output, params)
      req.send_request(options)
    end

    # Updates the source of a flow.
    #
    # @option params [Types::UpdateEncryption] :decryption
    #   The type of encryption that is used on the content ingested from the
    #   source.
    #
    # @option params [String] :description
    #   A description of the source. This description is not visible outside
    #   of the current Amazon Web Services account.
    #
    # @option params [String] :entitlement_arn
    #   The Amazon Resource Name (ARN) of the entitlement that allows you to
    #   subscribe to the flow. The entitlement is set by the content
    #   originator, and the ARN is generated as part of the originator's
    #   flow.
    #
    # @option params [required, String] :flow_arn
    #   The ARN of the flow that you want to update.
    #
    # @option params [Integer] :ingest_port
    #   The port that the flow listens on for incoming content. If the
    #   protocol of the source is Zixi, the port must be set to 2088.
    #
    # @option params [Integer] :max_bitrate
    #   The maximum bitrate for RIST, RTP, and RTP-FEC streams.
    #
    # @option params [Integer] :max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #
    # @option params [Integer] :max_sync_buffer
    #   The size of the buffer (in milliseconds) to use to sync incoming
    #   source data.
    #
    # @option params [Array<Types::MediaStreamSourceConfigurationRequest>] :media_stream_source_configurations
    #   The media stream that is associated with the source, and the
    #   parameters for that association.
    #
    # @option params [Integer] :min_latency
    #   The minimum latency in milliseconds for SRT-based streams. In streams
    #   that use the SRT protocol, this value that you set on your
    #   MediaConnect source or output represents the minimal potential latency
    #   of that connection. The latency of the stream is set to the highest
    #   number between the sender’s minimum latency and the receiver’s minimum
    #   latency.
    #
    # @option params [String] :protocol
    #   The protocol that the source uses to deliver the content to
    #   MediaConnect.
    #
    #   <note markdown="1"> Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
    #   This reference is maintained for legacy purposes only.
    #
    #    </note>
    #
    # @option params [Integer] :sender_control_port
    #   The port that the flow uses to send outbound requests to initiate
    #   connection with the sender.
    #
    # @option params [String] :sender_ip_address
    #   The IP address that the flow communicates with to initiate connection
    #   with the sender.
    #
    # @option params [required, String] :source_arn
    #   The ARN of the source that you want to update.
    #
    # @option params [String] :source_listener_address
    #   The source IP or domain name for SRT-caller protocol.
    #
    # @option params [Integer] :source_listener_port
    #   Source port for SRT-caller protocol.
    #
    # @option params [String] :stream_id
    #   The stream ID that you want to use for this transport. This parameter
    #   applies only to Zixi and SRT caller-based streams.
    #
    # @option params [String] :vpc_interface_name
    #   The name of the VPC interface that you want to send your output to.
    #
    # @option params [String] :whitelist_cidr
    #   The range of IP addresses that are allowed to contribute content to
    #   your source. Format the IP addresses as a Classless Inter-Domain
    #   Routing (CIDR) block; for example, 10.0.0.0/16.
    #
    # @option params [Types::UpdateGatewayBridgeSourceRequest] :gateway_bridge_source
    #   The source configuration for cloud flows receiving a stream from a
    #   bridge.
    #
    # @return [Types::UpdateFlowSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlowSourceResponse#flow_arn #flow_arn} => String
    #   * {Types::UpdateFlowSourceResponse#source #source} => Types::Source
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flow_source({
    #     decryption: {
    #       algorithm: "aes128", # accepts aes128, aes192, aes256
    #       constant_initialization_vector: "String",
    #       device_id: "String",
    #       key_type: "speke", # accepts speke, static-key, srt-password
    #       region: "String",
    #       resource_id: "String",
    #       role_arn: "String",
    #       secret_arn: "String",
    #       url: "String",
    #     },
    #     description: "String",
    #     entitlement_arn: "UpdateFlowSourceRequestEntitlementArnString",
    #     flow_arn: "UpdateFlowSourceRequestFlowArnString", # required
    #     ingest_port: 1,
    #     max_bitrate: 1,
    #     max_latency: 1,
    #     max_sync_buffer: 1,
    #     media_stream_source_configurations: [
    #       {
    #         encoding_name: "jxsv", # required, accepts jxsv, raw, smpte291, pcm
    #         input_configurations: [
    #           {
    #             input_port: 1, # required
    #             interface: { # required
    #               name: "String", # required
    #             },
    #           },
    #         ],
    #         media_stream_name: "String", # required
    #       },
    #     ],
    #     min_latency: 1,
    #     protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
    #     sender_control_port: 1,
    #     sender_ip_address: "String",
    #     source_arn: "UpdateFlowSourceRequestSourceArnString", # required
    #     source_listener_address: "String",
    #     source_listener_port: 1,
    #     stream_id: "String",
    #     vpc_interface_name: "String",
    #     whitelist_cidr: "String",
    #     gateway_bridge_source: {
    #       bridge_arn: "UpdateGatewayBridgeSourceRequestBridgeArnString",
    #       vpc_interface_attachment: {
    #         vpc_interface_name: "String",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.flow_arn #=> String
    #   resp.source.data_transfer_subscriber_fee_percent #=> Integer
    #   resp.source.decryption.algorithm #=> String, one of "aes128", "aes192", "aes256"
    #   resp.source.decryption.constant_initialization_vector #=> String
    #   resp.source.decryption.device_id #=> String
    #   resp.source.decryption.key_type #=> String, one of "speke", "static-key", "srt-password"
    #   resp.source.decryption.region #=> String
    #   resp.source.decryption.resource_id #=> String
    #   resp.source.decryption.role_arn #=> String
    #   resp.source.decryption.secret_arn #=> String
    #   resp.source.decryption.url #=> String
    #   resp.source.description #=> String
    #   resp.source.entitlement_arn #=> String
    #   resp.source.ingest_ip #=> String
    #   resp.source.ingest_port #=> Integer
    #   resp.source.media_stream_source_configurations #=> Array
    #   resp.source.media_stream_source_configurations[0].encoding_name #=> String, one of "jxsv", "raw", "smpte291", "pcm"
    #   resp.source.media_stream_source_configurations[0].input_configurations #=> Array
    #   resp.source.media_stream_source_configurations[0].input_configurations[0].input_ip #=> String
    #   resp.source.media_stream_source_configurations[0].input_configurations[0].input_port #=> Integer
    #   resp.source.media_stream_source_configurations[0].input_configurations[0].interface.name #=> String
    #   resp.source.media_stream_source_configurations[0].media_stream_name #=> String
    #   resp.source.name #=> String
    #   resp.source.sender_control_port #=> Integer
    #   resp.source.sender_ip_address #=> String
    #   resp.source.source_arn #=> String
    #   resp.source.transport.cidr_allow_list #=> Array
    #   resp.source.transport.cidr_allow_list[0] #=> String
    #   resp.source.transport.max_bitrate #=> Integer
    #   resp.source.transport.max_latency #=> Integer
    #   resp.source.transport.max_sync_buffer #=> Integer
    #   resp.source.transport.min_latency #=> Integer
    #   resp.source.transport.protocol #=> String, one of "zixi-push", "rtp-fec", "rtp", "zixi-pull", "rist", "st2110-jpegxs", "cdi", "srt-listener", "srt-caller", "fujitsu-qos", "udp", "ndi-speed-hq"
    #   resp.source.transport.remote_id #=> String
    #   resp.source.transport.sender_control_port #=> Integer
    #   resp.source.transport.sender_ip_address #=> String
    #   resp.source.transport.smoothing_latency #=> Integer
    #   resp.source.transport.source_listener_address #=> String
    #   resp.source.transport.source_listener_port #=> Integer
    #   resp.source.transport.stream_id #=> String
    #   resp.source.transport.ndi_speed_hq_quality #=> Integer
    #   resp.source.transport.ndi_program_name #=> String
    #   resp.source.vpc_interface_name #=> String
    #   resp.source.whitelist_cidr #=> String
    #   resp.source.gateway_bridge_source.bridge_arn #=> String
    #   resp.source.gateway_bridge_source.vpc_interface_attachment.vpc_interface_name #=> String
    #   resp.source.peer_ip_address #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowSource AWS API Documentation
    #
    # @overload update_flow_source(params = {})
    # @param [Hash] params ({})
    def update_flow_source(params = {}, options = {})
      req = build_request(:update_flow_source, params)
      req.send_request(options)
    end

    # Updates an existing gateway instance.
    #
    # @option params [String] :bridge_placement
    #   The state of the instance. `ACTIVE` or `INACTIVE`.
    #
    # @option params [required, String] :gateway_instance_arn
    #   The Amazon Resource Name (ARN) of the gateway instance that you want
    #   to update.
    #
    # @return [Types::UpdateGatewayInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayInstanceResponse#bridge_placement #bridge_placement} => String
    #   * {Types::UpdateGatewayInstanceResponse#gateway_instance_arn #gateway_instance_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_instance({
    #     bridge_placement: "AVAILABLE", # accepts AVAILABLE, LOCKED
    #     gateway_instance_arn: "UpdateGatewayInstanceRequestGatewayInstanceArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bridge_placement #=> String, one of "AVAILABLE", "LOCKED"
    #   resp.gateway_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateGatewayInstance AWS API Documentation
    #
    # @overload update_gateway_instance(params = {})
    # @param [Hash] params ({})
    def update_gateway_instance(params = {}, options = {})
      req = build_request(:update_gateway_instance, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MediaConnect')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-mediaconnect'
      context[:gem_version] = '1.83.0'
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
    # | waiter_name  | params                 | :delay   | :max_attempts |
    # | ------------ | ---------------------- | -------- | ------------- |
    # | flow_active  | {Client#describe_flow} | 3        | 40            |
    # | flow_deleted | {Client#describe_flow} | 3        | 40            |
    # | flow_standby | {Client#describe_flow} | 3        | 40            |
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
        flow_active: Waiters::FlowActive,
        flow_deleted: Waiters::FlowDeleted,
        flow_standby: Waiters::FlowStandby
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
