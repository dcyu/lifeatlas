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

module Aws::Pipes
  # An API client for Pipes.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Pipes::Client.new(
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

    @identifier = :pipes

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
    add_plugin(Aws::Pipes::Plugins::Endpoints)

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
    #   @option options [Aws::Pipes::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Pipes::EndpointParameters`.
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

    # Create a pipe. Amazon EventBridge Pipes connect event sources to
    # targets and reduces the need for specialized knowledge and integration
    # code.
    #
    # @option params [required, String] :name
    #   The name of the pipe.
    #
    # @option params [String] :description
    #   A description of the pipe.
    #
    # @option params [String] :desired_state
    #   The state the pipe should be in.
    #
    # @option params [required, String] :source
    #   The ARN of the source resource.
    #
    # @option params [Types::PipeSourceParameters] :source_parameters
    #   The parameters required to set up a source for your pipe.
    #
    # @option params [String] :enrichment
    #   The ARN of the enrichment resource.
    #
    # @option params [Types::PipeEnrichmentParameters] :enrichment_parameters
    #   The parameters required to set up enrichment on your pipe.
    #
    # @option params [required, String] :target
    #   The ARN of the target resource.
    #
    # @option params [Types::PipeTargetParameters] :target_parameters
    #   The parameters required to set up a target for your pipe.
    #
    #   For more information about pipe target parameters, including how to
    #   use dynamic path parameters, see [Target parameters][1] in the *Amazon
    #   EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-target.html
    #
    # @option params [required, String] :role_arn
    #   The ARN of the role that allows the pipe to send data to the target.
    #
    # @option params [Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the pipe.
    #
    # @option params [Types::PipeLogConfigurationParameters] :log_configuration
    #   The logging configuration settings for the pipe.
    #
    # @option params [String] :kms_key_identifier
    #   The identifier of the KMS customer managed key for EventBridge to use,
    #   if you choose to use a customer managed key to encrypt pipe data. The
    #   identifier can be the key Amazon Resource Name (ARN), KeyId, key
    #   alias, or key alias ARN.
    #
    #   If you do not specify a customer managed key identifier, EventBridge
    #   uses an Amazon Web Services owned key to encrypt pipe data.
    #
    #   For more information, see [Managing keys][1] in the *Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html
    #
    # @return [Types::CreatePipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePipeResponse#arn #arn} => String
    #   * {Types::CreatePipeResponse#name #name} => String
    #   * {Types::CreatePipeResponse#desired_state #desired_state} => String
    #   * {Types::CreatePipeResponse#current_state #current_state} => String
    #   * {Types::CreatePipeResponse#creation_time #creation_time} => Time
    #   * {Types::CreatePipeResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pipe({
    #     name: "PipeName", # required
    #     description: "PipeDescription",
    #     desired_state: "RUNNING", # accepts RUNNING, STOPPED
    #     source: "ArnOrUrl", # required
    #     source_parameters: {
    #       filter_criteria: {
    #         filters: [
    #           {
    #             pattern: "EventPattern",
    #           },
    #         ],
    #       },
    #       kinesis_stream_parameters: {
    #         batch_size: 1,
    #         dead_letter_config: {
    #           arn: "Arn",
    #         },
    #         on_partial_batch_item_failure: "AUTOMATIC_BISECT", # accepts AUTOMATIC_BISECT
    #         maximum_batching_window_in_seconds: 1,
    #         maximum_record_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1,
    #         starting_position: "TRIM_HORIZON", # required, accepts TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #         starting_position_timestamp: Time.now,
    #       },
    #       dynamo_db_stream_parameters: {
    #         batch_size: 1,
    #         dead_letter_config: {
    #           arn: "Arn",
    #         },
    #         on_partial_batch_item_failure: "AUTOMATIC_BISECT", # accepts AUTOMATIC_BISECT
    #         maximum_batching_window_in_seconds: 1,
    #         maximum_record_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1,
    #         starting_position: "TRIM_HORIZON", # required, accepts TRIM_HORIZON, LATEST
    #       },
    #       sqs_queue_parameters: {
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #       },
    #       active_mq_broker_parameters: {
    #         credentials: { # required
    #           basic_auth: "SecretManagerArn",
    #         },
    #         queue_name: "MQBrokerQueueName", # required
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #       },
    #       rabbit_mq_broker_parameters: {
    #         credentials: { # required
    #           basic_auth: "SecretManagerArn",
    #         },
    #         queue_name: "MQBrokerQueueName", # required
    #         virtual_host: "URI",
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #       },
    #       managed_streaming_kafka_parameters: {
    #         topic_name: "KafkaTopicName", # required
    #         starting_position: "TRIM_HORIZON", # accepts TRIM_HORIZON, LATEST
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         consumer_group_id: "URI",
    #         credentials: {
    #           sasl_scram_512_auth: "SecretManagerArn",
    #           client_certificate_tls_auth: "SecretManagerArn",
    #         },
    #       },
    #       self_managed_kafka_parameters: {
    #         topic_name: "KafkaTopicName", # required
    #         starting_position: "TRIM_HORIZON", # accepts TRIM_HORIZON, LATEST
    #         additional_bootstrap_servers: ["EndpointString"],
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         consumer_group_id: "URI",
    #         credentials: {
    #           basic_auth: "SecretManagerArn",
    #           sasl_scram_512_auth: "SecretManagerArn",
    #           sasl_scram_256_auth: "SecretManagerArn",
    #           client_certificate_tls_auth: "SecretManagerArn",
    #         },
    #         server_root_ca_certificate: "SecretManagerArn",
    #         vpc: {
    #           subnets: ["SubnetId"],
    #           security_group: ["SecurityGroupId"],
    #         },
    #       },
    #     },
    #     enrichment: "OptionalArn",
    #     enrichment_parameters: {
    #       input_template: "InputTemplate",
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue",
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue",
    #         },
    #       },
    #     },
    #     target: "Arn", # required
    #     target_parameters: {
    #       input_template: "InputTemplate",
    #       lambda_function_parameters: {
    #         invocation_type: "REQUEST_RESPONSE", # accepts REQUEST_RESPONSE, FIRE_AND_FORGET
    #       },
    #       step_function_state_machine_parameters: {
    #         invocation_type: "REQUEST_RESPONSE", # accepts REQUEST_RESPONSE, FIRE_AND_FORGET
    #       },
    #       kinesis_stream_parameters: {
    #         partition_key: "KinesisPartitionKey", # required
    #       },
    #       ecs_task_parameters: {
    #         task_definition_arn: "ArnOrJsonPath", # required
    #         task_count: 1,
    #         launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["Subnet"], # required
    #             security_groups: ["SecurityGroup"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         platform_version: "String",
    #         group: "String",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #             base: 1,
    #           },
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         placement_constraints: [
    #           {
    #             type: "distinctInstance", # accepts distinctInstance, memberOf
    #             expression: "PlacementConstraintExpression",
    #           },
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "random", # accepts random, spread, binpack
    #             field: "PlacementStrategyField",
    #           },
    #         ],
    #         propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION
    #         reference_id: "ReferenceId",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               command: ["String"],
    #               cpu: 1,
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String",
    #                 },
    #               ],
    #               environment_files: [
    #                 {
    #                   type: "s3", # required, accepts s3
    #                   value: "String", # required
    #                 },
    #               ],
    #               memory: 1,
    #               memory_reservation: 1,
    #               name: "String",
    #               resource_requirements: [
    #                 {
    #                   type: "GPU", # required, accepts GPU, InferenceAccelerator
    #                   value: "String", # required
    #                 },
    #               ],
    #             },
    #           ],
    #           cpu: "String",
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           },
    #           execution_role_arn: "ArnOrJsonPath",
    #           inference_accelerator_overrides: [
    #             {
    #               device_name: "String",
    #               device_type: "String",
    #             },
    #           ],
    #           memory: "String",
    #           task_role_arn: "ArnOrJsonPath",
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       },
    #       batch_job_parameters: {
    #         job_definition: "String", # required
    #         job_name: "String", # required
    #         array_properties: {
    #           size: 1,
    #         },
    #         retry_strategy: {
    #           attempts: 1,
    #         },
    #         container_overrides: {
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #           instance_type: "String",
    #           resource_requirements: [
    #             {
    #               type: "GPU", # required, accepts GPU, MEMORY, VCPU
    #               value: "String", # required
    #             },
    #           ],
    #         },
    #         depends_on: [
    #           {
    #             job_id: "String",
    #             type: "N_TO_N", # accepts N_TO_N, SEQUENTIAL
    #           },
    #         ],
    #         parameters: {
    #           "String" => "String",
    #         },
    #       },
    #       sqs_queue_parameters: {
    #         message_group_id: "MessageGroupId",
    #         message_deduplication_id: "MessageDeduplicationId",
    #       },
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue",
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue",
    #         },
    #       },
    #       redshift_data_parameters: {
    #         secret_manager_arn: "SecretManagerArnOrJsonPath",
    #         database: "Database", # required
    #         db_user: "DbUser",
    #         statement_name: "StatementName",
    #         with_event: false,
    #         sqls: ["Sql"], # required
    #       },
    #       sage_maker_pipeline_parameters: {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           },
    #         ],
    #       },
    #       event_bridge_event_bus_parameters: {
    #         endpoint_id: "EventBridgeEndpointId",
    #         detail_type: "EventBridgeDetailType",
    #         source: "EventBridgeEventSource",
    #         resources: ["ArnOrJsonPath"],
    #         time: "JsonPath",
    #       },
    #       cloud_watch_logs_parameters: {
    #         log_stream_name: "LogStreamName",
    #         timestamp: "JsonPath",
    #       },
    #       timestream_parameters: {
    #         time_value: "TimeValue", # required
    #         epoch_time_unit: "MILLISECONDS", # accepts MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS
    #         time_field_type: "EPOCH", # accepts EPOCH, TIMESTAMP_FORMAT
    #         timestamp_format: "TimestampFormat",
    #         version_value: "VersionValue", # required
    #         dimension_mappings: [ # required
    #           {
    #             dimension_value: "DimensionValue", # required
    #             dimension_value_type: "VARCHAR", # required, accepts VARCHAR
    #             dimension_name: "DimensionName", # required
    #           },
    #         ],
    #         single_measure_mappings: [
    #           {
    #             measure_value: "MeasureValue", # required
    #             measure_value_type: "DOUBLE", # required, accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP
    #             measure_name: "MeasureName", # required
    #           },
    #         ],
    #         multi_measure_mappings: [
    #           {
    #             multi_measure_name: "MultiMeasureName", # required
    #             multi_measure_attribute_mappings: [ # required
    #               {
    #                 measure_value: "MeasureValue", # required
    #                 measure_value_type: "DOUBLE", # required, accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP
    #                 multi_measure_attribute_name: "MultiMeasureAttributeName", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     log_configuration: {
    #       s3_log_destination: {
    #         bucket_name: "S3LogDestinationParametersBucketNameString", # required
    #         bucket_owner: "S3LogDestinationParametersBucketOwnerString", # required
    #         output_format: "json", # accepts json, plain, w3c
    #         prefix: "S3LogDestinationParametersPrefixString",
    #       },
    #       firehose_log_destination: {
    #         delivery_stream_arn: "FirehoseArn", # required
    #       },
    #       cloudwatch_logs_log_destination: {
    #         log_group_arn: "CloudwatchLogGroupArn", # required
    #       },
    #       level: "OFF", # required, accepts OFF, ERROR, INFO, TRACE
    #       include_execution_data: ["ALL"], # accepts ALL
    #     },
    #     kms_key_identifier: "KmsKeyIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.desired_state #=> String, one of "RUNNING", "STOPPED"
    #   resp.current_state #=> String, one of "RUNNING", "STOPPED", "CREATING", "UPDATING", "DELETING", "STARTING", "STOPPING", "CREATE_FAILED", "UPDATE_FAILED", "START_FAILED", "STOP_FAILED", "DELETE_FAILED", "CREATE_ROLLBACK_FAILED", "DELETE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_FAILED"
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/CreatePipe AWS API Documentation
    #
    # @overload create_pipe(params = {})
    # @param [Hash] params ({})
    def create_pipe(params = {}, options = {})
      req = build_request(:create_pipe, params)
      req.send_request(options)
    end

    # Delete an existing pipe. For more information about pipes, see [Amazon
    # EventBridge Pipes][1] in the Amazon EventBridge User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html
    #
    # @option params [required, String] :name
    #   The name of the pipe.
    #
    # @return [Types::DeletePipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePipeResponse#arn #arn} => String
    #   * {Types::DeletePipeResponse#name #name} => String
    #   * {Types::DeletePipeResponse#desired_state #desired_state} => String
    #   * {Types::DeletePipeResponse#current_state #current_state} => String
    #   * {Types::DeletePipeResponse#creation_time #creation_time} => Time
    #   * {Types::DeletePipeResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pipe({
    #     name: "PipeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.desired_state #=> String, one of "RUNNING", "STOPPED", "DELETED"
    #   resp.current_state #=> String, one of "RUNNING", "STOPPED", "CREATING", "UPDATING", "DELETING", "STARTING", "STOPPING", "CREATE_FAILED", "UPDATE_FAILED", "START_FAILED", "STOP_FAILED", "DELETE_FAILED", "CREATE_ROLLBACK_FAILED", "DELETE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_FAILED"
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/DeletePipe AWS API Documentation
    #
    # @overload delete_pipe(params = {})
    # @param [Hash] params ({})
    def delete_pipe(params = {}, options = {})
      req = build_request(:delete_pipe, params)
      req.send_request(options)
    end

    # Get the information about an existing pipe. For more information about
    # pipes, see [Amazon EventBridge Pipes][1] in the Amazon EventBridge
    # User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html
    #
    # @option params [required, String] :name
    #   The name of the pipe.
    #
    # @return [Types::DescribePipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePipeResponse#arn #arn} => String
    #   * {Types::DescribePipeResponse#name #name} => String
    #   * {Types::DescribePipeResponse#description #description} => String
    #   * {Types::DescribePipeResponse#desired_state #desired_state} => String
    #   * {Types::DescribePipeResponse#current_state #current_state} => String
    #   * {Types::DescribePipeResponse#state_reason #state_reason} => String
    #   * {Types::DescribePipeResponse#source #source} => String
    #   * {Types::DescribePipeResponse#source_parameters #source_parameters} => Types::PipeSourceParameters
    #   * {Types::DescribePipeResponse#enrichment #enrichment} => String
    #   * {Types::DescribePipeResponse#enrichment_parameters #enrichment_parameters} => Types::PipeEnrichmentParameters
    #   * {Types::DescribePipeResponse#target #target} => String
    #   * {Types::DescribePipeResponse#target_parameters #target_parameters} => Types::PipeTargetParameters
    #   * {Types::DescribePipeResponse#role_arn #role_arn} => String
    #   * {Types::DescribePipeResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribePipeResponse#creation_time #creation_time} => Time
    #   * {Types::DescribePipeResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribePipeResponse#log_configuration #log_configuration} => Types::PipeLogConfiguration
    #   * {Types::DescribePipeResponse#kms_key_identifier #kms_key_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pipe({
    #     name: "PipeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.desired_state #=> String, one of "RUNNING", "STOPPED", "DELETED"
    #   resp.current_state #=> String, one of "RUNNING", "STOPPED", "CREATING", "UPDATING", "DELETING", "STARTING", "STOPPING", "CREATE_FAILED", "UPDATE_FAILED", "START_FAILED", "STOP_FAILED", "DELETE_FAILED", "CREATE_ROLLBACK_FAILED", "DELETE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_FAILED"
    #   resp.state_reason #=> String
    #   resp.source #=> String
    #   resp.source_parameters.filter_criteria.filters #=> Array
    #   resp.source_parameters.filter_criteria.filters[0].pattern #=> String
    #   resp.source_parameters.kinesis_stream_parameters.batch_size #=> Integer
    #   resp.source_parameters.kinesis_stream_parameters.dead_letter_config.arn #=> String
    #   resp.source_parameters.kinesis_stream_parameters.on_partial_batch_item_failure #=> String, one of "AUTOMATIC_BISECT"
    #   resp.source_parameters.kinesis_stream_parameters.maximum_batching_window_in_seconds #=> Integer
    #   resp.source_parameters.kinesis_stream_parameters.maximum_record_age_in_seconds #=> Integer
    #   resp.source_parameters.kinesis_stream_parameters.maximum_retry_attempts #=> Integer
    #   resp.source_parameters.kinesis_stream_parameters.parallelization_factor #=> Integer
    #   resp.source_parameters.kinesis_stream_parameters.starting_position #=> String, one of "TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"
    #   resp.source_parameters.kinesis_stream_parameters.starting_position_timestamp #=> Time
    #   resp.source_parameters.dynamo_db_stream_parameters.batch_size #=> Integer
    #   resp.source_parameters.dynamo_db_stream_parameters.dead_letter_config.arn #=> String
    #   resp.source_parameters.dynamo_db_stream_parameters.on_partial_batch_item_failure #=> String, one of "AUTOMATIC_BISECT"
    #   resp.source_parameters.dynamo_db_stream_parameters.maximum_batching_window_in_seconds #=> Integer
    #   resp.source_parameters.dynamo_db_stream_parameters.maximum_record_age_in_seconds #=> Integer
    #   resp.source_parameters.dynamo_db_stream_parameters.maximum_retry_attempts #=> Integer
    #   resp.source_parameters.dynamo_db_stream_parameters.parallelization_factor #=> Integer
    #   resp.source_parameters.dynamo_db_stream_parameters.starting_position #=> String, one of "TRIM_HORIZON", "LATEST"
    #   resp.source_parameters.sqs_queue_parameters.batch_size #=> Integer
    #   resp.source_parameters.sqs_queue_parameters.maximum_batching_window_in_seconds #=> Integer
    #   resp.source_parameters.active_mq_broker_parameters.credentials.basic_auth #=> String
    #   resp.source_parameters.active_mq_broker_parameters.queue_name #=> String
    #   resp.source_parameters.active_mq_broker_parameters.batch_size #=> Integer
    #   resp.source_parameters.active_mq_broker_parameters.maximum_batching_window_in_seconds #=> Integer
    #   resp.source_parameters.rabbit_mq_broker_parameters.credentials.basic_auth #=> String
    #   resp.source_parameters.rabbit_mq_broker_parameters.queue_name #=> String
    #   resp.source_parameters.rabbit_mq_broker_parameters.virtual_host #=> String
    #   resp.source_parameters.rabbit_mq_broker_parameters.batch_size #=> Integer
    #   resp.source_parameters.rabbit_mq_broker_parameters.maximum_batching_window_in_seconds #=> Integer
    #   resp.source_parameters.managed_streaming_kafka_parameters.topic_name #=> String
    #   resp.source_parameters.managed_streaming_kafka_parameters.starting_position #=> String, one of "TRIM_HORIZON", "LATEST"
    #   resp.source_parameters.managed_streaming_kafka_parameters.batch_size #=> Integer
    #   resp.source_parameters.managed_streaming_kafka_parameters.maximum_batching_window_in_seconds #=> Integer
    #   resp.source_parameters.managed_streaming_kafka_parameters.consumer_group_id #=> String
    #   resp.source_parameters.managed_streaming_kafka_parameters.credentials.sasl_scram_512_auth #=> String
    #   resp.source_parameters.managed_streaming_kafka_parameters.credentials.client_certificate_tls_auth #=> String
    #   resp.source_parameters.self_managed_kafka_parameters.topic_name #=> String
    #   resp.source_parameters.self_managed_kafka_parameters.starting_position #=> String, one of "TRIM_HORIZON", "LATEST"
    #   resp.source_parameters.self_managed_kafka_parameters.additional_bootstrap_servers #=> Array
    #   resp.source_parameters.self_managed_kafka_parameters.additional_bootstrap_servers[0] #=> String
    #   resp.source_parameters.self_managed_kafka_parameters.batch_size #=> Integer
    #   resp.source_parameters.self_managed_kafka_parameters.maximum_batching_window_in_seconds #=> Integer
    #   resp.source_parameters.self_managed_kafka_parameters.consumer_group_id #=> String
    #   resp.source_parameters.self_managed_kafka_parameters.credentials.basic_auth #=> String
    #   resp.source_parameters.self_managed_kafka_parameters.credentials.sasl_scram_512_auth #=> String
    #   resp.source_parameters.self_managed_kafka_parameters.credentials.sasl_scram_256_auth #=> String
    #   resp.source_parameters.self_managed_kafka_parameters.credentials.client_certificate_tls_auth #=> String
    #   resp.source_parameters.self_managed_kafka_parameters.server_root_ca_certificate #=> String
    #   resp.source_parameters.self_managed_kafka_parameters.vpc.subnets #=> Array
    #   resp.source_parameters.self_managed_kafka_parameters.vpc.subnets[0] #=> String
    #   resp.source_parameters.self_managed_kafka_parameters.vpc.security_group #=> Array
    #   resp.source_parameters.self_managed_kafka_parameters.vpc.security_group[0] #=> String
    #   resp.enrichment #=> String
    #   resp.enrichment_parameters.input_template #=> String
    #   resp.enrichment_parameters.http_parameters.path_parameter_values #=> Array
    #   resp.enrichment_parameters.http_parameters.path_parameter_values[0] #=> String
    #   resp.enrichment_parameters.http_parameters.header_parameters #=> Hash
    #   resp.enrichment_parameters.http_parameters.header_parameters["HeaderKey"] #=> String
    #   resp.enrichment_parameters.http_parameters.query_string_parameters #=> Hash
    #   resp.enrichment_parameters.http_parameters.query_string_parameters["QueryStringKey"] #=> String
    #   resp.target #=> String
    #   resp.target_parameters.input_template #=> String
    #   resp.target_parameters.lambda_function_parameters.invocation_type #=> String, one of "REQUEST_RESPONSE", "FIRE_AND_FORGET"
    #   resp.target_parameters.step_function_state_machine_parameters.invocation_type #=> String, one of "REQUEST_RESPONSE", "FIRE_AND_FORGET"
    #   resp.target_parameters.kinesis_stream_parameters.partition_key #=> String
    #   resp.target_parameters.ecs_task_parameters.task_definition_arn #=> String
    #   resp.target_parameters.ecs_task_parameters.task_count #=> Integer
    #   resp.target_parameters.ecs_task_parameters.launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.target_parameters.ecs_task_parameters.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.target_parameters.ecs_task_parameters.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.target_parameters.ecs_task_parameters.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.target_parameters.ecs_task_parameters.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.target_parameters.ecs_task_parameters.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.target_parameters.ecs_task_parameters.platform_version #=> String
    #   resp.target_parameters.ecs_task_parameters.group #=> String
    #   resp.target_parameters.ecs_task_parameters.capacity_provider_strategy #=> Array
    #   resp.target_parameters.ecs_task_parameters.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.target_parameters.ecs_task_parameters.capacity_provider_strategy[0].weight #=> Integer
    #   resp.target_parameters.ecs_task_parameters.capacity_provider_strategy[0].base #=> Integer
    #   resp.target_parameters.ecs_task_parameters.enable_ecs_managed_tags #=> Boolean
    #   resp.target_parameters.ecs_task_parameters.enable_execute_command #=> Boolean
    #   resp.target_parameters.ecs_task_parameters.placement_constraints #=> Array
    #   resp.target_parameters.ecs_task_parameters.placement_constraints[0].type #=> String, one of "distinctInstance", "memberOf"
    #   resp.target_parameters.ecs_task_parameters.placement_constraints[0].expression #=> String
    #   resp.target_parameters.ecs_task_parameters.placement_strategy #=> Array
    #   resp.target_parameters.ecs_task_parameters.placement_strategy[0].type #=> String, one of "random", "spread", "binpack"
    #   resp.target_parameters.ecs_task_parameters.placement_strategy[0].field #=> String
    #   resp.target_parameters.ecs_task_parameters.propagate_tags #=> String, one of "TASK_DEFINITION"
    #   resp.target_parameters.ecs_task_parameters.reference_id #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides #=> Array
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].command #=> Array
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].command[0] #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].cpu #=> Integer
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].environment #=> Array
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].environment[0].name #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].environment[0].value #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].environment_files #=> Array
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].environment_files[0].type #=> String, one of "s3"
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].environment_files[0].value #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].memory #=> Integer
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].name #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].resource_requirements #=> Array
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].resource_requirements[0].type #=> String, one of "GPU", "InferenceAccelerator"
    #   resp.target_parameters.ecs_task_parameters.overrides.container_overrides[0].resource_requirements[0].value #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.cpu #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.target_parameters.ecs_task_parameters.overrides.execution_role_arn #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.inference_accelerator_overrides #=> Array
    #   resp.target_parameters.ecs_task_parameters.overrides.inference_accelerator_overrides[0].device_name #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.inference_accelerator_overrides[0].device_type #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.memory #=> String
    #   resp.target_parameters.ecs_task_parameters.overrides.task_role_arn #=> String
    #   resp.target_parameters.ecs_task_parameters.tags #=> Array
    #   resp.target_parameters.ecs_task_parameters.tags[0].key #=> String
    #   resp.target_parameters.ecs_task_parameters.tags[0].value #=> String
    #   resp.target_parameters.batch_job_parameters.job_definition #=> String
    #   resp.target_parameters.batch_job_parameters.job_name #=> String
    #   resp.target_parameters.batch_job_parameters.array_properties.size #=> Integer
    #   resp.target_parameters.batch_job_parameters.retry_strategy.attempts #=> Integer
    #   resp.target_parameters.batch_job_parameters.container_overrides.command #=> Array
    #   resp.target_parameters.batch_job_parameters.container_overrides.command[0] #=> String
    #   resp.target_parameters.batch_job_parameters.container_overrides.environment #=> Array
    #   resp.target_parameters.batch_job_parameters.container_overrides.environment[0].name #=> String
    #   resp.target_parameters.batch_job_parameters.container_overrides.environment[0].value #=> String
    #   resp.target_parameters.batch_job_parameters.container_overrides.instance_type #=> String
    #   resp.target_parameters.batch_job_parameters.container_overrides.resource_requirements #=> Array
    #   resp.target_parameters.batch_job_parameters.container_overrides.resource_requirements[0].type #=> String, one of "GPU", "MEMORY", "VCPU"
    #   resp.target_parameters.batch_job_parameters.container_overrides.resource_requirements[0].value #=> String
    #   resp.target_parameters.batch_job_parameters.depends_on #=> Array
    #   resp.target_parameters.batch_job_parameters.depends_on[0].job_id #=> String
    #   resp.target_parameters.batch_job_parameters.depends_on[0].type #=> String, one of "N_TO_N", "SEQUENTIAL"
    #   resp.target_parameters.batch_job_parameters.parameters #=> Hash
    #   resp.target_parameters.batch_job_parameters.parameters["String"] #=> String
    #   resp.target_parameters.sqs_queue_parameters.message_group_id #=> String
    #   resp.target_parameters.sqs_queue_parameters.message_deduplication_id #=> String
    #   resp.target_parameters.http_parameters.path_parameter_values #=> Array
    #   resp.target_parameters.http_parameters.path_parameter_values[0] #=> String
    #   resp.target_parameters.http_parameters.header_parameters #=> Hash
    #   resp.target_parameters.http_parameters.header_parameters["HeaderKey"] #=> String
    #   resp.target_parameters.http_parameters.query_string_parameters #=> Hash
    #   resp.target_parameters.http_parameters.query_string_parameters["QueryStringKey"] #=> String
    #   resp.target_parameters.redshift_data_parameters.secret_manager_arn #=> String
    #   resp.target_parameters.redshift_data_parameters.database #=> String
    #   resp.target_parameters.redshift_data_parameters.db_user #=> String
    #   resp.target_parameters.redshift_data_parameters.statement_name #=> String
    #   resp.target_parameters.redshift_data_parameters.with_event #=> Boolean
    #   resp.target_parameters.redshift_data_parameters.sqls #=> Array
    #   resp.target_parameters.redshift_data_parameters.sqls[0] #=> String
    #   resp.target_parameters.sage_maker_pipeline_parameters.pipeline_parameter_list #=> Array
    #   resp.target_parameters.sage_maker_pipeline_parameters.pipeline_parameter_list[0].name #=> String
    #   resp.target_parameters.sage_maker_pipeline_parameters.pipeline_parameter_list[0].value #=> String
    #   resp.target_parameters.event_bridge_event_bus_parameters.endpoint_id #=> String
    #   resp.target_parameters.event_bridge_event_bus_parameters.detail_type #=> String
    #   resp.target_parameters.event_bridge_event_bus_parameters.source #=> String
    #   resp.target_parameters.event_bridge_event_bus_parameters.resources #=> Array
    #   resp.target_parameters.event_bridge_event_bus_parameters.resources[0] #=> String
    #   resp.target_parameters.event_bridge_event_bus_parameters.time #=> String
    #   resp.target_parameters.cloud_watch_logs_parameters.log_stream_name #=> String
    #   resp.target_parameters.cloud_watch_logs_parameters.timestamp #=> String
    #   resp.target_parameters.timestream_parameters.time_value #=> String
    #   resp.target_parameters.timestream_parameters.epoch_time_unit #=> String, one of "MILLISECONDS", "SECONDS", "MICROSECONDS", "NANOSECONDS"
    #   resp.target_parameters.timestream_parameters.time_field_type #=> String, one of "EPOCH", "TIMESTAMP_FORMAT"
    #   resp.target_parameters.timestream_parameters.timestamp_format #=> String
    #   resp.target_parameters.timestream_parameters.version_value #=> String
    #   resp.target_parameters.timestream_parameters.dimension_mappings #=> Array
    #   resp.target_parameters.timestream_parameters.dimension_mappings[0].dimension_value #=> String
    #   resp.target_parameters.timestream_parameters.dimension_mappings[0].dimension_value_type #=> String, one of "VARCHAR"
    #   resp.target_parameters.timestream_parameters.dimension_mappings[0].dimension_name #=> String
    #   resp.target_parameters.timestream_parameters.single_measure_mappings #=> Array
    #   resp.target_parameters.timestream_parameters.single_measure_mappings[0].measure_value #=> String
    #   resp.target_parameters.timestream_parameters.single_measure_mappings[0].measure_value_type #=> String, one of "DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP"
    #   resp.target_parameters.timestream_parameters.single_measure_mappings[0].measure_name #=> String
    #   resp.target_parameters.timestream_parameters.multi_measure_mappings #=> Array
    #   resp.target_parameters.timestream_parameters.multi_measure_mappings[0].multi_measure_name #=> String
    #   resp.target_parameters.timestream_parameters.multi_measure_mappings[0].multi_measure_attribute_mappings #=> Array
    #   resp.target_parameters.timestream_parameters.multi_measure_mappings[0].multi_measure_attribute_mappings[0].measure_value #=> String
    #   resp.target_parameters.timestream_parameters.multi_measure_mappings[0].multi_measure_attribute_mappings[0].measure_value_type #=> String, one of "DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP"
    #   resp.target_parameters.timestream_parameters.multi_measure_mappings[0].multi_measure_attribute_mappings[0].multi_measure_attribute_name #=> String
    #   resp.role_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.log_configuration.s3_log_destination.bucket_name #=> String
    #   resp.log_configuration.s3_log_destination.prefix #=> String
    #   resp.log_configuration.s3_log_destination.bucket_owner #=> String
    #   resp.log_configuration.s3_log_destination.output_format #=> String, one of "json", "plain", "w3c"
    #   resp.log_configuration.firehose_log_destination.delivery_stream_arn #=> String
    #   resp.log_configuration.cloudwatch_logs_log_destination.log_group_arn #=> String
    #   resp.log_configuration.level #=> String, one of "OFF", "ERROR", "INFO", "TRACE"
    #   resp.log_configuration.include_execution_data #=> Array
    #   resp.log_configuration.include_execution_data[0] #=> String, one of "ALL"
    #   resp.kms_key_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/DescribePipe AWS API Documentation
    #
    # @overload describe_pipe(params = {})
    # @param [Hash] params ({})
    def describe_pipe(params = {}, options = {})
      req = build_request(:describe_pipe, params)
      req.send_request(options)
    end

    # Get the pipes associated with this account. For more information about
    # pipes, see [Amazon EventBridge Pipes][1] in the Amazon EventBridge
    # User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html
    #
    # @option params [String] :name_prefix
    #   A value that will return a subset of the pipes associated with this
    #   account. For example, `"NamePrefix": "ABC"` will return all endpoints
    #   with "ABC" in the name.
    #
    # @option params [String] :desired_state
    #   The state the pipe should be in.
    #
    # @option params [String] :current_state
    #   The state the pipe is in.
    #
    # @option params [String] :source_prefix
    #   The prefix matching the pipe source.
    #
    # @option params [String] :target_prefix
    #   The prefix matching the pipe target.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an HTTP
    #   400 InvalidToken error.
    #
    # @option params [Integer] :limit
    #   The maximum number of pipes to include in the response.
    #
    # @return [Types::ListPipesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPipesResponse#pipes #pipes} => Array&lt;Types::Pipe&gt;
    #   * {Types::ListPipesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipes({
    #     name_prefix: "PipeName",
    #     desired_state: "RUNNING", # accepts RUNNING, STOPPED
    #     current_state: "RUNNING", # accepts RUNNING, STOPPED, CREATING, UPDATING, DELETING, STARTING, STOPPING, CREATE_FAILED, UPDATE_FAILED, START_FAILED, STOP_FAILED, DELETE_FAILED, CREATE_ROLLBACK_FAILED, DELETE_ROLLBACK_FAILED, UPDATE_ROLLBACK_FAILED
    #     source_prefix: "ResourceArn",
    #     target_prefix: "ResourceArn",
    #     next_token: "NextToken",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pipes #=> Array
    #   resp.pipes[0].name #=> String
    #   resp.pipes[0].arn #=> String
    #   resp.pipes[0].desired_state #=> String, one of "RUNNING", "STOPPED"
    #   resp.pipes[0].current_state #=> String, one of "RUNNING", "STOPPED", "CREATING", "UPDATING", "DELETING", "STARTING", "STOPPING", "CREATE_FAILED", "UPDATE_FAILED", "START_FAILED", "STOP_FAILED", "DELETE_FAILED", "CREATE_ROLLBACK_FAILED", "DELETE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_FAILED"
    #   resp.pipes[0].state_reason #=> String
    #   resp.pipes[0].creation_time #=> Time
    #   resp.pipes[0].last_modified_time #=> Time
    #   resp.pipes[0].source #=> String
    #   resp.pipes[0].target #=> String
    #   resp.pipes[0].enrichment #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ListPipes AWS API Documentation
    #
    # @overload list_pipes(params = {})
    # @param [Hash] params ({})
    def list_pipes(params = {}, options = {})
      req = build_request(:list_pipes, params)
      req.send_request(options)
    end

    # Displays the tags associated with a pipe.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the pipe for which you want to view tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "PipeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Start an existing pipe.
    #
    # @option params [required, String] :name
    #   The name of the pipe.
    #
    # @return [Types::StartPipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPipeResponse#arn #arn} => String
    #   * {Types::StartPipeResponse#name #name} => String
    #   * {Types::StartPipeResponse#desired_state #desired_state} => String
    #   * {Types::StartPipeResponse#current_state #current_state} => String
    #   * {Types::StartPipeResponse#creation_time #creation_time} => Time
    #   * {Types::StartPipeResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_pipe({
    #     name: "PipeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.desired_state #=> String, one of "RUNNING", "STOPPED"
    #   resp.current_state #=> String, one of "RUNNING", "STOPPED", "CREATING", "UPDATING", "DELETING", "STARTING", "STOPPING", "CREATE_FAILED", "UPDATE_FAILED", "START_FAILED", "STOP_FAILED", "DELETE_FAILED", "CREATE_ROLLBACK_FAILED", "DELETE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_FAILED"
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/StartPipe AWS API Documentation
    #
    # @overload start_pipe(params = {})
    # @param [Hash] params ({})
    def start_pipe(params = {}, options = {})
      req = build_request(:start_pipe, params)
      req.send_request(options)
    end

    # Stop an existing pipe.
    #
    # @option params [required, String] :name
    #   The name of the pipe.
    #
    # @return [Types::StopPipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopPipeResponse#arn #arn} => String
    #   * {Types::StopPipeResponse#name #name} => String
    #   * {Types::StopPipeResponse#desired_state #desired_state} => String
    #   * {Types::StopPipeResponse#current_state #current_state} => String
    #   * {Types::StopPipeResponse#creation_time #creation_time} => Time
    #   * {Types::StopPipeResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_pipe({
    #     name: "PipeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.desired_state #=> String, one of "RUNNING", "STOPPED"
    #   resp.current_state #=> String, one of "RUNNING", "STOPPED", "CREATING", "UPDATING", "DELETING", "STARTING", "STOPPING", "CREATE_FAILED", "UPDATE_FAILED", "START_FAILED", "STOP_FAILED", "DELETE_FAILED", "CREATE_ROLLBACK_FAILED", "DELETE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_FAILED"
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/StopPipe AWS API Documentation
    #
    # @overload stop_pipe(params = {})
    # @param [Hash] params ({})
    def stop_pipe(params = {}, options = {})
      req = build_request(:stop_pipe, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified pipe. Tags
    # can help you organize and categorize your resources. You can also use
    # them to scope user permissions by granting a user permission to access
    # or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to Amazon Web Services and are
    # interpreted strictly as strings of characters.
    #
    # You can use the `TagResource` action with a pipe that already has
    # tags. If you specify a new tag key, this tag is appended to the list
    # of tags associated with the pipe. If you specify a tag key that is
    # already associated with the pipe, the new tag value that you specify
    # replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a pipe.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the pipe.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs associated with the pipe.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "PipeArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified pipes.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the pipe.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the pipe.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "PipeArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update an existing pipe. When you call `UpdatePipe`, EventBridge only
    # the updates fields you have specified in the request; the rest remain
    # unchanged. The exception to this is if you modify any Amazon Web
    # Services-service specific fields in the `SourceParameters`,
    # `EnrichmentParameters`, or `TargetParameters` objects. For example,
    # `DynamoDBStreamParameters` or `EventBridgeEventBusParameters`.
    # EventBridge updates the fields in these objects atomically as one and
    # overrides existing values. This is by design, and means that if you
    # don't specify an optional field in one of these `Parameters` objects,
    # EventBridge sets that field to its system-default value during the
    # update.
    #
    # For more information about pipes, see [ Amazon EventBridge Pipes][1]
    # in the Amazon EventBridge User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html
    #
    # @option params [required, String] :name
    #   The name of the pipe.
    #
    # @option params [String] :description
    #   A description of the pipe.
    #
    # @option params [String] :desired_state
    #   The state the pipe should be in.
    #
    # @option params [Types::UpdatePipeSourceParameters] :source_parameters
    #   The parameters required to set up a source for your pipe.
    #
    # @option params [String] :enrichment
    #   The ARN of the enrichment resource.
    #
    # @option params [Types::PipeEnrichmentParameters] :enrichment_parameters
    #   The parameters required to set up enrichment on your pipe.
    #
    # @option params [String] :target
    #   The ARN of the target resource.
    #
    # @option params [Types::PipeTargetParameters] :target_parameters
    #   The parameters required to set up a target for your pipe.
    #
    #   For more information about pipe target parameters, including how to
    #   use dynamic path parameters, see [Target parameters][1] in the *Amazon
    #   EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-target.html
    #
    # @option params [required, String] :role_arn
    #   The ARN of the role that allows the pipe to send data to the target.
    #
    # @option params [Types::PipeLogConfigurationParameters] :log_configuration
    #   The logging configuration settings for the pipe.
    #
    # @option params [String] :kms_key_identifier
    #   The identifier of the KMS customer managed key for EventBridge to use,
    #   if you choose to use a customer managed key to encrypt pipe data. The
    #   identifier can be the key Amazon Resource Name (ARN), KeyId, key
    #   alias, or key alias ARN.
    #
    #   To update a pipe that is using the default Amazon Web Services owned
    #   key to use a customer managed key instead, or update a pipe that is
    #   using a customer managed key to use a different customer managed key,
    #   specify a customer managed key identifier.
    #
    #   To update a pipe that is using a customer managed key to use the
    #   default Amazon Web Services owned key, specify an empty string.
    #
    #   For more information, see [Managing keys][1] in the *Key Management
    #   Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html
    #
    # @return [Types::UpdatePipeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePipeResponse#arn #arn} => String
    #   * {Types::UpdatePipeResponse#name #name} => String
    #   * {Types::UpdatePipeResponse#desired_state #desired_state} => String
    #   * {Types::UpdatePipeResponse#current_state #current_state} => String
    #   * {Types::UpdatePipeResponse#creation_time #creation_time} => Time
    #   * {Types::UpdatePipeResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipe({
    #     name: "PipeName", # required
    #     description: "PipeDescription",
    #     desired_state: "RUNNING", # accepts RUNNING, STOPPED
    #     source_parameters: {
    #       filter_criteria: {
    #         filters: [
    #           {
    #             pattern: "EventPattern",
    #           },
    #         ],
    #       },
    #       kinesis_stream_parameters: {
    #         batch_size: 1,
    #         dead_letter_config: {
    #           arn: "Arn",
    #         },
    #         on_partial_batch_item_failure: "AUTOMATIC_BISECT", # accepts AUTOMATIC_BISECT
    #         maximum_batching_window_in_seconds: 1,
    #         maximum_record_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1,
    #       },
    #       dynamo_db_stream_parameters: {
    #         batch_size: 1,
    #         dead_letter_config: {
    #           arn: "Arn",
    #         },
    #         on_partial_batch_item_failure: "AUTOMATIC_BISECT", # accepts AUTOMATIC_BISECT
    #         maximum_batching_window_in_seconds: 1,
    #         maximum_record_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1,
    #       },
    #       sqs_queue_parameters: {
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #       },
    #       active_mq_broker_parameters: {
    #         credentials: { # required
    #           basic_auth: "SecretManagerArn",
    #         },
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #       },
    #       rabbit_mq_broker_parameters: {
    #         credentials: { # required
    #           basic_auth: "SecretManagerArn",
    #         },
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #       },
    #       managed_streaming_kafka_parameters: {
    #         batch_size: 1,
    #         credentials: {
    #           sasl_scram_512_auth: "SecretManagerArn",
    #           client_certificate_tls_auth: "SecretManagerArn",
    #         },
    #         maximum_batching_window_in_seconds: 1,
    #       },
    #       self_managed_kafka_parameters: {
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         credentials: {
    #           basic_auth: "SecretManagerArn",
    #           sasl_scram_512_auth: "SecretManagerArn",
    #           sasl_scram_256_auth: "SecretManagerArn",
    #           client_certificate_tls_auth: "SecretManagerArn",
    #         },
    #         server_root_ca_certificate: "SecretManagerArn",
    #         vpc: {
    #           subnets: ["SubnetId"],
    #           security_group: ["SecurityGroupId"],
    #         },
    #       },
    #     },
    #     enrichment: "OptionalArn",
    #     enrichment_parameters: {
    #       input_template: "InputTemplate",
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue",
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue",
    #         },
    #       },
    #     },
    #     target: "Arn",
    #     target_parameters: {
    #       input_template: "InputTemplate",
    #       lambda_function_parameters: {
    #         invocation_type: "REQUEST_RESPONSE", # accepts REQUEST_RESPONSE, FIRE_AND_FORGET
    #       },
    #       step_function_state_machine_parameters: {
    #         invocation_type: "REQUEST_RESPONSE", # accepts REQUEST_RESPONSE, FIRE_AND_FORGET
    #       },
    #       kinesis_stream_parameters: {
    #         partition_key: "KinesisPartitionKey", # required
    #       },
    #       ecs_task_parameters: {
    #         task_definition_arn: "ArnOrJsonPath", # required
    #         task_count: 1,
    #         launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["Subnet"], # required
    #             security_groups: ["SecurityGroup"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         platform_version: "String",
    #         group: "String",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #             base: 1,
    #           },
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         placement_constraints: [
    #           {
    #             type: "distinctInstance", # accepts distinctInstance, memberOf
    #             expression: "PlacementConstraintExpression",
    #           },
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "random", # accepts random, spread, binpack
    #             field: "PlacementStrategyField",
    #           },
    #         ],
    #         propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION
    #         reference_id: "ReferenceId",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               command: ["String"],
    #               cpu: 1,
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String",
    #                 },
    #               ],
    #               environment_files: [
    #                 {
    #                   type: "s3", # required, accepts s3
    #                   value: "String", # required
    #                 },
    #               ],
    #               memory: 1,
    #               memory_reservation: 1,
    #               name: "String",
    #               resource_requirements: [
    #                 {
    #                   type: "GPU", # required, accepts GPU, InferenceAccelerator
    #                   value: "String", # required
    #                 },
    #               ],
    #             },
    #           ],
    #           cpu: "String",
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           },
    #           execution_role_arn: "ArnOrJsonPath",
    #           inference_accelerator_overrides: [
    #             {
    #               device_name: "String",
    #               device_type: "String",
    #             },
    #           ],
    #           memory: "String",
    #           task_role_arn: "ArnOrJsonPath",
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       },
    #       batch_job_parameters: {
    #         job_definition: "String", # required
    #         job_name: "String", # required
    #         array_properties: {
    #           size: 1,
    #         },
    #         retry_strategy: {
    #           attempts: 1,
    #         },
    #         container_overrides: {
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #           instance_type: "String",
    #           resource_requirements: [
    #             {
    #               type: "GPU", # required, accepts GPU, MEMORY, VCPU
    #               value: "String", # required
    #             },
    #           ],
    #         },
    #         depends_on: [
    #           {
    #             job_id: "String",
    #             type: "N_TO_N", # accepts N_TO_N, SEQUENTIAL
    #           },
    #         ],
    #         parameters: {
    #           "String" => "String",
    #         },
    #       },
    #       sqs_queue_parameters: {
    #         message_group_id: "MessageGroupId",
    #         message_deduplication_id: "MessageDeduplicationId",
    #       },
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue",
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue",
    #         },
    #       },
    #       redshift_data_parameters: {
    #         secret_manager_arn: "SecretManagerArnOrJsonPath",
    #         database: "Database", # required
    #         db_user: "DbUser",
    #         statement_name: "StatementName",
    #         with_event: false,
    #         sqls: ["Sql"], # required
    #       },
    #       sage_maker_pipeline_parameters: {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           },
    #         ],
    #       },
    #       event_bridge_event_bus_parameters: {
    #         endpoint_id: "EventBridgeEndpointId",
    #         detail_type: "EventBridgeDetailType",
    #         source: "EventBridgeEventSource",
    #         resources: ["ArnOrJsonPath"],
    #         time: "JsonPath",
    #       },
    #       cloud_watch_logs_parameters: {
    #         log_stream_name: "LogStreamName",
    #         timestamp: "JsonPath",
    #       },
    #       timestream_parameters: {
    #         time_value: "TimeValue", # required
    #         epoch_time_unit: "MILLISECONDS", # accepts MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS
    #         time_field_type: "EPOCH", # accepts EPOCH, TIMESTAMP_FORMAT
    #         timestamp_format: "TimestampFormat",
    #         version_value: "VersionValue", # required
    #         dimension_mappings: [ # required
    #           {
    #             dimension_value: "DimensionValue", # required
    #             dimension_value_type: "VARCHAR", # required, accepts VARCHAR
    #             dimension_name: "DimensionName", # required
    #           },
    #         ],
    #         single_measure_mappings: [
    #           {
    #             measure_value: "MeasureValue", # required
    #             measure_value_type: "DOUBLE", # required, accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP
    #             measure_name: "MeasureName", # required
    #           },
    #         ],
    #         multi_measure_mappings: [
    #           {
    #             multi_measure_name: "MultiMeasureName", # required
    #             multi_measure_attribute_mappings: [ # required
    #               {
    #                 measure_value: "MeasureValue", # required
    #                 measure_value_type: "DOUBLE", # required, accepts DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP
    #                 multi_measure_attribute_name: "MultiMeasureAttributeName", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     log_configuration: {
    #       s3_log_destination: {
    #         bucket_name: "S3LogDestinationParametersBucketNameString", # required
    #         bucket_owner: "S3LogDestinationParametersBucketOwnerString", # required
    #         output_format: "json", # accepts json, plain, w3c
    #         prefix: "S3LogDestinationParametersPrefixString",
    #       },
    #       firehose_log_destination: {
    #         delivery_stream_arn: "FirehoseArn", # required
    #       },
    #       cloudwatch_logs_log_destination: {
    #         log_group_arn: "CloudwatchLogGroupArn", # required
    #       },
    #       level: "OFF", # required, accepts OFF, ERROR, INFO, TRACE
    #       include_execution_data: ["ALL"], # accepts ALL
    #     },
    #     kms_key_identifier: "KmsKeyIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.desired_state #=> String, one of "RUNNING", "STOPPED"
    #   resp.current_state #=> String, one of "RUNNING", "STOPPED", "CREATING", "UPDATING", "DELETING", "STARTING", "STOPPING", "CREATE_FAILED", "UPDATE_FAILED", "START_FAILED", "STOP_FAILED", "DELETE_FAILED", "CREATE_ROLLBACK_FAILED", "DELETE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_FAILED"
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pipes-2015-10-07/UpdatePipe AWS API Documentation
    #
    # @overload update_pipe(params = {})
    # @param [Hash] params ({})
    def update_pipe(params = {}, options = {})
      req = build_request(:update_pipe, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Pipes')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-pipes'
      context[:gem_version] = '1.40.0'
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
