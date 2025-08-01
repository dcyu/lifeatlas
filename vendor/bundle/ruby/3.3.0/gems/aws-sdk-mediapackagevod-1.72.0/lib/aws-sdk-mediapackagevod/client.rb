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

module Aws::MediaPackageVod
  # An API client for MediaPackageVod.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MediaPackageVod::Client.new(
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

    @identifier = :mediapackagevod

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
    add_plugin(Aws::MediaPackageVod::Plugins::Endpoints)

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
    #   @option options [Aws::MediaPackageVod::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MediaPackageVod::EndpointParameters`.
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

    # Changes the packaging group's properities to configure log
    # subscription
    #
    # @option params [Types::EgressAccessLogs] :egress_access_logs
    #   Configure egress access logging.
    #
    # @option params [required, String] :id
    #
    # @return [Types::ConfigureLogsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigureLogsResponse#arn #arn} => String
    #   * {Types::ConfigureLogsResponse#authorization #authorization} => Types::Authorization
    #   * {Types::ConfigureLogsResponse#created_at #created_at} => String
    #   * {Types::ConfigureLogsResponse#domain_name #domain_name} => String
    #   * {Types::ConfigureLogsResponse#egress_access_logs #egress_access_logs} => Types::EgressAccessLogs
    #   * {Types::ConfigureLogsResponse#id #id} => String
    #   * {Types::ConfigureLogsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.configure_logs({
    #     egress_access_logs: {
    #       log_group_name: "__string",
    #     },
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.authorization.cdn_identifier_secret #=> String
    #   resp.authorization.secrets_role_arn #=> String
    #   resp.created_at #=> String
    #   resp.domain_name #=> String
    #   resp.egress_access_logs.log_group_name #=> String
    #   resp.id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ConfigureLogs AWS API Documentation
    #
    # @overload configure_logs(params = {})
    # @param [Hash] params ({})
    def configure_logs(params = {}, options = {})
      req = build_request(:configure_logs, params)
      req.send_request(options)
    end

    # Creates a new MediaPackage VOD Asset resource.
    #
    # @option params [required, String] :id
    #
    # @option params [required, String] :packaging_group_id
    #
    # @option params [String] :resource_id
    #
    # @option params [required, String] :source_arn
    #
    # @option params [required, String] :source_role_arn
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of tags associated with a resource
    #
    # @return [Types::CreateAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetResponse#arn #arn} => String
    #   * {Types::CreateAssetResponse#created_at #created_at} => String
    #   * {Types::CreateAssetResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::EgressEndpoint&gt;
    #   * {Types::CreateAssetResponse#id #id} => String
    #   * {Types::CreateAssetResponse#packaging_group_id #packaging_group_id} => String
    #   * {Types::CreateAssetResponse#resource_id #resource_id} => String
    #   * {Types::CreateAssetResponse#source_arn #source_arn} => String
    #   * {Types::CreateAssetResponse#source_role_arn #source_role_arn} => String
    #   * {Types::CreateAssetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset({
    #     id: "__string", # required
    #     packaging_group_id: "__string", # required
    #     resource_id: "__string",
    #     source_arn: "__string", # required
    #     source_role_arn: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].packaging_configuration_id #=> String
    #   resp.egress_endpoints[0].status #=> String
    #   resp.egress_endpoints[0].url #=> String
    #   resp.id #=> String
    #   resp.packaging_group_id #=> String
    #   resp.resource_id #=> String
    #   resp.source_arn #=> String
    #   resp.source_role_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreateAsset AWS API Documentation
    #
    # @overload create_asset(params = {})
    # @param [Hash] params ({})
    def create_asset(params = {}, options = {})
      req = build_request(:create_asset, params)
      req.send_request(options)
    end

    # Creates a new MediaPackage VOD PackagingConfiguration resource.
    #
    # @option params [Types::CmafPackage] :cmaf_package
    #   A CMAF packaging configuration.
    #
    # @option params [Types::DashPackage] :dash_package
    #   A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
    #
    # @option params [Types::HlsPackage] :hls_package
    #   An HTTP Live Streaming (HLS) packaging configuration.
    #
    # @option params [required, String] :id
    #
    # @option params [Types::MssPackage] :mss_package
    #   A Microsoft Smooth Streaming (MSS) PackagingConfiguration.
    #
    # @option params [required, String] :packaging_group_id
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of tags associated with a resource
    #
    # @return [Types::CreatePackagingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackagingConfigurationResponse#arn #arn} => String
    #   * {Types::CreatePackagingConfigurationResponse#cmaf_package #cmaf_package} => Types::CmafPackage
    #   * {Types::CreatePackagingConfigurationResponse#created_at #created_at} => String
    #   * {Types::CreatePackagingConfigurationResponse#dash_package #dash_package} => Types::DashPackage
    #   * {Types::CreatePackagingConfigurationResponse#hls_package #hls_package} => Types::HlsPackage
    #   * {Types::CreatePackagingConfigurationResponse#id #id} => String
    #   * {Types::CreatePackagingConfigurationResponse#mss_package #mss_package} => Types::MssPackage
    #   * {Types::CreatePackagingConfigurationResponse#packaging_group_id #packaging_group_id} => String
    #   * {Types::CreatePackagingConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_packaging_configuration({
    #     cmaf_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "PRESET-AUDIO-1", # required, accepts PRESET-AUDIO-1, PRESET-AUDIO-2, PRESET-AUDIO-3, SHARED, UNENCRYPTED
    #             preset_speke_20_video: "PRESET-VIDEO-1", # required, accepts PRESET-VIDEO-1, PRESET-VIDEO-2, PRESET-VIDEO-3, PRESET-VIDEO-4, PRESET-VIDEO-5, PRESET-VIDEO-6, PRESET-VIDEO-7, PRESET-VIDEO-8, SHARED, UNENCRYPTED
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       hls_manifests: [ # required
    #         {
    #           ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #       ],
    #       include_encoder_configuration_in_segments: false,
    #       segment_duration_seconds: 1,
    #     },
    #     dash_package: {
    #       dash_manifests: [ # required
    #         {
    #           manifest_layout: "FULL", # accepts FULL, COMPACT
    #           manifest_name: "__string",
    #           min_buffer_time_seconds: 1,
    #           profile: "NONE", # accepts NONE, HBBTV_1_5
    #           scte_markers_source: "SEGMENTS", # accepts SEGMENTS, MANIFEST
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #       ],
    #       encryption: {
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "PRESET-AUDIO-1", # required, accepts PRESET-AUDIO-1, PRESET-AUDIO-2, PRESET-AUDIO-3, SHARED, UNENCRYPTED
    #             preset_speke_20_video: "PRESET-VIDEO-1", # required, accepts PRESET-VIDEO-1, PRESET-VIDEO-2, PRESET-VIDEO-3, PRESET-VIDEO-4, PRESET-VIDEO-5, PRESET-VIDEO-6, PRESET-VIDEO-7, PRESET-VIDEO-8, SHARED, UNENCRYPTED
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       include_encoder_configuration_in_segments: false,
    #       include_iframe_only_stream: false,
    #       period_triggers: ["ADS"], # accepts ADS
    #       segment_duration_seconds: 1,
    #       segment_template_format: "NUMBER_WITH_TIMELINE", # accepts NUMBER_WITH_TIMELINE, TIME_WITH_TIMELINE, NUMBER_WITH_DURATION
    #     },
    #     hls_package: {
    #       encryption: {
    #         constant_initialization_vector: "__string",
    #         encryption_method: "AES_128", # accepts AES_128, SAMPLE_AES
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "PRESET-AUDIO-1", # required, accepts PRESET-AUDIO-1, PRESET-AUDIO-2, PRESET-AUDIO-3, SHARED, UNENCRYPTED
    #             preset_speke_20_video: "PRESET-VIDEO-1", # required, accepts PRESET-VIDEO-1, PRESET-VIDEO-2, PRESET-VIDEO-3, PRESET-VIDEO-4, PRESET-VIDEO-5, PRESET-VIDEO-6, PRESET-VIDEO-7, PRESET-VIDEO-8, SHARED, UNENCRYPTED
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       hls_manifests: [ # required
    #         {
    #           ad_markers: "NONE", # accepts NONE, SCTE35_ENHANCED, PASSTHROUGH
    #           include_iframe_only_stream: false,
    #           manifest_name: "__string",
    #           program_date_time_interval_seconds: 1,
    #           repeat_ext_x_key: false,
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #       ],
    #       include_dvb_subtitles: false,
    #       segment_duration_seconds: 1,
    #       use_audio_rendition_group: false,
    #     },
    #     id: "__string", # required
    #     mss_package: {
    #       encryption: {
    #         speke_key_provider: { # required
    #           encryption_contract_configuration: {
    #             preset_speke_20_audio: "PRESET-AUDIO-1", # required, accepts PRESET-AUDIO-1, PRESET-AUDIO-2, PRESET-AUDIO-3, SHARED, UNENCRYPTED
    #             preset_speke_20_video: "PRESET-VIDEO-1", # required, accepts PRESET-VIDEO-1, PRESET-VIDEO-2, PRESET-VIDEO-3, PRESET-VIDEO-4, PRESET-VIDEO-5, PRESET-VIDEO-6, PRESET-VIDEO-7, PRESET-VIDEO-8, SHARED, UNENCRYPTED
    #           },
    #           role_arn: "__string", # required
    #           system_ids: ["__string"], # required
    #           url: "__string", # required
    #         },
    #       },
    #       mss_manifests: [ # required
    #         {
    #           manifest_name: "__string",
    #           stream_selection: {
    #             max_video_bits_per_second: 1,
    #             min_video_bits_per_second: 1,
    #             stream_order: "ORIGINAL", # accepts ORIGINAL, VIDEO_BITRATE_ASCENDING, VIDEO_BITRATE_DESCENDING
    #           },
    #         },
    #       ],
    #       segment_duration_seconds: 1,
    #     },
    #     packaging_group_id: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cmaf_package.encryption.constant_initialization_vector #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.cmaf_package.hls_manifests #=> Array
    #   resp.cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.cmaf_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.cmaf_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.cmaf_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.created_at #=> String
    #   resp.dash_package.dash_manifests #=> Array
    #   resp.dash_package.dash_manifests[0].manifest_layout #=> String, one of "FULL", "COMPACT"
    #   resp.dash_package.dash_manifests[0].manifest_name #=> String
    #   resp.dash_package.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.dash_package.dash_manifests[0].profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.dash_package.dash_manifests[0].scte_markers_source #=> String, one of "SEGMENTS", "MANIFEST"
    #   resp.dash_package.dash_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.dash_package.dash_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.dash_package.dash_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.dash_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.dash_package.encryption.speke_key_provider.url #=> String
    #   resp.dash_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.dash_package.include_iframe_only_stream #=> Boolean
    #   resp.dash_package.period_triggers #=> Array
    #   resp.dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.dash_package.segment_duration_seconds #=> Integer
    #   resp.dash_package.segment_template_format #=> String, one of "NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"
    #   resp.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.hls_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.hls_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.hls_package.encryption.speke_key_provider.url #=> String
    #   resp.hls_package.hls_manifests #=> Array
    #   resp.hls_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.hls_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.hls_package.hls_manifests[0].manifest_name #=> String
    #   resp.hls_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.hls_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.hls_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.hls_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.hls_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.hls_package.include_dvb_subtitles #=> Boolean
    #   resp.hls_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.id #=> String
    #   resp.mss_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.mss_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.mss_package.encryption.speke_key_provider.url #=> String
    #   resp.mss_package.mss_manifests #=> Array
    #   resp.mss_package.mss_manifests[0].manifest_name #=> String
    #   resp.mss_package.mss_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.mss_package.mss_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.mss_package.mss_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.mss_package.segment_duration_seconds #=> Integer
    #   resp.packaging_group_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingConfiguration AWS API Documentation
    #
    # @overload create_packaging_configuration(params = {})
    # @param [Hash] params ({})
    def create_packaging_configuration(params = {}, options = {})
      req = build_request(:create_packaging_configuration, params)
      req.send_request(options)
    end

    # Creates a new MediaPackage VOD PackagingGroup resource.
    #
    # @option params [Types::Authorization] :authorization
    #   CDN Authorization credentials
    #
    # @option params [Types::EgressAccessLogs] :egress_access_logs
    #   Configure egress access logging.
    #
    # @option params [required, String] :id
    #
    # @option params [Hash<String,String>] :tags
    #   A collection of tags associated with a resource
    #
    # @return [Types::CreatePackagingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackagingGroupResponse#arn #arn} => String
    #   * {Types::CreatePackagingGroupResponse#authorization #authorization} => Types::Authorization
    #   * {Types::CreatePackagingGroupResponse#created_at #created_at} => String
    #   * {Types::CreatePackagingGroupResponse#domain_name #domain_name} => String
    #   * {Types::CreatePackagingGroupResponse#egress_access_logs #egress_access_logs} => Types::EgressAccessLogs
    #   * {Types::CreatePackagingGroupResponse#id #id} => String
    #   * {Types::CreatePackagingGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_packaging_group({
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     egress_access_logs: {
    #       log_group_name: "__string",
    #     },
    #     id: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.authorization.cdn_identifier_secret #=> String
    #   resp.authorization.secrets_role_arn #=> String
    #   resp.created_at #=> String
    #   resp.domain_name #=> String
    #   resp.egress_access_logs.log_group_name #=> String
    #   resp.id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/CreatePackagingGroup AWS API Documentation
    #
    # @overload create_packaging_group(params = {})
    # @param [Hash] params ({})
    def create_packaging_group(params = {}, options = {})
      req = build_request(:create_packaging_group, params)
      req.send_request(options)
    end

    # Deletes an existing MediaPackage VOD Asset resource.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeleteAsset AWS API Documentation
    #
    # @overload delete_asset(params = {})
    # @param [Hash] params ({})
    def delete_asset(params = {}, options = {})
      req = build_request(:delete_asset, params)
      req.send_request(options)
    end

    # Deletes a MediaPackage VOD PackagingConfiguration resource.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_packaging_configuration({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingConfiguration AWS API Documentation
    #
    # @overload delete_packaging_configuration(params = {})
    # @param [Hash] params ({})
    def delete_packaging_configuration(params = {}, options = {})
      req = build_request(:delete_packaging_configuration, params)
      req.send_request(options)
    end

    # Deletes a MediaPackage VOD PackagingGroup resource.
    #
    # @option params [required, String] :id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_packaging_group({
    #     id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DeletePackagingGroup AWS API Documentation
    #
    # @overload delete_packaging_group(params = {})
    # @param [Hash] params ({})
    def delete_packaging_group(params = {}, options = {})
      req = build_request(:delete_packaging_group, params)
      req.send_request(options)
    end

    # Returns a description of a MediaPackage VOD Asset resource.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribeAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetResponse#arn #arn} => String
    #   * {Types::DescribeAssetResponse#created_at #created_at} => String
    #   * {Types::DescribeAssetResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::EgressEndpoint&gt;
    #   * {Types::DescribeAssetResponse#id #id} => String
    #   * {Types::DescribeAssetResponse#packaging_group_id #packaging_group_id} => String
    #   * {Types::DescribeAssetResponse#resource_id #resource_id} => String
    #   * {Types::DescribeAssetResponse#source_arn #source_arn} => String
    #   * {Types::DescribeAssetResponse#source_role_arn #source_role_arn} => String
    #   * {Types::DescribeAssetResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].packaging_configuration_id #=> String
    #   resp.egress_endpoints[0].status #=> String
    #   resp.egress_endpoints[0].url #=> String
    #   resp.id #=> String
    #   resp.packaging_group_id #=> String
    #   resp.resource_id #=> String
    #   resp.source_arn #=> String
    #   resp.source_role_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribeAsset AWS API Documentation
    #
    # @overload describe_asset(params = {})
    # @param [Hash] params ({})
    def describe_asset(params = {}, options = {})
      req = build_request(:describe_asset, params)
      req.send_request(options)
    end

    # Returns a description of a MediaPackage VOD PackagingConfiguration
    # resource.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribePackagingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackagingConfigurationResponse#arn #arn} => String
    #   * {Types::DescribePackagingConfigurationResponse#cmaf_package #cmaf_package} => Types::CmafPackage
    #   * {Types::DescribePackagingConfigurationResponse#created_at #created_at} => String
    #   * {Types::DescribePackagingConfigurationResponse#dash_package #dash_package} => Types::DashPackage
    #   * {Types::DescribePackagingConfigurationResponse#hls_package #hls_package} => Types::HlsPackage
    #   * {Types::DescribePackagingConfigurationResponse#id #id} => String
    #   * {Types::DescribePackagingConfigurationResponse#mss_package #mss_package} => Types::MssPackage
    #   * {Types::DescribePackagingConfigurationResponse#packaging_group_id #packaging_group_id} => String
    #   * {Types::DescribePackagingConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_packaging_configuration({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cmaf_package.encryption.constant_initialization_vector #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.cmaf_package.hls_manifests #=> Array
    #   resp.cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.cmaf_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.cmaf_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.cmaf_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.cmaf_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.cmaf_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.cmaf_package.segment_duration_seconds #=> Integer
    #   resp.created_at #=> String
    #   resp.dash_package.dash_manifests #=> Array
    #   resp.dash_package.dash_manifests[0].manifest_layout #=> String, one of "FULL", "COMPACT"
    #   resp.dash_package.dash_manifests[0].manifest_name #=> String
    #   resp.dash_package.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.dash_package.dash_manifests[0].profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.dash_package.dash_manifests[0].scte_markers_source #=> String, one of "SEGMENTS", "MANIFEST"
    #   resp.dash_package.dash_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.dash_package.dash_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.dash_package.dash_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.dash_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.dash_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.dash_package.encryption.speke_key_provider.url #=> String
    #   resp.dash_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.dash_package.include_iframe_only_stream #=> Boolean
    #   resp.dash_package.period_triggers #=> Array
    #   resp.dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.dash_package.segment_duration_seconds #=> Integer
    #   resp.dash_package.segment_template_format #=> String, one of "NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"
    #   resp.hls_package.encryption.constant_initialization_vector #=> String
    #   resp.hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.hls_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.hls_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.hls_package.encryption.speke_key_provider.url #=> String
    #   resp.hls_package.hls_manifests #=> Array
    #   resp.hls_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.hls_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.hls_package.hls_manifests[0].manifest_name #=> String
    #   resp.hls_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.hls_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.hls_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.hls_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.hls_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.hls_package.include_dvb_subtitles #=> Boolean
    #   resp.hls_package.segment_duration_seconds #=> Integer
    #   resp.hls_package.use_audio_rendition_group #=> Boolean
    #   resp.id #=> String
    #   resp.mss_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.mss_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.mss_package.encryption.speke_key_provider.url #=> String
    #   resp.mss_package.mss_manifests #=> Array
    #   resp.mss_package.mss_manifests[0].manifest_name #=> String
    #   resp.mss_package.mss_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.mss_package.mss_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.mss_package.mss_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.mss_package.segment_duration_seconds #=> Integer
    #   resp.packaging_group_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingConfiguration AWS API Documentation
    #
    # @overload describe_packaging_configuration(params = {})
    # @param [Hash] params ({})
    def describe_packaging_configuration(params = {}, options = {})
      req = build_request(:describe_packaging_configuration, params)
      req.send_request(options)
    end

    # Returns a description of a MediaPackage VOD PackagingGroup resource.
    #
    # @option params [required, String] :id
    #
    # @return [Types::DescribePackagingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackagingGroupResponse#approximate_asset_count #approximate_asset_count} => Integer
    #   * {Types::DescribePackagingGroupResponse#arn #arn} => String
    #   * {Types::DescribePackagingGroupResponse#authorization #authorization} => Types::Authorization
    #   * {Types::DescribePackagingGroupResponse#created_at #created_at} => String
    #   * {Types::DescribePackagingGroupResponse#domain_name #domain_name} => String
    #   * {Types::DescribePackagingGroupResponse#egress_access_logs #egress_access_logs} => Types::EgressAccessLogs
    #   * {Types::DescribePackagingGroupResponse#id #id} => String
    #   * {Types::DescribePackagingGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_packaging_group({
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approximate_asset_count #=> Integer
    #   resp.arn #=> String
    #   resp.authorization.cdn_identifier_secret #=> String
    #   resp.authorization.secrets_role_arn #=> String
    #   resp.created_at #=> String
    #   resp.domain_name #=> String
    #   resp.egress_access_logs.log_group_name #=> String
    #   resp.id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/DescribePackagingGroup AWS API Documentation
    #
    # @overload describe_packaging_group(params = {})
    # @param [Hash] params ({})
    def describe_packaging_group(params = {}, options = {})
      req = build_request(:describe_packaging_group, params)
      req.send_request(options)
    end

    # Returns a collection of MediaPackage VOD Asset resources.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [String] :packaging_group_id
    #
    # @return [Types::ListAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetsResponse#assets #assets} => Array&lt;Types::AssetShallow&gt;
    #   * {Types::ListAssetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assets({
    #     max_results: 1,
    #     next_token: "__string",
    #     packaging_group_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.assets #=> Array
    #   resp.assets[0].arn #=> String
    #   resp.assets[0].created_at #=> String
    #   resp.assets[0].id #=> String
    #   resp.assets[0].packaging_group_id #=> String
    #   resp.assets[0].resource_id #=> String
    #   resp.assets[0].source_arn #=> String
    #   resp.assets[0].source_role_arn #=> String
    #   resp.assets[0].tags #=> Hash
    #   resp.assets[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListAssets AWS API Documentation
    #
    # @overload list_assets(params = {})
    # @param [Hash] params ({})
    def list_assets(params = {}, options = {})
      req = build_request(:list_assets, params)
      req.send_request(options)
    end

    # Returns a collection of MediaPackage VOD PackagingConfiguration
    # resources.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [String] :packaging_group_id
    #
    # @return [Types::ListPackagingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackagingConfigurationsResponse#next_token #next_token} => String
    #   * {Types::ListPackagingConfigurationsResponse#packaging_configurations #packaging_configurations} => Array&lt;Types::PackagingConfiguration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packaging_configurations({
    #     max_results: 1,
    #     next_token: "__string",
    #     packaging_group_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.packaging_configurations #=> Array
    #   resp.packaging_configurations[0].arn #=> String
    #   resp.packaging_configurations[0].cmaf_package.encryption.constant_initialization_vector #=> String
    #   resp.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.packaging_configurations[0].cmaf_package.encryption.speke_key_provider.url #=> String
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests #=> Array
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].manifest_name #=> String
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].cmaf_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.packaging_configurations[0].cmaf_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.packaging_configurations[0].cmaf_package.segment_duration_seconds #=> Integer
    #   resp.packaging_configurations[0].created_at #=> String
    #   resp.packaging_configurations[0].dash_package.dash_manifests #=> Array
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].manifest_layout #=> String, one of "FULL", "COMPACT"
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].manifest_name #=> String
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].min_buffer_time_seconds #=> Integer
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].profile #=> String, one of "NONE", "HBBTV_1_5"
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].scte_markers_source #=> String, one of "SEGMENTS", "MANIFEST"
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].dash_package.dash_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.packaging_configurations[0].dash_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.packaging_configurations[0].dash_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.packaging_configurations[0].dash_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.packaging_configurations[0].dash_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.packaging_configurations[0].dash_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.packaging_configurations[0].dash_package.encryption.speke_key_provider.url #=> String
    #   resp.packaging_configurations[0].dash_package.include_encoder_configuration_in_segments #=> Boolean
    #   resp.packaging_configurations[0].dash_package.include_iframe_only_stream #=> Boolean
    #   resp.packaging_configurations[0].dash_package.period_triggers #=> Array
    #   resp.packaging_configurations[0].dash_package.period_triggers[0] #=> String, one of "ADS"
    #   resp.packaging_configurations[0].dash_package.segment_duration_seconds #=> Integer
    #   resp.packaging_configurations[0].dash_package.segment_template_format #=> String, one of "NUMBER_WITH_TIMELINE", "TIME_WITH_TIMELINE", "NUMBER_WITH_DURATION"
    #   resp.packaging_configurations[0].hls_package.encryption.constant_initialization_vector #=> String
    #   resp.packaging_configurations[0].hls_package.encryption.encryption_method #=> String, one of "AES_128", "SAMPLE_AES"
    #   resp.packaging_configurations[0].hls_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.packaging_configurations[0].hls_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.packaging_configurations[0].hls_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.packaging_configurations[0].hls_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.packaging_configurations[0].hls_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.packaging_configurations[0].hls_package.encryption.speke_key_provider.url #=> String
    #   resp.packaging_configurations[0].hls_package.hls_manifests #=> Array
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].ad_markers #=> String, one of "NONE", "SCTE35_ENHANCED", "PASSTHROUGH"
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].include_iframe_only_stream #=> Boolean
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].manifest_name #=> String
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].program_date_time_interval_seconds #=> Integer
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].repeat_ext_x_key #=> Boolean
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].hls_package.hls_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.packaging_configurations[0].hls_package.include_dvb_subtitles #=> Boolean
    #   resp.packaging_configurations[0].hls_package.segment_duration_seconds #=> Integer
    #   resp.packaging_configurations[0].hls_package.use_audio_rendition_group #=> Boolean
    #   resp.packaging_configurations[0].id #=> String
    #   resp.packaging_configurations[0].mss_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_audio #=> String, one of "PRESET-AUDIO-1", "PRESET-AUDIO-2", "PRESET-AUDIO-3", "SHARED", "UNENCRYPTED"
    #   resp.packaging_configurations[0].mss_package.encryption.speke_key_provider.encryption_contract_configuration.preset_speke_20_video #=> String, one of "PRESET-VIDEO-1", "PRESET-VIDEO-2", "PRESET-VIDEO-3", "PRESET-VIDEO-4", "PRESET-VIDEO-5", "PRESET-VIDEO-6", "PRESET-VIDEO-7", "PRESET-VIDEO-8", "SHARED", "UNENCRYPTED"
    #   resp.packaging_configurations[0].mss_package.encryption.speke_key_provider.role_arn #=> String
    #   resp.packaging_configurations[0].mss_package.encryption.speke_key_provider.system_ids #=> Array
    #   resp.packaging_configurations[0].mss_package.encryption.speke_key_provider.system_ids[0] #=> String
    #   resp.packaging_configurations[0].mss_package.encryption.speke_key_provider.url #=> String
    #   resp.packaging_configurations[0].mss_package.mss_manifests #=> Array
    #   resp.packaging_configurations[0].mss_package.mss_manifests[0].manifest_name #=> String
    #   resp.packaging_configurations[0].mss_package.mss_manifests[0].stream_selection.max_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].mss_package.mss_manifests[0].stream_selection.min_video_bits_per_second #=> Integer
    #   resp.packaging_configurations[0].mss_package.mss_manifests[0].stream_selection.stream_order #=> String, one of "ORIGINAL", "VIDEO_BITRATE_ASCENDING", "VIDEO_BITRATE_DESCENDING"
    #   resp.packaging_configurations[0].mss_package.segment_duration_seconds #=> Integer
    #   resp.packaging_configurations[0].packaging_group_id #=> String
    #   resp.packaging_configurations[0].tags #=> Hash
    #   resp.packaging_configurations[0].tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListPackagingConfigurations AWS API Documentation
    #
    # @overload list_packaging_configurations(params = {})
    # @param [Hash] params ({})
    def list_packaging_configurations(params = {}, options = {})
      req = build_request(:list_packaging_configurations, params)
      req.send_request(options)
    end

    # Returns a collection of MediaPackage VOD PackagingGroup resources.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListPackagingGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackagingGroupsResponse#next_token #next_token} => String
    #   * {Types::ListPackagingGroupsResponse#packaging_groups #packaging_groups} => Array&lt;Types::PackagingGroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packaging_groups({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.packaging_groups #=> Array
    #   resp.packaging_groups[0].approximate_asset_count #=> Integer
    #   resp.packaging_groups[0].arn #=> String
    #   resp.packaging_groups[0].authorization.cdn_identifier_secret #=> String
    #   resp.packaging_groups[0].authorization.secrets_role_arn #=> String
    #   resp.packaging_groups[0].created_at #=> String
    #   resp.packaging_groups[0].domain_name #=> String
    #   resp.packaging_groups[0].egress_access_logs.log_group_name #=> String
    #   resp.packaging_groups[0].id #=> String
    #   resp.packaging_groups[0].tags #=> Hash
    #   resp.packaging_groups[0].tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListPackagingGroups AWS API Documentation
    #
    # @overload list_packaging_groups(params = {})
    # @param [Hash] params ({})
    def list_packaging_groups(params = {}, options = {})
      req = build_request(:list_packaging_groups, params)
      req.send_request(options)
    end

    # Returns a list of the tags assigned to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds tags to the specified resource. You can specify one or more tags
    # to add.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Hash<String,String>] :tags
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified resource. You can specify one or more
    # tags to remove.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a specific packaging group. You can't change the id attribute
    # or any other system-generated attributes.
    #
    # @option params [Types::Authorization] :authorization
    #   CDN Authorization credentials
    #
    # @option params [required, String] :id
    #
    # @return [Types::UpdatePackagingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePackagingGroupResponse#approximate_asset_count #approximate_asset_count} => Integer
    #   * {Types::UpdatePackagingGroupResponse#arn #arn} => String
    #   * {Types::UpdatePackagingGroupResponse#authorization #authorization} => Types::Authorization
    #   * {Types::UpdatePackagingGroupResponse#created_at #created_at} => String
    #   * {Types::UpdatePackagingGroupResponse#domain_name #domain_name} => String
    #   * {Types::UpdatePackagingGroupResponse#egress_access_logs #egress_access_logs} => Types::EgressAccessLogs
    #   * {Types::UpdatePackagingGroupResponse#id #id} => String
    #   * {Types::UpdatePackagingGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_packaging_group({
    #     authorization: {
    #       cdn_identifier_secret: "__string", # required
    #       secrets_role_arn: "__string", # required
    #     },
    #     id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approximate_asset_count #=> Integer
    #   resp.arn #=> String
    #   resp.authorization.cdn_identifier_secret #=> String
    #   resp.authorization.secrets_role_arn #=> String
    #   resp.created_at #=> String
    #   resp.domain_name #=> String
    #   resp.egress_access_logs.log_group_name #=> String
    #   resp.id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod-2018-11-07/UpdatePackagingGroup AWS API Documentation
    #
    # @overload update_packaging_group(params = {})
    # @param [Hash] params ({})
    def update_packaging_group(params = {}, options = {})
      req = build_request(:update_packaging_group, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MediaPackageVod')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-mediapackagevod'
      context[:gem_version] = '1.72.0'
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
