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
require 'aws-sdk-core/plugins/protocols/json_rpc'
require 'aws-sdk-dynamodb/plugins/extended_retries'
require 'aws-sdk-dynamodb/plugins/simple_attributes'
require 'aws-sdk-dynamodb/plugins/crc32_validation'

module Aws::DynamoDB
  # An API client for DynamoDB.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DynamoDB::Client.new(
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

    @identifier = :dynamodb

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::DynamoDB::Plugins::ExtendedRetries)
    add_plugin(Aws::DynamoDB::Plugins::SimpleAttributes)
    add_plugin(Aws::DynamoDB::Plugins::CRC32Validation)
    add_plugin(Aws::DynamoDB::Plugins::Endpoints)

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
    #   @option options [Boolean] :compute_checksums (true)
    #     When `true`, a CRC32 checksum is computed of every HTTP
    #     response body and compared against the `X-Amz-Crc32` header.
    #     If the checksums do not match, the request is re-sent.
    #     Failures can be retried up to `:retry_limit` times.
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
    #   @option options [Float] :retry_base_delay (0.05)
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
    #   @option options [Integer] :retry_limit (10)
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
    #   @option options [Boolean] :simple_attributes (true)
    #     Enables working with DynamoDB attribute values using
    #     hashes, arrays, sets, integers, floats, booleans, and nil.
    #
    #     Disabling this option requires that all attribute values have
    #     their types specified, e.g. `{ s: 'abc' }` instead of simply
    #     `'abc'`.
    #
    #     See {Aws::DynamoDB::Plugins::SimpleAttributes} for more information.
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
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
    #   @option options [String] :account_id_endpoint_mode
    #     The account ID endpoint mode to use. This can be one of the following values:
    #     * `preferred` - The default behavior. Use the account ID endpoint if
    #       available, otherwise use the standard endpoint.
    #     * `disabled` - Never use the account ID endpoint. Only use the standard
    #       endpoint.
    #     * `required` - Always use the account ID endpoint. If the account ID
    #       cannot be retrieved from credentials, an error is raised.
    #
    #   @option options [Aws::DynamoDB::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::DynamoDB::EndpointParameters`.
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

    # This operation allows you to perform batch reads or writes on data
    # stored in DynamoDB, using PartiQL. Each read statement in a
    # `BatchExecuteStatement` must specify an equality condition on all key
    # attributes. This enforces that each `SELECT` statement in a batch
    # returns at most a single item. For more information, see [Running
    # batch operations with PartiQL for DynamoDB ][1].
    #
    # <note markdown="1"> The entire batch must consist of either read statements or write
    # statements, you cannot mix both in one batch.
    #
    #  </note>
    #
    # A HTTP 200 response does not mean that all statements in the
    # BatchExecuteStatement succeeded. Error details for individual
    # statements can be found under the [Error][2] field of the
    # `BatchStatementResponse` for each statement.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ql-reference.multiplestatements.batching.html
    # [2]: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_BatchStatementResponse.html#DDB-Type-BatchStatementResponse-Error
    #
    # @option params [required, Array<Types::BatchStatementRequest>] :statements
    #   The list of PartiQL statements representing the batch to run.
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @return [Types::BatchExecuteStatementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchExecuteStatementOutput#responses #responses} => Array&lt;Types::BatchStatementResponse&gt;
    #   * {Types::BatchExecuteStatementOutput#consumed_capacity #consumed_capacity} => Array&lt;Types::ConsumedCapacity&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_execute_statement({
    #     statements: [ # required
    #       {
    #         statement: "PartiQLStatement", # required
    #         parameters: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         consistent_read: false,
    #         return_values_on_condition_check_failure: "ALL_OLD", # accepts ALL_OLD, NONE
    #       },
    #     ],
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.responses #=> Array
    #   resp.responses[0].error.code #=> String, one of "ConditionalCheckFailed", "ItemCollectionSizeLimitExceeded", "RequestLimitExceeded", "ValidationError", "ProvisionedThroughputExceeded", "TransactionConflict", "ThrottlingError", "InternalServerError", "ResourceNotFound", "AccessDenied", "DuplicateItem"
    #   resp.responses[0].error.message #=> String
    #   resp.responses[0].error.item #=> Hash
    #   resp.responses[0].error.item["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.responses[0].table_name #=> String
    #   resp.responses[0].item #=> Hash
    #   resp.responses[0].item["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.consumed_capacity #=> Array
    #   resp.consumed_capacity[0].table_name #=> String
    #   resp.consumed_capacity[0].capacity_units #=> Float
    #   resp.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].capacity_units #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchExecuteStatement AWS API Documentation
    #
    # @overload batch_execute_statement(params = {})
    # @param [Hash] params ({})
    def batch_execute_statement(params = {}, options = {})
      req = build_request(:batch_execute_statement, params)
      req.send_request(options)
    end

    # The `BatchGetItem` operation returns the attributes of one or more
    # items from one or more tables. You identify requested items by primary
    # key.
    #
    # A single operation can retrieve up to 16 MB of data, which can contain
    # as many as 100 items. `BatchGetItem` returns a partial result if the
    # response size limit is exceeded, the table's provisioned throughput
    # is exceeded, more than 1MB per partition is requested, or an internal
    # processing failure occurs. If a partial result is returned, the
    # operation returns a value for `UnprocessedKeys`. You can use this
    # value to retry the operation starting with the next item to get.
    #
    # If you request more than 100 items, `BatchGetItem` returns a
    # `ValidationException` with the message "Too many items requested for
    # the BatchGetItem call."
    #
    # For example, if you ask to retrieve 100 items, but each individual
    # item is 300 KB in size, the system returns 52 items (so as not to
    # exceed the 16 MB limit). It also returns an appropriate
    # `UnprocessedKeys` value so you can get the next page of results. If
    # desired, your application can include its own logic to assemble the
    # pages of results into one dataset.
    #
    # If *none* of the items can be processed due to insufficient
    # provisioned throughput on all of the tables in the request, then
    # `BatchGetItem` returns a `ProvisionedThroughputExceededException`. If
    # *at least one* of the items is successfully processed, then
    # `BatchGetItem` completes successfully, while returning the keys of the
    # unread items in `UnprocessedKeys`.
    #
    # If DynamoDB returns any unprocessed items, you should retry the batch
    # operation on those items. However, *we strongly recommend that you use
    # an exponential backoff algorithm*. If you retry the batch operation
    # immediately, the underlying read or write requests can still fail due
    # to throttling on the individual tables. If you delay the batch
    # operation using exponential backoff, the individual requests in the
    # batch are much more likely to succeed.
    #
    #  For more information, see [Batch Operations and Error Handling][1] in
    # the *Amazon DynamoDB Developer Guide*.
    #
    # By default, `BatchGetItem` performs eventually consistent reads on
    # every table in the request. If you want strongly consistent reads
    # instead, you can set `ConsistentRead` to `true` for any or all tables.
    #
    # In order to minimize response latency, `BatchGetItem` may retrieve
    # items in parallel.
    #
    # When designing your application, keep in mind that DynamoDB does not
    # return items in any particular order. To help parse the response by
    # item, include the primary key values for the items in your request in
    # the `ProjectionExpression` parameter.
    #
    # If a requested item does not exist, it is not returned in the result.
    # Requests for nonexistent items consume the minimum read capacity units
    # according to the type of read. For more information, see [Working with
    # Tables][2] in the *Amazon DynamoDB Developer Guide*.
    #
    # <note markdown="1"> `BatchGetItem` will result in a `ValidationException` if the same key
    # is specified multiple times.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations
    # [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations
    #
    # @option params [required, Hash<String,Types::KeysAndAttributes>] :request_items
    #   A map of one or more table names or table ARNs and, for each table, a
    #   map that describes one or more items to retrieve from that table. Each
    #   table name or ARN can be used only once per `BatchGetItem` request.
    #
    #   Each element in the map of items to retrieve consists of the
    #   following:
    #
    #   * `ConsistentRead` - If `true`, a strongly consistent read is used; if
    #     `false` (the default), an eventually consistent read is used.
    #
    #   * `ExpressionAttributeNames` - One or more substitution tokens for
    #     attribute names in the `ProjectionExpression` parameter. The
    #     following are some use cases for using `ExpressionAttributeNames`:
    #
    #     * To access an attribute whose name conflicts with a DynamoDB
    #       reserved word.
    #
    #     * To create a placeholder for repeating occurrences of an attribute
    #       name in an expression.
    #
    #     * To prevent special characters in an attribute name from being
    #       misinterpreted in an expression.
    #     Use the **#** character in an expression to dereference an attribute
    #     name. For example, consider the following attribute name:
    #
    #     * `Percentile`
    #
    #     ^
    #     The name of this attribute conflicts with a reserved word, so it
    #     cannot be used directly in an expression. (For the complete list of
    #     reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #     Developer Guide*). To work around this, you could specify the
    #     following for `ExpressionAttributeNames`:
    #
    #     * `{"#P":"Percentile"}`
    #
    #     ^
    #     You could then use this substitution in an expression, as in this
    #     example:
    #
    #     * `#P = :val`
    #
    #     ^
    #     <note markdown="1"> Tokens that begin with the **\:** character are *expression
    #     attribute values*, which are placeholders for the actual value at
    #     runtime.
    #
    #      </note>
    #
    #     For more information about expression attribute names, see
    #     [Accessing Item Attributes][2] in the *Amazon DynamoDB Developer
    #     Guide*.
    #
    #   * `Keys` - An array of primary key attribute values that define
    #     specific items in the table. For each primary key, you must provide
    #     *all* of the key attributes. For example, with a simple primary key,
    #     you only need to provide the partition key value. For a composite
    #     key, you must provide *both* the partition key value and the sort
    #     key value.
    #
    #   * `ProjectionExpression` - A string that identifies one or more
    #     attributes to retrieve from the table. These attributes can include
    #     scalars, sets, or elements of a JSON document. The attributes in the
    #     expression must be separated by commas.
    #
    #     If no attribute names are specified, then all attributes are
    #     returned. If any of the requested attributes are not found, they do
    #     not appear in the result.
    #
    #     For more information, see [Accessing Item Attributes][2] in the
    #     *Amazon DynamoDB Developer Guide*.
    #
    #   * `AttributesToGet` - This is a legacy parameter. Use
    #     `ProjectionExpression` instead. For more information, see
    #     [AttributesToGet][3] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #   [3]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @return [Types::BatchGetItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetItemOutput#responses #responses} => Hash&lt;String,Array&lt;Hash&lt;String,Types::AttributeValue&gt;&gt;&gt;
    #   * {Types::BatchGetItemOutput#unprocessed_keys #unprocessed_keys} => Hash&lt;String,Types::KeysAndAttributes&gt;
    #   * {Types::BatchGetItemOutput#consumed_capacity #consumed_capacity} => Array&lt;Types::ConsumedCapacity&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To retrieve multiple items from a table
    #
    #   # This example reads multiple items from the Music table using a batch of three GetItem requests.  Only the AlbumTitle
    #   # attribute is returned.
    #
    #   resp = client.batch_get_item({
    #     request_items: {
    #       "Music" => {
    #         keys: [
    #           {
    #             "Artist" => "No One You Know", 
    #             "SongTitle" => "Call Me Today", 
    #           }, 
    #           {
    #             "Artist" => "Acme Band", 
    #             "SongTitle" => "Happy Day", 
    #           }, 
    #           {
    #             "Artist" => "No One You Know", 
    #             "SongTitle" => "Scared of My Shadow", 
    #           }, 
    #         ], 
    #         projection_expression: "AlbumTitle", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     responses: {
    #       "Music" => [
    #         {
    #           "AlbumTitle" => "Somewhat Famous", 
    #         }, 
    #         {
    #           "AlbumTitle" => "Blue Sky Blues", 
    #         }, 
    #         {
    #           "AlbumTitle" => "Louder Than Ever", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_item({
    #     request_items: { # required
    #       "TableArn" => {
    #         keys: [ # required
    #           {
    #             "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #         ],
    #         attributes_to_get: ["AttributeName"],
    #         consistent_read: false,
    #         projection_expression: "ProjectionExpression",
    #         expression_attribute_names: {
    #           "ExpressionAttributeNameVariable" => "AttributeName",
    #         },
    #       },
    #     },
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.responses #=> Hash
    #   resp.responses["TableArn"] #=> Array
    #   resp.responses["TableArn"][0] #=> Hash
    #   resp.responses["TableArn"][0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.unprocessed_keys #=> Hash
    #   resp.unprocessed_keys["TableArn"].keys #=> Array
    #   resp.unprocessed_keys["TableArn"].keys[0] #=> Hash
    #   resp.unprocessed_keys["TableArn"].keys[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.unprocessed_keys["TableArn"].attributes_to_get #=> Array
    #   resp.unprocessed_keys["TableArn"].attributes_to_get[0] #=> String
    #   resp.unprocessed_keys["TableArn"].consistent_read #=> Boolean
    #   resp.unprocessed_keys["TableArn"].projection_expression #=> String
    #   resp.unprocessed_keys["TableArn"].expression_attribute_names #=> Hash
    #   resp.unprocessed_keys["TableArn"].expression_attribute_names["ExpressionAttributeNameVariable"] #=> String
    #   resp.consumed_capacity #=> Array
    #   resp.consumed_capacity[0].table_name #=> String
    #   resp.consumed_capacity[0].capacity_units #=> Float
    #   resp.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].capacity_units #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchGetItem AWS API Documentation
    #
    # @overload batch_get_item(params = {})
    # @param [Hash] params ({})
    def batch_get_item(params = {}, options = {})
      req = build_request(:batch_get_item, params)
      req.send_request(options)
    end

    # The `BatchWriteItem` operation puts or deletes multiple items in one
    # or more tables. A single call to `BatchWriteItem` can transmit up to
    # 16MB of data over the network, consisting of up to 25 item put or
    # delete operations. While individual items can be up to 400 KB once
    # stored, it's important to note that an item's representation might
    # be greater than 400KB while being sent in DynamoDB's JSON format for
    # the API call. For more details on this distinction, see [Naming Rules
    # and Data Types][1].
    #
    # <note markdown="1"> `BatchWriteItem` cannot update items. If you perform a
    # `BatchWriteItem` operation on an existing item, that item's values
    # will be overwritten by the operation and it will appear like it was
    # updated. To update items, we recommend you use the `UpdateItem`
    # action.
    #
    #  </note>
    #
    # The individual `PutItem` and `DeleteItem` operations specified in
    # `BatchWriteItem` are atomic; however `BatchWriteItem` as a whole is
    # not. If any requested operations fail because the table's provisioned
    # throughput is exceeded or an internal processing failure occurs, the
    # failed operations are returned in the `UnprocessedItems` response
    # parameter. You can investigate and optionally resend the requests.
    # Typically, you would call `BatchWriteItem` in a loop. Each iteration
    # would check for unprocessed items and submit a new `BatchWriteItem`
    # request with those unprocessed items until all items have been
    # processed.
    #
    # For tables and indexes with provisioned capacity, if none of the items
    # can be processed due to insufficient provisioned throughput on all of
    # the tables in the request, then `BatchWriteItem` returns a
    # `ProvisionedThroughputExceededException`. For all tables and indexes,
    # if none of the items can be processed due to other throttling
    # scenarios (such as exceeding partition level limits), then
    # `BatchWriteItem` returns a `ThrottlingException`.
    #
    # If DynamoDB returns any unprocessed items, you should retry the batch
    # operation on those items. However, *we strongly recommend that you use
    # an exponential backoff algorithm*. If you retry the batch operation
    # immediately, the underlying read or write requests can still fail due
    # to throttling on the individual tables. If you delay the batch
    # operation using exponential backoff, the individual requests in the
    # batch are much more likely to succeed.
    #
    #  For more information, see [Batch Operations and Error Handling][2] in
    # the *Amazon DynamoDB Developer Guide*.
    #
    # With `BatchWriteItem`, you can efficiently write or delete large
    # amounts of data, such as from Amazon EMR, or copy data from another
    # database into DynamoDB. In order to improve performance with these
    # large-scale operations, `BatchWriteItem` does not behave in the same
    # way as individual `PutItem` and `DeleteItem` calls would. For example,
    # you cannot specify conditions on individual put and delete requests,
    # and `BatchWriteItem` does not return deleted items in the response.
    #
    # If you use a programming language that supports concurrency, you can
    # use threads to write items in parallel. Your application must include
    # the necessary logic to manage the threads. With languages that don't
    # support threading, you must update or delete the specified items one
    # at a time. In both situations, `BatchWriteItem` performs the specified
    # put and delete operations in parallel, giving you the power of the
    # thread pool approach without having to introduce complexity into your
    # application.
    #
    # Parallel processing reduces latency, but each specified put and delete
    # request consumes the same number of write capacity units whether it is
    # processed in parallel or not. Delete operations on nonexistent items
    # consume one write capacity unit.
    #
    # If one or more of the following is true, DynamoDB rejects the entire
    # batch write operation:
    #
    # * One or more tables specified in the `BatchWriteItem` request does
    #   not exist.
    #
    # * Primary key attributes specified on an item in the request do not
    #   match those in the corresponding table's primary key schema.
    #
    # * You try to perform multiple operations on the same item in the same
    #   `BatchWriteItem` request. For example, you cannot put and delete the
    #   same item in the same `BatchWriteItem` request.
    #
    # * Your request contains at least two items with identical hash and
    #   range keys (which essentially is two put operations).
    #
    # * There are more than 25 requests in the batch.
    #
    # * Any individual item in a batch exceeds 400 KB.
    #
    # * The total request size exceeds 16 MB.
    #
    # * Any individual items with keys exceeding the key length limits. For
    #   a partition key, the limit is 2048 bytes and for a sort key, the
    #   limit is 1024 bytes.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html
    # [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#Programming.Errors.BatchOperations
    #
    # @option params [required, Hash<String,Array>] :request_items
    #   A map of one or more table names or table ARNs and, for each table, a
    #   list of operations to be performed (`DeleteRequest` or `PutRequest`).
    #   Each element in the map consists of the following:
    #
    #   * `DeleteRequest` - Perform a `DeleteItem` operation on the specified
    #     item. The item to be deleted is identified by a `Key` subelement:
    #
    #     * `Key` - A map of primary key attribute values that uniquely
    #       identify the item. Each entry in this map consists of an attribute
    #       name and an attribute value. For each primary key, you must
    #       provide *all* of the key attributes. For example, with a simple
    #       primary key, you only need to provide a value for the partition
    #       key. For a composite primary key, you must provide values for
    #       *both* the partition key and the sort key.
    #
    #     ^
    #   * `PutRequest` - Perform a `PutItem` operation on the specified item.
    #     The item to be put is identified by an `Item` subelement:
    #
    #     * `Item` - A map of attributes and their values. Each entry in this
    #       map consists of an attribute name and an attribute value.
    #       Attribute values must not be null; string and binary type
    #       attributes must have lengths greater than zero; and set type
    #       attributes must not be empty. Requests that contain empty values
    #       are rejected with a `ValidationException` exception.
    #
    #       If you specify any attributes that are part of an index key, then
    #       the data types for those attributes must match those of the schema
    #       in the table's attribute definition.
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @option params [String] :return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are returned.
    #
    # @return [Types::BatchWriteItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchWriteItemOutput#unprocessed_items #unprocessed_items} => Hash&lt;String,Array&lt;Types::WriteRequest&gt;&gt;
    #   * {Types::BatchWriteItemOutput#item_collection_metrics #item_collection_metrics} => Hash&lt;String,Array&lt;Types::ItemCollectionMetrics&gt;&gt;
    #   * {Types::BatchWriteItemOutput#consumed_capacity #consumed_capacity} => Array&lt;Types::ConsumedCapacity&gt;
    #
    #
    # @example Example: To add multiple items to a table
    #
    #   # This example adds three new items to the Music table using a batch of three PutItem requests.
    #
    #   resp = client.batch_write_item({
    #     request_items: {
    #       "Music" => [
    #         {
    #           put_request: {
    #             item: {
    #               "AlbumTitle" => "Somewhat Famous", 
    #               "Artist" => "No One You Know", 
    #               "SongTitle" => "Call Me Today", 
    #             }, 
    #           }, 
    #         }, 
    #         {
    #           put_request: {
    #             item: {
    #               "AlbumTitle" => "Songs About Life", 
    #               "Artist" => "Acme Band", 
    #               "SongTitle" => "Happy Day", 
    #             }, 
    #           }, 
    #         }, 
    #         {
    #           put_request: {
    #             item: {
    #               "AlbumTitle" => "Blue Sky Blues", 
    #               "Artist" => "No One You Know", 
    #               "SongTitle" => "Scared of My Shadow", 
    #             }, 
    #           }, 
    #         }, 
    #       ], 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_write_item({
    #     request_items: { # required
    #       "TableArn" => [
    #         {
    #           put_request: {
    #             item: { # required
    #               "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             },
    #           },
    #           delete_request: {
    #             key: { # required
    #               "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #     return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_items #=> Hash
    #   resp.unprocessed_items["TableArn"] #=> Array
    #   resp.unprocessed_items["TableArn"][0].put_request.item #=> Hash
    #   resp.unprocessed_items["TableArn"][0].put_request.item["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.unprocessed_items["TableArn"][0].delete_request.key #=> Hash
    #   resp.unprocessed_items["TableArn"][0].delete_request.key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.item_collection_metrics #=> Hash
    #   resp.item_collection_metrics["TableArn"] #=> Array
    #   resp.item_collection_metrics["TableArn"][0].item_collection_key #=> Hash
    #   resp.item_collection_metrics["TableArn"][0].item_collection_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.item_collection_metrics["TableArn"][0].size_estimate_range_gb #=> Array
    #   resp.item_collection_metrics["TableArn"][0].size_estimate_range_gb[0] #=> Float
    #   resp.consumed_capacity #=> Array
    #   resp.consumed_capacity[0].table_name #=> String
    #   resp.consumed_capacity[0].capacity_units #=> Float
    #   resp.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].capacity_units #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/BatchWriteItem AWS API Documentation
    #
    # @overload batch_write_item(params = {})
    # @param [Hash] params ({})
    def batch_write_item(params = {}, options = {})
      req = build_request(:batch_write_item, params)
      req.send_request(options)
    end

    # Creates a backup for an existing table.
    #
    # Each time you create an on-demand backup, the entire table data is
    # backed up. There is no limit to the number of on-demand backups that
    # can be taken.
    #
    # When you create an on-demand backup, a time marker of the request is
    # cataloged, and the backup is created asynchronously, by applying all
    # changes until the time of the request to the last full table snapshot.
    # Backup requests are processed instantaneously and become available for
    # restore within minutes.
    #
    # You can call `CreateBackup` at a maximum rate of 50 times per second.
    #
    # All backups in DynamoDB work without consuming any provisioned
    # throughput on the table.
    #
    # If you submit a backup request on 2018-12-14 at 14:25:00, the backup
    # is guaranteed to contain all data committed to the table up to
    # 14:24:00, and data committed after 14:26:00 will not be. The backup
    # might contain data modifications made between 14:24:00 and 14:26:00.
    # On-demand backup does not support causal consistency.
    #
    # Along with data, the following are also included on the backups:
    #
    # * Global secondary indexes (GSIs)
    #
    # * Local secondary indexes (LSIs)
    #
    # * Streams
    #
    # * Provisioned read and write capacity
    #
    # @option params [required, String] :table_name
    #   The name of the table. You can also provide the Amazon Resource Name
    #   (ARN) of the table in this parameter.
    #
    # @option params [required, String] :backup_name
    #   Specified name for the backup.
    #
    # @return [Types::CreateBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackupOutput#backup_details #backup_details} => Types::BackupDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup({
    #     table_name: "TableArn", # required
    #     backup_name: "BackupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_details.backup_arn #=> String
    #   resp.backup_details.backup_name #=> String
    #   resp.backup_details.backup_size_bytes #=> Integer
    #   resp.backup_details.backup_status #=> String, one of "CREATING", "DELETED", "AVAILABLE"
    #   resp.backup_details.backup_type #=> String, one of "USER", "SYSTEM", "AWS_BACKUP"
    #   resp.backup_details.backup_creation_date_time #=> Time
    #   resp.backup_details.backup_expiry_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateBackup AWS API Documentation
    #
    # @overload create_backup(params = {})
    # @param [Hash] params ({})
    def create_backup(params = {}, options = {})
      req = build_request(:create_backup, params)
      req.send_request(options)
    end

    # Creates a global table from an existing table. A global table creates
    # a replication relationship between two or more DynamoDB tables with
    # the same table name in the provided Regions.
    #
    # This documentation is for version 2017.11.29 (Legacy) of global
    # tables, which should be avoided for new global tables. Customers
    # should use [Global Tables version 2019.11.21 (Current)][1] when
    # possible, because it provides greater flexibility, higher efficiency,
    # and consumes less write capacity than 2017.11.29 (Legacy).
    #
    #  To determine which version you're using, see [Determining the global
    # table version you are using][2]. To update existing global tables from
    # version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see
    # [Upgrading global tables][3].
    #
    # If you want to add a new replica table to a global table, each of the
    # following conditions must be true:
    #
    # * The table must have the same primary key as all of the other
    #   replicas.
    #
    # * The table must have the same name as all of the other replicas.
    #
    # * The table must have DynamoDB Streams enabled, with the stream
    #   containing both the new and the old images of the item.
    #
    # * None of the replica tables in the global table can contain any data.
    #
    # If global secondary indexes are specified, then the following
    # conditions must also be met:
    #
    # * The global secondary indexes must have the same name.
    #
    # * The global secondary indexes must have the same hash key and sort
    #   key (if present).
    #
    # If local secondary indexes are specified, then the following
    # conditions must also be met:
    #
    # * The local secondary indexes must have the same name.
    #
    # * The local secondary indexes must have the same hash key and sort key
    #   (if present).
    #
    # Write capacity settings should be set consistently across your replica
    # tables and secondary indexes. DynamoDB strongly recommends enabling
    # auto scaling to manage the write capacity settings for all of your
    # global tables replicas and indexes.
    #
    #  If you prefer to manage write capacity settings manually, you should
    # provision equal replicated write capacity units to your replica
    # tables. You should also provision equal replicated write capacity
    # units to matching secondary indexes across your global table.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
    # [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html
    # [3]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html
    #
    # @option params [required, String] :global_table_name
    #   The global table name.
    #
    # @option params [required, Array<Types::Replica>] :replication_group
    #   The Regions where the global table needs to be created.
    #
    # @return [Types::CreateGlobalTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGlobalTableOutput#global_table_description #global_table_description} => Types::GlobalTableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_global_table({
    #     global_table_name: "TableName", # required
    #     replication_group: [ # required
    #       {
    #         region_name: "RegionName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.global_table_description.replication_group #=> Array
    #   resp.global_table_description.replication_group[0].region_name #=> String
    #   resp.global_table_description.replication_group[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.global_table_description.replication_group[0].replica_status_description #=> String
    #   resp.global_table_description.replication_group[0].replica_status_percent_progress #=> String
    #   resp.global_table_description.replication_group[0].kms_master_key_id #=> String
    #   resp.global_table_description.replication_group[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.global_table_description.replication_group[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.global_table_description.replication_group[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.global_table_description.replication_group[0].global_secondary_indexes #=> Array
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].index_name #=> String
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.global_table_description.replication_group[0].replica_inaccessible_date_time #=> Time
    #   resp.global_table_description.replication_group[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.global_table_description.replication_group[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.global_table_description.global_table_arn #=> String
    #   resp.global_table_description.creation_date_time #=> Time
    #   resp.global_table_description.global_table_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING"
    #   resp.global_table_description.global_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateGlobalTable AWS API Documentation
    #
    # @overload create_global_table(params = {})
    # @param [Hash] params ({})
    def create_global_table(params = {}, options = {})
      req = build_request(:create_global_table, params)
      req.send_request(options)
    end

    # The `CreateTable` operation adds a new table to your account. In an
    # Amazon Web Services account, table names must be unique within each
    # Region. That is, you can have two tables with same name if you create
    # the tables in different Regions.
    #
    # `CreateTable` is an asynchronous operation. Upon receiving a
    # `CreateTable` request, DynamoDB immediately returns a response with a
    # `TableStatus` of `CREATING`. After the table is created, DynamoDB sets
    # the `TableStatus` to `ACTIVE`. You can perform read and write
    # operations only on an `ACTIVE` table.
    #
    # You can optionally define secondary indexes on the new table, as part
    # of the `CreateTable` operation. If you want to create multiple tables
    # with secondary indexes on them, you must create the tables
    # sequentially. Only one table with secondary indexes can be in the
    # `CREATING` state at any given time.
    #
    # You can use the `DescribeTable` action to check the table status.
    #
    # @option params [required, Array<Types::AttributeDefinition>] :attribute_definitions
    #   An array of attributes that describe the key schema for the table and
    #   indexes.
    #
    # @option params [required, String] :table_name
    #   The name of the table to create. You can also provide the Amazon
    #   Resource Name (ARN) of the table in this parameter.
    #
    # @option params [required, Array<Types::KeySchemaElement>] :key_schema
    #   Specifies the attributes that make up the primary key for a table or
    #   an index. The attributes in `KeySchema` must also be defined in the
    #   `AttributeDefinitions` array. For more information, see [Data
    #   Model][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #   Each `KeySchemaElement` in the array is composed of:
    #
    #   * `AttributeName` - The name of this key attribute.
    #
    #   * `KeyType` - The role that the key attribute will assume:
    #
    #     * `HASH` - partition key
    #
    #     * `RANGE` - sort key
    #
    #   <note markdown="1"> The partition key of an item is also known as its *hash attribute*.
    #   The term "hash attribute" derives from the DynamoDB usage of an
    #   internal hash function to evenly distribute data items across
    #   partitions, based on their partition key values.
    #
    #    The sort key of an item is also known as its *range attribute*. The
    #   term "range attribute" derives from the way DynamoDB stores items
    #   with the same partition key physically close together, in sorted order
    #   by the sort key value.
    #
    #    </note>
    #
    #   For a simple primary key (partition key), you must provide exactly one
    #   element with a `KeyType` of `HASH`.
    #
    #   For a composite primary key (partition key and sort key), you must
    #   provide exactly two elements, in this order: The first element must
    #   have a `KeyType` of `HASH`, and the second element must have a
    #   `KeyType` of `RANGE`.
    #
    #   For more information, see [Working with Tables][2] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key
    #
    # @option params [Array<Types::LocalSecondaryIndex>] :local_secondary_indexes
    #   One or more local secondary indexes (the maximum is 5) to be created
    #   on the table. Each index is scoped to a given partition key value.
    #   There is a 10 GB size limit per partition key value; otherwise, the
    #   size of a local secondary index is unconstrained.
    #
    #   Each local secondary index in the array includes the following:
    #
    #   * `IndexName` - The name of the local secondary index. Must be unique
    #     only for this table.
    #
    #
    #
    #   * `KeySchema` - Specifies the key schema for the local secondary
    #     index. The key schema must begin with the same partition key as the
    #     table.
    #
    #   * `Projection` - Specifies attributes that are copied (projected) from
    #     the table into the index. These are in addition to the primary key
    #     attributes and index key attributes, which are automatically
    #     projected. Each attribute specification is composed of:
    #
    #     * `ProjectionType` - One of the following:
    #
    #       * `KEYS_ONLY` - Only the index and primary keys are projected into
    #         the index.
    #
    #       * `INCLUDE` - Only the specified table attributes are projected
    #         into the index. The list of projected attributes is in
    #         `NonKeyAttributes`.
    #
    #       * `ALL` - All of the table attributes are projected into the
    #         index.
    #     * `NonKeyAttributes` - A list of one or more non-key attribute names
    #       that are projected into the secondary index. The total count of
    #       attributes provided in `NonKeyAttributes`, summed across all of
    #       the secondary indexes, must not exceed 100. If you project the
    #       same attribute into two different indexes, this counts as two
    #       distinct attributes when determining the total. This limit only
    #       applies when you specify the ProjectionType of `INCLUDE`. You
    #       still can specify the ProjectionType of `ALL` to project all
    #       attributes from the source table, even if the table has more than
    #       100 attributes.
    #
    # @option params [Array<Types::GlobalSecondaryIndex>] :global_secondary_indexes
    #   One or more global secondary indexes (the maximum is 20) to be created
    #   on the table. Each global secondary index in the array includes the
    #   following:
    #
    #   * `IndexName` - The name of the global secondary index. Must be unique
    #     only for this table.
    #
    #
    #
    #   * `KeySchema` - Specifies the key schema for the global secondary
    #     index.
    #
    #   * `Projection` - Specifies attributes that are copied (projected) from
    #     the table into the index. These are in addition to the primary key
    #     attributes and index key attributes, which are automatically
    #     projected. Each attribute specification is composed of:
    #
    #     * `ProjectionType` - One of the following:
    #
    #       * `KEYS_ONLY` - Only the index and primary keys are projected into
    #         the index.
    #
    #       * `INCLUDE` - Only the specified table attributes are projected
    #         into the index. The list of projected attributes is in
    #         `NonKeyAttributes`.
    #
    #       * `ALL` - All of the table attributes are projected into the
    #         index.
    #     * `NonKeyAttributes` - A list of one or more non-key attribute names
    #       that are projected into the secondary index. The total count of
    #       attributes provided in `NonKeyAttributes`, summed across all of
    #       the secondary indexes, must not exceed 100. If you project the
    #       same attribute into two different indexes, this counts as two
    #       distinct attributes when determining the total. This limit only
    #       applies when you specify the ProjectionType of `INCLUDE`. You
    #       still can specify the ProjectionType of `ALL` to project all
    #       attributes from the source table, even if the table has more than
    #       100 attributes.
    #   * `ProvisionedThroughput` - The provisioned throughput settings for
    #     the global secondary index, consisting of read and write capacity
    #     units.
    #
    # @option params [String] :billing_mode
    #   Controls how you are charged for read and write throughput and how you
    #   manage capacity. This setting can be changed later.
    #
    #   * `PAY_PER_REQUEST` - We recommend using `PAY_PER_REQUEST` for most
    #     DynamoDB workloads. `PAY_PER_REQUEST` sets the billing mode to
    #     [On-demand capacity mode][1].
    #
    #   * `PROVISIONED` - We recommend using `PROVISIONED` for steady
    #     workloads with predictable growth where capacity requirements can be
    #     reliably forecasted. `PROVISIONED` sets the billing mode to
    #     [Provisioned capacity mode][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html
    #
    # @option params [Types::ProvisionedThroughput] :provisioned_throughput
    #   Represents the provisioned throughput settings for a specified table
    #   or index. The settings can be modified using the `UpdateTable`
    #   operation.
    #
    #   If you set BillingMode as `PROVISIONED`, you must specify this
    #   property. If you set BillingMode as `PAY_PER_REQUEST`, you cannot
    #   specify this property.
    #
    #   For current minimum and maximum provisioned throughput values, see
    #   [Service, Account, and Table Quotas][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    #
    # @option params [Types::StreamSpecification] :stream_specification
    #   The settings for DynamoDB Streams on the table. These settings consist
    #   of:
    #
    #   * `StreamEnabled` - Indicates whether DynamoDB Streams is to be
    #     enabled (true) or disabled (false).
    #
    #   * `StreamViewType` - When an item in the table is modified,
    #     `StreamViewType` determines what information is written to the
    #     table's stream. Valid values for `StreamViewType` are:
    #
    #     * `KEYS_ONLY` - Only the key attributes of the modified item are
    #       written to the stream.
    #
    #     * `NEW_IMAGE` - The entire item, as it appears after it was
    #       modified, is written to the stream.
    #
    #     * `OLD_IMAGE` - The entire item, as it appeared before it was
    #       modified, is written to the stream.
    #
    #     * `NEW_AND_OLD_IMAGES` - Both the new and the old item images of the
    #       item are written to the stream.
    #
    # @option params [Types::SSESpecification] :sse_specification
    #   Represents the settings used to enable server-side encryption.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs to label the table. For more information,
    #   see [Tagging for DynamoDB][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
    #
    # @option params [String] :table_class
    #   The table class of the new table. Valid values are `STANDARD` and
    #   `STANDARD_INFREQUENT_ACCESS`.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   Indicates whether deletion protection is to be enabled (true) or
    #   disabled (false) on the table.
    #
    # @option params [Types::WarmThroughput] :warm_throughput
    #   Represents the warm throughput (in read units per second and write
    #   units per second) for creating a table.
    #
    # @option params [String] :resource_policy
    #   An Amazon Web Services resource-based policy document in JSON format
    #   that will be attached to the table.
    #
    #   When you attach a resource-based policy while creating a table, the
    #   policy application is *strongly consistent*.
    #
    #   The maximum size supported for a resource-based policy document is 20
    #   KB. DynamoDB counts whitespaces when calculating the size of a policy
    #   against this limit. For a full list of all considerations that apply
    #   for resource-based policies, see [Resource-based policy
    #   considerations][1].
    #
    #   <note markdown="1"> You need to specify the `CreateTable` and `PutResourcePolicy` IAM
    #   actions for authorizing a user to create a table with a resource-based
    #   policy.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html
    #
    # @option params [Types::OnDemandThroughput] :on_demand_throughput
    #   Sets the maximum number of read and write units for the specified
    #   table in on-demand capacity mode. If you use this parameter, you must
    #   specify `MaxReadRequestUnits`, `MaxWriteRequestUnits`, or both.
    #
    # @return [Types::CreateTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTableOutput#table_description #table_description} => Types::TableDescription
    #
    #
    # @example Example: To create a table
    #
    #   # This example creates a table named Music.
    #
    #   resp = client.create_table({
    #     attribute_definitions: [
    #       {
    #         attribute_name: "Artist", 
    #         attribute_type: "S", 
    #       }, 
    #       {
    #         attribute_name: "SongTitle", 
    #         attribute_type: "S", 
    #       }, 
    #     ], 
    #     key_schema: [
    #       {
    #         attribute_name: "Artist", 
    #         key_type: "HASH", 
    #       }, 
    #       {
    #         attribute_name: "SongTitle", 
    #         key_type: "RANGE", 
    #       }, 
    #     ], 
    #     provisioned_throughput: {
    #       read_capacity_units: 5, 
    #       write_capacity_units: 5, 
    #     }, 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     table_description: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "Artist", 
    #           attribute_type: "S", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           attribute_type: "S", 
    #         }, 
    #       ], 
    #       creation_date_time: Time.parse("1421866952.062"), 
    #       item_count: 0, 
    #       key_schema: [
    #         {
    #           attribute_name: "Artist", 
    #           key_type: "HASH", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           key_type: "RANGE", 
    #         }, 
    #       ], 
    #       provisioned_throughput: {
    #         read_capacity_units: 5, 
    #         write_capacity_units: 5, 
    #       }, 
    #       table_name: "Music", 
    #       table_size_bytes: 0, 
    #       table_status: "CREATING", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_table({
    #     attribute_definitions: [ # required
    #       {
    #         attribute_name: "KeySchemaAttributeName", # required
    #         attribute_type: "S", # required, accepts S, N, B
    #       },
    #     ],
    #     table_name: "TableArn", # required
    #     key_schema: [ # required
    #       {
    #         attribute_name: "KeySchemaAttributeName", # required
    #         key_type: "HASH", # required, accepts HASH, RANGE
    #       },
    #     ],
    #     local_secondary_indexes: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH", # required, accepts HASH, RANGE
    #           },
    #         ],
    #         projection: { # required
    #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #           non_key_attributes: ["NonKeyAttributeName"],
    #         },
    #       },
    #     ],
    #     global_secondary_indexes: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH", # required, accepts HASH, RANGE
    #           },
    #         ],
    #         projection: { # required
    #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #           non_key_attributes: ["NonKeyAttributeName"],
    #         },
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         on_demand_throughput: {
    #           max_read_request_units: 1,
    #           max_write_request_units: 1,
    #         },
    #         warm_throughput: {
    #           read_units_per_second: 1,
    #           write_units_per_second: 1,
    #         },
    #       },
    #     ],
    #     billing_mode: "PROVISIONED", # accepts PROVISIONED, PAY_PER_REQUEST
    #     provisioned_throughput: {
    #       read_capacity_units: 1, # required
    #       write_capacity_units: 1, # required
    #     },
    #     stream_specification: {
    #       stream_enabled: false, # required
    #       stream_view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY
    #     },
    #     sse_specification: {
    #       enabled: false,
    #       sse_type: "AES256", # accepts AES256, KMS
    #       kms_master_key_id: "KMSMasterKeyId",
    #     },
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       },
    #     ],
    #     table_class: "STANDARD", # accepts STANDARD, STANDARD_INFREQUENT_ACCESS
    #     deletion_protection_enabled: false,
    #     warm_throughput: {
    #       read_units_per_second: 1,
    #       write_units_per_second: 1,
    #     },
    #     resource_policy: "ResourcePolicy",
    #     on_demand_throughput: {
    #       max_read_request_units: 1,
    #       max_write_request_units: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.table_description.attribute_definitions #=> Array
    #   resp.table_description.attribute_definitions[0].attribute_name #=> String
    #   resp.table_description.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
    #   resp.table_description.table_name #=> String
    #   resp.table_description.key_schema #=> Array
    #   resp.table_description.key_schema[0].attribute_name #=> String
    #   resp.table_description.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.creation_date_time #=> Time
    #   resp.table_description.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table_description.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table_description.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table_description.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table_description.table_size_bytes #=> Integer
    #   resp.table_description.item_count #=> Integer
    #   resp.table_description.table_arn #=> String
    #   resp.table_description.table_id #=> String
    #   resp.table_description.billing_mode_summary.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.table_description.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.table_description.local_secondary_indexes #=> Array
    #   resp.table_description.local_secondary_indexes[0].index_name #=> String
    #   resp.table_description.local_secondary_indexes[0].key_schema #=> Array
    #   resp.table_description.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table_description.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table_description.local_secondary_indexes[0].item_count #=> Integer
    #   resp.table_description.local_secondary_indexes[0].index_arn #=> String
    #   resp.table_description.global_secondary_indexes #=> Array
    #   resp.table_description.global_secondary_indexes[0].index_name #=> String
    #   resp.table_description.global_secondary_indexes[0].key_schema #=> Array
    #   resp.table_description.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table_description.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table_description.global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table_description.global_secondary_indexes[0].item_count #=> Integer
    #   resp.table_description.global_secondary_indexes[0].index_arn #=> String
    #   resp.table_description.global_secondary_indexes[0].on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.stream_specification.stream_enabled #=> Boolean
    #   resp.table_description.stream_specification.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
    #   resp.table_description.latest_stream_label #=> String
    #   resp.table_description.latest_stream_arn #=> String
    #   resp.table_description.global_table_version #=> String
    #   resp.table_description.replicas #=> Array
    #   resp.table_description.replicas[0].region_name #=> String
    #   resp.table_description.replicas[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.replicas[0].replica_status_description #=> String
    #   resp.table_description.replicas[0].replica_status_percent_progress #=> String
    #   resp.table_description.replicas[0].kms_master_key_id #=> String
    #   resp.table_description.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table_description.replicas[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.replicas[0].global_secondary_indexes #=> Array
    #   resp.table_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.table_description.replicas[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.table_description.replicas[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table_description.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.table_description.global_table_witnesses #=> Array
    #   resp.table_description.global_table_witnesses[0].region_name #=> String
    #   resp.table_description.global_table_witnesses[0].witness_status #=> String, one of "CREATING", "DELETING", "ACTIVE"
    #   resp.table_description.restore_summary.source_backup_arn #=> String
    #   resp.table_description.restore_summary.source_table_arn #=> String
    #   resp.table_description.restore_summary.restore_date_time #=> Time
    #   resp.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.table_description.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table_description.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table_description.sse_description.kms_master_key_arn #=> String
    #   resp.table_description.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.table_description.archival_summary.archival_date_time #=> Time
    #   resp.table_description.archival_summary.archival_reason #=> String
    #   resp.table_description.archival_summary.archival_backup_arn #=> String
    #   resp.table_description.table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table_description.table_class_summary.last_update_date_time #=> Time
    #   resp.table_description.deletion_protection_enabled #=> Boolean
    #   resp.table_description.on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table_description.on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table_description.warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.multi_region_consistency #=> String, one of "EVENTUAL", "STRONG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/CreateTable AWS API Documentation
    #
    # @overload create_table(params = {})
    # @param [Hash] params ({})
    def create_table(params = {}, options = {})
      req = build_request(:create_table, params)
      req.send_request(options)
    end

    # Deletes an existing backup of a table.
    #
    # You can call `DeleteBackup` at a maximum rate of 10 times per second.
    #
    # @option params [required, String] :backup_arn
    #   The ARN associated with the backup.
    #
    # @return [Types::DeleteBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackupOutput#backup_description #backup_description} => Types::BackupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup({
    #     backup_arn: "BackupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_description.backup_details.backup_arn #=> String
    #   resp.backup_description.backup_details.backup_name #=> String
    #   resp.backup_description.backup_details.backup_size_bytes #=> Integer
    #   resp.backup_description.backup_details.backup_status #=> String, one of "CREATING", "DELETED", "AVAILABLE"
    #   resp.backup_description.backup_details.backup_type #=> String, one of "USER", "SYSTEM", "AWS_BACKUP"
    #   resp.backup_description.backup_details.backup_creation_date_time #=> Time
    #   resp.backup_description.backup_details.backup_expiry_date_time #=> Time
    #   resp.backup_description.source_table_details.table_name #=> String
    #   resp.backup_description.source_table_details.table_id #=> String
    #   resp.backup_description.source_table_details.table_arn #=> String
    #   resp.backup_description.source_table_details.table_size_bytes #=> Integer
    #   resp.backup_description.source_table_details.key_schema #=> Array
    #   resp.backup_description.source_table_details.key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_details.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_details.table_creation_date_time #=> Time
    #   resp.backup_description.source_table_details.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.backup_description.source_table_details.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.backup_description.source_table_details.on_demand_throughput.max_read_request_units #=> Integer
    #   resp.backup_description.source_table_details.on_demand_throughput.max_write_request_units #=> Integer
    #   resp.backup_description.source_table_details.item_count #=> Integer
    #   resp.backup_description.source_table_details.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].index_name #=> String
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].index_name #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].on_demand_throughput.max_read_request_units #=> Integer
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].on_demand_throughput.max_write_request_units #=> Integer
    #   resp.backup_description.source_table_feature_details.stream_description.stream_enabled #=> Boolean
    #   resp.backup_description.source_table_feature_details.stream_description.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
    #   resp.backup_description.source_table_feature_details.time_to_live_description.time_to_live_status #=> String, one of "ENABLING", "DISABLING", "ENABLED", "DISABLED"
    #   resp.backup_description.source_table_feature_details.time_to_live_description.attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.backup_description.source_table_feature_details.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.backup_description.source_table_feature_details.sse_description.kms_master_key_arn #=> String
    #   resp.backup_description.source_table_feature_details.sse_description.inaccessible_encryption_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteBackup AWS API Documentation
    #
    # @overload delete_backup(params = {})
    # @param [Hash] params ({})
    def delete_backup(params = {}, options = {})
      req = build_request(:delete_backup, params)
      req.send_request(options)
    end

    # Deletes a single item in a table by primary key. You can perform a
    # conditional delete operation that deletes the item if it exists, or if
    # it has an expected attribute value.
    #
    # In addition to deleting an item, you can also return the item's
    # attribute values in the same operation, using the `ReturnValues`
    # parameter.
    #
    # Unless you specify conditions, the `DeleteItem` is an idempotent
    # operation; running it multiple times on the same item or attribute
    # does *not* result in an error response.
    #
    # Conditional deletes are useful for deleting items only if specific
    # conditions are met. If those conditions are met, DynamoDB performs the
    # delete. Otherwise, the item is not deleted.
    #
    # @option params [required, String] :table_name
    #   The name of the table from which to delete the item. You can also
    #   provide the Amazon Resource Name (ARN) of the table in this parameter.
    #
    # @option params [required, Hash<String,Types::AttributeValue>] :key
    #   A map of attribute names to `AttributeValue` objects, representing the
    #   primary key of the item to delete.
    #
    #   For the primary key, you must provide all of the key attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    #
    # @option params [Hash<String,Types::ExpectedAttributeValue>] :expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    #
    # @option params [String] :conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #
    # @option params [String] :return_values
    #   Use `ReturnValues` if you want to get the item attributes as they
    #   appeared before they were deleted. For `DeleteItem`, the valid values
    #   are:
    #
    #   * `NONE` - If `ReturnValues` is not specified, or if its value is
    #     `NONE`, then nothing is returned. (This setting is the default for
    #     `ReturnValues`.)
    #
    #   * `ALL_OLD` - The content of the old item is returned.
    #
    #   There is no additional cost associated with requesting a return value
    #   aside from the small network and processing overhead of receiving a
    #   larger response. No read capacity units are consumed.
    #
    #   <note markdown="1"> The `ReturnValues` parameter is used by several DynamoDB operations;
    #   however, `DeleteItem` does not recognize any values other than `NONE`
    #   or `ALL_OLD`.
    #
    #    </note>
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @option params [String] :return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are returned.
    #
    # @option params [String] :condition_expression
    #   A condition that must be satisfied in order for a conditional
    #   `DeleteItem` to succeed.
    #
    #   An expression can contain any of the following:
    #
    #   * Functions: `attribute_exists | attribute_not_exists | attribute_type
    #     | contains | begins_with | size`
    #
    #     These function names are case-sensitive.
    #
    #   * Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN `
    #
    #   * Logical operators: `AND | OR | NOT`
    #
    #   For more information about condition expressions, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using `ExpressionAttributeNames`:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB reserved
    #     word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`:
    #
    #   * `{"#P":"Percentile"}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
    #   values*, which are placeholders for the actual value at runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check whether
    #   the value of the *ProductStatus* attribute was one of the following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #   ":disc":{"S":"Discontinued"} }`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [String] :return_values_on_condition_check_failure
    #   An optional parameter that returns the item attributes for a
    #   `DeleteItem` operation that failed a condition check.
    #
    #   There is no additional cost associated with requesting a return value
    #   aside from the small network and processing overhead of receiving a
    #   larger response. No read capacity units are consumed.
    #
    # @return [Types::DeleteItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteItemOutput#attributes #attributes} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::DeleteItemOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #   * {Types::DeleteItemOutput#item_collection_metrics #item_collection_metrics} => Types::ItemCollectionMetrics
    #
    #
    # @example Example: To delete an item
    #
    #   # This example deletes an item from the Music table.
    #
    #   resp = client.delete_item({
    #     key: {
    #       "Artist" => "No One You Know", 
    #       "SongTitle" => "Scared of My Shadow", 
    #     }, 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     consumed_capacity: {
    #       capacity_units: 1, 
    #       table_name: "Music", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_item({
    #     table_name: "TableArn", # required
    #     key: { # required
    #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     expected: {
    #       "AttributeName" => {
    #         value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         exists: false,
    #         comparison_operator: "EQ", # accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #     },
    #     conditional_operator: "AND", # accepts AND, OR
    #     return_values: "NONE", # accepts NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #     return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
    #     condition_expression: "ConditionExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName",
    #     },
    #     expression_attribute_values: {
    #       "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     return_values_on_condition_check_failure: "ALL_OLD", # accepts ALL_OLD, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Hash
    #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.consumed_capacity.table_name #=> String
    #   resp.consumed_capacity.capacity_units #=> Float
    #   resp.consumed_capacity.read_capacity_units #=> Float
    #   resp.consumed_capacity.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes #=> Hash
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes #=> Hash
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.item_collection_metrics.item_collection_key #=> Hash
    #   resp.item_collection_metrics.item_collection_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.item_collection_metrics.size_estimate_range_gb #=> Array
    #   resp.item_collection_metrics.size_estimate_range_gb[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteItem AWS API Documentation
    #
    # @overload delete_item(params = {})
    # @param [Hash] params ({})
    def delete_item(params = {}, options = {})
      req = build_request(:delete_item, params)
      req.send_request(options)
    end

    # Deletes the resource-based policy attached to the resource, which can
    # be a table or stream.
    #
    # `DeleteResourcePolicy` is an idempotent operation; running it multiple
    # times on the same resource *doesn't* result in an error response,
    # unless you specify an `ExpectedRevisionId`, which will then return a
    # `PolicyNotFoundException`.
    #
    # To make sure that you don't inadvertently lock yourself out of your
    # own resources, the root principal in your Amazon Web Services account
    # can perform `DeleteResourcePolicy` requests, even if your
    # resource-based policy explicitly denies the root principal's access.
    #
    # <note markdown="1"> `DeleteResourcePolicy` is an asynchronous operation. If you issue a
    # `GetResourcePolicy` request immediately after running the
    # `DeleteResourcePolicy` request, DynamoDB might still return the
    # deleted policy. This is because the policy for your resource might not
    # have been deleted yet. Wait for a few seconds, and then try the
    # `GetResourcePolicy` request again.
    #
    #  </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the DynamoDB resource from which the
    #   policy will be removed. The resources you can specify include tables
    #   and streams. If you remove the policy of a table, it will also remove
    #   the permissions for the table's indexes defined in that policy
    #   document. This is because index permissions are defined in the
    #   table's policy.
    #
    # @option params [String] :expected_revision_id
    #   A string value that you can use to conditionally delete your policy.
    #   When you provide an expected revision ID, if the revision ID of the
    #   existing policy on the resource doesn't match or if there's no
    #   policy attached to the resource, the request will fail and return a
    #   `PolicyNotFoundException`.
    #
    # @return [Types::DeleteResourcePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourcePolicyOutput#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "ResourceArnString", # required
    #     expected_revision_id: "PolicyRevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # The `DeleteTable` operation deletes a table and all of its items.
    # After a `DeleteTable` request, the specified table is in the
    # `DELETING` state until DynamoDB completes the deletion. If the table
    # is in the `ACTIVE` state, you can delete it. If a table is in
    # `CREATING` or `UPDATING` states, then DynamoDB returns a
    # `ResourceInUseException`. If the specified table does not exist,
    # DynamoDB returns a `ResourceNotFoundException`. If table is already in
    # the `DELETING` state, no error is returned.
    #
    # <note markdown="1"> DynamoDB might continue to accept data read and write operations, such
    # as `GetItem` and `PutItem`, on a table in the `DELETING` state until
    # the table deletion is complete. For the full list of table states, see
    # [TableStatus][1].
    #
    #  </note>
    #
    # When you delete a table, any indexes on that table are also deleted.
    #
    # If you have DynamoDB Streams enabled on the table, then the
    # corresponding stream on that table goes into the `DISABLED` state, and
    # the stream is automatically deleted after 24 hours.
    #
    # Use the `DescribeTable` action to check the status of the table.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TableDescription.html#DDB-Type-TableDescription-TableStatus
    #
    # @option params [required, String] :table_name
    #   The name of the table to delete. You can also provide the Amazon
    #   Resource Name (ARN) of the table in this parameter.
    #
    # @return [Types::DeleteTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTableOutput#table_description #table_description} => Types::TableDescription
    #
    #
    # @example Example: To delete a table
    #
    #   # This example deletes the Music table.
    #
    #   resp = client.delete_table({
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     table_description: {
    #       item_count: 0, 
    #       provisioned_throughput: {
    #         number_of_decreases_today: 1, 
    #         read_capacity_units: 5, 
    #         write_capacity_units: 5, 
    #       }, 
    #       table_name: "Music", 
    #       table_size_bytes: 0, 
    #       table_status: "DELETING", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_table({
    #     table_name: "TableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_description.attribute_definitions #=> Array
    #   resp.table_description.attribute_definitions[0].attribute_name #=> String
    #   resp.table_description.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
    #   resp.table_description.table_name #=> String
    #   resp.table_description.key_schema #=> Array
    #   resp.table_description.key_schema[0].attribute_name #=> String
    #   resp.table_description.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.creation_date_time #=> Time
    #   resp.table_description.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table_description.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table_description.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table_description.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table_description.table_size_bytes #=> Integer
    #   resp.table_description.item_count #=> Integer
    #   resp.table_description.table_arn #=> String
    #   resp.table_description.table_id #=> String
    #   resp.table_description.billing_mode_summary.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.table_description.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.table_description.local_secondary_indexes #=> Array
    #   resp.table_description.local_secondary_indexes[0].index_name #=> String
    #   resp.table_description.local_secondary_indexes[0].key_schema #=> Array
    #   resp.table_description.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table_description.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table_description.local_secondary_indexes[0].item_count #=> Integer
    #   resp.table_description.local_secondary_indexes[0].index_arn #=> String
    #   resp.table_description.global_secondary_indexes #=> Array
    #   resp.table_description.global_secondary_indexes[0].index_name #=> String
    #   resp.table_description.global_secondary_indexes[0].key_schema #=> Array
    #   resp.table_description.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table_description.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table_description.global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table_description.global_secondary_indexes[0].item_count #=> Integer
    #   resp.table_description.global_secondary_indexes[0].index_arn #=> String
    #   resp.table_description.global_secondary_indexes[0].on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.stream_specification.stream_enabled #=> Boolean
    #   resp.table_description.stream_specification.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
    #   resp.table_description.latest_stream_label #=> String
    #   resp.table_description.latest_stream_arn #=> String
    #   resp.table_description.global_table_version #=> String
    #   resp.table_description.replicas #=> Array
    #   resp.table_description.replicas[0].region_name #=> String
    #   resp.table_description.replicas[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.replicas[0].replica_status_description #=> String
    #   resp.table_description.replicas[0].replica_status_percent_progress #=> String
    #   resp.table_description.replicas[0].kms_master_key_id #=> String
    #   resp.table_description.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table_description.replicas[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.replicas[0].global_secondary_indexes #=> Array
    #   resp.table_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.table_description.replicas[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.table_description.replicas[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table_description.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.table_description.global_table_witnesses #=> Array
    #   resp.table_description.global_table_witnesses[0].region_name #=> String
    #   resp.table_description.global_table_witnesses[0].witness_status #=> String, one of "CREATING", "DELETING", "ACTIVE"
    #   resp.table_description.restore_summary.source_backup_arn #=> String
    #   resp.table_description.restore_summary.source_table_arn #=> String
    #   resp.table_description.restore_summary.restore_date_time #=> Time
    #   resp.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.table_description.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table_description.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table_description.sse_description.kms_master_key_arn #=> String
    #   resp.table_description.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.table_description.archival_summary.archival_date_time #=> Time
    #   resp.table_description.archival_summary.archival_reason #=> String
    #   resp.table_description.archival_summary.archival_backup_arn #=> String
    #   resp.table_description.table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table_description.table_class_summary.last_update_date_time #=> Time
    #   resp.table_description.deletion_protection_enabled #=> Boolean
    #   resp.table_description.on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table_description.on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table_description.warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.multi_region_consistency #=> String, one of "EVENTUAL", "STRONG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DeleteTable AWS API Documentation
    #
    # @overload delete_table(params = {})
    # @param [Hash] params ({})
    def delete_table(params = {}, options = {})
      req = build_request(:delete_table, params)
      req.send_request(options)
    end

    # Describes an existing backup of a table.
    #
    # You can call `DescribeBackup` at a maximum rate of 10 times per
    # second.
    #
    # @option params [required, String] :backup_arn
    #   The Amazon Resource Name (ARN) associated with the backup.
    #
    # @return [Types::DescribeBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBackupOutput#backup_description #backup_description} => Types::BackupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backup({
    #     backup_arn: "BackupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_description.backup_details.backup_arn #=> String
    #   resp.backup_description.backup_details.backup_name #=> String
    #   resp.backup_description.backup_details.backup_size_bytes #=> Integer
    #   resp.backup_description.backup_details.backup_status #=> String, one of "CREATING", "DELETED", "AVAILABLE"
    #   resp.backup_description.backup_details.backup_type #=> String, one of "USER", "SYSTEM", "AWS_BACKUP"
    #   resp.backup_description.backup_details.backup_creation_date_time #=> Time
    #   resp.backup_description.backup_details.backup_expiry_date_time #=> Time
    #   resp.backup_description.source_table_details.table_name #=> String
    #   resp.backup_description.source_table_details.table_id #=> String
    #   resp.backup_description.source_table_details.table_arn #=> String
    #   resp.backup_description.source_table_details.table_size_bytes #=> Integer
    #   resp.backup_description.source_table_details.key_schema #=> Array
    #   resp.backup_description.source_table_details.key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_details.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_details.table_creation_date_time #=> Time
    #   resp.backup_description.source_table_details.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.backup_description.source_table_details.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.backup_description.source_table_details.on_demand_throughput.max_read_request_units #=> Integer
    #   resp.backup_description.source_table_details.on_demand_throughput.max_write_request_units #=> Integer
    #   resp.backup_description.source_table_details.item_count #=> Integer
    #   resp.backup_description.source_table_details.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].index_name #=> String
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.backup_description.source_table_feature_details.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].index_name #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].on_demand_throughput.max_read_request_units #=> Integer
    #   resp.backup_description.source_table_feature_details.global_secondary_indexes[0].on_demand_throughput.max_write_request_units #=> Integer
    #   resp.backup_description.source_table_feature_details.stream_description.stream_enabled #=> Boolean
    #   resp.backup_description.source_table_feature_details.stream_description.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
    #   resp.backup_description.source_table_feature_details.time_to_live_description.time_to_live_status #=> String, one of "ENABLING", "DISABLING", "ENABLED", "DISABLED"
    #   resp.backup_description.source_table_feature_details.time_to_live_description.attribute_name #=> String
    #   resp.backup_description.source_table_feature_details.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.backup_description.source_table_feature_details.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.backup_description.source_table_feature_details.sse_description.kms_master_key_arn #=> String
    #   resp.backup_description.source_table_feature_details.sse_description.inaccessible_encryption_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeBackup AWS API Documentation
    #
    # @overload describe_backup(params = {})
    # @param [Hash] params ({})
    def describe_backup(params = {}, options = {})
      req = build_request(:describe_backup, params)
      req.send_request(options)
    end

    # Checks the status of continuous backups and point in time recovery on
    # the specified table. Continuous backups are `ENABLED` on all tables at
    # table creation. If point in time recovery is enabled,
    # `PointInTimeRecoveryStatus` will be set to ENABLED.
    #
    # After continuous backups and point in time recovery are enabled, you
    # can restore to any point in time within `EarliestRestorableDateTime`
    # and `LatestRestorableDateTime`.
    #
    # `LatestRestorableDateTime` is typically 5 minutes before the current
    # time. You can restore your table to any point in time in the last 35
    # days. You can set the recovery period to any value between 1 and 35
    # days.
    #
    # You can call `DescribeContinuousBackups` at a maximum rate of 10 times
    # per second.
    #
    # @option params [required, String] :table_name
    #   Name of the table for which the customer wants to check the continuous
    #   backups and point in time recovery settings.
    #
    #   You can also provide the Amazon Resource Name (ARN) of the table in
    #   this parameter.
    #
    # @return [Types::DescribeContinuousBackupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContinuousBackupsOutput#continuous_backups_description #continuous_backups_description} => Types::ContinuousBackupsDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_continuous_backups({
    #     table_name: "TableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.continuous_backups_description.continuous_backups_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.continuous_backups_description.point_in_time_recovery_description.point_in_time_recovery_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.continuous_backups_description.point_in_time_recovery_description.recovery_period_in_days #=> Integer
    #   resp.continuous_backups_description.point_in_time_recovery_description.earliest_restorable_date_time #=> Time
    #   resp.continuous_backups_description.point_in_time_recovery_description.latest_restorable_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeContinuousBackups AWS API Documentation
    #
    # @overload describe_continuous_backups(params = {})
    # @param [Hash] params ({})
    def describe_continuous_backups(params = {}, options = {})
      req = build_request(:describe_continuous_backups, params)
      req.send_request(options)
    end

    # Returns information about contributor insights for a given table or
    # global secondary index.
    #
    # @option params [required, String] :table_name
    #   The name of the table to describe. You can also provide the Amazon
    #   Resource Name (ARN) of the table in this parameter.
    #
    # @option params [String] :index_name
    #   The name of the global secondary index to describe, if applicable.
    #
    # @return [Types::DescribeContributorInsightsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContributorInsightsOutput#table_name #table_name} => String
    #   * {Types::DescribeContributorInsightsOutput#index_name #index_name} => String
    #   * {Types::DescribeContributorInsightsOutput#contributor_insights_rule_list #contributor_insights_rule_list} => Array&lt;String&gt;
    #   * {Types::DescribeContributorInsightsOutput#contributor_insights_status #contributor_insights_status} => String
    #   * {Types::DescribeContributorInsightsOutput#last_update_date_time #last_update_date_time} => Time
    #   * {Types::DescribeContributorInsightsOutput#failure_exception #failure_exception} => Types::FailureException
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contributor_insights({
    #     table_name: "TableArn", # required
    #     index_name: "IndexName",
    #   })
    #
    # @example Response structure
    #
    #   resp.table_name #=> String
    #   resp.index_name #=> String
    #   resp.contributor_insights_rule_list #=> Array
    #   resp.contributor_insights_rule_list[0] #=> String
    #   resp.contributor_insights_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"
    #   resp.last_update_date_time #=> Time
    #   resp.failure_exception.exception_name #=> String
    #   resp.failure_exception.exception_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeContributorInsights AWS API Documentation
    #
    # @overload describe_contributor_insights(params = {})
    # @param [Hash] params ({})
    def describe_contributor_insights(params = {}, options = {})
      req = build_request(:describe_contributor_insights, params)
      req.send_request(options)
    end

    # Returns the regional endpoint information. For more information on
    # policy permissions, please see [Internetwork traffic privacy][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/inter-network-traffic-privacy.html#inter-network-traffic-DescribeEndpoints
    #
    # @return [Types::DescribeEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointsResponse#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].address #=> String
    #   resp.endpoints[0].cache_period_in_minutes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeEndpoints AWS API Documentation
    #
    # @overload describe_endpoints(params = {})
    # @param [Hash] params ({})
    def describe_endpoints(params = {}, options = {})
      req = build_request(:describe_endpoints, params)
      req.send_request(options)
    end

    # Describes an existing table export.
    #
    # @option params [required, String] :export_arn
    #   The Amazon Resource Name (ARN) associated with the export.
    #
    # @return [Types::DescribeExportOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExportOutput#export_description #export_description} => Types::ExportDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export({
    #     export_arn: "ExportArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_description.export_arn #=> String
    #   resp.export_description.export_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.export_description.start_time #=> Time
    #   resp.export_description.end_time #=> Time
    #   resp.export_description.export_manifest #=> String
    #   resp.export_description.table_arn #=> String
    #   resp.export_description.table_id #=> String
    #   resp.export_description.export_time #=> Time
    #   resp.export_description.client_token #=> String
    #   resp.export_description.s3_bucket #=> String
    #   resp.export_description.s3_bucket_owner #=> String
    #   resp.export_description.s3_prefix #=> String
    #   resp.export_description.s3_sse_algorithm #=> String, one of "AES256", "KMS"
    #   resp.export_description.s3_sse_kms_key_id #=> String
    #   resp.export_description.failure_code #=> String
    #   resp.export_description.failure_message #=> String
    #   resp.export_description.export_format #=> String, one of "DYNAMODB_JSON", "ION"
    #   resp.export_description.billed_size_bytes #=> Integer
    #   resp.export_description.item_count #=> Integer
    #   resp.export_description.export_type #=> String, one of "FULL_EXPORT", "INCREMENTAL_EXPORT"
    #   resp.export_description.incremental_export_specification.export_from_time #=> Time
    #   resp.export_description.incremental_export_specification.export_to_time #=> Time
    #   resp.export_description.incremental_export_specification.export_view_type #=> String, one of "NEW_IMAGE", "NEW_AND_OLD_IMAGES"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeExport AWS API Documentation
    #
    # @overload describe_export(params = {})
    # @param [Hash] params ({})
    def describe_export(params = {}, options = {})
      req = build_request(:describe_export, params)
      req.send_request(options)
    end

    # Returns information about the specified global table.
    #
    # This documentation is for version 2017.11.29 (Legacy) of global
    # tables, which should be avoided for new global tables. Customers
    # should use [Global Tables version 2019.11.21 (Current)][1] when
    # possible, because it provides greater flexibility, higher efficiency,
    # and consumes less write capacity than 2017.11.29 (Legacy).
    #
    #  To determine which version you're using, see [Determining the global
    # table version you are using][2]. To update existing global tables from
    # version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see
    # [Upgrading global tables][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
    # [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html
    # [3]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html
    #
    # @option params [required, String] :global_table_name
    #   The name of the global table.
    #
    # @return [Types::DescribeGlobalTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGlobalTableOutput#global_table_description #global_table_description} => Types::GlobalTableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_table({
    #     global_table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.global_table_description.replication_group #=> Array
    #   resp.global_table_description.replication_group[0].region_name #=> String
    #   resp.global_table_description.replication_group[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.global_table_description.replication_group[0].replica_status_description #=> String
    #   resp.global_table_description.replication_group[0].replica_status_percent_progress #=> String
    #   resp.global_table_description.replication_group[0].kms_master_key_id #=> String
    #   resp.global_table_description.replication_group[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.global_table_description.replication_group[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.global_table_description.replication_group[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.global_table_description.replication_group[0].global_secondary_indexes #=> Array
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].index_name #=> String
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.global_table_description.replication_group[0].replica_inaccessible_date_time #=> Time
    #   resp.global_table_description.replication_group[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.global_table_description.replication_group[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.global_table_description.global_table_arn #=> String
    #   resp.global_table_description.creation_date_time #=> Time
    #   resp.global_table_description.global_table_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING"
    #   resp.global_table_description.global_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeGlobalTable AWS API Documentation
    #
    # @overload describe_global_table(params = {})
    # @param [Hash] params ({})
    def describe_global_table(params = {}, options = {})
      req = build_request(:describe_global_table, params)
      req.send_request(options)
    end

    # Describes Region-specific settings for a global table.
    #
    # This documentation is for version 2017.11.29 (Legacy) of global
    # tables, which should be avoided for new global tables. Customers
    # should use [Global Tables version 2019.11.21 (Current)][1] when
    # possible, because it provides greater flexibility, higher efficiency,
    # and consumes less write capacity than 2017.11.29 (Legacy).
    #
    #  To determine which version you're using, see [Determining the global
    # table version you are using][2]. To update existing global tables from
    # version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see
    # [Upgrading global tables][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
    # [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html
    # [3]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html
    #
    # @option params [required, String] :global_table_name
    #   The name of the global table to describe.
    #
    # @return [Types::DescribeGlobalTableSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGlobalTableSettingsOutput#global_table_name #global_table_name} => String
    #   * {Types::DescribeGlobalTableSettingsOutput#replica_settings #replica_settings} => Array&lt;Types::ReplicaSettingsDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_table_settings({
    #     global_table_name: "TableName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.global_table_name #=> String
    #   resp.replica_settings #=> Array
    #   resp.replica_settings[0].region_name #=> String
    #   resp.replica_settings[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.replica_settings[0].replica_billing_mode_summary.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.replica_settings[0].replica_billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.replica_settings[0].replica_provisioned_read_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_provisioned_write_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_global_secondary_index_settings #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].index_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.replica_settings[0].replica_table_class_summary.last_update_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeGlobalTableSettings AWS API Documentation
    #
    # @overload describe_global_table_settings(params = {})
    # @param [Hash] params ({})
    def describe_global_table_settings(params = {}, options = {})
      req = build_request(:describe_global_table_settings, params)
      req.send_request(options)
    end

    # Represents the properties of the import.
    #
    # @option params [required, String] :import_arn
    #   The Amazon Resource Name (ARN) associated with the table you're
    #   importing to.
    #
    # @return [Types::DescribeImportOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImportOutput#import_table_description #import_table_description} => Types::ImportTableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_import({
    #     import_arn: "ImportArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_table_description.import_arn #=> String
    #   resp.import_table_description.import_status #=> String, one of "IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"
    #   resp.import_table_description.table_arn #=> String
    #   resp.import_table_description.table_id #=> String
    #   resp.import_table_description.client_token #=> String
    #   resp.import_table_description.s3_bucket_source.s3_bucket_owner #=> String
    #   resp.import_table_description.s3_bucket_source.s3_bucket #=> String
    #   resp.import_table_description.s3_bucket_source.s3_key_prefix #=> String
    #   resp.import_table_description.error_count #=> Integer
    #   resp.import_table_description.cloud_watch_log_group_arn #=> String
    #   resp.import_table_description.input_format #=> String, one of "DYNAMODB_JSON", "ION", "CSV"
    #   resp.import_table_description.input_format_options.csv.delimiter #=> String
    #   resp.import_table_description.input_format_options.csv.header_list #=> Array
    #   resp.import_table_description.input_format_options.csv.header_list[0] #=> String
    #   resp.import_table_description.input_compression_type #=> String, one of "GZIP", "ZSTD", "NONE"
    #   resp.import_table_description.table_creation_parameters.table_name #=> String
    #   resp.import_table_description.table_creation_parameters.attribute_definitions #=> Array
    #   resp.import_table_description.table_creation_parameters.attribute_definitions[0].attribute_name #=> String
    #   resp.import_table_description.table_creation_parameters.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
    #   resp.import_table_description.table_creation_parameters.key_schema #=> Array
    #   resp.import_table_description.table_creation_parameters.key_schema[0].attribute_name #=> String
    #   resp.import_table_description.table_creation_parameters.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.import_table_description.table_creation_parameters.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.import_table_description.table_creation_parameters.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.on_demand_throughput.max_read_request_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.on_demand_throughput.max_write_request_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.sse_specification.enabled #=> Boolean
    #   resp.import_table_description.table_creation_parameters.sse_specification.sse_type #=> String, one of "AES256", "KMS"
    #   resp.import_table_description.table_creation_parameters.sse_specification.kms_master_key_id #=> String
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes #=> Array
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].index_name #=> String
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].key_schema #=> Array
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].on_demand_throughput.max_read_request_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].on_demand_throughput.max_write_request_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.import_table_description.start_time #=> Time
    #   resp.import_table_description.end_time #=> Time
    #   resp.import_table_description.processed_size_bytes #=> Integer
    #   resp.import_table_description.processed_item_count #=> Integer
    #   resp.import_table_description.imported_item_count #=> Integer
    #   resp.import_table_description.failure_code #=> String
    #   resp.import_table_description.failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeImport AWS API Documentation
    #
    # @overload describe_import(params = {})
    # @param [Hash] params ({})
    def describe_import(params = {}, options = {})
      req = build_request(:describe_import, params)
      req.send_request(options)
    end

    # Returns information about the status of Kinesis streaming.
    #
    # @option params [required, String] :table_name
    #   The name of the table being described. You can also provide the Amazon
    #   Resource Name (ARN) of the table in this parameter.
    #
    # @return [Types::DescribeKinesisStreamingDestinationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKinesisStreamingDestinationOutput#table_name #table_name} => String
    #   * {Types::DescribeKinesisStreamingDestinationOutput#kinesis_data_stream_destinations #kinesis_data_stream_destinations} => Array&lt;Types::KinesisDataStreamDestination&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_kinesis_streaming_destination({
    #     table_name: "TableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_name #=> String
    #   resp.kinesis_data_stream_destinations #=> Array
    #   resp.kinesis_data_stream_destinations[0].stream_arn #=> String
    #   resp.kinesis_data_stream_destinations[0].destination_status #=> String, one of "ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"
    #   resp.kinesis_data_stream_destinations[0].destination_status_description #=> String
    #   resp.kinesis_data_stream_destinations[0].approximate_creation_date_time_precision #=> String, one of "MILLISECOND", "MICROSECOND"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeKinesisStreamingDestination AWS API Documentation
    #
    # @overload describe_kinesis_streaming_destination(params = {})
    # @param [Hash] params ({})
    def describe_kinesis_streaming_destination(params = {}, options = {})
      req = build_request(:describe_kinesis_streaming_destination, params)
      req.send_request(options)
    end

    # Returns the current provisioned-capacity quotas for your Amazon Web
    # Services account in a Region, both for the Region as a whole and for
    # any one DynamoDB table that you create there.
    #
    # When you establish an Amazon Web Services account, the account has
    # initial quotas on the maximum read capacity units and write capacity
    # units that you can provision across all of your DynamoDB tables in a
    # given Region. Also, there are per-table quotas that apply when you
    # create a table there. For more information, see [Service, Account, and
    # Table Quotas][1] page in the *Amazon DynamoDB Developer Guide*.
    #
    # Although you can increase these quotas by filing a case at [Amazon Web
    # Services Support Center][2], obtaining the increase is not
    # instantaneous. The `DescribeLimits` action lets you write code to
    # compare the capacity you are currently using to those quotas imposed
    # by your account so that you have enough time to apply for an increase
    # before you hit a quota.
    #
    # For example, you could use one of the Amazon Web Services SDKs to do
    # the following:
    #
    # 1.  Call `DescribeLimits` for a particular Region to obtain your
    #     current account quotas on provisioned capacity there.
    #
    # 2.  Create a variable to hold the aggregate read capacity units
    #     provisioned for all your tables in that Region, and one to hold
    #     the aggregate write capacity units. Zero them both.
    #
    # 3.  Call `ListTables` to obtain a list of all your DynamoDB tables.
    #
    # 4.  For each table name listed by `ListTables`, do the following:
    #
    #     * Call `DescribeTable` with the table name.
    #
    #     * Use the data returned by `DescribeTable` to add the read
    #       capacity units and write capacity units provisioned for the
    #       table itself to your variables.
    #
    #     * If the table has one or more global secondary indexes (GSIs),
    #       loop over these GSIs and add their provisioned capacity values
    #       to your variables as well.
    # 5.  Report the account quotas for that Region returned by
    #     `DescribeLimits`, along with the total current provisioned
    #     capacity levels you have calculated.
    #
    # This will let you see whether you are getting close to your
    # account-level quotas.
    #
    # The per-table quotas apply only when you are creating a new table.
    # They restrict the sum of the provisioned capacity of the new table
    # itself and all its global secondary indexes.
    #
    # For existing tables and their GSIs, DynamoDB doesn't let you increase
    # provisioned capacity extremely rapidly, but the only quota that
    # applies is that the aggregate provisioned capacity over all your
    # tables and GSIs cannot exceed either of the per-account quotas.
    #
    # <note markdown="1"> `DescribeLimits` should only be called periodically. You can expect
    # throttling errors if you call it more than once in a minute.
    #
    #  </note>
    #
    # The `DescribeLimits` Request element has no content.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html
    # [2]: https://console.aws.amazon.com/support/home#/
    #
    # @return [Types::DescribeLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLimitsOutput#account_max_read_capacity_units #account_max_read_capacity_units} => Integer
    #   * {Types::DescribeLimitsOutput#account_max_write_capacity_units #account_max_write_capacity_units} => Integer
    #   * {Types::DescribeLimitsOutput#table_max_read_capacity_units #table_max_read_capacity_units} => Integer
    #   * {Types::DescribeLimitsOutput#table_max_write_capacity_units #table_max_write_capacity_units} => Integer
    #
    #
    # @example Example: To determine capacity limits per table and account, in the current AWS region
    #
    #   # The following example returns the maximum read and write capacity units per table, and for the AWS account, in the
    #   # current AWS region.
    #
    #   resp = client.describe_limits({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_max_read_capacity_units: 20000, 
    #     account_max_write_capacity_units: 20000, 
    #     table_max_read_capacity_units: 10000, 
    #     table_max_write_capacity_units: 10000, 
    #   }
    #
    # @example Response structure
    #
    #   resp.account_max_read_capacity_units #=> Integer
    #   resp.account_max_write_capacity_units #=> Integer
    #   resp.table_max_read_capacity_units #=> Integer
    #   resp.table_max_write_capacity_units #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeLimits AWS API Documentation
    #
    # @overload describe_limits(params = {})
    # @param [Hash] params ({})
    def describe_limits(params = {}, options = {})
      req = build_request(:describe_limits, params)
      req.send_request(options)
    end

    # Returns information about the table, including the current status of
    # the table, when it was created, the primary key schema, and any
    # indexes on the table.
    #
    # <note markdown="1"> If you issue a `DescribeTable` request immediately after a
    # `CreateTable` request, DynamoDB might return a
    # `ResourceNotFoundException`. This is because `DescribeTable` uses an
    # eventually consistent query, and the metadata for your table might not
    # be available at that moment. Wait for a few seconds, and then try the
    # `DescribeTable` request again.
    #
    #  </note>
    #
    # @option params [required, String] :table_name
    #   The name of the table to describe. You can also provide the Amazon
    #   Resource Name (ARN) of the table in this parameter.
    #
    # @return [Types::DescribeTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTableOutput#table #table} => Types::TableDescription
    #
    #
    # @example Example: To describe a table
    #
    #   # This example describes the Music table.
    #
    #   resp = client.describe_table({
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     table: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "Artist", 
    #           attribute_type: "S", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           attribute_type: "S", 
    #         }, 
    #       ], 
    #       creation_date_time: Time.parse("1421866952.062"), 
    #       item_count: 0, 
    #       key_schema: [
    #         {
    #           attribute_name: "Artist", 
    #           key_type: "HASH", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           key_type: "RANGE", 
    #         }, 
    #       ], 
    #       provisioned_throughput: {
    #         number_of_decreases_today: 1, 
    #         read_capacity_units: 5, 
    #         write_capacity_units: 5, 
    #       }, 
    #       table_name: "Music", 
    #       table_size_bytes: 0, 
    #       table_status: "ACTIVE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table({
    #     table_name: "TableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table.attribute_definitions #=> Array
    #   resp.table.attribute_definitions[0].attribute_name #=> String
    #   resp.table.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
    #   resp.table.table_name #=> String
    #   resp.table.key_schema #=> Array
    #   resp.table.key_schema[0].attribute_name #=> String
    #   resp.table.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table.creation_date_time #=> Time
    #   resp.table.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table.table_size_bytes #=> Integer
    #   resp.table.item_count #=> Integer
    #   resp.table.table_arn #=> String
    #   resp.table.table_id #=> String
    #   resp.table.billing_mode_summary.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.table.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.table.local_secondary_indexes #=> Array
    #   resp.table.local_secondary_indexes[0].index_name #=> String
    #   resp.table.local_secondary_indexes[0].key_schema #=> Array
    #   resp.table.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table.local_secondary_indexes[0].item_count #=> Integer
    #   resp.table.local_secondary_indexes[0].index_arn #=> String
    #   resp.table.global_secondary_indexes #=> Array
    #   resp.table.global_secondary_indexes[0].index_name #=> String
    #   resp.table.global_secondary_indexes[0].key_schema #=> Array
    #   resp.table.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table.global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.table.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table.global_secondary_indexes[0].item_count #=> Integer
    #   resp.table.global_secondary_indexes[0].index_arn #=> String
    #   resp.table.global_secondary_indexes[0].on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table.global_secondary_indexes[0].on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table.global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table.global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table.global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table.stream_specification.stream_enabled #=> Boolean
    #   resp.table.stream_specification.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
    #   resp.table.latest_stream_label #=> String
    #   resp.table.latest_stream_arn #=> String
    #   resp.table.global_table_version #=> String
    #   resp.table.replicas #=> Array
    #   resp.table.replicas[0].region_name #=> String
    #   resp.table.replicas[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table.replicas[0].replica_status_description #=> String
    #   resp.table.replicas[0].replica_status_percent_progress #=> String
    #   resp.table.replicas[0].kms_master_key_id #=> String
    #   resp.table.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table.replicas[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table.replicas[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table.replicas[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table.replicas[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table.replicas[0].global_secondary_indexes #=> Array
    #   resp.table.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.table.replicas[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table.replicas[0].global_secondary_indexes[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table.replicas[0].global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table.replicas[0].global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table.replicas[0].global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.table.replicas[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.table.global_table_witnesses #=> Array
    #   resp.table.global_table_witnesses[0].region_name #=> String
    #   resp.table.global_table_witnesses[0].witness_status #=> String, one of "CREATING", "DELETING", "ACTIVE"
    #   resp.table.restore_summary.source_backup_arn #=> String
    #   resp.table.restore_summary.source_table_arn #=> String
    #   resp.table.restore_summary.restore_date_time #=> Time
    #   resp.table.restore_summary.restore_in_progress #=> Boolean
    #   resp.table.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table.sse_description.kms_master_key_arn #=> String
    #   resp.table.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.table.archival_summary.archival_date_time #=> Time
    #   resp.table.archival_summary.archival_reason #=> String
    #   resp.table.archival_summary.archival_backup_arn #=> String
    #   resp.table.table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table.table_class_summary.last_update_date_time #=> Time
    #   resp.table.deletion_protection_enabled #=> Boolean
    #   resp.table.on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table.on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table.warm_throughput.read_units_per_second #=> Integer
    #   resp.table.warm_throughput.write_units_per_second #=> Integer
    #   resp.table.warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table.multi_region_consistency #=> String, one of "EVENTUAL", "STRONG"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * table_exists
    #   * table_not_exists
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTable AWS API Documentation
    #
    # @overload describe_table(params = {})
    # @param [Hash] params ({})
    def describe_table(params = {}, options = {})
      req = build_request(:describe_table, params)
      req.send_request(options)
    end

    # Describes auto scaling settings across replicas of the global table at
    # once.
    #
    # @option params [required, String] :table_name
    #   The name of the table. You can also provide the Amazon Resource Name
    #   (ARN) of the table in this parameter.
    #
    # @return [Types::DescribeTableReplicaAutoScalingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTableReplicaAutoScalingOutput#table_auto_scaling_description #table_auto_scaling_description} => Types::TableAutoScalingDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table_replica_auto_scaling({
    #     table_name: "TableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_auto_scaling_description.table_name #=> String
    #   resp.table_auto_scaling_description.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_auto_scaling_description.replicas #=> Array
    #   resp.table_auto_scaling_description.replicas[0].region_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes #=> Array
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.table_auto_scaling_description.replicas[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTableReplicaAutoScaling AWS API Documentation
    #
    # @overload describe_table_replica_auto_scaling(params = {})
    # @param [Hash] params ({})
    def describe_table_replica_auto_scaling(params = {}, options = {})
      req = build_request(:describe_table_replica_auto_scaling, params)
      req.send_request(options)
    end

    # Gives a description of the Time to Live (TTL) status on the specified
    # table.
    #
    # @option params [required, String] :table_name
    #   The name of the table to be described. You can also provide the Amazon
    #   Resource Name (ARN) of the table in this parameter.
    #
    # @return [Types::DescribeTimeToLiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTimeToLiveOutput#time_to_live_description #time_to_live_description} => Types::TimeToLiveDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_time_to_live({
    #     table_name: "TableArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.time_to_live_description.time_to_live_status #=> String, one of "ENABLING", "DISABLING", "ENABLED", "DISABLED"
    #   resp.time_to_live_description.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeTimeToLive AWS API Documentation
    #
    # @overload describe_time_to_live(params = {})
    # @param [Hash] params ({})
    def describe_time_to_live(params = {}, options = {})
      req = build_request(:describe_time_to_live, params)
      req.send_request(options)
    end

    # Stops replication from the DynamoDB table to the Kinesis data stream.
    # This is done without deleting either of the resources.
    #
    # @option params [required, String] :table_name
    #   The name of the DynamoDB table. You can also provide the Amazon
    #   Resource Name (ARN) of the table in this parameter.
    #
    # @option params [required, String] :stream_arn
    #   The ARN for a Kinesis data stream.
    #
    # @option params [Types::EnableKinesisStreamingConfiguration] :enable_kinesis_streaming_configuration
    #   The source for the Kinesis streaming information that is being
    #   enabled.
    #
    # @return [Types::KinesisStreamingDestinationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::KinesisStreamingDestinationOutput#table_name #table_name} => String
    #   * {Types::KinesisStreamingDestinationOutput#stream_arn #stream_arn} => String
    #   * {Types::KinesisStreamingDestinationOutput#destination_status #destination_status} => String
    #   * {Types::KinesisStreamingDestinationOutput#enable_kinesis_streaming_configuration #enable_kinesis_streaming_configuration} => Types::EnableKinesisStreamingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_kinesis_streaming_destination({
    #     table_name: "TableArn", # required
    #     stream_arn: "StreamArn", # required
    #     enable_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: "MILLISECOND", # accepts MILLISECOND, MICROSECOND
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.table_name #=> String
    #   resp.stream_arn #=> String
    #   resp.destination_status #=> String, one of "ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"
    #   resp.enable_kinesis_streaming_configuration.approximate_creation_date_time_precision #=> String, one of "MILLISECOND", "MICROSECOND"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DisableKinesisStreamingDestination AWS API Documentation
    #
    # @overload disable_kinesis_streaming_destination(params = {})
    # @param [Hash] params ({})
    def disable_kinesis_streaming_destination(params = {}, options = {})
      req = build_request(:disable_kinesis_streaming_destination, params)
      req.send_request(options)
    end

    # Starts table data replication to the specified Kinesis data stream at
    # a timestamp chosen during the enable workflow. If this operation
    # doesn't return results immediately, use
    # DescribeKinesisStreamingDestination to check if streaming to the
    # Kinesis data stream is ACTIVE.
    #
    # @option params [required, String] :table_name
    #   The name of the DynamoDB table. You can also provide the Amazon
    #   Resource Name (ARN) of the table in this parameter.
    #
    # @option params [required, String] :stream_arn
    #   The ARN for a Kinesis data stream.
    #
    # @option params [Types::EnableKinesisStreamingConfiguration] :enable_kinesis_streaming_configuration
    #   The source for the Kinesis streaming information that is being
    #   enabled.
    #
    # @return [Types::KinesisStreamingDestinationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::KinesisStreamingDestinationOutput#table_name #table_name} => String
    #   * {Types::KinesisStreamingDestinationOutput#stream_arn #stream_arn} => String
    #   * {Types::KinesisStreamingDestinationOutput#destination_status #destination_status} => String
    #   * {Types::KinesisStreamingDestinationOutput#enable_kinesis_streaming_configuration #enable_kinesis_streaming_configuration} => Types::EnableKinesisStreamingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_kinesis_streaming_destination({
    #     table_name: "TableArn", # required
    #     stream_arn: "StreamArn", # required
    #     enable_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: "MILLISECOND", # accepts MILLISECOND, MICROSECOND
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.table_name #=> String
    #   resp.stream_arn #=> String
    #   resp.destination_status #=> String, one of "ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"
    #   resp.enable_kinesis_streaming_configuration.approximate_creation_date_time_precision #=> String, one of "MILLISECOND", "MICROSECOND"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/EnableKinesisStreamingDestination AWS API Documentation
    #
    # @overload enable_kinesis_streaming_destination(params = {})
    # @param [Hash] params ({})
    def enable_kinesis_streaming_destination(params = {}, options = {})
      req = build_request(:enable_kinesis_streaming_destination, params)
      req.send_request(options)
    end

    # This operation allows you to perform reads and singleton writes on
    # data stored in DynamoDB, using PartiQL.
    #
    # For PartiQL reads (`SELECT` statement), if the total number of
    # processed items exceeds the maximum dataset size limit of 1 MB, the
    # read stops and results are returned to the user as a
    # `LastEvaluatedKey` value to continue the read in a subsequent
    # operation. If the filter criteria in `WHERE` clause does not match any
    # data, the read will return an empty result set.
    #
    # A single `SELECT` statement response can return up to the maximum
    # number of items (if using the Limit parameter) or a maximum of 1 MB of
    # data (and then apply any filtering to the results using `WHERE`
    # clause). If `LastEvaluatedKey` is present in the response, you need to
    # paginate the result set. If `NextToken` is present, you need to
    # paginate the result set and include `NextToken`.
    #
    # @option params [required, String] :statement
    #   The PartiQL statement representing the operation to run.
    #
    # @option params [Array<Types::AttributeValue>] :parameters
    #   The parameters for the PartiQL statement, if any.
    #
    # @option params [Boolean] :consistent_read
    #   The consistency of a read operation. If set to `true`, then a strongly
    #   consistent read is used; otherwise, an eventually consistent read is
    #   used.
    #
    # @option params [String] :next_token
    #   Set this value to get remaining results, if `NextToken` was returned
    #   in the statement response.
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to evaluate (not necessarily the number of
    #   matching items). If DynamoDB processes the number of items up to the
    #   limit while processing the results, it stops the operation and returns
    #   the matching values up to that point, along with a key in
    #   `LastEvaluatedKey` to apply in a subsequent operation so you can pick
    #   up where you left off. Also, if the processed dataset size exceeds 1
    #   MB before DynamoDB reaches this limit, it stops the operation and
    #   returns the matching values up to the limit, and a key in
    #   `LastEvaluatedKey` to apply in a subsequent operation to continue the
    #   operation.
    #
    # @option params [String] :return_values_on_condition_check_failure
    #   An optional parameter that returns the item attributes for an
    #   `ExecuteStatement` operation that failed a condition check.
    #
    #   There is no additional cost associated with requesting a return value
    #   aside from the small network and processing overhead of receiving a
    #   larger response. No read capacity units are consumed.
    #
    # @return [Types::ExecuteStatementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteStatementOutput#items #items} => Array&lt;Hash&lt;String,Types::AttributeValue&gt;&gt;
    #   * {Types::ExecuteStatementOutput#next_token #next_token} => String
    #   * {Types::ExecuteStatementOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #   * {Types::ExecuteStatementOutput#last_evaluated_key #last_evaluated_key} => Hash&lt;String,Types::AttributeValue&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_statement({
    #     statement: "PartiQLStatement", # required
    #     parameters: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     consistent_read: false,
    #     next_token: "PartiQLNextToken",
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #     limit: 1,
    #     return_values_on_condition_check_failure: "ALL_OLD", # accepts ALL_OLD, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0] #=> Hash
    #   resp.items[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.next_token #=> String
    #   resp.consumed_capacity.table_name #=> String
    #   resp.consumed_capacity.capacity_units #=> Float
    #   resp.consumed_capacity.read_capacity_units #=> Float
    #   resp.consumed_capacity.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes #=> Hash
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes #=> Hash
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.last_evaluated_key #=> Hash
    #   resp.last_evaluated_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ExecuteStatement AWS API Documentation
    #
    # @overload execute_statement(params = {})
    # @param [Hash] params ({})
    def execute_statement(params = {}, options = {})
      req = build_request(:execute_statement, params)
      req.send_request(options)
    end

    # This operation allows you to perform transactional reads or writes on
    # data stored in DynamoDB, using PartiQL.
    #
    # <note markdown="1"> The entire transaction must consist of either read statements or write
    # statements, you cannot mix both in one transaction. The EXISTS
    # function is an exception and can be used to check the condition of
    # specific attributes of the item in a similar manner to
    # `ConditionCheck` in the [TransactWriteItems][1] API.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems
    #
    # @option params [required, Array<Types::ParameterizedStatement>] :transact_statements
    #   The list of PartiQL statements representing the transaction to run.
    #
    # @option params [String] :client_request_token
    #   Set this value to get remaining results, if `NextToken` was returned
    #   in the statement response.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response. For more
    #   information, see [TransactGetItems][1] and [TransactWriteItems][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactGetItems.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactWriteItems.html
    #
    # @return [Types::ExecuteTransactionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteTransactionOutput#responses #responses} => Array&lt;Types::ItemResponse&gt;
    #   * {Types::ExecuteTransactionOutput#consumed_capacity #consumed_capacity} => Array&lt;Types::ConsumedCapacity&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_transaction({
    #     transact_statements: [ # required
    #       {
    #         statement: "PartiQLStatement", # required
    #         parameters: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         return_values_on_condition_check_failure: "ALL_OLD", # accepts ALL_OLD, NONE
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.responses #=> Array
    #   resp.responses[0].item #=> Hash
    #   resp.responses[0].item["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.consumed_capacity #=> Array
    #   resp.consumed_capacity[0].table_name #=> String
    #   resp.consumed_capacity[0].capacity_units #=> Float
    #   resp.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].capacity_units #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ExecuteTransaction AWS API Documentation
    #
    # @overload execute_transaction(params = {})
    # @param [Hash] params ({})
    def execute_transaction(params = {}, options = {})
      req = build_request(:execute_transaction, params)
      req.send_request(options)
    end

    # Exports table data to an S3 bucket. The table must have point in time
    # recovery enabled, and you can export data from any time within the
    # point in time recovery window.
    #
    # @option params [required, String] :table_arn
    #   The Amazon Resource Name (ARN) associated with the table to export.
    #
    # @option params [Time,DateTime,Date,Integer,String] :export_time
    #   Time in the past from which to export table data, counted in seconds
    #   from the start of the Unix epoch. The table export will be a snapshot
    #   of the table's state at this point in time.
    #
    # @option params [String] :client_token
    #   Providing a `ClientToken` makes the call to
    #   `ExportTableToPointInTimeInput` idempotent, meaning that multiple
    #   identical calls have the same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it is completed. After 8 hours, any request with the same client token
    #   is treated as a new request. Do not resubmit the same request with the
    #   same client token for more than 8 hours, or the result might not be
    #   idempotent.
    #
    #   If you submit a request with the same client token but a change in
    #   other parameters within the 8-hour idempotency window, DynamoDB
    #   returns an `ImportConflictException`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :s3_bucket
    #   The name of the Amazon S3 bucket to export the snapshot to.
    #
    # @option params [String] :s3_bucket_owner
    #   The ID of the Amazon Web Services account that owns the bucket the
    #   export will be stored in.
    #
    #   <note markdown="1"> S3BucketOwner is a required parameter when exporting to a S3 bucket in
    #   another account.
    #
    #    </note>
    #
    # @option params [String] :s3_prefix
    #   The Amazon S3 bucket prefix to use as the file name and path of the
    #   exported snapshot.
    #
    # @option params [String] :s3_sse_algorithm
    #   Type of encryption used on the bucket where export data will be
    #   stored. Valid values for `S3SseAlgorithm` are:
    #
    #   * `AES256` - server-side encryption with Amazon S3 managed keys
    #
    #   * `KMS` - server-side encryption with KMS managed keys
    #
    # @option params [String] :s3_sse_kms_key_id
    #   The ID of the KMS managed key used to encrypt the S3 bucket where
    #   export data will be stored (if applicable).
    #
    # @option params [String] :export_format
    #   The format for the exported data. Valid values for `ExportFormat` are
    #   `DYNAMODB_JSON` or `ION`.
    #
    # @option params [String] :export_type
    #   Choice of whether to execute as a full export or incremental export.
    #   Valid values are FULL\_EXPORT or INCREMENTAL\_EXPORT. The default
    #   value is FULL\_EXPORT. If INCREMENTAL\_EXPORT is provided, the
    #   IncrementalExportSpecification must also be used.
    #
    # @option params [Types::IncrementalExportSpecification] :incremental_export_specification
    #   Optional object containing the parameters specific to an incremental
    #   export.
    #
    # @return [Types::ExportTableToPointInTimeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportTableToPointInTimeOutput#export_description #export_description} => Types::ExportDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_table_to_point_in_time({
    #     table_arn: "TableArn", # required
    #     export_time: Time.now,
    #     client_token: "ClientToken",
    #     s3_bucket: "S3Bucket", # required
    #     s3_bucket_owner: "S3BucketOwner",
    #     s3_prefix: "S3Prefix",
    #     s3_sse_algorithm: "AES256", # accepts AES256, KMS
    #     s3_sse_kms_key_id: "S3SseKmsKeyId",
    #     export_format: "DYNAMODB_JSON", # accepts DYNAMODB_JSON, ION
    #     export_type: "FULL_EXPORT", # accepts FULL_EXPORT, INCREMENTAL_EXPORT
    #     incremental_export_specification: {
    #       export_from_time: Time.now,
    #       export_to_time: Time.now,
    #       export_view_type: "NEW_IMAGE", # accepts NEW_IMAGE, NEW_AND_OLD_IMAGES
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.export_description.export_arn #=> String
    #   resp.export_description.export_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.export_description.start_time #=> Time
    #   resp.export_description.end_time #=> Time
    #   resp.export_description.export_manifest #=> String
    #   resp.export_description.table_arn #=> String
    #   resp.export_description.table_id #=> String
    #   resp.export_description.export_time #=> Time
    #   resp.export_description.client_token #=> String
    #   resp.export_description.s3_bucket #=> String
    #   resp.export_description.s3_bucket_owner #=> String
    #   resp.export_description.s3_prefix #=> String
    #   resp.export_description.s3_sse_algorithm #=> String, one of "AES256", "KMS"
    #   resp.export_description.s3_sse_kms_key_id #=> String
    #   resp.export_description.failure_code #=> String
    #   resp.export_description.failure_message #=> String
    #   resp.export_description.export_format #=> String, one of "DYNAMODB_JSON", "ION"
    #   resp.export_description.billed_size_bytes #=> Integer
    #   resp.export_description.item_count #=> Integer
    #   resp.export_description.export_type #=> String, one of "FULL_EXPORT", "INCREMENTAL_EXPORT"
    #   resp.export_description.incremental_export_specification.export_from_time #=> Time
    #   resp.export_description.incremental_export_specification.export_to_time #=> Time
    #   resp.export_description.incremental_export_specification.export_view_type #=> String, one of "NEW_IMAGE", "NEW_AND_OLD_IMAGES"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ExportTableToPointInTime AWS API Documentation
    #
    # @overload export_table_to_point_in_time(params = {})
    # @param [Hash] params ({})
    def export_table_to_point_in_time(params = {}, options = {})
      req = build_request(:export_table_to_point_in_time, params)
      req.send_request(options)
    end

    # The `GetItem` operation returns a set of attributes for the item with
    # the given primary key. If there is no matching item, `GetItem` does
    # not return any data and there will be no `Item` element in the
    # response.
    #
    # `GetItem` provides an eventually consistent read by default. If your
    # application requires a strongly consistent read, set `ConsistentRead`
    # to `true`. Although a strongly consistent read might take more time
    # than an eventually consistent read, it always returns the last updated
    # value.
    #
    # @option params [required, String] :table_name
    #   The name of the table containing the requested item. You can also
    #   provide the Amazon Resource Name (ARN) of the table in this parameter.
    #
    # @option params [required, Hash<String,Types::AttributeValue>] :key
    #   A map of attribute names to `AttributeValue` objects, representing the
    #   primary key of the item to retrieve.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    #
    # @option params [Array<String>] :attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #
    # @option params [Boolean] :consistent_read
    #   Determines the read consistency model: If set to `true`, then the
    #   operation uses strongly consistent reads; otherwise, the operation
    #   uses eventually consistent reads.
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @option params [String] :projection_expression
    #   A string that identifies one or more attributes to retrieve from the
    #   table. These attributes can include scalars, sets, or elements of a
    #   JSON document. The attributes in the expression must be separated by
    #   commas.
    #
    #   If no attribute names are specified, then all attributes are returned.
    #   If any of the requested attributes are not found, they do not appear
    #   in the result.
    #
    #   For more information, see [Specifying Item Attributes][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using `ExpressionAttributeNames`:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB reserved
    #     word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`:
    #
    #   * `{"#P":"Percentile"}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
    #   values*, which are placeholders for the actual value at runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @return [Types::GetItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetItemOutput#item #item} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::GetItemOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #
    #
    # @example Example: To read an item from a table
    #
    #   # This example retrieves an item from the Music table. The table has a partition key and a sort key (Artist and
    #   # SongTitle), so you must specify both of these attributes.
    #
    #   resp = client.get_item({
    #     key: {
    #       "Artist" => "Acme Band", 
    #       "SongTitle" => "Happy Day", 
    #     }, 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     item: {
    #       "AlbumTitle" => "Songs About Life", 
    #       "Artist" => "Acme Band", 
    #       "SongTitle" => "Happy Day", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_item({
    #     table_name: "TableArn", # required
    #     key: { # required
    #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     attributes_to_get: ["AttributeName"],
    #     consistent_read: false,
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #     projection_expression: "ProjectionExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.item #=> Hash
    #   resp.item["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.consumed_capacity.table_name #=> String
    #   resp.consumed_capacity.capacity_units #=> Float
    #   resp.consumed_capacity.read_capacity_units #=> Float
    #   resp.consumed_capacity.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes #=> Hash
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes #=> Hash
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GetItem AWS API Documentation
    #
    # @overload get_item(params = {})
    # @param [Hash] params ({})
    def get_item(params = {}, options = {})
      req = build_request(:get_item, params)
      req.send_request(options)
    end

    # Returns the resource-based policy document attached to the resource,
    # which can be a table or stream, in JSON format.
    #
    # `GetResourcePolicy` follows an [ *eventually consistent* ][1] model.
    # The following list describes the outcomes when you issue the
    # `GetResourcePolicy` request immediately after issuing another request:
    #
    # * If you issue a `GetResourcePolicy` request immediately after a
    #   `PutResourcePolicy` request, DynamoDB might return a
    #   `PolicyNotFoundException`.
    #
    # * If you issue a `GetResourcePolicy`request immediately after a
    #   `DeleteResourcePolicy` request, DynamoDB might return the policy
    #   that was present before the deletion request.
    #
    # * If you issue a `GetResourcePolicy` request immediately after a
    #   `CreateTable` request, which includes a resource-based policy,
    #   DynamoDB might return a `ResourceNotFoundException` or a
    #   `PolicyNotFoundException`.
    #
    # Because `GetResourcePolicy` uses an *eventually consistent* query, the
    # metadata for your policy or table might not be available at that
    # moment. Wait for a few seconds, and then retry the `GetResourcePolicy`
    # request.
    #
    # After a `GetResourcePolicy` request returns a policy created using the
    # `PutResourcePolicy` request, the policy will be applied in the
    # authorization of requests to the resource. Because this process is
    # eventually consistent, it will take some time to apply the policy to
    # all requests to a resource. Policies that you attach while creating a
    # table using the `CreateTable` request will always be applied to all
    # requests for that table.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the DynamoDB resource to which the
    #   policy is attached. The resources you can specify include tables and
    #   streams.
    #
    # @return [Types::GetResourcePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyOutput#policy #policy} => String
    #   * {Types::GetResourcePolicyOutput#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "ResourceArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Imports table data from an S3 bucket.
    #
    # @option params [String] :client_token
    #   Providing a `ClientToken` makes the call to `ImportTableInput`
    #   idempotent, meaning that multiple identical calls have the same effect
    #   as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it is completed. After 8 hours, any request with the same client token
    #   is treated as a new request. Do not resubmit the same request with the
    #   same client token for more than 8 hours, or the result might not be
    #   idempotent.
    #
    #   If you submit a request with the same client token but a change in
    #   other parameters within the 8-hour idempotency window, DynamoDB
    #   returns an `IdempotentParameterMismatch` exception.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::S3BucketSource] :s3_bucket_source
    #   The S3 bucket that provides the source for the import.
    #
    # @option params [required, String] :input_format
    #   The format of the source data. Valid values for `ImportFormat` are
    #   `CSV`, `DYNAMODB_JSON` or `ION`.
    #
    # @option params [Types::InputFormatOptions] :input_format_options
    #   Additional properties that specify how the input is formatted,
    #
    # @option params [String] :input_compression_type
    #   Type of compression to be used on the input coming from the imported
    #   table.
    #
    # @option params [required, Types::TableCreationParameters] :table_creation_parameters
    #   Parameters for the table to import the data into.
    #
    # @return [Types::ImportTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportTableOutput#import_table_description #import_table_description} => Types::ImportTableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_table({
    #     client_token: "ClientToken",
    #     s3_bucket_source: { # required
    #       s3_bucket_owner: "S3BucketOwner",
    #       s3_bucket: "S3Bucket", # required
    #       s3_key_prefix: "S3Prefix",
    #     },
    #     input_format: "DYNAMODB_JSON", # required, accepts DYNAMODB_JSON, ION, CSV
    #     input_format_options: {
    #       csv: {
    #         delimiter: "CsvDelimiter",
    #         header_list: ["CsvHeader"],
    #       },
    #     },
    #     input_compression_type: "GZIP", # accepts GZIP, ZSTD, NONE
    #     table_creation_parameters: { # required
    #       table_name: "TableName", # required
    #       attribute_definitions: [ # required
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           attribute_type: "S", # required, accepts S, N, B
    #         },
    #       ],
    #       key_schema: [ # required
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           key_type: "HASH", # required, accepts HASH, RANGE
    #         },
    #       ],
    #       billing_mode: "PROVISIONED", # accepts PROVISIONED, PAY_PER_REQUEST
    #       provisioned_throughput: {
    #         read_capacity_units: 1, # required
    #         write_capacity_units: 1, # required
    #       },
    #       on_demand_throughput: {
    #         max_read_request_units: 1,
    #         max_write_request_units: 1,
    #       },
    #       sse_specification: {
    #         enabled: false,
    #         sse_type: "AES256", # accepts AES256, KMS
    #         kms_master_key_id: "KMSMasterKeyId",
    #       },
    #       global_secondary_indexes: [
    #         {
    #           index_name: "IndexName", # required
    #           key_schema: [ # required
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH", # required, accepts HASH, RANGE
    #             },
    #           ],
    #           projection: { # required
    #             projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #             non_key_attributes: ["NonKeyAttributeName"],
    #           },
    #           provisioned_throughput: {
    #             read_capacity_units: 1, # required
    #             write_capacity_units: 1, # required
    #           },
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1,
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.import_table_description.import_arn #=> String
    #   resp.import_table_description.import_status #=> String, one of "IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"
    #   resp.import_table_description.table_arn #=> String
    #   resp.import_table_description.table_id #=> String
    #   resp.import_table_description.client_token #=> String
    #   resp.import_table_description.s3_bucket_source.s3_bucket_owner #=> String
    #   resp.import_table_description.s3_bucket_source.s3_bucket #=> String
    #   resp.import_table_description.s3_bucket_source.s3_key_prefix #=> String
    #   resp.import_table_description.error_count #=> Integer
    #   resp.import_table_description.cloud_watch_log_group_arn #=> String
    #   resp.import_table_description.input_format #=> String, one of "DYNAMODB_JSON", "ION", "CSV"
    #   resp.import_table_description.input_format_options.csv.delimiter #=> String
    #   resp.import_table_description.input_format_options.csv.header_list #=> Array
    #   resp.import_table_description.input_format_options.csv.header_list[0] #=> String
    #   resp.import_table_description.input_compression_type #=> String, one of "GZIP", "ZSTD", "NONE"
    #   resp.import_table_description.table_creation_parameters.table_name #=> String
    #   resp.import_table_description.table_creation_parameters.attribute_definitions #=> Array
    #   resp.import_table_description.table_creation_parameters.attribute_definitions[0].attribute_name #=> String
    #   resp.import_table_description.table_creation_parameters.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
    #   resp.import_table_description.table_creation_parameters.key_schema #=> Array
    #   resp.import_table_description.table_creation_parameters.key_schema[0].attribute_name #=> String
    #   resp.import_table_description.table_creation_parameters.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.import_table_description.table_creation_parameters.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.import_table_description.table_creation_parameters.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.on_demand_throughput.max_read_request_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.on_demand_throughput.max_write_request_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.sse_specification.enabled #=> Boolean
    #   resp.import_table_description.table_creation_parameters.sse_specification.sse_type #=> String, one of "AES256", "KMS"
    #   resp.import_table_description.table_creation_parameters.sse_specification.kms_master_key_id #=> String
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes #=> Array
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].index_name #=> String
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].key_schema #=> Array
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].on_demand_throughput.max_read_request_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].on_demand_throughput.max_write_request_units #=> Integer
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.import_table_description.table_creation_parameters.global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.import_table_description.start_time #=> Time
    #   resp.import_table_description.end_time #=> Time
    #   resp.import_table_description.processed_size_bytes #=> Integer
    #   resp.import_table_description.processed_item_count #=> Integer
    #   resp.import_table_description.imported_item_count #=> Integer
    #   resp.import_table_description.failure_code #=> String
    #   resp.import_table_description.failure_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ImportTable AWS API Documentation
    #
    # @overload import_table(params = {})
    # @param [Hash] params ({})
    def import_table(params = {}, options = {})
      req = build_request(:import_table, params)
      req.send_request(options)
    end

    # List DynamoDB backups that are associated with an Amazon Web Services
    # account and weren't made with Amazon Web Services Backup. To list
    # these backups for a given table, specify `TableName`. `ListBackups`
    # returns a paginated list of results with at most 1 MB worth of items
    # in a page. You can also specify a maximum number of entries to be
    # returned in a page.
    #
    # In the request, start time is inclusive, but end time is exclusive.
    # Note that these boundaries are for the time at which the original
    # backup was requested.
    #
    # You can call `ListBackups` a maximum of five times per second.
    #
    # If you want to retrieve the complete list of backups made with Amazon
    # Web Services Backup, use the [Amazon Web Services Backup list API.][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/API_ListBackupJobs.html
    #
    # @option params [String] :table_name
    #   Lists the backups from the table specified in `TableName`. You can
    #   also provide the Amazon Resource Name (ARN) of the table in this
    #   parameter.
    #
    # @option params [Integer] :limit
    #   Maximum number of backups to return at once.
    #
    # @option params [Time,DateTime,Date,Integer,String] :time_range_lower_bound
    #   Only backups created after this time are listed. `TimeRangeLowerBound`
    #   is inclusive.
    #
    # @option params [Time,DateTime,Date,Integer,String] :time_range_upper_bound
    #   Only backups created before this time are listed.
    #   `TimeRangeUpperBound` is exclusive.
    #
    # @option params [String] :exclusive_start_backup_arn
    #   `LastEvaluatedBackupArn` is the Amazon Resource Name (ARN) of the
    #   backup last evaluated when the current page of results was returned,
    #   inclusive of the current page of results. This value may be specified
    #   as the `ExclusiveStartBackupArn` of a new `ListBackups` operation in
    #   order to fetch the next page of results.
    #
    # @option params [String] :backup_type
    #   The backups from the table specified by `BackupType` are listed.
    #
    #   Where `BackupType` can be:
    #
    #   * `USER` - On-demand backup created by you. (The default setting if no
    #     other backup types are specified.)
    #
    #   * `SYSTEM` - On-demand backup automatically created by DynamoDB.
    #
    #   * `ALL` - All types of on-demand backups (USER and SYSTEM).
    #
    # @return [Types::ListBackupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBackupsOutput#backup_summaries #backup_summaries} => Array&lt;Types::BackupSummary&gt;
    #   * {Types::ListBackupsOutput#last_evaluated_backup_arn #last_evaluated_backup_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backups({
    #     table_name: "TableArn",
    #     limit: 1,
    #     time_range_lower_bound: Time.now,
    #     time_range_upper_bound: Time.now,
    #     exclusive_start_backup_arn: "BackupArn",
    #     backup_type: "USER", # accepts USER, SYSTEM, AWS_BACKUP, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.backup_summaries #=> Array
    #   resp.backup_summaries[0].table_name #=> String
    #   resp.backup_summaries[0].table_id #=> String
    #   resp.backup_summaries[0].table_arn #=> String
    #   resp.backup_summaries[0].backup_arn #=> String
    #   resp.backup_summaries[0].backup_name #=> String
    #   resp.backup_summaries[0].backup_creation_date_time #=> Time
    #   resp.backup_summaries[0].backup_expiry_date_time #=> Time
    #   resp.backup_summaries[0].backup_status #=> String, one of "CREATING", "DELETED", "AVAILABLE"
    #   resp.backup_summaries[0].backup_type #=> String, one of "USER", "SYSTEM", "AWS_BACKUP"
    #   resp.backup_summaries[0].backup_size_bytes #=> Integer
    #   resp.last_evaluated_backup_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListBackups AWS API Documentation
    #
    # @overload list_backups(params = {})
    # @param [Hash] params ({})
    def list_backups(params = {}, options = {})
      req = build_request(:list_backups, params)
      req.send_request(options)
    end

    # Returns a list of ContributorInsightsSummary for a table and all its
    # global secondary indexes.
    #
    # @option params [String] :table_name
    #   The name of the table. You can also provide the Amazon Resource Name
    #   (ARN) of the table in this parameter.
    #
    # @option params [String] :next_token
    #   A token to for the desired page, if there is one.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per page.
    #
    # @return [Types::ListContributorInsightsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContributorInsightsOutput#contributor_insights_summaries #contributor_insights_summaries} => Array&lt;Types::ContributorInsightsSummary&gt;
    #   * {Types::ListContributorInsightsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contributor_insights({
    #     table_name: "TableArn",
    #     next_token: "NextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.contributor_insights_summaries #=> Array
    #   resp.contributor_insights_summaries[0].table_name #=> String
    #   resp.contributor_insights_summaries[0].index_name #=> String
    #   resp.contributor_insights_summaries[0].contributor_insights_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListContributorInsights AWS API Documentation
    #
    # @overload list_contributor_insights(params = {})
    # @param [Hash] params ({})
    def list_contributor_insights(params = {}, options = {})
      req = build_request(:list_contributor_insights, params)
      req.send_request(options)
    end

    # Lists completed exports within the past 90 days.
    #
    # @option params [String] :table_arn
    #   The Amazon Resource Name (ARN) associated with the exported table.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   An optional string that, if supplied, must be copied from the output
    #   of a previous call to `ListExports`. When provided in this manner, the
    #   API fetches the next page of results.
    #
    # @return [Types::ListExportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExportsOutput#export_summaries #export_summaries} => Array&lt;Types::ExportSummary&gt;
    #   * {Types::ListExportsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exports({
    #     table_arn: "TableArn",
    #     max_results: 1,
    #     next_token: "ExportNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.export_summaries #=> Array
    #   resp.export_summaries[0].export_arn #=> String
    #   resp.export_summaries[0].export_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.export_summaries[0].export_type #=> String, one of "FULL_EXPORT", "INCREMENTAL_EXPORT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListExports AWS API Documentation
    #
    # @overload list_exports(params = {})
    # @param [Hash] params ({})
    def list_exports(params = {}, options = {})
      req = build_request(:list_exports, params)
      req.send_request(options)
    end

    # Lists all global tables that have a replica in the specified Region.
    #
    # This documentation is for version 2017.11.29 (Legacy) of global
    # tables, which should be avoided for new global tables. Customers
    # should use [Global Tables version 2019.11.21 (Current)][1] when
    # possible, because it provides greater flexibility, higher efficiency,
    # and consumes less write capacity than 2017.11.29 (Legacy).
    #
    #  To determine which version you're using, see [Determining the global
    # table version you are using][2]. To update existing global tables from
    # version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see
    # [Upgrading global tables][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
    # [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html
    # [3]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html
    #
    # @option params [String] :exclusive_start_global_table_name
    #   The first global table name that this operation will evaluate.
    #
    # @option params [Integer] :limit
    #   The maximum number of table names to return, if the parameter is not
    #   specified DynamoDB defaults to 100.
    #
    #   If the number of global tables DynamoDB finds reaches this limit, it
    #   stops the operation and returns the table names collected up to that
    #   point, with a table name in the `LastEvaluatedGlobalTableName` to
    #   apply in a subsequent operation to the `ExclusiveStartGlobalTableName`
    #   parameter.
    #
    # @option params [String] :region_name
    #   Lists the global tables in a specific Region.
    #
    # @return [Types::ListGlobalTablesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGlobalTablesOutput#global_tables #global_tables} => Array&lt;Types::GlobalTable&gt;
    #   * {Types::ListGlobalTablesOutput#last_evaluated_global_table_name #last_evaluated_global_table_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_global_tables({
    #     exclusive_start_global_table_name: "TableName",
    #     limit: 1,
    #     region_name: "RegionName",
    #   })
    #
    # @example Response structure
    #
    #   resp.global_tables #=> Array
    #   resp.global_tables[0].global_table_name #=> String
    #   resp.global_tables[0].replication_group #=> Array
    #   resp.global_tables[0].replication_group[0].region_name #=> String
    #   resp.last_evaluated_global_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListGlobalTables AWS API Documentation
    #
    # @overload list_global_tables(params = {})
    # @param [Hash] params ({})
    def list_global_tables(params = {}, options = {})
      req = build_request(:list_global_tables, params)
      req.send_request(options)
    end

    # Lists completed imports within the past 90 days.
    #
    # @option params [String] :table_arn
    #   The Amazon Resource Name (ARN) associated with the table that was
    #   imported to.
    #
    # @option params [Integer] :page_size
    #   The number of `ImportSummary `objects returned in a single page.
    #
    # @option params [String] :next_token
    #   An optional string that, if supplied, must be copied from the output
    #   of a previous call to `ListImports`. When provided in this manner, the
    #   API fetches the next page of results.
    #
    # @return [Types::ListImportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportsOutput#import_summary_list #import_summary_list} => Array&lt;Types::ImportSummary&gt;
    #   * {Types::ListImportsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_imports({
    #     table_arn: "TableArn",
    #     page_size: 1,
    #     next_token: "ImportNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_summary_list #=> Array
    #   resp.import_summary_list[0].import_arn #=> String
    #   resp.import_summary_list[0].import_status #=> String, one of "IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"
    #   resp.import_summary_list[0].table_arn #=> String
    #   resp.import_summary_list[0].s3_bucket_source.s3_bucket_owner #=> String
    #   resp.import_summary_list[0].s3_bucket_source.s3_bucket #=> String
    #   resp.import_summary_list[0].s3_bucket_source.s3_key_prefix #=> String
    #   resp.import_summary_list[0].cloud_watch_log_group_arn #=> String
    #   resp.import_summary_list[0].input_format #=> String, one of "DYNAMODB_JSON", "ION", "CSV"
    #   resp.import_summary_list[0].start_time #=> Time
    #   resp.import_summary_list[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListImports AWS API Documentation
    #
    # @overload list_imports(params = {})
    # @param [Hash] params ({})
    def list_imports(params = {}, options = {})
      req = build_request(:list_imports, params)
      req.send_request(options)
    end

    # Returns an array of table names associated with the current account
    # and endpoint. The output from `ListTables` is paginated, with each
    # page returning a maximum of 100 table names.
    #
    # @option params [String] :exclusive_start_table_name
    #   The first table name that this operation will evaluate. Use the value
    #   that was returned for `LastEvaluatedTableName` in a previous
    #   operation, so that you can obtain the next page of results.
    #
    # @option params [Integer] :limit
    #   A maximum number of table names to return. If this parameter is not
    #   specified, the limit is 100.
    #
    # @return [Types::ListTablesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTablesOutput#table_names #table_names} => Array&lt;String&gt;
    #   * {Types::ListTablesOutput#last_evaluated_table_name #last_evaluated_table_name} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list tables
    #
    #   # This example lists all of the tables associated with the current AWS account and endpoint.
    #
    #   resp = client.list_tables({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     table_names: [
    #       "Forum", 
    #       "ProductCatalog", 
    #       "Reply", 
    #       "Thread", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables({
    #     exclusive_start_table_name: "TableName",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.table_names #=> Array
    #   resp.table_names[0] #=> String
    #   resp.last_evaluated_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListTables AWS API Documentation
    #
    # @overload list_tables(params = {})
    # @param [Hash] params ({})
    def list_tables(params = {}, options = {})
      req = build_request(:list_tables, params)
      req.send_request(options)
    end

    # List all tags on an Amazon DynamoDB resource. You can call
    # ListTagsOfResource up to 10 times per second, per account.
    #
    # For an overview on tagging DynamoDB resources, see [Tagging for
    # DynamoDB][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon DynamoDB resource with tags to be listed. This value is an
    #   Amazon Resource Name (ARN).
    #
    # @option params [String] :next_token
    #   An optional string that, if supplied, must be copied from the output
    #   of a previous call to ListTagOfResource. When provided in this manner,
    #   this API fetches the next page of results.
    #
    # @return [Types::ListTagsOfResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsOfResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsOfResourceOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_of_resource({
    #     resource_arn: "ResourceArnString", # required
    #     next_token: "NextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/ListTagsOfResource AWS API Documentation
    #
    # @overload list_tags_of_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_of_resource(params = {}, options = {})
      req = build_request(:list_tags_of_resource, params)
      req.send_request(options)
    end

    # Creates a new item, or replaces an old item with a new item. If an
    # item that has the same primary key as the new item already exists in
    # the specified table, the new item completely replaces the existing
    # item. You can perform a conditional put operation (add a new item if
    # one with the specified primary key doesn't exist), or replace an
    # existing item if it has certain attribute values. You can return the
    # item's attribute values in the same operation, using the
    # `ReturnValues` parameter.
    #
    # When you add an item, the primary key attributes are the only required
    # attributes.
    #
    # Empty String and Binary attribute values are allowed. Attribute values
    # of type String and Binary must have a length greater than zero if the
    # attribute is used as a key attribute for a table or index. Set type
    # attributes cannot be empty.
    #
    # Invalid Requests with empty values will be rejected with a
    # `ValidationException` exception.
    #
    # <note markdown="1"> To prevent a new item from replacing an existing item, use a
    # conditional expression that contains the `attribute_not_exists`
    # function with the name of the attribute being used as the partition
    # key for the table. Since every record must contain that attribute, the
    # `attribute_not_exists` function will only succeed if no matching item
    # exists.
    #
    #  </note>
    #
    # For more information about `PutItem`, see [Working with Items][1] in
    # the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html
    #
    # @option params [required, String] :table_name
    #   The name of the table to contain the item. You can also provide the
    #   Amazon Resource Name (ARN) of the table in this parameter.
    #
    # @option params [required, Hash<String,Types::AttributeValue>] :item
    #   A map of attribute name/value pairs, one for each attribute. Only the
    #   primary key attributes are required; you can optionally provide other
    #   attribute name-value pairs for the item.
    #
    #   You must provide all of the attributes for the primary key. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   both values for both the partition key and the sort key.
    #
    #   If you specify any attributes that are part of an index key, then the
    #   data types for those attributes must match those of the schema in the
    #   table's attribute definition.
    #
    #   Empty String and Binary attribute values are allowed. Attribute values
    #   of type String and Binary must have a length greater than zero if the
    #   attribute is used as a key attribute for a table or index.
    #
    #   For more information about primary keys, see [Primary Key][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #   Each element in the `Item` map is an `AttributeValue` object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey
    #
    # @option params [Hash<String,Types::ExpectedAttributeValue>] :expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    #
    # @option params [String] :return_values
    #   Use `ReturnValues` if you want to get the item attributes as they
    #   appeared before they were updated with the `PutItem` request. For
    #   `PutItem`, the valid values are:
    #
    #   * `NONE` - If `ReturnValues` is not specified, or if its value is
    #     `NONE`, then nothing is returned. (This setting is the default for
    #     `ReturnValues`.)
    #
    #   * `ALL_OLD` - If `PutItem` overwrote an attribute name-value pair,
    #     then the content of the old item is returned.
    #
    #   The values returned are strongly consistent.
    #
    #   There is no additional cost associated with requesting a return value
    #   aside from the small network and processing overhead of receiving a
    #   larger response. No read capacity units are consumed.
    #
    #   <note markdown="1"> The `ReturnValues` parameter is used by several DynamoDB operations;
    #   however, `PutItem` does not recognize any values other than `NONE` or
    #   `ALL_OLD`.
    #
    #    </note>
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @option params [String] :return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are returned.
    #
    # @option params [String] :conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #
    # @option params [String] :condition_expression
    #   A condition that must be satisfied in order for a conditional
    #   `PutItem` operation to succeed.
    #
    #   An expression can contain any of the following:
    #
    #   * Functions: `attribute_exists | attribute_not_exists | attribute_type
    #     | contains | begins_with | size`
    #
    #     These function names are case-sensitive.
    #
    #   * Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN `
    #
    #   * Logical operators: `AND | OR | NOT`
    #
    #   For more information on condition expressions, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using `ExpressionAttributeNames`:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB reserved
    #     word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`:
    #
    #   * `{"#P":"Percentile"}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
    #   values*, which are placeholders for the actual value at runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check whether
    #   the value of the *ProductStatus* attribute was one of the following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #   ":disc":{"S":"Discontinued"} }`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [String] :return_values_on_condition_check_failure
    #   An optional parameter that returns the item attributes for a `PutItem`
    #   operation that failed a condition check.
    #
    #   There is no additional cost associated with requesting a return value
    #   aside from the small network and processing overhead of receiving a
    #   larger response. No read capacity units are consumed.
    #
    # @return [Types::PutItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutItemOutput#attributes #attributes} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::PutItemOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #   * {Types::PutItemOutput#item_collection_metrics #item_collection_metrics} => Types::ItemCollectionMetrics
    #
    #
    # @example Example: To add an item to a table
    #
    #   # This example adds a new item to the Music table.
    #
    #   resp = client.put_item({
    #     item: {
    #       "AlbumTitle" => "Somewhat Famous", 
    #       "Artist" => "No One You Know", 
    #       "SongTitle" => "Call Me Today", 
    #     }, 
    #     return_consumed_capacity: "TOTAL", 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     consumed_capacity: {
    #       capacity_units: 1, 
    #       table_name: "Music", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_item({
    #     table_name: "TableArn", # required
    #     item: { # required
    #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     expected: {
    #       "AttributeName" => {
    #         value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         exists: false,
    #         comparison_operator: "EQ", # accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #     },
    #     return_values: "NONE", # accepts NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #     return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
    #     conditional_operator: "AND", # accepts AND, OR
    #     condition_expression: "ConditionExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName",
    #     },
    #     expression_attribute_values: {
    #       "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     return_values_on_condition_check_failure: "ALL_OLD", # accepts ALL_OLD, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Hash
    #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.consumed_capacity.table_name #=> String
    #   resp.consumed_capacity.capacity_units #=> Float
    #   resp.consumed_capacity.read_capacity_units #=> Float
    #   resp.consumed_capacity.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes #=> Hash
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes #=> Hash
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.item_collection_metrics.item_collection_key #=> Hash
    #   resp.item_collection_metrics.item_collection_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.item_collection_metrics.size_estimate_range_gb #=> Array
    #   resp.item_collection_metrics.size_estimate_range_gb[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/PutItem AWS API Documentation
    #
    # @overload put_item(params = {})
    # @param [Hash] params ({})
    def put_item(params = {}, options = {})
      req = build_request(:put_item, params)
      req.send_request(options)
    end

    # Attaches a resource-based policy document to the resource, which can
    # be a table or stream. When you attach a resource-based policy using
    # this API, the policy application is [ *eventually consistent* ][1].
    #
    # `PutResourcePolicy` is an idempotent operation; running it multiple
    # times on the same resource using the same policy document will return
    # the same revision ID. If you specify an `ExpectedRevisionId` that
    # doesn't match the current policy's `RevisionId`, the
    # `PolicyNotFoundException` will be returned.
    #
    # <note markdown="1"> `PutResourcePolicy` is an asynchronous operation. If you issue a
    # `GetResourcePolicy` request immediately after a `PutResourcePolicy`
    # request, DynamoDB might return your previous policy, if there was one,
    # or return the `PolicyNotFoundException`. This is because
    # `GetResourcePolicy` uses an eventually consistent query, and the
    # metadata for your policy or table might not be available at that
    # moment. Wait for a few seconds, and then try the `GetResourcePolicy`
    # request again.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the DynamoDB resource to which the
    #   policy will be attached. The resources you can specify include tables
    #   and streams.
    #
    #   You can control index permissions using the base table's policy. To
    #   specify the same permission level for your table and its indexes, you
    #   can provide both the table and index Amazon Resource Name (ARN)s in
    #   the `Resource` field of a given `Statement` in your policy document.
    #   Alternatively, to specify different permissions for your table,
    #   indexes, or both, you can define multiple `Statement` fields in your
    #   policy document.
    #
    # @option params [required, String] :policy
    #   An Amazon Web Services resource-based policy document in JSON format.
    #
    #   * The maximum size supported for a resource-based policy document is
    #     20 KB. DynamoDB counts whitespaces when calculating the size of a
    #     policy against this limit.
    #
    #   * Within a resource-based policy, if the action for a DynamoDB
    #     service-linked role (SLR) to replicate data for a global table is
    #     denied, adding or deleting a replica will fail with an error.
    #
    #   For a full list of all considerations that apply while attaching a
    #   resource-based policy, see [Resource-based policy considerations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html
    #
    # @option params [String] :expected_revision_id
    #   A string value that you can use to conditionally update your policy.
    #   You can provide the revision ID of your existing policy to make
    #   mutating requests against that policy.
    #
    #   <note markdown="1"> When you provide an expected revision ID, if the revision ID of the
    #   existing policy on the resource doesn't match or if there's no
    #   policy attached to the resource, your request will be rejected with a
    #   `PolicyNotFoundException`.
    #
    #    </note>
    #
    #   To conditionally attach a policy when no policy exists for the
    #   resource, specify `NO_POLICY` for the revision ID.
    #
    # @option params [Boolean] :confirm_remove_self_resource_access
    #   Set this parameter to `true` to confirm that you want to remove your
    #   permissions to change the policy of this resource in the future.
    #
    # @return [Types::PutResourcePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyOutput#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "ResourceArnString", # required
    #     policy: "ResourcePolicy", # required
    #     expected_revision_id: "PolicyRevisionId",
    #     confirm_remove_self_resource_access: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # You must provide the name of the partition key attribute and a single
    # value for that attribute. `Query` returns all items with that
    # partition key value. Optionally, you can provide a sort key attribute
    # and use a comparison operator to refine the search results.
    #
    # Use the `KeyConditionExpression` parameter to provide a specific value
    # for the partition key. The `Query` operation will return all of the
    # items from the table or index with that partition key value. You can
    # optionally narrow the scope of the `Query` operation by specifying a
    # sort key value and a comparison operator in `KeyConditionExpression`.
    # To further refine the `Query` results, you can optionally provide a
    # `FilterExpression`. A `FilterExpression` determines which items within
    # the results should be returned to you. All of the other results are
    # discarded.
    #
    # A `Query` operation always returns a result set. If no matching items
    # are found, the result set will be empty. Queries that do not return
    # results consume the minimum number of read capacity units for that
    # type of read operation.
    #
    # <note markdown="1"> DynamoDB calculates the number of read capacity units consumed based
    # on item size, not on the amount of data that is returned to an
    # application. The number of capacity units consumed will be the same
    # whether you request all of the attributes (the default behavior) or
    # just some of them (using a projection expression). The number will
    # also be the same whether or not you use a `FilterExpression`.
    #
    #  </note>
    #
    # `Query` results are always sorted by the sort key value. If the data
    # type of the sort key is Number, the results are returned in numeric
    # order; otherwise, the results are returned in order of UTF-8 bytes. By
    # default, the sort order is ascending. To reverse the order, set the
    # `ScanIndexForward` parameter to false.
    #
    # A single `Query` operation will read up to the maximum number of items
    # set (if using the `Limit` parameter) or a maximum of 1 MB of data and
    # then apply any filtering to the results using `FilterExpression`. If
    # `LastEvaluatedKey` is present in the response, you will need to
    # paginate the result set. For more information, see [Paginating the
    # Results][1] in the *Amazon DynamoDB Developer Guide*.
    #
    # `FilterExpression` is applied after a `Query` finishes, but before the
    # results are returned. A `FilterExpression` cannot contain partition
    # key or sort key attributes. You need to specify those attributes in
    # the `KeyConditionExpression`.
    #
    # <note markdown="1"> A `Query` operation can return an empty result set and a
    # `LastEvaluatedKey` if all the items read for the page of results are
    # filtered out.
    #
    #  </note>
    #
    # You can query a table, a local secondary index, or a global secondary
    # index. For a query on a table or on a local secondary index, you can
    # set the `ConsistentRead` parameter to `true` and obtain a strongly
    # consistent result. Global secondary indexes support eventually
    # consistent reads only, so do not specify `ConsistentRead` when
    # querying a global secondary index.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination
    #
    # @option params [required, String] :table_name
    #   The name of the table containing the requested items. You can also
    #   provide the Amazon Resource Name (ARN) of the table in this parameter.
    #
    # @option params [String] :index_name
    #   The name of an index to query. This index can be any local secondary
    #   index or global secondary index on the table. Note that if you use the
    #   `IndexName` parameter, you must also provide `TableName.`
    #
    # @option params [String] :select
    #   The attributes to be returned in the result. You can retrieve all item
    #   attributes, specific item attributes, the count of matching items, or
    #   in the case of an index, some or all of the attributes projected into
    #   the index.
    #
    #   * `ALL_ATTRIBUTES` - Returns all of the item attributes from the
    #     specified table or index. If you query a local secondary index, then
    #     for each matching item in the index, DynamoDB fetches the entire
    #     item from the parent table. If the index is configured to project
    #     all item attributes, then all of the data can be obtained from the
    #     local secondary index, and no fetching is required.
    #
    #   * `ALL_PROJECTED_ATTRIBUTES` - Allowed only when querying an index.
    #     Retrieves all attributes that have been projected into the index. If
    #     the index is configured to project all attributes, this return value
    #     is equivalent to specifying `ALL_ATTRIBUTES`.
    #
    #   * `COUNT` - Returns the number of matching items, rather than the
    #     matching items themselves. Note that this uses the same quantity of
    #     read capacity units as getting the items, and is subject to the same
    #     item size calculations.
    #
    #   * `SPECIFIC_ATTRIBUTES` - Returns only the attributes listed in
    #     `ProjectionExpression`. This return value is equivalent to
    #     specifying `ProjectionExpression` without specifying any value for
    #     `Select`.
    #
    #     If you query or scan a local secondary index and request only
    #     attributes that are projected into that index, the operation will
    #     read only the index and not the table. If any of the requested
    #     attributes are not projected into the local secondary index,
    #     DynamoDB fetches each of these attributes from the parent table.
    #     This extra fetching incurs additional throughput cost and latency.
    #
    #     If you query or scan a global secondary index, you can only request
    #     attributes that are projected into the index. Global secondary index
    #     queries cannot fetch attributes from the parent table.
    #
    #   If neither `Select` nor `ProjectionExpression` are specified, DynamoDB
    #   defaults to `ALL_ATTRIBUTES` when accessing a table, and
    #   `ALL_PROJECTED_ATTRIBUTES` when accessing an index. You cannot use
    #   both `Select` and `ProjectionExpression` together in a single request,
    #   unless the value for `Select` is `SPECIFIC_ATTRIBUTES`. (This usage is
    #   equivalent to specifying `ProjectionExpression` without any value for
    #   `Select`.)
    #
    #   <note markdown="1"> If you use the `ProjectionExpression` parameter, then the value for
    #   `Select` can only be `SPECIFIC_ATTRIBUTES`. Any other value for
    #   `Select` will return an error.
    #
    #    </note>
    #
    # @option params [Array<String>] :attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #
    # @option params [Integer] :limit
    #   The maximum number of items to evaluate (not necessarily the number of
    #   matching items). If DynamoDB processes the number of items up to the
    #   limit while processing the results, it stops the operation and returns
    #   the matching values up to that point, and a key in `LastEvaluatedKey`
    #   to apply in a subsequent operation, so that you can pick up where you
    #   left off. Also, if the processed dataset size exceeds 1 MB before
    #   DynamoDB reaches this limit, it stops the operation and returns the
    #   matching values up to the limit, and a key in `LastEvaluatedKey` to
    #   apply in a subsequent operation to continue the operation. For more
    #   information, see [Query and Scan][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html
    #
    # @option params [Boolean] :consistent_read
    #   Determines the read consistency model: If set to `true`, then the
    #   operation uses strongly consistent reads; otherwise, the operation
    #   uses eventually consistent reads.
    #
    #   Strongly consistent reads are not supported on global secondary
    #   indexes. If you query a global secondary index with `ConsistentRead`
    #   set to `true`, you will receive a `ValidationException`.
    #
    # @option params [Hash<String,Types::Condition>] :key_conditions
    #   This is a legacy parameter. Use `KeyConditionExpression` instead. For
    #   more information, see [KeyConditions][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html
    #
    # @option params [Hash<String,Types::Condition>] :query_filter
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [QueryFilter][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html
    #
    # @option params [String] :conditional_operator
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #
    # @option params [Boolean] :scan_index_forward
    #   Specifies the order for index traversal: If `true` (default), the
    #   traversal is performed in ascending order; if `false`, the traversal
    #   is performed in descending order.
    #
    #   Items with the same partition key value are stored in sorted order by
    #   sort key. If the sort key data type is Number, the results are stored
    #   in numeric order. For type String, the results are stored in order of
    #   UTF-8 bytes. For type Binary, DynamoDB treats each byte of the binary
    #   data as unsigned.
    #
    #   If `ScanIndexForward` is `true`, DynamoDB returns the results in the
    #   order in which they are stored (by sort key value). This is the
    #   default behavior. If `ScanIndexForward` is `false`, DynamoDB reads the
    #   results in reverse order by sort key value, and then returns the
    #   results to the client.
    #
    # @option params [Hash<String,Types::AttributeValue>] :exclusive_start_key
    #   The primary key of the first item that this operation will evaluate.
    #   Use the value that was returned for `LastEvaluatedKey` in the previous
    #   operation.
    #
    #   The data type for `ExclusiveStartKey` must be String, Number, or
    #   Binary. No set data types are allowed.
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @option params [String] :projection_expression
    #   A string that identifies one or more attributes to retrieve from the
    #   table. These attributes can include scalars, sets, or elements of a
    #   JSON document. The attributes in the expression must be separated by
    #   commas.
    #
    #   If no attribute names are specified, then all attributes will be
    #   returned. If any of the requested attributes are not found, they will
    #   not appear in the result.
    #
    #   For more information, see [Accessing Item Attributes][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [String] :filter_expression
    #   A string that contains conditions that DynamoDB applies after the
    #   `Query` operation, but before the data is returned to you. Items that
    #   do not satisfy the `FilterExpression` criteria are not returned.
    #
    #   A `FilterExpression` does not allow key attributes. You cannot define
    #   a filter expression based on a partition key or a sort key.
    #
    #   <note markdown="1"> A `FilterExpression` is applied after the items have already been
    #   read; the process of filtering does not consume any additional read
    #   capacity units.
    #
    #    </note>
    #
    #   For more information, see [Filter Expressions][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.FilterExpression.html
    #
    # @option params [String] :key_condition_expression
    #   The condition that specifies the key values for items to be retrieved
    #   by the `Query` action.
    #
    #   The condition must perform an equality test on a single partition key
    #   value.
    #
    #   The condition can optionally perform one of several comparison tests
    #   on a single sort key value. This allows `Query` to retrieve one item
    #   with a given partition key value and sort key value, or several items
    #   that have the same partition key value but different sort key values.
    #
    #   The partition key equality test is required, and must be specified in
    #   the following format:
    #
    #   `partitionKeyName` *=* `:partitionkeyval`
    #
    #   If you also want to provide a condition for the sort key, it must be
    #   combined using `AND` with the condition for the sort key. Following is
    #   an example, using the **=** comparison operator for the sort key:
    #
    #   `partitionKeyName` `=` `:partitionkeyval` `AND` `sortKeyName` `=`
    #   `:sortkeyval`
    #
    #   Valid comparisons for the sort key condition are as follows:
    #
    #   * `sortKeyName` `=` `:sortkeyval` - true if the sort key value is
    #     equal to `:sortkeyval`.
    #
    #   * `sortKeyName` `<` `:sortkeyval` - true if the sort key value is less
    #     than `:sortkeyval`.
    #
    #   * `sortKeyName` `<=` `:sortkeyval` - true if the sort key value is
    #     less than or equal to `:sortkeyval`.
    #
    #   * `sortKeyName` `>` `:sortkeyval` - true if the sort key value is
    #     greater than `:sortkeyval`.
    #
    #   * `sortKeyName` `>= ` `:sortkeyval` - true if the sort key value is
    #     greater than or equal to `:sortkeyval`.
    #
    #   * `sortKeyName` `BETWEEN` `:sortkeyval1` `AND` `:sortkeyval2` - true
    #     if the sort key value is greater than or equal to `:sortkeyval1`,
    #     and less than or equal to `:sortkeyval2`.
    #
    #   * `begins_with (` `sortKeyName`, `:sortkeyval` `)` - true if the sort
    #     key value begins with a particular operand. (You cannot use this
    #     function with a sort key that is of type Number.) Note that the
    #     function name `begins_with` is case-sensitive.
    #
    #   Use the `ExpressionAttributeValues` parameter to replace tokens such
    #   as `:partitionval` and `:sortval` with actual values at runtime.
    #
    #   You can optionally use the `ExpressionAttributeNames` parameter to
    #   replace the names of the partition key and sort key with placeholder
    #   tokens. This option might be necessary if an attribute name conflicts
    #   with a DynamoDB reserved word. For example, the following
    #   `KeyConditionExpression` parameter causes an error because *Size* is a
    #   reserved word:
    #
    #   * `Size = :myval`
    #
    #   ^
    #
    #   To work around this, define a placeholder (such a `#S`) to represent
    #   the attribute name *Size*. `KeyConditionExpression` then is as
    #   follows:
    #
    #   * `#S = :myval`
    #
    #   ^
    #
    #   For a list of reserved words, see [Reserved Words][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #   For more information on `ExpressionAttributeNames` and
    #   `ExpressionAttributeValues`, see [Using Placeholders for Attribute
    #   Names and Values][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html
    #
    # @option params [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using `ExpressionAttributeNames`:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB reserved
    #     word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`:
    #
    #   * `{"#P":"Percentile"}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
    #   values*, which are placeholders for the actual value at runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check whether
    #   the value of the *ProductStatus* attribute was one of the following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #   ":disc":{"S":"Discontinued"} }`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @return [Types::QueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryOutput#items #items} => Array&lt;Hash&lt;String,Types::AttributeValue&gt;&gt;
    #   * {Types::QueryOutput#count #count} => Integer
    #   * {Types::QueryOutput#scanned_count #scanned_count} => Integer
    #   * {Types::QueryOutput#last_evaluated_key #last_evaluated_key} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::QueryOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To query an item
    #
    #   # This example queries items in the Music table. The table has a partition key and sort key (Artist and SongTitle), but
    #   # this query only specifies the partition key value. It returns song titles by the artist named "No One You Know".
    #
    #   resp = client.query({
    #     expression_attribute_values: {
    #       ":v1" => "No One You Know", 
    #     }, 
    #     key_condition_expression: "Artist = :v1", 
    #     projection_expression: "SongTitle", 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     consumed_capacity: {
    #     }, 
    #     count: 2, 
    #     items: [
    #       {
    #         "SongTitle" => "Call Me Today", 
    #       }, 
    #     ], 
    #     scanned_count: 2, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query({
    #     table_name: "TableArn", # required
    #     index_name: "IndexName",
    #     select: "ALL_ATTRIBUTES", # accepts ALL_ATTRIBUTES, ALL_PROJECTED_ATTRIBUTES, SPECIFIC_ATTRIBUTES, COUNT
    #     attributes_to_get: ["AttributeName"],
    #     limit: 1,
    #     consistent_read: false,
    #     key_conditions: {
    #       "AttributeName" => {
    #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         comparison_operator: "EQ", # required, accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #       },
    #     },
    #     query_filter: {
    #       "AttributeName" => {
    #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         comparison_operator: "EQ", # required, accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #       },
    #     },
    #     conditional_operator: "AND", # accepts AND, OR
    #     scan_index_forward: false,
    #     exclusive_start_key: {
    #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #     projection_expression: "ProjectionExpression",
    #     filter_expression: "ConditionExpression",
    #     key_condition_expression: "KeyExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName",
    #     },
    #     expression_attribute_values: {
    #       "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0] #=> Hash
    #   resp.items[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.count #=> Integer
    #   resp.scanned_count #=> Integer
    #   resp.last_evaluated_key #=> Hash
    #   resp.last_evaluated_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.consumed_capacity.table_name #=> String
    #   resp.consumed_capacity.capacity_units #=> Float
    #   resp.consumed_capacity.read_capacity_units #=> Float
    #   resp.consumed_capacity.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes #=> Hash
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes #=> Hash
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Query AWS API Documentation
    #
    # @overload query(params = {})
    # @param [Hash] params ({})
    def query(params = {}, options = {})
      req = build_request(:query, params)
      req.send_request(options)
    end

    # Creates a new table from an existing backup. Any number of users can
    # execute up to 50 concurrent restores (any type of restore) in a given
    # account.
    #
    # You can call `RestoreTableFromBackup` at a maximum rate of 10 times
    # per second.
    #
    # You must manually set up the following on the restored table:
    #
    # * Auto scaling policies
    #
    # * IAM policies
    #
    # * Amazon CloudWatch metrics and alarms
    #
    # * Tags
    #
    # * Stream settings
    #
    # * Time to Live (TTL) settings
    #
    # @option params [required, String] :target_table_name
    #   The name of the new table to which the backup must be restored.
    #
    # @option params [required, String] :backup_arn
    #   The Amazon Resource Name (ARN) associated with the backup.
    #
    # @option params [String] :billing_mode_override
    #   The billing mode of the restored table.
    #
    # @option params [Array<Types::GlobalSecondaryIndex>] :global_secondary_index_override
    #   List of global secondary indexes for the restored table. The indexes
    #   provided should match existing secondary indexes. You can choose to
    #   exclude some or all of the indexes at the time of restore.
    #
    # @option params [Array<Types::LocalSecondaryIndex>] :local_secondary_index_override
    #   List of local secondary indexes for the restored table. The indexes
    #   provided should match existing secondary indexes. You can choose to
    #   exclude some or all of the indexes at the time of restore.
    #
    # @option params [Types::ProvisionedThroughput] :provisioned_throughput_override
    #   Provisioned throughput settings for the restored table.
    #
    # @option params [Types::OnDemandThroughput] :on_demand_throughput_override
    #   Sets the maximum number of read and write units for the specified
    #   on-demand table. If you use this parameter, you must specify
    #   `MaxReadRequestUnits`, `MaxWriteRequestUnits`, or both.
    #
    # @option params [Types::SSESpecification] :sse_specification_override
    #   The new server-side encryption settings for the restored table.
    #
    # @return [Types::RestoreTableFromBackupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreTableFromBackupOutput#table_description #table_description} => Types::TableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table_from_backup({
    #     target_table_name: "TableName", # required
    #     backup_arn: "BackupArn", # required
    #     billing_mode_override: "PROVISIONED", # accepts PROVISIONED, PAY_PER_REQUEST
    #     global_secondary_index_override: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH", # required, accepts HASH, RANGE
    #           },
    #         ],
    #         projection: { # required
    #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #           non_key_attributes: ["NonKeyAttributeName"],
    #         },
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         on_demand_throughput: {
    #           max_read_request_units: 1,
    #           max_write_request_units: 1,
    #         },
    #         warm_throughput: {
    #           read_units_per_second: 1,
    #           write_units_per_second: 1,
    #         },
    #       },
    #     ],
    #     local_secondary_index_override: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH", # required, accepts HASH, RANGE
    #           },
    #         ],
    #         projection: { # required
    #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #           non_key_attributes: ["NonKeyAttributeName"],
    #         },
    #       },
    #     ],
    #     provisioned_throughput_override: {
    #       read_capacity_units: 1, # required
    #       write_capacity_units: 1, # required
    #     },
    #     on_demand_throughput_override: {
    #       max_read_request_units: 1,
    #       max_write_request_units: 1,
    #     },
    #     sse_specification_override: {
    #       enabled: false,
    #       sse_type: "AES256", # accepts AES256, KMS
    #       kms_master_key_id: "KMSMasterKeyId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.table_description.attribute_definitions #=> Array
    #   resp.table_description.attribute_definitions[0].attribute_name #=> String
    #   resp.table_description.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
    #   resp.table_description.table_name #=> String
    #   resp.table_description.key_schema #=> Array
    #   resp.table_description.key_schema[0].attribute_name #=> String
    #   resp.table_description.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.creation_date_time #=> Time
    #   resp.table_description.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table_description.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table_description.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table_description.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table_description.table_size_bytes #=> Integer
    #   resp.table_description.item_count #=> Integer
    #   resp.table_description.table_arn #=> String
    #   resp.table_description.table_id #=> String
    #   resp.table_description.billing_mode_summary.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.table_description.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.table_description.local_secondary_indexes #=> Array
    #   resp.table_description.local_secondary_indexes[0].index_name #=> String
    #   resp.table_description.local_secondary_indexes[0].key_schema #=> Array
    #   resp.table_description.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table_description.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table_description.local_secondary_indexes[0].item_count #=> Integer
    #   resp.table_description.local_secondary_indexes[0].index_arn #=> String
    #   resp.table_description.global_secondary_indexes #=> Array
    #   resp.table_description.global_secondary_indexes[0].index_name #=> String
    #   resp.table_description.global_secondary_indexes[0].key_schema #=> Array
    #   resp.table_description.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table_description.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table_description.global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table_description.global_secondary_indexes[0].item_count #=> Integer
    #   resp.table_description.global_secondary_indexes[0].index_arn #=> String
    #   resp.table_description.global_secondary_indexes[0].on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.stream_specification.stream_enabled #=> Boolean
    #   resp.table_description.stream_specification.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
    #   resp.table_description.latest_stream_label #=> String
    #   resp.table_description.latest_stream_arn #=> String
    #   resp.table_description.global_table_version #=> String
    #   resp.table_description.replicas #=> Array
    #   resp.table_description.replicas[0].region_name #=> String
    #   resp.table_description.replicas[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.replicas[0].replica_status_description #=> String
    #   resp.table_description.replicas[0].replica_status_percent_progress #=> String
    #   resp.table_description.replicas[0].kms_master_key_id #=> String
    #   resp.table_description.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table_description.replicas[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.replicas[0].global_secondary_indexes #=> Array
    #   resp.table_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.table_description.replicas[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.table_description.replicas[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table_description.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.table_description.global_table_witnesses #=> Array
    #   resp.table_description.global_table_witnesses[0].region_name #=> String
    #   resp.table_description.global_table_witnesses[0].witness_status #=> String, one of "CREATING", "DELETING", "ACTIVE"
    #   resp.table_description.restore_summary.source_backup_arn #=> String
    #   resp.table_description.restore_summary.source_table_arn #=> String
    #   resp.table_description.restore_summary.restore_date_time #=> Time
    #   resp.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.table_description.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table_description.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table_description.sse_description.kms_master_key_arn #=> String
    #   resp.table_description.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.table_description.archival_summary.archival_date_time #=> Time
    #   resp.table_description.archival_summary.archival_reason #=> String
    #   resp.table_description.archival_summary.archival_backup_arn #=> String
    #   resp.table_description.table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table_description.table_class_summary.last_update_date_time #=> Time
    #   resp.table_description.deletion_protection_enabled #=> Boolean
    #   resp.table_description.on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table_description.on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table_description.warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.multi_region_consistency #=> String, one of "EVENTUAL", "STRONG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreTableFromBackup AWS API Documentation
    #
    # @overload restore_table_from_backup(params = {})
    # @param [Hash] params ({})
    def restore_table_from_backup(params = {}, options = {})
      req = build_request(:restore_table_from_backup, params)
      req.send_request(options)
    end

    # Restores the specified table to the specified point in time within
    # `EarliestRestorableDateTime` and `LatestRestorableDateTime`. You can
    # restore your table to any point in time in the last 35 days. You can
    # set the recovery period to any value between 1 and 35 days. Any number
    # of users can execute up to 50 concurrent restores (any type of
    # restore) in a given account.
    #
    # When you restore using point in time recovery, DynamoDB restores your
    # table data to the state based on the selected date and time
    # (day:hour:minute:second) to a new table.
    #
    # Along with data, the following are also included on the new restored
    # table using point in time recovery:
    #
    # * Global secondary indexes (GSIs)
    #
    # * Local secondary indexes (LSIs)
    #
    # * Provisioned read and write capacity
    #
    # * Encryption settings
    #
    #   All these settings come from the current settings of the source
    #   table at the time of restore.
    #
    # You must manually set up the following on the restored table:
    #
    # * Auto scaling policies
    #
    # * IAM policies
    #
    # * Amazon CloudWatch metrics and alarms
    #
    # * Tags
    #
    # * Stream settings
    #
    # * Time to Live (TTL) settings
    #
    # * Point in time recovery settings
    #
    # @option params [String] :source_table_arn
    #   The DynamoDB table that will be restored. This value is an Amazon
    #   Resource Name (ARN).
    #
    # @option params [String] :source_table_name
    #   Name of the source table that is being restored.
    #
    # @option params [required, String] :target_table_name
    #   The name of the new table to which it must be restored to.
    #
    # @option params [Boolean] :use_latest_restorable_time
    #   Restore the table to the latest possible time.
    #   `LatestRestorableDateTime` is typically 5 minutes before the current
    #   time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :restore_date_time
    #   Time in the past to restore the table to.
    #
    # @option params [String] :billing_mode_override
    #   The billing mode of the restored table.
    #
    # @option params [Array<Types::GlobalSecondaryIndex>] :global_secondary_index_override
    #   List of global secondary indexes for the restored table. The indexes
    #   provided should match existing secondary indexes. You can choose to
    #   exclude some or all of the indexes at the time of restore.
    #
    # @option params [Array<Types::LocalSecondaryIndex>] :local_secondary_index_override
    #   List of local secondary indexes for the restored table. The indexes
    #   provided should match existing secondary indexes. You can choose to
    #   exclude some or all of the indexes at the time of restore.
    #
    # @option params [Types::ProvisionedThroughput] :provisioned_throughput_override
    #   Provisioned throughput settings for the restored table.
    #
    # @option params [Types::OnDemandThroughput] :on_demand_throughput_override
    #   Sets the maximum number of read and write units for the specified
    #   on-demand table. If you use this parameter, you must specify
    #   `MaxReadRequestUnits`, `MaxWriteRequestUnits`, or both.
    #
    # @option params [Types::SSESpecification] :sse_specification_override
    #   The new server-side encryption settings for the restored table.
    #
    # @return [Types::RestoreTableToPointInTimeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreTableToPointInTimeOutput#table_description #table_description} => Types::TableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_table_to_point_in_time({
    #     source_table_arn: "TableArn",
    #     source_table_name: "TableName",
    #     target_table_name: "TableName", # required
    #     use_latest_restorable_time: false,
    #     restore_date_time: Time.now,
    #     billing_mode_override: "PROVISIONED", # accepts PROVISIONED, PAY_PER_REQUEST
    #     global_secondary_index_override: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH", # required, accepts HASH, RANGE
    #           },
    #         ],
    #         projection: { # required
    #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #           non_key_attributes: ["NonKeyAttributeName"],
    #         },
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         on_demand_throughput: {
    #           max_read_request_units: 1,
    #           max_write_request_units: 1,
    #         },
    #         warm_throughput: {
    #           read_units_per_second: 1,
    #           write_units_per_second: 1,
    #         },
    #       },
    #     ],
    #     local_secondary_index_override: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH", # required, accepts HASH, RANGE
    #           },
    #         ],
    #         projection: { # required
    #           projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #           non_key_attributes: ["NonKeyAttributeName"],
    #         },
    #       },
    #     ],
    #     provisioned_throughput_override: {
    #       read_capacity_units: 1, # required
    #       write_capacity_units: 1, # required
    #     },
    #     on_demand_throughput_override: {
    #       max_read_request_units: 1,
    #       max_write_request_units: 1,
    #     },
    #     sse_specification_override: {
    #       enabled: false,
    #       sse_type: "AES256", # accepts AES256, KMS
    #       kms_master_key_id: "KMSMasterKeyId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.table_description.attribute_definitions #=> Array
    #   resp.table_description.attribute_definitions[0].attribute_name #=> String
    #   resp.table_description.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
    #   resp.table_description.table_name #=> String
    #   resp.table_description.key_schema #=> Array
    #   resp.table_description.key_schema[0].attribute_name #=> String
    #   resp.table_description.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.creation_date_time #=> Time
    #   resp.table_description.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table_description.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table_description.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table_description.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table_description.table_size_bytes #=> Integer
    #   resp.table_description.item_count #=> Integer
    #   resp.table_description.table_arn #=> String
    #   resp.table_description.table_id #=> String
    #   resp.table_description.billing_mode_summary.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.table_description.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.table_description.local_secondary_indexes #=> Array
    #   resp.table_description.local_secondary_indexes[0].index_name #=> String
    #   resp.table_description.local_secondary_indexes[0].key_schema #=> Array
    #   resp.table_description.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table_description.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table_description.local_secondary_indexes[0].item_count #=> Integer
    #   resp.table_description.local_secondary_indexes[0].index_arn #=> String
    #   resp.table_description.global_secondary_indexes #=> Array
    #   resp.table_description.global_secondary_indexes[0].index_name #=> String
    #   resp.table_description.global_secondary_indexes[0].key_schema #=> Array
    #   resp.table_description.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table_description.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table_description.global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table_description.global_secondary_indexes[0].item_count #=> Integer
    #   resp.table_description.global_secondary_indexes[0].index_arn #=> String
    #   resp.table_description.global_secondary_indexes[0].on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.stream_specification.stream_enabled #=> Boolean
    #   resp.table_description.stream_specification.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
    #   resp.table_description.latest_stream_label #=> String
    #   resp.table_description.latest_stream_arn #=> String
    #   resp.table_description.global_table_version #=> String
    #   resp.table_description.replicas #=> Array
    #   resp.table_description.replicas[0].region_name #=> String
    #   resp.table_description.replicas[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.replicas[0].replica_status_description #=> String
    #   resp.table_description.replicas[0].replica_status_percent_progress #=> String
    #   resp.table_description.replicas[0].kms_master_key_id #=> String
    #   resp.table_description.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table_description.replicas[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.replicas[0].global_secondary_indexes #=> Array
    #   resp.table_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.table_description.replicas[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.table_description.replicas[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table_description.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.table_description.global_table_witnesses #=> Array
    #   resp.table_description.global_table_witnesses[0].region_name #=> String
    #   resp.table_description.global_table_witnesses[0].witness_status #=> String, one of "CREATING", "DELETING", "ACTIVE"
    #   resp.table_description.restore_summary.source_backup_arn #=> String
    #   resp.table_description.restore_summary.source_table_arn #=> String
    #   resp.table_description.restore_summary.restore_date_time #=> Time
    #   resp.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.table_description.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table_description.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table_description.sse_description.kms_master_key_arn #=> String
    #   resp.table_description.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.table_description.archival_summary.archival_date_time #=> Time
    #   resp.table_description.archival_summary.archival_reason #=> String
    #   resp.table_description.archival_summary.archival_backup_arn #=> String
    #   resp.table_description.table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table_description.table_class_summary.last_update_date_time #=> Time
    #   resp.table_description.deletion_protection_enabled #=> Boolean
    #   resp.table_description.on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table_description.on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table_description.warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.multi_region_consistency #=> String, one of "EVENTUAL", "STRONG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/RestoreTableToPointInTime AWS API Documentation
    #
    # @overload restore_table_to_point_in_time(params = {})
    # @param [Hash] params ({})
    def restore_table_to_point_in_time(params = {}, options = {})
      req = build_request(:restore_table_to_point_in_time, params)
      req.send_request(options)
    end

    # The `Scan` operation returns one or more items and item attributes by
    # accessing every item in a table or a secondary index. To have DynamoDB
    # return fewer items, you can provide a `FilterExpression` operation.
    #
    # If the total size of scanned items exceeds the maximum dataset size
    # limit of 1 MB, the scan completes and results are returned to the
    # user. The `LastEvaluatedKey` value is also returned and the requestor
    # can use the `LastEvaluatedKey` to continue the scan in a subsequent
    # operation. Each scan response also includes number of items that were
    # scanned (ScannedCount) as part of the request. If using a
    # `FilterExpression`, a scan result can result in no items meeting the
    # criteria and the `Count` will result in zero. If you did not use a
    # `FilterExpression` in the scan request, then `Count` is the same as
    # `ScannedCount`.
    #
    # <note markdown="1"> `Count` and `ScannedCount` only return the count of items specific to
    # a single scan request and, unless the table is less than 1MB, do not
    # represent the total number of items in the table.
    #
    #  </note>
    #
    # A single `Scan` operation first reads up to the maximum number of
    # items set (if using the `Limit` parameter) or a maximum of 1 MB of
    # data and then applies any filtering to the results if a
    # `FilterExpression` is provided. If `LastEvaluatedKey` is present in
    # the response, pagination is required to complete the full table scan.
    # For more information, see [Paginating the Results][1] in the *Amazon
    # DynamoDB Developer Guide*.
    #
    # `Scan` operations proceed sequentially; however, for faster
    # performance on a large table or secondary index, applications can
    # request a parallel `Scan` operation by providing the `Segment` and
    # `TotalSegments` parameters. For more information, see [Parallel
    # Scan][2] in the *Amazon DynamoDB Developer Guide*.
    #
    # By default, a `Scan` uses eventually consistent reads when accessing
    # the items in a table. Therefore, the results from an eventually
    # consistent `Scan` may not include the latest item changes at the time
    # the scan iterates through each item in the table. If you require a
    # strongly consistent read of each item as the scan iterates through the
    # items in the table, you can set the `ConsistentRead` parameter to
    # true. Strong consistency only relates to the consistency of the read
    # at the item level.
    #
    # <note markdown="1"> DynamoDB does not provide snapshot isolation for a scan operation when
    # the `ConsistentRead` parameter is set to true. Thus, a DynamoDB scan
    # operation does not guarantee that all reads in a scan see a consistent
    # snapshot of the table when the scan operation was requested.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination
    # [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan
    #
    # @option params [required, String] :table_name
    #   The name of the table containing the requested items or if you provide
    #   `IndexName`, the name of the table to which that index belongs.
    #
    #   You can also provide the Amazon Resource Name (ARN) of the table in
    #   this parameter.
    #
    # @option params [String] :index_name
    #   The name of a secondary index to scan. This index can be any local
    #   secondary index or global secondary index. Note that if you use the
    #   `IndexName` parameter, you must also provide `TableName`.
    #
    # @option params [Array<String>] :attributes_to_get
    #   This is a legacy parameter. Use `ProjectionExpression` instead. For
    #   more information, see [AttributesToGet][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html
    #
    # @option params [Integer] :limit
    #   The maximum number of items to evaluate (not necessarily the number of
    #   matching items). If DynamoDB processes the number of items up to the
    #   limit while processing the results, it stops the operation and returns
    #   the matching values up to that point, and a key in `LastEvaluatedKey`
    #   to apply in a subsequent operation, so that you can pick up where you
    #   left off. Also, if the processed dataset size exceeds 1 MB before
    #   DynamoDB reaches this limit, it stops the operation and returns the
    #   matching values up to the limit, and a key in `LastEvaluatedKey` to
    #   apply in a subsequent operation to continue the operation. For more
    #   information, see [Working with Queries][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html
    #
    # @option params [String] :select
    #   The attributes to be returned in the result. You can retrieve all item
    #   attributes, specific item attributes, the count of matching items, or
    #   in the case of an index, some or all of the attributes projected into
    #   the index.
    #
    #   * `ALL_ATTRIBUTES` - Returns all of the item attributes from the
    #     specified table or index. If you query a local secondary index, then
    #     for each matching item in the index, DynamoDB fetches the entire
    #     item from the parent table. If the index is configured to project
    #     all item attributes, then all of the data can be obtained from the
    #     local secondary index, and no fetching is required.
    #
    #   * `ALL_PROJECTED_ATTRIBUTES` - Allowed only when querying an index.
    #     Retrieves all attributes that have been projected into the index. If
    #     the index is configured to project all attributes, this return value
    #     is equivalent to specifying `ALL_ATTRIBUTES`.
    #
    #   * `COUNT` - Returns the number of matching items, rather than the
    #     matching items themselves. Note that this uses the same quantity of
    #     read capacity units as getting the items, and is subject to the same
    #     item size calculations.
    #
    #   * `SPECIFIC_ATTRIBUTES` - Returns only the attributes listed in
    #     `ProjectionExpression`. This return value is equivalent to
    #     specifying `ProjectionExpression` without specifying any value for
    #     `Select`.
    #
    #     If you query or scan a local secondary index and request only
    #     attributes that are projected into that index, the operation reads
    #     only the index and not the table. If any of the requested attributes
    #     are not projected into the local secondary index, DynamoDB fetches
    #     each of these attributes from the parent table. This extra fetching
    #     incurs additional throughput cost and latency.
    #
    #     If you query or scan a global secondary index, you can only request
    #     attributes that are projected into the index. Global secondary index
    #     queries cannot fetch attributes from the parent table.
    #
    #   If neither `Select` nor `ProjectionExpression` are specified, DynamoDB
    #   defaults to `ALL_ATTRIBUTES` when accessing a table, and
    #   `ALL_PROJECTED_ATTRIBUTES` when accessing an index. You cannot use
    #   both `Select` and `ProjectionExpression` together in a single request,
    #   unless the value for `Select` is `SPECIFIC_ATTRIBUTES`. (This usage is
    #   equivalent to specifying `ProjectionExpression` without any value for
    #   `Select`.)
    #
    #   <note markdown="1"> If you use the `ProjectionExpression` parameter, then the value for
    #   `Select` can only be `SPECIFIC_ATTRIBUTES`. Any other value for
    #   `Select` will return an error.
    #
    #    </note>
    #
    # @option params [Hash<String,Types::Condition>] :scan_filter
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ScanFilter][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html
    #
    # @option params [String] :conditional_operator
    #   This is a legacy parameter. Use `FilterExpression` instead. For more
    #   information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :exclusive_start_key
    #   The primary key of the first item that this operation will evaluate.
    #   Use the value that was returned for `LastEvaluatedKey` in the previous
    #   operation.
    #
    #   The data type for `ExclusiveStartKey` must be String, Number or
    #   Binary. No set data types are allowed.
    #
    #   In a parallel scan, a `Scan` request that includes `ExclusiveStartKey`
    #   must specify the same segment whose previous `Scan` returned the
    #   corresponding value of `LastEvaluatedKey`.
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @option params [Integer] :total_segments
    #   For a parallel `Scan` request, `TotalSegments` represents the total
    #   number of segments into which the `Scan` operation will be divided.
    #   The value of `TotalSegments` corresponds to the number of application
    #   workers that will perform the parallel scan. For example, if you want
    #   to use four application threads to scan a table or an index, specify a
    #   `TotalSegments` value of 4.
    #
    #   The value for `TotalSegments` must be greater than or equal to 1, and
    #   less than or equal to 1000000. If you specify a `TotalSegments` value
    #   of 1, the `Scan` operation will be sequential rather than parallel.
    #
    #   If you specify `TotalSegments`, you must also specify `Segment`.
    #
    # @option params [Integer] :segment
    #   For a parallel `Scan` request, `Segment` identifies an individual
    #   segment to be scanned by an application worker.
    #
    #   Segment IDs are zero-based, so the first segment is always 0. For
    #   example, if you want to use four application threads to scan a table
    #   or an index, then the first thread specifies a `Segment` value of 0,
    #   the second thread specifies 1, and so on.
    #
    #   The value of `LastEvaluatedKey` returned from a parallel `Scan`
    #   request must be used as `ExclusiveStartKey` with the same segment ID
    #   in a subsequent `Scan` operation.
    #
    #   The value for `Segment` must be greater than or equal to 0, and less
    #   than the value provided for `TotalSegments`.
    #
    #   If you provide `Segment`, you must also provide `TotalSegments`.
    #
    # @option params [String] :projection_expression
    #   A string that identifies one or more attributes to retrieve from the
    #   specified table or index. These attributes can include scalars, sets,
    #   or elements of a JSON document. The attributes in the expression must
    #   be separated by commas.
    #
    #   If no attribute names are specified, then all attributes will be
    #   returned. If any of the requested attributes are not found, they will
    #   not appear in the result.
    #
    #   For more information, see [Specifying Item Attributes][1] in the
    #   *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [String] :filter_expression
    #   A string that contains conditions that DynamoDB applies after the
    #   `Scan` operation, but before the data is returned to you. Items that
    #   do not satisfy the `FilterExpression` criteria are not returned.
    #
    #   <note markdown="1"> A `FilterExpression` is applied after the items have already been
    #   read; the process of filtering does not consume any additional read
    #   capacity units.
    #
    #    </note>
    #
    #   For more information, see [Filter Expressions][1] in the *Amazon
    #   DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.FilterExpression
    #
    # @option params [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using `ExpressionAttributeNames`:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB reserved
    #     word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*). To work around this, you could specify the
    #   following for `ExpressionAttributeNames`:
    #
    #   * `{"#P":"Percentile"}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
    #   values*, which are placeholders for the actual value at runtime.
    #
    #    </note>
    #
    #   For more information on expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check whether
    #   the value of the `ProductStatus` attribute was one of the following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #   ":disc":{"S":"Discontinued"} }`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [Boolean] :consistent_read
    #   A Boolean value that determines the read consistency model during the
    #   scan:
    #
    #   * If `ConsistentRead` is `false`, then the data returned from `Scan`
    #     might not contain the results from other recently completed write
    #     operations (`PutItem`, `UpdateItem`, or `DeleteItem`).
    #
    #   * If `ConsistentRead` is `true`, then all of the write operations that
    #     completed before the `Scan` began are guaranteed to be contained in
    #     the `Scan` response.
    #
    #   The default setting for `ConsistentRead` is `false`.
    #
    #   The `ConsistentRead` parameter is not supported on global secondary
    #   indexes. If you scan a global secondary index with `ConsistentRead`
    #   set to true, you will receive a `ValidationException`.
    #
    # @return [Types::ScanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScanOutput#items #items} => Array&lt;Hash&lt;String,Types::AttributeValue&gt;&gt;
    #   * {Types::ScanOutput#count #count} => Integer
    #   * {Types::ScanOutput#scanned_count #scanned_count} => Integer
    #   * {Types::ScanOutput#last_evaluated_key #last_evaluated_key} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::ScanOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To scan a table
    #
    #   # This example scans the entire Music table, and then narrows the results to songs by the artist "No One You Know". For
    #   # each item, only the album title and song title are returned.
    #
    #   resp = client.scan({
    #     expression_attribute_names: {
    #       "#AT" => "AlbumTitle", 
    #       "#ST" => "SongTitle", 
    #     }, 
    #     expression_attribute_values: {
    #       ":a" => "No One You Know", 
    #     }, 
    #     filter_expression: "Artist = :a", 
    #     projection_expression: "#ST, #AT", 
    #     table_name: "Music", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     consumed_capacity: {
    #     }, 
    #     count: 2, 
    #     items: [
    #       {
    #         "AlbumTitle" => "Somewhat Famous", 
    #         "SongTitle" => "Call Me Today", 
    #       }, 
    #       {
    #         "AlbumTitle" => "Blue Sky Blues", 
    #         "SongTitle" => "Scared of My Shadow", 
    #       }, 
    #     ], 
    #     scanned_count: 3, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.scan({
    #     table_name: "TableArn", # required
    #     index_name: "IndexName",
    #     attributes_to_get: ["AttributeName"],
    #     limit: 1,
    #     select: "ALL_ATTRIBUTES", # accepts ALL_ATTRIBUTES, ALL_PROJECTED_ATTRIBUTES, SPECIFIC_ATTRIBUTES, COUNT
    #     scan_filter: {
    #       "AttributeName" => {
    #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         comparison_operator: "EQ", # required, accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #       },
    #     },
    #     conditional_operator: "AND", # accepts AND, OR
    #     exclusive_start_key: {
    #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #     total_segments: 1,
    #     segment: 1,
    #     projection_expression: "ProjectionExpression",
    #     filter_expression: "ConditionExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName",
    #     },
    #     expression_attribute_values: {
    #       "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     consistent_read: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0] #=> Hash
    #   resp.items[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.count #=> Integer
    #   resp.scanned_count #=> Integer
    #   resp.last_evaluated_key #=> Hash
    #   resp.last_evaluated_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.consumed_capacity.table_name #=> String
    #   resp.consumed_capacity.capacity_units #=> Float
    #   resp.consumed_capacity.read_capacity_units #=> Float
    #   resp.consumed_capacity.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes #=> Hash
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes #=> Hash
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/Scan AWS API Documentation
    #
    # @overload scan(params = {})
    # @param [Hash] params ({})
    def scan(params = {}, options = {})
      req = build_request(:scan, params)
      req.send_request(options)
    end

    # Associate a set of tags with an Amazon DynamoDB resource. You can then
    # activate these user-defined tags so that they appear on the Billing
    # and Cost Management console for cost allocation tracking. You can call
    # TagResource up to five times per second, per account.
    #
    # * `TagResource` is an asynchronous operation. If you issue a
    #   ListTagsOfResource request immediately after a `TagResource`
    #   request, DynamoDB might return your previous tag set, if there was
    #   one, or an empty tag set. This is because `ListTagsOfResource` uses
    #   an eventually consistent query, and the metadata for your tags or
    #   table might not be available at that moment. Wait for a few seconds,
    #   and then try the `ListTagsOfResource` request again.
    #
    # * The application or removal of tags using `TagResource` and
    #   `UntagResource` APIs is eventually consistent. `ListTagsOfResource`
    #   API will only reflect the changes after a few seconds.
    #
    # For an overview on tagging DynamoDB resources, see [Tagging for
    # DynamoDB][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
    #
    # @option params [required, String] :resource_arn
    #   Identifies the Amazon DynamoDB resource to which tags should be added.
    #   This value is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the Amazon DynamoDB resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArnString", # required
    #     tags: [ # required
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # `TransactGetItems` is a synchronous operation that atomically
    # retrieves multiple items from one or more tables (but not from
    # indexes) in a single account and Region. A `TransactGetItems` call can
    # contain up to 100 `TransactGetItem` objects, each of which contains a
    # `Get` structure that specifies an item to retrieve from a table in the
    # account and Region. A call to `TransactGetItems` cannot retrieve items
    # from tables in more than one Amazon Web Services account or Region.
    # The aggregate size of the items in the transaction cannot exceed 4 MB.
    #
    # DynamoDB rejects the entire `TransactGetItems` request if any of the
    # following is true:
    #
    # * A conflicting operation is in the process of updating an item to be
    #   read.
    #
    # * There is insufficient provisioned capacity for the transaction to be
    #   completed.
    #
    # * There is a user error, such as an invalid data format.
    #
    # * The aggregate size of the items in the transaction exceeded 4 MB.
    #
    # @option params [required, Array<Types::TransactGetItem>] :transact_items
    #   An ordered array of up to 100 `TransactGetItem` objects, each of which
    #   contains a `Get` structure.
    #
    # @option params [String] :return_consumed_capacity
    #   A value of `TOTAL` causes consumed capacity information to be
    #   returned, and a value of `NONE` prevents that information from being
    #   returned. No other value is valid.
    #
    # @return [Types::TransactGetItemsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TransactGetItemsOutput#consumed_capacity #consumed_capacity} => Array&lt;Types::ConsumedCapacity&gt;
    #   * {Types::TransactGetItemsOutput#responses #responses} => Array&lt;Types::ItemResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transact_get_items({
    #     transact_items: [ # required
    #       {
    #         get: { # required
    #           key: { # required
    #             "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           table_name: "TableArn", # required
    #           projection_expression: "ProjectionExpression",
    #           expression_attribute_names: {
    #             "ExpressionAttributeNameVariable" => "AttributeName",
    #           },
    #         },
    #       },
    #     ],
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.consumed_capacity #=> Array
    #   resp.consumed_capacity[0].table_name #=> String
    #   resp.consumed_capacity[0].capacity_units #=> Float
    #   resp.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.responses #=> Array
    #   resp.responses[0].item #=> Hash
    #   resp.responses[0].item["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/TransactGetItems AWS API Documentation
    #
    # @overload transact_get_items(params = {})
    # @param [Hash] params ({})
    def transact_get_items(params = {}, options = {})
      req = build_request(:transact_get_items, params)
      req.send_request(options)
    end

    # `TransactWriteItems` is a synchronous write operation that groups up
    # to 100 action requests. These actions can target items in different
    # tables, but not in different Amazon Web Services accounts or Regions,
    # and no two actions can target the same item. For example, you cannot
    # both `ConditionCheck` and `Update` the same item. The aggregate size
    # of the items in the transaction cannot exceed 4 MB.
    #
    # The actions are completed atomically so that either all of them
    # succeed, or all of them fail. They are defined by the following
    # objects:
    #
    # * `Put`  —   Initiates a `PutItem` operation to write a new item. This
    #   structure specifies the primary key of the item to be written, the
    #   name of the table to write it in, an optional condition expression
    #   that must be satisfied for the write to succeed, a list of the
    #   item's attributes, and a field indicating whether to retrieve the
    #   item's attributes if the condition is not met.
    #
    # * `Update`  —   Initiates an `UpdateItem` operation to update an
    #   existing item. This structure specifies the primary key of the item
    #   to be updated, the name of the table where it resides, an optional
    #   condition expression that must be satisfied for the update to
    #   succeed, an expression that defines one or more attributes to be
    #   updated, and a field indicating whether to retrieve the item's
    #   attributes if the condition is not met.
    #
    # * `Delete`  —   Initiates a `DeleteItem` operation to delete an
    #   existing item. This structure specifies the primary key of the item
    #   to be deleted, the name of the table where it resides, an optional
    #   condition expression that must be satisfied for the deletion to
    #   succeed, and a field indicating whether to retrieve the item's
    #   attributes if the condition is not met.
    #
    # * `ConditionCheck`  —   Applies a condition to an item that is not
    #   being modified by the transaction. This structure specifies the
    #   primary key of the item to be checked, the name of the table where
    #   it resides, a condition expression that must be satisfied for the
    #   transaction to succeed, and a field indicating whether to retrieve
    #   the item's attributes if the condition is not met.
    #
    # DynamoDB rejects the entire `TransactWriteItems` request if any of the
    # following is true:
    #
    # * A condition in one of the condition expressions is not met.
    #
    # * An ongoing operation is in the process of updating the same item.
    #
    # * There is insufficient provisioned capacity for the transaction to be
    #   completed.
    #
    # * An item size becomes too large (bigger than 400 KB), a local
    #   secondary index (LSI) becomes too large, or a similar validation
    #   error occurs because of changes made by the transaction.
    #
    # * The aggregate size of the items in the transaction exceeds 4 MB.
    #
    # * There is a user error, such as an invalid data format.
    #
    # @option params [required, Array<Types::TransactWriteItem>] :transact_items
    #   An ordered array of up to 100 `TransactWriteItem` objects, each of
    #   which contains a `ConditionCheck`, `Put`, `Update`, or `Delete`
    #   object. These can operate on items in different tables, but the tables
    #   must reside in the same Amazon Web Services account and Region, and no
    #   two of them can operate on the same item.
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @option params [String] :return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections (if
    #   any), that were modified during the operation and are returned in the
    #   response. If set to `NONE` (the default), no statistics are returned.
    #
    # @option params [String] :client_request_token
    #   Providing a `ClientRequestToken` makes the call to
    #   `TransactWriteItems` idempotent, meaning that multiple identical calls
    #   have the same effect as one single call.
    #
    #   Although multiple identical calls using the same client request token
    #   produce the same result on the server (no side effects), the responses
    #   to the calls might not be the same. If the `ReturnConsumedCapacity`
    #   parameter is set, then the initial `TransactWriteItems` call returns
    #   the amount of write capacity units consumed in making the changes.
    #   Subsequent `TransactWriteItems` calls with the same client token
    #   return the number of read capacity units consumed in reading the item.
    #
    #   A client request token is valid for 10 minutes after the first request
    #   that uses it is completed. After 10 minutes, any request with the same
    #   client token is treated as a new request. Do not resubmit the same
    #   request with the same client token for more than 10 minutes, or the
    #   result might not be idempotent.
    #
    #   If you submit a request with the same client token but a change in
    #   other parameters within the 10-minute idempotency window, DynamoDB
    #   returns an `IdempotentParameterMismatch` exception.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::TransactWriteItemsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TransactWriteItemsOutput#consumed_capacity #consumed_capacity} => Array&lt;Types::ConsumedCapacity&gt;
    #   * {Types::TransactWriteItemsOutput#item_collection_metrics #item_collection_metrics} => Hash&lt;String,Array&lt;Types::ItemCollectionMetrics&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transact_write_items({
    #     transact_items: [ # required
    #       {
    #         condition_check: {
    #           key: { # required
    #             "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           table_name: "TableArn", # required
    #           condition_expression: "ConditionExpression", # required
    #           expression_attribute_names: {
    #             "ExpressionAttributeNameVariable" => "AttributeName",
    #           },
    #           expression_attribute_values: {
    #             "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           return_values_on_condition_check_failure: "ALL_OLD", # accepts ALL_OLD, NONE
    #         },
    #         put: {
    #           item: { # required
    #             "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           table_name: "TableArn", # required
    #           condition_expression: "ConditionExpression",
    #           expression_attribute_names: {
    #             "ExpressionAttributeNameVariable" => "AttributeName",
    #           },
    #           expression_attribute_values: {
    #             "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           return_values_on_condition_check_failure: "ALL_OLD", # accepts ALL_OLD, NONE
    #         },
    #         delete: {
    #           key: { # required
    #             "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           table_name: "TableArn", # required
    #           condition_expression: "ConditionExpression",
    #           expression_attribute_names: {
    #             "ExpressionAttributeNameVariable" => "AttributeName",
    #           },
    #           expression_attribute_values: {
    #             "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           return_values_on_condition_check_failure: "ALL_OLD", # accepts ALL_OLD, NONE
    #         },
    #         update: {
    #           key: { # required
    #             "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           update_expression: "UpdateExpression", # required
    #           table_name: "TableArn", # required
    #           condition_expression: "ConditionExpression",
    #           expression_attribute_names: {
    #             "ExpressionAttributeNameVariable" => "AttributeName",
    #           },
    #           expression_attribute_values: {
    #             "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #           },
    #           return_values_on_condition_check_failure: "ALL_OLD", # accepts ALL_OLD, NONE
    #         },
    #       },
    #     ],
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #     return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.consumed_capacity #=> Array
    #   resp.consumed_capacity[0].table_name #=> String
    #   resp.consumed_capacity[0].capacity_units #=> Float
    #   resp.consumed_capacity[0].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.read_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.write_capacity_units #=> Float
    #   resp.consumed_capacity[0].table.capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes #=> Hash
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity[0].global_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.item_collection_metrics #=> Hash
    #   resp.item_collection_metrics["TableArn"] #=> Array
    #   resp.item_collection_metrics["TableArn"][0].item_collection_key #=> Hash
    #   resp.item_collection_metrics["TableArn"][0].item_collection_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.item_collection_metrics["TableArn"][0].size_estimate_range_gb #=> Array
    #   resp.item_collection_metrics["TableArn"][0].size_estimate_range_gb[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/TransactWriteItems AWS API Documentation
    #
    # @overload transact_write_items(params = {})
    # @param [Hash] params ({})
    def transact_write_items(params = {}, options = {})
      req = build_request(:transact_write_items, params)
      req.send_request(options)
    end

    # Removes the association of tags from an Amazon DynamoDB resource. You
    # can call `UntagResource` up to five times per second, per account.
    #
    # * `UntagResource` is an asynchronous operation. If you issue a
    #   ListTagsOfResource request immediately after an `UntagResource`
    #   request, DynamoDB might return your previous tag set, if there was
    #   one, or an empty tag set. This is because `ListTagsOfResource` uses
    #   an eventually consistent query, and the metadata for your tags or
    #   table might not be available at that moment. Wait for a few seconds,
    #   and then try the `ListTagsOfResource` request again.
    #
    # * The application or removal of tags using `TagResource` and
    #   `UntagResource` APIs is eventually consistent. `ListTagsOfResource`
    #   API will only reflect the changes after a few seconds.
    #
    # For an overview on tagging DynamoDB resources, see [Tagging for
    # DynamoDB][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The DynamoDB resource that the tags will be removed from. This value
    #   is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys. Existing tags of the resource whose keys are
    #   members of this list will be removed from the DynamoDB resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArnString", # required
    #     tag_keys: ["TagKeyString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # `UpdateContinuousBackups` enables or disables point in time recovery
    # for the specified table. A successful `UpdateContinuousBackups` call
    # returns the current `ContinuousBackupsDescription`. Continuous backups
    # are `ENABLED` on all tables at table creation. If point in time
    # recovery is enabled, `PointInTimeRecoveryStatus` will be set to
    # ENABLED.
    #
    # Once continuous backups and point in time recovery are enabled, you
    # can restore to any point in time within `EarliestRestorableDateTime`
    # and `LatestRestorableDateTime`.
    #
    # `LatestRestorableDateTime` is typically 5 minutes before the current
    # time. You can restore your table to any point in time in the last 35
    # days. You can set the `RecoveryPeriodInDays` to any value between 1
    # and 35 days.
    #
    # @option params [required, String] :table_name
    #   The name of the table. You can also provide the Amazon Resource Name
    #   (ARN) of the table in this parameter.
    #
    # @option params [required, Types::PointInTimeRecoverySpecification] :point_in_time_recovery_specification
    #   Represents the settings used to enable point in time recovery.
    #
    # @return [Types::UpdateContinuousBackupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContinuousBackupsOutput#continuous_backups_description #continuous_backups_description} => Types::ContinuousBackupsDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_continuous_backups({
    #     table_name: "TableArn", # required
    #     point_in_time_recovery_specification: { # required
    #       point_in_time_recovery_enabled: false, # required
    #       recovery_period_in_days: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.continuous_backups_description.continuous_backups_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.continuous_backups_description.point_in_time_recovery_description.point_in_time_recovery_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.continuous_backups_description.point_in_time_recovery_description.recovery_period_in_days #=> Integer
    #   resp.continuous_backups_description.point_in_time_recovery_description.earliest_restorable_date_time #=> Time
    #   resp.continuous_backups_description.point_in_time_recovery_description.latest_restorable_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateContinuousBackups AWS API Documentation
    #
    # @overload update_continuous_backups(params = {})
    # @param [Hash] params ({})
    def update_continuous_backups(params = {}, options = {})
      req = build_request(:update_continuous_backups, params)
      req.send_request(options)
    end

    # Updates the status for contributor insights for a specific table or
    # index. CloudWatch Contributor Insights for DynamoDB graphs display the
    # partition key and (if applicable) sort key of frequently accessed
    # items and frequently throttled items in plaintext. If you require the
    # use of Amazon Web Services Key Management Service (KMS) to encrypt
    # this table’s partition key and sort key data with an Amazon Web
    # Services managed key or customer managed key, you should not enable
    # CloudWatch Contributor Insights for DynamoDB for this table.
    #
    # @option params [required, String] :table_name
    #   The name of the table. You can also provide the Amazon Resource Name
    #   (ARN) of the table in this parameter.
    #
    # @option params [String] :index_name
    #   The global secondary index name, if applicable.
    #
    # @option params [required, String] :contributor_insights_action
    #   Represents the contributor insights action.
    #
    # @return [Types::UpdateContributorInsightsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContributorInsightsOutput#table_name #table_name} => String
    #   * {Types::UpdateContributorInsightsOutput#index_name #index_name} => String
    #   * {Types::UpdateContributorInsightsOutput#contributor_insights_status #contributor_insights_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contributor_insights({
    #     table_name: "TableArn", # required
    #     index_name: "IndexName",
    #     contributor_insights_action: "ENABLE", # required, accepts ENABLE, DISABLE
    #   })
    #
    # @example Response structure
    #
    #   resp.table_name #=> String
    #   resp.index_name #=> String
    #   resp.contributor_insights_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateContributorInsights AWS API Documentation
    #
    # @overload update_contributor_insights(params = {})
    # @param [Hash] params ({})
    def update_contributor_insights(params = {}, options = {})
      req = build_request(:update_contributor_insights, params)
      req.send_request(options)
    end

    # Adds or removes replicas in the specified global table. The global
    # table must already exist to be able to use this operation. Any replica
    # to be added must be empty, have the same name as the global table,
    # have the same key schema, have DynamoDB Streams enabled, and have the
    # same provisioned and maximum write capacity units.
    #
    # This documentation is for version 2017.11.29 (Legacy) of global
    # tables, which should be avoided for new global tables. Customers
    # should use [Global Tables version 2019.11.21 (Current)][1] when
    # possible, because it provides greater flexibility, higher efficiency,
    # and consumes less write capacity than 2017.11.29 (Legacy).
    #
    #  To determine which version you're using, see [Determining the global
    # table version you are using][2]. To update existing global tables from
    # version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see
    # [Upgrading global tables][3].
    #
    # <note markdown="1"> If you are using global tables [Version 2019.11.21][1] (Current) you
    # can use [UpdateTable][4] instead.
    #
    #  Although you can use `UpdateGlobalTable` to add replicas and remove
    # replicas in a single request, for simplicity we recommend that you
    # issue separate requests for adding or removing replicas.
    #
    #  </note>
    #
    # If global secondary indexes are specified, then the following
    # conditions must also be met:
    #
    # * The global secondary indexes must have the same name.
    #
    # * The global secondary indexes must have the same hash key and sort
    #   key (if present).
    #
    # * The global secondary indexes must have the same provisioned and
    #   maximum write capacity units.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
    # [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html
    # [3]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html
    # [4]: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_UpdateTable.html
    #
    # @option params [required, String] :global_table_name
    #   The global table name.
    #
    # @option params [required, Array<Types::ReplicaUpdate>] :replica_updates
    #   A list of Regions that should be added or removed from the global
    #   table.
    #
    # @return [Types::UpdateGlobalTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlobalTableOutput#global_table_description #global_table_description} => Types::GlobalTableDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_table({
    #     global_table_name: "TableName", # required
    #     replica_updates: [ # required
    #       {
    #         create: {
    #           region_name: "RegionName", # required
    #         },
    #         delete: {
    #           region_name: "RegionName", # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.global_table_description.replication_group #=> Array
    #   resp.global_table_description.replication_group[0].region_name #=> String
    #   resp.global_table_description.replication_group[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.global_table_description.replication_group[0].replica_status_description #=> String
    #   resp.global_table_description.replication_group[0].replica_status_percent_progress #=> String
    #   resp.global_table_description.replication_group[0].kms_master_key_id #=> String
    #   resp.global_table_description.replication_group[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.global_table_description.replication_group[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.global_table_description.replication_group[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.global_table_description.replication_group[0].global_secondary_indexes #=> Array
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].index_name #=> String
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.global_table_description.replication_group[0].global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.global_table_description.replication_group[0].replica_inaccessible_date_time #=> Time
    #   resp.global_table_description.replication_group[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.global_table_description.replication_group[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.global_table_description.global_table_arn #=> String
    #   resp.global_table_description.creation_date_time #=> Time
    #   resp.global_table_description.global_table_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING"
    #   resp.global_table_description.global_table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalTable AWS API Documentation
    #
    # @overload update_global_table(params = {})
    # @param [Hash] params ({})
    def update_global_table(params = {}, options = {})
      req = build_request(:update_global_table, params)
      req.send_request(options)
    end

    # Updates settings for a global table.
    #
    # This documentation is for version 2017.11.29 (Legacy) of global
    # tables, which should be avoided for new global tables. Customers
    # should use [Global Tables version 2019.11.21 (Current)][1] when
    # possible, because it provides greater flexibility, higher efficiency,
    # and consumes less write capacity than 2017.11.29 (Legacy).
    #
    #  To determine which version you're using, see [Determining the global
    # table version you are using][2]. To update existing global tables from
    # version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see
    # [Upgrading global tables][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
    # [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html
    # [3]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html
    #
    # @option params [required, String] :global_table_name
    #   The name of the global table
    #
    # @option params [String] :global_table_billing_mode
    #   The billing mode of the global table. If `GlobalTableBillingMode` is
    #   not specified, the global table defaults to `PROVISIONED` capacity
    #   billing mode.
    #
    #   * `PROVISIONED` - We recommend using `PROVISIONED` for predictable
    #     workloads. `PROVISIONED` sets the billing mode to [Provisioned
    #     capacity mode][1].
    #
    #   * `PAY_PER_REQUEST` - We recommend using `PAY_PER_REQUEST` for
    #     unpredictable workloads. `PAY_PER_REQUEST` sets the billing mode to
    #     [On-demand capacity mode][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html
    #
    # @option params [Integer] :global_table_provisioned_write_capacity_units
    #   The maximum number of writes consumed per second before DynamoDB
    #   returns a `ThrottlingException.`
    #
    # @option params [Types::AutoScalingSettingsUpdate] :global_table_provisioned_write_capacity_auto_scaling_settings_update
    #   Auto scaling settings for managing provisioned write capacity for the
    #   global table.
    #
    # @option params [Array<Types::GlobalTableGlobalSecondaryIndexSettingsUpdate>] :global_table_global_secondary_index_settings_update
    #   Represents the settings of a global secondary index for a global table
    #   that will be modified.
    #
    # @option params [Array<Types::ReplicaSettingsUpdate>] :replica_settings_update
    #   Represents the settings for a global table in a Region that will be
    #   modified.
    #
    # @return [Types::UpdateGlobalTableSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlobalTableSettingsOutput#global_table_name #global_table_name} => String
    #   * {Types::UpdateGlobalTableSettingsOutput#replica_settings #replica_settings} => Array&lt;Types::ReplicaSettingsDescription&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_table_settings({
    #     global_table_name: "TableName", # required
    #     global_table_billing_mode: "PROVISIONED", # accepts PROVISIONED, PAY_PER_REQUEST
    #     global_table_provisioned_write_capacity_units: 1,
    #     global_table_provisioned_write_capacity_auto_scaling_settings_update: {
    #       minimum_units: 1,
    #       maximum_units: 1,
    #       auto_scaling_disabled: false,
    #       auto_scaling_role_arn: "AutoScalingRoleArn",
    #       scaling_policy_update: {
    #         policy_name: "AutoScalingPolicyName",
    #         target_tracking_scaling_policy_configuration: { # required
    #           disable_scale_in: false,
    #           scale_in_cooldown: 1,
    #           scale_out_cooldown: 1,
    #           target_value: 1.0, # required
    #         },
    #       },
    #     },
    #     global_table_global_secondary_index_settings_update: [
    #       {
    #         index_name: "IndexName", # required
    #         provisioned_write_capacity_units: 1,
    #         provisioned_write_capacity_auto_scaling_settings_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     replica_settings_update: [
    #       {
    #         region_name: "RegionName", # required
    #         replica_provisioned_read_capacity_units: 1,
    #         replica_provisioned_read_capacity_auto_scaling_settings_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #         replica_global_secondary_index_settings_update: [
    #           {
    #             index_name: "IndexName", # required
    #             provisioned_read_capacity_units: 1,
    #             provisioned_read_capacity_auto_scaling_settings_update: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "AutoScalingRoleArn",
    #               scaling_policy_update: {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: { # required
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         replica_table_class: "STANDARD", # accepts STANDARD, STANDARD_INFREQUENT_ACCESS
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.global_table_name #=> String
    #   resp.replica_settings #=> Array
    #   resp.replica_settings[0].region_name #=> String
    #   resp.replica_settings[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.replica_settings[0].replica_billing_mode_summary.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.replica_settings[0].replica_billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.replica_settings[0].replica_provisioned_read_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_provisioned_write_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_global_secondary_index_settings #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].index_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.replica_settings[0].replica_global_secondary_index_settings[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.replica_settings[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.replica_settings[0].replica_table_class_summary.last_update_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateGlobalTableSettings AWS API Documentation
    #
    # @overload update_global_table_settings(params = {})
    # @param [Hash] params ({})
    def update_global_table_settings(params = {}, options = {})
      req = build_request(:update_global_table_settings, params)
      req.send_request(options)
    end

    # Edits an existing item's attributes, or adds a new item to the table
    # if it does not already exist. You can put, delete, or add attribute
    # values. You can also perform a conditional update on an existing item
    # (insert a new attribute name-value pair if it doesn't exist, or
    # replace an existing name-value pair if it has certain expected
    # attribute values).
    #
    # You can also return the item's attribute values in the same
    # `UpdateItem` operation using the `ReturnValues` parameter.
    #
    # @option params [required, String] :table_name
    #   The name of the table containing the item to update. You can also
    #   provide the Amazon Resource Name (ARN) of the table in this parameter.
    #
    # @option params [required, Hash<String,Types::AttributeValue>] :key
    #   The primary key of the item to be updated. Each element consists of an
    #   attribute name and a value for that attribute.
    #
    #   For the primary key, you must provide all of the attributes. For
    #   example, with a simple primary key, you only need to provide a value
    #   for the partition key. For a composite primary key, you must provide
    #   values for both the partition key and the sort key.
    #
    # @option params [Hash<String,Types::AttributeValueUpdate>] :attribute_updates
    #   This is a legacy parameter. Use `UpdateExpression` instead. For more
    #   information, see [AttributeUpdates][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html
    #
    # @option params [Hash<String,Types::ExpectedAttributeValue>] :expected
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [Expected][1] in the *Amazon DynamoDB Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html
    #
    # @option params [String] :conditional_operator
    #   This is a legacy parameter. Use `ConditionExpression` instead. For
    #   more information, see [ConditionalOperator][1] in the *Amazon DynamoDB
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html
    #
    # @option params [String] :return_values
    #   Use `ReturnValues` if you want to get the item attributes as they
    #   appear before or after they are successfully updated. For
    #   `UpdateItem`, the valid values are:
    #
    #   * `NONE` - If `ReturnValues` is not specified, or if its value is
    #     `NONE`, then nothing is returned. (This setting is the default for
    #     `ReturnValues`.)
    #
    #   * `ALL_OLD` - Returns all of the attributes of the item, as they
    #     appeared before the UpdateItem operation.
    #
    #   * `UPDATED_OLD` - Returns only the updated attributes, as they
    #     appeared before the UpdateItem operation.
    #
    #   * `ALL_NEW` - Returns all of the attributes of the item, as they
    #     appear after the UpdateItem operation.
    #
    #   * `UPDATED_NEW` - Returns only the updated attributes, as they appear
    #     after the UpdateItem operation.
    #
    #   There is no additional cost associated with requesting a return value
    #   aside from the small network and processing overhead of receiving a
    #   larger response. No read capacity units are consumed.
    #
    #   The values returned are strongly consistent.
    #
    # @option params [String] :return_consumed_capacity
    #   Determines the level of detail about either provisioned or on-demand
    #   throughput consumption that is returned in the response:
    #
    #   * `INDEXES` - The response includes the aggregate `ConsumedCapacity`
    #     for the operation, together with `ConsumedCapacity` for each table
    #     and secondary index that was accessed.
    #
    #     Note that some operations, such as `GetItem` and `BatchGetItem`, do
    #     not access any indexes at all. In these cases, specifying `INDEXES`
    #     will only return `ConsumedCapacity` information for table(s).
    #
    #   * `TOTAL` - The response includes only the aggregate
    #     `ConsumedCapacity` for the operation.
    #
    #   * `NONE` - No `ConsumedCapacity` details are included in the response.
    #
    # @option params [String] :return_item_collection_metrics
    #   Determines whether item collection metrics are returned. If set to
    #   `SIZE`, the response includes statistics about item collections, if
    #   any, that were modified during the operation are returned in the
    #   response. If set to `NONE` (the default), no statistics are returned.
    #
    # @option params [String] :update_expression
    #   An expression that defines one or more attributes to be updated, the
    #   action to be performed on them, and new values for them.
    #
    #   The following action values are available for `UpdateExpression`.
    #
    #   * `SET` - Adds one or more attributes and values to an item. If any of
    #     these attributes already exist, they are replaced by the new values.
    #     You can also use `SET` to add or subtract from an attribute that is
    #     of type Number. For example: `SET myNum = myNum + :val`
    #
    #     `SET` supports the following functions:
    #
    #     * `if_not_exists (path, operand)` - if the item does not contain an
    #       attribute at the specified path, then `if_not_exists` evaluates to
    #       operand; otherwise, it evaluates to path. You can use this
    #       function to avoid overwriting an attribute that may already be
    #       present in the item.
    #
    #     * `list_append (operand, operand)` - evaluates to a list with a new
    #       element added to it. You can append the new element to the start
    #       or the end of the list by reversing the order of the operands.
    #     These function names are case-sensitive.
    #
    #   * `REMOVE` - Removes one or more attributes from an item.
    #
    #   * `ADD` - Adds the specified value to the item, if the attribute does
    #     not already exist. If the attribute does exist, then the behavior of
    #     `ADD` depends on the data type of the attribute:
    #
    #     * If the existing attribute is a number, and if `Value` is also a
    #       number, then `Value` is mathematically added to the existing
    #       attribute. If `Value` is a negative number, then it is subtracted
    #       from the existing attribute.
    #
    #       <note markdown="1"> If you use `ADD` to increment or decrement a number value for an
    #       item that doesn't exist before the update, DynamoDB uses `0` as
    #       the initial value.
    #
    #        Similarly, if you use `ADD` for an existing item to increment or
    #       decrement an attribute value that doesn't exist before the
    #       update, DynamoDB uses `0` as the initial value. For example,
    #       suppose that the item you want to update doesn't have an
    #       attribute named `itemcount`, but you decide to `ADD` the number
    #       `3` to this attribute anyway. DynamoDB will create the `itemcount`
    #       attribute, set its initial value to `0`, and finally add `3` to
    #       it. The result will be a new `itemcount` attribute in the item,
    #       with a value of `3`.
    #
    #        </note>
    #
    #     * If the existing data type is a set and if `Value` is also a set,
    #       then `Value` is added to the existing set. For example, if the
    #       attribute value is the set `[1,2]`, and the `ADD` action specified
    #       `[3]`, then the final attribute value is `[1,2,3]`. An error
    #       occurs if an `ADD` action is specified for a set attribute and the
    #       attribute type specified does not match the existing set type.
    #
    #       Both sets must have the same primitive data type. For example, if
    #       the existing data type is a set of strings, the `Value` must also
    #       be a set of strings.
    #     The `ADD` action only supports Number and set data types. In
    #     addition, `ADD` can only be used on top-level attributes, not nested
    #     attributes.
    #
    #   * `DELETE` - Deletes an element from a set.
    #
    #     If a set of values is specified, then those values are subtracted
    #     from the old set. For example, if the attribute value was the set
    #     `[a,b,c]` and the `DELETE` action specifies `[a,c]`, then the final
    #     attribute value is `[b]`. Specifying an empty set is an error.
    #
    #     The `DELETE` action only supports set data types. In addition,
    #     `DELETE` can only be used on top-level attributes, not nested
    #     attributes.
    #
    #   You can have many actions in a single expression, such as the
    #   following: `SET a=:value1, b=:value2 DELETE :value3, :value4, :value5`
    #
    #   For more information on update expressions, see [Modifying Items and
    #   Attributes][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html
    #
    # @option params [String] :condition_expression
    #   A condition that must be satisfied in order for a conditional update
    #   to succeed.
    #
    #   An expression can contain any of the following:
    #
    #   * Functions: `attribute_exists | attribute_not_exists | attribute_type
    #     | contains | begins_with | size`
    #
    #     These function names are case-sensitive.
    #
    #   * Comparison operators: `= | <> | < | > | <= | >= | BETWEEN | IN `
    #
    #   * Logical operators: `AND | OR | NOT`
    #
    #   For more information about condition expressions, see [Specifying
    #   Conditions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [Hash<String,String>] :expression_attribute_names
    #   One or more substitution tokens for attribute names in an expression.
    #   The following are some use cases for using `ExpressionAttributeNames`:
    #
    #   * To access an attribute whose name conflicts with a DynamoDB reserved
    #     word.
    #
    #   * To create a placeholder for repeating occurrences of an attribute
    #     name in an expression.
    #
    #   * To prevent special characters in an attribute name from being
    #     misinterpreted in an expression.
    #
    #   Use the **#** character in an expression to dereference an attribute
    #   name. For example, consider the following attribute name:
    #
    #   * `Percentile`
    #
    #   ^
    #
    #   The name of this attribute conflicts with a reserved word, so it
    #   cannot be used directly in an expression. (For the complete list of
    #   reserved words, see [Reserved Words][1] in the *Amazon DynamoDB
    #   Developer Guide*.) To work around this, you could specify the
    #   following for `ExpressionAttributeNames`:
    #
    #   * `{"#P":"Percentile"}`
    #
    #   ^
    #
    #   You could then use this substitution in an expression, as in this
    #   example:
    #
    #   * `#P = :val`
    #
    #   ^
    #
    #   <note markdown="1"> Tokens that begin with the **\:** character are *expression attribute
    #   values*, which are placeholders for the actual value at runtime.
    #
    #    </note>
    #
    #   For more information about expression attribute names, see [Specifying
    #   Item Attributes][2] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html
    #
    # @option params [Hash<String,Types::AttributeValue>] :expression_attribute_values
    #   One or more values that can be substituted in an expression.
    #
    #   Use the **\:** (colon) character in an expression to dereference an
    #   attribute value. For example, suppose that you wanted to check whether
    #   the value of the `ProductStatus` attribute was one of the following:
    #
    #   `Available | Backordered | Discontinued`
    #
    #   You would first need to specify `ExpressionAttributeValues` as
    #   follows:
    #
    #   `{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #   ":disc":{"S":"Discontinued"} }`
    #
    #   You could then use these values in an expression, such as this:
    #
    #   `ProductStatus IN (:avail, :back, :disc)`
    #
    #   For more information on expression attribute values, see [Condition
    #   Expressions][1] in the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html
    #
    # @option params [String] :return_values_on_condition_check_failure
    #   An optional parameter that returns the item attributes for an
    #   `UpdateItem` operation that failed a condition check.
    #
    #   There is no additional cost associated with requesting a return value
    #   aside from the small network and processing overhead of receiving a
    #   larger response. No read capacity units are consumed.
    #
    # @return [Types::UpdateItemOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateItemOutput#attributes #attributes} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::UpdateItemOutput#consumed_capacity #consumed_capacity} => Types::ConsumedCapacity
    #   * {Types::UpdateItemOutput#item_collection_metrics #item_collection_metrics} => Types::ItemCollectionMetrics
    #
    #
    # @example Example: To update an item in a table
    #
    #   # This example updates an item in the Music table. It adds a new attribute (Year) and modifies the AlbumTitle attribute. 
    #   # All of the attributes in the item, as they appear after the update, are returned in the response.
    #
    #   resp = client.update_item({
    #     expression_attribute_names: {
    #       "#AT" => "AlbumTitle", 
    #       "#Y" => "Year", 
    #     }, 
    #     expression_attribute_values: {
    #       ":t" => "Louder Than Ever", 
    #       ":y" => "2015", 
    #     }, 
    #     key: {
    #       "Artist" => "Acme Band", 
    #       "SongTitle" => "Happy Day", 
    #     }, 
    #     return_values: "ALL_NEW", 
    #     table_name: "Music", 
    #     update_expression: "SET #Y = :y, #AT = :t", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: {
    #       "AlbumTitle" => "Louder Than Ever", 
    #       "Artist" => "Acme Band", 
    #       "SongTitle" => "Happy Day", 
    #       "Year" => "2015", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_item({
    #     table_name: "TableArn", # required
    #     key: { # required
    #       "AttributeName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     attribute_updates: {
    #       "AttributeName" => {
    #         value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         action: "ADD", # accepts ADD, PUT, DELETE
    #       },
    #     },
    #     expected: {
    #       "AttributeName" => {
    #         value: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         exists: false,
    #         comparison_operator: "EQ", # accepts EQ, NE, IN, LE, LT, GE, GT, BETWEEN, NOT_NULL, NULL, CONTAINS, NOT_CONTAINS, BEGINS_WITH
    #         attribute_value_list: ["value"], # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #       },
    #     },
    #     conditional_operator: "AND", # accepts AND, OR
    #     return_values: "NONE", # accepts NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW
    #     return_consumed_capacity: "INDEXES", # accepts INDEXES, TOTAL, NONE
    #     return_item_collection_metrics: "SIZE", # accepts SIZE, NONE
    #     update_expression: "UpdateExpression",
    #     condition_expression: "ConditionExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName",
    #     },
    #     expression_attribute_values: {
    #       "ExpressionAttributeValueVariable" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     return_values_on_condition_check_failure: "ALL_OLD", # accepts ALL_OLD, NONE
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Hash
    #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.consumed_capacity.table_name #=> String
    #   resp.consumed_capacity.capacity_units #=> Float
    #   resp.consumed_capacity.read_capacity_units #=> Float
    #   resp.consumed_capacity.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.read_capacity_units #=> Float
    #   resp.consumed_capacity.table.write_capacity_units #=> Float
    #   resp.consumed_capacity.table.capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes #=> Hash
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.local_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes #=> Hash
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].read_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].write_capacity_units #=> Float
    #   resp.consumed_capacity.global_secondary_indexes["IndexName"].capacity_units #=> Float
    #   resp.item_collection_metrics.item_collection_key #=> Hash
    #   resp.item_collection_metrics.item_collection_key["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.item_collection_metrics.size_estimate_range_gb #=> Array
    #   resp.item_collection_metrics.size_estimate_range_gb[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateItem AWS API Documentation
    #
    # @overload update_item(params = {})
    # @param [Hash] params ({})
    def update_item(params = {}, options = {})
      req = build_request(:update_item, params)
      req.send_request(options)
    end

    # The command to update the Kinesis stream destination.
    #
    # @option params [required, String] :table_name
    #   The table name for the Kinesis streaming destination input. You can
    #   also provide the ARN of the table in this parameter.
    #
    # @option params [required, String] :stream_arn
    #   The Amazon Resource Name (ARN) for the Kinesis stream input.
    #
    # @option params [Types::UpdateKinesisStreamingConfiguration] :update_kinesis_streaming_configuration
    #   The command to update the Kinesis stream configuration.
    #
    # @return [Types::UpdateKinesisStreamingDestinationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateKinesisStreamingDestinationOutput#table_name #table_name} => String
    #   * {Types::UpdateKinesisStreamingDestinationOutput#stream_arn #stream_arn} => String
    #   * {Types::UpdateKinesisStreamingDestinationOutput#destination_status #destination_status} => String
    #   * {Types::UpdateKinesisStreamingDestinationOutput#update_kinesis_streaming_configuration #update_kinesis_streaming_configuration} => Types::UpdateKinesisStreamingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_kinesis_streaming_destination({
    #     table_name: "TableArn", # required
    #     stream_arn: "StreamArn", # required
    #     update_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: "MILLISECOND", # accepts MILLISECOND, MICROSECOND
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.table_name #=> String
    #   resp.stream_arn #=> String
    #   resp.destination_status #=> String, one of "ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"
    #   resp.update_kinesis_streaming_configuration.approximate_creation_date_time_precision #=> String, one of "MILLISECOND", "MICROSECOND"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateKinesisStreamingDestination AWS API Documentation
    #
    # @overload update_kinesis_streaming_destination(params = {})
    # @param [Hash] params ({})
    def update_kinesis_streaming_destination(params = {}, options = {})
      req = build_request(:update_kinesis_streaming_destination, params)
      req.send_request(options)
    end

    # Modifies the provisioned throughput settings, global secondary
    # indexes, or DynamoDB Streams settings for a given table.
    #
    # You can only perform one of the following operations at once:
    #
    # * Modify the provisioned throughput settings of the table.
    #
    # * Remove a global secondary index from the table.
    #
    # * Create a new global secondary index on the table. After the index
    #   begins backfilling, you can use `UpdateTable` to perform other
    #   operations.
    #
    # `UpdateTable` is an asynchronous operation; while it's executing, the
    # table status changes from `ACTIVE` to `UPDATING`. While it's
    # `UPDATING`, you can't issue another `UpdateTable` request. When the
    # table returns to the `ACTIVE` state, the `UpdateTable` operation is
    # complete.
    #
    # @option params [Array<Types::AttributeDefinition>] :attribute_definitions
    #   An array of attributes that describe the key schema for the table and
    #   indexes. If you are adding a new global secondary index to the table,
    #   `AttributeDefinitions` must include the key element(s) of the new
    #   index.
    #
    # @option params [required, String] :table_name
    #   The name of the table to be updated. You can also provide the Amazon
    #   Resource Name (ARN) of the table in this parameter.
    #
    # @option params [String] :billing_mode
    #   Controls how you are charged for read and write throughput and how you
    #   manage capacity. When switching from pay-per-request to provisioned
    #   capacity, initial provisioned capacity values must be set. The initial
    #   provisioned capacity values are estimated based on the consumed read
    #   and write capacity of your table and global secondary indexes over the
    #   past 30 minutes.
    #
    #   * `PAY_PER_REQUEST` - We recommend using `PAY_PER_REQUEST` for most
    #     DynamoDB workloads. `PAY_PER_REQUEST` sets the billing mode to
    #     [On-demand capacity mode][1].
    #
    #   * `PROVISIONED` - We recommend using `PROVISIONED` for steady
    #     workloads with predictable growth where capacity requirements can be
    #     reliably forecasted. `PROVISIONED` sets the billing mode to
    #     [Provisioned capacity mode][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html
    #
    # @option params [Types::ProvisionedThroughput] :provisioned_throughput
    #   The new provisioned throughput settings for the specified table or
    #   index.
    #
    # @option params [Array<Types::GlobalSecondaryIndexUpdate>] :global_secondary_index_updates
    #   An array of one or more global secondary indexes for the table. For
    #   each index in the array, you can request one action:
    #
    #   * `Create` - add a new global secondary index to the table.
    #
    #   * `Update` - modify the provisioned throughput settings of an existing
    #     global secondary index.
    #
    #   * `Delete` - remove a global secondary index from the table.
    #
    #   You can create or delete only one global secondary index per
    #   `UpdateTable` operation.
    #
    #   For more information, see [Managing Global Secondary Indexes][1] in
    #   the *Amazon DynamoDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html
    #
    # @option params [Types::StreamSpecification] :stream_specification
    #   Represents the DynamoDB Streams configuration for the table.
    #
    #   <note markdown="1"> You receive a `ValidationException` if you try to enable a stream on a
    #   table that already has a stream, or if you try to disable a stream on
    #   a table that doesn't have a stream.
    #
    #    </note>
    #
    # @option params [Types::SSESpecification] :sse_specification
    #   The new server-side encryption settings for the specified table.
    #
    # @option params [Array<Types::ReplicationGroupUpdate>] :replica_updates
    #   A list of replica update actions (create, delete, or update) for the
    #   table.
    #
    # @option params [String] :table_class
    #   The table class of the table to be updated. Valid values are
    #   `STANDARD` and `STANDARD_INFREQUENT_ACCESS`.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   Indicates whether deletion protection is to be enabled (true) or
    #   disabled (false) on the table.
    #
    # @option params [String] :multi_region_consistency
    #   Specifies the consistency mode for a new global table. This parameter
    #   is only valid when you create a global table by specifying one or more
    #   [Create][1] actions in the [ReplicaUpdates][2] action list.
    #
    #   You can specify one of the following consistency modes:
    #
    #   * `EVENTUAL`: Configures a new global table for multi-Region eventual
    #     consistency (MREC). This is the default consistency mode for global
    #     tables.
    #
    #   * `STRONG`: Configures a new global table for multi-Region strong
    #     consistency (MRSC).
    #
    #   If you don't specify this field, the global table consistency mode
    #   defaults to `EVENTUAL`. For more information about global tables
    #   consistency modes, see [ Consistency modes][3] in DynamoDB developer
    #   guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ReplicationGroupUpdate.html#DDB-Type-ReplicationGroupUpdate-Create
    #   [2]: https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_UpdateTable.html#DDB-UpdateTable-request-ReplicaUpdates
    #   [3]: https://docs.aws.amazon.com/V2globaltables_HowItWorks.html#V2globaltables_HowItWorks.consistency-modes
    #
    # @option params [Array<Types::GlobalTableWitnessGroupUpdate>] :global_table_witness_updates
    #   A list of witness updates for a MRSC global table. A witness provides
    #   a cost-effective alternative to a full replica in a MRSC global table
    #   by maintaining replicated change data written to global table
    #   replicas. You cannot perform read or write operations on a witness.
    #   For each witness, you can request one action:
    #
    #   * `Create` - add a new witness to the global table.
    #
    #   * `Delete` - remove a witness from the global table.
    #
    #   You can create or delete only one witness per `UpdateTable` operation.
    #
    #   For more information, see [Multi-Region strong consistency (MRSC)][1]
    #   in the Amazon DynamoDB Developer Guide
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_HowItWorks.html#V2globaltables_HowItWorks.consistency-modes
    #
    # @option params [Types::OnDemandThroughput] :on_demand_throughput
    #   Updates the maximum number of read and write units for the specified
    #   table in on-demand capacity mode. If you use this parameter, you must
    #   specify `MaxReadRequestUnits`, `MaxWriteRequestUnits`, or both.
    #
    # @option params [Types::WarmThroughput] :warm_throughput
    #   Represents the warm throughput (in read units per second and write
    #   units per second) for updating a table.
    #
    # @return [Types::UpdateTableOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTableOutput#table_description #table_description} => Types::TableDescription
    #
    #
    # @example Example: To modify a table's provisioned throughput
    #
    #   # This example increases the provisioned read and write capacity on the Music table.
    #
    #   resp = client.update_table({
    #     provisioned_throughput: {
    #       read_capacity_units: 10, 
    #       write_capacity_units: 10, 
    #     }, 
    #     table_name: "MusicCollection", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     table_description: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "Artist", 
    #           attribute_type: "S", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           attribute_type: "S", 
    #         }, 
    #       ], 
    #       creation_date_time: Time.parse("1421866952.062"), 
    #       item_count: 0, 
    #       key_schema: [
    #         {
    #           attribute_name: "Artist", 
    #           key_type: "HASH", 
    #         }, 
    #         {
    #           attribute_name: "SongTitle", 
    #           key_type: "RANGE", 
    #         }, 
    #       ], 
    #       provisioned_throughput: {
    #         last_increase_date_time: Time.parse("1421874759.194"), 
    #         number_of_decreases_today: 1, 
    #         read_capacity_units: 1, 
    #         write_capacity_units: 1, 
    #       }, 
    #       table_name: "MusicCollection", 
    #       table_size_bytes: 0, 
    #       table_status: "UPDATING", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table({
    #     attribute_definitions: [
    #       {
    #         attribute_name: "KeySchemaAttributeName", # required
    #         attribute_type: "S", # required, accepts S, N, B
    #       },
    #     ],
    #     table_name: "TableArn", # required
    #     billing_mode: "PROVISIONED", # accepts PROVISIONED, PAY_PER_REQUEST
    #     provisioned_throughput: {
    #       read_capacity_units: 1, # required
    #       write_capacity_units: 1, # required
    #     },
    #     global_secondary_index_updates: [
    #       {
    #         update: {
    #           index_name: "IndexName", # required
    #           provisioned_throughput: {
    #             read_capacity_units: 1, # required
    #             write_capacity_units: 1, # required
    #           },
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1,
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #           },
    #         },
    #         create: {
    #           index_name: "IndexName", # required
    #           key_schema: [ # required
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH", # required, accepts HASH, RANGE
    #             },
    #           ],
    #           projection: { # required
    #             projection_type: "ALL", # accepts ALL, KEYS_ONLY, INCLUDE
    #             non_key_attributes: ["NonKeyAttributeName"],
    #           },
    #           provisioned_throughput: {
    #             read_capacity_units: 1, # required
    #             write_capacity_units: 1, # required
    #           },
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1,
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #           },
    #         },
    #         delete: {
    #           index_name: "IndexName", # required
    #         },
    #       },
    #     ],
    #     stream_specification: {
    #       stream_enabled: false, # required
    #       stream_view_type: "NEW_IMAGE", # accepts NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY
    #     },
    #     sse_specification: {
    #       enabled: false,
    #       sse_type: "AES256", # accepts AES256, KMS
    #       kms_master_key_id: "KMSMasterKeyId",
    #     },
    #     replica_updates: [
    #       {
    #         create: {
    #           region_name: "RegionName", # required
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1,
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1,
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName", # required
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1,
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1,
    #               },
    #             },
    #           ],
    #           table_class_override: "STANDARD", # accepts STANDARD, STANDARD_INFREQUENT_ACCESS
    #         },
    #         update: {
    #           region_name: "RegionName", # required
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1,
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1,
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName", # required
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1,
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1,
    #               },
    #             },
    #           ],
    #           table_class_override: "STANDARD", # accepts STANDARD, STANDARD_INFREQUENT_ACCESS
    #         },
    #         delete: {
    #           region_name: "RegionName", # required
    #         },
    #       },
    #     ],
    #     table_class: "STANDARD", # accepts STANDARD, STANDARD_INFREQUENT_ACCESS
    #     deletion_protection_enabled: false,
    #     multi_region_consistency: "EVENTUAL", # accepts EVENTUAL, STRONG
    #     global_table_witness_updates: [
    #       {
    #         create: {
    #           region_name: "RegionName", # required
    #         },
    #         delete: {
    #           region_name: "RegionName", # required
    #         },
    #       },
    #     ],
    #     on_demand_throughput: {
    #       max_read_request_units: 1,
    #       max_write_request_units: 1,
    #     },
    #     warm_throughput: {
    #       read_units_per_second: 1,
    #       write_units_per_second: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.table_description.attribute_definitions #=> Array
    #   resp.table_description.attribute_definitions[0].attribute_name #=> String
    #   resp.table_description.attribute_definitions[0].attribute_type #=> String, one of "S", "N", "B"
    #   resp.table_description.table_name #=> String
    #   resp.table_description.key_schema #=> Array
    #   resp.table_description.key_schema[0].attribute_name #=> String
    #   resp.table_description.key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.creation_date_time #=> Time
    #   resp.table_description.provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table_description.provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table_description.provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table_description.provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table_description.provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table_description.table_size_bytes #=> Integer
    #   resp.table_description.item_count #=> Integer
    #   resp.table_description.table_arn #=> String
    #   resp.table_description.table_id #=> String
    #   resp.table_description.billing_mode_summary.billing_mode #=> String, one of "PROVISIONED", "PAY_PER_REQUEST"
    #   resp.table_description.billing_mode_summary.last_update_to_pay_per_request_date_time #=> Time
    #   resp.table_description.local_secondary_indexes #=> Array
    #   resp.table_description.local_secondary_indexes[0].index_name #=> String
    #   resp.table_description.local_secondary_indexes[0].key_schema #=> Array
    #   resp.table_description.local_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table_description.local_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.local_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table_description.local_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table_description.local_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table_description.local_secondary_indexes[0].item_count #=> Integer
    #   resp.table_description.local_secondary_indexes[0].index_arn #=> String
    #   resp.table_description.global_secondary_indexes #=> Array
    #   resp.table_description.global_secondary_indexes[0].index_name #=> String
    #   resp.table_description.global_secondary_indexes[0].key_schema #=> Array
    #   resp.table_description.global_secondary_indexes[0].key_schema[0].attribute_name #=> String
    #   resp.table_description.global_secondary_indexes[0].key_schema[0].key_type #=> String, one of "HASH", "RANGE"
    #   resp.table_description.global_secondary_indexes[0].projection.projection_type #=> String, one of "ALL", "KEYS_ONLY", "INCLUDE"
    #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes #=> Array
    #   resp.table_description.global_secondary_indexes[0].projection.non_key_attributes[0] #=> String
    #   resp.table_description.global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.global_secondary_indexes[0].backfilling #=> Boolean
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_increase_date_time #=> Time
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.last_decrease_date_time #=> Time
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.number_of_decreases_today #=> Integer
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.read_capacity_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].provisioned_throughput.write_capacity_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].index_size_bytes #=> Integer
    #   resp.table_description.global_secondary_indexes[0].item_count #=> Integer
    #   resp.table_description.global_secondary_indexes[0].index_arn #=> String
    #   resp.table_description.global_secondary_indexes[0].on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.stream_specification.stream_enabled #=> Boolean
    #   resp.table_description.stream_specification.stream_view_type #=> String, one of "NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"
    #   resp.table_description.latest_stream_label #=> String
    #   resp.table_description.latest_stream_arn #=> String
    #   resp.table_description.global_table_version #=> String
    #   resp.table_description.replicas #=> Array
    #   resp.table_description.replicas[0].region_name #=> String
    #   resp.table_description.replicas[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.replicas[0].replica_status_description #=> String
    #   resp.table_description.replicas[0].replica_status_percent_progress #=> String
    #   resp.table_description.replicas[0].kms_master_key_id #=> String
    #   resp.table_description.replicas[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table_description.replicas[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.replicas[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.replicas[0].global_secondary_indexes #=> Array
    #   resp.table_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.table_description.replicas[0].global_secondary_indexes[0].provisioned_throughput_override.read_capacity_units #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].on_demand_throughput_override.max_read_request_units #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.replicas[0].global_secondary_indexes[0].warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_description.replicas[0].replica_inaccessible_date_time #=> Time
    #   resp.table_description.replicas[0].replica_table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table_description.replicas[0].replica_table_class_summary.last_update_date_time #=> Time
    #   resp.table_description.global_table_witnesses #=> Array
    #   resp.table_description.global_table_witnesses[0].region_name #=> String
    #   resp.table_description.global_table_witnesses[0].witness_status #=> String, one of "CREATING", "DELETING", "ACTIVE"
    #   resp.table_description.restore_summary.source_backup_arn #=> String
    #   resp.table_description.restore_summary.source_table_arn #=> String
    #   resp.table_description.restore_summary.restore_date_time #=> Time
    #   resp.table_description.restore_summary.restore_in_progress #=> Boolean
    #   resp.table_description.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"
    #   resp.table_description.sse_description.sse_type #=> String, one of "AES256", "KMS"
    #   resp.table_description.sse_description.kms_master_key_arn #=> String
    #   resp.table_description.sse_description.inaccessible_encryption_date_time #=> Time
    #   resp.table_description.archival_summary.archival_date_time #=> Time
    #   resp.table_description.archival_summary.archival_reason #=> String
    #   resp.table_description.archival_summary.archival_backup_arn #=> String
    #   resp.table_description.table_class_summary.table_class #=> String, one of "STANDARD", "STANDARD_INFREQUENT_ACCESS"
    #   resp.table_description.table_class_summary.last_update_date_time #=> Time
    #   resp.table_description.deletion_protection_enabled #=> Boolean
    #   resp.table_description.on_demand_throughput.max_read_request_units #=> Integer
    #   resp.table_description.on_demand_throughput.max_write_request_units #=> Integer
    #   resp.table_description.warm_throughput.read_units_per_second #=> Integer
    #   resp.table_description.warm_throughput.write_units_per_second #=> Integer
    #   resp.table_description.warm_throughput.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_description.multi_region_consistency #=> String, one of "EVENTUAL", "STRONG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTable AWS API Documentation
    #
    # @overload update_table(params = {})
    # @param [Hash] params ({})
    def update_table(params = {}, options = {})
      req = build_request(:update_table, params)
      req.send_request(options)
    end

    # Updates auto scaling settings on your global tables at once.
    #
    # @option params [Array<Types::GlobalSecondaryIndexAutoScalingUpdate>] :global_secondary_index_updates
    #   Represents the auto scaling settings of the global secondary indexes
    #   of the replica to be updated.
    #
    # @option params [required, String] :table_name
    #   The name of the global table to be updated. You can also provide the
    #   Amazon Resource Name (ARN) of the table in this parameter.
    #
    # @option params [Types::AutoScalingSettingsUpdate] :provisioned_write_capacity_auto_scaling_update
    #   Represents the auto scaling settings to be modified for a global table
    #   or global secondary index.
    #
    # @option params [Array<Types::ReplicaAutoScalingUpdate>] :replica_updates
    #   Represents the auto scaling settings of replicas of the table that
    #   will be modified.
    #
    # @return [Types::UpdateTableReplicaAutoScalingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTableReplicaAutoScalingOutput#table_auto_scaling_description #table_auto_scaling_description} => Types::TableAutoScalingDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_table_replica_auto_scaling({
    #     global_secondary_index_updates: [
    #       {
    #         index_name: "IndexName",
    #         provisioned_write_capacity_auto_scaling_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     table_name: "TableArn", # required
    #     provisioned_write_capacity_auto_scaling_update: {
    #       minimum_units: 1,
    #       maximum_units: 1,
    #       auto_scaling_disabled: false,
    #       auto_scaling_role_arn: "AutoScalingRoleArn",
    #       scaling_policy_update: {
    #         policy_name: "AutoScalingPolicyName",
    #         target_tracking_scaling_policy_configuration: { # required
    #           disable_scale_in: false,
    #           scale_in_cooldown: 1,
    #           scale_out_cooldown: 1,
    #           target_value: 1.0, # required
    #         },
    #       },
    #     },
    #     replica_updates: [
    #       {
    #         region_name: "RegionName", # required
    #         replica_global_secondary_index_updates: [
    #           {
    #             index_name: "IndexName",
    #             provisioned_read_capacity_auto_scaling_update: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "AutoScalingRoleArn",
    #               scaling_policy_update: {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: { # required
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #         replica_provisioned_read_capacity_auto_scaling_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             },
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.table_auto_scaling_description.table_name #=> String
    #   resp.table_auto_scaling_description.table_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #   resp.table_auto_scaling_description.replicas #=> Array
    #   resp.table_auto_scaling_description.replicas[0].region_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes #=> Array
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].index_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].index_status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE"
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].global_secondary_indexes[0].provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_read_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.minimum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.maximum_units #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_disabled #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.auto_scaling_role_arn #=> String
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies #=> Array
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].policy_name #=> String
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.disable_scale_in #=> Boolean
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_in_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.scale_out_cooldown #=> Integer
    #   resp.table_auto_scaling_description.replicas[0].replica_provisioned_write_capacity_auto_scaling_settings.scaling_policies[0].target_tracking_scaling_policy_configuration.target_value #=> Float
    #   resp.table_auto_scaling_description.replicas[0].replica_status #=> String, one of "CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTableReplicaAutoScaling AWS API Documentation
    #
    # @overload update_table_replica_auto_scaling(params = {})
    # @param [Hash] params ({})
    def update_table_replica_auto_scaling(params = {}, options = {})
      req = build_request(:update_table_replica_auto_scaling, params)
      req.send_request(options)
    end

    # The `UpdateTimeToLive` method enables or disables Time to Live (TTL)
    # for the specified table. A successful `UpdateTimeToLive` call returns
    # the current `TimeToLiveSpecification`. It can take up to one hour for
    # the change to fully process. Any additional `UpdateTimeToLive` calls
    # for the same table during this one hour duration result in a
    # `ValidationException`.
    #
    # TTL compares the current time in epoch time format to the time stored
    # in the TTL attribute of an item. If the epoch time value stored in the
    # attribute is less than the current time, the item is marked as expired
    # and subsequently deleted.
    #
    # <note markdown="1"> The epoch time format is the number of seconds elapsed since 12:00:00
    # AM January 1, 1970 UTC.
    #
    #  </note>
    #
    # DynamoDB deletes expired items on a best-effort basis to ensure
    # availability of throughput for other data operations.
    #
    # DynamoDB typically deletes expired items within two days of
    # expiration. The exact duration within which an item gets deleted after
    # expiration is specific to the nature of the workload. Items that have
    # expired and not been deleted will still show up in reads, queries, and
    # scans.
    #
    # As items are deleted, they are removed from any local secondary index
    # and global secondary index immediately in the same eventually
    # consistent way as a standard delete operation.
    #
    # For more information, see [Time To Live][1] in the Amazon DynamoDB
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html
    #
    # @option params [required, String] :table_name
    #   The name of the table to be configured. You can also provide the
    #   Amazon Resource Name (ARN) of the table in this parameter.
    #
    # @option params [required, Types::TimeToLiveSpecification] :time_to_live_specification
    #   Represents the settings used to enable or disable Time to Live for the
    #   specified table.
    #
    # @return [Types::UpdateTimeToLiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTimeToLiveOutput#time_to_live_specification #time_to_live_specification} => Types::TimeToLiveSpecification
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_time_to_live({
    #     table_name: "TableArn", # required
    #     time_to_live_specification: { # required
    #       enabled: false, # required
    #       attribute_name: "TimeToLiveAttributeName", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.time_to_live_specification.enabled #=> Boolean
    #   resp.time_to_live_specification.attribute_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/UpdateTimeToLive AWS API Documentation
    #
    # @overload update_time_to_live(params = {})
    # @param [Hash] params ({})
    def update_time_to_live(params = {}, options = {})
      req = build_request(:update_time_to_live, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::DynamoDB')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-dynamodb'
      context[:gem_version] = '1.147.0'
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
    # | waiter_name      | params                  | :delay   | :max_attempts |
    # | ---------------- | ----------------------- | -------- | ------------- |
    # | table_exists     | {Client#describe_table} | 20       | 25            |
    # | table_not_exists | {Client#describe_table} | 20       | 25            |
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
        table_exists: Waiters::TableExists,
        table_not_exists: Waiters::TableNotExists
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
