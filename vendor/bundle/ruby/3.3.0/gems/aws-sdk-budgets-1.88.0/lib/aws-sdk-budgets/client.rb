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

module Aws::Budgets
  # An API client for Budgets.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Budgets::Client.new(
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

    @identifier = :budgets

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
    add_plugin(Aws::Budgets::Plugins::Endpoints)

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
    #   @option options [Aws::Budgets::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Budgets::EndpointParameters`.
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

    # Creates a budget and, if included, notifications and subscribers.
    #
    # Only one of `BudgetLimit` or `PlannedBudgetLimits` can be present in
    # the syntax at one time. Use the syntax that matches your use case. The
    # Request Syntax section shows the `BudgetLimit` syntax. For
    # `PlannedBudgetLimits`, see the [Examples][1] section.
    #
    #  Similarly, only one set of filter and metric selections can be
    # present
    # in the syntax at one time. Either `FilterExpression` and `Metrics` or
    # `CostFilters` and `CostTypes`, not both or a different combination. We
    # recommend using `FilterExpression` and `Metrics` as they provide more
    # flexible and powerful filtering capabilities. The Request Syntax
    # section shows the `FilterExpression`/`Metrics` syntax.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget.
    #
    # @option params [required, Types::Budget] :budget
    #   The budget object that you want to create.
    #
    # @option params [Array<Types::NotificationWithSubscribers>] :notifications_with_subscribers
    #   A notification that you want to associate with a budget. A budget can
    #   have up to five notifications, and each notification can have one SNS
    #   subscriber and up to 10 email subscribers. If you include
    #   notifications and subscribers in your `CreateBudget` call, Amazon Web
    #   Services creates the notifications and subscribers for you.
    #
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   An optional list of tags to associate with the specified budget. Each
    #   tag consists of a key and a value, and each key must be unique for the
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_budget({
    #     account_id: "AccountId", # required
    #     budget: { # required
    #       budget_name: "BudgetName", # required
    #       budget_limit: {
    #         amount: "NumericValue", # required
    #         unit: "UnitValue", # required
    #       },
    #       planned_budget_limits: {
    #         "GenericString" => {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #       },
    #       cost_filters: {
    #         "GenericString" => ["DimensionValue"],
    #       },
    #       cost_types: {
    #         include_tax: false,
    #         include_subscription: false,
    #         use_blended: false,
    #         include_refund: false,
    #         include_credit: false,
    #         include_upfront: false,
    #         include_recurring: false,
    #         include_other_subscription: false,
    #         include_support: false,
    #         include_discount: false,
    #         use_amortized: false,
    #       },
    #       time_unit: "DAILY", # required, accepts DAILY, MONTHLY, QUARTERLY, ANNUALLY
    #       time_period: {
    #         start: Time.now,
    #         end: Time.now,
    #       },
    #       calculated_spend: {
    #         actual_spend: { # required
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         forecasted_spend: {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #       },
    #       budget_type: "USAGE", # required, accepts USAGE, COST, RI_UTILIZATION, RI_COVERAGE, SAVINGS_PLANS_UTILIZATION, SAVINGS_PLANS_COVERAGE
    #       last_updated_time: Time.now,
    #       auto_adjust_data: {
    #         auto_adjust_type: "HISTORICAL", # required, accepts HISTORICAL, FORECAST
    #         historical_options: {
    #           budget_adjustment_period: 1, # required
    #           look_back_available_periods: 1,
    #         },
    #         last_auto_adjust_time: Time.now,
    #       },
    #       filter_expression: {
    #         or: [
    #           {
    #             # recursive Expression
    #           },
    #         ],
    #         and: [
    #           {
    #             # recursive Expression
    #           },
    #         ],
    #         not: {
    #           # recursive Expression
    #         },
    #         dimensions: {
    #           key: "AZ", # required, accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, INVOICING_ENTITY, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, RESERVATION_MODIFIED, TAG_KEY, COST_CATEGORY_NAME
    #           values: ["Value"], # required
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, GREATER_THAN_OR_EQUAL, CASE_SENSITIVE, CASE_INSENSITIVE
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, GREATER_THAN_OR_EQUAL, CASE_SENSITIVE, CASE_INSENSITIVE
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, GREATER_THAN_OR_EQUAL, CASE_SENSITIVE, CASE_INSENSITIVE
    #         },
    #       },
    #       metrics: ["BlendedCost"], # accepts BlendedCost, UnblendedCost, AmortizedCost, NetUnblendedCost, NetAmortizedCost, UsageQuantity, NormalizedUsageAmount, Hours
    #     },
    #     notifications_with_subscribers: [
    #       {
    #         notification: { # required
    #           notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #           comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #           threshold: 1.0, # required
    #           threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #           notification_state: "OK", # accepts OK, ALARM
    #         },
    #         subscribers: [ # required
    #           {
    #             subscription_type: "SNS", # required, accepts SNS, EMAIL
    #             address: "SubscriberAddress", # required
    #           },
    #         ],
    #       },
    #     ],
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       },
    #     ],
    #   })
    #
    # @overload create_budget(params = {})
    # @param [Hash] params ({})
    def create_budget(params = {}, options = {})
      req = build_request(:create_budget, params)
      req.send_request(options)
    end

    # Creates a budget action.
    #
    # @option params [required, String] :account_id
    #   The account ID of the user. It's a 12-digit number.
    #
    # @option params [required, String] :budget_name
    #   A string that represents the budget name. The ":" and "\\"
    #   characters, and the "/action/" substring, aren't allowed.
    #
    # @option params [required, String] :notification_type
    #   The type of a notification. It must be ACTUAL or FORECASTED.
    #
    # @option params [required, String] :action_type
    #   The type of action. This defines the type of tasks that can be carried
    #   out by this action. This field also determines the format for
    #   definition.
    #
    # @option params [required, Types::ActionThreshold] :action_threshold
    #   The trigger threshold of the action.
    #
    # @option params [required, Types::Definition] :definition
    #   Specifies all of the type-specific parameters.
    #
    # @option params [required, String] :execution_role_arn
    #   The role passed for action execution and reversion. Roles and actions
    #   must be in the same account.
    #
    # @option params [required, String] :approval_model
    #   This specifies if the action needs manual or automatic approval.
    #
    # @option params [required, Array<Types::Subscriber>] :subscribers
    #   A list of subscribers.
    #
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   An optional list of tags to associate with the specified budget
    #   action. Each tag consists of a key and a value, and each key must be
    #   unique for the resource.
    #
    # @return [Types::CreateBudgetActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBudgetActionResponse#account_id #account_id} => String
    #   * {Types::CreateBudgetActionResponse#budget_name #budget_name} => String
    #   * {Types::CreateBudgetActionResponse#action_id #action_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_budget_action({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #     action_type: "APPLY_IAM_POLICY", # required, accepts APPLY_IAM_POLICY, APPLY_SCP_POLICY, RUN_SSM_DOCUMENTS
    #     action_threshold: { # required
    #       action_threshold_value: 1.0, # required
    #       action_threshold_type: "PERCENTAGE", # required, accepts PERCENTAGE, ABSOLUTE_VALUE
    #     },
    #     definition: { # required
    #       iam_action_definition: {
    #         policy_arn: "PolicyArn", # required
    #         roles: ["Role"],
    #         groups: ["Group"],
    #         users: ["User"],
    #       },
    #       scp_action_definition: {
    #         policy_id: "PolicyId", # required
    #         target_ids: ["TargetId"], # required
    #       },
    #       ssm_action_definition: {
    #         action_sub_type: "STOP_EC2_INSTANCES", # required, accepts STOP_EC2_INSTANCES, STOP_RDS_INSTANCES
    #         region: "Region", # required
    #         instance_ids: ["InstanceId"], # required
    #       },
    #     },
    #     execution_role_arn: "RoleArn", # required
    #     approval_model: "AUTOMATIC", # required, accepts AUTOMATIC, MANUAL
    #     subscribers: [ # required
    #       {
    #         subscription_type: "SNS", # required, accepts SNS, EMAIL
    #         address: "SubscriberAddress", # required
    #       },
    #     ],
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #   resp.budget_name #=> String
    #   resp.action_id #=> String
    #
    # @overload create_budget_action(params = {})
    # @param [Hash] params ({})
    def create_budget_action(params = {}, options = {})
      req = build_request(:create_budget_action, params)
      req.send_request(options)
    end

    # Creates a notification. You must create the budget before you create
    # the associated notification.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget that you want to
    #   create a notification for.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget that you want Amazon Web Services to notify you
    #   about. Budget names must be unique within an account.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification that you want to create.
    #
    # @option params [required, Array<Types::Subscriber>] :subscribers
    #   A list of subscribers that you want to associate with the
    #   notification. Each notification can have one SNS subscriber and up to
    #   10 email subscribers.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notification({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #       notification_state: "OK", # accepts OK, ALARM
    #     },
    #     subscribers: [ # required
    #       {
    #         subscription_type: "SNS", # required, accepts SNS, EMAIL
    #         address: "SubscriberAddress", # required
    #       },
    #     ],
    #   })
    #
    # @overload create_notification(params = {})
    # @param [Hash] params ({})
    def create_notification(params = {}, options = {})
      req = build_request(:create_notification, params)
      req.send_request(options)
    end

    # Creates a subscriber. You must create the associated budget and
    # notification before you create the subscriber.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget that you want to
    #   create a subscriber for.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget that you want to subscribe to. Budget names
    #   must be unique within an account.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification that you want to create a subscriber for.
    #
    # @option params [required, Types::Subscriber] :subscriber
    #   The subscriber that you want to associate with a budget notification.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscriber({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #       notification_state: "OK", # accepts OK, ALARM
    #     },
    #     subscriber: { # required
    #       subscription_type: "SNS", # required, accepts SNS, EMAIL
    #       address: "SubscriberAddress", # required
    #     },
    #   })
    #
    # @overload create_subscriber(params = {})
    # @param [Hash] params ({})
    def create_subscriber(params = {}, options = {})
      req = build_request(:create_subscriber, params)
      req.send_request(options)
    end

    # Deletes a budget. You can delete your budget at any time.
    #
    # Deleting a budget also deletes the notifications and subscribers that
    # are associated with that budget.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget that you want to
    #   delete.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_budget({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #   })
    #
    # @overload delete_budget(params = {})
    # @param [Hash] params ({})
    def delete_budget(params = {}, options = {})
      req = build_request(:delete_budget, params)
      req.send_request(options)
    end

    # Deletes a budget action.
    #
    # @option params [required, String] :account_id
    #   The account ID of the user. It's a 12-digit number.
    #
    # @option params [required, String] :budget_name
    #   A string that represents the budget name. The ":" and "\\"
    #   characters, and the "/action/" substring, aren't allowed.
    #
    # @option params [required, String] :action_id
    #   A system-generated universally unique identifier (UUID) for the
    #   action.
    #
    # @return [Types::DeleteBudgetActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBudgetActionResponse#account_id #account_id} => String
    #   * {Types::DeleteBudgetActionResponse#budget_name #budget_name} => String
    #   * {Types::DeleteBudgetActionResponse#action #action} => Types::Action
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_budget_action({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #   resp.budget_name #=> String
    #   resp.action.action_id #=> String
    #   resp.action.budget_name #=> String
    #   resp.action.notification_type #=> String, one of "ACTUAL", "FORECASTED"
    #   resp.action.action_type #=> String, one of "APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"
    #   resp.action.action_threshold.action_threshold_value #=> Float
    #   resp.action.action_threshold.action_threshold_type #=> String, one of "PERCENTAGE", "ABSOLUTE_VALUE"
    #   resp.action.definition.iam_action_definition.policy_arn #=> String
    #   resp.action.definition.iam_action_definition.roles #=> Array
    #   resp.action.definition.iam_action_definition.roles[0] #=> String
    #   resp.action.definition.iam_action_definition.groups #=> Array
    #   resp.action.definition.iam_action_definition.groups[0] #=> String
    #   resp.action.definition.iam_action_definition.users #=> Array
    #   resp.action.definition.iam_action_definition.users[0] #=> String
    #   resp.action.definition.scp_action_definition.policy_id #=> String
    #   resp.action.definition.scp_action_definition.target_ids #=> Array
    #   resp.action.definition.scp_action_definition.target_ids[0] #=> String
    #   resp.action.definition.ssm_action_definition.action_sub_type #=> String, one of "STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"
    #   resp.action.definition.ssm_action_definition.region #=> String
    #   resp.action.definition.ssm_action_definition.instance_ids #=> Array
    #   resp.action.definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.action.execution_role_arn #=> String
    #   resp.action.approval_model #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.action.status #=> String, one of "STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"
    #   resp.action.subscribers #=> Array
    #   resp.action.subscribers[0].subscription_type #=> String, one of "SNS", "EMAIL"
    #   resp.action.subscribers[0].address #=> String
    #
    # @overload delete_budget_action(params = {})
    # @param [Hash] params ({})
    def delete_budget_action(params = {}, options = {})
      req = build_request(:delete_budget_action, params)
      req.send_request(options)
    end

    # Deletes a notification.
    #
    # Deleting a notification also deletes the subscribers that are
    # associated with the notification.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose notification
    #   you want to delete.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose notification you want to delete.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #       notification_state: "OK", # accepts OK, ALARM
    #     },
    #   })
    #
    # @overload delete_notification(params = {})
    # @param [Hash] params ({})
    def delete_notification(params = {}, options = {})
      req = build_request(:delete_notification, params)
      req.send_request(options)
    end

    # Deletes a subscriber.
    #
    # Deleting the last subscriber to a notification also deletes the
    # notification.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose subscriber
    #   you want to delete.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose subscriber you want to delete.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification whose subscriber you want to delete.
    #
    # @option params [required, Types::Subscriber] :subscriber
    #   The subscriber that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscriber({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #       notification_state: "OK", # accepts OK, ALARM
    #     },
    #     subscriber: { # required
    #       subscription_type: "SNS", # required, accepts SNS, EMAIL
    #       address: "SubscriberAddress", # required
    #     },
    #   })
    #
    # @overload delete_subscriber(params = {})
    # @param [Hash] params ({})
    def delete_subscriber(params = {}, options = {})
      req = build_request(:delete_subscriber, params)
      req.send_request(options)
    end

    # Describes a budget.
    #
    # The Request Syntax section shows the `BudgetLimit` syntax. For
    # `PlannedBudgetLimits`, see the [Examples][1] section.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget that you want a
    #   description of.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget that you want a description of.
    #
    # @option params [Boolean] :show_filter_expression
    #   Specifies whether the response includes the filter expression
    #   associated with the budget. By showing the filter expression, you can
    #   see detailed filtering logic applied to the budget, such as Amazon Web
    #   Services services or tags that are being tracked.
    #
    # @return [Types::DescribeBudgetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBudgetResponse#budget #budget} => Types::Budget
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     show_filter_expression: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.budget.budget_name #=> String
    #   resp.budget.budget_limit.amount #=> String
    #   resp.budget.budget_limit.unit #=> String
    #   resp.budget.planned_budget_limits #=> Hash
    #   resp.budget.planned_budget_limits["GenericString"].amount #=> String
    #   resp.budget.planned_budget_limits["GenericString"].unit #=> String
    #   resp.budget.cost_filters #=> Hash
    #   resp.budget.cost_filters["GenericString"] #=> Array
    #   resp.budget.cost_filters["GenericString"][0] #=> String
    #   resp.budget.cost_types.include_tax #=> Boolean
    #   resp.budget.cost_types.include_subscription #=> Boolean
    #   resp.budget.cost_types.use_blended #=> Boolean
    #   resp.budget.cost_types.include_refund #=> Boolean
    #   resp.budget.cost_types.include_credit #=> Boolean
    #   resp.budget.cost_types.include_upfront #=> Boolean
    #   resp.budget.cost_types.include_recurring #=> Boolean
    #   resp.budget.cost_types.include_other_subscription #=> Boolean
    #   resp.budget.cost_types.include_support #=> Boolean
    #   resp.budget.cost_types.include_discount #=> Boolean
    #   resp.budget.cost_types.use_amortized #=> Boolean
    #   resp.budget.time_unit #=> String, one of "DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"
    #   resp.budget.time_period.start #=> Time
    #   resp.budget.time_period.end #=> Time
    #   resp.budget.calculated_spend.actual_spend.amount #=> String
    #   resp.budget.calculated_spend.actual_spend.unit #=> String
    #   resp.budget.calculated_spend.forecasted_spend.amount #=> String
    #   resp.budget.calculated_spend.forecasted_spend.unit #=> String
    #   resp.budget.budget_type #=> String, one of "USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"
    #   resp.budget.last_updated_time #=> Time
    #   resp.budget.auto_adjust_data.auto_adjust_type #=> String, one of "HISTORICAL", "FORECAST"
    #   resp.budget.auto_adjust_data.historical_options.budget_adjustment_period #=> Integer
    #   resp.budget.auto_adjust_data.historical_options.look_back_available_periods #=> Integer
    #   resp.budget.auto_adjust_data.last_auto_adjust_time #=> Time
    #   resp.budget.filter_expression.or #=> Array
    #   resp.budget.filter_expression.or[0] #=> Types::Expression
    #   resp.budget.filter_expression.and #=> Array
    #   resp.budget.filter_expression.and[0] #=> Types::Expression
    #   resp.budget.filter_expression.not #=> Types::Expression
    #   resp.budget.filter_expression.dimensions.key #=> String, one of "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "INVOICING_ENTITY", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "RESERVATION_MODIFIED", "TAG_KEY", "COST_CATEGORY_NAME"
    #   resp.budget.filter_expression.dimensions.values #=> Array
    #   resp.budget.filter_expression.dimensions.values[0] #=> String
    #   resp.budget.filter_expression.dimensions.match_options #=> Array
    #   resp.budget.filter_expression.dimensions.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.budget.filter_expression.tags.key #=> String
    #   resp.budget.filter_expression.tags.values #=> Array
    #   resp.budget.filter_expression.tags.values[0] #=> String
    #   resp.budget.filter_expression.tags.match_options #=> Array
    #   resp.budget.filter_expression.tags.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.budget.filter_expression.cost_categories.key #=> String
    #   resp.budget.filter_expression.cost_categories.values #=> Array
    #   resp.budget.filter_expression.cost_categories.values[0] #=> String
    #   resp.budget.filter_expression.cost_categories.match_options #=> Array
    #   resp.budget.filter_expression.cost_categories.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.budget.metrics #=> Array
    #   resp.budget.metrics[0] #=> String, one of "BlendedCost", "UnblendedCost", "AmortizedCost", "NetUnblendedCost", "NetAmortizedCost", "UsageQuantity", "NormalizedUsageAmount", "Hours"
    #
    # @overload describe_budget(params = {})
    # @param [Hash] params ({})
    def describe_budget(params = {}, options = {})
      req = build_request(:describe_budget, params)
      req.send_request(options)
    end

    # Describes a budget action detail.
    #
    # @option params [required, String] :account_id
    #   The account ID of the user. It's a 12-digit number.
    #
    # @option params [required, String] :budget_name
    #   A string that represents the budget name. The ":" and "\\"
    #   characters, and the "/action/" substring, aren't allowed.
    #
    # @option params [required, String] :action_id
    #   A system-generated universally unique identifier (UUID) for the
    #   action.
    #
    # @return [Types::DescribeBudgetActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBudgetActionResponse#account_id #account_id} => String
    #   * {Types::DescribeBudgetActionResponse#budget_name #budget_name} => String
    #   * {Types::DescribeBudgetActionResponse#action #action} => Types::Action
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_action({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #   resp.budget_name #=> String
    #   resp.action.action_id #=> String
    #   resp.action.budget_name #=> String
    #   resp.action.notification_type #=> String, one of "ACTUAL", "FORECASTED"
    #   resp.action.action_type #=> String, one of "APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"
    #   resp.action.action_threshold.action_threshold_value #=> Float
    #   resp.action.action_threshold.action_threshold_type #=> String, one of "PERCENTAGE", "ABSOLUTE_VALUE"
    #   resp.action.definition.iam_action_definition.policy_arn #=> String
    #   resp.action.definition.iam_action_definition.roles #=> Array
    #   resp.action.definition.iam_action_definition.roles[0] #=> String
    #   resp.action.definition.iam_action_definition.groups #=> Array
    #   resp.action.definition.iam_action_definition.groups[0] #=> String
    #   resp.action.definition.iam_action_definition.users #=> Array
    #   resp.action.definition.iam_action_definition.users[0] #=> String
    #   resp.action.definition.scp_action_definition.policy_id #=> String
    #   resp.action.definition.scp_action_definition.target_ids #=> Array
    #   resp.action.definition.scp_action_definition.target_ids[0] #=> String
    #   resp.action.definition.ssm_action_definition.action_sub_type #=> String, one of "STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"
    #   resp.action.definition.ssm_action_definition.region #=> String
    #   resp.action.definition.ssm_action_definition.instance_ids #=> Array
    #   resp.action.definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.action.execution_role_arn #=> String
    #   resp.action.approval_model #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.action.status #=> String, one of "STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"
    #   resp.action.subscribers #=> Array
    #   resp.action.subscribers[0].subscription_type #=> String, one of "SNS", "EMAIL"
    #   resp.action.subscribers[0].address #=> String
    #
    # @overload describe_budget_action(params = {})
    # @param [Hash] params ({})
    def describe_budget_action(params = {}, options = {})
      req = build_request(:describe_budget_action, params)
      req.send_request(options)
    end

    # Describes a budget action history detail.
    #
    # @option params [required, String] :account_id
    #   The account ID of the user. It's a 12-digit number.
    #
    # @option params [required, String] :budget_name
    #   A string that represents the budget name. The ":" and "\\"
    #   characters, and the "/action/" substring, aren't allowed.
    #
    # @option params [required, String] :action_id
    #   A system-generated universally unique identifier (UUID) for the
    #   action.
    #
    # @option params [Types::TimePeriod] :time_period
    #   The period of time that's covered by a budget. The period has a start
    #   date and an end date. The start date must come before the end date.
    #   There are no restrictions on the end date.
    #
    # @option params [Integer] :max_results
    #   An integer that represents how many entries a paginated response
    #   contains. The maximum is 100.
    #
    # @option params [String] :next_token
    #   A generic string.
    #
    # @return [Types::DescribeBudgetActionHistoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBudgetActionHistoriesResponse#action_histories #action_histories} => Array&lt;Types::ActionHistory&gt;
    #   * {Types::DescribeBudgetActionHistoriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_action_histories({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #     time_period: {
    #       start: Time.now,
    #       end: Time.now,
    #     },
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.action_histories #=> Array
    #   resp.action_histories[0].timestamp #=> Time
    #   resp.action_histories[0].status #=> String, one of "STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"
    #   resp.action_histories[0].event_type #=> String, one of "SYSTEM", "CREATE_ACTION", "DELETE_ACTION", "UPDATE_ACTION", "EXECUTE_ACTION"
    #   resp.action_histories[0].action_history_details.message #=> String
    #   resp.action_histories[0].action_history_details.action.action_id #=> String
    #   resp.action_histories[0].action_history_details.action.budget_name #=> String
    #   resp.action_histories[0].action_history_details.action.notification_type #=> String, one of "ACTUAL", "FORECASTED"
    #   resp.action_histories[0].action_history_details.action.action_type #=> String, one of "APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"
    #   resp.action_histories[0].action_history_details.action.action_threshold.action_threshold_value #=> Float
    #   resp.action_histories[0].action_history_details.action.action_threshold.action_threshold_type #=> String, one of "PERCENTAGE", "ABSOLUTE_VALUE"
    #   resp.action_histories[0].action_history_details.action.definition.iam_action_definition.policy_arn #=> String
    #   resp.action_histories[0].action_history_details.action.definition.iam_action_definition.roles #=> Array
    #   resp.action_histories[0].action_history_details.action.definition.iam_action_definition.roles[0] #=> String
    #   resp.action_histories[0].action_history_details.action.definition.iam_action_definition.groups #=> Array
    #   resp.action_histories[0].action_history_details.action.definition.iam_action_definition.groups[0] #=> String
    #   resp.action_histories[0].action_history_details.action.definition.iam_action_definition.users #=> Array
    #   resp.action_histories[0].action_history_details.action.definition.iam_action_definition.users[0] #=> String
    #   resp.action_histories[0].action_history_details.action.definition.scp_action_definition.policy_id #=> String
    #   resp.action_histories[0].action_history_details.action.definition.scp_action_definition.target_ids #=> Array
    #   resp.action_histories[0].action_history_details.action.definition.scp_action_definition.target_ids[0] #=> String
    #   resp.action_histories[0].action_history_details.action.definition.ssm_action_definition.action_sub_type #=> String, one of "STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"
    #   resp.action_histories[0].action_history_details.action.definition.ssm_action_definition.region #=> String
    #   resp.action_histories[0].action_history_details.action.definition.ssm_action_definition.instance_ids #=> Array
    #   resp.action_histories[0].action_history_details.action.definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.action_histories[0].action_history_details.action.execution_role_arn #=> String
    #   resp.action_histories[0].action_history_details.action.approval_model #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.action_histories[0].action_history_details.action.status #=> String, one of "STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"
    #   resp.action_histories[0].action_history_details.action.subscribers #=> Array
    #   resp.action_histories[0].action_history_details.action.subscribers[0].subscription_type #=> String, one of "SNS", "EMAIL"
    #   resp.action_histories[0].action_history_details.action.subscribers[0].address #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_budget_action_histories(params = {})
    # @param [Hash] params ({})
    def describe_budget_action_histories(params = {}, options = {})
      req = build_request(:describe_budget_action_histories, params)
      req.send_request(options)
    end

    # Describes all of the budget actions for an account.
    #
    # @option params [required, String] :account_id
    #   The account ID of the user. It's a 12-digit number.
    #
    # @option params [Integer] :max_results
    #   An integer that represents how many entries a paginated response
    #   contains. The maximum is 100.
    #
    # @option params [String] :next_token
    #   A generic string.
    #
    # @return [Types::DescribeBudgetActionsForAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBudgetActionsForAccountResponse#actions #actions} => Array&lt;Types::Action&gt;
    #   * {Types::DescribeBudgetActionsForAccountResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_actions_for_account({
    #     account_id: "AccountId", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.actions #=> Array
    #   resp.actions[0].action_id #=> String
    #   resp.actions[0].budget_name #=> String
    #   resp.actions[0].notification_type #=> String, one of "ACTUAL", "FORECASTED"
    #   resp.actions[0].action_type #=> String, one of "APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"
    #   resp.actions[0].action_threshold.action_threshold_value #=> Float
    #   resp.actions[0].action_threshold.action_threshold_type #=> String, one of "PERCENTAGE", "ABSOLUTE_VALUE"
    #   resp.actions[0].definition.iam_action_definition.policy_arn #=> String
    #   resp.actions[0].definition.iam_action_definition.roles #=> Array
    #   resp.actions[0].definition.iam_action_definition.roles[0] #=> String
    #   resp.actions[0].definition.iam_action_definition.groups #=> Array
    #   resp.actions[0].definition.iam_action_definition.groups[0] #=> String
    #   resp.actions[0].definition.iam_action_definition.users #=> Array
    #   resp.actions[0].definition.iam_action_definition.users[0] #=> String
    #   resp.actions[0].definition.scp_action_definition.policy_id #=> String
    #   resp.actions[0].definition.scp_action_definition.target_ids #=> Array
    #   resp.actions[0].definition.scp_action_definition.target_ids[0] #=> String
    #   resp.actions[0].definition.ssm_action_definition.action_sub_type #=> String, one of "STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"
    #   resp.actions[0].definition.ssm_action_definition.region #=> String
    #   resp.actions[0].definition.ssm_action_definition.instance_ids #=> Array
    #   resp.actions[0].definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.actions[0].execution_role_arn #=> String
    #   resp.actions[0].approval_model #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.actions[0].status #=> String, one of "STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"
    #   resp.actions[0].subscribers #=> Array
    #   resp.actions[0].subscribers[0].subscription_type #=> String, one of "SNS", "EMAIL"
    #   resp.actions[0].subscribers[0].address #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_budget_actions_for_account(params = {})
    # @param [Hash] params ({})
    def describe_budget_actions_for_account(params = {}, options = {})
      req = build_request(:describe_budget_actions_for_account, params)
      req.send_request(options)
    end

    # Describes all of the budget actions for a budget.
    #
    # @option params [required, String] :account_id
    #   The account ID of the user. It's a 12-digit number.
    #
    # @option params [required, String] :budget_name
    #   A string that represents the budget name. The ":" and "\\"
    #   characters, and the "/action/" substring, aren't allowed.
    #
    # @option params [Integer] :max_results
    #   An integer that represents how many entries a paginated response
    #   contains. The maximum is 100.
    #
    # @option params [String] :next_token
    #   A generic string.
    #
    # @return [Types::DescribeBudgetActionsForBudgetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBudgetActionsForBudgetResponse#actions #actions} => Array&lt;Types::Action&gt;
    #   * {Types::DescribeBudgetActionsForBudgetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_actions_for_budget({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.actions #=> Array
    #   resp.actions[0].action_id #=> String
    #   resp.actions[0].budget_name #=> String
    #   resp.actions[0].notification_type #=> String, one of "ACTUAL", "FORECASTED"
    #   resp.actions[0].action_type #=> String, one of "APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"
    #   resp.actions[0].action_threshold.action_threshold_value #=> Float
    #   resp.actions[0].action_threshold.action_threshold_type #=> String, one of "PERCENTAGE", "ABSOLUTE_VALUE"
    #   resp.actions[0].definition.iam_action_definition.policy_arn #=> String
    #   resp.actions[0].definition.iam_action_definition.roles #=> Array
    #   resp.actions[0].definition.iam_action_definition.roles[0] #=> String
    #   resp.actions[0].definition.iam_action_definition.groups #=> Array
    #   resp.actions[0].definition.iam_action_definition.groups[0] #=> String
    #   resp.actions[0].definition.iam_action_definition.users #=> Array
    #   resp.actions[0].definition.iam_action_definition.users[0] #=> String
    #   resp.actions[0].definition.scp_action_definition.policy_id #=> String
    #   resp.actions[0].definition.scp_action_definition.target_ids #=> Array
    #   resp.actions[0].definition.scp_action_definition.target_ids[0] #=> String
    #   resp.actions[0].definition.ssm_action_definition.action_sub_type #=> String, one of "STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"
    #   resp.actions[0].definition.ssm_action_definition.region #=> String
    #   resp.actions[0].definition.ssm_action_definition.instance_ids #=> Array
    #   resp.actions[0].definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.actions[0].execution_role_arn #=> String
    #   resp.actions[0].approval_model #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.actions[0].status #=> String, one of "STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"
    #   resp.actions[0].subscribers #=> Array
    #   resp.actions[0].subscribers[0].subscription_type #=> String, one of "SNS", "EMAIL"
    #   resp.actions[0].subscribers[0].address #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_budget_actions_for_budget(params = {})
    # @param [Hash] params ({})
    def describe_budget_actions_for_budget(params = {}, options = {})
      req = build_request(:describe_budget_actions_for_budget, params)
      req.send_request(options)
    end

    # Lists the budget names and notifications that are associated with an
    # account.
    #
    # @option params [required, String] :account_id
    #   The account ID of the user. It's a 12-digit number.
    #
    # @option params [Integer] :max_results
    #   An integer that represents how many budgets a paginated response
    #   contains. The default is 50.
    #
    # @option params [String] :next_token
    #   A generic string.
    #
    # @return [Types::DescribeBudgetNotificationsForAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBudgetNotificationsForAccountResponse#budget_notifications_for_account #budget_notifications_for_account} => Array&lt;Types::BudgetNotificationsForAccount&gt;
    #   * {Types::DescribeBudgetNotificationsForAccountResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_notifications_for_account({
    #     account_id: "AccountId", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.budget_notifications_for_account #=> Array
    #   resp.budget_notifications_for_account[0].notifications #=> Array
    #   resp.budget_notifications_for_account[0].notifications[0].notification_type #=> String, one of "ACTUAL", "FORECASTED"
    #   resp.budget_notifications_for_account[0].notifications[0].comparison_operator #=> String, one of "GREATER_THAN", "LESS_THAN", "EQUAL_TO"
    #   resp.budget_notifications_for_account[0].notifications[0].threshold #=> Float
    #   resp.budget_notifications_for_account[0].notifications[0].threshold_type #=> String, one of "PERCENTAGE", "ABSOLUTE_VALUE"
    #   resp.budget_notifications_for_account[0].notifications[0].notification_state #=> String, one of "OK", "ALARM"
    #   resp.budget_notifications_for_account[0].budget_name #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_budget_notifications_for_account(params = {})
    # @param [Hash] params ({})
    def describe_budget_notifications_for_account(params = {}, options = {})
      req = build_request(:describe_budget_notifications_for_account, params)
      req.send_request(options)
    end

    # Describes the history for `DAILY`, `MONTHLY`, and `QUARTERLY` budgets.
    # Budget history isn't available for `ANNUAL` budgets.
    #
    # @option params [required, String] :account_id
    #   The account ID of the user. It's a 12-digit number.
    #
    # @option params [required, String] :budget_name
    #   A string that represents the budget name. The ":" and "\\"
    #   characters, and the "/action/" substring, aren't allowed.
    #
    # @option params [Types::TimePeriod] :time_period
    #   Retrieves how often the budget went into an `ALARM` state for the
    #   specified time period.
    #
    # @option params [Integer] :max_results
    #   An integer that represents how many entries a paginated response
    #   contains. The maximum is 100.
    #
    # @option params [String] :next_token
    #   A generic string.
    #
    # @return [Types::DescribeBudgetPerformanceHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBudgetPerformanceHistoryResponse#budget_performance_history #budget_performance_history} => Types::BudgetPerformanceHistory
    #   * {Types::DescribeBudgetPerformanceHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budget_performance_history({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     time_period: {
    #       start: Time.now,
    #       end: Time.now,
    #     },
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.budget_performance_history.budget_name #=> String
    #   resp.budget_performance_history.budget_type #=> String, one of "USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"
    #   resp.budget_performance_history.cost_filters #=> Hash
    #   resp.budget_performance_history.cost_filters["GenericString"] #=> Array
    #   resp.budget_performance_history.cost_filters["GenericString"][0] #=> String
    #   resp.budget_performance_history.cost_types.include_tax #=> Boolean
    #   resp.budget_performance_history.cost_types.include_subscription #=> Boolean
    #   resp.budget_performance_history.cost_types.use_blended #=> Boolean
    #   resp.budget_performance_history.cost_types.include_refund #=> Boolean
    #   resp.budget_performance_history.cost_types.include_credit #=> Boolean
    #   resp.budget_performance_history.cost_types.include_upfront #=> Boolean
    #   resp.budget_performance_history.cost_types.include_recurring #=> Boolean
    #   resp.budget_performance_history.cost_types.include_other_subscription #=> Boolean
    #   resp.budget_performance_history.cost_types.include_support #=> Boolean
    #   resp.budget_performance_history.cost_types.include_discount #=> Boolean
    #   resp.budget_performance_history.cost_types.use_amortized #=> Boolean
    #   resp.budget_performance_history.time_unit #=> String, one of "DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"
    #   resp.budget_performance_history.budgeted_and_actual_amounts_list #=> Array
    #   resp.budget_performance_history.budgeted_and_actual_amounts_list[0].budgeted_amount.amount #=> String
    #   resp.budget_performance_history.budgeted_and_actual_amounts_list[0].budgeted_amount.unit #=> String
    #   resp.budget_performance_history.budgeted_and_actual_amounts_list[0].actual_amount.amount #=> String
    #   resp.budget_performance_history.budgeted_and_actual_amounts_list[0].actual_amount.unit #=> String
    #   resp.budget_performance_history.budgeted_and_actual_amounts_list[0].time_period.start #=> Time
    #   resp.budget_performance_history.budgeted_and_actual_amounts_list[0].time_period.end #=> Time
    #   resp.next_token #=> String
    #
    # @overload describe_budget_performance_history(params = {})
    # @param [Hash] params ({})
    def describe_budget_performance_history(params = {}, options = {})
      req = build_request(:describe_budget_performance_history, params)
      req.send_request(options)
    end

    # Lists the budgets that are associated with an account.
    #
    # The Request Syntax section shows the `BudgetLimit` syntax. For
    # `PlannedBudgetLimits`, see the [Examples][1] section.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budgets that you want to
    #   describe.
    #
    # @option params [Integer] :max_results
    #   An integer that represents how many budgets a paginated response
    #   contains. The default is 100.
    #
    # @option params [String] :next_token
    #   The pagination token that you include in your request to indicate the
    #   next set of results that you want to retrieve.
    #
    # @option params [Boolean] :show_filter_expression
    #   Specifies whether the response includes the filter expression
    #   associated with the budgets. By showing the filter expression, you can
    #   see detailed filtering logic applied to the budgets, such as Amazon
    #   Web Services services or tags that are being tracked.
    #
    # @return [Types::DescribeBudgetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBudgetsResponse#budgets #budgets} => Array&lt;Types::Budget&gt;
    #   * {Types::DescribeBudgetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_budgets({
    #     account_id: "AccountId", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #     show_filter_expression: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.budgets #=> Array
    #   resp.budgets[0].budget_name #=> String
    #   resp.budgets[0].budget_limit.amount #=> String
    #   resp.budgets[0].budget_limit.unit #=> String
    #   resp.budgets[0].planned_budget_limits #=> Hash
    #   resp.budgets[0].planned_budget_limits["GenericString"].amount #=> String
    #   resp.budgets[0].planned_budget_limits["GenericString"].unit #=> String
    #   resp.budgets[0].cost_filters #=> Hash
    #   resp.budgets[0].cost_filters["GenericString"] #=> Array
    #   resp.budgets[0].cost_filters["GenericString"][0] #=> String
    #   resp.budgets[0].cost_types.include_tax #=> Boolean
    #   resp.budgets[0].cost_types.include_subscription #=> Boolean
    #   resp.budgets[0].cost_types.use_blended #=> Boolean
    #   resp.budgets[0].cost_types.include_refund #=> Boolean
    #   resp.budgets[0].cost_types.include_credit #=> Boolean
    #   resp.budgets[0].cost_types.include_upfront #=> Boolean
    #   resp.budgets[0].cost_types.include_recurring #=> Boolean
    #   resp.budgets[0].cost_types.include_other_subscription #=> Boolean
    #   resp.budgets[0].cost_types.include_support #=> Boolean
    #   resp.budgets[0].cost_types.include_discount #=> Boolean
    #   resp.budgets[0].cost_types.use_amortized #=> Boolean
    #   resp.budgets[0].time_unit #=> String, one of "DAILY", "MONTHLY", "QUARTERLY", "ANNUALLY"
    #   resp.budgets[0].time_period.start #=> Time
    #   resp.budgets[0].time_period.end #=> Time
    #   resp.budgets[0].calculated_spend.actual_spend.amount #=> String
    #   resp.budgets[0].calculated_spend.actual_spend.unit #=> String
    #   resp.budgets[0].calculated_spend.forecasted_spend.amount #=> String
    #   resp.budgets[0].calculated_spend.forecasted_spend.unit #=> String
    #   resp.budgets[0].budget_type #=> String, one of "USAGE", "COST", "RI_UTILIZATION", "RI_COVERAGE", "SAVINGS_PLANS_UTILIZATION", "SAVINGS_PLANS_COVERAGE"
    #   resp.budgets[0].last_updated_time #=> Time
    #   resp.budgets[0].auto_adjust_data.auto_adjust_type #=> String, one of "HISTORICAL", "FORECAST"
    #   resp.budgets[0].auto_adjust_data.historical_options.budget_adjustment_period #=> Integer
    #   resp.budgets[0].auto_adjust_data.historical_options.look_back_available_periods #=> Integer
    #   resp.budgets[0].auto_adjust_data.last_auto_adjust_time #=> Time
    #   resp.budgets[0].filter_expression.or #=> Array
    #   resp.budgets[0].filter_expression.or[0] #=> Types::Expression
    #   resp.budgets[0].filter_expression.and #=> Array
    #   resp.budgets[0].filter_expression.and[0] #=> Types::Expression
    #   resp.budgets[0].filter_expression.not #=> Types::Expression
    #   resp.budgets[0].filter_expression.dimensions.key #=> String, one of "AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "INVOICING_ENTITY", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "RESERVATION_MODIFIED", "TAG_KEY", "COST_CATEGORY_NAME"
    #   resp.budgets[0].filter_expression.dimensions.values #=> Array
    #   resp.budgets[0].filter_expression.dimensions.values[0] #=> String
    #   resp.budgets[0].filter_expression.dimensions.match_options #=> Array
    #   resp.budgets[0].filter_expression.dimensions.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.budgets[0].filter_expression.tags.key #=> String
    #   resp.budgets[0].filter_expression.tags.values #=> Array
    #   resp.budgets[0].filter_expression.tags.values[0] #=> String
    #   resp.budgets[0].filter_expression.tags.match_options #=> Array
    #   resp.budgets[0].filter_expression.tags.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.budgets[0].filter_expression.cost_categories.key #=> String
    #   resp.budgets[0].filter_expression.cost_categories.values #=> Array
    #   resp.budgets[0].filter_expression.cost_categories.values[0] #=> String
    #   resp.budgets[0].filter_expression.cost_categories.match_options #=> Array
    #   resp.budgets[0].filter_expression.cost_categories.match_options[0] #=> String, one of "EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "GREATER_THAN_OR_EQUAL", "CASE_SENSITIVE", "CASE_INSENSITIVE"
    #   resp.budgets[0].metrics #=> Array
    #   resp.budgets[0].metrics[0] #=> String, one of "BlendedCost", "UnblendedCost", "AmortizedCost", "NetUnblendedCost", "NetAmortizedCost", "UsageQuantity", "NormalizedUsageAmount", "Hours"
    #   resp.next_token #=> String
    #
    # @overload describe_budgets(params = {})
    # @param [Hash] params ({})
    def describe_budgets(params = {}, options = {})
      req = build_request(:describe_budgets, params)
      req.send_request(options)
    end

    # Lists the notifications that are associated with a budget.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose notifications
    #   you want descriptions of.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose notifications you want descriptions of.
    #
    # @option params [Integer] :max_results
    #   An optional integer that represents how many entries a paginated
    #   response contains.
    #
    # @option params [String] :next_token
    #   The pagination token that you include in your request to indicate the
    #   next set of results that you want to retrieve.
    #
    # @return [Types::DescribeNotificationsForBudgetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotificationsForBudgetResponse#notifications #notifications} => Array&lt;Types::Notification&gt;
    #   * {Types::DescribeNotificationsForBudgetResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notifications_for_budget({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.notifications #=> Array
    #   resp.notifications[0].notification_type #=> String, one of "ACTUAL", "FORECASTED"
    #   resp.notifications[0].comparison_operator #=> String, one of "GREATER_THAN", "LESS_THAN", "EQUAL_TO"
    #   resp.notifications[0].threshold #=> Float
    #   resp.notifications[0].threshold_type #=> String, one of "PERCENTAGE", "ABSOLUTE_VALUE"
    #   resp.notifications[0].notification_state #=> String, one of "OK", "ALARM"
    #   resp.next_token #=> String
    #
    # @overload describe_notifications_for_budget(params = {})
    # @param [Hash] params ({})
    def describe_notifications_for_budget(params = {}, options = {})
      req = build_request(:describe_notifications_for_budget, params)
      req.send_request(options)
    end

    # Lists the subscribers that are associated with a notification.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose subscribers
    #   you want descriptions of.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose subscribers you want descriptions of.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification whose subscribers you want to list.
    #
    # @option params [Integer] :max_results
    #   An optional integer that represents how many entries a paginated
    #   response contains.
    #
    # @option params [String] :next_token
    #   The pagination token that you include in your request to indicate the
    #   next set of results that you want to retrieve.
    #
    # @return [Types::DescribeSubscribersForNotificationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubscribersForNotificationResponse#subscribers #subscribers} => Array&lt;Types::Subscriber&gt;
    #   * {Types::DescribeSubscribersForNotificationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subscribers_for_notification({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #       notification_state: "OK", # accepts OK, ALARM
    #     },
    #     max_results: 1,
    #     next_token: "GenericString",
    #   })
    #
    # @example Response structure
    #
    #   resp.subscribers #=> Array
    #   resp.subscribers[0].subscription_type #=> String, one of "SNS", "EMAIL"
    #   resp.subscribers[0].address #=> String
    #   resp.next_token #=> String
    #
    # @overload describe_subscribers_for_notification(params = {})
    # @param [Hash] params ({})
    def describe_subscribers_for_notification(params = {}, options = {})
      req = build_request(:describe_subscribers_for_notification, params)
      req.send_request(options)
    end

    # Executes a budget action.
    #
    # @option params [required, String] :account_id
    #   The account ID of the user. It's a 12-digit number.
    #
    # @option params [required, String] :budget_name
    #   A string that represents the budget name. The ":" and "\\"
    #   characters, and the "/action/" substring, aren't allowed.
    #
    # @option params [required, String] :action_id
    #   A system-generated universally unique identifier (UUID) for the
    #   action.
    #
    # @option params [required, String] :execution_type
    #   The type of execution.
    #
    # @return [Types::ExecuteBudgetActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteBudgetActionResponse#account_id #account_id} => String
    #   * {Types::ExecuteBudgetActionResponse#budget_name #budget_name} => String
    #   * {Types::ExecuteBudgetActionResponse#action_id #action_id} => String
    #   * {Types::ExecuteBudgetActionResponse#execution_type #execution_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_budget_action({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #     execution_type: "APPROVE_BUDGET_ACTION", # required, accepts APPROVE_BUDGET_ACTION, RETRY_BUDGET_ACTION, REVERSE_BUDGET_ACTION, RESET_BUDGET_ACTION
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #   resp.budget_name #=> String
    #   resp.action_id #=> String
    #   resp.execution_type #=> String, one of "APPROVE_BUDGET_ACTION", "RETRY_BUDGET_ACTION", "REVERSE_BUDGET_ACTION", "RESET_BUDGET_ACTION"
    #
    # @overload execute_budget_action(params = {})
    # @param [Hash] params ({})
    def execute_budget_action(params = {}, options = {})
      req = build_request(:execute_budget_action, params)
      req.send_request(options)
    end

    # Lists tags associated with a budget or budget action resource.
    #
    # @option params [required, String] :resource_arn
    #   The unique identifier for the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].key #=> String
    #   resp.resource_tags[0].value #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates tags for a budget or budget action resource.
    #
    # @option params [required, String] :resource_arn
    #   The unique identifier for the resource.
    #
    # @option params [required, Array<Types::ResourceTag>] :resource_tags
    #   The tags associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     resource_tags: [ # required
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       },
    #     ],
    #   })
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes tags associated with a budget or budget action resource.
    #
    # @option params [required, String] :resource_arn
    #   The unique identifier for the resource.
    #
    # @option params [required, Array<String>] :resource_tag_keys
    #   The key that's associated with the tag.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     resource_tag_keys: ["ResourceTagKey"], # required
    #   })
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a budget. You can change every part of a budget except for the
    # `budgetName` and the `calculatedSpend`. When you modify a budget, the
    # `calculatedSpend` drops to zero until Amazon Web Services has new
    # usage data to use for forecasting.
    #
    # Only one of `BudgetLimit` or `PlannedBudgetLimits` can be present in
    # the syntax at one time. Use the syntax that matches your case. The
    # Request Syntax section shows the `BudgetLimit` syntax. For
    # `PlannedBudgetLimits`, see the [Examples][1] section.
    #
    #  Similarly, only one set of filter and metric selections can be
    # present
    # in the syntax at one time. Either `FilterExpression` and `Metrics` or
    # `CostFilters` and `CostTypes`, not both or a different combination. We
    # recommend using `FilterExpression` and `Metrics` as they provide more
    # flexible and powerful filtering capabilities. The Request Syntax
    # section shows the `FilterExpression`/`Metrics` syntax.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget that you want to
    #   update.
    #
    # @option params [required, Types::Budget] :new_budget
    #   The budget that you want to update your budget to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_budget({
    #     account_id: "AccountId", # required
    #     new_budget: { # required
    #       budget_name: "BudgetName", # required
    #       budget_limit: {
    #         amount: "NumericValue", # required
    #         unit: "UnitValue", # required
    #       },
    #       planned_budget_limits: {
    #         "GenericString" => {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #       },
    #       cost_filters: {
    #         "GenericString" => ["DimensionValue"],
    #       },
    #       cost_types: {
    #         include_tax: false,
    #         include_subscription: false,
    #         use_blended: false,
    #         include_refund: false,
    #         include_credit: false,
    #         include_upfront: false,
    #         include_recurring: false,
    #         include_other_subscription: false,
    #         include_support: false,
    #         include_discount: false,
    #         use_amortized: false,
    #       },
    #       time_unit: "DAILY", # required, accepts DAILY, MONTHLY, QUARTERLY, ANNUALLY
    #       time_period: {
    #         start: Time.now,
    #         end: Time.now,
    #       },
    #       calculated_spend: {
    #         actual_spend: { # required
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #         forecasted_spend: {
    #           amount: "NumericValue", # required
    #           unit: "UnitValue", # required
    #         },
    #       },
    #       budget_type: "USAGE", # required, accepts USAGE, COST, RI_UTILIZATION, RI_COVERAGE, SAVINGS_PLANS_UTILIZATION, SAVINGS_PLANS_COVERAGE
    #       last_updated_time: Time.now,
    #       auto_adjust_data: {
    #         auto_adjust_type: "HISTORICAL", # required, accepts HISTORICAL, FORECAST
    #         historical_options: {
    #           budget_adjustment_period: 1, # required
    #           look_back_available_periods: 1,
    #         },
    #         last_auto_adjust_time: Time.now,
    #       },
    #       filter_expression: {
    #         or: [
    #           {
    #             # recursive Expression
    #           },
    #         ],
    #         and: [
    #           {
    #             # recursive Expression
    #           },
    #         ],
    #         not: {
    #           # recursive Expression
    #         },
    #         dimensions: {
    #           key: "AZ", # required, accepts AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, INVOICING_ENTITY, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, RESERVATION_MODIFIED, TAG_KEY, COST_CATEGORY_NAME
    #           values: ["Value"], # required
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, GREATER_THAN_OR_EQUAL, CASE_SENSITIVE, CASE_INSENSITIVE
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, GREATER_THAN_OR_EQUAL, CASE_SENSITIVE, CASE_INSENSITIVE
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #           match_options: ["EQUALS"], # accepts EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, GREATER_THAN_OR_EQUAL, CASE_SENSITIVE, CASE_INSENSITIVE
    #         },
    #       },
    #       metrics: ["BlendedCost"], # accepts BlendedCost, UnblendedCost, AmortizedCost, NetUnblendedCost, NetAmortizedCost, UsageQuantity, NormalizedUsageAmount, Hours
    #     },
    #   })
    #
    # @overload update_budget(params = {})
    # @param [Hash] params ({})
    def update_budget(params = {}, options = {})
      req = build_request(:update_budget, params)
      req.send_request(options)
    end

    # Updates a budget action.
    #
    # @option params [required, String] :account_id
    #   The account ID of the user. It's a 12-digit number.
    #
    # @option params [required, String] :budget_name
    #   A string that represents the budget name. The ":" and "\\"
    #   characters, and the "/action/" substring, aren't allowed.
    #
    # @option params [required, String] :action_id
    #   A system-generated universally unique identifier (UUID) for the
    #   action.
    #
    # @option params [String] :notification_type
    #   The type of a notification. It must be ACTUAL or FORECASTED.
    #
    # @option params [Types::ActionThreshold] :action_threshold
    #   The trigger threshold of the action.
    #
    # @option params [Types::Definition] :definition
    #   Specifies all of the type-specific parameters.
    #
    # @option params [String] :execution_role_arn
    #   The role passed for action execution and reversion. Roles and actions
    #   must be in the same account.
    #
    # @option params [String] :approval_model
    #   This specifies if the action needs manual or automatic approval.
    #
    # @option params [Array<Types::Subscriber>] :subscribers
    #   A list of subscribers.
    #
    # @return [Types::UpdateBudgetActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBudgetActionResponse#account_id #account_id} => String
    #   * {Types::UpdateBudgetActionResponse#budget_name #budget_name} => String
    #   * {Types::UpdateBudgetActionResponse#old_action #old_action} => Types::Action
    #   * {Types::UpdateBudgetActionResponse#new_action #new_action} => Types::Action
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_budget_action({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     action_id: "ActionId", # required
    #     notification_type: "ACTUAL", # accepts ACTUAL, FORECASTED
    #     action_threshold: {
    #       action_threshold_value: 1.0, # required
    #       action_threshold_type: "PERCENTAGE", # required, accepts PERCENTAGE, ABSOLUTE_VALUE
    #     },
    #     definition: {
    #       iam_action_definition: {
    #         policy_arn: "PolicyArn", # required
    #         roles: ["Role"],
    #         groups: ["Group"],
    #         users: ["User"],
    #       },
    #       scp_action_definition: {
    #         policy_id: "PolicyId", # required
    #         target_ids: ["TargetId"], # required
    #       },
    #       ssm_action_definition: {
    #         action_sub_type: "STOP_EC2_INSTANCES", # required, accepts STOP_EC2_INSTANCES, STOP_RDS_INSTANCES
    #         region: "Region", # required
    #         instance_ids: ["InstanceId"], # required
    #       },
    #     },
    #     execution_role_arn: "RoleArn",
    #     approval_model: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #     subscribers: [
    #       {
    #         subscription_type: "SNS", # required, accepts SNS, EMAIL
    #         address: "SubscriberAddress", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #   resp.budget_name #=> String
    #   resp.old_action.action_id #=> String
    #   resp.old_action.budget_name #=> String
    #   resp.old_action.notification_type #=> String, one of "ACTUAL", "FORECASTED"
    #   resp.old_action.action_type #=> String, one of "APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"
    #   resp.old_action.action_threshold.action_threshold_value #=> Float
    #   resp.old_action.action_threshold.action_threshold_type #=> String, one of "PERCENTAGE", "ABSOLUTE_VALUE"
    #   resp.old_action.definition.iam_action_definition.policy_arn #=> String
    #   resp.old_action.definition.iam_action_definition.roles #=> Array
    #   resp.old_action.definition.iam_action_definition.roles[0] #=> String
    #   resp.old_action.definition.iam_action_definition.groups #=> Array
    #   resp.old_action.definition.iam_action_definition.groups[0] #=> String
    #   resp.old_action.definition.iam_action_definition.users #=> Array
    #   resp.old_action.definition.iam_action_definition.users[0] #=> String
    #   resp.old_action.definition.scp_action_definition.policy_id #=> String
    #   resp.old_action.definition.scp_action_definition.target_ids #=> Array
    #   resp.old_action.definition.scp_action_definition.target_ids[0] #=> String
    #   resp.old_action.definition.ssm_action_definition.action_sub_type #=> String, one of "STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"
    #   resp.old_action.definition.ssm_action_definition.region #=> String
    #   resp.old_action.definition.ssm_action_definition.instance_ids #=> Array
    #   resp.old_action.definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.old_action.execution_role_arn #=> String
    #   resp.old_action.approval_model #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.old_action.status #=> String, one of "STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"
    #   resp.old_action.subscribers #=> Array
    #   resp.old_action.subscribers[0].subscription_type #=> String, one of "SNS", "EMAIL"
    #   resp.old_action.subscribers[0].address #=> String
    #   resp.new_action.action_id #=> String
    #   resp.new_action.budget_name #=> String
    #   resp.new_action.notification_type #=> String, one of "ACTUAL", "FORECASTED"
    #   resp.new_action.action_type #=> String, one of "APPLY_IAM_POLICY", "APPLY_SCP_POLICY", "RUN_SSM_DOCUMENTS"
    #   resp.new_action.action_threshold.action_threshold_value #=> Float
    #   resp.new_action.action_threshold.action_threshold_type #=> String, one of "PERCENTAGE", "ABSOLUTE_VALUE"
    #   resp.new_action.definition.iam_action_definition.policy_arn #=> String
    #   resp.new_action.definition.iam_action_definition.roles #=> Array
    #   resp.new_action.definition.iam_action_definition.roles[0] #=> String
    #   resp.new_action.definition.iam_action_definition.groups #=> Array
    #   resp.new_action.definition.iam_action_definition.groups[0] #=> String
    #   resp.new_action.definition.iam_action_definition.users #=> Array
    #   resp.new_action.definition.iam_action_definition.users[0] #=> String
    #   resp.new_action.definition.scp_action_definition.policy_id #=> String
    #   resp.new_action.definition.scp_action_definition.target_ids #=> Array
    #   resp.new_action.definition.scp_action_definition.target_ids[0] #=> String
    #   resp.new_action.definition.ssm_action_definition.action_sub_type #=> String, one of "STOP_EC2_INSTANCES", "STOP_RDS_INSTANCES"
    #   resp.new_action.definition.ssm_action_definition.region #=> String
    #   resp.new_action.definition.ssm_action_definition.instance_ids #=> Array
    #   resp.new_action.definition.ssm_action_definition.instance_ids[0] #=> String
    #   resp.new_action.execution_role_arn #=> String
    #   resp.new_action.approval_model #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.new_action.status #=> String, one of "STANDBY", "PENDING", "EXECUTION_IN_PROGRESS", "EXECUTION_SUCCESS", "EXECUTION_FAILURE", "REVERSE_IN_PROGRESS", "REVERSE_SUCCESS", "REVERSE_FAILURE", "RESET_IN_PROGRESS", "RESET_FAILURE"
    #   resp.new_action.subscribers #=> Array
    #   resp.new_action.subscribers[0].subscription_type #=> String, one of "SNS", "EMAIL"
    #   resp.new_action.subscribers[0].address #=> String
    #
    # @overload update_budget_action(params = {})
    # @param [Hash] params ({})
    def update_budget_action(params = {}, options = {})
      req = build_request(:update_budget_action, params)
      req.send_request(options)
    end

    # Updates a notification.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose notification
    #   you want to update.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose notification you want to update.
    #
    # @option params [required, Types::Notification] :old_notification
    #   The previous notification that is associated with a budget.
    #
    # @option params [required, Types::Notification] :new_notification
    #   The updated notification to be associated with a budget.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     old_notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #       notification_state: "OK", # accepts OK, ALARM
    #     },
    #     new_notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #       notification_state: "OK", # accepts OK, ALARM
    #     },
    #   })
    #
    # @overload update_notification(params = {})
    # @param [Hash] params ({})
    def update_notification(params = {}, options = {})
      req = build_request(:update_notification, params)
      req.send_request(options)
    end

    # Updates a subscriber.
    #
    # @option params [required, String] :account_id
    #   The `accountId` that is associated with the budget whose subscriber
    #   you want to update.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget whose subscriber you want to update.
    #
    # @option params [required, Types::Notification] :notification
    #   The notification whose subscriber you want to update.
    #
    # @option params [required, Types::Subscriber] :old_subscriber
    #   The previous subscriber that is associated with a budget notification.
    #
    # @option params [required, Types::Subscriber] :new_subscriber
    #   The updated subscriber that is associated with a budget notification.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscriber({
    #     account_id: "AccountId", # required
    #     budget_name: "BudgetName", # required
    #     notification: { # required
    #       notification_type: "ACTUAL", # required, accepts ACTUAL, FORECASTED
    #       comparison_operator: "GREATER_THAN", # required, accepts GREATER_THAN, LESS_THAN, EQUAL_TO
    #       threshold: 1.0, # required
    #       threshold_type: "PERCENTAGE", # accepts PERCENTAGE, ABSOLUTE_VALUE
    #       notification_state: "OK", # accepts OK, ALARM
    #     },
    #     old_subscriber: { # required
    #       subscription_type: "SNS", # required, accepts SNS, EMAIL
    #       address: "SubscriberAddress", # required
    #     },
    #     new_subscriber: { # required
    #       subscription_type: "SNS", # required, accepts SNS, EMAIL
    #       address: "SubscriberAddress", # required
    #     },
    #   })
    #
    # @overload update_subscriber(params = {})
    # @param [Hash] params ({})
    def update_subscriber(params = {}, options = {})
      req = build_request(:update_subscriber, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Budgets')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-budgets'
      context[:gem_version] = '1.88.0'
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
