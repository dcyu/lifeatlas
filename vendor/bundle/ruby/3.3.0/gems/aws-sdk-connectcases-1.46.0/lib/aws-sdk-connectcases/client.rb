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

module Aws::ConnectCases
  # An API client for ConnectCases.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ConnectCases::Client.new(
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

    @identifier = :connectcases

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
    add_plugin(Aws::ConnectCases::Plugins::Endpoints)

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
    #   @option options [Aws::ConnectCases::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ConnectCases::EndpointParameters`.
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

    # Gets a batch of case rules. In the Amazon Connect admin website, case
    # rules are known as *case field conditions*. For more information about
    # case field conditions, see [Add case field conditions to a case
    # template][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html
    #
    # @option params [required, Array<Types::CaseRuleIdentifier>] :case_rules
    #   List of case rule identifiers.
    #
    # @option params [required, String] :domain_id
    #   Unique identifier of a Cases domain.
    #
    # @return [Types::BatchGetCaseRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCaseRuleResponse#case_rules #case_rules} => Array&lt;Types::GetCaseRuleResponse&gt;
    #   * {Types::BatchGetCaseRuleResponse#errors #errors} => Array&lt;Types::CaseRuleError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_case_rule({
    #     case_rules: [ # required
    #       {
    #         id: "CaseRuleId", # required
    #       },
    #     ],
    #     domain_id: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.case_rules #=> Array
    #   resp.case_rules[0].case_rule_arn #=> String
    #   resp.case_rules[0].case_rule_id #=> String
    #   resp.case_rules[0].created_time #=> Time
    #   resp.case_rules[0].deleted #=> Boolean
    #   resp.case_rules[0].description #=> String
    #   resp.case_rules[0].last_modified_time #=> Time
    #   resp.case_rules[0].name #=> String
    #   resp.case_rules[0].rule.required.conditions #=> Array
    #   resp.case_rules[0].rule.required.conditions[0].equal_to.operand_one.field_id #=> String
    #   resp.case_rules[0].rule.required.conditions[0].equal_to.operand_two.boolean_value #=> Boolean
    #   resp.case_rules[0].rule.required.conditions[0].equal_to.operand_two.double_value #=> Float
    #   resp.case_rules[0].rule.required.conditions[0].equal_to.operand_two.string_value #=> String
    #   resp.case_rules[0].rule.required.conditions[0].equal_to.result #=> Boolean
    #   resp.case_rules[0].rule.required.conditions[0].not_equal_to.operand_one.field_id #=> String
    #   resp.case_rules[0].rule.required.conditions[0].not_equal_to.operand_two.boolean_value #=> Boolean
    #   resp.case_rules[0].rule.required.conditions[0].not_equal_to.operand_two.double_value #=> Float
    #   resp.case_rules[0].rule.required.conditions[0].not_equal_to.operand_two.string_value #=> String
    #   resp.case_rules[0].rule.required.conditions[0].not_equal_to.result #=> Boolean
    #   resp.case_rules[0].rule.required.default_value #=> Boolean
    #   resp.case_rules[0].tags #=> Hash
    #   resp.case_rules[0].tags["String"] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].id #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/BatchGetCaseRule AWS API Documentation
    #
    # @overload batch_get_case_rule(params = {})
    # @param [Hash] params ({})
    def batch_get_case_rule(params = {}, options = {})
      req = build_request(:batch_get_case_rule, params)
      req.send_request(options)
    end

    # Returns the description for the list of fields in the request
    # parameters.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, Array<Types::FieldIdentifier>] :fields
    #   A list of unique field identifiers.
    #
    # @return [Types::BatchGetFieldResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFieldResponse#errors #errors} => Array&lt;Types::FieldError&gt;
    #   * {Types::BatchGetFieldResponse#fields #fields} => Array&lt;Types::GetFieldResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_field({
    #     domain_id: "DomainId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].id #=> String
    #   resp.errors[0].message #=> String
    #   resp.fields #=> Array
    #   resp.fields[0].created_time #=> Time
    #   resp.fields[0].deleted #=> Boolean
    #   resp.fields[0].description #=> String
    #   resp.fields[0].field_arn #=> String
    #   resp.fields[0].field_id #=> String
    #   resp.fields[0].last_modified_time #=> Time
    #   resp.fields[0].name #=> String
    #   resp.fields[0].namespace #=> String, one of "System", "Custom"
    #   resp.fields[0].tags #=> Hash
    #   resp.fields[0].tags["String"] #=> String
    #   resp.fields[0].type #=> String, one of "Text", "Number", "Boolean", "DateTime", "SingleSelect", "Url", "User"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/BatchGetField AWS API Documentation
    #
    # @overload batch_get_field(params = {})
    # @param [Hash] params ({})
    def batch_get_field(params = {}, options = {})
      req = build_request(:batch_get_field, params)
      req.send_request(options)
    end

    # Creates and updates a set of field options for a single select field
    # in a Cases domain.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :field_id
    #   The unique identifier of a field.
    #
    # @option params [required, Array<Types::FieldOption>] :options
    #   A list of `FieldOption` objects.
    #
    # @return [Types::BatchPutFieldOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutFieldOptionsResponse#errors #errors} => Array&lt;Types::FieldOptionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_field_options({
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #     options: [ # required
    #       {
    #         active: false, # required
    #         name: "FieldOptionName", # required
    #         value: "FieldOptionValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].message #=> String
    #   resp.errors[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/BatchPutFieldOptions AWS API Documentation
    #
    # @overload batch_put_field_options(params = {})
    # @param [Hash] params ({})
    def batch_put_field_options(params = {}, options = {})
      req = build_request(:batch_put_field_options, params)
      req.send_request(options)
    end

    # <note markdown="1"> If you provide a value for `PerformedBy.UserArn`
    # you must also have
    # [connect:DescribeUser][1] permission on the User ARN resource that you
    # provide
    #
    #  </note>
    #
    #  Creates a case in the specified Cases domain. Case system and custom
    # fields are taken as an array id/value pairs with a declared data
    # types.
    #
    #  The following fields are required when creating a case:
    #
    #  * `customer_id` - You must provide the full customer profile ARN in
    #   this format: `arn:aws:profile:your_AWS_Region:your_AWS_account
    #   ID:domains/your_profiles_domain_name/profiles/profile_ID`
    #
    # * `title`
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, Array<Types::FieldValue>] :fields
    #   An array of objects with field ID (matching ListFields/DescribeField)
    #   and value union data.
    #
    # @option params [Types::UserUnion] :performed_by
    #   Represents the entity that performed the action.
    #
    # @option params [required, String] :template_id
    #   A unique identifier of a template.
    #
    # @return [Types::CreateCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCaseResponse#case_arn #case_arn} => String
    #   * {Types::CreateCaseResponse#case_id #case_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_case({
    #     client_token: "CreateCaseRequestClientTokenString",
    #     domain_id: "DomainId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #         value: { # required
    #           boolean_value: false,
    #           double_value: 1.0,
    #           empty_value: {
    #           },
    #           string_value: "FieldValueUnionStringValueString",
    #           user_arn_value: "String",
    #         },
    #       },
    #     ],
    #     performed_by: {
    #       custom_entity: "CustomEntity",
    #       user_arn: "UserArn",
    #     },
    #     template_id: "TemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.case_arn #=> String
    #   resp.case_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateCase AWS API Documentation
    #
    # @overload create_case(params = {})
    # @param [Hash] params ({})
    def create_case(params = {}, options = {})
      req = build_request(:create_case, params)
      req.send_request(options)
    end

    # Creates a new case rule. In the Amazon Connect admin website, case
    # rules are known as *case field conditions*. For more information about
    # case field conditions, see [Add case field conditions to a case
    # template][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html
    #
    # @option params [String] :description
    #   The description of a case rule.
    #
    # @option params [required, String] :domain_id
    #   Unique identifier of a Cases domain.
    #
    # @option params [required, String] :name
    #   Name of the case rule.
    #
    # @option params [required, Types::CaseRuleDetails] :rule
    #   Represents what rule type should take place, under what conditions.
    #
    # @return [Types::CreateCaseRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCaseRuleResponse#case_rule_arn #case_rule_arn} => String
    #   * {Types::CreateCaseRuleResponse#case_rule_id #case_rule_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_case_rule({
    #     description: "CaseRuleDescription",
    #     domain_id: "DomainId", # required
    #     name: "CaseRuleName", # required
    #     rule: { # required
    #       required: {
    #         conditions: [ # required
    #           {
    #             equal_to: {
    #               operand_one: { # required
    #                 field_id: "FieldId",
    #               },
    #               operand_two: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "OperandTwoStringValueString",
    #               },
    #               result: false, # required
    #             },
    #             not_equal_to: {
    #               operand_one: { # required
    #                 field_id: "FieldId",
    #               },
    #               operand_two: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "OperandTwoStringValueString",
    #               },
    #               result: false, # required
    #             },
    #           },
    #         ],
    #         default_value: false, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.case_rule_arn #=> String
    #   resp.case_rule_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateCaseRule AWS API Documentation
    #
    # @overload create_case_rule(params = {})
    # @param [Hash] params ({})
    def create_case_rule(params = {}, options = {})
      req = build_request(:create_case_rule, params)
      req.send_request(options)
    end

    # Creates a domain, which is a container for all case data, such as
    # cases, fields, templates and layouts. Each Amazon Connect instance can
    # be associated with only one Cases domain.
    #
    # This will not associate your connect instance to Cases domain.
    # Instead, use the Amazon Connect [CreateIntegrationAssociation][1] API.
    # You need specific IAM permissions to successfully associate the Cases
    # domain. For more information, see [Onboard to Cases][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateIntegrationAssociation.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/required-permissions-iam-cases.html#onboard-cases-iam
    #
    # @option params [required, String] :name
    #   The name for your Cases domain. It must be unique for your Amazon Web
    #   Services account.
    #
    # @return [Types::CreateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResponse#domain_arn #domain_arn} => String
    #   * {Types::CreateDomainResponse#domain_id #domain_id} => String
    #   * {Types::CreateDomainResponse#domain_status #domain_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_arn #=> String
    #   resp.domain_id #=> String
    #   resp.domain_status #=> String, one of "Active", "CreationInProgress", "CreationFailed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates a field in the Cases domain. This field is used to define the
    # case object model (that is, defines what data can be captured on
    # cases) in a Cases domain.
    #
    # @option params [String] :description
    #   The description of the field.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :name
    #   The name of the field.
    #
    # @option params [required, String] :type
    #   Defines the data type, some system constraints, and default display of
    #   the field.
    #
    # @return [Types::CreateFieldResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFieldResponse#field_arn #field_arn} => String
    #   * {Types::CreateFieldResponse#field_id #field_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_field({
    #     description: "FieldDescription",
    #     domain_id: "DomainId", # required
    #     name: "FieldName", # required
    #     type: "Text", # required, accepts Text, Number, Boolean, DateTime, SingleSelect, Url, User
    #   })
    #
    # @example Response structure
    #
    #   resp.field_arn #=> String
    #   resp.field_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateField AWS API Documentation
    #
    # @overload create_field(params = {})
    # @param [Hash] params ({})
    def create_field(params = {}, options = {})
      req = build_request(:create_field, params)
      req.send_request(options)
    end

    # Creates a layout in the Cases domain. Layouts define the following
    # configuration in the top section and More Info tab of the Cases user
    # interface:
    #
    # * Fields to display to the users
    #
    # * Field ordering
    #
    # <note markdown="1"> Title and Status fields cannot be part of layouts since they are not
    # configurable.
    #
    #  </note>
    #
    # @option params [required, Types::LayoutContent] :content
    #   Information about which fields will be present in the layout, and
    #   information about the order of the fields.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :name
    #   The name of the layout. It must be unique for the Cases domain.
    #
    # @return [Types::CreateLayoutResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLayoutResponse#layout_arn #layout_arn} => String
    #   * {Types::CreateLayoutResponse#layout_id #layout_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_layout({
    #     content: { # required
    #       basic: {
    #         more_info: {
    #           sections: [
    #             {
    #               field_group: {
    #                 fields: [ # required
    #                   {
    #                     id: "FieldId", # required
    #                   },
    #                 ],
    #                 name: "FieldGroupNameString",
    #               },
    #             },
    #           ],
    #         },
    #         top_panel: {
    #           sections: [
    #             {
    #               field_group: {
    #                 fields: [ # required
    #                   {
    #                     id: "FieldId", # required
    #                   },
    #                 ],
    #                 name: "FieldGroupNameString",
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     domain_id: "DomainId", # required
    #     name: "LayoutName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.layout_arn #=> String
    #   resp.layout_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateLayout AWS API Documentation
    #
    # @overload create_layout(params = {})
    # @param [Hash] params ({})
    def create_layout(params = {}, options = {})
      req = build_request(:create_layout, params)
      req.send_request(options)
    end

    # Creates a related item (comments, tasks, and contacts) and associates
    # it with a case.
    #
    # <note markdown="1"> * A Related Item is a resource that is associated with a case. It may
    #   or may not have an external identifier linking it to an external
    #   resource (for example, a `contactArn`). All Related Items have their
    #   own internal identifier, the `relatedItemArn`. Examples of related
    #   items include `comments` and `contacts`.
    #
    # * If you provide a value for `performedBy.userArn` you must also have
    #   [DescribeUser][1] permission on the ARN of the user that you
    #   provide.
    #
    # * The `type` field is reserved for internal use only.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, Types::RelatedItemInputContent] :content
    #   The content of a related item to be created.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Types::UserUnion] :performed_by
    #   Represents the creator of the related item.
    #
    # @option params [required, String] :type
    #   The type of a related item.
    #
    # @return [Types::CreateRelatedItemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRelatedItemResponse#related_item_arn #related_item_arn} => String
    #   * {Types::CreateRelatedItemResponse#related_item_id #related_item_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_related_item({
    #     case_id: "CaseId", # required
    #     content: { # required
    #       comment: {
    #         body: "CommentBody", # required
    #         content_type: "Text/Plain", # required, accepts Text/Plain
    #       },
    #       contact: {
    #         contact_arn: "ContactArn", # required
    #       },
    #       file: {
    #         file_arn: "FileArn", # required
    #       },
    #       sla: {
    #         sla_input_configuration: {
    #           field_id: "FieldId",
    #           name: "SlaName", # required
    #           target_field_values: [
    #             {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               empty_value: {
    #               },
    #               string_value: "FieldValueUnionStringValueString",
    #               user_arn_value: "String",
    #             },
    #           ],
    #           target_sla_minutes: 1, # required
    #           type: "CaseField", # required, accepts CaseField
    #         },
    #       },
    #     },
    #     domain_id: "DomainId", # required
    #     performed_by: {
    #       custom_entity: "CustomEntity",
    #       user_arn: "UserArn",
    #     },
    #     type: "Contact", # required, accepts Contact, Comment, File, Sla
    #   })
    #
    # @example Response structure
    #
    #   resp.related_item_arn #=> String
    #   resp.related_item_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateRelatedItem AWS API Documentation
    #
    # @overload create_related_item(params = {})
    # @param [Hash] params ({})
    def create_related_item(params = {}, options = {})
      req = build_request(:create_related_item, params)
      req.send_request(options)
    end

    # Creates a template in the Cases domain. This template is used to
    # define the case object model (that is, to define what data can be
    # captured on cases) in a Cases domain. A template must have a unique
    # name within a domain, and it must reference existing field IDs and
    # layout IDs. Additionally, multiple fields with same IDs are not
    # allowed within the same Template. A template can be either Active or
    # Inactive, as indicated by its status. Inactive templates cannot be
    # used to create cases.
    #
    # Other template APIs are:
    #
    # * [DeleteTemplate][1]
    #
    # * [GetTemplate][2]
    #
    # * [ListTemplates][3]
    #
    # * [UpdateTemplate][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html
    # [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html
    # [4]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html
    #
    # @option params [String] :description
    #   A brief description of the template.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Types::LayoutConfiguration] :layout_configuration
    #   Configuration of layouts associated to the template.
    #
    # @option params [required, String] :name
    #   A name for the template. It must be unique per domain.
    #
    # @option params [Array<Types::RequiredField>] :required_fields
    #   A list of fields that must contain a value for a case to be
    #   successfully created with this template.
    #
    # @option params [Array<Types::TemplateRule>] :rules
    #   A list of case rules (also known as [case field conditions][1]) on a
    #   template.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html
    #
    # @option params [String] :status
    #   The status of the template.
    #
    # @return [Types::CreateTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTemplateResponse#template_arn #template_arn} => String
    #   * {Types::CreateTemplateResponse#template_id #template_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_template({
    #     description: "TemplateDescription",
    #     domain_id: "DomainId", # required
    #     layout_configuration: {
    #       default_layout: "LayoutId",
    #     },
    #     name: "TemplateName", # required
    #     required_fields: [
    #       {
    #         field_id: "FieldId", # required
    #       },
    #     ],
    #     rules: [
    #       {
    #         case_rule_id: "CaseRuleId", # required
    #         field_id: "FieldId", # required
    #       },
    #     ],
    #     status: "Active", # accepts Active, Inactive
    #   })
    #
    # @example Response structure
    #
    #   resp.template_arn #=> String
    #   resp.template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateTemplate AWS API Documentation
    #
    # @overload create_template(params = {})
    # @param [Hash] params ({})
    def create_template(params = {}, options = {})
      req = build_request(:create_template, params)
      req.send_request(options)
    end

    # The DeleteCase API permanently deletes a case and all its associated
    # resources from the cases data store. After a successful deletion, you
    # cannot:
    #
    # * Retrieve related items
    #
    # * Access audit history
    #
    # * Perform any operations that require the CaseID
    #
    # This action is irreversible. Once you delete a case, you cannot
    # recover its data.
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, String] :domain_id
    #   A unique identifier of the Cases domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_case({
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DeleteCase AWS API Documentation
    #
    # @overload delete_case(params = {})
    # @param [Hash] params ({})
    def delete_case(params = {}, options = {})
      req = build_request(:delete_case, params)
      req.send_request(options)
    end

    # Deletes a case rule. In the Amazon Connect admin website, case rules
    # are known as *case field conditions*. For more information about case
    # field conditions, see [Add case field conditions to a case
    # template][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html
    #
    # @option params [required, String] :case_rule_id
    #   Unique identifier of a case rule.
    #
    # @option params [required, String] :domain_id
    #   Unique identifier of a Cases domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_case_rule({
    #     case_rule_id: "CaseRuleId", # required
    #     domain_id: "DomainId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DeleteCaseRule AWS API Documentation
    #
    # @overload delete_case_rule(params = {})
    # @param [Hash] params ({})
    def delete_case_rule(params = {}, options = {})
      req = build_request(:delete_case_rule, params)
      req.send_request(options)
    end

    # Deletes a Cases domain.
    #
    # <note markdown="1"> After deleting your domain you must disassociate the deleted domain
    # from your Amazon Connect instance with another API call before being
    # able to use Cases again with this Amazon Connect instance. See
    # [DeleteIntegrationAssociation][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteIntegrationAssociation.html
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Deletes a field from a cases template. You can delete up to 100 fields
    # per domain.
    #
    # After a field is deleted:
    #
    # * You can still retrieve the field by calling `BatchGetField`.
    #
    # * You cannot update a deleted field by calling `UpdateField`; it
    #   throws a `ValidationException`.
    #
    # * Deleted fields are not included in the `ListFields` response.
    #
    # * Calling `CreateCase` with a deleted field throws a
    #   `ValidationException` denoting which field IDs in the request have
    #   been deleted.
    #
    # * Calling `GetCase` with a deleted field ID returns the deleted
    #   field's value if one exists.
    #
    # * Calling `UpdateCase` with a deleted field ID throws a
    #   `ValidationException` if the case does not already contain a value
    #   for the deleted field. Otherwise it succeeds, allowing you to update
    #   or remove (using `emptyValue: {}`) the field's value from the case.
    #
    # * `GetTemplate` does not return field IDs for deleted fields.
    #
    # * `GetLayout` does not return field IDs for deleted fields.
    #
    # * Calling `SearchCases` with the deleted field ID as a filter returns
    #   any cases that have a value for the deleted field that matches the
    #   filter criteria.
    #
    # * Calling `SearchCases` with a `searchTerm` value that matches a
    #   deleted field's value on a case returns the case in the response.
    #
    # * Calling `BatchPutFieldOptions` with a deleted field ID throw a
    #   `ValidationException`.
    #
    # * Calling `GetCaseEventConfiguration` does not return field IDs for
    #   deleted fields.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :field_id
    #   Unique identifier of the field.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_field({
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DeleteField AWS API Documentation
    #
    # @overload delete_field(params = {})
    # @param [Hash] params ({})
    def delete_field(params = {}, options = {})
      req = build_request(:delete_field, params)
      req.send_request(options)
    end

    # Deletes a layout from a cases template. You can delete up to 100
    # layouts per domain.
    #
    # After a layout is deleted:
    #
    # * You can still retrieve the layout by calling `GetLayout`.
    #
    # * You cannot update a deleted layout by calling `UpdateLayout`; it
    #   throws a `ValidationException`.
    #
    # * Deleted layouts are not included in the `ListLayouts` response.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :layout_id
    #   The unique identifier of the layout.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_layout({
    #     domain_id: "DomainId", # required
    #     layout_id: "LayoutId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DeleteLayout AWS API Documentation
    #
    # @overload delete_layout(params = {})
    # @param [Hash] params ({})
    def delete_layout(params = {}, options = {})
      req = build_request(:delete_layout, params)
      req.send_request(options)
    end

    # Deletes the related item resource under a case.
    #
    # <note markdown="1"> This API cannot be used on a FILE type related attachment. To delete
    # this type of file, use the [DeleteAttachedFile][1] API
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteAttachedFile.html
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, String] :domain_id
    #   A unique identifier of the Cases domain.
    #
    # @option params [required, String] :related_item_id
    #   A unique identifier of a related item.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_related_item({
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #     related_item_id: "RelatedItemId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DeleteRelatedItem AWS API Documentation
    #
    # @overload delete_related_item(params = {})
    # @param [Hash] params ({})
    def delete_related_item(params = {}, options = {})
      req = build_request(:delete_related_item, params)
      req.send_request(options)
    end

    # Deletes a cases template. You can delete up to 100 templates per
    # domain.
    #
    # After a cases template is deleted:
    #
    # * You can still retrieve the template by calling `GetTemplate`.
    #
    # * You cannot update the template.
    #
    # * You cannot create a case by using the deleted template.
    #
    # * Deleted templates are not included in the `ListTemplates` response.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :template_id
    #   A unique identifier of a template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_template({
    #     domain_id: "DomainId", # required
    #     template_id: "TemplateId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DeleteTemplate AWS API Documentation
    #
    # @overload delete_template(params = {})
    # @param [Hash] params ({})
    def delete_template(params = {}, options = {})
      req = build_request(:delete_template, params)
      req.send_request(options)
    end

    # Returns information about a specific case if it exists.
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, Array<Types::FieldIdentifier>] :fields
    #   A list of unique field identifiers.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::GetCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCaseResponse#fields #fields} => Array&lt;Types::FieldValue&gt;
    #   * {Types::GetCaseResponse#next_token #next_token} => String
    #   * {Types::GetCaseResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetCaseResponse#template_id #template_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_case({
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.fields #=> Array
    #   resp.fields[0].id #=> String
    #   resp.fields[0].value.boolean_value #=> Boolean
    #   resp.fields[0].value.double_value #=> Float
    #   resp.fields[0].value.string_value #=> String
    #   resp.fields[0].value.user_arn_value #=> String
    #   resp.next_token #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetCase AWS API Documentation
    #
    # @overload get_case(params = {})
    # @param [Hash] params ({})
    def get_case(params = {}, options = {})
      req = build_request(:get_case, params)
      req.send_request(options)
    end

    # Returns the audit history about a specific case if it exists.
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of audit events to return. The current maximum
    #   supported value is 25. This is also the default when no other value is
    #   provided.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::GetCaseAuditEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCaseAuditEventsResponse#audit_events #audit_events} => Array&lt;Types::AuditEvent&gt;
    #   * {Types::GetCaseAuditEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_case_audit_events({
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.audit_events #=> Array
    #   resp.audit_events[0].event_id #=> String
    #   resp.audit_events[0].fields #=> Array
    #   resp.audit_events[0].fields[0].event_field_id #=> String
    #   resp.audit_events[0].fields[0].new_value.boolean_value #=> Boolean
    #   resp.audit_events[0].fields[0].new_value.double_value #=> Float
    #   resp.audit_events[0].fields[0].new_value.string_value #=> String
    #   resp.audit_events[0].fields[0].new_value.user_arn_value #=> String
    #   resp.audit_events[0].fields[0].old_value.boolean_value #=> Boolean
    #   resp.audit_events[0].fields[0].old_value.double_value #=> Float
    #   resp.audit_events[0].fields[0].old_value.string_value #=> String
    #   resp.audit_events[0].fields[0].old_value.user_arn_value #=> String
    #   resp.audit_events[0].performed_by.iam_principal_arn #=> String
    #   resp.audit_events[0].performed_by.user.custom_entity #=> String
    #   resp.audit_events[0].performed_by.user.user_arn #=> String
    #   resp.audit_events[0].performed_time #=> Time
    #   resp.audit_events[0].related_item_type #=> String, one of "Contact", "Comment", "File", "Sla"
    #   resp.audit_events[0].type #=> String, one of "Case.Created", "Case.Updated", "RelatedItem.Created"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetCaseAuditEvents AWS API Documentation
    #
    # @overload get_case_audit_events(params = {})
    # @param [Hash] params ({})
    def get_case_audit_events(params = {}, options = {})
      req = build_request(:get_case_audit_events, params)
      req.send_request(options)
    end

    # Returns the case event publishing configuration.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @return [Types::GetCaseEventConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCaseEventConfigurationResponse#event_bridge #event_bridge} => Types::EventBridgeConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_case_event_configuration({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_bridge.enabled #=> Boolean
    #   resp.event_bridge.included_data.case_data.fields #=> Array
    #   resp.event_bridge.included_data.case_data.fields[0].id #=> String
    #   resp.event_bridge.included_data.related_item_data.include_content #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetCaseEventConfiguration AWS API Documentation
    #
    # @overload get_case_event_configuration(params = {})
    # @param [Hash] params ({})
    def get_case_event_configuration(params = {}, options = {})
      req = build_request(:get_case_event_configuration, params)
      req.send_request(options)
    end

    # Returns information about a specific domain if it exists.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @return [Types::GetDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainResponse#created_time #created_time} => Time
    #   * {Types::GetDomainResponse#domain_arn #domain_arn} => String
    #   * {Types::GetDomainResponse#domain_id #domain_id} => String
    #   * {Types::GetDomainResponse#domain_status #domain_status} => String
    #   * {Types::GetDomainResponse#name #name} => String
    #   * {Types::GetDomainResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_time #=> Time
    #   resp.domain_arn #=> String
    #   resp.domain_id #=> String
    #   resp.domain_status #=> String, one of "Active", "CreationInProgress", "CreationFailed"
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetDomain AWS API Documentation
    #
    # @overload get_domain(params = {})
    # @param [Hash] params ({})
    def get_domain(params = {}, options = {})
      req = build_request(:get_domain, params)
      req.send_request(options)
    end

    # Returns the details for the requested layout.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :layout_id
    #   The unique identifier of the layout.
    #
    # @return [Types::GetLayoutResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLayoutResponse#content #content} => Types::LayoutContent
    #   * {Types::GetLayoutResponse#created_time #created_time} => Time
    #   * {Types::GetLayoutResponse#deleted #deleted} => Boolean
    #   * {Types::GetLayoutResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetLayoutResponse#layout_arn #layout_arn} => String
    #   * {Types::GetLayoutResponse#layout_id #layout_id} => String
    #   * {Types::GetLayoutResponse#name #name} => String
    #   * {Types::GetLayoutResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layout({
    #     domain_id: "DomainId", # required
    #     layout_id: "LayoutId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content.basic.more_info.sections #=> Array
    #   resp.content.basic.more_info.sections[0].field_group.fields #=> Array
    #   resp.content.basic.more_info.sections[0].field_group.fields[0].id #=> String
    #   resp.content.basic.more_info.sections[0].field_group.name #=> String
    #   resp.content.basic.top_panel.sections #=> Array
    #   resp.content.basic.top_panel.sections[0].field_group.fields #=> Array
    #   resp.content.basic.top_panel.sections[0].field_group.fields[0].id #=> String
    #   resp.content.basic.top_panel.sections[0].field_group.name #=> String
    #   resp.created_time #=> Time
    #   resp.deleted #=> Boolean
    #   resp.last_modified_time #=> Time
    #   resp.layout_arn #=> String
    #   resp.layout_id #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetLayout AWS API Documentation
    #
    # @overload get_layout(params = {})
    # @param [Hash] params ({})
    def get_layout(params = {}, options = {})
      req = build_request(:get_layout, params)
      req.send_request(options)
    end

    # Returns the details for the requested template. Other template APIs
    # are:
    #
    # * [CreateTemplate][1]
    #
    # * [DeleteTemplate][2]
    #
    # * [ListTemplates][3]
    #
    # * [UpdateTemplate][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html
    # [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html
    # [4]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :template_id
    #   A unique identifier of a template.
    #
    # @return [Types::GetTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTemplateResponse#created_time #created_time} => Time
    #   * {Types::GetTemplateResponse#deleted #deleted} => Boolean
    #   * {Types::GetTemplateResponse#description #description} => String
    #   * {Types::GetTemplateResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetTemplateResponse#layout_configuration #layout_configuration} => Types::LayoutConfiguration
    #   * {Types::GetTemplateResponse#name #name} => String
    #   * {Types::GetTemplateResponse#required_fields #required_fields} => Array&lt;Types::RequiredField&gt;
    #   * {Types::GetTemplateResponse#rules #rules} => Array&lt;Types::TemplateRule&gt;
    #   * {Types::GetTemplateResponse#status #status} => String
    #   * {Types::GetTemplateResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetTemplateResponse#template_arn #template_arn} => String
    #   * {Types::GetTemplateResponse#template_id #template_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template({
    #     domain_id: "DomainId", # required
    #     template_id: "TemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_time #=> Time
    #   resp.deleted #=> Boolean
    #   resp.description #=> String
    #   resp.last_modified_time #=> Time
    #   resp.layout_configuration.default_layout #=> String
    #   resp.name #=> String
    #   resp.required_fields #=> Array
    #   resp.required_fields[0].field_id #=> String
    #   resp.rules #=> Array
    #   resp.rules[0].case_rule_id #=> String
    #   resp.rules[0].field_id #=> String
    #   resp.status #=> String, one of "Active", "Inactive"
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.template_arn #=> String
    #   resp.template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetTemplate AWS API Documentation
    #
    # @overload get_template(params = {})
    # @param [Hash] params ({})
    def get_template(params = {}, options = {})
      req = build_request(:get_template, params)
      req.send_request(options)
    end

    # Lists all case rules in a Cases domain. In the Amazon Connect admin
    # website, case rules are known as *case field conditions*. For more
    # information about case field conditions, see [Add case field
    # conditions to a case template][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html
    #
    # @option params [required, String] :domain_id
    #   Unique identifier of a Cases domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListCaseRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCaseRulesResponse#case_rules #case_rules} => Array&lt;Types::CaseRuleSummary&gt;
    #   * {Types::ListCaseRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_case_rules({
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.case_rules #=> Array
    #   resp.case_rules[0].case_rule_arn #=> String
    #   resp.case_rules[0].case_rule_id #=> String
    #   resp.case_rules[0].description #=> String
    #   resp.case_rules[0].name #=> String
    #   resp.case_rules[0].rule_type #=> String, one of "Required"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListCaseRules AWS API Documentation
    #
    # @overload list_case_rules(params = {})
    # @param [Hash] params ({})
    def list_case_rules(params = {}, options = {})
      req = build_request(:list_case_rules, params)
      req.send_request(options)
    end

    # Lists cases for a given contact.
    #
    # @option params [required, String] :contact_arn
    #   A unique identifier of a contact in Amazon Connect.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListCasesForContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCasesForContactResponse#cases #cases} => Array&lt;Types::CaseSummary&gt;
    #   * {Types::ListCasesForContactResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cases_for_contact({
    #     contact_arn: "ContactArn", # required
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.cases #=> Array
    #   resp.cases[0].case_id #=> String
    #   resp.cases[0].template_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListCasesForContact AWS API Documentation
    #
    # @overload list_cases_for_contact(params = {})
    # @param [Hash] params ({})
    def list_cases_for_contact(params = {}, options = {})
      req = build_request(:list_cases_for_contact, params)
      req.send_request(options)
    end

    # Lists all cases domains in the Amazon Web Services account. Each list
    # item is a condensed summary object of the domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsResponse#domains #domains} => Array&lt;Types::DomainSummary&gt;
    #   * {Types::ListDomainsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domains #=> Array
    #   resp.domains[0].domain_arn #=> String
    #   resp.domains[0].domain_id #=> String
    #   resp.domains[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # Lists all of the field options for a field identifier in the domain.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :field_id
    #   The unique identifier of a field.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Array<String>] :values
    #   A list of `FieldOption` values to filter on for `ListFieldOptions`.
    #
    # @return [Types::ListFieldOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFieldOptionsResponse#next_token #next_token} => String
    #   * {Types::ListFieldOptionsResponse#options #options} => Array&lt;Types::FieldOption&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_field_options({
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     values: ["Value"],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.options #=> Array
    #   resp.options[0].active #=> Boolean
    #   resp.options[0].name #=> String
    #   resp.options[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListFieldOptions AWS API Documentation
    #
    # @overload list_field_options(params = {})
    # @param [Hash] params ({})
    def list_field_options(params = {}, options = {})
      req = build_request(:list_field_options, params)
      req.send_request(options)
    end

    # Lists all fields in a Cases domain.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListFieldsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFieldsResponse#fields #fields} => Array&lt;Types::FieldSummary&gt;
    #   * {Types::ListFieldsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fields({
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.fields #=> Array
    #   resp.fields[0].field_arn #=> String
    #   resp.fields[0].field_id #=> String
    #   resp.fields[0].name #=> String
    #   resp.fields[0].namespace #=> String, one of "System", "Custom"
    #   resp.fields[0].type #=> String, one of "Text", "Number", "Boolean", "DateTime", "SingleSelect", "Url", "User"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListFields AWS API Documentation
    #
    # @overload list_fields(params = {})
    # @param [Hash] params ({})
    def list_fields(params = {}, options = {})
      req = build_request(:list_fields, params)
      req.send_request(options)
    end

    # Lists all layouts in the given cases domain. Each list item is a
    # condensed summary object of the layout.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListLayoutsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLayoutsResponse#layouts #layouts} => Array&lt;Types::LayoutSummary&gt;
    #   * {Types::ListLayoutsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_layouts({
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.layouts #=> Array
    #   resp.layouts[0].layout_arn #=> String
    #   resp.layouts[0].layout_id #=> String
    #   resp.layouts[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListLayouts AWS API Documentation
    #
    # @overload list_layouts(params = {})
    # @param [Hash] params ({})
    def list_layouts(params = {}, options = {})
      req = build_request(:list_layouts, params)
      req.send_request(options)
    end

    # Lists tags for a resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN)
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all of the templates in a Cases domain. Each list item is a
    # condensed summary object of the template.
    #
    # Other template APIs are:
    #
    # * [CreateTemplate][1]
    #
    # * [DeleteTemplate][2]
    #
    # * [GetTemplate][3]
    #
    # * [UpdateTemplate][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html
    # [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html
    # [4]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Array<String>] :status
    #   A list of status values to filter on.
    #
    # @return [Types::ListTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTemplatesResponse#next_token #next_token} => String
    #   * {Types::ListTemplatesResponse#templates #templates} => Array&lt;Types::TemplateSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_templates({
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: ["Active"], # accepts Active, Inactive
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.templates #=> Array
    #   resp.templates[0].name #=> String
    #   resp.templates[0].status #=> String, one of "Active", "Inactive"
    #   resp.templates[0].template_arn #=> String
    #   resp.templates[0].template_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListTemplates AWS API Documentation
    #
    # @overload list_templates(params = {})
    # @param [Hash] params ({})
    def list_templates(params = {}, options = {})
      req = build_request(:list_templates, params)
      req.send_request(options)
    end

    # Adds case event publishing configuration. For a complete list of
    # fields you can add to the event message, see [Create case fields][1]
    # in the *Amazon Connect Administrator Guide*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/case-fields.html
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, Types::EventBridgeConfiguration] :event_bridge
    #   Configuration to enable EventBridge case event delivery and determine
    #   what data is delivered.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_case_event_configuration({
    #     domain_id: "DomainId", # required
    #     event_bridge: { # required
    #       enabled: false, # required
    #       included_data: {
    #         case_data: {
    #           fields: [ # required
    #             {
    #               id: "FieldId", # required
    #             },
    #           ],
    #         },
    #         related_item_data: {
    #           include_content: false, # required
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/PutCaseEventConfiguration AWS API Documentation
    #
    # @overload put_case_event_configuration(params = {})
    # @param [Hash] params ({})
    def put_case_event_configuration(params = {}, options = {})
      req = build_request(:put_case_event_configuration, params)
      req.send_request(options)
    end

    # Searches for cases within their associated Cases domain. Search
    # results are returned as a paginated list of abridged case documents.
    #
    # <note markdown="1"> For `customer_id` you must provide the full customer profile ARN in
    # this format: ` arn:aws:profile:your AWS Region:your AWS account
    # ID:domains/profiles domain name/profiles/profile ID`.
    #
    #  </note>
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Array<Types::FieldIdentifier>] :fields
    #   The list of field identifiers to be returned as part of the response.
    #
    # @option params [Types::CaseFilter] :filter
    #   A list of filter objects.
    #
    # @option params [Integer] :max_results
    #   The maximum number of cases to return. The current maximum supported
    #   value is 25. This is also the default value when no other value is
    #   provided.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [String] :search_term
    #   A word or phrase used to perform a quick search.
    #
    # @option params [Array<Types::Sort>] :sorts
    #   A list of sorts where each sort specifies a field and their sort order
    #   to be applied to the results.
    #
    # @return [Types::SearchCasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchCasesResponse#cases #cases} => Array&lt;Types::SearchCasesResponseItem&gt;
    #   * {Types::SearchCasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_cases({
    #     domain_id: "DomainId", # required
    #     fields: [
    #       {
    #         id: "FieldId", # required
    #       },
    #     ],
    #     filter: {
    #       and_all: [
    #         {
    #           # recursive CaseFilter
    #         },
    #       ],
    #       field: {
    #         contains: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             empty_value: {
    #             },
    #             string_value: "FieldValueUnionStringValueString",
    #             user_arn_value: "String",
    #           },
    #         },
    #         equal_to: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             empty_value: {
    #             },
    #             string_value: "FieldValueUnionStringValueString",
    #             user_arn_value: "String",
    #           },
    #         },
    #         greater_than: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             empty_value: {
    #             },
    #             string_value: "FieldValueUnionStringValueString",
    #             user_arn_value: "String",
    #           },
    #         },
    #         greater_than_or_equal_to: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             empty_value: {
    #             },
    #             string_value: "FieldValueUnionStringValueString",
    #             user_arn_value: "String",
    #           },
    #         },
    #         less_than: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             empty_value: {
    #             },
    #             string_value: "FieldValueUnionStringValueString",
    #             user_arn_value: "String",
    #           },
    #         },
    #         less_than_or_equal_to: {
    #           id: "FieldId", # required
    #           value: { # required
    #             boolean_value: false,
    #             double_value: 1.0,
    #             empty_value: {
    #             },
    #             string_value: "FieldValueUnionStringValueString",
    #             user_arn_value: "String",
    #           },
    #         },
    #       },
    #       not: {
    #         # recursive CaseFilter
    #       },
    #       or_all: [
    #         {
    #           # recursive CaseFilter
    #         },
    #       ],
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     search_term: "SearchCasesRequestSearchTermString",
    #     sorts: [
    #       {
    #         field_id: "FieldId", # required
    #         sort_order: "Asc", # required, accepts Asc, Desc
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cases #=> Array
    #   resp.cases[0].case_id #=> String
    #   resp.cases[0].fields #=> Array
    #   resp.cases[0].fields[0].id #=> String
    #   resp.cases[0].fields[0].value.boolean_value #=> Boolean
    #   resp.cases[0].fields[0].value.double_value #=> Float
    #   resp.cases[0].fields[0].value.string_value #=> String
    #   resp.cases[0].fields[0].value.user_arn_value #=> String
    #   resp.cases[0].tags #=> Hash
    #   resp.cases[0].tags["String"] #=> String
    #   resp.cases[0].template_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/SearchCases AWS API Documentation
    #
    # @overload search_cases(params = {})
    # @param [Hash] params ({})
    def search_cases(params = {}, options = {})
      req = build_request(:search_cases, params)
      req.send_request(options)
    end

    # Searches for related items that are associated with a case.
    #
    # <note markdown="1"> If no filters are provided, this returns all related items associated
    # with a case.
    #
    #  </note>
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Array<Types::RelatedItemTypeFilter>] :filters
    #   The list of types of related items and their parameters to use for
    #   filtering.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::SearchRelatedItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchRelatedItemsResponse#next_token #next_token} => String
    #   * {Types::SearchRelatedItemsResponse#related_items #related_items} => Array&lt;Types::SearchRelatedItemsResponseItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_related_items({
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #     filters: [
    #       {
    #         comment: {
    #         },
    #         contact: {
    #           channel: ["Channel"],
    #           contact_arn: "ContactArn",
    #         },
    #         file: {
    #           file_arn: "FileArn",
    #         },
    #         sla: {
    #           name: "SlaName",
    #           status: "Active", # accepts Active, Overdue, Met, NotMet
    #         },
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.related_items #=> Array
    #   resp.related_items[0].association_time #=> Time
    #   resp.related_items[0].content.comment.body #=> String
    #   resp.related_items[0].content.comment.content_type #=> String, one of "Text/Plain"
    #   resp.related_items[0].content.contact.channel #=> String
    #   resp.related_items[0].content.contact.connected_to_system_time #=> Time
    #   resp.related_items[0].content.contact.contact_arn #=> String
    #   resp.related_items[0].content.file.file_arn #=> String
    #   resp.related_items[0].content.sla.sla_configuration.completion_time #=> Time
    #   resp.related_items[0].content.sla.sla_configuration.field_id #=> String
    #   resp.related_items[0].content.sla.sla_configuration.name #=> String
    #   resp.related_items[0].content.sla.sla_configuration.status #=> String, one of "Active", "Overdue", "Met", "NotMet"
    #   resp.related_items[0].content.sla.sla_configuration.target_field_values #=> Array
    #   resp.related_items[0].content.sla.sla_configuration.target_field_values[0].boolean_value #=> Boolean
    #   resp.related_items[0].content.sla.sla_configuration.target_field_values[0].double_value #=> Float
    #   resp.related_items[0].content.sla.sla_configuration.target_field_values[0].string_value #=> String
    #   resp.related_items[0].content.sla.sla_configuration.target_field_values[0].user_arn_value #=> String
    #   resp.related_items[0].content.sla.sla_configuration.target_time #=> Time
    #   resp.related_items[0].content.sla.sla_configuration.type #=> String, one of "CaseField"
    #   resp.related_items[0].performed_by.custom_entity #=> String
    #   resp.related_items[0].performed_by.user_arn #=> String
    #   resp.related_items[0].related_item_id #=> String
    #   resp.related_items[0].tags #=> Hash
    #   resp.related_items[0].tags["String"] #=> String
    #   resp.related_items[0].type #=> String, one of "Contact", "Comment", "File", "Sla"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/SearchRelatedItems AWS API Documentation
    #
    # @overload search_related_items(params = {})
    # @param [Hash] params ({})
    def search_related_items(params = {}, options = {})
      req = build_request(:search_related_items, params)
      req.send_request(options)
    end

    # Adds tags to a resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN)
    #
    # @option params [required, Hash<String,String>] :tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "Arn", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untags a resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN)
    #
    # @option params [required, Array<String>] :tag_keys
    #   List of tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # <note markdown="1"> If you provide a value for `PerformedBy.UserArn`
    # you must also have
    # [connect:DescribeUser][1] permission on the User ARN resource that you
    # provide
    #
    #  </note>
    #
    #  Updates the values of fields on a case. Fields to be updated are
    # received as an array of id/value pairs identical to the `CreateCase`
    # input .
    #
    #  If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html
    #
    # @option params [required, String] :case_id
    #   A unique identifier of the case.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, Array<Types::FieldValue>] :fields
    #   An array of objects with `fieldId` (matching ListFields/DescribeField)
    #   and value union data, structured identical to `CreateCase`.
    #
    # @option params [Types::UserUnion] :performed_by
    #   Represents the entity that performed the action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_case({
    #     case_id: "CaseId", # required
    #     domain_id: "DomainId", # required
    #     fields: [ # required
    #       {
    #         id: "FieldId", # required
    #         value: { # required
    #           boolean_value: false,
    #           double_value: 1.0,
    #           empty_value: {
    #           },
    #           string_value: "FieldValueUnionStringValueString",
    #           user_arn_value: "String",
    #         },
    #       },
    #     ],
    #     performed_by: {
    #       custom_entity: "CustomEntity",
    #       user_arn: "UserArn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateCase AWS API Documentation
    #
    # @overload update_case(params = {})
    # @param [Hash] params ({})
    def update_case(params = {}, options = {})
      req = build_request(:update_case, params)
      req.send_request(options)
    end

    # Updates a case rule. In the Amazon Connect admin website, case rules
    # are known as *case field conditions*. For more information about case
    # field conditions, see [Add case field conditions to a case
    # template][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html
    #
    # @option params [required, String] :case_rule_id
    #   Unique identifier of a case rule.
    #
    # @option params [String] :description
    #   Description of a case rule.
    #
    # @option params [required, String] :domain_id
    #   Unique identifier of a Cases domain.
    #
    # @option params [String] :name
    #   Name of the case rule.
    #
    # @option params [Types::CaseRuleDetails] :rule
    #   Represents what rule type should take place, under what conditions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_case_rule({
    #     case_rule_id: "CaseRuleId", # required
    #     description: "CaseRuleDescription",
    #     domain_id: "DomainId", # required
    #     name: "CaseRuleName",
    #     rule: {
    #       required: {
    #         conditions: [ # required
    #           {
    #             equal_to: {
    #               operand_one: { # required
    #                 field_id: "FieldId",
    #               },
    #               operand_two: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "OperandTwoStringValueString",
    #               },
    #               result: false, # required
    #             },
    #             not_equal_to: {
    #               operand_one: { # required
    #                 field_id: "FieldId",
    #               },
    #               operand_two: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "OperandTwoStringValueString",
    #               },
    #               result: false, # required
    #             },
    #           },
    #         ],
    #         default_value: false, # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateCaseRule AWS API Documentation
    #
    # @overload update_case_rule(params = {})
    # @param [Hash] params ({})
    def update_case_rule(params = {}, options = {})
      req = build_request(:update_case_rule, params)
      req.send_request(options)
    end

    # Updates the properties of an existing field.
    #
    # @option params [String] :description
    #   The description of a field.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :field_id
    #   The unique identifier of a field.
    #
    # @option params [String] :name
    #   The name of the field.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_field({
    #     description: "FieldDescription",
    #     domain_id: "DomainId", # required
    #     field_id: "FieldId", # required
    #     name: "FieldName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateField AWS API Documentation
    #
    # @overload update_field(params = {})
    # @param [Hash] params ({})
    def update_field(params = {}, options = {})
      req = build_request(:update_field, params)
      req.send_request(options)
    end

    # Updates the attributes of an existing layout.
    #
    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # A `ValidationException` is returned when you add non-existent
    # `fieldIds` to a layout.
    #
    # <note markdown="1"> Title and Status fields cannot be part of layouts because they are not
    # configurable.
    #
    #  </note>
    #
    # @option params [Types::LayoutContent] :content
    #   Information about which fields will be present in the layout, the
    #   order of the fields.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [required, String] :layout_id
    #   The unique identifier of the layout.
    #
    # @option params [String] :name
    #   The name of the layout. It must be unique per domain.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_layout({
    #     content: {
    #       basic: {
    #         more_info: {
    #           sections: [
    #             {
    #               field_group: {
    #                 fields: [ # required
    #                   {
    #                     id: "FieldId", # required
    #                   },
    #                 ],
    #                 name: "FieldGroupNameString",
    #               },
    #             },
    #           ],
    #         },
    #         top_panel: {
    #           sections: [
    #             {
    #               field_group: {
    #                 fields: [ # required
    #                   {
    #                     id: "FieldId", # required
    #                   },
    #                 ],
    #                 name: "FieldGroupNameString",
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     domain_id: "DomainId", # required
    #     layout_id: "LayoutId", # required
    #     name: "LayoutName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateLayout AWS API Documentation
    #
    # @overload update_layout(params = {})
    # @param [Hash] params ({})
    def update_layout(params = {}, options = {})
      req = build_request(:update_layout, params)
      req.send_request(options)
    end

    # Updates the attributes of an existing template. The template
    # attributes that can be modified include `name`, `description`,
    # `layoutConfiguration`, `requiredFields`, and `status`. At least one of
    # these attributes must not be null. If a null value is provided for a
    # given attribute, that attribute is ignored and its current value is
    # preserved.
    #
    # Other template APIs are:
    #
    # * [CreateTemplate][1]
    #
    # * [DeleteTemplate][2]
    #
    # * [GetTemplate][3]
    #
    # * [ListTemplates][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html
    # [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html
    # [4]: https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html
    #
    # @option params [String] :description
    #   A brief description of the template.
    #
    # @option params [required, String] :domain_id
    #   The unique identifier of the Cases domain.
    #
    # @option params [Types::LayoutConfiguration] :layout_configuration
    #   Configuration of layouts associated to the template.
    #
    # @option params [String] :name
    #   The name of the template. It must be unique per domain.
    #
    # @option params [Array<Types::RequiredField>] :required_fields
    #   A list of fields that must contain a value for a case to be
    #   successfully created with this template.
    #
    # @option params [Array<Types::TemplateRule>] :rules
    #   A list of case rules (also known as [case field conditions][1]) on a
    #   template.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html
    #
    # @option params [String] :status
    #   The status of the template.
    #
    # @option params [required, String] :template_id
    #   A unique identifier for the template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_template({
    #     description: "TemplateDescription",
    #     domain_id: "DomainId", # required
    #     layout_configuration: {
    #       default_layout: "LayoutId",
    #     },
    #     name: "TemplateName",
    #     required_fields: [
    #       {
    #         field_id: "FieldId", # required
    #       },
    #     ],
    #     rules: [
    #       {
    #         case_rule_id: "CaseRuleId", # required
    #         field_id: "FieldId", # required
    #       },
    #     ],
    #     status: "Active", # accepts Active, Inactive
    #     template_id: "TemplateId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateTemplate AWS API Documentation
    #
    # @overload update_template(params = {})
    # @param [Hash] params ({})
    def update_template(params = {}, options = {})
      req = build_request(:update_template, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ConnectCases')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-connectcases'
      context[:gem_version] = '1.46.0'
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
