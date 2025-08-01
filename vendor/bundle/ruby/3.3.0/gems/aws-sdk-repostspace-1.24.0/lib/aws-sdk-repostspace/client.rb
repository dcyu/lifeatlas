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

module Aws::Repostspace
  # An API client for Repostspace.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Repostspace::Client.new(
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

    @identifier = :repostspace

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
    add_plugin(Aws::Repostspace::Plugins::Endpoints)

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
    #   @option options [Aws::Repostspace::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Repostspace::EndpointParameters`.
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

    # Add role to multiple users or groups in a private re:Post channel.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the private re:Post.
    #
    # @option params [required, String] :channel_id
    #   The unique ID of the private re:Post channel.
    #
    # @option params [required, Array<String>] :accessor_ids
    #   The user or group identifiers to add the role to.
    #
    # @option params [required, String] :channel_role
    #   The channel role to add to the users or groups.
    #
    # @return [Types::BatchAddChannelRoleToAccessorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAddChannelRoleToAccessorsOutput#added_accessor_ids #added_accessor_ids} => Array&lt;String&gt;
    #   * {Types::BatchAddChannelRoleToAccessorsOutput#errors #errors} => Array&lt;Types::BatchError&gt;
    #
    #
    # @example Example: BatchAddChannelRoleToAccessors
    #
    #   resp = client.batch_add_channel_role_to_accessors({
    #     accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab", 
    #     ], 
    #     channel_id: "WS1234567890abcdefghijkl", 
    #     channel_role: "MODERATOR", 
    #     space_id: "SP1234567890abcdefghijkl", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #     ], 
    #     added_accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_add_channel_role_to_accessors({
    #     space_id: "SpaceId", # required
    #     channel_id: "ChannelId", # required
    #     accessor_ids: ["AccessorId"], # required
    #     channel_role: "ASKER", # required, accepts ASKER, EXPERT, MODERATOR, SUPPORTREQUESTOR
    #   })
    #
    # @example Response structure
    #
    #   resp.added_accessor_ids #=> Array
    #   resp.added_accessor_ids[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].accessor_id #=> String
    #   resp.errors[0].error #=> Integer
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchAddChannelRoleToAccessors AWS API Documentation
    #
    # @overload batch_add_channel_role_to_accessors(params = {})
    # @param [Hash] params ({})
    def batch_add_channel_role_to_accessors(params = {}, options = {})
      req = build_request(:batch_add_channel_role_to_accessors, params)
      req.send_request(options)
    end

    # Add a role to multiple users or groups in a private re:Post.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the private re:Post.
    #
    # @option params [required, Array<String>] :accessor_ids
    #   The user or group accessor identifiers to add the role to.
    #
    # @option params [required, String] :role
    #   The role to add to the users or groups.
    #
    # @return [Types::BatchAddRoleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAddRoleOutput#added_accessor_ids #added_accessor_ids} => Array&lt;String&gt;
    #   * {Types::BatchAddRoleOutput#errors #errors} => Array&lt;Types::BatchError&gt;
    #
    #
    # @example Example: BatchAddRole
    #
    #   resp = client.batch_add_role({
    #     accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab", 
    #     ], 
    #     role: "EXPERT", 
    #     space_id: "SP1234567890abcdefghijkl", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #     ], 
    #     added_accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_add_role({
    #     space_id: "SpaceId", # required
    #     accessor_ids: ["AccessorId"], # required
    #     role: "EXPERT", # required, accepts EXPERT, MODERATOR, ADMINISTRATOR, SUPPORTREQUESTOR
    #   })
    #
    # @example Response structure
    #
    #   resp.added_accessor_ids #=> Array
    #   resp.added_accessor_ids[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].accessor_id #=> String
    #   resp.errors[0].error #=> Integer
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchAddRole AWS API Documentation
    #
    # @overload batch_add_role(params = {})
    # @param [Hash] params ({})
    def batch_add_role(params = {}, options = {})
      req = build_request(:batch_add_role, params)
      req.send_request(options)
    end

    # Remove a role from multiple users or groups in a private re:Post
    # channel.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the private re:Post.
    #
    # @option params [required, String] :channel_id
    #   The unique ID of the private re:Post channel.
    #
    # @option params [required, Array<String>] :accessor_ids
    #   The users or groups identifiers to remove the role from.
    #
    # @option params [required, String] :channel_role
    #   The channel role to remove from the users or groups.
    #
    # @return [Types::BatchRemoveChannelRoleFromAccessorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchRemoveChannelRoleFromAccessorsOutput#removed_accessor_ids #removed_accessor_ids} => Array&lt;String&gt;
    #   * {Types::BatchRemoveChannelRoleFromAccessorsOutput#errors #errors} => Array&lt;Types::BatchError&gt;
    #
    #
    # @example Example: BatchRemoveChannelRoleFromAccessors
    #
    #   resp = client.batch_remove_channel_role_from_accessors({
    #     accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab", 
    #     ], 
    #     channel_id: "WS1234567890abcdefghijkl", 
    #     channel_role: "MODERATOR", 
    #     space_id: "SP1234567890abcdefghijkl", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #     ], 
    #     removed_accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_remove_channel_role_from_accessors({
    #     space_id: "SpaceId", # required
    #     channel_id: "ChannelId", # required
    #     accessor_ids: ["AccessorId"], # required
    #     channel_role: "ASKER", # required, accepts ASKER, EXPERT, MODERATOR, SUPPORTREQUESTOR
    #   })
    #
    # @example Response structure
    #
    #   resp.removed_accessor_ids #=> Array
    #   resp.removed_accessor_ids[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].accessor_id #=> String
    #   resp.errors[0].error #=> Integer
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchRemoveChannelRoleFromAccessors AWS API Documentation
    #
    # @overload batch_remove_channel_role_from_accessors(params = {})
    # @param [Hash] params ({})
    def batch_remove_channel_role_from_accessors(params = {}, options = {})
      req = build_request(:batch_remove_channel_role_from_accessors, params)
      req.send_request(options)
    end

    # Remove a role from multiple users or groups in a private re:Post.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the private re:Post.
    #
    # @option params [required, Array<String>] :accessor_ids
    #   The user or group accessor identifiers to remove the role from.
    #
    # @option params [required, String] :role
    #   The role to remove from the users or groups.
    #
    # @return [Types::BatchRemoveRoleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchRemoveRoleOutput#removed_accessor_ids #removed_accessor_ids} => Array&lt;String&gt;
    #   * {Types::BatchRemoveRoleOutput#errors #errors} => Array&lt;Types::BatchError&gt;
    #
    #
    # @example Example: BatchRemoveRole
    #
    #   resp = client.batch_remove_role({
    #     accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab", 
    #     ], 
    #     role: "EXPERT", 
    #     space_id: "SP1234567890abcdefghijkl", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #     ], 
    #     removed_accessor_ids: [
    #       "12345678-1234-1234-1234-1234567890ab", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_remove_role({
    #     space_id: "SpaceId", # required
    #     accessor_ids: ["AccessorId"], # required
    #     role: "EXPERT", # required, accepts EXPERT, MODERATOR, ADMINISTRATOR, SUPPORTREQUESTOR
    #   })
    #
    # @example Response structure
    #
    #   resp.removed_accessor_ids #=> Array
    #   resp.removed_accessor_ids[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].accessor_id #=> String
    #   resp.errors[0].error #=> Integer
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchRemoveRole AWS API Documentation
    #
    # @overload batch_remove_role(params = {})
    # @param [Hash] params ({})
    def batch_remove_role(params = {}, options = {})
      req = build_request(:batch_remove_role, params)
      req.send_request(options)
    end

    # Creates a channel in an AWS re:Post Private private re:Post.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the private re:Post.
    #
    # @option params [required, String] :channel_name
    #   The name for the channel. This must be unique per private re:Post.
    #
    # @option params [String] :channel_description
    #   A description for the channel. This is used only to help you identify
    #   this channel.
    #
    # @return [Types::CreateChannelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelOutput#channel_id #channel_id} => String
    #
    #
    # @example Example: CreateChannel
    #
    #   resp = client.create_channel({
    #     channel_description: "Useful channel description", 
    #     channel_name: "My First Channel", 
    #     space_id: "SP1234567890abcdefghijkl", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_id: "WS1234567890abcdefghijkl", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     space_id: "SpaceId", # required
    #     channel_name: "ChannelName", # required
    #     channel_description: "ChannelDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Creates an AWS re:Post Private private re:Post.
    #
    # @option params [required, String] :name
    #   The name for the private re:Post. This must be unique in your account.
    #
    # @option params [required, String] :subdomain
    #   The subdomain that you use to access your AWS re:Post Private private
    #   re:Post. All custom subdomains must be approved by AWS before use. In
    #   addition to your custom subdomain, all private re:Posts are issued an
    #   AWS generated subdomain for immediate use.
    #
    # @option params [required, String] :tier
    #   The pricing tier for the private re:Post.
    #
    # @option params [String] :description
    #   A description for the private re:Post. This is used only to help you
    #   identify this private re:Post.
    #
    # @option params [String] :user_kms_key
    #   The AWS KMS key ARN that’s used for the AWS KMS encryption. If you
    #   don't provide a key, your data is encrypted by default with a key
    #   that AWS owns and manages for you.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of tags associated with the private re:Post.
    #
    # @option params [String] :role_arn
    #   The IAM role that grants permissions to the private re:Post to convert
    #   unanswered questions into AWS support tickets.
    #
    # @option params [Types::SupportedEmailDomainsParameters] :supported_email_domains
    #
    # @return [Types::CreateSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSpaceOutput#space_id #space_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_space({
    #     name: "SpaceName", # required
    #     subdomain: "SpaceSubdomain", # required
    #     tier: "BASIC", # required, accepts BASIC, STANDARD
    #     description: "SpaceDescription",
    #     user_kms_key: "KMSKey",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     role_arn: "Arn",
    #     supported_email_domains: {
    #       enabled: "ENABLED", # accepts ENABLED, DISABLED
    #       allowed_domains: ["EmailDomain"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.space_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/CreateSpace AWS API Documentation
    #
    # @overload create_space(params = {})
    # @param [Hash] params ({})
    def create_space(params = {}, options = {})
      req = build_request(:create_space, params)
      req.send_request(options)
    end

    # Deletes an AWS re:Post Private private re:Post.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the private re:Post.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_space({
    #     space_id: "SpaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/DeleteSpace AWS API Documentation
    #
    # @overload delete_space(params = {})
    # @param [Hash] params ({})
    def delete_space(params = {}, options = {})
      req = build_request(:delete_space, params)
      req.send_request(options)
    end

    # Removes the user or group from the list of administrators of the
    # private re:Post.
    #
    # @option params [required, String] :space_id
    #   The ID of the private re:Post to remove the admin from.
    #
    # @option params [required, String] :admin_id
    #   The ID of the admin to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_admin({
    #     space_id: "SpaceId", # required
    #     admin_id: "AdminId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/DeregisterAdmin AWS API Documentation
    #
    # @overload deregister_admin(params = {})
    # @param [Hash] params ({})
    def deregister_admin(params = {}, options = {})
      req = build_request(:deregister_admin, params)
      req.send_request(options)
    end

    # Displays information about a channel in a private re:Post.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the private re:Post.
    #
    # @option params [required, String] :channel_id
    #   The unique ID of the private re:Post channel.
    #
    # @return [Types::GetChannelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelOutput#space_id #space_id} => String
    #   * {Types::GetChannelOutput#channel_id #channel_id} => String
    #   * {Types::GetChannelOutput#channel_name #channel_name} => String
    #   * {Types::GetChannelOutput#channel_description #channel_description} => String
    #   * {Types::GetChannelOutput#create_date_time #create_date_time} => Time
    #   * {Types::GetChannelOutput#delete_date_time #delete_date_time} => Time
    #   * {Types::GetChannelOutput#channel_roles #channel_roles} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::GetChannelOutput#channel_status #channel_status} => String
    #
    #
    # @example Example: GetChannel
    #
    #   resp = client.get_channel({
    #     channel_id: "WS1234567890abcdefghijkl", 
    #     space_id: "SP1234567890abcdefghijkl", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channel_description: "Useful channel description", 
    #     channel_id: "WS1234567890abcdefghijkl", 
    #     channel_name: "My First Channel", 
    #     channel_roles: {
    #       "12345678-1234-1234-1234-1234567890ab" => [
    #         "ASKER", 
    #       ], 
    #     }, 
    #     channel_status: "CREATED", 
    #     create_date_time: Time.parse("2025-02-13T18:49:13.713Z"), 
    #     space_id: "SP1234567890abcdefghijkl", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel({
    #     space_id: "SpaceId", # required
    #     channel_id: "ChannelId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_id #=> String
    #   resp.channel_id #=> String
    #   resp.channel_name #=> String
    #   resp.channel_description #=> String
    #   resp.create_date_time #=> Time
    #   resp.delete_date_time #=> Time
    #   resp.channel_roles #=> Hash
    #   resp.channel_roles["AccessorId"] #=> Array
    #   resp.channel_roles["AccessorId"][0] #=> String, one of "ASKER", "EXPERT", "MODERATOR", "SUPPORTREQUESTOR"
    #   resp.channel_status #=> String, one of "CREATED", "CREATING", "CREATE_FAILED", "DELETED", "DELETING", "DELETE_FAILED"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * channel_created
    #   * channel_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/GetChannel AWS API Documentation
    #
    # @overload get_channel(params = {})
    # @param [Hash] params ({})
    def get_channel(params = {}, options = {})
      req = build_request(:get_channel, params)
      req.send_request(options)
    end

    # Displays information about the AWS re:Post Private private re:Post.
    #
    # @option params [required, String] :space_id
    #   The ID of the private re:Post.
    #
    # @return [Types::GetSpaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSpaceOutput#space_id #space_id} => String
    #   * {Types::GetSpaceOutput#arn #arn} => String
    #   * {Types::GetSpaceOutput#name #name} => String
    #   * {Types::GetSpaceOutput#status #status} => String
    #   * {Types::GetSpaceOutput#configuration_status #configuration_status} => String
    #   * {Types::GetSpaceOutput#client_id #client_id} => String
    #   * {Types::GetSpaceOutput#identity_store_id #identity_store_id} => String
    #   * {Types::GetSpaceOutput#application_arn #application_arn} => String
    #   * {Types::GetSpaceOutput#description #description} => String
    #   * {Types::GetSpaceOutput#vanity_domain_status #vanity_domain_status} => String
    #   * {Types::GetSpaceOutput#vanity_domain #vanity_domain} => String
    #   * {Types::GetSpaceOutput#random_domain #random_domain} => String
    #   * {Types::GetSpaceOutput#customer_role_arn #customer_role_arn} => String
    #   * {Types::GetSpaceOutput#create_date_time #create_date_time} => Time
    #   * {Types::GetSpaceOutput#delete_date_time #delete_date_time} => Time
    #   * {Types::GetSpaceOutput#tier #tier} => String
    #   * {Types::GetSpaceOutput#storage_limit #storage_limit} => Integer
    #   * {Types::GetSpaceOutput#user_admins #user_admins} => Array&lt;String&gt;
    #   * {Types::GetSpaceOutput#group_admins #group_admins} => Array&lt;String&gt;
    #   * {Types::GetSpaceOutput#roles #roles} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::GetSpaceOutput#user_kms_key #user_kms_key} => String
    #   * {Types::GetSpaceOutput#user_count #user_count} => Integer
    #   * {Types::GetSpaceOutput#content_size #content_size} => Integer
    #   * {Types::GetSpaceOutput#supported_email_domains #supported_email_domains} => Types::SupportedEmailDomainsStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_space({
    #     space_id: "SpaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String
    #   resp.configuration_status #=> String, one of "CONFIGURED", "UNCONFIGURED"
    #   resp.client_id #=> String
    #   resp.identity_store_id #=> String
    #   resp.application_arn #=> String
    #   resp.description #=> String
    #   resp.vanity_domain_status #=> String, one of "PENDING", "APPROVED", "UNAPPROVED"
    #   resp.vanity_domain #=> String
    #   resp.random_domain #=> String
    #   resp.customer_role_arn #=> String
    #   resp.create_date_time #=> Time
    #   resp.delete_date_time #=> Time
    #   resp.tier #=> String, one of "BASIC", "STANDARD"
    #   resp.storage_limit #=> Integer
    #   resp.user_admins #=> Array
    #   resp.user_admins[0] #=> String
    #   resp.group_admins #=> Array
    #   resp.group_admins[0] #=> String
    #   resp.roles #=> Hash
    #   resp.roles["AccessorId"] #=> Array
    #   resp.roles["AccessorId"][0] #=> String, one of "EXPERT", "MODERATOR", "ADMINISTRATOR", "SUPPORTREQUESTOR"
    #   resp.user_kms_key #=> String
    #   resp.user_count #=> Integer
    #   resp.content_size #=> Integer
    #   resp.supported_email_domains.enabled #=> String, one of "ENABLED", "DISABLED", "NOT_ALLOWED"
    #   resp.supported_email_domains.allowed_domains #=> Array
    #   resp.supported_email_domains.allowed_domains[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * space_created
    #   * space_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/GetSpace AWS API Documentation
    #
    # @overload get_space(params = {})
    # @param [Hash] params ({})
    def get_space(params = {}, options = {})
      req = build_request(:get_space, params)
      req.send_request(options)
    end

    # Returns the list of channel within a private re:Post with some
    # information about each channel.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the private re:Post.
    #
    # @option params [String] :next_token
    #   The token for the next set of channel to return. You receive this
    #   token from a previous ListChannels operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channels to include in the results.
    #
    # @return [Types::ListChannelsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsOutput#channels #channels} => Array&lt;Types::ChannelData&gt;
    #   * {Types::ListChannelsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListChannels
    #
    #   resp = client.list_channels({
    #     space_id: "SP1234567890abcdefghijkl", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     channels: [
    #       {
    #         channel_description: "Useful channel description", 
    #         channel_id: "WS1234567890abcdefghijkl", 
    #         channel_name: "My First Channel", 
    #         channel_status: "CREATED", 
    #         create_date_time: Time.parse("2020-02-20T20:20:20.420Z"), 
    #         group_count: 1, 
    #         space_id: "SP1234567890abcdefghijkl", 
    #         user_count: 5, 
    #       }, 
    #       {
    #         channel_description: "Better channel description", 
    #         channel_id: "WSabcdefghijkl1234567890", 
    #         channel_name: "Better Channel", 
    #         channel_status: "CREATED", 
    #         create_date_time: Time.parse("2025-06-20T14:43:34.201Z"), 
    #         group_count: 0, 
    #         space_id: "SP1234567890abcdefghijkl", 
    #         user_count: 1, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     space_id: "SpaceId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].space_id #=> String
    #   resp.channels[0].channel_id #=> String
    #   resp.channels[0].channel_name #=> String
    #   resp.channels[0].channel_description #=> String
    #   resp.channels[0].create_date_time #=> Time
    #   resp.channels[0].delete_date_time #=> Time
    #   resp.channels[0].channel_status #=> String, one of "CREATED", "CREATING", "CREATE_FAILED", "DELETED", "DELETING", "DELETE_FAILED"
    #   resp.channels[0].user_count #=> Integer
    #   resp.channels[0].group_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Returns a list of AWS re:Post Private private re:Posts in the account
    # with some information about each private re:Post.
    #
    # @option params [String] :next_token
    #   The token for the next set of private re:Posts to return. You receive
    #   this token from a previous ListSpaces operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of private re:Posts to include in the results.
    #
    # @return [Types::ListSpacesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSpacesOutput#spaces #spaces} => Array&lt;Types::SpaceData&gt;
    #   * {Types::ListSpacesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_spaces({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.spaces #=> Array
    #   resp.spaces[0].space_id #=> String
    #   resp.spaces[0].arn #=> String
    #   resp.spaces[0].name #=> String
    #   resp.spaces[0].description #=> String
    #   resp.spaces[0].status #=> String
    #   resp.spaces[0].configuration_status #=> String, one of "CONFIGURED", "UNCONFIGURED"
    #   resp.spaces[0].vanity_domain_status #=> String, one of "PENDING", "APPROVED", "UNAPPROVED"
    #   resp.spaces[0].vanity_domain #=> String
    #   resp.spaces[0].random_domain #=> String
    #   resp.spaces[0].tier #=> String, one of "BASIC", "STANDARD"
    #   resp.spaces[0].storage_limit #=> Integer
    #   resp.spaces[0].create_date_time #=> Time
    #   resp.spaces[0].delete_date_time #=> Time
    #   resp.spaces[0].user_kms_key #=> String
    #   resp.spaces[0].user_count #=> Integer
    #   resp.spaces[0].content_size #=> Integer
    #   resp.spaces[0].supported_email_domains.enabled #=> String, one of "ENABLED", "DISABLED", "NOT_ALLOWED"
    #   resp.spaces[0].supported_email_domains.allowed_domains #=> Array
    #   resp.spaces[0].supported_email_domains.allowed_domains[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListSpaces AWS API Documentation
    #
    # @overload list_spaces(params = {})
    # @param [Hash] params ({})
    def list_spaces(params = {}, options = {})
      req = build_request(:list_spaces, params)
      req.send_request(options)
    end

    # Returns the tags that are associated with the AWS re:Post Private
    # resource specified by the resourceArn. The only resource that can be
    # tagged is a private re:Post.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that the tags are associated with.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds a user or group to the list of administrators of the private
    # re:Post.
    #
    # @option params [required, String] :space_id
    #   The ID of the private re:Post.
    #
    # @option params [required, String] :admin_id
    #   The ID of the administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_admin({
    #     space_id: "SpaceId", # required
    #     admin_id: "AdminId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/RegisterAdmin AWS API Documentation
    #
    # @overload register_admin(params = {})
    # @param [Hash] params ({})
    def register_admin(params = {}, options = {})
      req = build_request(:register_admin, params)
      req.send_request(options)
    end

    # Sends an invitation email to selected users and groups.
    #
    # @option params [required, String] :space_id
    #   The ID of the private re:Post.
    #
    # @option params [required, Array<String>] :accessor_ids
    #   The array of identifiers for the users and groups.
    #
    # @option params [required, String] :title
    #   The title of the invite.
    #
    # @option params [required, String] :body
    #   The body of the invite.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_invites({
    #     space_id: "SpaceId", # required
    #     accessor_ids: ["AccessorId"], # required
    #     title: "InviteTitle", # required
    #     body: "InviteBody", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/SendInvites AWS API Documentation
    #
    # @overload send_invites(params = {})
    # @param [Hash] params ({})
    def send_invites(params = {}, options = {})
      req = build_request(:send_invites, params)
      req.send_request(options)
    end

    # Associates tags with an AWS re:Post Private resource. Currently, the
    # only resource that can be tagged is the private re:Post. If you
    # specify a new tag key for the resource, the tag is appended to the
    # list of tags that are associated with the resource. If you specify a
    # tag key that’s already associated with the resource, the new tag value
    # that you specify replaces the previous value for that tag.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that the tag is associated with.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of tag keys and values that must be associated with the
    #   resource. You can associate tag keys only, tags (key and values) only,
    #   or a combination of tag keys and tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the association of the tag with the AWS re:Post Private
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key values of the tag.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies an existing channel.
    #
    # @option params [required, String] :space_id
    #   The unique ID of the private re:Post.
    #
    # @option params [required, String] :channel_id
    #   The unique ID of the private re:Post channel.
    #
    # @option params [required, String] :channel_name
    #   The name for the channel. This must be unique per private re:Post.
    #
    # @option params [String] :channel_description
    #   A description for the channel. This is used only to help you identify
    #   this channel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UpdateChannel
    #
    #   resp = client.update_channel({
    #     channel_description: "Better channel description", 
    #     channel_id: "WS1234567890abcdefghijkl", 
    #     channel_name: "Better Channel", 
    #     space_id: "SP1234567890abcdefghijkl", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     space_id: "SpaceId", # required
    #     channel_id: "ChannelId", # required
    #     channel_name: "ChannelName", # required
    #     channel_description: "ChannelDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Modifies an existing AWS re:Post Private private re:Post.
    #
    # @option params [required, String] :space_id
    #   The unique ID of this private re:Post.
    #
    # @option params [String] :description
    #   A description for the private re:Post. This is used only to help you
    #   identify this private re:Post.
    #
    # @option params [String] :tier
    #   The pricing tier of this private re:Post.
    #
    # @option params [String] :role_arn
    #   The IAM role that grants permissions to the private re:Post to convert
    #   unanswered questions into AWS support tickets.
    #
    # @option params [Types::SupportedEmailDomainsParameters] :supported_email_domains
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_space({
    #     space_id: "SpaceId", # required
    #     description: "SpaceDescription",
    #     tier: "BASIC", # accepts BASIC, STANDARD
    #     role_arn: "Arn",
    #     supported_email_domains: {
    #       enabled: "ENABLED", # accepts ENABLED, DISABLED
    #       allowed_domains: ["EmailDomain"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/UpdateSpace AWS API Documentation
    #
    # @overload update_space(params = {})
    # @param [Hash] params ({})
    def update_space(params = {}, options = {})
      req = build_request(:update_space, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Repostspace')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-repostspace'
      context[:gem_version] = '1.24.0'
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
    # | waiter_name     | params               | :delay   | :max_attempts |
    # | --------------- | -------------------- | -------- | ------------- |
    # | channel_created | {Client#get_channel} | 2        | 60            |
    # | channel_deleted | {Client#get_channel} | 2        | 60            |
    # | space_created   | {Client#get_space}   | 300      | 24            |
    # | space_deleted   | {Client#get_space}   | 300      | 24            |
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
        channel_created: Waiters::ChannelCreated,
        channel_deleted: Waiters::ChannelDeleted,
        space_created: Waiters::SpaceCreated,
        space_deleted: Waiters::SpaceDeleted
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
