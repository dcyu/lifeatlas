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

module Aws::SavingsPlans
  # An API client for SavingsPlans.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SavingsPlans::Client.new(
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

    @identifier = :savingsplans

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
    add_plugin(Aws::SavingsPlans::Plugins::Endpoints)

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
    #   @option options [Aws::SavingsPlans::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SavingsPlans::EndpointParameters`.
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

    # Creates a Savings Plan.
    #
    # @option params [required, String] :savings_plan_offering_id
    #   The ID of the offering.
    #
    # @option params [required, String] :commitment
    #   The hourly commitment, in the same currency of the
    #   `savingsPlanOfferingId`. This is a value between 0.001 and 1 million.
    #   You cannot specify more than five digits after the decimal point.
    #
    # @option params [String] :upfront_payment_amount
    #   The up-front payment amount. This is a whole number between 50 and 99
    #   percent of the total value of the Savings Plan. This parameter is only
    #   supported if the payment option is `Partial Upfront`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :purchase_time
    #   The purchase time of the Savings Plan in UTC format
    #   (YYYY-MM-DDTHH:MM:SSZ).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   One or more tags.
    #
    # @return [Types::CreateSavingsPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSavingsPlanResponse#savings_plan_id #savings_plan_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_savings_plan({
    #     savings_plan_offering_id: "SavingsPlanOfferingId", # required
    #     commitment: "Amount", # required
    #     upfront_payment_amount: "Amount",
    #     purchase_time: Time.now,
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_plan_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/CreateSavingsPlan AWS API Documentation
    #
    # @overload create_savings_plan(params = {})
    # @param [Hash] params ({})
    def create_savings_plan(params = {}, options = {})
      req = build_request(:create_savings_plan, params)
      req.send_request(options)
    end

    # Deletes the queued purchase for the specified Savings Plan.
    #
    # @option params [required, String] :savings_plan_id
    #   The ID of the Savings Plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queued_savings_plan({
    #     savings_plan_id: "SavingsPlanId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/DeleteQueuedSavingsPlan AWS API Documentation
    #
    # @overload delete_queued_savings_plan(params = {})
    # @param [Hash] params ({})
    def delete_queued_savings_plan(params = {}, options = {})
      req = build_request(:delete_queued_savings_plan, params)
      req.send_request(options)
    end

    # Describes the rates for the specified Savings Plan.
    #
    # @option params [required, String] :savings_plan_id
    #   The ID of the Savings Plan.
    #
    # @option params [Array<Types::SavingsPlanRateFilter>] :filters
    #   The filters.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve additional results, make another call with the returned token
    #   value.
    #
    # @return [Types::DescribeSavingsPlanRatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSavingsPlanRatesResponse#savings_plan_id #savings_plan_id} => String
    #   * {Types::DescribeSavingsPlanRatesResponse#search_results #search_results} => Array&lt;Types::SavingsPlanRate&gt;
    #   * {Types::DescribeSavingsPlanRatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plan_rates({
    #     savings_plan_id: "SavingsPlanId", # required
    #     filters: [
    #       {
    #         name: "region", # accepts region, instanceType, productDescription, tenancy, productType, serviceCode, usageType, operation
    #         values: ["String"],
    #       },
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_plan_id #=> String
    #   resp.search_results #=> Array
    #   resp.search_results[0].rate #=> String
    #   resp.search_results[0].currency #=> String, one of "CNY", "USD"
    #   resp.search_results[0].unit #=> String, one of "Hrs", "Lambda-GB-Second", "Request"
    #   resp.search_results[0].product_type #=> String, one of "EC2", "Fargate", "Lambda", "SageMaker"
    #   resp.search_results[0].service_code #=> String, one of "AmazonEC2", "AmazonECS", "AmazonEKS", "AWSLambda", "AmazonSageMaker"
    #   resp.search_results[0].usage_type #=> String
    #   resp.search_results[0].operation #=> String
    #   resp.search_results[0].properties #=> Array
    #   resp.search_results[0].properties[0].name #=> String, one of "region", "instanceType", "instanceFamily", "productDescription", "tenancy"
    #   resp.search_results[0].properties[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/DescribeSavingsPlanRates AWS API Documentation
    #
    # @overload describe_savings_plan_rates(params = {})
    # @param [Hash] params ({})
    def describe_savings_plan_rates(params = {}, options = {})
      req = build_request(:describe_savings_plan_rates, params)
      req.send_request(options)
    end

    # Describes the specified Savings Plans.
    #
    # @option params [Array<String>] :savings_plan_arns
    #   The Amazon Resource Names (ARN) of the Savings Plans.
    #
    # @option params [Array<String>] :savings_plan_ids
    #   The IDs of the Savings Plans.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve additional results, make another call with the returned token
    #   value.
    #
    # @option params [Array<String>] :states
    #   The current states of the Savings Plans.
    #
    # @option params [Array<Types::SavingsPlanFilter>] :filters
    #   The filters.
    #
    # @return [Types::DescribeSavingsPlansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSavingsPlansResponse#savings_plans #savings_plans} => Array&lt;Types::SavingsPlan&gt;
    #   * {Types::DescribeSavingsPlansResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plans({
    #     savings_plan_arns: ["SavingsPlanArn"],
    #     savings_plan_ids: ["SavingsPlanId"],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     states: ["payment-pending"], # accepts payment-pending, payment-failed, active, retired, queued, queued-deleted, pending-return, returned
    #     filters: [
    #       {
    #         name: "region", # accepts region, ec2-instance-family, commitment, upfront, term, savings-plan-type, payment-option, start, end
    #         values: ["String"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_plans #=> Array
    #   resp.savings_plans[0].offering_id #=> String
    #   resp.savings_plans[0].savings_plan_id #=> String
    #   resp.savings_plans[0].savings_plan_arn #=> String
    #   resp.savings_plans[0].description #=> String
    #   resp.savings_plans[0].start #=> String
    #   resp.savings_plans[0].end #=> String
    #   resp.savings_plans[0].state #=> String, one of "payment-pending", "payment-failed", "active", "retired", "queued", "queued-deleted", "pending-return", "returned"
    #   resp.savings_plans[0].region #=> String
    #   resp.savings_plans[0].ec2_instance_family #=> String
    #   resp.savings_plans[0].savings_plan_type #=> String, one of "Compute", "EC2Instance", "SageMaker"
    #   resp.savings_plans[0].payment_option #=> String, one of "All Upfront", "Partial Upfront", "No Upfront"
    #   resp.savings_plans[0].product_types #=> Array
    #   resp.savings_plans[0].product_types[0] #=> String, one of "EC2", "Fargate", "Lambda", "SageMaker"
    #   resp.savings_plans[0].currency #=> String, one of "CNY", "USD"
    #   resp.savings_plans[0].commitment #=> String
    #   resp.savings_plans[0].upfront_payment_amount #=> String
    #   resp.savings_plans[0].recurring_payment_amount #=> String
    #   resp.savings_plans[0].term_duration_in_seconds #=> Integer
    #   resp.savings_plans[0].tags #=> Hash
    #   resp.savings_plans[0].tags["TagKey"] #=> String
    #   resp.savings_plans[0].returnable_until #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/DescribeSavingsPlans AWS API Documentation
    #
    # @overload describe_savings_plans(params = {})
    # @param [Hash] params ({})
    def describe_savings_plans(params = {}, options = {})
      req = build_request(:describe_savings_plans, params)
      req.send_request(options)
    end

    # Describes the offering rates for the specified Savings Plans.
    #
    # @option params [Array<String>] :savings_plan_offering_ids
    #   The IDs of the offerings.
    #
    # @option params [Array<String>] :savings_plan_payment_options
    #   The payment options.
    #
    # @option params [Array<String>] :savings_plan_types
    #   The plan types.
    #
    # @option params [Array<String>] :products
    #   The Amazon Web Services products.
    #
    # @option params [Array<String>] :service_codes
    #   The services.
    #
    # @option params [Array<String>] :usage_types
    #   The usage details of the line item in the billing report.
    #
    # @option params [Array<String>] :operations
    #   The specific Amazon Web Services operation for the line item in the
    #   billing report.
    #
    # @option params [Array<Types::SavingsPlanOfferingRateFilterElement>] :filters
    #   The filters.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve additional results, make another call with the returned token
    #   value.
    #
    # @return [Types::DescribeSavingsPlansOfferingRatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSavingsPlansOfferingRatesResponse#search_results #search_results} => Array&lt;Types::SavingsPlanOfferingRate&gt;
    #   * {Types::DescribeSavingsPlansOfferingRatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plans_offering_rates({
    #     savings_plan_offering_ids: ["UUID"],
    #     savings_plan_payment_options: ["All Upfront"], # accepts All Upfront, Partial Upfront, No Upfront
    #     savings_plan_types: ["Compute"], # accepts Compute, EC2Instance, SageMaker
    #     products: ["EC2"], # accepts EC2, Fargate, Lambda, SageMaker
    #     service_codes: ["AmazonEC2"], # accepts AmazonEC2, AmazonECS, AmazonEKS, AWSLambda, AmazonSageMaker
    #     usage_types: ["SavingsPlanRateUsageType"],
    #     operations: ["SavingsPlanRateOperation"],
    #     filters: [
    #       {
    #         name: "region", # accepts region, instanceFamily, instanceType, productDescription, tenancy, productId
    #         values: ["JsonSafeFilterValueString"],
    #       },
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.search_results #=> Array
    #   resp.search_results[0].savings_plan_offering.offering_id #=> String
    #   resp.search_results[0].savings_plan_offering.payment_option #=> String, one of "All Upfront", "Partial Upfront", "No Upfront"
    #   resp.search_results[0].savings_plan_offering.plan_type #=> String, one of "Compute", "EC2Instance", "SageMaker"
    #   resp.search_results[0].savings_plan_offering.duration_seconds #=> Integer
    #   resp.search_results[0].savings_plan_offering.currency #=> String, one of "CNY", "USD"
    #   resp.search_results[0].savings_plan_offering.plan_description #=> String
    #   resp.search_results[0].rate #=> String
    #   resp.search_results[0].unit #=> String, one of "Hrs", "Lambda-GB-Second", "Request"
    #   resp.search_results[0].product_type #=> String, one of "EC2", "Fargate", "Lambda", "SageMaker"
    #   resp.search_results[0].service_code #=> String, one of "AmazonEC2", "AmazonECS", "AmazonEKS", "AWSLambda", "AmazonSageMaker"
    #   resp.search_results[0].usage_type #=> String
    #   resp.search_results[0].operation #=> String
    #   resp.search_results[0].properties #=> Array
    #   resp.search_results[0].properties[0].name #=> String
    #   resp.search_results[0].properties[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/DescribeSavingsPlansOfferingRates AWS API Documentation
    #
    # @overload describe_savings_plans_offering_rates(params = {})
    # @param [Hash] params ({})
    def describe_savings_plans_offering_rates(params = {}, options = {})
      req = build_request(:describe_savings_plans_offering_rates, params)
      req.send_request(options)
    end

    # Describes the offerings for the specified Savings Plans.
    #
    # @option params [Array<String>] :offering_ids
    #   The IDs of the offerings.
    #
    # @option params [Array<String>] :payment_options
    #   The payment options.
    #
    # @option params [String] :product_type
    #   The product type.
    #
    # @option params [Array<String>] :plan_types
    #   The plan types.
    #
    # @option params [Array<Integer>] :durations
    #   The duration, in seconds.
    #
    # @option params [Array<String>] :currencies
    #   The currencies.
    #
    # @option params [Array<String>] :descriptions
    #   The descriptions.
    #
    # @option params [Array<String>] :service_codes
    #   The services.
    #
    # @option params [Array<String>] :usage_types
    #   The usage details of the line item in the billing report.
    #
    # @option params [Array<String>] :operations
    #   The specific Amazon Web Services operation for the line item in the
    #   billing report.
    #
    # @option params [Array<Types::SavingsPlanOfferingFilterElement>] :filters
    #   The filters.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve additional results, make another call with the returned token
    #   value.
    #
    # @return [Types::DescribeSavingsPlansOfferingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSavingsPlansOfferingsResponse#search_results #search_results} => Array&lt;Types::SavingsPlanOffering&gt;
    #   * {Types::DescribeSavingsPlansOfferingsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_savings_plans_offerings({
    #     offering_ids: ["UUID"],
    #     payment_options: ["All Upfront"], # accepts All Upfront, Partial Upfront, No Upfront
    #     product_type: "EC2", # accepts EC2, Fargate, Lambda, SageMaker
    #     plan_types: ["Compute"], # accepts Compute, EC2Instance, SageMaker
    #     durations: [1],
    #     currencies: ["CNY"], # accepts CNY, USD
    #     descriptions: ["SavingsPlanDescription"],
    #     service_codes: ["SavingsPlanServiceCode"],
    #     usage_types: ["SavingsPlanUsageType"],
    #     operations: ["SavingsPlanOperation"],
    #     filters: [
    #       {
    #         name: "region", # accepts region, instanceFamily
    #         values: ["JsonSafeFilterValueString"],
    #       },
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.search_results #=> Array
    #   resp.search_results[0].offering_id #=> String
    #   resp.search_results[0].product_types #=> Array
    #   resp.search_results[0].product_types[0] #=> String, one of "EC2", "Fargate", "Lambda", "SageMaker"
    #   resp.search_results[0].plan_type #=> String, one of "Compute", "EC2Instance", "SageMaker"
    #   resp.search_results[0].description #=> String
    #   resp.search_results[0].payment_option #=> String, one of "All Upfront", "Partial Upfront", "No Upfront"
    #   resp.search_results[0].duration_seconds #=> Integer
    #   resp.search_results[0].currency #=> String, one of "CNY", "USD"
    #   resp.search_results[0].service_code #=> String
    #   resp.search_results[0].usage_type #=> String
    #   resp.search_results[0].operation #=> String
    #   resp.search_results[0].properties #=> Array
    #   resp.search_results[0].properties[0].name #=> String, one of "region", "instanceFamily"
    #   resp.search_results[0].properties[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/DescribeSavingsPlansOfferings AWS API Documentation
    #
    # @overload describe_savings_plans_offerings(params = {})
    # @param [Hash] params ({})
    def describe_savings_plans_offerings(params = {}, options = {})
      req = build_request(:describe_savings_plans_offerings, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "SavingsPlanArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns the specified Savings Plan.
    #
    # @option params [required, String] :savings_plan_id
    #   The ID of the Savings Plan.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ReturnSavingsPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReturnSavingsPlanResponse#savings_plan_id #savings_plan_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.return_savings_plan({
    #     savings_plan_id: "SavingsPlanId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.savings_plan_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/ReturnSavingsPlan AWS API Documentation
    #
    # @overload return_savings_plan(params = {})
    # @param [Hash] params ({})
    def return_savings_plan(params = {}, options = {})
      req = build_request(:return_savings_plan, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   One or more tags. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "SavingsPlanArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "SavingsPlanArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/savingsplans-2019-06-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SavingsPlans')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-savingsplans'
      context[:gem_version] = '1.61.0'
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
