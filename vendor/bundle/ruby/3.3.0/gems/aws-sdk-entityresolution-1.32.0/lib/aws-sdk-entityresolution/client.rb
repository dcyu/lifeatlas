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

module Aws::EntityResolution
  # An API client for EntityResolution.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::EntityResolution::Client.new(
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

    @identifier = :entityresolution

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
    add_plugin(Aws::EntityResolution::Plugins::Endpoints)

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
    #   @option options [Aws::EntityResolution::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::EntityResolution::EndpointParameters`.
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

    # Adds a policy statement object. To retrieve a list of existing policy
    # statements, use the `GetPolicy` API.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the resource that will be accessed
    #   by the principal.
    #
    # @option params [required, String] :statement_id
    #   A statement identifier that differentiates the statement from others
    #   in the same policy.
    #
    # @option params [required, String] :effect
    #   Determines whether the permissions specified in the policy are to be
    #   allowed (`Allow`) or denied (`Deny`).
    #
    #   If you set the value of the `effect` parameter to `Deny` for the
    #   `AddPolicyStatement` operation, you must also set the value of the
    #   `effect` parameter in the `policy` to `Deny` for the `PutPolicy`
    #   operation.
    #
    # @option params [required, Array<String>] :action
    #   The action that the principal can use on the resource.
    #
    #   For example, `entityresolution:GetIdMappingJob`,
    #   `entityresolution:GetMatchingJob`.
    #
    # @option params [required, Array<String>] :principal
    #   The Amazon Web Services service or Amazon Web Services account that
    #   can access the resource defined as ARN.
    #
    # @option params [String] :condition
    #   A set of condition keys that you can use in key policies.
    #
    # @return [Types::AddPolicyStatementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddPolicyStatementOutput#arn #arn} => String
    #   * {Types::AddPolicyStatementOutput#token #token} => String
    #   * {Types::AddPolicyStatementOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_policy_statement({
    #     arn: "VeniceGlobalArn", # required
    #     statement_id: "StatementId", # required
    #     effect: "Allow", # required, accepts Allow, Deny
    #     action: ["StatementAction"], # required
    #     principal: ["StatementPrincipal"], # required
    #     condition: "StatementCondition",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.token #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/AddPolicyStatement AWS API Documentation
    #
    # @overload add_policy_statement(params = {})
    # @param [Hash] params ({})
    def add_policy_statement(params = {}, options = {})
      req = build_request(:add_policy_statement, params)
      req.send_request(options)
    end

    # Deletes multiple unique IDs in a matching workflow.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow.
    #
    # @option params [String] :input_source
    #   The input source for the batch delete unique ID operation.
    #
    # @option params [required, Array<String>] :unique_ids
    #   The unique IDs to delete.
    #
    # @return [Types::BatchDeleteUniqueIdOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteUniqueIdOutput#status #status} => String
    #   * {Types::BatchDeleteUniqueIdOutput#errors #errors} => Array&lt;Types::DeleteUniqueIdError&gt;
    #   * {Types::BatchDeleteUniqueIdOutput#deleted #deleted} => Array&lt;Types::DeletedUniqueId&gt;
    #   * {Types::BatchDeleteUniqueIdOutput#disconnected_unique_ids #disconnected_unique_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_unique_id({
    #     workflow_name: "EntityName", # required
    #     input_source: "BatchDeleteUniqueIdInputInputSourceString",
    #     unique_ids: ["HeaderSafeUniqueId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "COMPLETED", "ACCEPTED"
    #   resp.errors #=> Array
    #   resp.errors[0].unique_id #=> String
    #   resp.errors[0].error_type #=> String, one of "SERVICE_ERROR", "VALIDATION_ERROR"
    #   resp.deleted #=> Array
    #   resp.deleted[0].unique_id #=> String
    #   resp.disconnected_unique_ids #=> Array
    #   resp.disconnected_unique_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/BatchDeleteUniqueId AWS API Documentation
    #
    # @overload batch_delete_unique_id(params = {})
    # @param [Hash] params ({})
    def batch_delete_unique_id(params = {}, options = {})
      req = build_request(:batch_delete_unique_id, params)
      req.send_request(options)
    end

    # Creates an `IdMappingWorkflow` object which stores the configuration
    # of the data processing job to be run. Each `IdMappingWorkflow` must
    # have a unique workflow name. To modify an existing workflow, use the
    # `UpdateIdMappingWorkflow` API.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow. There can't be multiple
    #   `IdMappingWorkflows` with the same name.
    #
    # @option params [String] :description
    #   A description of the workflow.
    #
    # @option params [required, Array<Types::IdMappingWorkflowInputSource>] :input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #
    # @option params [Array<Types::IdMappingWorkflowOutputSource>] :output_source_config
    #   A list of `IdMappingWorkflowOutputSource` objects, each of which
    #   contains fields `OutputS3Path` and `Output`.
    #
    # @option params [required, Types::IdMappingTechniques] :id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateIdMappingWorkflowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdMappingWorkflowOutput#workflow_name #workflow_name} => String
    #   * {Types::CreateIdMappingWorkflowOutput#workflow_arn #workflow_arn} => String
    #   * {Types::CreateIdMappingWorkflowOutput#description #description} => String
    #   * {Types::CreateIdMappingWorkflowOutput#input_source_config #input_source_config} => Array&lt;Types::IdMappingWorkflowInputSource&gt;
    #   * {Types::CreateIdMappingWorkflowOutput#output_source_config #output_source_config} => Array&lt;Types::IdMappingWorkflowOutputSource&gt;
    #   * {Types::CreateIdMappingWorkflowOutput#id_mapping_techniques #id_mapping_techniques} => Types::IdMappingTechniques
    #   * {Types::CreateIdMappingWorkflowOutput#role_arn #role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_id_mapping_workflow({
    #     workflow_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "IdMappingWorkflowInputSourceInputSourceARNString", # required
    #         schema_name: "EntityName",
    #         type: "SOURCE", # accepts SOURCE, TARGET
    #       },
    #     ],
    #     output_source_config: [
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn",
    #       },
    #     ],
    #     id_mapping_techniques: { # required
    #       id_mapping_type: "PROVIDER", # required, accepts PROVIDER, RULE_BASED
    #       rule_based_properties: {
    #         rules: [
    #           {
    #             rule_name: "RuleRuleNameString", # required
    #             matching_keys: ["AttributeName"], # required
    #           },
    #         ],
    #         rule_definition_type: "SOURCE", # required, accepts SOURCE, TARGET
    #         attribute_matching_model: "ONE_TO_ONE", # required, accepts ONE_TO_ONE, MANY_TO_MANY
    #         record_matching_model: "ONE_SOURCE_TO_ONE_TARGET", # required, accepts ONE_SOURCE_TO_ONE_TARGET, MANY_SOURCE_TO_ONE_TARGET
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: {
    #         },
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         },
    #       },
    #     },
    #     role_arn: "IdMappingRoleArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_name #=> String
    #   resp.workflow_arn #=> String
    #   resp.description #=> String
    #   resp.input_source_config #=> Array
    #   resp.input_source_config[0].input_source_arn #=> String
    #   resp.input_source_config[0].schema_name #=> String
    #   resp.input_source_config[0].type #=> String, one of "SOURCE", "TARGET"
    #   resp.output_source_config #=> Array
    #   resp.output_source_config[0].output_s3_path #=> String
    #   resp.output_source_config[0].kms_arn #=> String
    #   resp.id_mapping_techniques.id_mapping_type #=> String, one of "PROVIDER", "RULE_BASED"
    #   resp.id_mapping_techniques.rule_based_properties.rules #=> Array
    #   resp.id_mapping_techniques.rule_based_properties.rules[0].rule_name #=> String
    #   resp.id_mapping_techniques.rule_based_properties.rules[0].matching_keys #=> Array
    #   resp.id_mapping_techniques.rule_based_properties.rules[0].matching_keys[0] #=> String
    #   resp.id_mapping_techniques.rule_based_properties.rule_definition_type #=> String, one of "SOURCE", "TARGET"
    #   resp.id_mapping_techniques.rule_based_properties.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.id_mapping_techniques.rule_based_properties.record_matching_model #=> String, one of "ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"
    #   resp.id_mapping_techniques.provider_properties.provider_service_arn #=> String
    #   resp.id_mapping_techniques.provider_properties.intermediate_source_configuration.intermediate_s3_path #=> String
    #   resp.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateIdMappingWorkflow AWS API Documentation
    #
    # @overload create_id_mapping_workflow(params = {})
    # @param [Hash] params ({})
    def create_id_mapping_workflow(params = {}, options = {})
      req = build_request(:create_id_mapping_workflow, params)
      req.send_request(options)
    end

    # Creates an ID namespace object which will help customers provide
    # metadata explaining their dataset and how to use it. Each ID namespace
    # must have a unique name. To modify an existing ID namespace, use the
    # `UpdateIdNamespace` API.
    #
    # @option params [required, String] :id_namespace_name
    #   The name of the ID namespace.
    #
    # @option params [String] :description
    #   The description of the ID namespace.
    #
    # @option params [Array<Types::IdNamespaceInputSource>] :input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #
    # @option params [Array<Types::IdNamespaceIdMappingWorkflowProperties>] :id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #
    # @option params [required, String] :type
    #   The type of ID namespace. There are two types: `SOURCE` and `TARGET`.
    #
    #   The `SOURCE` contains configurations for `sourceId` data that will be
    #   processed in an ID mapping workflow.
    #
    #   The `TARGET` contains a configuration of `targetId` to which all
    #   `sourceIds` will resolve to.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access the resources defined in this
    #   `IdNamespace` on your behalf as part of the workflow run.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateIdNamespaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdNamespaceOutput#id_namespace_name #id_namespace_name} => String
    #   * {Types::CreateIdNamespaceOutput#id_namespace_arn #id_namespace_arn} => String
    #   * {Types::CreateIdNamespaceOutput#description #description} => String
    #   * {Types::CreateIdNamespaceOutput#input_source_config #input_source_config} => Array&lt;Types::IdNamespaceInputSource&gt;
    #   * {Types::CreateIdNamespaceOutput#id_mapping_workflow_properties #id_mapping_workflow_properties} => Array&lt;Types::IdNamespaceIdMappingWorkflowProperties&gt;
    #   * {Types::CreateIdNamespaceOutput#type #type} => String
    #   * {Types::CreateIdNamespaceOutput#role_arn #role_arn} => String
    #   * {Types::CreateIdNamespaceOutput#created_at #created_at} => Time
    #   * {Types::CreateIdNamespaceOutput#updated_at #updated_at} => Time
    #   * {Types::CreateIdNamespaceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_id_namespace({
    #     id_namespace_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [
    #       {
    #         input_source_arn: "IdNamespaceInputSourceInputSourceARNString", # required
    #         schema_name: "EntityName",
    #       },
    #     ],
    #     id_mapping_workflow_properties: [
    #       {
    #         id_mapping_type: "PROVIDER", # required, accepts PROVIDER, RULE_BASED
    #         rule_based_properties: {
    #           rules: [
    #             {
    #               rule_name: "RuleRuleNameString", # required
    #               matching_keys: ["AttributeName"], # required
    #             },
    #           ],
    #           rule_definition_types: ["SOURCE"], # accepts SOURCE, TARGET
    #           attribute_matching_model: "ONE_TO_ONE", # accepts ONE_TO_ONE, MANY_TO_MANY
    #           record_matching_models: ["ONE_SOURCE_TO_ONE_TARGET"], # accepts ONE_SOURCE_TO_ONE_TARGET, MANY_SOURCE_TO_ONE_TARGET
    #         },
    #         provider_properties: {
    #           provider_service_arn: "ProviderServiceArn", # required
    #           provider_configuration: {
    #           },
    #         },
    #       },
    #     ],
    #     type: "SOURCE", # required, accepts SOURCE, TARGET
    #     role_arn: "RoleArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id_namespace_name #=> String
    #   resp.id_namespace_arn #=> String
    #   resp.description #=> String
    #   resp.input_source_config #=> Array
    #   resp.input_source_config[0].input_source_arn #=> String
    #   resp.input_source_config[0].schema_name #=> String
    #   resp.id_mapping_workflow_properties #=> Array
    #   resp.id_mapping_workflow_properties[0].id_mapping_type #=> String, one of "PROVIDER", "RULE_BASED"
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules[0].rule_name #=> String
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules[0].matching_keys #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules[0].matching_keys[0] #=> String
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rule_definition_types #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rule_definition_types[0] #=> String, one of "SOURCE", "TARGET"
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.record_matching_models #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.record_matching_models[0] #=> String, one of "ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"
    #   resp.id_mapping_workflow_properties[0].provider_properties.provider_service_arn #=> String
    #   resp.type #=> String, one of "SOURCE", "TARGET"
    #   resp.role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateIdNamespace AWS API Documentation
    #
    # @overload create_id_namespace(params = {})
    # @param [Hash] params ({})
    def create_id_namespace(params = {}, options = {})
      req = build_request(:create_id_namespace, params)
      req.send_request(options)
    end

    # Creates a `MatchingWorkflow` object which stores the configuration of
    # the data processing job to be run. It is important to note that there
    # should not be a pre-existing `MatchingWorkflow` with the same name. To
    # modify an existing workflow, utilize the `UpdateMatchingWorkflow` API.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow. There can't be multiple `MatchingWorkflows`
    #   with the same name.
    #
    # @option params [String] :description
    #   A description of the workflow.
    #
    # @option params [required, Array<Types::InputSource>] :input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #
    # @option params [required, Array<Types::OutputSource>] :output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #
    # @option params [required, Types::ResolutionTechniques] :resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #
    # @option params [Types::IncrementalRunConfig] :incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateMatchingWorkflowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMatchingWorkflowOutput#workflow_name #workflow_name} => String
    #   * {Types::CreateMatchingWorkflowOutput#workflow_arn #workflow_arn} => String
    #   * {Types::CreateMatchingWorkflowOutput#description #description} => String
    #   * {Types::CreateMatchingWorkflowOutput#input_source_config #input_source_config} => Array&lt;Types::InputSource&gt;
    #   * {Types::CreateMatchingWorkflowOutput#output_source_config #output_source_config} => Array&lt;Types::OutputSource&gt;
    #   * {Types::CreateMatchingWorkflowOutput#resolution_techniques #resolution_techniques} => Types::ResolutionTechniques
    #   * {Types::CreateMatchingWorkflowOutput#incremental_run_config #incremental_run_config} => Types::IncrementalRunConfig
    #   * {Types::CreateMatchingWorkflowOutput#role_arn #role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_matching_workflow({
    #     workflow_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceInputSourceARNString", # required
    #         schema_name: "EntityName", # required
    #         apply_normalization: false,
    #       },
    #     ],
    #     output_source_config: [ # required
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn",
    #         output: [ # required
    #           {
    #             name: "AttributeName", # required
    #             hashed: false,
    #           },
    #         ],
    #         apply_normalization: false,
    #       },
    #     ],
    #     resolution_techniques: { # required
    #       resolution_type: "RULE_MATCHING", # required, accepts RULE_MATCHING, ML_MATCHING, PROVIDER
    #       rule_based_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "RuleRuleNameString", # required
    #             matching_keys: ["AttributeName"], # required
    #           },
    #         ],
    #         attribute_matching_model: "ONE_TO_ONE", # required, accepts ONE_TO_ONE, MANY_TO_MANY
    #         match_purpose: "IDENTIFIER_GENERATION", # accepts IDENTIFIER_GENERATION, INDEXING
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: {
    #         },
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         },
    #       },
    #     },
    #     incremental_run_config: {
    #       incremental_run_type: "IMMEDIATE", # accepts IMMEDIATE
    #     },
    #     role_arn: "String", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_name #=> String
    #   resp.workflow_arn #=> String
    #   resp.description #=> String
    #   resp.input_source_config #=> Array
    #   resp.input_source_config[0].input_source_arn #=> String
    #   resp.input_source_config[0].schema_name #=> String
    #   resp.input_source_config[0].apply_normalization #=> Boolean
    #   resp.output_source_config #=> Array
    #   resp.output_source_config[0].output_s3_path #=> String
    #   resp.output_source_config[0].kms_arn #=> String
    #   resp.output_source_config[0].output #=> Array
    #   resp.output_source_config[0].output[0].name #=> String
    #   resp.output_source_config[0].output[0].hashed #=> Boolean
    #   resp.output_source_config[0].apply_normalization #=> Boolean
    #   resp.resolution_techniques.resolution_type #=> String, one of "RULE_MATCHING", "ML_MATCHING", "PROVIDER"
    #   resp.resolution_techniques.rule_based_properties.rules #=> Array
    #   resp.resolution_techniques.rule_based_properties.rules[0].rule_name #=> String
    #   resp.resolution_techniques.rule_based_properties.rules[0].matching_keys #=> Array
    #   resp.resolution_techniques.rule_based_properties.rules[0].matching_keys[0] #=> String
    #   resp.resolution_techniques.rule_based_properties.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.resolution_techniques.rule_based_properties.match_purpose #=> String, one of "IDENTIFIER_GENERATION", "INDEXING"
    #   resp.resolution_techniques.provider_properties.provider_service_arn #=> String
    #   resp.resolution_techniques.provider_properties.intermediate_source_configuration.intermediate_s3_path #=> String
    #   resp.incremental_run_config.incremental_run_type #=> String, one of "IMMEDIATE"
    #   resp.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateMatchingWorkflow AWS API Documentation
    #
    # @overload create_matching_workflow(params = {})
    # @param [Hash] params ({})
    def create_matching_workflow(params = {}, options = {})
      req = build_request(:create_matching_workflow, params)
      req.send_request(options)
    end

    # Creates a schema mapping, which defines the schema of the input
    # customer records table. The `SchemaMapping` also provides Entity
    # Resolution with some metadata about the table, such as the attribute
    # types of the columns and which columns to match on.
    #
    # @option params [required, String] :schema_name
    #   The name of the schema. There can't be multiple `SchemaMappings` with
    #   the same name.
    #
    # @option params [String] :description
    #   A description of the schema.
    #
    # @option params [required, Array<Types::SchemaInputAttribute>] :mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds to
    #   a column the source data table, and contains column name plus
    #   additional information that Entity Resolution uses for matching.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Types::CreateSchemaMappingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSchemaMappingOutput#schema_name #schema_name} => String
    #   * {Types::CreateSchemaMappingOutput#schema_arn #schema_arn} => String
    #   * {Types::CreateSchemaMappingOutput#description #description} => String
    #   * {Types::CreateSchemaMappingOutput#mapped_input_fields #mapped_input_fields} => Array&lt;Types::SchemaInputAttribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schema_mapping({
    #     schema_name: "EntityName", # required
    #     description: "Description",
    #     mapped_input_fields: [ # required
    #       {
    #         field_name: "AttributeName", # required
    #         type: "NAME", # required, accepts NAME, NAME_FIRST, NAME_MIDDLE, NAME_LAST, ADDRESS, ADDRESS_STREET1, ADDRESS_STREET2, ADDRESS_STREET3, ADDRESS_CITY, ADDRESS_STATE, ADDRESS_COUNTRY, ADDRESS_POSTALCODE, PHONE, PHONE_NUMBER, PHONE_COUNTRYCODE, EMAIL_ADDRESS, UNIQUE_ID, DATE, STRING, PROVIDER_ID, IPV4, IPV6, MAID
    #         group_name: "AttributeName",
    #         match_key: "AttributeName",
    #         sub_type: "AttributeName",
    #         hashed: false,
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_name #=> String
    #   resp.schema_arn #=> String
    #   resp.description #=> String
    #   resp.mapped_input_fields #=> Array
    #   resp.mapped_input_fields[0].field_name #=> String
    #   resp.mapped_input_fields[0].type #=> String, one of "NAME", "NAME_FIRST", "NAME_MIDDLE", "NAME_LAST", "ADDRESS", "ADDRESS_STREET1", "ADDRESS_STREET2", "ADDRESS_STREET3", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_COUNTRY", "ADDRESS_POSTALCODE", "PHONE", "PHONE_NUMBER", "PHONE_COUNTRYCODE", "EMAIL_ADDRESS", "UNIQUE_ID", "DATE", "STRING", "PROVIDER_ID", "IPV4", "IPV6", "MAID"
    #   resp.mapped_input_fields[0].group_name #=> String
    #   resp.mapped_input_fields[0].match_key #=> String
    #   resp.mapped_input_fields[0].sub_type #=> String
    #   resp.mapped_input_fields[0].hashed #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/CreateSchemaMapping AWS API Documentation
    #
    # @overload create_schema_mapping(params = {})
    # @param [Hash] params ({})
    def create_schema_mapping(params = {}, options = {})
      req = build_request(:create_schema_mapping, params)
      req.send_request(options)
    end

    # Deletes the `IdMappingWorkflow` with a given name. This operation will
    # succeed even if a workflow with the given name does not exist.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow to be deleted.
    #
    # @return [Types::DeleteIdMappingWorkflowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIdMappingWorkflowOutput#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_id_mapping_workflow({
    #     workflow_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteIdMappingWorkflow AWS API Documentation
    #
    # @overload delete_id_mapping_workflow(params = {})
    # @param [Hash] params ({})
    def delete_id_mapping_workflow(params = {}, options = {})
      req = build_request(:delete_id_mapping_workflow, params)
      req.send_request(options)
    end

    # Deletes the `IdNamespace` with a given name.
    #
    # @option params [required, String] :id_namespace_name
    #   The name of the ID namespace.
    #
    # @return [Types::DeleteIdNamespaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIdNamespaceOutput#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_id_namespace({
    #     id_namespace_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteIdNamespace AWS API Documentation
    #
    # @overload delete_id_namespace(params = {})
    # @param [Hash] params ({})
    def delete_id_namespace(params = {}, options = {})
      req = build_request(:delete_id_namespace, params)
      req.send_request(options)
    end

    # Deletes the `MatchingWorkflow` with a given name. This operation will
    # succeed even if a workflow with the given name does not exist.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow to be retrieved.
    #
    # @return [Types::DeleteMatchingWorkflowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMatchingWorkflowOutput#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_matching_workflow({
    #     workflow_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteMatchingWorkflow AWS API Documentation
    #
    # @overload delete_matching_workflow(params = {})
    # @param [Hash] params ({})
    def delete_matching_workflow(params = {}, options = {})
      req = build_request(:delete_matching_workflow, params)
      req.send_request(options)
    end

    # Deletes the policy statement.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource for which the policy need to be deleted.
    #
    # @option params [required, String] :statement_id
    #   A statement identifier that differentiates the statement from others
    #   in the same policy.
    #
    # @return [Types::DeletePolicyStatementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePolicyStatementOutput#arn #arn} => String
    #   * {Types::DeletePolicyStatementOutput#token #token} => String
    #   * {Types::DeletePolicyStatementOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_statement({
    #     arn: "VeniceGlobalArn", # required
    #     statement_id: "StatementId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.token #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeletePolicyStatement AWS API Documentation
    #
    # @overload delete_policy_statement(params = {})
    # @param [Hash] params ({})
    def delete_policy_statement(params = {}, options = {})
      req = build_request(:delete_policy_statement, params)
      req.send_request(options)
    end

    # Deletes the `SchemaMapping` with a given name. This operation will
    # succeed even if a schema with the given name does not exist. This
    # operation will fail if there is a `MatchingWorkflow` object that
    # references the `SchemaMapping` in the workflow's `InputSourceConfig`.
    #
    # @option params [required, String] :schema_name
    #   The name of the schema to delete.
    #
    # @return [Types::DeleteSchemaMappingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSchemaMappingOutput#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema_mapping({
    #     schema_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/DeleteSchemaMapping AWS API Documentation
    #
    # @overload delete_schema_mapping(params = {})
    # @param [Hash] params ({})
    def delete_schema_mapping(params = {}, options = {})
      req = build_request(:delete_schema_mapping, params)
      req.send_request(options)
    end

    # Generates or retrieves Match IDs for records using a rule-based
    # matching workflow. When you call this operation, it processes your
    # records against the workflow's matching rules to identify potential
    # matches. For existing records, it retrieves their Match IDs and
    # associated rules. For records without matches, it generates new Match
    # IDs. The operation saves results to Amazon S3.
    #
    # The processing type (`processingType`) you choose affects both the
    # accuracy and response time of the operation. Additional charges apply
    # for each API call, whether made through the Entity Resolution console
    # or directly via the API. The rule-based matching workflow must exist
    # and be active before calling this operation.
    #
    # @option params [required, String] :workflow_name
    #   The name of the rule-based matching workflow.
    #
    # @option params [required, Array<Types::Record>] :records
    #   The records to match.
    #
    # @option params [String] :processing_type
    #   The processing mode that determines how Match IDs are generated and
    #   results are saved. Each mode provides different levels of accuracy,
    #   response time, and completeness of results.
    #
    #   If not specified, defaults to `CONSISTENT`.
    #
    #   `CONSISTENT`: Performs immediate lookup and matching against all
    #   existing records, with results saved synchronously. Provides highest
    #   accuracy but slower response time.
    #
    #   `EVENTUAL` (shown as *Background* in the console): Performs initial
    #   match ID lookup or generation immediately, with record updates
    #   processed asynchronously in the background. Offers faster initial
    #   response time, with complete matching results available later in S3.
    #
    #   `EVENTUAL_NO_LOOKUP` (shown as *Quick ID generation* in the console):
    #   Generates new match IDs without checking existing matches, with
    #   updates processed asynchronously. Provides fastest response time but
    #   should only be used for records known to be unique.
    #
    # @return [Types::GenerateMatchIdOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateMatchIdOutput#match_groups #match_groups} => Array&lt;Types::MatchGroup&gt;
    #   * {Types::GenerateMatchIdOutput#failed_records #failed_records} => Array&lt;Types::FailedRecord&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_match_id({
    #     workflow_name: "EntityName", # required
    #     records: [ # required
    #       {
    #         input_source_arn: "RecordInputSourceARNString", # required
    #         unique_id: "UniqueId", # required
    #         record_attribute_map: { # required
    #           "RecordAttributeMapString255KeyString" => "RecordAttributeMapString255ValueString",
    #         },
    #       },
    #     ],
    #     processing_type: "CONSISTENT", # accepts CONSISTENT, EVENTUAL, EVENTUAL_NO_LOOKUP
    #   })
    #
    # @example Response structure
    #
    #   resp.match_groups #=> Array
    #   resp.match_groups[0].records #=> Array
    #   resp.match_groups[0].records[0].input_source_arn #=> String
    #   resp.match_groups[0].records[0].record_id #=> String
    #   resp.match_groups[0].match_id #=> String
    #   resp.match_groups[0].match_rule #=> String
    #   resp.failed_records #=> Array
    #   resp.failed_records[0].input_source_arn #=> String
    #   resp.failed_records[0].unique_id #=> String
    #   resp.failed_records[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GenerateMatchId AWS API Documentation
    #
    # @overload generate_match_id(params = {})
    # @param [Hash] params ({})
    def generate_match_id(params = {}, options = {})
      req = build_request(:generate_match_id, params)
      req.send_request(options)
    end

    # Returns the status, metrics, and errors (if there are any) that are
    # associated with a job.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow.
    #
    # @option params [required, String] :job_id
    #   The ID of the job.
    #
    # @return [Types::GetIdMappingJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdMappingJobOutput#job_id #job_id} => String
    #   * {Types::GetIdMappingJobOutput#status #status} => String
    #   * {Types::GetIdMappingJobOutput#start_time #start_time} => Time
    #   * {Types::GetIdMappingJobOutput#end_time #end_time} => Time
    #   * {Types::GetIdMappingJobOutput#metrics #metrics} => Types::IdMappingJobMetrics
    #   * {Types::GetIdMappingJobOutput#error_details #error_details} => Types::ErrorDetails
    #   * {Types::GetIdMappingJobOutput#output_source_config #output_source_config} => Array&lt;Types::IdMappingJobOutputSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_id_mapping_job({
    #     workflow_name: "EntityNameOrIdMappingWorkflowArn", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "QUEUED"
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.metrics.input_records #=> Integer
    #   resp.metrics.total_records_processed #=> Integer
    #   resp.metrics.records_not_processed #=> Integer
    #   resp.metrics.total_mapped_records #=> Integer
    #   resp.metrics.total_mapped_source_records #=> Integer
    #   resp.metrics.total_mapped_target_records #=> Integer
    #   resp.metrics.unique_records_loaded #=> Integer
    #   resp.error_details.error_message #=> String
    #   resp.output_source_config #=> Array
    #   resp.output_source_config[0].role_arn #=> String
    #   resp.output_source_config[0].output_s3_path #=> String
    #   resp.output_source_config[0].kms_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdMappingJob AWS API Documentation
    #
    # @overload get_id_mapping_job(params = {})
    # @param [Hash] params ({})
    def get_id_mapping_job(params = {}, options = {})
      req = build_request(:get_id_mapping_job, params)
      req.send_request(options)
    end

    # Returns the `IdMappingWorkflow` with a given name, if it exists.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow.
    #
    # @return [Types::GetIdMappingWorkflowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdMappingWorkflowOutput#workflow_name #workflow_name} => String
    #   * {Types::GetIdMappingWorkflowOutput#workflow_arn #workflow_arn} => String
    #   * {Types::GetIdMappingWorkflowOutput#description #description} => String
    #   * {Types::GetIdMappingWorkflowOutput#input_source_config #input_source_config} => Array&lt;Types::IdMappingWorkflowInputSource&gt;
    #   * {Types::GetIdMappingWorkflowOutput#output_source_config #output_source_config} => Array&lt;Types::IdMappingWorkflowOutputSource&gt;
    #   * {Types::GetIdMappingWorkflowOutput#id_mapping_techniques #id_mapping_techniques} => Types::IdMappingTechniques
    #   * {Types::GetIdMappingWorkflowOutput#created_at #created_at} => Time
    #   * {Types::GetIdMappingWorkflowOutput#updated_at #updated_at} => Time
    #   * {Types::GetIdMappingWorkflowOutput#role_arn #role_arn} => String
    #   * {Types::GetIdMappingWorkflowOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_id_mapping_workflow({
    #     workflow_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_name #=> String
    #   resp.workflow_arn #=> String
    #   resp.description #=> String
    #   resp.input_source_config #=> Array
    #   resp.input_source_config[0].input_source_arn #=> String
    #   resp.input_source_config[0].schema_name #=> String
    #   resp.input_source_config[0].type #=> String, one of "SOURCE", "TARGET"
    #   resp.output_source_config #=> Array
    #   resp.output_source_config[0].output_s3_path #=> String
    #   resp.output_source_config[0].kms_arn #=> String
    #   resp.id_mapping_techniques.id_mapping_type #=> String, one of "PROVIDER", "RULE_BASED"
    #   resp.id_mapping_techniques.rule_based_properties.rules #=> Array
    #   resp.id_mapping_techniques.rule_based_properties.rules[0].rule_name #=> String
    #   resp.id_mapping_techniques.rule_based_properties.rules[0].matching_keys #=> Array
    #   resp.id_mapping_techniques.rule_based_properties.rules[0].matching_keys[0] #=> String
    #   resp.id_mapping_techniques.rule_based_properties.rule_definition_type #=> String, one of "SOURCE", "TARGET"
    #   resp.id_mapping_techniques.rule_based_properties.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.id_mapping_techniques.rule_based_properties.record_matching_model #=> String, one of "ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"
    #   resp.id_mapping_techniques.provider_properties.provider_service_arn #=> String
    #   resp.id_mapping_techniques.provider_properties.intermediate_source_configuration.intermediate_s3_path #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.role_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdMappingWorkflow AWS API Documentation
    #
    # @overload get_id_mapping_workflow(params = {})
    # @param [Hash] params ({})
    def get_id_mapping_workflow(params = {}, options = {})
      req = build_request(:get_id_mapping_workflow, params)
      req.send_request(options)
    end

    # Returns the `IdNamespace` with a given name, if it exists.
    #
    # @option params [required, String] :id_namespace_name
    #   The name of the ID namespace.
    #
    # @return [Types::GetIdNamespaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdNamespaceOutput#id_namespace_name #id_namespace_name} => String
    #   * {Types::GetIdNamespaceOutput#id_namespace_arn #id_namespace_arn} => String
    #   * {Types::GetIdNamespaceOutput#description #description} => String
    #   * {Types::GetIdNamespaceOutput#input_source_config #input_source_config} => Array&lt;Types::IdNamespaceInputSource&gt;
    #   * {Types::GetIdNamespaceOutput#id_mapping_workflow_properties #id_mapping_workflow_properties} => Array&lt;Types::IdNamespaceIdMappingWorkflowProperties&gt;
    #   * {Types::GetIdNamespaceOutput#type #type} => String
    #   * {Types::GetIdNamespaceOutput#role_arn #role_arn} => String
    #   * {Types::GetIdNamespaceOutput#created_at #created_at} => Time
    #   * {Types::GetIdNamespaceOutput#updated_at #updated_at} => Time
    #   * {Types::GetIdNamespaceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_id_namespace({
    #     id_namespace_name: "EntityNameOrIdNamespaceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id_namespace_name #=> String
    #   resp.id_namespace_arn #=> String
    #   resp.description #=> String
    #   resp.input_source_config #=> Array
    #   resp.input_source_config[0].input_source_arn #=> String
    #   resp.input_source_config[0].schema_name #=> String
    #   resp.id_mapping_workflow_properties #=> Array
    #   resp.id_mapping_workflow_properties[0].id_mapping_type #=> String, one of "PROVIDER", "RULE_BASED"
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules[0].rule_name #=> String
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules[0].matching_keys #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules[0].matching_keys[0] #=> String
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rule_definition_types #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rule_definition_types[0] #=> String, one of "SOURCE", "TARGET"
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.record_matching_models #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.record_matching_models[0] #=> String, one of "ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"
    #   resp.id_mapping_workflow_properties[0].provider_properties.provider_service_arn #=> String
    #   resp.type #=> String, one of "SOURCE", "TARGET"
    #   resp.role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetIdNamespace AWS API Documentation
    #
    # @overload get_id_namespace(params = {})
    # @param [Hash] params ({})
    def get_id_namespace(params = {}, options = {})
      req = build_request(:get_id_namespace, params)
      req.send_request(options)
    end

    # Returns the corresponding Match ID of a customer record if the record
    # has been processed in a rule-based matching workflow or ML matching
    # workflow.
    #
    # You can call this API as a dry run of an incremental load on the
    # rule-based matching workflow.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow.
    #
    # @option params [required, Hash<String,String>] :record
    #   The record to fetch the Match ID for.
    #
    # @option params [Boolean] :apply_normalization
    #   Normalizes the attributes defined in the schema in the input data. For
    #   example, if an attribute has an `AttributeType` of `PHONE_NUMBER`, and
    #   the data in the input table is in a format of 1234567890, Entity
    #   Resolution will normalize this field in the output to (123)-456-7890.
    #
    # @return [Types::GetMatchIdOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMatchIdOutput#match_id #match_id} => String
    #   * {Types::GetMatchIdOutput#match_rule #match_rule} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_match_id({
    #     workflow_name: "EntityName", # required
    #     record: { # required
    #       "RecordAttributeMapKeyString" => "RecordAttributeMapValueString",
    #     },
    #     apply_normalization: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.match_id #=> String
    #   resp.match_rule #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchId AWS API Documentation
    #
    # @overload get_match_id(params = {})
    # @param [Hash] params ({})
    def get_match_id(params = {}, options = {})
      req = build_request(:get_match_id, params)
      req.send_request(options)
    end

    # Returns the status, metrics, and errors (if there are any) that are
    # associated with a job.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow.
    #
    # @option params [required, String] :job_id
    #   The ID of the job.
    #
    # @return [Types::GetMatchingJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMatchingJobOutput#job_id #job_id} => String
    #   * {Types::GetMatchingJobOutput#status #status} => String
    #   * {Types::GetMatchingJobOutput#start_time #start_time} => Time
    #   * {Types::GetMatchingJobOutput#end_time #end_time} => Time
    #   * {Types::GetMatchingJobOutput#metrics #metrics} => Types::JobMetrics
    #   * {Types::GetMatchingJobOutput#error_details #error_details} => Types::ErrorDetails
    #   * {Types::GetMatchingJobOutput#output_source_config #output_source_config} => Array&lt;Types::JobOutputSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_matching_job({
    #     workflow_name: "EntityName", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "QUEUED"
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.metrics.input_records #=> Integer
    #   resp.metrics.total_records_processed #=> Integer
    #   resp.metrics.records_not_processed #=> Integer
    #   resp.metrics.match_i_ds #=> Integer
    #   resp.error_details.error_message #=> String
    #   resp.output_source_config #=> Array
    #   resp.output_source_config[0].role_arn #=> String
    #   resp.output_source_config[0].output_s3_path #=> String
    #   resp.output_source_config[0].kms_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingJob AWS API Documentation
    #
    # @overload get_matching_job(params = {})
    # @param [Hash] params ({})
    def get_matching_job(params = {}, options = {})
      req = build_request(:get_matching_job, params)
      req.send_request(options)
    end

    # Returns the `MatchingWorkflow` with a given name, if it exists.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow.
    #
    # @return [Types::GetMatchingWorkflowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMatchingWorkflowOutput#workflow_name #workflow_name} => String
    #   * {Types::GetMatchingWorkflowOutput#workflow_arn #workflow_arn} => String
    #   * {Types::GetMatchingWorkflowOutput#description #description} => String
    #   * {Types::GetMatchingWorkflowOutput#input_source_config #input_source_config} => Array&lt;Types::InputSource&gt;
    #   * {Types::GetMatchingWorkflowOutput#output_source_config #output_source_config} => Array&lt;Types::OutputSource&gt;
    #   * {Types::GetMatchingWorkflowOutput#resolution_techniques #resolution_techniques} => Types::ResolutionTechniques
    #   * {Types::GetMatchingWorkflowOutput#created_at #created_at} => Time
    #   * {Types::GetMatchingWorkflowOutput#updated_at #updated_at} => Time
    #   * {Types::GetMatchingWorkflowOutput#incremental_run_config #incremental_run_config} => Types::IncrementalRunConfig
    #   * {Types::GetMatchingWorkflowOutput#role_arn #role_arn} => String
    #   * {Types::GetMatchingWorkflowOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_matching_workflow({
    #     workflow_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_name #=> String
    #   resp.workflow_arn #=> String
    #   resp.description #=> String
    #   resp.input_source_config #=> Array
    #   resp.input_source_config[0].input_source_arn #=> String
    #   resp.input_source_config[0].schema_name #=> String
    #   resp.input_source_config[0].apply_normalization #=> Boolean
    #   resp.output_source_config #=> Array
    #   resp.output_source_config[0].output_s3_path #=> String
    #   resp.output_source_config[0].kms_arn #=> String
    #   resp.output_source_config[0].output #=> Array
    #   resp.output_source_config[0].output[0].name #=> String
    #   resp.output_source_config[0].output[0].hashed #=> Boolean
    #   resp.output_source_config[0].apply_normalization #=> Boolean
    #   resp.resolution_techniques.resolution_type #=> String, one of "RULE_MATCHING", "ML_MATCHING", "PROVIDER"
    #   resp.resolution_techniques.rule_based_properties.rules #=> Array
    #   resp.resolution_techniques.rule_based_properties.rules[0].rule_name #=> String
    #   resp.resolution_techniques.rule_based_properties.rules[0].matching_keys #=> Array
    #   resp.resolution_techniques.rule_based_properties.rules[0].matching_keys[0] #=> String
    #   resp.resolution_techniques.rule_based_properties.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.resolution_techniques.rule_based_properties.match_purpose #=> String, one of "IDENTIFIER_GENERATION", "INDEXING"
    #   resp.resolution_techniques.provider_properties.provider_service_arn #=> String
    #   resp.resolution_techniques.provider_properties.intermediate_source_configuration.intermediate_s3_path #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.incremental_run_config.incremental_run_type #=> String, one of "IMMEDIATE"
    #   resp.role_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetMatchingWorkflow AWS API Documentation
    #
    # @overload get_matching_workflow(params = {})
    # @param [Hash] params ({})
    def get_matching_workflow(params = {}, options = {})
      req = build_request(:get_matching_workflow, params)
      req.send_request(options)
    end

    # Returns the resource-based policy.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the resource for which the policy
    #   need to be returned.
    #
    # @return [Types::GetPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyOutput#arn #arn} => String
    #   * {Types::GetPolicyOutput#token #token} => String
    #   * {Types::GetPolicyOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     arn: "VeniceGlobalArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.token #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetPolicy AWS API Documentation
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Returns the `ProviderService` of a given name.
    #
    # @option params [required, String] :provider_name
    #   The name of the provider. This name is typically the company name.
    #
    # @option params [required, String] :provider_service_name
    #   The ARN (Amazon Resource Name) of the product that the provider
    #   service provides.
    #
    # @return [Types::GetProviderServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProviderServiceOutput#provider_name #provider_name} => String
    #   * {Types::GetProviderServiceOutput#provider_service_name #provider_service_name} => String
    #   * {Types::GetProviderServiceOutput#provider_service_display_name #provider_service_display_name} => String
    #   * {Types::GetProviderServiceOutput#provider_service_type #provider_service_type} => String
    #   * {Types::GetProviderServiceOutput#provider_service_arn #provider_service_arn} => String
    #   * {Types::GetProviderServiceOutput#provider_configuration_definition #provider_configuration_definition} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetProviderServiceOutput#provider_id_name_space_configuration #provider_id_name_space_configuration} => Types::ProviderIdNameSpaceConfiguration
    #   * {Types::GetProviderServiceOutput#provider_job_configuration #provider_job_configuration} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetProviderServiceOutput#provider_endpoint_configuration #provider_endpoint_configuration} => Types::ProviderEndpointConfiguration
    #   * {Types::GetProviderServiceOutput#anonymized_output #anonymized_output} => Boolean
    #   * {Types::GetProviderServiceOutput#provider_entity_output_definition #provider_entity_output_definition} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetProviderServiceOutput#provider_intermediate_data_access_configuration #provider_intermediate_data_access_configuration} => Types::ProviderIntermediateDataAccessConfiguration
    #   * {Types::GetProviderServiceOutput#provider_component_schema #provider_component_schema} => Types::ProviderComponentSchema
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_provider_service({
    #     provider_name: "EntityName", # required
    #     provider_service_name: "ProviderServiceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.provider_name #=> String
    #   resp.provider_service_name #=> String
    #   resp.provider_service_display_name #=> String
    #   resp.provider_service_type #=> String, one of "ASSIGNMENT", "ID_MAPPING"
    #   resp.provider_service_arn #=> String
    #   resp.provider_id_name_space_configuration.description #=> String
    #   resp.provider_endpoint_configuration.marketplace_configuration.data_set_id #=> String
    #   resp.provider_endpoint_configuration.marketplace_configuration.revision_id #=> String
    #   resp.provider_endpoint_configuration.marketplace_configuration.asset_id #=> String
    #   resp.provider_endpoint_configuration.marketplace_configuration.listing_id #=> String
    #   resp.anonymized_output #=> Boolean
    #   resp.provider_intermediate_data_access_configuration.aws_account_ids #=> Array
    #   resp.provider_intermediate_data_access_configuration.aws_account_ids[0] #=> String
    #   resp.provider_intermediate_data_access_configuration.required_bucket_actions #=> Array
    #   resp.provider_intermediate_data_access_configuration.required_bucket_actions[0] #=> String
    #   resp.provider_component_schema.schemas #=> Array
    #   resp.provider_component_schema.schemas[0] #=> Array
    #   resp.provider_component_schema.schemas[0][0] #=> String
    #   resp.provider_component_schema.provider_schema_attributes #=> Array
    #   resp.provider_component_schema.provider_schema_attributes[0].field_name #=> String
    #   resp.provider_component_schema.provider_schema_attributes[0].type #=> String, one of "NAME", "NAME_FIRST", "NAME_MIDDLE", "NAME_LAST", "ADDRESS", "ADDRESS_STREET1", "ADDRESS_STREET2", "ADDRESS_STREET3", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_COUNTRY", "ADDRESS_POSTALCODE", "PHONE", "PHONE_NUMBER", "PHONE_COUNTRYCODE", "EMAIL_ADDRESS", "UNIQUE_ID", "DATE", "STRING", "PROVIDER_ID", "IPV4", "IPV6", "MAID"
    #   resp.provider_component_schema.provider_schema_attributes[0].sub_type #=> String
    #   resp.provider_component_schema.provider_schema_attributes[0].hashing #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetProviderService AWS API Documentation
    #
    # @overload get_provider_service(params = {})
    # @param [Hash] params ({})
    def get_provider_service(params = {}, options = {})
      req = build_request(:get_provider_service, params)
      req.send_request(options)
    end

    # Returns the SchemaMapping of a given name.
    #
    # @option params [required, String] :schema_name
    #   The name of the schema to be retrieved.
    #
    # @return [Types::GetSchemaMappingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaMappingOutput#schema_name #schema_name} => String
    #   * {Types::GetSchemaMappingOutput#schema_arn #schema_arn} => String
    #   * {Types::GetSchemaMappingOutput#description #description} => String
    #   * {Types::GetSchemaMappingOutput#mapped_input_fields #mapped_input_fields} => Array&lt;Types::SchemaInputAttribute&gt;
    #   * {Types::GetSchemaMappingOutput#created_at #created_at} => Time
    #   * {Types::GetSchemaMappingOutput#updated_at #updated_at} => Time
    #   * {Types::GetSchemaMappingOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetSchemaMappingOutput#has_workflows #has_workflows} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema_mapping({
    #     schema_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_name #=> String
    #   resp.schema_arn #=> String
    #   resp.description #=> String
    #   resp.mapped_input_fields #=> Array
    #   resp.mapped_input_fields[0].field_name #=> String
    #   resp.mapped_input_fields[0].type #=> String, one of "NAME", "NAME_FIRST", "NAME_MIDDLE", "NAME_LAST", "ADDRESS", "ADDRESS_STREET1", "ADDRESS_STREET2", "ADDRESS_STREET3", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_COUNTRY", "ADDRESS_POSTALCODE", "PHONE", "PHONE_NUMBER", "PHONE_COUNTRYCODE", "EMAIL_ADDRESS", "UNIQUE_ID", "DATE", "STRING", "PROVIDER_ID", "IPV4", "IPV6", "MAID"
    #   resp.mapped_input_fields[0].group_name #=> String
    #   resp.mapped_input_fields[0].match_key #=> String
    #   resp.mapped_input_fields[0].sub_type #=> String
    #   resp.mapped_input_fields[0].hashed #=> Boolean
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.has_workflows #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/GetSchemaMapping AWS API Documentation
    #
    # @overload get_schema_mapping(params = {})
    # @param [Hash] params ({})
    def get_schema_mapping(params = {}, options = {})
      req = build_request(:get_schema_mapping, params)
      req.send_request(options)
    end

    # Lists all ID mapping jobs for a given workflow.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow to be retrieved.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListIdMappingJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdMappingJobsOutput#jobs #jobs} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListIdMappingJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_id_mapping_jobs({
    #     workflow_name: "EntityNameOrIdMappingWorkflowArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "QUEUED"
    #   resp.jobs[0].start_time #=> Time
    #   resp.jobs[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdMappingJobs AWS API Documentation
    #
    # @overload list_id_mapping_jobs(params = {})
    # @param [Hash] params ({})
    def list_id_mapping_jobs(params = {}, options = {})
      req = build_request(:list_id_mapping_jobs, params)
      req.send_request(options)
    end

    # Returns a list of all the `IdMappingWorkflows` that have been created
    # for an Amazon Web Services account.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListIdMappingWorkflowsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdMappingWorkflowsOutput#workflow_summaries #workflow_summaries} => Array&lt;Types::IdMappingWorkflowSummary&gt;
    #   * {Types::ListIdMappingWorkflowsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_id_mapping_workflows({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_summaries #=> Array
    #   resp.workflow_summaries[0].workflow_name #=> String
    #   resp.workflow_summaries[0].workflow_arn #=> String
    #   resp.workflow_summaries[0].created_at #=> Time
    #   resp.workflow_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdMappingWorkflows AWS API Documentation
    #
    # @overload list_id_mapping_workflows(params = {})
    # @param [Hash] params ({})
    def list_id_mapping_workflows(params = {}, options = {})
      req = build_request(:list_id_mapping_workflows, params)
      req.send_request(options)
    end

    # Returns a list of all ID namespaces.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of `IdNamespace` objects returned per page.
    #
    # @return [Types::ListIdNamespacesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdNamespacesOutput#id_namespace_summaries #id_namespace_summaries} => Array&lt;Types::IdNamespaceSummary&gt;
    #   * {Types::ListIdNamespacesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_id_namespaces({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.id_namespace_summaries #=> Array
    #   resp.id_namespace_summaries[0].id_namespace_name #=> String
    #   resp.id_namespace_summaries[0].id_namespace_arn #=> String
    #   resp.id_namespace_summaries[0].description #=> String
    #   resp.id_namespace_summaries[0].id_mapping_workflow_properties #=> Array
    #   resp.id_namespace_summaries[0].id_mapping_workflow_properties[0].id_mapping_type #=> String, one of "PROVIDER", "RULE_BASED"
    #   resp.id_namespace_summaries[0].type #=> String, one of "SOURCE", "TARGET"
    #   resp.id_namespace_summaries[0].created_at #=> Time
    #   resp.id_namespace_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListIdNamespaces AWS API Documentation
    #
    # @overload list_id_namespaces(params = {})
    # @param [Hash] params ({})
    def list_id_namespaces(params = {}, options = {})
      req = build_request(:list_id_namespaces, params)
      req.send_request(options)
    end

    # Lists all jobs for a given workflow.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow to be retrieved.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListMatchingJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMatchingJobsOutput#jobs #jobs} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListMatchingJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_matching_jobs({
    #     workflow_name: "EntityName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "QUEUED"
    #   resp.jobs[0].start_time #=> Time
    #   resp.jobs[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingJobs AWS API Documentation
    #
    # @overload list_matching_jobs(params = {})
    # @param [Hash] params ({})
    def list_matching_jobs(params = {}, options = {})
      req = build_request(:list_matching_jobs, params)
      req.send_request(options)
    end

    # Returns a list of all the `MatchingWorkflows` that have been created
    # for an Amazon Web Services account.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListMatchingWorkflowsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMatchingWorkflowsOutput#workflow_summaries #workflow_summaries} => Array&lt;Types::MatchingWorkflowSummary&gt;
    #   * {Types::ListMatchingWorkflowsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_matching_workflows({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_summaries #=> Array
    #   resp.workflow_summaries[0].workflow_name #=> String
    #   resp.workflow_summaries[0].workflow_arn #=> String
    #   resp.workflow_summaries[0].created_at #=> Time
    #   resp.workflow_summaries[0].updated_at #=> Time
    #   resp.workflow_summaries[0].resolution_type #=> String, one of "RULE_MATCHING", "ML_MATCHING", "PROVIDER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListMatchingWorkflows AWS API Documentation
    #
    # @overload list_matching_workflows(params = {})
    # @param [Hash] params ({})
    def list_matching_workflows(params = {}, options = {})
      req = build_request(:list_matching_workflows, params)
      req.send_request(options)
    end

    # Returns a list of all the `ProviderServices` that are available in
    # this Amazon Web Services Region.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @option params [String] :provider_name
    #   The name of the provider. This name is typically the company name.
    #
    # @return [Types::ListProviderServicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProviderServicesOutput#provider_service_summaries #provider_service_summaries} => Array&lt;Types::ProviderServiceSummary&gt;
    #   * {Types::ListProviderServicesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provider_services({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     provider_name: "EntityName",
    #   })
    #
    # @example Response structure
    #
    #   resp.provider_service_summaries #=> Array
    #   resp.provider_service_summaries[0].provider_service_arn #=> String
    #   resp.provider_service_summaries[0].provider_name #=> String
    #   resp.provider_service_summaries[0].provider_service_display_name #=> String
    #   resp.provider_service_summaries[0].provider_service_name #=> String
    #   resp.provider_service_summaries[0].provider_service_type #=> String, one of "ASSIGNMENT", "ID_MAPPING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListProviderServices AWS API Documentation
    #
    # @overload list_provider_services(params = {})
    # @param [Hash] params ({})
    def list_provider_services(params = {}, options = {})
      req = build_request(:list_provider_services, params)
      req.send_request(options)
    end

    # Returns a list of all the `SchemaMappings` that have been created for
    # an Amazon Web Services account.
    #
    # @option params [String] :next_token
    #   The pagination token from the previous API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects returned per page.
    #
    # @return [Types::ListSchemaMappingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemaMappingsOutput#schema_list #schema_list} => Array&lt;Types::SchemaMappingSummary&gt;
    #   * {Types::ListSchemaMappingsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schema_mappings({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_list #=> Array
    #   resp.schema_list[0].schema_name #=> String
    #   resp.schema_list[0].schema_arn #=> String
    #   resp.schema_list[0].created_at #=> Time
    #   resp.schema_list[0].updated_at #=> Time
    #   resp.schema_list[0].has_workflows #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListSchemaMappings AWS API Documentation
    #
    # @overload list_schema_mappings(params = {})
    # @param [Hash] params ({})
    def list_schema_mappings(params = {}, options = {})
      req = build_request(:list_schema_mappings, params)
      req.send_request(options)
    end

    # Displays the tags associated with an Entity Resolution resource. In
    # Entity Resolution, `SchemaMapping`, and `MatchingWorkflow` can be
    # tagged.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which you want to view tags.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "VeniceGlobalArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Updates the resource-based policy.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the resource for which the policy
    #   needs to be updated.
    #
    # @option params [String] :token
    #   A unique identifier for the current revision of the policy.
    #
    # @option params [required, String] :policy
    #   The resource-based policy.
    #
    #   If you set the value of the `effect` parameter in the `policy` to
    #   `Deny` for the `PutPolicy` operation, you must also set the value of
    #   the `effect` parameter to `Deny` for the `AddPolicyStatement`
    #   operation.
    #
    # @return [Types::PutPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutPolicyOutput#arn #arn} => String
    #   * {Types::PutPolicyOutput#token #token} => String
    #   * {Types::PutPolicyOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_policy({
    #     arn: "VeniceGlobalArn", # required
    #     token: "PolicyToken",
    #     policy: "PolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.token #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/PutPolicy AWS API Documentation
    #
    # @overload put_policy(params = {})
    # @param [Hash] params ({})
    def put_policy(params = {}, options = {})
      req = build_request(:put_policy, params)
      req.send_request(options)
    end

    # Starts the `IdMappingJob` of a workflow. The workflow must have
    # previously been created using the `CreateIdMappingWorkflow` endpoint.
    #
    # @option params [required, String] :workflow_name
    #   The name of the ID mapping job to be retrieved.
    #
    # @option params [Array<Types::IdMappingJobOutputSource>] :output_source_config
    #   A list of `OutputSource` objects.
    #
    # @return [Types::StartIdMappingJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartIdMappingJobOutput#job_id #job_id} => String
    #   * {Types::StartIdMappingJobOutput#output_source_config #output_source_config} => Array&lt;Types::IdMappingJobOutputSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_id_mapping_job({
    #     workflow_name: "EntityNameOrIdMappingWorkflowArn", # required
    #     output_source_config: [
    #       {
    #         role_arn: "RoleArn", # required
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.output_source_config #=> Array
    #   resp.output_source_config[0].role_arn #=> String
    #   resp.output_source_config[0].output_s3_path #=> String
    #   resp.output_source_config[0].kms_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/StartIdMappingJob AWS API Documentation
    #
    # @overload start_id_mapping_job(params = {})
    # @param [Hash] params ({})
    def start_id_mapping_job(params = {}, options = {})
      req = build_request(:start_id_mapping_job, params)
      req.send_request(options)
    end

    # Starts the `MatchingJob` of a workflow. The workflow must have
    # previously been created using the `CreateMatchingWorkflow` endpoint.
    #
    # @option params [required, String] :workflow_name
    #   The name of the matching job to be retrieved.
    #
    # @return [Types::StartMatchingJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMatchingJobOutput#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_matching_job({
    #     workflow_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/StartMatchingJob AWS API Documentation
    #
    # @overload start_matching_job(params = {})
    # @param [Hash] params ({})
    def start_matching_job(params = {}, options = {})
      req = build_request(:start_matching_job, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified Entity
    # Resolution resource. Tags can help you organize and categorize your
    # resources. You can also use them to scope user permissions by granting
    # a user permission to access or change only resources with certain tag
    # values. In Entity Resolution, `SchemaMapping` and `MatchingWorkflow`
    # can be tagged. Tags don't have any semantic meaning to Amazon Web
    # Services and are interpreted strictly as strings of characters. You
    # can use the `TagResource` action with a resource that already has
    # tags. If you specify a new tag key, this tag is appended to the list
    # of tags associated with the resource. If you specify a tag key that is
    # already associated with the resource, the new tag value that you
    # specify replaces the previous value for that tag.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which you want to view tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "VeniceGlobalArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified Entity Resolution
    # resource. In Entity Resolution, `SchemaMapping`, and
    # `MatchingWorkflow` can be tagged.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource for which you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "VeniceGlobalArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing `IdMappingWorkflow`. This method is identical to
    # `CreateIdMappingWorkflow`, except it uses an HTTP `PUT` request
    # instead of a `POST` request, and the `IdMappingWorkflow` must already
    # exist for the method to succeed.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow.
    #
    # @option params [String] :description
    #   A description of the workflow.
    #
    # @option params [required, Array<Types::IdMappingWorkflowInputSource>] :input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #
    # @option params [Array<Types::IdMappingWorkflowOutputSource>] :output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path` and `KMSArn`.
    #
    # @option params [required, Types::IdMappingTechniques] :id_mapping_techniques
    #   An object which defines the ID mapping technique and any additional
    #   configurations.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access Amazon Web Services resources on your
    #   behalf.
    #
    # @return [Types::UpdateIdMappingWorkflowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdMappingWorkflowOutput#workflow_name #workflow_name} => String
    #   * {Types::UpdateIdMappingWorkflowOutput#workflow_arn #workflow_arn} => String
    #   * {Types::UpdateIdMappingWorkflowOutput#description #description} => String
    #   * {Types::UpdateIdMappingWorkflowOutput#input_source_config #input_source_config} => Array&lt;Types::IdMappingWorkflowInputSource&gt;
    #   * {Types::UpdateIdMappingWorkflowOutput#output_source_config #output_source_config} => Array&lt;Types::IdMappingWorkflowOutputSource&gt;
    #   * {Types::UpdateIdMappingWorkflowOutput#id_mapping_techniques #id_mapping_techniques} => Types::IdMappingTechniques
    #   * {Types::UpdateIdMappingWorkflowOutput#role_arn #role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_id_mapping_workflow({
    #     workflow_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "IdMappingWorkflowInputSourceInputSourceARNString", # required
    #         schema_name: "EntityName",
    #         type: "SOURCE", # accepts SOURCE, TARGET
    #       },
    #     ],
    #     output_source_config: [
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn",
    #       },
    #     ],
    #     id_mapping_techniques: { # required
    #       id_mapping_type: "PROVIDER", # required, accepts PROVIDER, RULE_BASED
    #       rule_based_properties: {
    #         rules: [
    #           {
    #             rule_name: "RuleRuleNameString", # required
    #             matching_keys: ["AttributeName"], # required
    #           },
    #         ],
    #         rule_definition_type: "SOURCE", # required, accepts SOURCE, TARGET
    #         attribute_matching_model: "ONE_TO_ONE", # required, accepts ONE_TO_ONE, MANY_TO_MANY
    #         record_matching_model: "ONE_SOURCE_TO_ONE_TARGET", # required, accepts ONE_SOURCE_TO_ONE_TARGET, MANY_SOURCE_TO_ONE_TARGET
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: {
    #         },
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         },
    #       },
    #     },
    #     role_arn: "IdMappingRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_name #=> String
    #   resp.workflow_arn #=> String
    #   resp.description #=> String
    #   resp.input_source_config #=> Array
    #   resp.input_source_config[0].input_source_arn #=> String
    #   resp.input_source_config[0].schema_name #=> String
    #   resp.input_source_config[0].type #=> String, one of "SOURCE", "TARGET"
    #   resp.output_source_config #=> Array
    #   resp.output_source_config[0].output_s3_path #=> String
    #   resp.output_source_config[0].kms_arn #=> String
    #   resp.id_mapping_techniques.id_mapping_type #=> String, one of "PROVIDER", "RULE_BASED"
    #   resp.id_mapping_techniques.rule_based_properties.rules #=> Array
    #   resp.id_mapping_techniques.rule_based_properties.rules[0].rule_name #=> String
    #   resp.id_mapping_techniques.rule_based_properties.rules[0].matching_keys #=> Array
    #   resp.id_mapping_techniques.rule_based_properties.rules[0].matching_keys[0] #=> String
    #   resp.id_mapping_techniques.rule_based_properties.rule_definition_type #=> String, one of "SOURCE", "TARGET"
    #   resp.id_mapping_techniques.rule_based_properties.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.id_mapping_techniques.rule_based_properties.record_matching_model #=> String, one of "ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"
    #   resp.id_mapping_techniques.provider_properties.provider_service_arn #=> String
    #   resp.id_mapping_techniques.provider_properties.intermediate_source_configuration.intermediate_s3_path #=> String
    #   resp.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateIdMappingWorkflow AWS API Documentation
    #
    # @overload update_id_mapping_workflow(params = {})
    # @param [Hash] params ({})
    def update_id_mapping_workflow(params = {}, options = {})
      req = build_request(:update_id_mapping_workflow, params)
      req.send_request(options)
    end

    # Updates an existing ID namespace.
    #
    # @option params [required, String] :id_namespace_name
    #   The name of the ID namespace.
    #
    # @option params [String] :description
    #   The description of the ID namespace.
    #
    # @option params [Array<Types::IdNamespaceInputSource>] :input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #
    # @option params [Array<Types::IdNamespaceIdMappingWorkflowProperties>] :id_mapping_workflow_properties
    #   Determines the properties of `IdMappingWorkflow` where this
    #   `IdNamespace` can be used as a `Source` or a `Target`.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to access the resources defined in this
    #   `IdNamespace` on your behalf as part of a workflow run.
    #
    # @return [Types::UpdateIdNamespaceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdNamespaceOutput#id_namespace_name #id_namespace_name} => String
    #   * {Types::UpdateIdNamespaceOutput#id_namespace_arn #id_namespace_arn} => String
    #   * {Types::UpdateIdNamespaceOutput#description #description} => String
    #   * {Types::UpdateIdNamespaceOutput#input_source_config #input_source_config} => Array&lt;Types::IdNamespaceInputSource&gt;
    #   * {Types::UpdateIdNamespaceOutput#id_mapping_workflow_properties #id_mapping_workflow_properties} => Array&lt;Types::IdNamespaceIdMappingWorkflowProperties&gt;
    #   * {Types::UpdateIdNamespaceOutput#type #type} => String
    #   * {Types::UpdateIdNamespaceOutput#role_arn #role_arn} => String
    #   * {Types::UpdateIdNamespaceOutput#created_at #created_at} => Time
    #   * {Types::UpdateIdNamespaceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_id_namespace({
    #     id_namespace_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [
    #       {
    #         input_source_arn: "IdNamespaceInputSourceInputSourceARNString", # required
    #         schema_name: "EntityName",
    #       },
    #     ],
    #     id_mapping_workflow_properties: [
    #       {
    #         id_mapping_type: "PROVIDER", # required, accepts PROVIDER, RULE_BASED
    #         rule_based_properties: {
    #           rules: [
    #             {
    #               rule_name: "RuleRuleNameString", # required
    #               matching_keys: ["AttributeName"], # required
    #             },
    #           ],
    #           rule_definition_types: ["SOURCE"], # accepts SOURCE, TARGET
    #           attribute_matching_model: "ONE_TO_ONE", # accepts ONE_TO_ONE, MANY_TO_MANY
    #           record_matching_models: ["ONE_SOURCE_TO_ONE_TARGET"], # accepts ONE_SOURCE_TO_ONE_TARGET, MANY_SOURCE_TO_ONE_TARGET
    #         },
    #         provider_properties: {
    #           provider_service_arn: "ProviderServiceArn", # required
    #           provider_configuration: {
    #           },
    #         },
    #       },
    #     ],
    #     role_arn: "RoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.id_namespace_name #=> String
    #   resp.id_namespace_arn #=> String
    #   resp.description #=> String
    #   resp.input_source_config #=> Array
    #   resp.input_source_config[0].input_source_arn #=> String
    #   resp.input_source_config[0].schema_name #=> String
    #   resp.id_mapping_workflow_properties #=> Array
    #   resp.id_mapping_workflow_properties[0].id_mapping_type #=> String, one of "PROVIDER", "RULE_BASED"
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules[0].rule_name #=> String
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules[0].matching_keys #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rules[0].matching_keys[0] #=> String
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rule_definition_types #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.rule_definition_types[0] #=> String, one of "SOURCE", "TARGET"
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.record_matching_models #=> Array
    #   resp.id_mapping_workflow_properties[0].rule_based_properties.record_matching_models[0] #=> String, one of "ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"
    #   resp.id_mapping_workflow_properties[0].provider_properties.provider_service_arn #=> String
    #   resp.type #=> String, one of "SOURCE", "TARGET"
    #   resp.role_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateIdNamespace AWS API Documentation
    #
    # @overload update_id_namespace(params = {})
    # @param [Hash] params ({})
    def update_id_namespace(params = {}, options = {})
      req = build_request(:update_id_namespace, params)
      req.send_request(options)
    end

    # Updates an existing `MatchingWorkflow`. This method is identical to
    # `CreateMatchingWorkflow`, except it uses an HTTP `PUT` request instead
    # of a `POST` request, and the `MatchingWorkflow` must already exist for
    # the method to succeed.
    #
    # @option params [required, String] :workflow_name
    #   The name of the workflow to be retrieved.
    #
    # @option params [String] :description
    #   A description of the workflow.
    #
    # @option params [required, Array<Types::InputSource>] :input_source_config
    #   A list of `InputSource` objects, which have the fields
    #   `InputSourceARN` and `SchemaName`.
    #
    # @option params [required, Array<Types::OutputSource>] :output_source_config
    #   A list of `OutputSource` objects, each of which contains fields
    #   `OutputS3Path`, `ApplyNormalization`, and `Output`.
    #
    # @option params [required, Types::ResolutionTechniques] :resolution_techniques
    #   An object which defines the `resolutionType` and the
    #   `ruleBasedProperties`.
    #
    # @option params [Types::IncrementalRunConfig] :incremental_run_config
    #   An object which defines an incremental run type and has only
    #   `incrementalRunType` as a field.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #
    # @return [Types::UpdateMatchingWorkflowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMatchingWorkflowOutput#workflow_name #workflow_name} => String
    #   * {Types::UpdateMatchingWorkflowOutput#description #description} => String
    #   * {Types::UpdateMatchingWorkflowOutput#input_source_config #input_source_config} => Array&lt;Types::InputSource&gt;
    #   * {Types::UpdateMatchingWorkflowOutput#output_source_config #output_source_config} => Array&lt;Types::OutputSource&gt;
    #   * {Types::UpdateMatchingWorkflowOutput#resolution_techniques #resolution_techniques} => Types::ResolutionTechniques
    #   * {Types::UpdateMatchingWorkflowOutput#incremental_run_config #incremental_run_config} => Types::IncrementalRunConfig
    #   * {Types::UpdateMatchingWorkflowOutput#role_arn #role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_matching_workflow({
    #     workflow_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceInputSourceARNString", # required
    #         schema_name: "EntityName", # required
    #         apply_normalization: false,
    #       },
    #     ],
    #     output_source_config: [ # required
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn",
    #         output: [ # required
    #           {
    #             name: "AttributeName", # required
    #             hashed: false,
    #           },
    #         ],
    #         apply_normalization: false,
    #       },
    #     ],
    #     resolution_techniques: { # required
    #       resolution_type: "RULE_MATCHING", # required, accepts RULE_MATCHING, ML_MATCHING, PROVIDER
    #       rule_based_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "RuleRuleNameString", # required
    #             matching_keys: ["AttributeName"], # required
    #           },
    #         ],
    #         attribute_matching_model: "ONE_TO_ONE", # required, accepts ONE_TO_ONE, MANY_TO_MANY
    #         match_purpose: "IDENTIFIER_GENERATION", # accepts IDENTIFIER_GENERATION, INDEXING
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: {
    #         },
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         },
    #       },
    #     },
    #     incremental_run_config: {
    #       incremental_run_type: "IMMEDIATE", # accepts IMMEDIATE
    #     },
    #     role_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workflow_name #=> String
    #   resp.description #=> String
    #   resp.input_source_config #=> Array
    #   resp.input_source_config[0].input_source_arn #=> String
    #   resp.input_source_config[0].schema_name #=> String
    #   resp.input_source_config[0].apply_normalization #=> Boolean
    #   resp.output_source_config #=> Array
    #   resp.output_source_config[0].output_s3_path #=> String
    #   resp.output_source_config[0].kms_arn #=> String
    #   resp.output_source_config[0].output #=> Array
    #   resp.output_source_config[0].output[0].name #=> String
    #   resp.output_source_config[0].output[0].hashed #=> Boolean
    #   resp.output_source_config[0].apply_normalization #=> Boolean
    #   resp.resolution_techniques.resolution_type #=> String, one of "RULE_MATCHING", "ML_MATCHING", "PROVIDER"
    #   resp.resolution_techniques.rule_based_properties.rules #=> Array
    #   resp.resolution_techniques.rule_based_properties.rules[0].rule_name #=> String
    #   resp.resolution_techniques.rule_based_properties.rules[0].matching_keys #=> Array
    #   resp.resolution_techniques.rule_based_properties.rules[0].matching_keys[0] #=> String
    #   resp.resolution_techniques.rule_based_properties.attribute_matching_model #=> String, one of "ONE_TO_ONE", "MANY_TO_MANY"
    #   resp.resolution_techniques.rule_based_properties.match_purpose #=> String, one of "IDENTIFIER_GENERATION", "INDEXING"
    #   resp.resolution_techniques.provider_properties.provider_service_arn #=> String
    #   resp.resolution_techniques.provider_properties.intermediate_source_configuration.intermediate_s3_path #=> String
    #   resp.incremental_run_config.incremental_run_type #=> String, one of "IMMEDIATE"
    #   resp.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateMatchingWorkflow AWS API Documentation
    #
    # @overload update_matching_workflow(params = {})
    # @param [Hash] params ({})
    def update_matching_workflow(params = {}, options = {})
      req = build_request(:update_matching_workflow, params)
      req.send_request(options)
    end

    # Updates a schema mapping.
    #
    # <note markdown="1"> A schema is immutable if it is being used by a workflow. Therefore,
    # you can't update a schema mapping if it's associated with a
    # workflow.
    #
    #  </note>
    #
    # @option params [required, String] :schema_name
    #   The name of the schema. There can't be multiple `SchemaMappings` with
    #   the same name.
    #
    # @option params [String] :description
    #   A description of the schema.
    #
    # @option params [required, Array<Types::SchemaInputAttribute>] :mapped_input_fields
    #   A list of `MappedInputFields`. Each `MappedInputField` corresponds to
    #   a column the source data table, and contains column name plus
    #   additional information that Entity Resolution uses for matching.
    #
    # @return [Types::UpdateSchemaMappingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSchemaMappingOutput#schema_name #schema_name} => String
    #   * {Types::UpdateSchemaMappingOutput#schema_arn #schema_arn} => String
    #   * {Types::UpdateSchemaMappingOutput#description #description} => String
    #   * {Types::UpdateSchemaMappingOutput#mapped_input_fields #mapped_input_fields} => Array&lt;Types::SchemaInputAttribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_schema_mapping({
    #     schema_name: "EntityName", # required
    #     description: "Description",
    #     mapped_input_fields: [ # required
    #       {
    #         field_name: "AttributeName", # required
    #         type: "NAME", # required, accepts NAME, NAME_FIRST, NAME_MIDDLE, NAME_LAST, ADDRESS, ADDRESS_STREET1, ADDRESS_STREET2, ADDRESS_STREET3, ADDRESS_CITY, ADDRESS_STATE, ADDRESS_COUNTRY, ADDRESS_POSTALCODE, PHONE, PHONE_NUMBER, PHONE_COUNTRYCODE, EMAIL_ADDRESS, UNIQUE_ID, DATE, STRING, PROVIDER_ID, IPV4, IPV6, MAID
    #         group_name: "AttributeName",
    #         match_key: "AttributeName",
    #         sub_type: "AttributeName",
    #         hashed: false,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_name #=> String
    #   resp.schema_arn #=> String
    #   resp.description #=> String
    #   resp.mapped_input_fields #=> Array
    #   resp.mapped_input_fields[0].field_name #=> String
    #   resp.mapped_input_fields[0].type #=> String, one of "NAME", "NAME_FIRST", "NAME_MIDDLE", "NAME_LAST", "ADDRESS", "ADDRESS_STREET1", "ADDRESS_STREET2", "ADDRESS_STREET3", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_COUNTRY", "ADDRESS_POSTALCODE", "PHONE", "PHONE_NUMBER", "PHONE_COUNTRYCODE", "EMAIL_ADDRESS", "UNIQUE_ID", "DATE", "STRING", "PROVIDER_ID", "IPV4", "IPV6", "MAID"
    #   resp.mapped_input_fields[0].group_name #=> String
    #   resp.mapped_input_fields[0].match_key #=> String
    #   resp.mapped_input_fields[0].sub_type #=> String
    #   resp.mapped_input_fields[0].hashed #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10/UpdateSchemaMapping AWS API Documentation
    #
    # @overload update_schema_mapping(params = {})
    # @param [Hash] params ({})
    def update_schema_mapping(params = {}, options = {})
      req = build_request(:update_schema_mapping, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::EntityResolution')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-entityresolution'
      context[:gem_version] = '1.32.0'
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
