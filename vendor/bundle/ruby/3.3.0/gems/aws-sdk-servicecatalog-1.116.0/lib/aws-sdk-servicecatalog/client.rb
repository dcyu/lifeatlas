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

module Aws::ServiceCatalog
  # An API client for ServiceCatalog.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ServiceCatalog::Client.new(
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

    @identifier = :servicecatalog

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
    add_plugin(Aws::ServiceCatalog::Plugins::Endpoints)

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
    #   @option options [Aws::ServiceCatalog::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ServiceCatalog::EndpointParameters`.
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

    # Accepts an offer to share the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :portfolio_share_type
    #   The type of shared portfolios to accept. The default is to accept
    #   imported portfolios.
    #
    #   * `AWS_ORGANIZATIONS` - Accept portfolios shared by the management
    #     account of your organization.
    #
    #   * `IMPORTED` - Accept imported portfolios.
    #
    #   * `AWS_SERVICECATALOG` - Not supported. (Throws
    #     ResourceNotFoundException.)
    #
    #   For example, `aws servicecatalog accept-portfolio-share --portfolio-id
    #   "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_portfolio_share({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     portfolio_share_type: "IMPORTED", # accepts IMPORTED, AWS_SERVICECATALOG, AWS_ORGANIZATIONS
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AcceptPortfolioShare AWS API Documentation
    #
    # @overload accept_portfolio_share(params = {})
    # @param [Hash] params ({})
    def accept_portfolio_share(params = {}, options = {})
      req = build_request(:accept_portfolio_share, params)
      req.send_request(options)
    end

    # Associates the specified budget with the specified resource.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget you want to associate.
    #
    # @option params [required, String] :resource_id
    #   The resource identifier. Either a portfolio-id or a product-id.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_budget_with_resource({
    #     budget_name: "BudgetName", # required
    #     resource_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateBudgetWithResource AWS API Documentation
    #
    # @overload associate_budget_with_resource(params = {})
    # @param [Hash] params ({})
    def associate_budget_with_resource(params = {}, options = {})
      req = build_request(:associate_budget_with_resource, params)
      req.send_request(options)
    end

    # Associates the specified principal ARN with the specified portfolio.
    #
    # If you share the portfolio with principal name sharing enabled, the
    # `PrincipalARN` association is included in the share.
    #
    # The `PortfolioID`, `PrincipalARN`, and `PrincipalType` parameters are
    # required.
    #
    # You can associate a maximum of 10 Principals with a portfolio using
    # `PrincipalType` as `IAM_PATTERN`.
    #
    # <note markdown="1"> When you associate a principal with portfolio, a potential privilege
    # escalation path may occur when that portfolio is then shared with
    # other accounts. For a user in a recipient account who is *not* an
    # Service Catalog Admin, but still has the ability to create Principals
    # (Users/Groups/Roles), that user could create a role that matches a
    # principal name association for the portfolio. Although this user may
    # not know which principal names are associated through Service Catalog,
    # they may be able to guess the user. If this potential escalation path
    # is a concern, then Service Catalog recommends using `PrincipalType` as
    # `IAM`. With this configuration, the `PrincipalARN` must already exist
    # in the recipient account before it can be associated.
    #
    #  </note>
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the principal (user, role, or group). If the
    #   `PrincipalType` is `IAM`, the supported value is a fully defined [IAM
    #   Amazon Resource Name (ARN)][1]. If the `PrincipalType` is
    #   `IAM_PATTERN`, the supported value is an `IAM` ARN *without an
    #   AccountID* in the following format:
    #
    #   *arn:partition:iam:::resource-type/resource-id*
    #
    #   The ARN resource-id can be either:
    #
    #   * A fully formed resource-id. For example,
    #     *arn:aws:iam:::role/resource-name* or
    #     *arn:aws:iam:::role/resource-path/resource-name*
    #
    #   * A wildcard ARN. The wildcard ARN accepts `IAM_PATTERN` values with a
    #     "*" or "?" in the resource-id segment of the ARN. For example
    #     *arn:partition:service:::resource-type/resource-path/resource-name*.
    #     The new symbols are exclusive to the **resource-path** and
    #     **resource-name** and cannot replace the **resource-type** or other
    #     ARN values.
    #
    #     The ARN path and principal name allow unlimited wildcard characters.
    #
    #   Examples of an **acceptable** wildcard ARN:
    #
    #   * arn:aws:iam:::role/ResourceName\_*
    #
    #   * arn:aws:iam:::role/*/ResourceName\_?
    #
    #   Examples of an **unacceptable** wildcard ARN:
    #
    #   * arn:aws:iam:::*/ResourceName
    #
    #   ^
    #
    #   You can associate multiple `IAM_PATTERN`s even if the account has no
    #   principal with that name.
    #
    #   The "?" wildcard character matches zero or one of any character.
    #   This is similar to ".?" in regular regex context. The "*"
    #   wildcard character matches any number of any characters. This is
    #   similar to ".*" in regular regex context.
    #
    #   In the IAM Principal ARN format
    #   (*arn:partition:iam:::resource-type/resource-path/resource-name*),
    #   valid resource-type values include **user/**, **group/**, or
    #   **role/**. The "?" and "*" characters are allowed only after the
    #   resource-type in the resource-id segment. You can use special
    #   characters anywhere within the resource-id.
    #
    #   The "*" character also matches the "/" character, allowing paths
    #   to be formed *within* the resource-id. For example,
    #   *arn:aws:iam:::role/*****/ResourceName\_?* matches both
    #   *arn:aws:iam:::role/pathA/pathB/ResourceName\_1* and
    #   *arn:aws:iam:::role/pathA/ResourceName\_1*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
    #
    # @option params [required, String] :principal_type
    #   The principal type. The supported value is `IAM` if you use a fully
    #   defined Amazon Resource Name (ARN), or `IAM_PATTERN` if you use an ARN
    #   with no `accountID`, with or without wildcard characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_principal_with_portfolio({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     principal_arn: "PrincipalARN", # required
    #     principal_type: "IAM", # required, accepts IAM, IAM_PATTERN
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociatePrincipalWithPortfolio AWS API Documentation
    #
    # @overload associate_principal_with_portfolio(params = {})
    # @param [Hash] params ({})
    def associate_principal_with_portfolio(params = {}, options = {})
      req = build_request(:associate_principal_with_portfolio, params)
      req.send_request(options)
    end

    # Associates the specified product with the specified portfolio.
    #
    # A delegated admin is authorized to invoke this command.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :source_portfolio_id
    #   The identifier of the source portfolio.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_product_with_portfolio({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     portfolio_id: "Id", # required
    #     source_portfolio_id: "Id",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateProductWithPortfolio AWS API Documentation
    #
    # @overload associate_product_with_portfolio(params = {})
    # @param [Hash] params ({})
    def associate_product_with_portfolio(params = {}, options = {})
      req = build_request(:associate_product_with_portfolio, params)
      req.send_request(options)
    end

    # Associates a self-service action with a provisioning artifact.
    #
    # @option params [required, String] :product_id
    #   The product identifier. For example, `prod-abcdzk7xy33qa`.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact. For example,
    #   `pa-4abcdjnxjj6ne`.
    #
    # @option params [required, String] :service_action_id
    #   The self-service action identifier. For example, `act-fs7abcd89wxyz`.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests from the same Amazon Web Services account use the
    #   same idempotency token, the same response is returned for each
    #   repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_service_action_with_provisioning_artifact({
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     service_action_id: "Id", # required
    #     accept_language: "AcceptLanguage",
    #     idempotency_token: "IdempotencyToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateServiceActionWithProvisioningArtifact AWS API Documentation
    #
    # @overload associate_service_action_with_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def associate_service_action_with_provisioning_artifact(params = {}, options = {})
      req = build_request(:associate_service_action_with_provisioning_artifact, params)
      req.send_request(options)
    end

    # Associate the specified TagOption with the specified portfolio or
    # product.
    #
    # @option params [required, String] :resource_id
    #   The resource identifier.
    #
    # @option params [required, String] :tag_option_id
    #   The TagOption identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_tag_option_with_resource({
    #     resource_id: "ResourceId", # required
    #     tag_option_id: "TagOptionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateTagOptionWithResource AWS API Documentation
    #
    # @overload associate_tag_option_with_resource(params = {})
    # @param [Hash] params ({})
    def associate_tag_option_with_resource(params = {}, options = {})
      req = build_request(:associate_tag_option_with_resource, params)
      req.send_request(options)
    end

    # Associates multiple self-service actions with provisioning artifacts.
    #
    # @option params [required, Array<Types::ServiceActionAssociation>] :service_action_associations
    #   One or more associations, each consisting of the Action ID, the
    #   Product ID, and the Provisioning Artifact ID.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @return [Types::BatchAssociateServiceActionWithProvisioningArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAssociateServiceActionWithProvisioningArtifactOutput#failed_service_action_associations #failed_service_action_associations} => Array&lt;Types::FailedServiceActionAssociation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_service_action_with_provisioning_artifact({
    #     service_action_associations: [ # required
    #       {
    #         service_action_id: "Id", # required
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #       },
    #     ],
    #     accept_language: "AcceptLanguage",
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_service_action_associations #=> Array
    #   resp.failed_service_action_associations[0].service_action_id #=> String
    #   resp.failed_service_action_associations[0].product_id #=> String
    #   resp.failed_service_action_associations[0].provisioning_artifact_id #=> String
    #   resp.failed_service_action_associations[0].error_code #=> String, one of "DUPLICATE_RESOURCE", "INTERNAL_FAILURE", "LIMIT_EXCEEDED", "RESOURCE_NOT_FOUND", "THROTTLING", "INVALID_PARAMETER"
    #   resp.failed_service_action_associations[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/BatchAssociateServiceActionWithProvisioningArtifact AWS API Documentation
    #
    # @overload batch_associate_service_action_with_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def batch_associate_service_action_with_provisioning_artifact(params = {}, options = {})
      req = build_request(:batch_associate_service_action_with_provisioning_artifact, params)
      req.send_request(options)
    end

    # Disassociates a batch of self-service actions from the specified
    # provisioning artifact.
    #
    # @option params [required, Array<Types::ServiceActionAssociation>] :service_action_associations
    #   One or more associations, each consisting of the Action ID, the
    #   Product ID, and the Provisioning Artifact ID.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @return [Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput#failed_service_action_associations #failed_service_action_associations} => Array&lt;Types::FailedServiceActionAssociation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_service_action_from_provisioning_artifact({
    #     service_action_associations: [ # required
    #       {
    #         service_action_id: "Id", # required
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #       },
    #     ],
    #     accept_language: "AcceptLanguage",
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_service_action_associations #=> Array
    #   resp.failed_service_action_associations[0].service_action_id #=> String
    #   resp.failed_service_action_associations[0].product_id #=> String
    #   resp.failed_service_action_associations[0].provisioning_artifact_id #=> String
    #   resp.failed_service_action_associations[0].error_code #=> String, one of "DUPLICATE_RESOURCE", "INTERNAL_FAILURE", "LIMIT_EXCEEDED", "RESOURCE_NOT_FOUND", "THROTTLING", "INVALID_PARAMETER"
    #   resp.failed_service_action_associations[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/BatchDisassociateServiceActionFromProvisioningArtifact AWS API Documentation
    #
    # @overload batch_disassociate_service_action_from_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def batch_disassociate_service_action_from_provisioning_artifact(params = {}, options = {})
      req = build_request(:batch_disassociate_service_action_from_provisioning_artifact, params)
      req.send_request(options)
    end

    # Copies the specified source product to the specified target product or
    # a new product.
    #
    # You can copy a product to the same account or another account. You can
    # copy a product to the same Region or another Region. If you copy a
    # product to another account, you must first share the product in a
    # portfolio using CreatePortfolioShare.
    #
    # This operation is performed asynchronously. To track the progress of
    # the operation, use DescribeCopyProductStatus.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :source_product_arn
    #   The Amazon Resource Name (ARN) of the source product.
    #
    # @option params [String] :target_product_id
    #   The identifier of the target product. By default, a new product is
    #   created.
    #
    # @option params [String] :target_product_name
    #   A name for the target product. The default is the name of the source
    #   product.
    #
    # @option params [Array<Hash>] :source_provisioning_artifact_identifiers
    #   The identifiers of the provisioning artifacts (also known as versions)
    #   of the product to copy. By default, all provisioning artifacts are
    #   copied.
    #
    # @option params [Array<String>] :copy_options
    #   The copy options. If the value is `CopyTags`, the tags from the source
    #   product are copied to the target product.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CopyProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyProductOutput#copy_product_token #copy_product_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_product({
    #     accept_language: "AcceptLanguage",
    #     source_product_arn: "ProductArn", # required
    #     target_product_id: "Id",
    #     target_product_name: "ProductViewName",
    #     source_provisioning_artifact_identifiers: [
    #       {
    #         "Id" => "ProvisioningArtifactPropertyValue",
    #       },
    #     ],
    #     copy_options: ["CopyTags"], # accepts CopyTags
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.copy_product_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CopyProduct AWS API Documentation
    #
    # @overload copy_product(params = {})
    # @param [Hash] params ({})
    def copy_product(params = {}, options = {})
      req = build_request(:copy_product, params)
      req.send_request(options)
    end

    # Creates a constraint.
    #
    # A delegated admin is authorized to invoke this command.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :parameters
    #   The constraint parameters, in JSON format. The syntax depends on the
    #   constraint type as follows:
    #
    #   LAUNCH
    #
    #   : You are required to specify either the `RoleArn` or the
    #     `LocalRoleName` but can't use both.
    #
    #     Specify the `RoleArn` property as follows:
    #
    #     `{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}`
    #
    #     Specify the `LocalRoleName` property as follows:
    #
    #     `{"LocalRoleName": "SCBasicLaunchRole"}`
    #
    #     If you specify the `LocalRoleName` property, when an account uses
    #     the launch constraint, the IAM role with that name in the account
    #     will be used. This allows launch-role constraints to be
    #     account-agnostic so the administrator can create fewer resources per
    #     shared account.
    #
    #     <note markdown="1"> The given role name must exist in the account used to create the
    #     launch constraint and the account of the user who launches a product
    #     with this launch constraint.
    #
    #      </note>
    #
    #     You cannot have both a `LAUNCH` and a `STACKSET` constraint.
    #
    #     You also cannot have more than one `LAUNCH` constraint on a product
    #     and portfolio.
    #
    #   NOTIFICATION
    #
    #   : Specify the `NotificationArns` property as follows:
    #
    #     `{"NotificationArns" :
    #     ["arn:aws:sns:us-east-1:123456789012:Topic"]}`
    #
    #   RESOURCE\_UPDATE
    #
    #   : Specify the `TagUpdatesOnProvisionedProduct` property as follows:
    #
    #     `{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}`
    #
    #     The `TagUpdatesOnProvisionedProduct` property accepts a string value
    #     of `ALLOWED` or `NOT_ALLOWED`.
    #
    #   STACKSET
    #
    #   : Specify the `Parameters` property as follows:
    #
    #     `{"Version": "String", "Properties": {"AccountList": [ "String" ],
    #     "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole":
    #     "String"}}`
    #
    #     You cannot have both a `LAUNCH` and a `STACKSET` constraint.
    #
    #     You also cannot have more than one `STACKSET` constraint on a
    #     product and portfolio.
    #
    #     Products with a `STACKSET` constraint will launch an CloudFormation
    #     stack set.
    #
    #   TEMPLATE
    #
    #   : Specify the `Rules` property. For more information, see [Template
    #     Constraint Rules][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html
    #
    # @option params [required, String] :type
    #   The type of constraint.
    #
    #   * `LAUNCH`
    #
    #   * `NOTIFICATION`
    #
    #   * `RESOURCE_UPDATE`
    #
    #   * `STACKSET`
    #
    #   * `TEMPLATE`
    #
    # @option params [String] :description
    #   The description of the constraint.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateConstraintOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConstraintOutput#constraint_detail #constraint_detail} => Types::ConstraintDetail
    #   * {Types::CreateConstraintOutput#constraint_parameters #constraint_parameters} => String
    #   * {Types::CreateConstraintOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_constraint({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     product_id: "Id", # required
    #     parameters: "ConstraintParameters", # required
    #     type: "ConstraintType", # required
    #     description: "ConstraintDescription",
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.constraint_detail.constraint_id #=> String
    #   resp.constraint_detail.type #=> String
    #   resp.constraint_detail.description #=> String
    #   resp.constraint_detail.owner #=> String
    #   resp.constraint_detail.product_id #=> String
    #   resp.constraint_detail.portfolio_id #=> String
    #   resp.constraint_parameters #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateConstraint AWS API Documentation
    #
    # @overload create_constraint(params = {})
    # @param [Hash] params ({})
    def create_constraint(params = {}, options = {})
      req = build_request(:create_constraint, params)
      req.send_request(options)
    end

    # Creates a portfolio.
    #
    # A delegated admin is authorized to invoke this command.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :display_name
    #   The name to use for display purposes.
    #
    # @option params [String] :description
    #   The description of the portfolio.
    #
    # @option params [required, String] :provider_name
    #   The name of the portfolio provider.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePortfolioOutput#portfolio_detail #portfolio_detail} => Types::PortfolioDetail
    #   * {Types::CreatePortfolioOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portfolio({
    #     accept_language: "AcceptLanguage",
    #     display_name: "PortfolioDisplayName", # required
    #     description: "PortfolioDescription",
    #     provider_name: "ProviderName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_detail.id #=> String
    #   resp.portfolio_detail.arn #=> String
    #   resp.portfolio_detail.display_name #=> String
    #   resp.portfolio_detail.description #=> String
    #   resp.portfolio_detail.created_time #=> Time
    #   resp.portfolio_detail.provider_name #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolio AWS API Documentation
    #
    # @overload create_portfolio(params = {})
    # @param [Hash] params ({})
    def create_portfolio(params = {}, options = {})
      req = build_request(:create_portfolio, params)
      req.send_request(options)
    end

    # Shares the specified portfolio with the specified account or
    # organization node. Shares to an organization node can only be created
    # by the management account of an organization or by a delegated
    # administrator. You can share portfolios to an organization, an
    # organizational unit, or a specific account.
    #
    # Note that if a delegated admin is de-registered, they can no longer
    # create portfolio shares.
    #
    # `AWSOrganizationsAccess` must be enabled in order to create a
    # portfolio share to an organization node.
    #
    # You can't share a shared resource, including portfolios that contain
    # a shared product.
    #
    # If the portfolio share with the specified account or organization node
    # already exists, this action will have no effect and will not return an
    # error. To update an existing share, you must use the `
    # UpdatePortfolioShare` API instead.
    #
    # <note markdown="1"> When you associate a principal with portfolio, a potential privilege
    # escalation path may occur when that portfolio is then shared with
    # other accounts. For a user in a recipient account who is *not* an
    # Service Catalog Admin, but still has the ability to create Principals
    # (Users/Groups/Roles), that user could create a role that matches a
    # principal name association for the portfolio. Although this user may
    # not know which principal names are associated through Service Catalog,
    # they may be able to guess the user. If this potential escalation path
    # is a concern, then Service Catalog recommends using `PrincipalType` as
    # `IAM`. With this configuration, the `PrincipalARN` must already exist
    # in the recipient account before it can be associated.
    #
    #  </note>
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID. For example, `123456789012`.
    #
    # @option params [Types::OrganizationNode] :organization_node
    #   The organization node to whom you are going to share. When you pass
    #   `OrganizationNode`, it creates `PortfolioShare` for all of the Amazon
    #   Web Services accounts that are associated to the `OrganizationNode`.
    #   The output returns a `PortfolioShareToken`, which enables the
    #   administrator to monitor the status of the `PortfolioShare` creation
    #   process.
    #
    # @option params [Boolean] :share_tag_options
    #   Enables or disables `TagOptions ` sharing when creating the portfolio
    #   share. If this flag is not provided, TagOptions sharing is disabled.
    #
    # @option params [Boolean] :share_principals
    #   This parameter is only supported for portfolios with an
    #   **OrganizationalNode** Type of `ORGANIZATION` or
    #   `ORGANIZATIONAL_UNIT`.
    #
    #   Enables or disables `Principal` sharing when creating the portfolio
    #   share. If you do **not** provide this flag, principal sharing is
    #   disabled.
    #
    #   When you enable Principal Name Sharing for a portfolio share, the
    #   share recipient account end users with a principal that matches any of
    #   the associated IAM patterns can provision products from the portfolio.
    #   Once shared, the share recipient can view associations of
    #   `PrincipalType`: `IAM_PATTERN` on their portfolio. You can create the
    #   principals in the recipient account before or after creating the
    #   share.
    #
    # @return [Types::CreatePortfolioShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePortfolioShareOutput#portfolio_share_token #portfolio_share_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portfolio_share({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     account_id: "AccountId",
    #     organization_node: {
    #       type: "ORGANIZATION", # accepts ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT
    #       value: "OrganizationNodeValue",
    #     },
    #     share_tag_options: false,
    #     share_principals: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_share_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolioShare AWS API Documentation
    #
    # @overload create_portfolio_share(params = {})
    # @param [Hash] params ({})
    def create_portfolio_share(params = {}, options = {})
      req = build_request(:create_portfolio_share, params)
      req.send_request(options)
    end

    # Creates a product.
    #
    # A delegated admin is authorized to invoke this command.
    #
    # The user or role that performs this operation must have the
    # `cloudformation:GetTemplate` IAM policy permission. This policy
    # permission is required when using the `ImportFromPhysicalId` template
    # source in the information data section.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :name
    #   The name of the product.
    #
    # @option params [required, String] :owner
    #   The owner of the product.
    #
    # @option params [String] :description
    #   The description of the product.
    #
    # @option params [String] :distributor
    #   The distributor of the product.
    #
    # @option params [String] :support_description
    #   The support information about the product.
    #
    # @option params [String] :support_email
    #   The contact email for product support.
    #
    # @option params [String] :support_url
    #   The contact URL for product support.
    #
    #   `^https?:\/\// `/ is the pattern used to validate SupportUrl.
    #
    # @option params [required, String] :product_type
    #   The type of product.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @option params [Types::ProvisioningArtifactProperties] :provisioning_artifact_parameters
    #   The configuration of the provisioning artifact.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::SourceConnection] :source_connection
    #   Specifies connection details for the created product and syncs the
    #   product to the connection source artifact. This automatically manages
    #   the product's artifacts based on changes to the source. The
    #   `SourceConnection` parameter consists of the following sub-fields.
    #
    #   * `Type`
    #
    #   * `ConnectionParamters`
    #
    # @return [Types::CreateProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProductOutput#product_view_detail #product_view_detail} => Types::ProductViewDetail
    #   * {Types::CreateProductOutput#provisioning_artifact_detail #provisioning_artifact_detail} => Types::ProvisioningArtifactDetail
    #   * {Types::CreateProductOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_product({
    #     accept_language: "AcceptLanguage",
    #     name: "ProductViewName", # required
    #     owner: "ProductViewOwner", # required
    #     description: "ProductViewShortDescription",
    #     distributor: "ProductViewOwner",
    #     support_description: "SupportDescription",
    #     support_email: "SupportEmail",
    #     support_url: "SupportUrl",
    #     product_type: "CLOUD_FORMATION_TEMPLATE", # required, accepts CLOUD_FORMATION_TEMPLATE, MARKETPLACE, TERRAFORM_OPEN_SOURCE, TERRAFORM_CLOUD, EXTERNAL
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     provisioning_artifact_parameters: {
    #       name: "ProvisioningArtifactName",
    #       description: "ProvisioningArtifactDescription",
    #       info: {
    #         "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue",
    #       },
    #       type: "CLOUD_FORMATION_TEMPLATE", # accepts CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR, TERRAFORM_OPEN_SOURCE, TERRAFORM_CLOUD, EXTERNAL
    #       disable_template_validation: false,
    #     },
    #     idempotency_token: "IdempotencyToken", # required
    #     source_connection: {
    #       type: "CODESTAR", # accepts CODESTAR
    #       connection_parameters: { # required
    #         code_star: {
    #           connection_arn: "CodeStarConnectionArn", # required
    #           repository: "Repository", # required
    #           branch: "RepositoryBranch", # required
    #           artifact_path: "RepositoryArtifactPath", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_detail.product_view_summary.id #=> String
    #   resp.product_view_detail.product_view_summary.product_id #=> String
    #   resp.product_view_detail.product_view_summary.name #=> String
    #   resp.product_view_detail.product_view_summary.owner #=> String
    #   resp.product_view_detail.product_view_summary.short_description #=> String
    #   resp.product_view_detail.product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.product_view_detail.product_view_summary.distributor #=> String
    #   resp.product_view_detail.product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_detail.product_view_summary.support_email #=> String
    #   resp.product_view_detail.product_view_summary.support_description #=> String
    #   resp.product_view_detail.product_view_summary.support_url #=> String
    #   resp.product_view_detail.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #   resp.product_view_detail.product_arn #=> String
    #   resp.product_view_detail.created_time #=> Time
    #   resp.product_view_detail.source_connection.type #=> String, one of "CODESTAR"
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.connection_arn #=> String
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.repository #=> String
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.branch #=> String
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.artifact_path #=> String
    #   resp.product_view_detail.source_connection.last_sync.last_sync_time #=> Time
    #   resp.product_view_detail.source_connection.last_sync.last_sync_status #=> String, one of "SUCCEEDED", "FAILED"
    #   resp.product_view_detail.source_connection.last_sync.last_sync_status_message #=> String
    #   resp.product_view_detail.source_connection.last_sync.last_successful_sync_time #=> Time
    #   resp.product_view_detail.source_connection.last_sync.last_successful_sync_provisioning_artifact_id #=> String
    #   resp.provisioning_artifact_detail.id #=> String
    #   resp.provisioning_artifact_detail.name #=> String
    #   resp.provisioning_artifact_detail.description #=> String
    #   resp.provisioning_artifact_detail.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.provisioning_artifact_detail.created_time #=> Time
    #   resp.provisioning_artifact_detail.active #=> Boolean
    #   resp.provisioning_artifact_detail.guidance #=> String, one of "DEFAULT", "DEPRECATED"
    #   resp.provisioning_artifact_detail.source_revision #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProduct AWS API Documentation
    #
    # @overload create_product(params = {})
    # @param [Hash] params ({})
    def create_product(params = {}, options = {})
      req = build_request(:create_product, params)
      req.send_request(options)
    end

    # Creates a plan.
    #
    # A plan includes the list of resources to be created (when provisioning
    # a new product) or modified (when updating a provisioned product) when
    # the plan is executed.
    #
    # You can create one plan for each provisioned product. To create a plan
    # for an existing provisioned product, the product status must be
    # AVAILABLE or TAINTED.
    #
    # To view the resource changes in the change set, use
    # DescribeProvisionedProductPlan. To create or modify the provisioned
    # product, use ExecuteProvisionedProductPlan.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :plan_name
    #   The name of the plan.
    #
    # @option params [required, String] :plan_type
    #   The plan type.
    #
    # @option params [Array<String>] :notification_arns
    #   Passed to CloudFormation. The SNS topic ARNs to which to publish
    #   stack-related events.
    #
    # @option params [String] :path_id
    #   The path identifier of the product. This value is optional if the
    #   product has a default path, and required if the product has more than
    #   one path. To list the paths for a product, use ListLaunchPaths.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioned_product_name
    #   A user-friendly name for the provisioned product. This value must be
    #   unique for the Amazon Web Services account and cannot be updated after
    #   the product is provisioned.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [Array<Types::UpdateProvisioningParameter>] :provisioning_parameters
    #   Parameters specified by the administrator that are required for
    #   provisioning the product.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    #   If the plan is for an existing provisioned product, the product must
    #   have a `RESOURCE_UPDATE` constraint with
    #   `TagUpdatesOnProvisionedProduct` set to `ALLOWED` to allow tag
    #   updates.
    #
    # @return [Types::CreateProvisionedProductPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProvisionedProductPlanOutput#plan_name #plan_name} => String
    #   * {Types::CreateProvisionedProductPlanOutput#plan_id #plan_id} => String
    #   * {Types::CreateProvisionedProductPlanOutput#provision_product_id #provision_product_id} => String
    #   * {Types::CreateProvisionedProductPlanOutput#provisioned_product_name #provisioned_product_name} => String
    #   * {Types::CreateProvisionedProductPlanOutput#provisioning_artifact_id #provisioning_artifact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioned_product_plan({
    #     accept_language: "AcceptLanguage",
    #     plan_name: "ProvisionedProductPlanName", # required
    #     plan_type: "CLOUDFORMATION", # required, accepts CLOUDFORMATION
    #     notification_arns: ["NotificationArn"],
    #     path_id: "Id",
    #     product_id: "Id", # required
    #     provisioned_product_name: "ProvisionedProductName", # required
    #     provisioning_artifact_id: "Id", # required
    #     provisioning_parameters: [
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue",
    #         use_previous_value: false,
    #       },
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
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
    #   resp.plan_name #=> String
    #   resp.plan_id #=> String
    #   resp.provision_product_id #=> String
    #   resp.provisioned_product_name #=> String
    #   resp.provisioning_artifact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProvisionedProductPlan AWS API Documentation
    #
    # @overload create_provisioned_product_plan(params = {})
    # @param [Hash] params ({})
    def create_provisioned_product_plan(params = {}, options = {})
      req = build_request(:create_provisioned_product_plan, params)
      req.send_request(options)
    end

    # Creates a provisioning artifact (also known as a version) for the
    # specified product.
    #
    # You cannot create a provisioning artifact for a product that was
    # shared with you.
    #
    # The user or role that performs this operation must have the
    # `cloudformation:GetTemplate` IAM policy permission. This policy
    # permission is required when using the `ImportFromPhysicalId` template
    # source in the information data section.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, Types::ProvisioningArtifactProperties] :parameters
    #   The configuration for the provisioning artifact.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateProvisioningArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProvisioningArtifactOutput#provisioning_artifact_detail #provisioning_artifact_detail} => Types::ProvisioningArtifactDetail
    #   * {Types::CreateProvisioningArtifactOutput#info #info} => Hash&lt;String,String&gt;
    #   * {Types::CreateProvisioningArtifactOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioning_artifact({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     parameters: { # required
    #       name: "ProvisioningArtifactName",
    #       description: "ProvisioningArtifactDescription",
    #       info: {
    #         "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue",
    #       },
    #       type: "CLOUD_FORMATION_TEMPLATE", # accepts CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR, TERRAFORM_OPEN_SOURCE, TERRAFORM_CLOUD, EXTERNAL
    #       disable_template_validation: false,
    #     },
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_detail.id #=> String
    #   resp.provisioning_artifact_detail.name #=> String
    #   resp.provisioning_artifact_detail.description #=> String
    #   resp.provisioning_artifact_detail.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.provisioning_artifact_detail.created_time #=> Time
    #   resp.provisioning_artifact_detail.active #=> Boolean
    #   resp.provisioning_artifact_detail.guidance #=> String, one of "DEFAULT", "DEPRECATED"
    #   resp.provisioning_artifact_detail.source_revision #=> String
    #   resp.info #=> Hash
    #   resp.info["ProvisioningArtifactInfoKey"] #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProvisioningArtifact AWS API Documentation
    #
    # @overload create_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def create_provisioning_artifact(params = {}, options = {})
      req = build_request(:create_provisioning_artifact, params)
      req.send_request(options)
    end

    # Creates a self-service action.
    #
    # @option params [required, String] :name
    #   The self-service action name.
    #
    # @option params [required, String] :definition_type
    #   The service action definition type. For example, `SSM_AUTOMATION`.
    #
    # @option params [required, Hash<String,String>] :definition
    #   The self-service action definition. Can be one of the following:
    #
    #   Name
    #
    #   : The name of the Amazon Web Services Systems Manager document (SSM
    #     document). For example, `AWS-RestartEC2Instance`.
    #
    #     If you are using a shared SSM document, you must provide the ARN
    #     instead of the name.
    #
    #   Version
    #
    #   : The Amazon Web Services Systems Manager automation document version.
    #     For example, `"Version": "1"`
    #
    #   AssumeRole
    #
    #   : The Amazon Resource Name (ARN) of the role that performs the
    #     self-service actions on your behalf. For example, `"AssumeRole":
    #     "arn:aws:iam::12345678910:role/ActionRole"`.
    #
    #     To reuse the provisioned product launch role, set to `"AssumeRole":
    #     "LAUNCH_ROLE"`.
    #
    #   Parameters
    #
    #   : The list of parameters in JSON format.
    #
    #     For example: `[{"Name":"InstanceId","Type":"TARGET"}]` or
    #     `[{"Name":"InstanceId","Type":"TEXT_VALUE"}]`.
    #
    # @option params [String] :description
    #   The self-service action description.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateServiceActionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceActionOutput#service_action_detail #service_action_detail} => Types::ServiceActionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_action({
    #     name: "ServiceActionName", # required
    #     definition_type: "SSM_AUTOMATION", # required, accepts SSM_AUTOMATION
    #     definition: { # required
    #       "Name" => "ServiceActionDefinitionValue",
    #     },
    #     description: "ServiceActionDescription",
    #     accept_language: "AcceptLanguage",
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_action_detail.service_action_summary.id #=> String
    #   resp.service_action_detail.service_action_summary.name #=> String
    #   resp.service_action_detail.service_action_summary.description #=> String
    #   resp.service_action_detail.service_action_summary.definition_type #=> String, one of "SSM_AUTOMATION"
    #   resp.service_action_detail.definition #=> Hash
    #   resp.service_action_detail.definition["ServiceActionDefinitionKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateServiceAction AWS API Documentation
    #
    # @overload create_service_action(params = {})
    # @param [Hash] params ({})
    def create_service_action(params = {}, options = {})
      req = build_request(:create_service_action, params)
      req.send_request(options)
    end

    # Creates a TagOption.
    #
    # @option params [required, String] :key
    #   The TagOption key.
    #
    # @option params [required, String] :value
    #   The TagOption value.
    #
    # @return [Types::CreateTagOptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTagOptionOutput#tag_option_detail #tag_option_detail} => Types::TagOptionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tag_option({
    #     key: "TagOptionKey", # required
    #     value: "TagOptionValue", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_option_detail.key #=> String
    #   resp.tag_option_detail.value #=> String
    #   resp.tag_option_detail.active #=> Boolean
    #   resp.tag_option_detail.id #=> String
    #   resp.tag_option_detail.owner #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateTagOption AWS API Documentation
    #
    # @overload create_tag_option(params = {})
    # @param [Hash] params ({})
    def create_tag_option(params = {}, options = {})
      req = build_request(:create_tag_option, params)
      req.send_request(options)
    end

    # Deletes the specified constraint.
    #
    # A delegated admin is authorized to invoke this command.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The identifier of the constraint.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_constraint({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteConstraint AWS API Documentation
    #
    # @overload delete_constraint(params = {})
    # @param [Hash] params ({})
    def delete_constraint(params = {}, options = {})
      req = build_request(:delete_constraint, params)
      req.send_request(options)
    end

    # Deletes the specified portfolio.
    #
    # You cannot delete a portfolio if it was shared with you or if it has
    # associated products, users, constraints, or shared accounts.
    #
    # A delegated admin is authorized to invoke this command.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The portfolio identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portfolio({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolio AWS API Documentation
    #
    # @overload delete_portfolio(params = {})
    # @param [Hash] params ({})
    def delete_portfolio(params = {}, options = {})
      req = build_request(:delete_portfolio, params)
      req.send_request(options)
    end

    # Stops sharing the specified portfolio with the specified account or
    # organization node. Shares to an organization node can only be deleted
    # by the management account of an organization or by a delegated
    # administrator.
    #
    # Note that if a delegated admin is de-registered, portfolio shares
    # created from that account are removed.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID.
    #
    # @option params [Types::OrganizationNode] :organization_node
    #   The organization node to whom you are going to stop sharing.
    #
    # @return [Types::DeletePortfolioShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePortfolioShareOutput#portfolio_share_token #portfolio_share_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portfolio_share({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     account_id: "AccountId",
    #     organization_node: {
    #       type: "ORGANIZATION", # accepts ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT
    #       value: "OrganizationNodeValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_share_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolioShare AWS API Documentation
    #
    # @overload delete_portfolio_share(params = {})
    # @param [Hash] params ({})
    def delete_portfolio_share(params = {}, options = {})
      req = build_request(:delete_portfolio_share, params)
      req.send_request(options)
    end

    # Deletes the specified product.
    #
    # You cannot delete a product if it was shared with you or is associated
    # with a portfolio.
    #
    # A delegated admin is authorized to invoke this command.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The product identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_product({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProduct AWS API Documentation
    #
    # @overload delete_product(params = {})
    # @param [Hash] params ({})
    def delete_product(params = {}, options = {})
      req = build_request(:delete_product, params)
      req.send_request(options)
    end

    # Deletes the specified plan.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :plan_id
    #   The plan identifier.
    #
    # @option params [Boolean] :ignore_errors
    #   If set to true, Service Catalog stops managing the specified
    #   provisioned product even if it cannot delete the underlying resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioned_product_plan({
    #     accept_language: "AcceptLanguage",
    #     plan_id: "Id", # required
    #     ignore_errors: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProvisionedProductPlan AWS API Documentation
    #
    # @overload delete_provisioned_product_plan(params = {})
    # @param [Hash] params ({})
    def delete_provisioned_product_plan(params = {}, options = {})
      req = build_request(:delete_provisioned_product_plan, params)
      req.send_request(options)
    end

    # Deletes the specified provisioning artifact (also known as a version)
    # for the specified product.
    #
    # You cannot delete a provisioning artifact associated with a product
    # that was shared with you. You cannot delete the last provisioning
    # artifact for a product, because a product must have at least one
    # provisioning artifact.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioning_artifact({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProvisioningArtifact AWS API Documentation
    #
    # @overload delete_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def delete_provisioning_artifact(params = {}, options = {})
      req = build_request(:delete_provisioning_artifact, params)
      req.send_request(options)
    end

    # Deletes a self-service action.
    #
    # @option params [required, String] :id
    #   The self-service action identifier. For example, `act-fs7abcd89wxyz`.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests from the same Amazon Web Services account use the
    #   same idempotency token, the same response is returned for each
    #   repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_action({
    #     id: "Id", # required
    #     accept_language: "AcceptLanguage",
    #     idempotency_token: "IdempotencyToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteServiceAction AWS API Documentation
    #
    # @overload delete_service_action(params = {})
    # @param [Hash] params ({})
    def delete_service_action(params = {}, options = {})
      req = build_request(:delete_service_action, params)
      req.send_request(options)
    end

    # Deletes the specified TagOption.
    #
    # You cannot delete a TagOption if it is associated with a product or
    # portfolio.
    #
    # @option params [required, String] :id
    #   The TagOption identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tag_option({
    #     id: "TagOptionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteTagOption AWS API Documentation
    #
    # @overload delete_tag_option(params = {})
    # @param [Hash] params ({})
    def delete_tag_option(params = {}, options = {})
      req = build_request(:delete_tag_option, params)
      req.send_request(options)
    end

    # Gets information about the specified constraint.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The identifier of the constraint.
    #
    # @return [Types::DescribeConstraintOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConstraintOutput#constraint_detail #constraint_detail} => Types::ConstraintDetail
    #   * {Types::DescribeConstraintOutput#constraint_parameters #constraint_parameters} => String
    #   * {Types::DescribeConstraintOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_constraint({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.constraint_detail.constraint_id #=> String
    #   resp.constraint_detail.type #=> String
    #   resp.constraint_detail.description #=> String
    #   resp.constraint_detail.owner #=> String
    #   resp.constraint_detail.product_id #=> String
    #   resp.constraint_detail.portfolio_id #=> String
    #   resp.constraint_parameters #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeConstraint AWS API Documentation
    #
    # @overload describe_constraint(params = {})
    # @param [Hash] params ({})
    def describe_constraint(params = {}, options = {})
      req = build_request(:describe_constraint, params)
      req.send_request(options)
    end

    # Gets the status of the specified copy product operation.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :copy_product_token
    #   The token for the copy product operation. This token is returned by
    #   CopyProduct.
    #
    # @return [Types::DescribeCopyProductStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCopyProductStatusOutput#copy_product_status #copy_product_status} => String
    #   * {Types::DescribeCopyProductStatusOutput#target_product_id #target_product_id} => String
    #   * {Types::DescribeCopyProductStatusOutput#status_detail #status_detail} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_copy_product_status({
    #     accept_language: "AcceptLanguage",
    #     copy_product_token: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.copy_product_status #=> String, one of "SUCCEEDED", "IN_PROGRESS", "FAILED"
    #   resp.target_product_id #=> String
    #   resp.status_detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeCopyProductStatus AWS API Documentation
    #
    # @overload describe_copy_product_status(params = {})
    # @param [Hash] params ({})
    def describe_copy_product_status(params = {}, options = {})
      req = build_request(:describe_copy_product_status, params)
      req.send_request(options)
    end

    # Gets information about the specified portfolio.
    #
    # A delegated admin is authorized to invoke this command.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The portfolio identifier.
    #
    # @return [Types::DescribePortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePortfolioOutput#portfolio_detail #portfolio_detail} => Types::PortfolioDetail
    #   * {Types::DescribePortfolioOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribePortfolioOutput#tag_options #tag_options} => Array&lt;Types::TagOptionDetail&gt;
    #   * {Types::DescribePortfolioOutput#budgets #budgets} => Array&lt;Types::BudgetDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_portfolio({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_detail.id #=> String
    #   resp.portfolio_detail.arn #=> String
    #   resp.portfolio_detail.display_name #=> String
    #   resp.portfolio_detail.description #=> String
    #   resp.portfolio_detail.created_time #=> Time
    #   resp.portfolio_detail.provider_name #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.tag_options #=> Array
    #   resp.tag_options[0].key #=> String
    #   resp.tag_options[0].value #=> String
    #   resp.tag_options[0].active #=> Boolean
    #   resp.tag_options[0].id #=> String
    #   resp.tag_options[0].owner #=> String
    #   resp.budgets #=> Array
    #   resp.budgets[0].budget_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolio AWS API Documentation
    #
    # @overload describe_portfolio(params = {})
    # @param [Hash] params ({})
    def describe_portfolio(params = {}, options = {})
      req = build_request(:describe_portfolio, params)
      req.send_request(options)
    end

    # Gets the status of the specified portfolio share operation. This API
    # can only be called by the management account in the organization or by
    # a delegated admin.
    #
    # @option params [required, String] :portfolio_share_token
    #   The token for the portfolio share operation. This token is returned
    #   either by CreatePortfolioShare or by DeletePortfolioShare.
    #
    # @return [Types::DescribePortfolioShareStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePortfolioShareStatusOutput#portfolio_share_token #portfolio_share_token} => String
    #   * {Types::DescribePortfolioShareStatusOutput#portfolio_id #portfolio_id} => String
    #   * {Types::DescribePortfolioShareStatusOutput#organization_node_value #organization_node_value} => String
    #   * {Types::DescribePortfolioShareStatusOutput#status #status} => String
    #   * {Types::DescribePortfolioShareStatusOutput#share_details #share_details} => Types::ShareDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_portfolio_share_status({
    #     portfolio_share_token: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_share_token #=> String
    #   resp.portfolio_id #=> String
    #   resp.organization_node_value #=> String
    #   resp.status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "ERROR"
    #   resp.share_details.successful_shares #=> Array
    #   resp.share_details.successful_shares[0] #=> String
    #   resp.share_details.share_errors #=> Array
    #   resp.share_details.share_errors[0].accounts #=> Array
    #   resp.share_details.share_errors[0].accounts[0] #=> String
    #   resp.share_details.share_errors[0].message #=> String
    #   resp.share_details.share_errors[0].error #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolioShareStatus AWS API Documentation
    #
    # @overload describe_portfolio_share_status(params = {})
    # @param [Hash] params ({})
    def describe_portfolio_share_status(params = {}, options = {})
      req = build_request(:describe_portfolio_share_status, params)
      req.send_request(options)
    end

    # Returns a summary of each of the portfolio shares that were created
    # for the specified portfolio.
    #
    # You can use this API to determine which accounts or organizational
    # nodes this portfolio have been shared, whether the recipient entity
    # has imported the share, and whether TagOptions are included with the
    # share.
    #
    # The `PortfolioId` and `Type` parameters are both required.
    #
    # @option params [required, String] :portfolio_id
    #   The unique identifier of the portfolio for which shares will be
    #   retrieved.
    #
    # @option params [required, String] :type
    #   The type of portfolio share to summarize. This field acts as a filter
    #   on the type of portfolio share, which can be one of the following:
    #
    #   1\. `ACCOUNT` - Represents an external account to account share.
    #
    #   2\. `ORGANIZATION` - Represents a share to an organization. This share
    #   is available to every account in the organization.
    #
    #   3\. `ORGANIZATIONAL_UNIT` - Represents a share to an organizational
    #   unit.
    #
    #   4\. `ORGANIZATION_MEMBER_ACCOUNT` - Represents a share to an account in
    #   the organization.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @return [Types::DescribePortfolioSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePortfolioSharesOutput#next_page_token #next_page_token} => String
    #   * {Types::DescribePortfolioSharesOutput#portfolio_share_details #portfolio_share_details} => Array&lt;Types::PortfolioShareDetail&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_portfolio_shares({
    #     portfolio_id: "Id", # required
    #     type: "ACCOUNT", # required, accepts ACCOUNT, ORGANIZATION, ORGANIZATIONAL_UNIT, ORGANIZATION_MEMBER_ACCOUNT
    #     page_token: "PageToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_page_token #=> String
    #   resp.portfolio_share_details #=> Array
    #   resp.portfolio_share_details[0].principal_id #=> String
    #   resp.portfolio_share_details[0].type #=> String, one of "ACCOUNT", "ORGANIZATION", "ORGANIZATIONAL_UNIT", "ORGANIZATION_MEMBER_ACCOUNT"
    #   resp.portfolio_share_details[0].accepted #=> Boolean
    #   resp.portfolio_share_details[0].share_tag_options #=> Boolean
    #   resp.portfolio_share_details[0].share_principals #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolioShares AWS API Documentation
    #
    # @overload describe_portfolio_shares(params = {})
    # @param [Hash] params ({})
    def describe_portfolio_shares(params = {}, options = {})
      req = build_request(:describe_portfolio_shares, params)
      req.send_request(options)
    end

    # Gets information about the specified product.
    #
    # <note markdown="1"> Running this operation with administrator access results in a failure.
    # DescribeProductAsAdmin should be used instead.
    #
    #  </note>
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :id
    #   The product identifier.
    #
    # @option params [String] :name
    #   The product name.
    #
    # @return [Types::DescribeProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProductOutput#product_view_summary #product_view_summary} => Types::ProductViewSummary
    #   * {Types::DescribeProductOutput#provisioning_artifacts #provisioning_artifacts} => Array&lt;Types::ProvisioningArtifact&gt;
    #   * {Types::DescribeProductOutput#budgets #budgets} => Array&lt;Types::BudgetDetail&gt;
    #   * {Types::DescribeProductOutput#launch_paths #launch_paths} => Array&lt;Types::LaunchPath&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_product({
    #     accept_language: "AcceptLanguage",
    #     id: "Id",
    #     name: "ProductViewName",
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_summary.id #=> String
    #   resp.product_view_summary.product_id #=> String
    #   resp.product_view_summary.name #=> String
    #   resp.product_view_summary.owner #=> String
    #   resp.product_view_summary.short_description #=> String
    #   resp.product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.product_view_summary.distributor #=> String
    #   resp.product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_summary.support_email #=> String
    #   resp.product_view_summary.support_description #=> String
    #   resp.product_view_summary.support_url #=> String
    #   resp.provisioning_artifacts #=> Array
    #   resp.provisioning_artifacts[0].id #=> String
    #   resp.provisioning_artifacts[0].name #=> String
    #   resp.provisioning_artifacts[0].description #=> String
    #   resp.provisioning_artifacts[0].created_time #=> Time
    #   resp.provisioning_artifacts[0].guidance #=> String, one of "DEFAULT", "DEPRECATED"
    #   resp.budgets #=> Array
    #   resp.budgets[0].budget_name #=> String
    #   resp.launch_paths #=> Array
    #   resp.launch_paths[0].id #=> String
    #   resp.launch_paths[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProduct AWS API Documentation
    #
    # @overload describe_product(params = {})
    # @param [Hash] params ({})
    def describe_product(params = {}, options = {})
      req = build_request(:describe_product, params)
      req.send_request(options)
    end

    # Gets information about the specified product. This operation is run
    # with administrator access.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :id
    #   The product identifier.
    #
    # @option params [String] :name
    #   The product name.
    #
    # @option params [String] :source_portfolio_id
    #   The unique identifier of the shared portfolio that the specified
    #   product is associated with.
    #
    #   You can provide this parameter to retrieve the shared TagOptions
    #   associated with the product. If this parameter is provided and if
    #   TagOptions sharing is enabled in the portfolio share, the API returns
    #   both local and shared TagOptions associated with the product.
    #   Otherwise only local TagOptions will be returned.
    #
    # @return [Types::DescribeProductAsAdminOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProductAsAdminOutput#product_view_detail #product_view_detail} => Types::ProductViewDetail
    #   * {Types::DescribeProductAsAdminOutput#provisioning_artifact_summaries #provisioning_artifact_summaries} => Array&lt;Types::ProvisioningArtifactSummary&gt;
    #   * {Types::DescribeProductAsAdminOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeProductAsAdminOutput#tag_options #tag_options} => Array&lt;Types::TagOptionDetail&gt;
    #   * {Types::DescribeProductAsAdminOutput#budgets #budgets} => Array&lt;Types::BudgetDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_product_as_admin({
    #     accept_language: "AcceptLanguage",
    #     id: "Id",
    #     name: "ProductViewName",
    #     source_portfolio_id: "Id",
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_detail.product_view_summary.id #=> String
    #   resp.product_view_detail.product_view_summary.product_id #=> String
    #   resp.product_view_detail.product_view_summary.name #=> String
    #   resp.product_view_detail.product_view_summary.owner #=> String
    #   resp.product_view_detail.product_view_summary.short_description #=> String
    #   resp.product_view_detail.product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.product_view_detail.product_view_summary.distributor #=> String
    #   resp.product_view_detail.product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_detail.product_view_summary.support_email #=> String
    #   resp.product_view_detail.product_view_summary.support_description #=> String
    #   resp.product_view_detail.product_view_summary.support_url #=> String
    #   resp.product_view_detail.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #   resp.product_view_detail.product_arn #=> String
    #   resp.product_view_detail.created_time #=> Time
    #   resp.product_view_detail.source_connection.type #=> String, one of "CODESTAR"
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.connection_arn #=> String
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.repository #=> String
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.branch #=> String
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.artifact_path #=> String
    #   resp.product_view_detail.source_connection.last_sync.last_sync_time #=> Time
    #   resp.product_view_detail.source_connection.last_sync.last_sync_status #=> String, one of "SUCCEEDED", "FAILED"
    #   resp.product_view_detail.source_connection.last_sync.last_sync_status_message #=> String
    #   resp.product_view_detail.source_connection.last_sync.last_successful_sync_time #=> Time
    #   resp.product_view_detail.source_connection.last_sync.last_successful_sync_provisioning_artifact_id #=> String
    #   resp.provisioning_artifact_summaries #=> Array
    #   resp.provisioning_artifact_summaries[0].id #=> String
    #   resp.provisioning_artifact_summaries[0].name #=> String
    #   resp.provisioning_artifact_summaries[0].description #=> String
    #   resp.provisioning_artifact_summaries[0].created_time #=> Time
    #   resp.provisioning_artifact_summaries[0].provisioning_artifact_metadata #=> Hash
    #   resp.provisioning_artifact_summaries[0].provisioning_artifact_metadata["ProvisioningArtifactInfoKey"] #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.tag_options #=> Array
    #   resp.tag_options[0].key #=> String
    #   resp.tag_options[0].value #=> String
    #   resp.tag_options[0].active #=> Boolean
    #   resp.tag_options[0].id #=> String
    #   resp.tag_options[0].owner #=> String
    #   resp.budgets #=> Array
    #   resp.budgets[0].budget_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductAsAdmin AWS API Documentation
    #
    # @overload describe_product_as_admin(params = {})
    # @param [Hash] params ({})
    def describe_product_as_admin(params = {}, options = {})
      req = build_request(:describe_product_as_admin, params)
      req.send_request(options)
    end

    # Gets information about the specified product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The product view identifier.
    #
    # @return [Types::DescribeProductViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProductViewOutput#product_view_summary #product_view_summary} => Types::ProductViewSummary
    #   * {Types::DescribeProductViewOutput#provisioning_artifacts #provisioning_artifacts} => Array&lt;Types::ProvisioningArtifact&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_product_view({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_summary.id #=> String
    #   resp.product_view_summary.product_id #=> String
    #   resp.product_view_summary.name #=> String
    #   resp.product_view_summary.owner #=> String
    #   resp.product_view_summary.short_description #=> String
    #   resp.product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.product_view_summary.distributor #=> String
    #   resp.product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_summary.support_email #=> String
    #   resp.product_view_summary.support_description #=> String
    #   resp.product_view_summary.support_url #=> String
    #   resp.provisioning_artifacts #=> Array
    #   resp.provisioning_artifacts[0].id #=> String
    #   resp.provisioning_artifacts[0].name #=> String
    #   resp.provisioning_artifacts[0].description #=> String
    #   resp.provisioning_artifacts[0].created_time #=> Time
    #   resp.provisioning_artifacts[0].guidance #=> String, one of "DEFAULT", "DEPRECATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductView AWS API Documentation
    #
    # @overload describe_product_view(params = {})
    # @param [Hash] params ({})
    def describe_product_view(params = {}, options = {})
      req = build_request(:describe_product_view, params)
      req.send_request(options)
    end

    # Gets information about the specified provisioned product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :id
    #   The provisioned product identifier. You must provide the name or ID,
    #   but not both.
    #
    #   If you do not provide a name or ID, or you provide both name and ID,
    #   an `InvalidParametersException` will occur.
    #
    # @option params [String] :name
    #   The name of the provisioned product. You must provide the name or ID,
    #   but not both.
    #
    #   If you do not provide a name or ID, or you provide both name and ID,
    #   an `InvalidParametersException` will occur.
    #
    # @return [Types::DescribeProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisionedProductOutput#provisioned_product_detail #provisioned_product_detail} => Types::ProvisionedProductDetail
    #   * {Types::DescribeProvisionedProductOutput#cloud_watch_dashboards #cloud_watch_dashboards} => Array&lt;Types::CloudWatchDashboard&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioned_product({
    #     accept_language: "AcceptLanguage",
    #     id: "Id",
    #     name: "ProvisionedProductName",
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_product_detail.name #=> String
    #   resp.provisioned_product_detail.arn #=> String
    #   resp.provisioned_product_detail.type #=> String
    #   resp.provisioned_product_detail.id #=> String
    #   resp.provisioned_product_detail.status #=> String, one of "AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"
    #   resp.provisioned_product_detail.status_message #=> String
    #   resp.provisioned_product_detail.created_time #=> Time
    #   resp.provisioned_product_detail.idempotency_token #=> String
    #   resp.provisioned_product_detail.last_record_id #=> String
    #   resp.provisioned_product_detail.last_provisioning_record_id #=> String
    #   resp.provisioned_product_detail.last_successful_provisioning_record_id #=> String
    #   resp.provisioned_product_detail.product_id #=> String
    #   resp.provisioned_product_detail.provisioning_artifact_id #=> String
    #   resp.provisioned_product_detail.launch_role_arn #=> String
    #   resp.cloud_watch_dashboards #=> Array
    #   resp.cloud_watch_dashboards[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProduct AWS API Documentation
    #
    # @overload describe_provisioned_product(params = {})
    # @param [Hash] params ({})
    def describe_provisioned_product(params = {}, options = {})
      req = build_request(:describe_provisioned_product, params)
      req.send_request(options)
    end

    # Gets information about the resource changes for the specified plan.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :plan_id
    #   The plan identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::DescribeProvisionedProductPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisionedProductPlanOutput#provisioned_product_plan_details #provisioned_product_plan_details} => Types::ProvisionedProductPlanDetails
    #   * {Types::DescribeProvisionedProductPlanOutput#resource_changes #resource_changes} => Array&lt;Types::ResourceChange&gt;
    #   * {Types::DescribeProvisionedProductPlanOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioned_product_plan({
    #     accept_language: "AcceptLanguage",
    #     plan_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_product_plan_details.created_time #=> Time
    #   resp.provisioned_product_plan_details.path_id #=> String
    #   resp.provisioned_product_plan_details.product_id #=> String
    #   resp.provisioned_product_plan_details.plan_name #=> String
    #   resp.provisioned_product_plan_details.plan_id #=> String
    #   resp.provisioned_product_plan_details.provision_product_id #=> String
    #   resp.provisioned_product_plan_details.provision_product_name #=> String
    #   resp.provisioned_product_plan_details.plan_type #=> String, one of "CLOUDFORMATION"
    #   resp.provisioned_product_plan_details.provisioning_artifact_id #=> String
    #   resp.provisioned_product_plan_details.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCESS", "CREATE_FAILED", "EXECUTE_IN_PROGRESS", "EXECUTE_SUCCESS", "EXECUTE_FAILED"
    #   resp.provisioned_product_plan_details.updated_time #=> Time
    #   resp.provisioned_product_plan_details.notification_arns #=> Array
    #   resp.provisioned_product_plan_details.notification_arns[0] #=> String
    #   resp.provisioned_product_plan_details.provisioning_parameters #=> Array
    #   resp.provisioned_product_plan_details.provisioning_parameters[0].key #=> String
    #   resp.provisioned_product_plan_details.provisioning_parameters[0].value #=> String
    #   resp.provisioned_product_plan_details.provisioning_parameters[0].use_previous_value #=> Boolean
    #   resp.provisioned_product_plan_details.tags #=> Array
    #   resp.provisioned_product_plan_details.tags[0].key #=> String
    #   resp.provisioned_product_plan_details.tags[0].value #=> String
    #   resp.provisioned_product_plan_details.status_message #=> String
    #   resp.resource_changes #=> Array
    #   resp.resource_changes[0].action #=> String, one of "ADD", "MODIFY", "REMOVE"
    #   resp.resource_changes[0].logical_resource_id #=> String
    #   resp.resource_changes[0].physical_resource_id #=> String
    #   resp.resource_changes[0].resource_type #=> String
    #   resp.resource_changes[0].replacement #=> String, one of "TRUE", "FALSE", "CONDITIONAL"
    #   resp.resource_changes[0].scope #=> Array
    #   resp.resource_changes[0].scope[0] #=> String, one of "PROPERTIES", "METADATA", "CREATIONPOLICY", "UPDATEPOLICY", "DELETIONPOLICY", "TAGS"
    #   resp.resource_changes[0].details #=> Array
    #   resp.resource_changes[0].details[0].target.attribute #=> String, one of "PROPERTIES", "METADATA", "CREATIONPOLICY", "UPDATEPOLICY", "DELETIONPOLICY", "TAGS"
    #   resp.resource_changes[0].details[0].target.name #=> String
    #   resp.resource_changes[0].details[0].target.requires_recreation #=> String, one of "NEVER", "CONDITIONALLY", "ALWAYS"
    #   resp.resource_changes[0].details[0].evaluation #=> String, one of "STATIC", "DYNAMIC"
    #   resp.resource_changes[0].details[0].causing_entity #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProductPlan AWS API Documentation
    #
    # @overload describe_provisioned_product_plan(params = {})
    # @param [Hash] params ({})
    def describe_provisioned_product_plan(params = {}, options = {})
      req = build_request(:describe_provisioned_product_plan, params)
      req.send_request(options)
    end

    # Gets information about the specified provisioning artifact (also known
    # as a version) for the specified product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [String] :product_id
    #   The product identifier.
    #
    # @option params [String] :provisioning_artifact_name
    #   The provisioning artifact name.
    #
    # @option params [String] :product_name
    #   The product name.
    #
    # @option params [Boolean] :verbose
    #   Indicates whether a verbose level of detail is enabled.
    #
    # @option params [Boolean] :include_provisioning_artifact_parameters
    #   Indicates if the API call response does or does not include additional
    #   details about the provisioning parameters.
    #
    # @return [Types::DescribeProvisioningArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisioningArtifactOutput#provisioning_artifact_detail #provisioning_artifact_detail} => Types::ProvisioningArtifactDetail
    #   * {Types::DescribeProvisioningArtifactOutput#info #info} => Hash&lt;String,String&gt;
    #   * {Types::DescribeProvisioningArtifactOutput#status #status} => String
    #   * {Types::DescribeProvisioningArtifactOutput#provisioning_artifact_parameters #provisioning_artifact_parameters} => Array&lt;Types::ProvisioningArtifactParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioning_artifact({
    #     accept_language: "AcceptLanguage",
    #     provisioning_artifact_id: "Id",
    #     product_id: "Id",
    #     provisioning_artifact_name: "ProvisioningArtifactName",
    #     product_name: "ProductViewName",
    #     verbose: false,
    #     include_provisioning_artifact_parameters: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_detail.id #=> String
    #   resp.provisioning_artifact_detail.name #=> String
    #   resp.provisioning_artifact_detail.description #=> String
    #   resp.provisioning_artifact_detail.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.provisioning_artifact_detail.created_time #=> Time
    #   resp.provisioning_artifact_detail.active #=> Boolean
    #   resp.provisioning_artifact_detail.guidance #=> String, one of "DEFAULT", "DEPRECATED"
    #   resp.provisioning_artifact_detail.source_revision #=> String
    #   resp.info #=> Hash
    #   resp.info["ProvisioningArtifactInfoKey"] #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #   resp.provisioning_artifact_parameters #=> Array
    #   resp.provisioning_artifact_parameters[0].parameter_key #=> String
    #   resp.provisioning_artifact_parameters[0].default_value #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_type #=> String
    #   resp.provisioning_artifact_parameters[0].is_no_echo #=> Boolean
    #   resp.provisioning_artifact_parameters[0].description #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.allowed_values #=> Array
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.allowed_values[0] #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.allowed_pattern #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.constraint_description #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.max_length #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.min_length #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.max_value #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.min_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningArtifact AWS API Documentation
    #
    # @overload describe_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def describe_provisioning_artifact(params = {}, options = {})
      req = build_request(:describe_provisioning_artifact, params)
      req.send_request(options)
    end

    # Gets information about the configuration required to provision the
    # specified product using the specified provisioning artifact.
    #
    # If the output contains a TagOption key with an empty list of values,
    # there is a TagOption conflict for that key. The end user cannot take
    # action to fix the conflict, and launch is not blocked. In subsequent
    # calls to ProvisionProduct, do not include conflicted TagOption keys as
    # tags, or this causes the error "Parameter validation failed: Missing
    # required parameter in Tags\[*N*\]:*Value*". Tag the provisioned
    # product with the value `sc-tagoption-conflict-portfolioId-productId`.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :product_id
    #   The product identifier. You must provide the product name or ID, but
    #   not both.
    #
    # @option params [String] :product_name
    #   The name of the product. You must provide the name or ID, but not
    #   both.
    #
    # @option params [String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact. You must provide the name
    #   or ID, but not both.
    #
    # @option params [String] :provisioning_artifact_name
    #   The name of the provisioning artifact. You must provide the name or
    #   ID, but not both.
    #
    # @option params [String] :path_id
    #   The path identifier of the product. This value is optional if the
    #   product has a default path, and required if the product has more than
    #   one path. To list the paths for a product, use ListLaunchPaths. You
    #   must provide the name or ID, but not both.
    #
    # @option params [String] :path_name
    #   The name of the path. You must provide the name or ID, but not both.
    #
    # @return [Types::DescribeProvisioningParametersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisioningParametersOutput#provisioning_artifact_parameters #provisioning_artifact_parameters} => Array&lt;Types::ProvisioningArtifactParameter&gt;
    #   * {Types::DescribeProvisioningParametersOutput#constraint_summaries #constraint_summaries} => Array&lt;Types::ConstraintSummary&gt;
    #   * {Types::DescribeProvisioningParametersOutput#usage_instructions #usage_instructions} => Array&lt;Types::UsageInstruction&gt;
    #   * {Types::DescribeProvisioningParametersOutput#tag_options #tag_options} => Array&lt;Types::TagOptionSummary&gt;
    #   * {Types::DescribeProvisioningParametersOutput#provisioning_artifact_preferences #provisioning_artifact_preferences} => Types::ProvisioningArtifactPreferences
    #   * {Types::DescribeProvisioningParametersOutput#provisioning_artifact_outputs #provisioning_artifact_outputs} => Array&lt;Types::ProvisioningArtifactOutput&gt;
    #   * {Types::DescribeProvisioningParametersOutput#provisioning_artifact_output_keys #provisioning_artifact_output_keys} => Array&lt;Types::ProvisioningArtifactOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioning_parameters({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id",
    #     product_name: "ProductViewName",
    #     provisioning_artifact_id: "Id",
    #     provisioning_artifact_name: "ProvisioningArtifactName",
    #     path_id: "Id",
    #     path_name: "PortfolioDisplayName",
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_parameters #=> Array
    #   resp.provisioning_artifact_parameters[0].parameter_key #=> String
    #   resp.provisioning_artifact_parameters[0].default_value #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_type #=> String
    #   resp.provisioning_artifact_parameters[0].is_no_echo #=> Boolean
    #   resp.provisioning_artifact_parameters[0].description #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.allowed_values #=> Array
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.allowed_values[0] #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.allowed_pattern #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.constraint_description #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.max_length #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.min_length #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.max_value #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.min_value #=> String
    #   resp.constraint_summaries #=> Array
    #   resp.constraint_summaries[0].type #=> String
    #   resp.constraint_summaries[0].description #=> String
    #   resp.usage_instructions #=> Array
    #   resp.usage_instructions[0].type #=> String
    #   resp.usage_instructions[0].value #=> String
    #   resp.tag_options #=> Array
    #   resp.tag_options[0].key #=> String
    #   resp.tag_options[0].values #=> Array
    #   resp.tag_options[0].values[0] #=> String
    #   resp.provisioning_artifact_preferences.stack_set_accounts #=> Array
    #   resp.provisioning_artifact_preferences.stack_set_accounts[0] #=> String
    #   resp.provisioning_artifact_preferences.stack_set_regions #=> Array
    #   resp.provisioning_artifact_preferences.stack_set_regions[0] #=> String
    #   resp.provisioning_artifact_outputs #=> Array
    #   resp.provisioning_artifact_outputs[0].key #=> String
    #   resp.provisioning_artifact_outputs[0].description #=> String
    #   resp.provisioning_artifact_output_keys #=> Array
    #   resp.provisioning_artifact_output_keys[0].key #=> String
    #   resp.provisioning_artifact_output_keys[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningParameters AWS API Documentation
    #
    # @overload describe_provisioning_parameters(params = {})
    # @param [Hash] params ({})
    def describe_provisioning_parameters(params = {}, options = {})
      req = build_request(:describe_provisioning_parameters, params)
      req.send_request(options)
    end

    # Gets information about the specified request operation.
    #
    # Use this operation after calling a request operation (for example,
    # ProvisionProduct, TerminateProvisionedProduct, or
    # UpdateProvisionedProduct).
    #
    # <note markdown="1"> If a provisioned product was transferred to a new owner using
    # UpdateProvisionedProductProperties, the new owner will be able to
    # describe all past records for that product. The previous owner will no
    # longer be able to describe the records, but will be able to use
    # ListRecordHistory to see the product's history from when he was the
    # owner.
    #
    #  </note>
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The record identifier of the provisioned product. This identifier is
    #   returned by the request operation.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @return [Types::DescribeRecordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecordOutput#record_detail #record_detail} => Types::RecordDetail
    #   * {Types::DescribeRecordOutput#record_outputs #record_outputs} => Array&lt;Types::RecordOutput&gt;
    #   * {Types::DescribeRecordOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_record({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     page_token: "PageToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #   resp.record_detail.launch_role_arn #=> String
    #   resp.record_outputs #=> Array
    #   resp.record_outputs[0].output_key #=> String
    #   resp.record_outputs[0].output_value #=> String
    #   resp.record_outputs[0].description #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeRecord AWS API Documentation
    #
    # @overload describe_record(params = {})
    # @param [Hash] params ({})
    def describe_record(params = {}, options = {})
      req = build_request(:describe_record, params)
      req.send_request(options)
    end

    # Describes a self-service action.
    #
    # @option params [required, String] :id
    #   The self-service action identifier.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @return [Types::DescribeServiceActionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServiceActionOutput#service_action_detail #service_action_detail} => Types::ServiceActionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_action({
    #     id: "Id", # required
    #     accept_language: "AcceptLanguage",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_action_detail.service_action_summary.id #=> String
    #   resp.service_action_detail.service_action_summary.name #=> String
    #   resp.service_action_detail.service_action_summary.description #=> String
    #   resp.service_action_detail.service_action_summary.definition_type #=> String, one of "SSM_AUTOMATION"
    #   resp.service_action_detail.definition #=> Hash
    #   resp.service_action_detail.definition["ServiceActionDefinitionKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeServiceAction AWS API Documentation
    #
    # @overload describe_service_action(params = {})
    # @param [Hash] params ({})
    def describe_service_action(params = {}, options = {})
      req = build_request(:describe_service_action, params)
      req.send_request(options)
    end

    # Finds the default parameters for a specific self-service action on a
    # specific provisioned product and returns a map of the results to the
    # user.
    #
    # @option params [required, String] :provisioned_product_id
    #   The identifier of the provisioned product.
    #
    # @option params [required, String] :service_action_id
    #   The self-service action identifier.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @return [Types::DescribeServiceActionExecutionParametersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServiceActionExecutionParametersOutput#service_action_parameters #service_action_parameters} => Array&lt;Types::ExecutionParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_action_execution_parameters({
    #     provisioned_product_id: "Id", # required
    #     service_action_id: "Id", # required
    #     accept_language: "AcceptLanguage",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_action_parameters #=> Array
    #   resp.service_action_parameters[0].name #=> String
    #   resp.service_action_parameters[0].type #=> String
    #   resp.service_action_parameters[0].default_values #=> Array
    #   resp.service_action_parameters[0].default_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeServiceActionExecutionParameters AWS API Documentation
    #
    # @overload describe_service_action_execution_parameters(params = {})
    # @param [Hash] params ({})
    def describe_service_action_execution_parameters(params = {}, options = {})
      req = build_request(:describe_service_action_execution_parameters, params)
      req.send_request(options)
    end

    # Gets information about the specified TagOption.
    #
    # @option params [required, String] :id
    #   The TagOption identifier.
    #
    # @return [Types::DescribeTagOptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagOptionOutput#tag_option_detail #tag_option_detail} => Types::TagOptionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tag_option({
    #     id: "TagOptionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_option_detail.key #=> String
    #   resp.tag_option_detail.value #=> String
    #   resp.tag_option_detail.active #=> Boolean
    #   resp.tag_option_detail.id #=> String
    #   resp.tag_option_detail.owner #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeTagOption AWS API Documentation
    #
    # @overload describe_tag_option(params = {})
    # @param [Hash] params ({})
    def describe_tag_option(params = {}, options = {})
      req = build_request(:describe_tag_option, params)
      req.send_request(options)
    end

    # Disable portfolio sharing through the Organizations service. This
    # command will not delete your current shares, but prevents you from
    # creating new shares throughout your organization. Current shares are
    # not kept in sync with your organization structure if the structure
    # changes after calling this API. Only the management account in the
    # organization can call this API.
    #
    # You cannot call this API if there are active delegated administrators
    # in the organization.
    #
    # Note that a delegated administrator is not authorized to invoke
    # `DisableAWSOrganizationsAccess`.
    #
    # If you share an Service Catalog portfolio in an organization within
    # Organizations, and then disable Organizations access for Service
    # Catalog, the portfolio access permissions will not sync with the
    # latest changes to the organization structure. Specifically, accounts
    # that you removed from the organization after disabling Service Catalog
    # access will retain access to the previously shared portfolio.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisableAWSOrganizationsAccess AWS API Documentation
    #
    # @overload disable_aws_organizations_access(params = {})
    # @param [Hash] params ({})
    def disable_aws_organizations_access(params = {}, options = {})
      req = build_request(:disable_aws_organizations_access, params)
      req.send_request(options)
    end

    # Disassociates the specified budget from the specified resource.
    #
    # @option params [required, String] :budget_name
    #   The name of the budget you want to disassociate.
    #
    # @option params [required, String] :resource_id
    #   The resource identifier you want to disassociate from. Either a
    #   portfolio-id or a product-id.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_budget_from_resource({
    #     budget_name: "BudgetName", # required
    #     resource_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateBudgetFromResource AWS API Documentation
    #
    # @overload disassociate_budget_from_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_budget_from_resource(params = {}, options = {})
      req = build_request(:disassociate_budget_from_resource, params)
      req.send_request(options)
    end

    # Disassociates a previously associated principal ARN from a specified
    # portfolio.
    #
    # The `PrincipalType` and `PrincipalARN` must match the
    # `AssociatePrincipalWithPortfolio` call request details. For example,
    # to disassociate an association created with a `PrincipalARN` of
    # `PrincipalType` IAM you must use the `PrincipalType` IAM when calling
    # `DisassociatePrincipalFromPortfolio`.
    #
    # For portfolios that have been shared with principal name sharing
    # enabled: after disassociating a principal, share recipient accounts
    # will no longer be able to provision products in this portfolio using a
    # role matching the name of the associated principal.
    #
    # For more information, review [associate-principal-with-portfolio][1]
    # in the Amazon Web Services CLI Command Reference.
    #
    # <note markdown="1"> If you disassociate a principal from a portfolio, with PrincipalType
    # as `IAM`, the same principal will still have access to the portfolio
    # if it matches one of the associated principals of type `IAM_PATTERN`.
    # To fully remove access for a principal, verify all the associated
    # Principals of type `IAM_PATTERN`, and then ensure you disassociate any
    # `IAM_PATTERN` principals that match the principal whose access you are
    # removing.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cli/latest/reference/servicecatalog/associate-principal-with-portfolio.html#options
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the principal (user, role, or group). This field allows an
    #   ARN with no `accountID` with or without wildcard characters if
    #   `PrincipalType` is `IAM_PATTERN`.
    #
    # @option params [String] :principal_type
    #   The supported value is `IAM` if you use a fully defined ARN, or
    #   `IAM_PATTERN` if you specify an `IAM` ARN with no AccountId, with or
    #   without wildcard characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_principal_from_portfolio({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     principal_arn: "PrincipalARN", # required
    #     principal_type: "IAM", # accepts IAM, IAM_PATTERN
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociatePrincipalFromPortfolio AWS API Documentation
    #
    # @overload disassociate_principal_from_portfolio(params = {})
    # @param [Hash] params ({})
    def disassociate_principal_from_portfolio(params = {}, options = {})
      req = build_request(:disassociate_principal_from_portfolio, params)
      req.send_request(options)
    end

    # Disassociates the specified product from the specified portfolio.
    #
    # A delegated admin is authorized to invoke this command.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_product_from_portfolio({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     portfolio_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateProductFromPortfolio AWS API Documentation
    #
    # @overload disassociate_product_from_portfolio(params = {})
    # @param [Hash] params ({})
    def disassociate_product_from_portfolio(params = {}, options = {})
      req = build_request(:disassociate_product_from_portfolio, params)
      req.send_request(options)
    end

    # Disassociates the specified self-service action association from the
    # specified provisioning artifact.
    #
    # @option params [required, String] :product_id
    #   The product identifier. For example, `prod-abcdzk7xy33qa`.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact. For example,
    #   `pa-4abcdjnxjj6ne`.
    #
    # @option params [required, String] :service_action_id
    #   The self-service action identifier. For example, `act-fs7abcd89wxyz`.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests from the same Amazon Web Services account use the
    #   same idempotency token, the same response is returned for each
    #   repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_service_action_from_provisioning_artifact({
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     service_action_id: "Id", # required
    #     accept_language: "AcceptLanguage",
    #     idempotency_token: "IdempotencyToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateServiceActionFromProvisioningArtifact AWS API Documentation
    #
    # @overload disassociate_service_action_from_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def disassociate_service_action_from_provisioning_artifact(params = {}, options = {})
      req = build_request(:disassociate_service_action_from_provisioning_artifact, params)
      req.send_request(options)
    end

    # Disassociates the specified TagOption from the specified resource.
    #
    # @option params [required, String] :resource_id
    #   The resource identifier.
    #
    # @option params [required, String] :tag_option_id
    #   The TagOption identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_tag_option_from_resource({
    #     resource_id: "ResourceId", # required
    #     tag_option_id: "TagOptionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateTagOptionFromResource AWS API Documentation
    #
    # @overload disassociate_tag_option_from_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_tag_option_from_resource(params = {}, options = {})
      req = build_request(:disassociate_tag_option_from_resource, params)
      req.send_request(options)
    end

    # Enable portfolio sharing feature through Organizations. This API will
    # allow Service Catalog to receive updates on your organization in order
    # to sync your shares with the current structure. This API can only be
    # called by the management account in the organization.
    #
    # When you call this API, Service Catalog calls
    # `organizations:EnableAWSServiceAccess` on your behalf so that your
    # shares stay in sync with any changes in your Organizations structure.
    #
    # Note that a delegated administrator is not authorized to invoke
    # `EnableAWSOrganizationsAccess`.
    #
    # If you have previously disabled Organizations access for Service
    # Catalog, and then enable access again, the portfolio access
    # permissions might not sync with the latest changes to the organization
    # structure. Specifically, accounts that you removed from the
    # organization after disabling Service Catalog access, and before you
    # enabled access again, can retain access to the previously shared
    # portfolio. As a result, an account that has been removed from the
    # organization might still be able to create or manage Amazon Web
    # Services resources when it is no longer authorized to do so. Amazon
    # Web Services is working to resolve this issue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/EnableAWSOrganizationsAccess AWS API Documentation
    #
    # @overload enable_aws_organizations_access(params = {})
    # @param [Hash] params ({})
    def enable_aws_organizations_access(params = {}, options = {})
      req = build_request(:enable_aws_organizations_access, params)
      req.send_request(options)
    end

    # Provisions or modifies a product based on the resource changes for the
    # specified plan.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :plan_id
    #   The plan identifier.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ExecuteProvisionedProductPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteProvisionedProductPlanOutput#record_detail #record_detail} => Types::RecordDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_provisioned_product_plan({
    #     accept_language: "AcceptLanguage",
    #     plan_id: "Id", # required
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #   resp.record_detail.launch_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ExecuteProvisionedProductPlan AWS API Documentation
    #
    # @overload execute_provisioned_product_plan(params = {})
    # @param [Hash] params ({})
    def execute_provisioned_product_plan(params = {}, options = {})
      req = build_request(:execute_provisioned_product_plan, params)
      req.send_request(options)
    end

    # Executes a self-service action against a provisioned product.
    #
    # @option params [required, String] :provisioned_product_id
    #   The identifier of the provisioned product.
    #
    # @option params [required, String] :service_action_id
    #   The self-service action identifier. For example, `act-fs7abcd89wxyz`.
    #
    # @option params [required, String] :execute_token
    #   An idempotency token that uniquely identifies the execute request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Hash<String,Array>] :parameters
    #   A map of all self-service action parameters and their values. If a
    #   provided parameter is of a special type, such as `TARGET`, the
    #   provided value will override the default value generated by Service
    #   Catalog. If the parameters field is not provided, no additional
    #   parameters are passed and default values will be used for any special
    #   parameters such as `TARGET`.
    #
    # @return [Types::ExecuteProvisionedProductServiceActionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteProvisionedProductServiceActionOutput#record_detail #record_detail} => Types::RecordDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_provisioned_product_service_action({
    #     provisioned_product_id: "Id", # required
    #     service_action_id: "Id", # required
    #     execute_token: "IdempotencyToken", # required
    #     accept_language: "AcceptLanguage",
    #     parameters: {
    #       "ExecutionParameterKey" => ["ExecutionParameterValue"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #   resp.record_detail.launch_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ExecuteProvisionedProductServiceAction AWS API Documentation
    #
    # @overload execute_provisioned_product_service_action(params = {})
    # @param [Hash] params ({})
    def execute_provisioned_product_service_action(params = {}, options = {})
      req = build_request(:execute_provisioned_product_service_action, params)
      req.send_request(options)
    end

    # Get the Access Status for Organizations portfolio share feature. This
    # API can only be called by the management account in the organization
    # or by a delegated admin.
    #
    # @return [Types::GetAWSOrganizationsAccessStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAWSOrganizationsAccessStatusOutput#access_status #access_status} => String
    #
    # @example Response structure
    #
    #   resp.access_status #=> String, one of "ENABLED", "UNDER_CHANGE", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/GetAWSOrganizationsAccessStatus AWS API Documentation
    #
    # @overload get_aws_organizations_access_status(params = {})
    # @param [Hash] params ({})
    def get_aws_organizations_access_status(params = {}, options = {})
      req = build_request(:get_aws_organizations_access_status, params)
      req.send_request(options)
    end

    # This API takes either a `ProvisonedProductId` or a
    # `ProvisionedProductName`, along with a list of one or more output
    # keys, and responds with the key/value pairs of those outputs.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :provisioned_product_id
    #   The identifier of the provisioned product that you want the outputs
    #   from.
    #
    # @option params [String] :provisioned_product_name
    #   The name of the provisioned product that you want the outputs from.
    #
    # @option params [Array<String>] :output_keys
    #   The list of keys that the API should return with their values. If none
    #   are provided, the API will return all outputs of the provisioned
    #   product.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::GetProvisionedProductOutputsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProvisionedProductOutputsOutput#outputs #outputs} => Array&lt;Types::RecordOutput&gt;
    #   * {Types::GetProvisionedProductOutputsOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_provisioned_product_outputs({
    #     accept_language: "AcceptLanguage",
    #     provisioned_product_id: "Id",
    #     provisioned_product_name: "ProvisionedProductName",
    #     output_keys: ["OutputKey"],
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.outputs #=> Array
    #   resp.outputs[0].output_key #=> String
    #   resp.outputs[0].output_value #=> String
    #   resp.outputs[0].description #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/GetProvisionedProductOutputs AWS API Documentation
    #
    # @overload get_provisioned_product_outputs(params = {})
    # @param [Hash] params ({})
    def get_provisioned_product_outputs(params = {}, options = {})
      req = build_request(:get_provisioned_product_outputs, params)
      req.send_request(options)
    end

    # Requests the import of a resource as an Service Catalog provisioned
    # product that is associated to an Service Catalog product and
    # provisioning artifact. Once imported, all supported governance actions
    # are supported on the provisioned product.
    #
    # Resource import only supports CloudFormation stack ARNs.
    # CloudFormation StackSets, and non-root nested stacks, are not
    # supported.
    #
    # The CloudFormation stack must have one of the following statuses to be
    # imported: `CREATE_COMPLETE`, `UPDATE_COMPLETE`,
    # `UPDATE_ROLLBACK_COMPLETE`, `IMPORT_COMPLETE`, and
    # `IMPORT_ROLLBACK_COMPLETE`.
    #
    # Import of the resource requires that the CloudFormation stack template
    # matches the associated Service Catalog product provisioning artifact.
    #
    # <note markdown="1"> When you import an existing CloudFormation stack into a portfolio,
    # Service Catalog does not apply the product's associated constraints
    # during the import process. Service Catalog applies the constraints
    # after you call `UpdateProvisionedProduct` for the provisioned product.
    #
    #  </note>
    #
    # The user or role that performs this operation must have the
    # `cloudformation:GetTemplate` and `cloudformation:DescribeStacks` IAM
    # policy permissions.
    #
    # You can only import one provisioned product at a time. The product's
    # CloudFormation stack must have the `IMPORT_COMPLETE` status before you
    # import another.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [required, String] :provisioned_product_name
    #   The user-friendly name of the provisioned product. The value must be
    #   unique for the Amazon Web Services account. The name cannot be updated
    #   after the product is provisioned.
    #
    # @option params [required, String] :physical_id
    #   The unique identifier of the resource to be imported. It only
    #   currently supports CloudFormation stack IDs.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ImportAsProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportAsProvisionedProductOutput#record_detail #record_detail} => Types::RecordDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_as_provisioned_product({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     provisioned_product_name: "ProvisionedProductName", # required
    #     physical_id: "PhysicalId", # required
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #   resp.record_detail.launch_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ImportAsProvisionedProduct AWS API Documentation
    #
    # @overload import_as_provisioned_product(params = {})
    # @param [Hash] params ({})
    def import_as_provisioned_product(params = {}, options = {})
      req = build_request(:import_as_provisioned_product, params)
      req.send_request(options)
    end

    # Lists all imported portfolios for which account-to-account shares were
    # accepted by this account. By specifying the `PortfolioShareType`, you
    # can list portfolios for which organizational shares were accepted by
    # this account.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :portfolio_share_type
    #   The type of shared portfolios to list. The default is to list imported
    #   portfolios.
    #
    #   * `AWS_ORGANIZATIONS` - List portfolios accepted and shared via
    #     organizational sharing by the management account or delegated
    #     administrator of your organization.
    #
    #   * `AWS_SERVICECATALOG` - Deprecated type.
    #
    #   * `IMPORTED` - List imported portfolios that have been accepted and
    #     shared through account-to-account sharing.
    #
    # @return [Types::ListAcceptedPortfolioSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAcceptedPortfolioSharesOutput#portfolio_details #portfolio_details} => Array&lt;Types::PortfolioDetail&gt;
    #   * {Types::ListAcceptedPortfolioSharesOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accepted_portfolio_shares({
    #     accept_language: "AcceptLanguage",
    #     page_token: "PageToken",
    #     page_size: 1,
    #     portfolio_share_type: "IMPORTED", # accepts IMPORTED, AWS_SERVICECATALOG, AWS_ORGANIZATIONS
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_details #=> Array
    #   resp.portfolio_details[0].id #=> String
    #   resp.portfolio_details[0].arn #=> String
    #   resp.portfolio_details[0].display_name #=> String
    #   resp.portfolio_details[0].description #=> String
    #   resp.portfolio_details[0].created_time #=> Time
    #   resp.portfolio_details[0].provider_name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListAcceptedPortfolioShares AWS API Documentation
    #
    # @overload list_accepted_portfolio_shares(params = {})
    # @param [Hash] params ({})
    def list_accepted_portfolio_shares(params = {}, options = {})
      req = build_request(:list_accepted_portfolio_shares, params)
      req.send_request(options)
    end

    # Lists all the budgets associated to the specified resource.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :resource_id
    #   The resource identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListBudgetsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBudgetsForResourceOutput#budgets #budgets} => Array&lt;Types::BudgetDetail&gt;
    #   * {Types::ListBudgetsForResourceOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_budgets_for_resource({
    #     accept_language: "AcceptLanguage",
    #     resource_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.budgets #=> Array
    #   resp.budgets[0].budget_name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListBudgetsForResource AWS API Documentation
    #
    # @overload list_budgets_for_resource(params = {})
    # @param [Hash] params ({})
    def list_budgets_for_resource(params = {}, options = {})
      req = build_request(:list_budgets_for_resource, params)
      req.send_request(options)
    end

    # Lists the constraints for the specified portfolio and product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :product_id
    #   The product identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListConstraintsForPortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConstraintsForPortfolioOutput#constraint_details #constraint_details} => Array&lt;Types::ConstraintDetail&gt;
    #   * {Types::ListConstraintsForPortfolioOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_constraints_for_portfolio({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     product_id: "Id",
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.constraint_details #=> Array
    #   resp.constraint_details[0].constraint_id #=> String
    #   resp.constraint_details[0].type #=> String
    #   resp.constraint_details[0].description #=> String
    #   resp.constraint_details[0].owner #=> String
    #   resp.constraint_details[0].product_id #=> String
    #   resp.constraint_details[0].portfolio_id #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListConstraintsForPortfolio AWS API Documentation
    #
    # @overload list_constraints_for_portfolio(params = {})
    # @param [Hash] params ({})
    def list_constraints_for_portfolio(params = {}, options = {})
      req = build_request(:list_constraints_for_portfolio, params)
      req.send_request(options)
    end

    # Lists the paths to the specified product. A path describes how the
    # user gets access to a specified product and is necessary when
    # provisioning a product. A path also determines the constraints that
    # are put on a product. A path is dependent on a specific product,
    # porfolio, and principal.
    #
    # <note markdown="1"> When provisioning a product that's been added to a portfolio, you
    # must grant your user, group, or role access to the portfolio. For more
    # information, see [Granting users access][1] in the *Service Catalog
    # User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/servicecatalog/latest/adminguide/catalogs_portfolios_users.html
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListLaunchPathsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLaunchPathsOutput#launch_path_summaries #launch_path_summaries} => Array&lt;Types::LaunchPathSummary&gt;
    #   * {Types::ListLaunchPathsOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_launch_paths({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_path_summaries #=> Array
    #   resp.launch_path_summaries[0].id #=> String
    #   resp.launch_path_summaries[0].constraint_summaries #=> Array
    #   resp.launch_path_summaries[0].constraint_summaries[0].type #=> String
    #   resp.launch_path_summaries[0].constraint_summaries[0].description #=> String
    #   resp.launch_path_summaries[0].tags #=> Array
    #   resp.launch_path_summaries[0].tags[0].key #=> String
    #   resp.launch_path_summaries[0].tags[0].value #=> String
    #   resp.launch_path_summaries[0].name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListLaunchPaths AWS API Documentation
    #
    # @overload list_launch_paths(params = {})
    # @param [Hash] params ({})
    def list_launch_paths(params = {}, options = {})
      req = build_request(:list_launch_paths, params)
      req.send_request(options)
    end

    # Lists the organization nodes that have access to the specified
    # portfolio. This API can only be called by the management account in
    # the organization or by a delegated admin.
    #
    # If a delegated admin is de-registered, they can no longer perform this
    # operation.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier. For example, `port-2abcdext3y5fk`.
    #
    # @option params [required, String] :organization_node_type
    #   The organization node type that will be returned in the output.
    #
    #   * `ORGANIZATION` - Organization that has access to the portfolio.
    #
    #   * `ORGANIZATIONAL_UNIT` - Organizational unit that has access to the
    #     portfolio within your organization.
    #
    #   * `ACCOUNT` - Account that has access to the portfolio within your
    #     organization.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @return [Types::ListOrganizationPortfolioAccessOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationPortfolioAccessOutput#organization_nodes #organization_nodes} => Array&lt;Types::OrganizationNode&gt;
    #   * {Types::ListOrganizationPortfolioAccessOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_portfolio_access({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     organization_node_type: "ORGANIZATION", # required, accepts ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT
    #     page_token: "PageToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_nodes #=> Array
    #   resp.organization_nodes[0].type #=> String, one of "ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"
    #   resp.organization_nodes[0].value #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListOrganizationPortfolioAccess AWS API Documentation
    #
    # @overload list_organization_portfolio_access(params = {})
    # @param [Hash] params ({})
    def list_organization_portfolio_access(params = {}, options = {})
      req = build_request(:list_organization_portfolio_access, params)
      req.send_request(options)
    end

    # Lists the account IDs that have access to the specified portfolio.
    #
    # A delegated admin can list the accounts that have access to the shared
    # portfolio. Note that if a delegated admin is de-registered, they can
    # no longer perform this operation.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :organization_parent_id
    #   The ID of an organization node the portfolio is shared with. All
    #   children of this node with an inherited portfolio share will be
    #   returned.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @return [Types::ListPortfolioAccessOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortfolioAccessOutput#account_ids #account_ids} => Array&lt;String&gt;
    #   * {Types::ListPortfolioAccessOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portfolio_access({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     organization_parent_id: "Id",
    #     page_token: "PageToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0] #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfolioAccess AWS API Documentation
    #
    # @overload list_portfolio_access(params = {})
    # @param [Hash] params ({})
    def list_portfolio_access(params = {}, options = {})
      req = build_request(:list_portfolio_access, params)
      req.send_request(options)
    end

    # Lists all portfolios in the catalog.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @return [Types::ListPortfoliosOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortfoliosOutput#portfolio_details #portfolio_details} => Array&lt;Types::PortfolioDetail&gt;
    #   * {Types::ListPortfoliosOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portfolios({
    #     accept_language: "AcceptLanguage",
    #     page_token: "PageToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_details #=> Array
    #   resp.portfolio_details[0].id #=> String
    #   resp.portfolio_details[0].arn #=> String
    #   resp.portfolio_details[0].display_name #=> String
    #   resp.portfolio_details[0].description #=> String
    #   resp.portfolio_details[0].created_time #=> Time
    #   resp.portfolio_details[0].provider_name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfolios AWS API Documentation
    #
    # @overload list_portfolios(params = {})
    # @param [Hash] params ({})
    def list_portfolios(params = {}, options = {})
      req = build_request(:list_portfolios, params)
      req.send_request(options)
    end

    # Lists all portfolios that the specified product is associated with.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @return [Types::ListPortfoliosForProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortfoliosForProductOutput#portfolio_details #portfolio_details} => Array&lt;Types::PortfolioDetail&gt;
    #   * {Types::ListPortfoliosForProductOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portfolios_for_product({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     page_token: "PageToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_details #=> Array
    #   resp.portfolio_details[0].id #=> String
    #   resp.portfolio_details[0].arn #=> String
    #   resp.portfolio_details[0].display_name #=> String
    #   resp.portfolio_details[0].description #=> String
    #   resp.portfolio_details[0].created_time #=> Time
    #   resp.portfolio_details[0].provider_name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfoliosForProduct AWS API Documentation
    #
    # @overload list_portfolios_for_product(params = {})
    # @param [Hash] params ({})
    def list_portfolios_for_product(params = {}, options = {})
      req = build_request(:list_portfolios_for_product, params)
      req.send_request(options)
    end

    # Lists all `PrincipalARN`s and corresponding `PrincipalType`s
    # associated with the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListPrincipalsForPortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrincipalsForPortfolioOutput#principals #principals} => Array&lt;Types::Principal&gt;
    #   * {Types::ListPrincipalsForPortfolioOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principals_for_portfolio({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.principals #=> Array
    #   resp.principals[0].principal_arn #=> String
    #   resp.principals[0].principal_type #=> String, one of "IAM", "IAM_PATTERN"
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPrincipalsForPortfolio AWS API Documentation
    #
    # @overload list_principals_for_portfolio(params = {})
    # @param [Hash] params ({})
    def list_principals_for_portfolio(params = {}, options = {})
      req = build_request(:list_principals_for_portfolio, params)
      req.send_request(options)
    end

    # Lists the plans for the specified provisioned product or all plans to
    # which the user has access.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :provision_product_id
    #   The product identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   The access level to use to obtain results. The default is `User`.
    #
    # @return [Types::ListProvisionedProductPlansOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisionedProductPlansOutput#provisioned_product_plans #provisioned_product_plans} => Array&lt;Types::ProvisionedProductPlanSummary&gt;
    #   * {Types::ListProvisionedProductPlansOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioned_product_plans({
    #     accept_language: "AcceptLanguage",
    #     provision_product_id: "Id",
    #     page_size: 1,
    #     page_token: "PageToken",
    #     access_level_filter: {
    #       key: "Account", # accepts Account, Role, User
    #       value: "AccessLevelFilterValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_product_plans #=> Array
    #   resp.provisioned_product_plans[0].plan_name #=> String
    #   resp.provisioned_product_plans[0].plan_id #=> String
    #   resp.provisioned_product_plans[0].provision_product_id #=> String
    #   resp.provisioned_product_plans[0].provision_product_name #=> String
    #   resp.provisioned_product_plans[0].plan_type #=> String, one of "CLOUDFORMATION"
    #   resp.provisioned_product_plans[0].provisioning_artifact_id #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisionedProductPlans AWS API Documentation
    #
    # @overload list_provisioned_product_plans(params = {})
    # @param [Hash] params ({})
    def list_provisioned_product_plans(params = {}, options = {})
      req = build_request(:list_provisioned_product_plans, params)
      req.send_request(options)
    end

    # Lists all provisioning artifacts (also known as versions) for the
    # specified product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @return [Types::ListProvisioningArtifactsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisioningArtifactsOutput#provisioning_artifact_details #provisioning_artifact_details} => Array&lt;Types::ProvisioningArtifactDetail&gt;
    #   * {Types::ListProvisioningArtifactsOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioning_artifacts({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_details #=> Array
    #   resp.provisioning_artifact_details[0].id #=> String
    #   resp.provisioning_artifact_details[0].name #=> String
    #   resp.provisioning_artifact_details[0].description #=> String
    #   resp.provisioning_artifact_details[0].type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.provisioning_artifact_details[0].created_time #=> Time
    #   resp.provisioning_artifact_details[0].active #=> Boolean
    #   resp.provisioning_artifact_details[0].guidance #=> String, one of "DEFAULT", "DEPRECATED"
    #   resp.provisioning_artifact_details[0].source_revision #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisioningArtifacts AWS API Documentation
    #
    # @overload list_provisioning_artifacts(params = {})
    # @param [Hash] params ({})
    def list_provisioning_artifacts(params = {}, options = {})
      req = build_request(:list_provisioning_artifacts, params)
      req.send_request(options)
    end

    # Lists all provisioning artifacts (also known as versions) for the
    # specified self-service action.
    #
    # @option params [required, String] :service_action_id
    #   The self-service action identifier. For example, `act-fs7abcd89wxyz`.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @return [Types::ListProvisioningArtifactsForServiceActionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisioningArtifactsForServiceActionOutput#provisioning_artifact_views #provisioning_artifact_views} => Array&lt;Types::ProvisioningArtifactView&gt;
    #   * {Types::ListProvisioningArtifactsForServiceActionOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioning_artifacts_for_service_action({
    #     service_action_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #     accept_language: "AcceptLanguage",
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_views #=> Array
    #   resp.provisioning_artifact_views[0].product_view_summary.id #=> String
    #   resp.provisioning_artifact_views[0].product_view_summary.product_id #=> String
    #   resp.provisioning_artifact_views[0].product_view_summary.name #=> String
    #   resp.provisioning_artifact_views[0].product_view_summary.owner #=> String
    #   resp.provisioning_artifact_views[0].product_view_summary.short_description #=> String
    #   resp.provisioning_artifact_views[0].product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.provisioning_artifact_views[0].product_view_summary.distributor #=> String
    #   resp.provisioning_artifact_views[0].product_view_summary.has_default_path #=> Boolean
    #   resp.provisioning_artifact_views[0].product_view_summary.support_email #=> String
    #   resp.provisioning_artifact_views[0].product_view_summary.support_description #=> String
    #   resp.provisioning_artifact_views[0].product_view_summary.support_url #=> String
    #   resp.provisioning_artifact_views[0].provisioning_artifact.id #=> String
    #   resp.provisioning_artifact_views[0].provisioning_artifact.name #=> String
    #   resp.provisioning_artifact_views[0].provisioning_artifact.description #=> String
    #   resp.provisioning_artifact_views[0].provisioning_artifact.created_time #=> Time
    #   resp.provisioning_artifact_views[0].provisioning_artifact.guidance #=> String, one of "DEFAULT", "DEPRECATED"
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisioningArtifactsForServiceAction AWS API Documentation
    #
    # @overload list_provisioning_artifacts_for_service_action(params = {})
    # @param [Hash] params ({})
    def list_provisioning_artifacts_for_service_action(params = {}, options = {})
      req = build_request(:list_provisioning_artifacts_for_service_action, params)
      req.send_request(options)
    end

    # Lists the specified requests or all performed requests.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   The access level to use to obtain results. The default is `User`.
    #
    # @option params [Types::ListRecordHistorySearchFilter] :search_filter
    #   The search filter to scope the results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListRecordHistoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecordHistoryOutput#record_details #record_details} => Array&lt;Types::RecordDetail&gt;
    #   * {Types::ListRecordHistoryOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_record_history({
    #     accept_language: "AcceptLanguage",
    #     access_level_filter: {
    #       key: "Account", # accepts Account, Role, User
    #       value: "AccessLevelFilterValue",
    #     },
    #     search_filter: {
    #       key: "SearchFilterKey",
    #       value: "SearchFilterValue",
    #     },
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.record_details #=> Array
    #   resp.record_details[0].record_id #=> String
    #   resp.record_details[0].provisioned_product_name #=> String
    #   resp.record_details[0].status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_details[0].created_time #=> Time
    #   resp.record_details[0].updated_time #=> Time
    #   resp.record_details[0].provisioned_product_type #=> String
    #   resp.record_details[0].record_type #=> String
    #   resp.record_details[0].provisioned_product_id #=> String
    #   resp.record_details[0].product_id #=> String
    #   resp.record_details[0].provisioning_artifact_id #=> String
    #   resp.record_details[0].path_id #=> String
    #   resp.record_details[0].record_errors #=> Array
    #   resp.record_details[0].record_errors[0].code #=> String
    #   resp.record_details[0].record_errors[0].description #=> String
    #   resp.record_details[0].record_tags #=> Array
    #   resp.record_details[0].record_tags[0].key #=> String
    #   resp.record_details[0].record_tags[0].value #=> String
    #   resp.record_details[0].launch_role_arn #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListRecordHistory AWS API Documentation
    #
    # @overload list_record_history(params = {})
    # @param [Hash] params ({})
    def list_record_history(params = {}, options = {})
      req = build_request(:list_record_history, params)
      req.send_request(options)
    end

    # Lists the resources associated with the specified TagOption.
    #
    # @option params [required, String] :tag_option_id
    #   The TagOption identifier.
    #
    # @option params [String] :resource_type
    #   The resource type.
    #
    #   * `Portfolio`
    #
    #   * `Product`
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListResourcesForTagOptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesForTagOptionOutput#resource_details #resource_details} => Array&lt;Types::ResourceDetail&gt;
    #   * {Types::ListResourcesForTagOptionOutput#page_token #page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_for_tag_option({
    #     tag_option_id: "TagOptionId", # required
    #     resource_type: "ResourceType",
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_details #=> Array
    #   resp.resource_details[0].id #=> String
    #   resp.resource_details[0].arn #=> String
    #   resp.resource_details[0].name #=> String
    #   resp.resource_details[0].description #=> String
    #   resp.resource_details[0].created_time #=> Time
    #   resp.page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListResourcesForTagOption AWS API Documentation
    #
    # @overload list_resources_for_tag_option(params = {})
    # @param [Hash] params ({})
    def list_resources_for_tag_option(params = {}, options = {})
      req = build_request(:list_resources_for_tag_option, params)
      req.send_request(options)
    end

    # Lists all self-service actions.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListServiceActionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceActionsOutput#service_action_summaries #service_action_summaries} => Array&lt;Types::ServiceActionSummary&gt;
    #   * {Types::ListServiceActionsOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_actions({
    #     accept_language: "AcceptLanguage",
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_action_summaries #=> Array
    #   resp.service_action_summaries[0].id #=> String
    #   resp.service_action_summaries[0].name #=> String
    #   resp.service_action_summaries[0].description #=> String
    #   resp.service_action_summaries[0].definition_type #=> String, one of "SSM_AUTOMATION"
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListServiceActions AWS API Documentation
    #
    # @overload list_service_actions(params = {})
    # @param [Hash] params ({})
    def list_service_actions(params = {}, options = {})
      req = build_request(:list_service_actions, params)
      req.send_request(options)
    end

    # Returns a paginated list of self-service actions associated with the
    # specified Product ID and Provisioning Artifact ID.
    #
    # @option params [required, String] :product_id
    #   The product identifier. For example, `prod-abcdzk7xy33qa`.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact. For example,
    #   `pa-4abcdjnxjj6ne`.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @return [Types::ListServiceActionsForProvisioningArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceActionsForProvisioningArtifactOutput#service_action_summaries #service_action_summaries} => Array&lt;Types::ServiceActionSummary&gt;
    #   * {Types::ListServiceActionsForProvisioningArtifactOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_actions_for_provisioning_artifact({
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #     accept_language: "AcceptLanguage",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_action_summaries #=> Array
    #   resp.service_action_summaries[0].id #=> String
    #   resp.service_action_summaries[0].name #=> String
    #   resp.service_action_summaries[0].description #=> String
    #   resp.service_action_summaries[0].definition_type #=> String, one of "SSM_AUTOMATION"
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListServiceActionsForProvisioningArtifact AWS API Documentation
    #
    # @overload list_service_actions_for_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def list_service_actions_for_provisioning_artifact(params = {}, options = {})
      req = build_request(:list_service_actions_for_provisioning_artifact, params)
      req.send_request(options)
    end

    # Returns summary information about stack instances that are associated
    # with the specified `CFN_STACKSET` type provisioned product. You can
    # filter for stack instances that are associated with a specific Amazon
    # Web Services account name or Region.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :provisioned_product_id
    #   The identifier of the provisioned product.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @return [Types::ListStackInstancesForProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStackInstancesForProvisionedProductOutput#stack_instances #stack_instances} => Array&lt;Types::StackInstance&gt;
    #   * {Types::ListStackInstancesForProvisionedProductOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_instances_for_provisioned_product({
    #     accept_language: "AcceptLanguage",
    #     provisioned_product_id: "Id", # required
    #     page_token: "PageToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.stack_instances #=> Array
    #   resp.stack_instances[0].account #=> String
    #   resp.stack_instances[0].region #=> String
    #   resp.stack_instances[0].stack_instance_status #=> String, one of "CURRENT", "OUTDATED", "INOPERABLE"
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListStackInstancesForProvisionedProduct AWS API Documentation
    #
    # @overload list_stack_instances_for_provisioned_product(params = {})
    # @param [Hash] params ({})
    def list_stack_instances_for_provisioned_product(params = {}, options = {})
      req = build_request(:list_stack_instances_for_provisioned_product, params)
      req.send_request(options)
    end

    # Lists the specified TagOptions or all TagOptions.
    #
    # @option params [Types::ListTagOptionsFilters] :filters
    #   The search filters. If no search filters are specified, the output
    #   includes all TagOptions.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListTagOptionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagOptionsOutput#tag_option_details #tag_option_details} => Array&lt;Types::TagOptionDetail&gt;
    #   * {Types::ListTagOptionsOutput#page_token #page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tag_options({
    #     filters: {
    #       key: "TagOptionKey",
    #       value: "TagOptionValue",
    #       active: false,
    #     },
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_option_details #=> Array
    #   resp.tag_option_details[0].key #=> String
    #   resp.tag_option_details[0].value #=> String
    #   resp.tag_option_details[0].active #=> Boolean
    #   resp.tag_option_details[0].id #=> String
    #   resp.tag_option_details[0].owner #=> String
    #   resp.page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListTagOptions AWS API Documentation
    #
    # @overload list_tag_options(params = {})
    # @param [Hash] params ({})
    def list_tag_options(params = {}, options = {})
      req = build_request(:list_tag_options, params)
      req.send_request(options)
    end

    # Notifies the result of the provisioning engine execution.
    #
    # @option params [required, String] :workflow_token
    #   The encrypted contents of the provisioning engine execution payload
    #   that Service Catalog sends after the Terraform product provisioning
    #   workflow starts.
    #
    # @option params [required, String] :record_id
    #   The identifier of the record.
    #
    # @option params [required, String] :status
    #   The status of the provisioning engine execution.
    #
    # @option params [String] :failure_reason
    #   The reason why the provisioning engine execution failed.
    #
    # @option params [Types::EngineWorkflowResourceIdentifier] :resource_identifier
    #   The ID for the provisioned product resources that are part of a
    #   resource group.
    #
    # @option params [Array<Types::RecordOutput>] :outputs
    #   The output of the provisioning engine execution.
    #
    # @option params [required, String] :idempotency_token
    #   The idempotency token that identifies the provisioning engine
    #   execution.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_provision_product_engine_workflow_result({
    #     workflow_token: "EngineWorkflowToken", # required
    #     record_id: "Id", # required
    #     status: "SUCCEEDED", # required, accepts SUCCEEDED, FAILED
    #     failure_reason: "EngineWorkflowFailureReason",
    #     resource_identifier: {
    #       unique_tag: {
    #         key: "UniqueTagKey",
    #         value: "UniqueTagValue",
    #       },
    #     },
    #     outputs: [
    #       {
    #         output_key: "OutputKey",
    #         output_value: "OutputValue",
    #         description: "Description",
    #       },
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/NotifyProvisionProductEngineWorkflowResult AWS API Documentation
    #
    # @overload notify_provision_product_engine_workflow_result(params = {})
    # @param [Hash] params ({})
    def notify_provision_product_engine_workflow_result(params = {}, options = {})
      req = build_request(:notify_provision_product_engine_workflow_result, params)
      req.send_request(options)
    end

    # Notifies the result of the terminate engine execution.
    #
    # @option params [required, String] :workflow_token
    #   The encrypted contents of the terminate engine execution payload that
    #   Service Catalog sends after the Terraform product terminate workflow
    #   starts.
    #
    # @option params [required, String] :record_id
    #   The identifier of the record.
    #
    # @option params [required, String] :status
    #   The status of the terminate engine execution.
    #
    # @option params [String] :failure_reason
    #   The reason why the terminate engine execution failed.
    #
    # @option params [required, String] :idempotency_token
    #   The idempotency token that identifies the terminate engine execution.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_terminate_provisioned_product_engine_workflow_result({
    #     workflow_token: "EngineWorkflowToken", # required
    #     record_id: "Id", # required
    #     status: "SUCCEEDED", # required, accepts SUCCEEDED, FAILED
    #     failure_reason: "EngineWorkflowFailureReason",
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/NotifyTerminateProvisionedProductEngineWorkflowResult AWS API Documentation
    #
    # @overload notify_terminate_provisioned_product_engine_workflow_result(params = {})
    # @param [Hash] params ({})
    def notify_terminate_provisioned_product_engine_workflow_result(params = {}, options = {})
      req = build_request(:notify_terminate_provisioned_product_engine_workflow_result, params)
      req.send_request(options)
    end

    # Notifies the result of the update engine execution.
    #
    # @option params [required, String] :workflow_token
    #   The encrypted contents of the update engine execution payload that
    #   Service Catalog sends after the Terraform product update workflow
    #   starts.
    #
    # @option params [required, String] :record_id
    #   The identifier of the record.
    #
    # @option params [required, String] :status
    #   The status of the update engine execution.
    #
    # @option params [String] :failure_reason
    #   The reason why the update engine execution failed.
    #
    # @option params [Array<Types::RecordOutput>] :outputs
    #   The output of the update engine execution.
    #
    # @option params [required, String] :idempotency_token
    #   The idempotency token that identifies the update engine execution.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_update_provisioned_product_engine_workflow_result({
    #     workflow_token: "EngineWorkflowToken", # required
    #     record_id: "Id", # required
    #     status: "SUCCEEDED", # required, accepts SUCCEEDED, FAILED
    #     failure_reason: "EngineWorkflowFailureReason",
    #     outputs: [
    #       {
    #         output_key: "OutputKey",
    #         output_value: "OutputValue",
    #         description: "Description",
    #       },
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/NotifyUpdateProvisionedProductEngineWorkflowResult AWS API Documentation
    #
    # @overload notify_update_provisioned_product_engine_workflow_result(params = {})
    # @param [Hash] params ({})
    def notify_update_provisioned_product_engine_workflow_result(params = {}, options = {})
      req = build_request(:notify_update_provisioned_product_engine_workflow_result, params)
      req.send_request(options)
    end

    # Provisions the specified product.
    #
    # A provisioned product is a resourced instance of a product. For
    # example, provisioning a product that's based on an CloudFormation
    # template launches an CloudFormation stack and its underlying
    # resources. You can check the status of this request using
    # DescribeRecord.
    #
    # If the request contains a tag key with an empty list of values,
    # there's a tag conflict for that key. Don't include conflicted keys
    # as tags, or this will cause the error "Parameter validation failed:
    # Missing required parameter in Tags\[*N*\]:*Value*".
    #
    # <note markdown="1"> When provisioning a product that's been added to a portfolio, you
    # must grant your user, group, or role access to the portfolio. For more
    # information, see [Granting users access][1] in the *Service Catalog
    # User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/servicecatalog/latest/adminguide/catalogs_portfolios_users.html
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :product_id
    #   The product identifier. You must provide the name or ID, but not both.
    #
    # @option params [String] :product_name
    #   The name of the product. You must provide the name or ID, but not
    #   both.
    #
    # @option params [String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact. You must provide the name
    #   or ID, but not both.
    #
    # @option params [String] :provisioning_artifact_name
    #   The name of the provisioning artifact. You must provide the name or
    #   ID, but not both.
    #
    # @option params [String] :path_id
    #   The path identifier of the product. This value is optional if the
    #   product has a default path, and required if the product has more than
    #   one path. To list the paths for a product, use ListLaunchPaths. You
    #   must provide the name or ID, but not both.
    #
    # @option params [String] :path_name
    #   The name of the path. You must provide the name or ID, but not both.
    #
    # @option params [required, String] :provisioned_product_name
    #   A user-friendly name for the provisioned product. This value must be
    #   unique for the Amazon Web Services account and cannot be updated after
    #   the product is provisioned.
    #
    # @option params [Array<Types::ProvisioningParameter>] :provisioning_parameters
    #   Parameters specified by the administrator that are required for
    #   provisioning the product.
    #
    # @option params [Types::ProvisioningPreferences] :provisioning_preferences
    #   An object that contains information about the provisioning preferences
    #   for a stack set.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @option params [Array<String>] :notification_arns
    #   Passed to CloudFormation. The SNS topic ARNs to which to publish
    #   stack-related events.
    #
    # @option params [required, String] :provision_token
    #   An idempotency token that uniquely identifies the provisioning
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ProvisionProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProvisionProductOutput#record_detail #record_detail} => Types::RecordDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_product({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id",
    #     product_name: "ProductViewName",
    #     provisioning_artifact_id: "Id",
    #     provisioning_artifact_name: "ProvisioningArtifactName",
    #     path_id: "Id",
    #     path_name: "PortfolioDisplayName",
    #     provisioned_product_name: "ProvisionedProductName", # required
    #     provisioning_parameters: [
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue",
    #       },
    #     ],
    #     provisioning_preferences: {
    #       stack_set_accounts: ["AccountId"],
    #       stack_set_regions: ["Region"],
    #       stack_set_failure_tolerance_count: 1,
    #       stack_set_failure_tolerance_percentage: 1,
    #       stack_set_max_concurrency_count: 1,
    #       stack_set_max_concurrency_percentage: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     notification_arns: ["NotificationArn"],
    #     provision_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #   resp.record_detail.launch_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisionProduct AWS API Documentation
    #
    # @overload provision_product(params = {})
    # @param [Hash] params ({})
    def provision_product(params = {}, options = {})
      req = build_request(:provision_product, params)
      req.send_request(options)
    end

    # Rejects an offer to share the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :portfolio_share_type
    #   The type of shared portfolios to reject. The default is to reject
    #   imported portfolios.
    #
    #   * `AWS_ORGANIZATIONS` - Reject portfolios shared by the management
    #     account of your organization.
    #
    #   * `IMPORTED` - Reject imported portfolios.
    #
    #   * `AWS_SERVICECATALOG` - Not supported. (Throws
    #     ResourceNotFoundException.)
    #
    #   For example, `aws servicecatalog reject-portfolio-share --portfolio-id
    #   "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_portfolio_share({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     portfolio_share_type: "IMPORTED", # accepts IMPORTED, AWS_SERVICECATALOG, AWS_ORGANIZATIONS
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RejectPortfolioShare AWS API Documentation
    #
    # @overload reject_portfolio_share(params = {})
    # @param [Hash] params ({})
    def reject_portfolio_share(params = {}, options = {})
      req = build_request(:reject_portfolio_share, params)
      req.send_request(options)
    end

    # Lists the provisioned products that are available (not terminated).
    #
    # To use additional filtering, see SearchProvisionedProducts.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   The access level to use to obtain results. The default is `User`.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ScanProvisionedProductsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScanProvisionedProductsOutput#provisioned_products #provisioned_products} => Array&lt;Types::ProvisionedProductDetail&gt;
    #   * {Types::ScanProvisionedProductsOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.scan_provisioned_products({
    #     accept_language: "AcceptLanguage",
    #     access_level_filter: {
    #       key: "Account", # accepts Account, Role, User
    #       value: "AccessLevelFilterValue",
    #     },
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_products #=> Array
    #   resp.provisioned_products[0].name #=> String
    #   resp.provisioned_products[0].arn #=> String
    #   resp.provisioned_products[0].type #=> String
    #   resp.provisioned_products[0].id #=> String
    #   resp.provisioned_products[0].status #=> String, one of "AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"
    #   resp.provisioned_products[0].status_message #=> String
    #   resp.provisioned_products[0].created_time #=> Time
    #   resp.provisioned_products[0].idempotency_token #=> String
    #   resp.provisioned_products[0].last_record_id #=> String
    #   resp.provisioned_products[0].last_provisioning_record_id #=> String
    #   resp.provisioned_products[0].last_successful_provisioning_record_id #=> String
    #   resp.provisioned_products[0].product_id #=> String
    #   resp.provisioned_products[0].provisioning_artifact_id #=> String
    #   resp.provisioned_products[0].launch_role_arn #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ScanProvisionedProducts AWS API Documentation
    #
    # @overload scan_provisioned_products(params = {})
    # @param [Hash] params ({})
    def scan_provisioned_products(params = {}, options = {})
      req = build_request(:scan_provisioned_products, params)
      req.send_request(options)
    end

    # Gets information about the products to which the caller has access.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Hash<String,Array>] :filters
    #   The search filters. If no search filters are specified, the output
    #   includes all products to which the caller has access.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :sort_by
    #   The sort field. If no value is specified, the results are not sorted.
    #
    # @option params [String] :sort_order
    #   The sort order. If no value is specified, the results are not sorted.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::SearchProductsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchProductsOutput#product_view_summaries #product_view_summaries} => Array&lt;Types::ProductViewSummary&gt;
    #   * {Types::SearchProductsOutput#product_view_aggregations #product_view_aggregations} => Hash&lt;String,Array&lt;Types::ProductViewAggregationValue&gt;&gt;
    #   * {Types::SearchProductsOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_products({
    #     accept_language: "AcceptLanguage",
    #     filters: {
    #       "FullTextSearch" => ["ProductViewFilterValue"],
    #     },
    #     page_size: 1,
    #     sort_by: "Title", # accepts Title, VersionCount, CreationDate
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_summaries #=> Array
    #   resp.product_view_summaries[0].id #=> String
    #   resp.product_view_summaries[0].product_id #=> String
    #   resp.product_view_summaries[0].name #=> String
    #   resp.product_view_summaries[0].owner #=> String
    #   resp.product_view_summaries[0].short_description #=> String
    #   resp.product_view_summaries[0].type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.product_view_summaries[0].distributor #=> String
    #   resp.product_view_summaries[0].has_default_path #=> Boolean
    #   resp.product_view_summaries[0].support_email #=> String
    #   resp.product_view_summaries[0].support_description #=> String
    #   resp.product_view_summaries[0].support_url #=> String
    #   resp.product_view_aggregations #=> Hash
    #   resp.product_view_aggregations["ProductViewAggregationType"] #=> Array
    #   resp.product_view_aggregations["ProductViewAggregationType"][0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.product_view_aggregations["ProductViewAggregationType"][0].approximate_count #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProducts AWS API Documentation
    #
    # @overload search_products(params = {})
    # @param [Hash] params ({})
    def search_products(params = {}, options = {})
      req = build_request(:search_products, params)
      req.send_request(options)
    end

    # Gets information about the products for the specified portfolio or all
    # products.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [Hash<String,Array>] :filters
    #   The search filters. If no search filters are specified, the output
    #   includes all products to which the administrator has access.
    #
    # @option params [String] :sort_by
    #   The sort field. If no value is specified, the results are not sorted.
    #
    # @option params [String] :sort_order
    #   The sort order. If no value is specified, the results are not sorted.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :product_source
    #   Access level of the source of the product.
    #
    # @return [Types::SearchProductsAsAdminOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchProductsAsAdminOutput#product_view_details #product_view_details} => Array&lt;Types::ProductViewDetail&gt;
    #   * {Types::SearchProductsAsAdminOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_products_as_admin({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id",
    #     filters: {
    #       "FullTextSearch" => ["ProductViewFilterValue"],
    #     },
    #     sort_by: "Title", # accepts Title, VersionCount, CreationDate
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     page_token: "PageToken",
    #     page_size: 1,
    #     product_source: "ACCOUNT", # accepts ACCOUNT
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_details #=> Array
    #   resp.product_view_details[0].product_view_summary.id #=> String
    #   resp.product_view_details[0].product_view_summary.product_id #=> String
    #   resp.product_view_details[0].product_view_summary.name #=> String
    #   resp.product_view_details[0].product_view_summary.owner #=> String
    #   resp.product_view_details[0].product_view_summary.short_description #=> String
    #   resp.product_view_details[0].product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.product_view_details[0].product_view_summary.distributor #=> String
    #   resp.product_view_details[0].product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_details[0].product_view_summary.support_email #=> String
    #   resp.product_view_details[0].product_view_summary.support_description #=> String
    #   resp.product_view_details[0].product_view_summary.support_url #=> String
    #   resp.product_view_details[0].status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #   resp.product_view_details[0].product_arn #=> String
    #   resp.product_view_details[0].created_time #=> Time
    #   resp.product_view_details[0].source_connection.type #=> String, one of "CODESTAR"
    #   resp.product_view_details[0].source_connection.connection_parameters.code_star.connection_arn #=> String
    #   resp.product_view_details[0].source_connection.connection_parameters.code_star.repository #=> String
    #   resp.product_view_details[0].source_connection.connection_parameters.code_star.branch #=> String
    #   resp.product_view_details[0].source_connection.connection_parameters.code_star.artifact_path #=> String
    #   resp.product_view_details[0].source_connection.last_sync.last_sync_time #=> Time
    #   resp.product_view_details[0].source_connection.last_sync.last_sync_status #=> String, one of "SUCCEEDED", "FAILED"
    #   resp.product_view_details[0].source_connection.last_sync.last_sync_status_message #=> String
    #   resp.product_view_details[0].source_connection.last_sync.last_successful_sync_time #=> Time
    #   resp.product_view_details[0].source_connection.last_sync.last_successful_sync_provisioning_artifact_id #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProductsAsAdmin AWS API Documentation
    #
    # @overload search_products_as_admin(params = {})
    # @param [Hash] params ({})
    def search_products_as_admin(params = {}, options = {})
      req = build_request(:search_products_as_admin, params)
      req.send_request(options)
    end

    # Gets information about the provisioned products that meet the
    # specified criteria.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   The access level to use to obtain results. The default is `Account`.
    #
    # @option params [Hash<String,Array>] :filters
    #   The search filters.
    #
    #   When the key is `SearchQuery`, the searchable fields are `arn`,
    #   `createdTime`, `id`, `lastRecordId`, `idempotencyToken`, `name`,
    #   `physicalId`, `productId`, `provisioningArtifactId`, `type`, `status`,
    #   `tags`, `userArn`, `userArnSession`, `lastProvisioningRecordId`,
    #   `lastSuccessfulProvisioningRecordId`, `productName`, and
    #   `provisioningArtifactName`.
    #
    #   Example: `"SearchQuery":["status:AVAILABLE"]`
    #
    # @option params [String] :sort_by
    #   The sort field. If no value is specified, the results are not sorted.
    #   The valid values are `arn`, `id`, `name`, and `lastRecordId`.
    #
    # @option params [String] :sort_order
    #   The sort order. If no value is specified, the results are not sorted.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::SearchProvisionedProductsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchProvisionedProductsOutput#provisioned_products #provisioned_products} => Array&lt;Types::ProvisionedProductAttribute&gt;
    #   * {Types::SearchProvisionedProductsOutput#total_results_count #total_results_count} => Integer
    #   * {Types::SearchProvisionedProductsOutput#next_page_token #next_page_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_provisioned_products({
    #     accept_language: "AcceptLanguage",
    #     access_level_filter: {
    #       key: "Account", # accepts Account, Role, User
    #       value: "AccessLevelFilterValue",
    #     },
    #     filters: {
    #       "SearchQuery" => ["ProvisionedProductViewFilterValue"],
    #     },
    #     sort_by: "SortField",
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_products #=> Array
    #   resp.provisioned_products[0].name #=> String
    #   resp.provisioned_products[0].arn #=> String
    #   resp.provisioned_products[0].type #=> String
    #   resp.provisioned_products[0].id #=> String
    #   resp.provisioned_products[0].status #=> String, one of "AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"
    #   resp.provisioned_products[0].status_message #=> String
    #   resp.provisioned_products[0].created_time #=> Time
    #   resp.provisioned_products[0].idempotency_token #=> String
    #   resp.provisioned_products[0].last_record_id #=> String
    #   resp.provisioned_products[0].last_provisioning_record_id #=> String
    #   resp.provisioned_products[0].last_successful_provisioning_record_id #=> String
    #   resp.provisioned_products[0].tags #=> Array
    #   resp.provisioned_products[0].tags[0].key #=> String
    #   resp.provisioned_products[0].tags[0].value #=> String
    #   resp.provisioned_products[0].physical_id #=> String
    #   resp.provisioned_products[0].product_id #=> String
    #   resp.provisioned_products[0].product_name #=> String
    #   resp.provisioned_products[0].provisioning_artifact_id #=> String
    #   resp.provisioned_products[0].provisioning_artifact_name #=> String
    #   resp.provisioned_products[0].user_arn #=> String
    #   resp.provisioned_products[0].user_arn_session #=> String
    #   resp.total_results_count #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProvisionedProducts AWS API Documentation
    #
    # @overload search_provisioned_products(params = {})
    # @param [Hash] params ({})
    def search_provisioned_products(params = {}, options = {})
      req = build_request(:search_provisioned_products, params)
      req.send_request(options)
    end

    # Terminates the specified provisioned product.
    #
    # This operation does not delete any records associated with the
    # provisioned product.
    #
    # You can check the status of this request using DescribeRecord.
    #
    # @option params [String] :provisioned_product_name
    #   The name of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #
    # @option params [String] :provisioned_product_id
    #   The identifier of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #
    # @option params [required, String] :terminate_token
    #   An idempotency token that uniquely identifies the termination request.
    #   This token is only valid during the termination process. After the
    #   provisioned product is terminated, subsequent requests to terminate
    #   the same provisioned product always return **ResourceNotFound**.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :ignore_errors
    #   If set to true, Service Catalog stops managing the specified
    #   provisioned product even if it cannot delete the underlying resources.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Boolean] :retain_physical_resources
    #   When this boolean parameter is set to true, the
    #   `TerminateProvisionedProduct` API deletes the Service Catalog
    #   provisioned product. However, it does not remove the CloudFormation
    #   stack, stack set, or the underlying resources of the deleted
    #   provisioned product. The default value is false.
    #
    # @return [Types::TerminateProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateProvisionedProductOutput#record_detail #record_detail} => Types::RecordDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_provisioned_product({
    #     provisioned_product_name: "ProvisionedProductNameOrArn",
    #     provisioned_product_id: "Id",
    #     terminate_token: "IdempotencyToken", # required
    #     ignore_errors: false,
    #     accept_language: "AcceptLanguage",
    #     retain_physical_resources: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #   resp.record_detail.launch_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/TerminateProvisionedProduct AWS API Documentation
    #
    # @overload terminate_provisioned_product(params = {})
    # @param [Hash] params ({})
    def terminate_provisioned_product(params = {}, options = {})
      req = build_request(:terminate_provisioned_product, params)
      req.send_request(options)
    end

    # Updates the specified constraint.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The identifier of the constraint.
    #
    # @option params [String] :description
    #   The updated description of the constraint.
    #
    # @option params [String] :parameters
    #   The constraint parameters, in JSON format. The syntax depends on the
    #   constraint type as follows:
    #
    #   LAUNCH
    #
    #   : You are required to specify either the `RoleArn` or the
    #     `LocalRoleName` but can't use both.
    #
    #     Specify the `RoleArn` property as follows:
    #
    #     `{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}`
    #
    #     Specify the `LocalRoleName` property as follows:
    #
    #     `{"LocalRoleName": "SCBasicLaunchRole"}`
    #
    #     If you specify the `LocalRoleName` property, when an account uses
    #     the launch constraint, the IAM role with that name in the account
    #     will be used. This allows launch-role constraints to be
    #     account-agnostic so the administrator can create fewer resources per
    #     shared account.
    #
    #     <note markdown="1"> The given role name must exist in the account used to create the
    #     launch constraint and the account of the user who launches a product
    #     with this launch constraint.
    #
    #      </note>
    #
    #     You cannot have both a `LAUNCH` and a `STACKSET` constraint.
    #
    #     You also cannot have more than one `LAUNCH` constraint on a product
    #     and portfolio.
    #
    #   NOTIFICATION
    #
    #   : Specify the `NotificationArns` property as follows:
    #
    #     `{"NotificationArns" :
    #     ["arn:aws:sns:us-east-1:123456789012:Topic"]}`
    #
    #   RESOURCE\_UPDATE
    #
    #   : Specify the `TagUpdatesOnProvisionedProduct` property as follows:
    #
    #     `{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}`
    #
    #     The `TagUpdatesOnProvisionedProduct` property accepts a string value
    #     of `ALLOWED` or `NOT_ALLOWED`.
    #
    #   STACKSET
    #
    #   : Specify the `Parameters` property as follows:
    #
    #     `{"Version": "String", "Properties": {"AccountList": [ "String" ],
    #     "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole":
    #     "String"}}`
    #
    #     You cannot have both a `LAUNCH` and a `STACKSET` constraint.
    #
    #     You also cannot have more than one `STACKSET` constraint on a
    #     product and portfolio.
    #
    #     Products with a `STACKSET` constraint will launch an CloudFormation
    #     stack set.
    #
    #   TEMPLATE
    #
    #   : Specify the `Rules` property. For more information, see [Template
    #     Constraint Rules][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html
    #
    # @return [Types::UpdateConstraintOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConstraintOutput#constraint_detail #constraint_detail} => Types::ConstraintDetail
    #   * {Types::UpdateConstraintOutput#constraint_parameters #constraint_parameters} => String
    #   * {Types::UpdateConstraintOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_constraint({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     description: "ConstraintDescription",
    #     parameters: "ConstraintParameters",
    #   })
    #
    # @example Response structure
    #
    #   resp.constraint_detail.constraint_id #=> String
    #   resp.constraint_detail.type #=> String
    #   resp.constraint_detail.description #=> String
    #   resp.constraint_detail.owner #=> String
    #   resp.constraint_detail.product_id #=> String
    #   resp.constraint_detail.portfolio_id #=> String
    #   resp.constraint_parameters #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateConstraint AWS API Documentation
    #
    # @overload update_constraint(params = {})
    # @param [Hash] params ({})
    def update_constraint(params = {}, options = {})
      req = build_request(:update_constraint, params)
      req.send_request(options)
    end

    # Updates the specified portfolio.
    #
    # You cannot update a product that was shared with you.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The portfolio identifier.
    #
    # @option params [String] :display_name
    #   The name to use for display purposes.
    #
    # @option params [String] :description
    #   The updated description of the portfolio.
    #
    # @option params [String] :provider_name
    #   The updated name of the portfolio provider.
    #
    # @option params [Array<Types::Tag>] :add_tags
    #   The tags to add.
    #
    # @option params [Array<String>] :remove_tags
    #   The tags to remove.
    #
    # @return [Types::UpdatePortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePortfolioOutput#portfolio_detail #portfolio_detail} => Types::PortfolioDetail
    #   * {Types::UpdatePortfolioOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portfolio({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     display_name: "PortfolioDisplayName",
    #     description: "PortfolioDescription",
    #     provider_name: "ProviderName",
    #     add_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     remove_tags: ["TagKey"],
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_detail.id #=> String
    #   resp.portfolio_detail.arn #=> String
    #   resp.portfolio_detail.display_name #=> String
    #   resp.portfolio_detail.description #=> String
    #   resp.portfolio_detail.created_time #=> Time
    #   resp.portfolio_detail.provider_name #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdatePortfolio AWS API Documentation
    #
    # @overload update_portfolio(params = {})
    # @param [Hash] params ({})
    def update_portfolio(params = {}, options = {})
      req = build_request(:update_portfolio, params)
      req.send_request(options)
    end

    # Updates the specified portfolio share. You can use this API to enable
    # or disable `TagOptions` sharing or Principal sharing for an existing
    # portfolio share.
    #
    # The portfolio share cannot be updated if the `CreatePortfolioShare`
    # operation is `IN_PROGRESS`, as the share is not available to recipient
    # entities. In this case, you must wait for the portfolio share to be
    # completed.
    #
    # You must provide the `accountId` or organization node in the input,
    # but not both.
    #
    # If the portfolio is shared to both an external account and an
    # organization node, and both shares need to be updated, you must invoke
    # `UpdatePortfolioShare` separately for each share type.
    #
    # This API cannot be used for removing the portfolio share. You must use
    # `DeletePortfolioShare` API for that action.
    #
    # <note markdown="1"> When you associate a principal with portfolio, a potential privilege
    # escalation path may occur when that portfolio is then shared with
    # other accounts. For a user in a recipient account who is *not* an
    # Service Catalog Admin, but still has the ability to create Principals
    # (Users/Groups/Roles), that user could create a role that matches a
    # principal name association for the portfolio. Although this user may
    # not know which principal names are associated through Service Catalog,
    # they may be able to guess the user. If this potential escalation path
    # is a concern, then Service Catalog recommends using `PrincipalType` as
    # `IAM`. With this configuration, the `PrincipalARN` must already exist
    # in the recipient account before it can be associated.
    #
    #  </note>
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The unique identifier of the portfolio for which the share will be
    #   updated.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account Id of the recipient account. This
    #   field is required when updating an external account to account type
    #   share.
    #
    # @option params [Types::OrganizationNode] :organization_node
    #   Information about the organization node.
    #
    # @option params [Boolean] :share_tag_options
    #   Enables or disables `TagOptions` sharing for the portfolio share. If
    #   this field is not provided, the current state of TagOptions sharing on
    #   the portfolio share will not be modified.
    #
    # @option params [Boolean] :share_principals
    #   A flag to enables or disables `Principals` sharing in the portfolio.
    #   If this field is not provided, the current state of the `Principals`
    #   sharing on the portfolio share will not be modified.
    #
    # @return [Types::UpdatePortfolioShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePortfolioShareOutput#portfolio_share_token #portfolio_share_token} => String
    #   * {Types::UpdatePortfolioShareOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portfolio_share({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     account_id: "AccountId",
    #     organization_node: {
    #       type: "ORGANIZATION", # accepts ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT
    #       value: "OrganizationNodeValue",
    #     },
    #     share_tag_options: false,
    #     share_principals: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_share_token #=> String
    #   resp.status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdatePortfolioShare AWS API Documentation
    #
    # @overload update_portfolio_share(params = {})
    # @param [Hash] params ({})
    def update_portfolio_share(params = {}, options = {})
      req = build_request(:update_portfolio_share, params)
      req.send_request(options)
    end

    # Updates the specified product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The product identifier.
    #
    # @option params [String] :name
    #   The updated product name.
    #
    # @option params [String] :owner
    #   The updated owner of the product.
    #
    # @option params [String] :description
    #   The updated description of the product.
    #
    # @option params [String] :distributor
    #   The updated distributor of the product.
    #
    # @option params [String] :support_description
    #   The updated support description for the product.
    #
    # @option params [String] :support_email
    #   The updated support email for the product.
    #
    # @option params [String] :support_url
    #   The updated support URL for the product.
    #
    # @option params [Array<Types::Tag>] :add_tags
    #   The tags to add to the product.
    #
    # @option params [Array<String>] :remove_tags
    #   The tags to remove from the product.
    #
    # @option params [Types::SourceConnection] :source_connection
    #   Specifies connection details for the updated product and syncs the
    #   product to the connection source artifact. This automatically manages
    #   the product's artifacts based on changes to the source. The
    #   `SourceConnection` parameter consists of the following sub-fields.
    #
    #   * `Type`
    #
    #   * `ConnectionParamters`
    #
    # @return [Types::UpdateProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProductOutput#product_view_detail #product_view_detail} => Types::ProductViewDetail
    #   * {Types::UpdateProductOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_product({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     name: "ProductViewName",
    #     owner: "ProductViewOwner",
    #     description: "ProductViewShortDescription",
    #     distributor: "ProductViewOwner",
    #     support_description: "SupportDescription",
    #     support_email: "SupportEmail",
    #     support_url: "SupportUrl",
    #     add_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     remove_tags: ["TagKey"],
    #     source_connection: {
    #       type: "CODESTAR", # accepts CODESTAR
    #       connection_parameters: { # required
    #         code_star: {
    #           connection_arn: "CodeStarConnectionArn", # required
    #           repository: "Repository", # required
    #           branch: "RepositoryBranch", # required
    #           artifact_path: "RepositoryArtifactPath", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_detail.product_view_summary.id #=> String
    #   resp.product_view_detail.product_view_summary.product_id #=> String
    #   resp.product_view_detail.product_view_summary.name #=> String
    #   resp.product_view_detail.product_view_summary.owner #=> String
    #   resp.product_view_detail.product_view_summary.short_description #=> String
    #   resp.product_view_detail.product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.product_view_detail.product_view_summary.distributor #=> String
    #   resp.product_view_detail.product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_detail.product_view_summary.support_email #=> String
    #   resp.product_view_detail.product_view_summary.support_description #=> String
    #   resp.product_view_detail.product_view_summary.support_url #=> String
    #   resp.product_view_detail.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #   resp.product_view_detail.product_arn #=> String
    #   resp.product_view_detail.created_time #=> Time
    #   resp.product_view_detail.source_connection.type #=> String, one of "CODESTAR"
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.connection_arn #=> String
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.repository #=> String
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.branch #=> String
    #   resp.product_view_detail.source_connection.connection_parameters.code_star.artifact_path #=> String
    #   resp.product_view_detail.source_connection.last_sync.last_sync_time #=> Time
    #   resp.product_view_detail.source_connection.last_sync.last_sync_status #=> String, one of "SUCCEEDED", "FAILED"
    #   resp.product_view_detail.source_connection.last_sync.last_sync_status_message #=> String
    #   resp.product_view_detail.source_connection.last_sync.last_successful_sync_time #=> Time
    #   resp.product_view_detail.source_connection.last_sync.last_successful_sync_provisioning_artifact_id #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProduct AWS API Documentation
    #
    # @overload update_product(params = {})
    # @param [Hash] params ({})
    def update_product(params = {}, options = {})
      req = build_request(:update_product, params)
      req.send_request(options)
    end

    # Requests updates to the configuration of the specified provisioned
    # product.
    #
    # If there are tags associated with the object, they cannot be updated
    # or added. Depending on the specific updates requested, this operation
    # can update with no interruption, with some interruption, or replace
    # the provisioned product entirely.
    #
    # You can check the status of this request using DescribeRecord.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :provisioned_product_name
    #   The name of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #
    # @option params [String] :provisioned_product_id
    #   The identifier of the provisioned product. You must provide the name
    #   or ID, but not both.
    #
    # @option params [String] :product_id
    #   The identifier of the product. You must provide the name or ID, but
    #   not both.
    #
    # @option params [String] :product_name
    #   The name of the product. You must provide the name or ID, but not
    #   both.
    #
    # @option params [String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [String] :provisioning_artifact_name
    #   The name of the provisioning artifact. You must provide the name or
    #   ID, but not both.
    #
    # @option params [String] :path_id
    #   The path identifier. This value is optional if the product has a
    #   default path, and required if the product has more than one path. You
    #   must provide the name or ID, but not both.
    #
    # @option params [String] :path_name
    #   The name of the path. You must provide the name or ID, but not both.
    #
    # @option params [Array<Types::UpdateProvisioningParameter>] :provisioning_parameters
    #   The new parameters.
    #
    # @option params [Types::UpdateProvisioningPreferences] :provisioning_preferences
    #   An object that contains information about the provisioning preferences
    #   for a stack set.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags. Requires the product to have `RESOURCE_UPDATE`
    #   constraint with `TagUpdatesOnProvisionedProduct` set to `ALLOWED` to
    #   allow tag updates.
    #
    # @option params [required, String] :update_token
    #   The idempotency token that uniquely identifies the provisioning update
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProvisionedProductOutput#record_detail #record_detail} => Types::RecordDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioned_product({
    #     accept_language: "AcceptLanguage",
    #     provisioned_product_name: "ProvisionedProductNameOrArn",
    #     provisioned_product_id: "Id",
    #     product_id: "Id",
    #     product_name: "ProductViewName",
    #     provisioning_artifact_id: "Id",
    #     provisioning_artifact_name: "ProvisioningArtifactName",
    #     path_id: "Id",
    #     path_name: "PortfolioDisplayName",
    #     provisioning_parameters: [
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue",
    #         use_previous_value: false,
    #       },
    #     ],
    #     provisioning_preferences: {
    #       stack_set_accounts: ["AccountId"],
    #       stack_set_regions: ["Region"],
    #       stack_set_failure_tolerance_count: 1,
    #       stack_set_failure_tolerance_percentage: 1,
    #       stack_set_max_concurrency_count: 1,
    #       stack_set_max_concurrency_percentage: 1,
    #       stack_set_operation_type: "CREATE", # accepts CREATE, UPDATE, DELETE
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     update_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #   resp.record_detail.launch_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisionedProduct AWS API Documentation
    #
    # @overload update_provisioned_product(params = {})
    # @param [Hash] params ({})
    def update_provisioned_product(params = {}, options = {})
      req = build_request(:update_provisioned_product, params)
      req.send_request(options)
    end

    # Requests updates to the properties of the specified provisioned
    # product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :provisioned_product_id
    #   The identifier of the provisioned product.
    #
    # @option params [required, Hash<String,String>] :provisioned_product_properties
    #   A map that contains the provisioned product properties to be updated.
    #
    #   The `LAUNCH_ROLE` key accepts role ARNs. This key allows an
    #   administrator to call `UpdateProvisionedProductProperties` to update
    #   the launch role that is associated with a provisioned product. This
    #   role is used when an end user calls a provisioning operation such as
    #   `UpdateProvisionedProduct`, `TerminateProvisionedProduct`, or
    #   `ExecuteProvisionedProductServiceAction`. Only a role ARN is valid. A
    #   user ARN is invalid.
    #
    #   The `OWNER` key accepts user ARNs, IAM role ARNs, and STS assumed-role
    #   ARNs. The owner is the user that has permission to see, update,
    #   terminate, and execute service actions in the provisioned product.
    #
    #   The administrator can change the owner of a provisioned product to
    #   another IAM or STS entity within the same account. Both end user
    #   owners and administrators can see ownership history of the provisioned
    #   product using the `ListRecordHistory` API. The new owner can describe
    #   all past records for the provisioned product using the
    #   `DescribeRecord` API. The previous owner can no longer use
    #   `DescribeRecord`, but can still see the product's history from when
    #   he was an owner using `ListRecordHistory`.
    #
    #   If a provisioned product ownership is assigned to an end user, they
    #   can see and perform any action through the API or Service Catalog
    #   console such as update, terminate, and execute service actions. If an
    #   end user provisions a product and the owner is updated to someone
    #   else, they will no longer be able to see or perform any actions
    #   through API or the Service Catalog console on that provisioned
    #   product.
    #
    # @option params [required, String] :idempotency_token
    #   The idempotency token that uniquely identifies the provisioning
    #   product update request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateProvisionedProductPropertiesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProvisionedProductPropertiesOutput#provisioned_product_id #provisioned_product_id} => String
    #   * {Types::UpdateProvisionedProductPropertiesOutput#provisioned_product_properties #provisioned_product_properties} => Hash&lt;String,String&gt;
    #   * {Types::UpdateProvisionedProductPropertiesOutput#record_id #record_id} => String
    #   * {Types::UpdateProvisionedProductPropertiesOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioned_product_properties({
    #     accept_language: "AcceptLanguage",
    #     provisioned_product_id: "Id", # required
    #     provisioned_product_properties: { # required
    #       "OWNER" => "PropertyValue",
    #     },
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_product_id #=> String
    #   resp.provisioned_product_properties #=> Hash
    #   resp.provisioned_product_properties["PropertyKey"] #=> String
    #   resp.record_id #=> String
    #   resp.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisionedProductProperties AWS API Documentation
    #
    # @overload update_provisioned_product_properties(params = {})
    # @param [Hash] params ({})
    def update_provisioned_product_properties(params = {}, options = {})
      req = build_request(:update_provisioned_product_properties, params)
      req.send_request(options)
    end

    # Updates the specified provisioning artifact (also known as a version)
    # for the specified product.
    #
    # You cannot update a provisioning artifact for a product that was
    # shared with you.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [String] :name
    #   The updated name of the provisioning artifact.
    #
    # @option params [String] :description
    #   The updated description of the provisioning artifact.
    #
    # @option params [Boolean] :active
    #   Indicates whether the product version is active.
    #
    #   Inactive provisioning artifacts are invisible to end users. End users
    #   cannot launch or update a provisioned product from an inactive
    #   provisioning artifact.
    #
    # @option params [String] :guidance
    #   Information set by the administrator to provide guidance to end users
    #   about which provisioning artifacts to use.
    #
    #   The `DEFAULT` value indicates that the product version is active.
    #
    #   The administrator can set the guidance to `DEPRECATED` to inform users
    #   that the product version is deprecated. Users are able to make updates
    #   to a provisioned product of a deprecated version but cannot launch new
    #   provisioned products using a deprecated version.
    #
    # @return [Types::UpdateProvisioningArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProvisioningArtifactOutput#provisioning_artifact_detail #provisioning_artifact_detail} => Types::ProvisioningArtifactDetail
    #   * {Types::UpdateProvisioningArtifactOutput#info #info} => Hash&lt;String,String&gt;
    #   * {Types::UpdateProvisioningArtifactOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioning_artifact({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     name: "ProvisioningArtifactName",
    #     description: "ProvisioningArtifactDescription",
    #     active: false,
    #     guidance: "DEFAULT", # accepts DEFAULT, DEPRECATED
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_detail.id #=> String
    #   resp.provisioning_artifact_detail.name #=> String
    #   resp.provisioning_artifact_detail.description #=> String
    #   resp.provisioning_artifact_detail.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR", "TERRAFORM_OPEN_SOURCE", "TERRAFORM_CLOUD", "EXTERNAL"
    #   resp.provisioning_artifact_detail.created_time #=> Time
    #   resp.provisioning_artifact_detail.active #=> Boolean
    #   resp.provisioning_artifact_detail.guidance #=> String, one of "DEFAULT", "DEPRECATED"
    #   resp.provisioning_artifact_detail.source_revision #=> String
    #   resp.info #=> Hash
    #   resp.info["ProvisioningArtifactInfoKey"] #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisioningArtifact AWS API Documentation
    #
    # @overload update_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def update_provisioning_artifact(params = {}, options = {})
      req = build_request(:update_provisioning_artifact, params)
      req.send_request(options)
    end

    # Updates a self-service action.
    #
    # @option params [required, String] :id
    #   The self-service action identifier.
    #
    # @option params [String] :name
    #   The self-service action name.
    #
    # @option params [Hash<String,String>] :definition
    #   A map that defines the self-service action.
    #
    # @option params [String] :description
    #   The self-service action description.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @return [Types::UpdateServiceActionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceActionOutput#service_action_detail #service_action_detail} => Types::ServiceActionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_action({
    #     id: "Id", # required
    #     name: "ServiceActionName",
    #     definition: {
    #       "Name" => "ServiceActionDefinitionValue",
    #     },
    #     description: "ServiceActionDescription",
    #     accept_language: "AcceptLanguage",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_action_detail.service_action_summary.id #=> String
    #   resp.service_action_detail.service_action_summary.name #=> String
    #   resp.service_action_detail.service_action_summary.description #=> String
    #   resp.service_action_detail.service_action_summary.definition_type #=> String, one of "SSM_AUTOMATION"
    #   resp.service_action_detail.definition #=> Hash
    #   resp.service_action_detail.definition["ServiceActionDefinitionKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateServiceAction AWS API Documentation
    #
    # @overload update_service_action(params = {})
    # @param [Hash] params ({})
    def update_service_action(params = {}, options = {})
      req = build_request(:update_service_action, params)
      req.send_request(options)
    end

    # Updates the specified TagOption.
    #
    # @option params [required, String] :id
    #   The TagOption identifier.
    #
    # @option params [String] :value
    #   The updated value.
    #
    # @option params [Boolean] :active
    #   The updated active state.
    #
    # @return [Types::UpdateTagOptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTagOptionOutput#tag_option_detail #tag_option_detail} => Types::TagOptionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_tag_option({
    #     id: "TagOptionId", # required
    #     value: "TagOptionValue",
    #     active: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_option_detail.key #=> String
    #   resp.tag_option_detail.value #=> String
    #   resp.tag_option_detail.active #=> Boolean
    #   resp.tag_option_detail.id #=> String
    #   resp.tag_option_detail.owner #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateTagOption AWS API Documentation
    #
    # @overload update_tag_option(params = {})
    # @param [Hash] params ({})
    def update_tag_option(params = {}, options = {})
      req = build_request(:update_tag_option, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ServiceCatalog')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-servicecatalog'
      context[:gem_version] = '1.116.0'
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
