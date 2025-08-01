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

module Aws::SESV2
  # An API client for SESV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SESV2::Client.new(
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

    @identifier = :sesv2

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
    add_plugin(Aws::SESV2::Plugins::Endpoints)

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
    #   @option options [Aws::SESV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SESV2::EndpointParameters`.
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

    # Retrieves batches of metric data collected based on your sending
    # activity.
    #
    # You can execute this operation no more than 16 times per second, and
    # with at most 160 queries from the batches per second (cumulative).
    #
    # @option params [required, Array<Types::BatchGetMetricDataQuery>] :queries
    #   A list of queries for metrics to be retrieved.
    #
    # @return [Types::BatchGetMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetMetricDataResponse#results #results} => Array&lt;Types::MetricDataResult&gt;
    #   * {Types::BatchGetMetricDataResponse#errors #errors} => Array&lt;Types::MetricDataError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_metric_data({
    #     queries: [ # required
    #       {
    #         id: "QueryIdentifier", # required
    #         namespace: "VDM", # required, accepts VDM
    #         metric: "SEND", # required, accepts SEND, COMPLAINT, PERMANENT_BOUNCE, TRANSIENT_BOUNCE, OPEN, CLICK, DELIVERY, DELIVERY_OPEN, DELIVERY_CLICK, DELIVERY_COMPLAINT
    #         dimensions: {
    #           "EMAIL_IDENTITY" => "MetricDimensionValue",
    #         },
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].id #=> String
    #   resp.results[0].timestamps #=> Array
    #   resp.results[0].timestamps[0] #=> Time
    #   resp.results[0].values #=> Array
    #   resp.results[0].values[0] #=> Integer
    #   resp.errors #=> Array
    #   resp.errors[0].id #=> String
    #   resp.errors[0].code #=> String, one of "INTERNAL_FAILURE", "ACCESS_DENIED"
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/BatchGetMetricData AWS API Documentation
    #
    # @overload batch_get_metric_data(params = {})
    # @param [Hash] params ({})
    def batch_get_metric_data(params = {}, options = {})
      req = build_request(:batch_get_metric_data, params)
      req.send_request(options)
    end

    # Cancels an export job.
    #
    # @option params [required, String] :job_id
    #   The export job ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Cancel export job
    #
    #   # Cancels the export job with ID ef28cf62-9d8e-4b60-9283-b09816c99a99
    #
    #   resp = client.cancel_export_job({
    #     job_id: "ef28cf62-9d8e-4b60-9283-b09816c99a99", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_export_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CancelExportJob AWS API Documentation
    #
    # @overload cancel_export_job(params = {})
    # @param [Hash] params ({})
    def cancel_export_job(params = {}, options = {})
      req = build_request(:cancel_export_job, params)
      req.send_request(options)
    end

    # Create a configuration set. *Configuration sets* are groups of rules
    # that you can apply to the emails that you send. You apply a
    # configuration set to an email by specifying the name of the
    # configuration set when you call the Amazon SES API v2. When you apply
    # a configuration set to an email, all of the rules in that
    # configuration set are applied to the email.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set. The name can contain up to 64
    #   alphanumeric characters, including letters, numbers, hyphens (-) and
    #   underscores (\_) only.
    #
    # @option params [Types::TrackingOptions] :tracking_options
    #   An object that defines the open and click tracking options for emails
    #   that you send using the configuration set.
    #
    # @option params [Types::DeliveryOptions] :delivery_options
    #   An object that defines the dedicated IP pool that is used to send
    #   emails that you send using the configuration set.
    #
    # @option params [Types::ReputationOptions] :reputation_options
    #   An object that defines whether or not Amazon SES collects reputation
    #   metrics for the emails that you send that use the configuration set.
    #
    # @option params [Types::SendingOptions] :sending_options
    #   An object that defines whether or not Amazon SES can send email that
    #   you send using the configuration set.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of objects that define the tags (keys and values) to
    #   associate with the configuration set.
    #
    # @option params [Types::SuppressionOptions] :suppression_options
    #   An object that contains information about the suppression list
    #   preferences for your account.
    #
    # @option params [Types::VdmOptions] :vdm_options
    #   An object that defines the VDM options for emails that you send using
    #   the configuration set.
    #
    # @option params [Types::ArchivingOptions] :archiving_options
    #   An object that defines the MailManager archiving options for emails
    #   that you send using the configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tracking_options: {
    #       custom_redirect_domain: "CustomRedirectDomain", # required
    #       https_policy: "REQUIRE", # accepts REQUIRE, REQUIRE_OPEN_ONLY, OPTIONAL
    #     },
    #     delivery_options: {
    #       tls_policy: "REQUIRE", # accepts REQUIRE, OPTIONAL
    #       sending_pool_name: "PoolName",
    #       max_delivery_seconds: 1,
    #     },
    #     reputation_options: {
    #       reputation_metrics_enabled: false,
    #       last_fresh_start: Time.now,
    #     },
    #     sending_options: {
    #       sending_enabled: false,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     suppression_options: {
    #       suppressed_reasons: ["BOUNCE"], # accepts BOUNCE, COMPLAINT
    #     },
    #     vdm_options: {
    #       dashboard_options: {
    #         engagement_metrics: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       guardian_options: {
    #         optimized_shared_delivery: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     archiving_options: {
    #       archive_arn: "ArchiveArn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateConfigurationSet AWS API Documentation
    #
    # @overload create_configuration_set(params = {})
    # @param [Hash] params ({})
    def create_configuration_set(params = {}, options = {})
      req = build_request(:create_configuration_set, params)
      req.send_request(options)
    end

    # Create an event destination. *Events* include message sends,
    # deliveries, opens, clicks, bounces, and complaints. *Event
    # destinations* are places that you can send information about these
    # events to. For example, you can send event data to Amazon EventBridge
    # and associate a rule to send the event to the specified target.
    #
    # A single configuration set can include more than one event
    # destination.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set .
    #
    # @option params [required, String] :event_destination_name
    #   A name that identifies the event destination within the configuration
    #   set.
    #
    # @option params [required, Types::EventDestinationDefinition] :event_destination
    #   An object that defines the event destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set_event_destination({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #     event_destination: { # required
    #       enabled: false,
    #       matching_event_types: ["SEND"], # accepts SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE, DELIVERY_DELAY, SUBSCRIPTION
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "MESSAGE_TAG", # required, accepts MESSAGE_TAG, EMAIL_HEADER, LINK_TAG
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           },
    #         ],
    #       },
    #       sns_destination: {
    #         topic_arn: "AmazonResourceName", # required
    #       },
    #       event_bridge_destination: {
    #         event_bus_arn: "AmazonResourceName", # required
    #       },
    #       pinpoint_destination: {
    #         application_arn: "AmazonResourceName",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateConfigurationSetEventDestination AWS API Documentation
    #
    # @overload create_configuration_set_event_destination(params = {})
    # @param [Hash] params ({})
    def create_configuration_set_event_destination(params = {}, options = {})
      req = build_request(:create_configuration_set_event_destination, params)
      req.send_request(options)
    end

    # Creates a contact, which is an end-user who is receiving the email,
    # and adds them to a contact list.
    #
    # @option params [required, String] :contact_list_name
    #   The name of the contact list to which the contact should be added.
    #
    # @option params [required, String] :email_address
    #   The contact's email address.
    #
    # @option params [Array<Types::TopicPreference>] :topic_preferences
    #   The contact's preferences for being opted-in to or opted-out of
    #   topics.
    #
    # @option params [Boolean] :unsubscribe_all
    #   A boolean value status noting if the contact is unsubscribed from all
    #   contact list topics.
    #
    # @option params [String] :attributes_data
    #   The attribute data attached to a contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact({
    #     contact_list_name: "ContactListName", # required
    #     email_address: "EmailAddress", # required
    #     topic_preferences: [
    #       {
    #         topic_name: "TopicName", # required
    #         subscription_status: "OPT_IN", # required, accepts OPT_IN, OPT_OUT
    #       },
    #     ],
    #     unsubscribe_all: false,
    #     attributes_data: "AttributesData",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateContact AWS API Documentation
    #
    # @overload create_contact(params = {})
    # @param [Hash] params ({})
    def create_contact(params = {}, options = {})
      req = build_request(:create_contact, params)
      req.send_request(options)
    end

    # Creates a contact list.
    #
    # @option params [required, String] :contact_list_name
    #   The name of the contact list.
    #
    # @option params [Array<Types::Topic>] :topics
    #   An interest group, theme, or label within a list. A contact list can
    #   have multiple topics.
    #
    # @option params [String] :description
    #   A description of what the contact list is about.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with a contact list.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_list({
    #     contact_list_name: "ContactListName", # required
    #     topics: [
    #       {
    #         topic_name: "TopicName", # required
    #         display_name: "DisplayName", # required
    #         description: "Description",
    #         default_subscription_status: "OPT_IN", # required, accepts OPT_IN, OPT_OUT
    #       },
    #     ],
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateContactList AWS API Documentation
    #
    # @overload create_contact_list(params = {})
    # @param [Hash] params ({})
    def create_contact_list(params = {}, options = {})
      req = build_request(:create_contact_list, params)
      req.send_request(options)
    end

    # Creates a new custom verification email template.
    #
    # For more information about custom verification email templates, see
    # [Using custom verification email templates][1] in the *Amazon SES
    # Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
    #
    # @option params [required, String] :template_name
    #   The name of the custom verification email template.
    #
    # @option params [required, String] :from_email_address
    #   The email address that the custom verification email is sent from.
    #
    # @option params [required, String] :template_subject
    #   The subject line of the custom verification email.
    #
    # @option params [required, String] :template_content
    #   The content of the custom verification email. The total size of the
    #   email must be less than 10 MB. The message body may contain HTML, with
    #   some limitations. For more information, see [Custom verification email
    #   frequently asked questions][1] in the *Amazon SES Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom-faq
    #
    # @option params [required, String] :success_redirection_url
    #   The URL that the recipient of the verification email is sent to if his
    #   or her address is successfully verified.
    #
    # @option params [required, String] :failure_redirection_url
    #   The URL that the recipient of the verification email is sent to if his
    #   or her address is not successfully verified.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_verification_email_template({
    #     template_name: "EmailTemplateName", # required
    #     from_email_address: "EmailAddress", # required
    #     template_subject: "EmailTemplateSubject", # required
    #     template_content: "TemplateContent", # required
    #     success_redirection_url: "SuccessRedirectionURL", # required
    #     failure_redirection_url: "FailureRedirectionURL", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateCustomVerificationEmailTemplate AWS API Documentation
    #
    # @overload create_custom_verification_email_template(params = {})
    # @param [Hash] params ({})
    def create_custom_verification_email_template(params = {}, options = {})
      req = build_request(:create_custom_verification_email_template, params)
      req.send_request(options)
    end

    # Create a new pool of dedicated IP addresses. A pool can include one or
    # more dedicated IP addresses that are associated with your Amazon Web
    # Services account. You can associate a pool with a configuration set.
    # When you send an email that uses that configuration set, the message
    # is sent from one of the addresses in the associated pool.
    #
    # @option params [required, String] :pool_name
    #   The name of the dedicated IP pool.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An object that defines the tags (keys and values) that you want to
    #   associate with the pool.
    #
    # @option params [String] :scaling_mode
    #   The type of scaling mode.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dedicated_ip_pool({
    #     pool_name: "PoolName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     scaling_mode: "STANDARD", # accepts STANDARD, MANAGED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateDedicatedIpPool AWS API Documentation
    #
    # @overload create_dedicated_ip_pool(params = {})
    # @param [Hash] params ({})
    def create_dedicated_ip_pool(params = {}, options = {})
      req = build_request(:create_dedicated_ip_pool, params)
      req.send_request(options)
    end

    # Create a new predictive inbox placement test. Predictive inbox
    # placement tests can help you predict how your messages will be handled
    # by various email providers around the world. When you perform a
    # predictive inbox placement test, you provide a sample message that
    # contains the content that you plan to send to your customers. Amazon
    # SES then sends that message to special email addresses spread across
    # several major email providers. After about 24 hours, the test is
    # complete, and you can use the `GetDeliverabilityTestReport` operation
    # to view the results of the test.
    #
    # @option params [String] :report_name
    #   A unique name that helps you to identify the predictive inbox
    #   placement test when you retrieve the results.
    #
    # @option params [required, String] :from_email_address
    #   The email address that the predictive inbox placement test email was
    #   sent from.
    #
    # @option params [required, Types::EmailContent] :content
    #   The HTML body of the message that you sent when you performed the
    #   predictive inbox placement test.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of objects that define the tags (keys and values) that you
    #   want to associate with the predictive inbox placement test.
    #
    # @return [Types::CreateDeliverabilityTestReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeliverabilityTestReportResponse#report_id #report_id} => String
    #   * {Types::CreateDeliverabilityTestReportResponse#deliverability_test_status #deliverability_test_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deliverability_test_report({
    #     report_name: "ReportName",
    #     from_email_address: "EmailAddress", # required
    #     content: { # required
    #       simple: {
    #         subject: { # required
    #           data: "MessageData", # required
    #           charset: "Charset",
    #         },
    #         body: { # required
    #           text: {
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #           html: {
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #         },
    #         headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           },
    #         ],
    #         attachments: [
    #           {
    #             raw_content: "data", # required
    #             content_disposition: "ATTACHMENT", # accepts ATTACHMENT, INLINE
    #             file_name: "AttachmentFileName", # required
    #             content_description: "AttachmentContentDescription",
    #             content_id: "AttachmentContentId",
    #             content_transfer_encoding: "BASE64", # accepts BASE64, QUOTED_PRINTABLE, SEVEN_BIT
    #             content_type: "AttachmentContentType",
    #           },
    #         ],
    #       },
    #       raw: {
    #         data: "data", # required
    #       },
    #       template: {
    #         template_name: "EmailTemplateName",
    #         template_arn: "AmazonResourceName",
    #         template_content: {
    #           subject: "EmailTemplateSubject",
    #           text: "EmailTemplateText",
    #           html: "EmailTemplateHtml",
    #         },
    #         template_data: "EmailTemplateData",
    #         headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           },
    #         ],
    #         attachments: [
    #           {
    #             raw_content: "data", # required
    #             content_disposition: "ATTACHMENT", # accepts ATTACHMENT, INLINE
    #             file_name: "AttachmentFileName", # required
    #             content_description: "AttachmentContentDescription",
    #             content_id: "AttachmentContentId",
    #             content_transfer_encoding: "BASE64", # accepts BASE64, QUOTED_PRINTABLE, SEVEN_BIT
    #             content_type: "AttachmentContentType",
    #           },
    #         ],
    #       },
    #     },
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
    #   resp.report_id #=> String
    #   resp.deliverability_test_status #=> String, one of "IN_PROGRESS", "COMPLETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateDeliverabilityTestReport AWS API Documentation
    #
    # @overload create_deliverability_test_report(params = {})
    # @param [Hash] params ({})
    def create_deliverability_test_report(params = {}, options = {})
      req = build_request(:create_deliverability_test_report, params)
      req.send_request(options)
    end

    # Starts the process of verifying an email identity. An *identity* is an
    # email address or domain that you use when you send email. Before you
    # can use an identity to send email, you first have to verify it. By
    # verifying an identity, you demonstrate that you're the owner of the
    # identity, and that you've given Amazon SES API v2 permission to send
    # email from the identity.
    #
    # When you verify an email address, Amazon SES sends an email to the
    # address. Your email address is verified as soon as you follow the link
    # in the verification email.
    #
    # When you verify a domain without specifying the
    # `DkimSigningAttributes` object, this operation provides a set of DKIM
    # tokens. You can convert these tokens into CNAME records, which you
    # then add to the DNS configuration for your domain. Your domain is
    # verified when Amazon SES detects these records in the DNS
    # configuration for your domain. This verification method is known as
    # [Easy DKIM][1].
    #
    # Alternatively, you can perform the verification process by providing
    # your own public-private key pair. This verification method is known as
    # Bring Your Own DKIM (BYODKIM). To use BYODKIM, your call to the
    # `CreateEmailIdentity` operation has to include the
    # `DkimSigningAttributes` object. When you specify this object, you
    # provide a selector (a component of the DNS record name that identifies
    # the public key to use for DKIM authentication) and a private key.
    #
    # When you verify a domain, this operation provides a set of DKIM
    # tokens, which you can convert into CNAME tokens. You add these CNAME
    # tokens to the DNS configuration for your domain. Your domain is
    # verified when Amazon SES detects these records in the DNS
    # configuration for your domain. For some DNS providers, it can take 72
    # hours or more to complete the domain verification process.
    #
    # Additionally, you can associate an existing configuration set with the
    # email identity that you're verifying.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #
    # @option params [required, String] :email_identity
    #   The email address or domain to verify.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of objects that define the tags (keys and values) to
    #   associate with the email identity.
    #
    # @option params [Types::DkimSigningAttributes] :dkim_signing_attributes
    #   If your request includes this object, Amazon SES configures the
    #   identity to use Bring Your Own DKIM (BYODKIM) for DKIM authentication
    #   purposes, or, configures the key length to be used for [Easy DKIM][1].
    #
    #   You can only specify this object if the email identity is a domain, as
    #   opposed to an address.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #
    # @option params [String] :configuration_set_name
    #   The configuration set to use by default when sending from this
    #   identity. Note that any configuration set defined in the email sending
    #   request takes precedence.
    #
    # @return [Types::CreateEmailIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEmailIdentityResponse#identity_type #identity_type} => String
    #   * {Types::CreateEmailIdentityResponse#verified_for_sending_status #verified_for_sending_status} => Boolean
    #   * {Types::CreateEmailIdentityResponse#dkim_attributes #dkim_attributes} => Types::DkimAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_email_identity({
    #     email_identity: "Identity", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     dkim_signing_attributes: {
    #       domain_signing_selector: "Selector",
    #       domain_signing_private_key: "PrivateKey",
    #       next_signing_key_length: "RSA_1024_BIT", # accepts RSA_1024_BIT, RSA_2048_BIT
    #       domain_signing_attributes_origin: "AWS_SES", # accepts AWS_SES, EXTERNAL, AWS_SES_AF_SOUTH_1, AWS_SES_EU_NORTH_1, AWS_SES_AP_SOUTH_1, AWS_SES_EU_WEST_3, AWS_SES_EU_WEST_2, AWS_SES_EU_SOUTH_1, AWS_SES_EU_WEST_1, AWS_SES_AP_NORTHEAST_3, AWS_SES_AP_NORTHEAST_2, AWS_SES_ME_SOUTH_1, AWS_SES_AP_NORTHEAST_1, AWS_SES_IL_CENTRAL_1, AWS_SES_SA_EAST_1, AWS_SES_CA_CENTRAL_1, AWS_SES_AP_SOUTHEAST_1, AWS_SES_AP_SOUTHEAST_2, AWS_SES_AP_SOUTHEAST_3, AWS_SES_EU_CENTRAL_1, AWS_SES_US_EAST_1, AWS_SES_US_EAST_2, AWS_SES_US_WEST_1, AWS_SES_US_WEST_2, AWS_SES_ME_CENTRAL_1, AWS_SES_AP_SOUTH_2, AWS_SES_EU_CENTRAL_2
    #     },
    #     configuration_set_name: "ConfigurationSetName",
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_type #=> String, one of "EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"
    #   resp.verified_for_sending_status #=> Boolean
    #   resp.dkim_attributes.signing_enabled #=> Boolean
    #   resp.dkim_attributes.status #=> String, one of "PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"
    #   resp.dkim_attributes.tokens #=> Array
    #   resp.dkim_attributes.tokens[0] #=> String
    #   resp.dkim_attributes.signing_attributes_origin #=> String, one of "AWS_SES", "EXTERNAL", "AWS_SES_AF_SOUTH_1", "AWS_SES_EU_NORTH_1", "AWS_SES_AP_SOUTH_1", "AWS_SES_EU_WEST_3", "AWS_SES_EU_WEST_2", "AWS_SES_EU_SOUTH_1", "AWS_SES_EU_WEST_1", "AWS_SES_AP_NORTHEAST_3", "AWS_SES_AP_NORTHEAST_2", "AWS_SES_ME_SOUTH_1", "AWS_SES_AP_NORTHEAST_1", "AWS_SES_IL_CENTRAL_1", "AWS_SES_SA_EAST_1", "AWS_SES_CA_CENTRAL_1", "AWS_SES_AP_SOUTHEAST_1", "AWS_SES_AP_SOUTHEAST_2", "AWS_SES_AP_SOUTHEAST_3", "AWS_SES_EU_CENTRAL_1", "AWS_SES_US_EAST_1", "AWS_SES_US_EAST_2", "AWS_SES_US_WEST_1", "AWS_SES_US_WEST_2", "AWS_SES_ME_CENTRAL_1", "AWS_SES_AP_SOUTH_2", "AWS_SES_EU_CENTRAL_2"
    #   resp.dkim_attributes.next_signing_key_length #=> String, one of "RSA_1024_BIT", "RSA_2048_BIT"
    #   resp.dkim_attributes.current_signing_key_length #=> String, one of "RSA_1024_BIT", "RSA_2048_BIT"
    #   resp.dkim_attributes.last_key_generation_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateEmailIdentity AWS API Documentation
    #
    # @overload create_email_identity(params = {})
    # @param [Hash] params ({})
    def create_email_identity(params = {}, options = {})
      req = build_request(:create_email_identity, params)
      req.send_request(options)
    end

    # Creates the specified sending authorization policy for the given
    # identity (an email address or a domain).
    #
    # <note markdown="1"> This API is for the identity owner only. If you have not verified the
    # identity, this API will return an error.
    #
    #  </note>
    #
    # Sending authorization is a feature that enables an identity owner to
    # authorize other senders to use its identities. For information about
    # using sending authorization, see the [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [required, String] :email_identity
    #   The email identity.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    #   The policy name cannot exceed 64 characters and can only include
    #   alphanumeric characters, dashes, and underscores.
    #
    # @option params [required, String] :policy
    #   The text of the policy in JSON format. The policy cannot exceed 4 KB.
    #
    #   For information about the syntax of sending authorization policies,
    #   see the [Amazon SES Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_email_identity_policy({
    #     email_identity: "Identity", # required
    #     policy_name: "PolicyName", # required
    #     policy: "Policy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateEmailIdentityPolicy AWS API Documentation
    #
    # @overload create_email_identity_policy(params = {})
    # @param [Hash] params ({})
    def create_email_identity_policy(params = {}, options = {})
      req = build_request(:create_email_identity_policy, params)
      req.send_request(options)
    end

    # Creates an email template. Email templates enable you to send
    # personalized email to one or more destinations in a single API
    # operation. For more information, see the [Amazon SES Developer
    # Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html
    #
    # @option params [required, String] :template_name
    #   The name of the template.
    #
    # @option params [required, Types::EmailTemplateContent] :template_content
    #   The content of the email template, composed of a subject line, an HTML
    #   part, and a text-only part.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_email_template({
    #     template_name: "EmailTemplateName", # required
    #     template_content: { # required
    #       subject: "EmailTemplateSubject",
    #       text: "EmailTemplateText",
    #       html: "EmailTemplateHtml",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateEmailTemplate AWS API Documentation
    #
    # @overload create_email_template(params = {})
    # @param [Hash] params ({})
    def create_email_template(params = {}, options = {})
      req = build_request(:create_email_template, params)
      req.send_request(options)
    end

    # Creates an export job for a data source and destination.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, Types::ExportDataSource] :export_data_source
    #   The data source for the export job.
    #
    # @option params [required, Types::ExportDestination] :export_destination
    #   The destination for the export job.
    #
    # @return [Types::CreateExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExportJobResponse#job_id #job_id} => String
    #
    #
    # @example Example: Create Metrics export job
    #
    #   # Creates a new export job for Metrics data
    #
    #   resp = client.create_export_job({
    #     export_data_source: {
    #       metrics_data_source: {
    #         dimensions: {
    #           "ISP" => [
    #             "*", 
    #           ], 
    #         }, 
    #         end_date: Time.parse("2023-07-02T00:00:00"), 
    #         metrics: [
    #           {
    #             aggregation: "VOLUME", 
    #             name: "SEND", 
    #           }, 
    #           {
    #             aggregation: "VOLUME", 
    #             name: "COMPLAINT", 
    #           }, 
    #           {
    #             aggregation: "RATE", 
    #             name: "COMPLAINT", 
    #           }, 
    #         ], 
    #         namespace: "VDM", 
    #         start_date: Time.parse("2023-07-01T00:00:00"), 
    #       }, 
    #     }, 
    #     export_destination: {
    #       data_format: "CSV", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_id: "ef28cf62-9d8e-4b60-9283-b09816c99a99", 
    #   }
    #
    # @example Example: Create Message Insights export job
    #
    #   # Creates a new export job for Message Insights data
    #
    #   resp = client.create_export_job({
    #     export_data_source: {
    #       message_insights_data_source: {
    #         end_date: Time.parse("2023-07-02T00:00:00"), 
    #         exclude: {
    #           from_email_address: [
    #             "hello@example.com", 
    #           ], 
    #         }, 
    #         include: {
    #           subject: [
    #             "Hello", 
    #           ], 
    #         }, 
    #         start_date: Time.parse("2023-07-01T00:00:00"), 
    #       }, 
    #     }, 
    #     export_destination: {
    #       data_format: "CSV", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_id: "ef28cf62-9d8e-4b60-9283-b09816c99a99", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_export_job({
    #     export_data_source: { # required
    #       metrics_data_source: {
    #         dimensions: { # required
    #           "EMAIL_IDENTITY" => ["MetricDimensionValue"],
    #         },
    #         namespace: "VDM", # required, accepts VDM
    #         metrics: [ # required
    #           {
    #             name: "SEND", # accepts SEND, COMPLAINT, PERMANENT_BOUNCE, TRANSIENT_BOUNCE, OPEN, CLICK, DELIVERY, DELIVERY_OPEN, DELIVERY_CLICK, DELIVERY_COMPLAINT
    #             aggregation: "RATE", # accepts RATE, VOLUME
    #           },
    #         ],
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #       },
    #       message_insights_data_source: {
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #         include: {
    #           from_email_address: ["InsightsEmailAddress"],
    #           destination: ["InsightsEmailAddress"],
    #           subject: ["EmailSubject"],
    #           isp: ["Isp"],
    #           last_delivery_event: ["SEND"], # accepts SEND, DELIVERY, TRANSIENT_BOUNCE, PERMANENT_BOUNCE, UNDETERMINED_BOUNCE, COMPLAINT
    #           last_engagement_event: ["OPEN"], # accepts OPEN, CLICK
    #         },
    #         exclude: {
    #           from_email_address: ["InsightsEmailAddress"],
    #           destination: ["InsightsEmailAddress"],
    #           subject: ["EmailSubject"],
    #           isp: ["Isp"],
    #           last_delivery_event: ["SEND"], # accepts SEND, DELIVERY, TRANSIENT_BOUNCE, PERMANENT_BOUNCE, UNDETERMINED_BOUNCE, COMPLAINT
    #           last_engagement_event: ["OPEN"], # accepts OPEN, CLICK
    #         },
    #         max_results: 1,
    #       },
    #     },
    #     export_destination: { # required
    #       data_format: "CSV", # required, accepts CSV, JSON
    #       s3_url: "S3Url",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateExportJob AWS API Documentation
    #
    # @overload create_export_job(params = {})
    # @param [Hash] params ({})
    def create_export_job(params = {}, options = {})
      req = build_request(:create_export_job, params)
      req.send_request(options)
    end

    # Creates an import job for a data destination.
    #
    # @option params [required, Types::ImportDestination] :import_destination
    #   The destination for the import job.
    #
    # @option params [required, Types::ImportDataSource] :import_data_source
    #   The data source for the import job.
    #
    # @return [Types::CreateImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImportJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_import_job({
    #     import_destination: { # required
    #       suppression_list_destination: {
    #         suppression_list_import_action: "DELETE", # required, accepts DELETE, PUT
    #       },
    #       contact_list_destination: {
    #         contact_list_name: "ContactListName", # required
    #         contact_list_import_action: "DELETE", # required, accepts DELETE, PUT
    #       },
    #     },
    #     import_data_source: { # required
    #       s3_url: "S3Url", # required
    #       data_format: "CSV", # required, accepts CSV, JSON
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateImportJob AWS API Documentation
    #
    # @overload create_import_job(params = {})
    # @param [Hash] params ({})
    def create_import_job(params = {}, options = {})
      req = build_request(:create_import_job, params)
      req.send_request(options)
    end

    # Creates a multi-region endpoint (global-endpoint).
    #
    # The primary region is going to be the AWS-Region where the operation
    # is executed. The secondary region has to be provided in request's
    # parameters. From the data flow standpoint there is no difference
    # between primary and secondary regions - sending traffic will be split
    # equally between the two. The primary region is the region where the
    # resource has been created and where it can be managed.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the multi-region endpoint (global-endpoint).
    #
    # @option params [required, Types::Details] :details
    #   Contains details of a multi-region endpoint (global-endpoint) being
    #   created.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of objects that define the tags (keys and values) to
    #   associate with the multi-region endpoint (global-endpoint).
    #
    # @return [Types::CreateMultiRegionEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMultiRegionEndpointResponse#status #status} => String
    #   * {Types::CreateMultiRegionEndpointResponse#endpoint_id #endpoint_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_multi_region_endpoint({
    #     endpoint_name: "EndpointName", # required
    #     details: { # required
    #       routes_details: [ # required
    #         {
    #           region: "Region", # required
    #         },
    #       ],
    #     },
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
    #   resp.status #=> String, one of "CREATING", "READY", "FAILED", "DELETING"
    #   resp.endpoint_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/CreateMultiRegionEndpoint AWS API Documentation
    #
    # @overload create_multi_region_endpoint(params = {})
    # @param [Hash] params ({})
    def create_multi_region_endpoint(params = {}, options = {})
      req = build_request(:create_multi_region_endpoint, params)
      req.send_request(options)
    end

    # Delete an existing configuration set.
    #
    # *Configuration sets* are groups of rules that you can apply to the
    # emails you send. You apply a configuration set to an email by
    # including a reference to the configuration set in the headers of the
    # email. When you apply a configuration set to an email, all of the
    # rules in that configuration set are applied to the email.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set({
    #     configuration_set_name: "ConfigurationSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteConfigurationSet AWS API Documentation
    #
    # @overload delete_configuration_set(params = {})
    # @param [Hash] params ({})
    def delete_configuration_set(params = {}, options = {})
      req = build_request(:delete_configuration_set, params)
      req.send_request(options)
    end

    # Delete an event destination.
    #
    # *Events* include message sends, deliveries, opens, clicks, bounces,
    # and complaints. *Event destinations* are places that you can send
    # information about these events to. For example, you can send event
    # data to Amazon EventBridge and associate a rule to send the event to
    # the specified target.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that contains the event destination
    #   to delete.
    #
    # @option params [required, String] :event_destination_name
    #   The name of the event destination to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set_event_destination({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteConfigurationSetEventDestination AWS API Documentation
    #
    # @overload delete_configuration_set_event_destination(params = {})
    # @param [Hash] params ({})
    def delete_configuration_set_event_destination(params = {}, options = {})
      req = build_request(:delete_configuration_set_event_destination, params)
      req.send_request(options)
    end

    # Removes a contact from a contact list.
    #
    # @option params [required, String] :contact_list_name
    #   The name of the contact list from which the contact should be removed.
    #
    # @option params [required, String] :email_address
    #   The contact's email address.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact({
    #     contact_list_name: "ContactListName", # required
    #     email_address: "EmailAddress", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteContact AWS API Documentation
    #
    # @overload delete_contact(params = {})
    # @param [Hash] params ({})
    def delete_contact(params = {}, options = {})
      req = build_request(:delete_contact, params)
      req.send_request(options)
    end

    # Deletes a contact list and all of the contacts on that list.
    #
    # @option params [required, String] :contact_list_name
    #   The name of the contact list.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_list({
    #     contact_list_name: "ContactListName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteContactList AWS API Documentation
    #
    # @overload delete_contact_list(params = {})
    # @param [Hash] params ({})
    def delete_contact_list(params = {}, options = {})
      req = build_request(:delete_contact_list, params)
      req.send_request(options)
    end

    # Deletes an existing custom verification email template.
    #
    # For more information about custom verification email templates, see
    # [Using custom verification email templates][1] in the *Amazon SES
    # Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
    #
    # @option params [required, String] :template_name
    #   The name of the custom verification email template that you want to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_verification_email_template({
    #     template_name: "EmailTemplateName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteCustomVerificationEmailTemplate AWS API Documentation
    #
    # @overload delete_custom_verification_email_template(params = {})
    # @param [Hash] params ({})
    def delete_custom_verification_email_template(params = {}, options = {})
      req = build_request(:delete_custom_verification_email_template, params)
      req.send_request(options)
    end

    # Delete a dedicated IP pool.
    #
    # @option params [required, String] :pool_name
    #   The name of the dedicated IP pool that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dedicated_ip_pool({
    #     pool_name: "PoolName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteDedicatedIpPool AWS API Documentation
    #
    # @overload delete_dedicated_ip_pool(params = {})
    # @param [Hash] params ({})
    def delete_dedicated_ip_pool(params = {}, options = {})
      req = build_request(:delete_dedicated_ip_pool, params)
      req.send_request(options)
    end

    # Deletes an email identity. An identity can be either an email address
    # or a domain name.
    #
    # @option params [required, String] :email_identity
    #   The identity (that is, the email address or domain) to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_identity({
    #     email_identity: "Identity", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteEmailIdentity AWS API Documentation
    #
    # @overload delete_email_identity(params = {})
    # @param [Hash] params ({})
    def delete_email_identity(params = {}, options = {})
      req = build_request(:delete_email_identity, params)
      req.send_request(options)
    end

    # Deletes the specified sending authorization policy for the given
    # identity (an email address or a domain). This API returns successfully
    # even if a policy with the specified name does not exist.
    #
    # <note markdown="1"> This API is for the identity owner only. If you have not verified the
    # identity, this API will return an error.
    #
    #  </note>
    #
    # Sending authorization is a feature that enables an identity owner to
    # authorize other senders to use its identities. For information about
    # using sending authorization, see the [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [required, String] :email_identity
    #   The email identity.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    #   The policy name cannot exceed 64 characters and can only include
    #   alphanumeric characters, dashes, and underscores.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_identity_policy({
    #     email_identity: "Identity", # required
    #     policy_name: "PolicyName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteEmailIdentityPolicy AWS API Documentation
    #
    # @overload delete_email_identity_policy(params = {})
    # @param [Hash] params ({})
    def delete_email_identity_policy(params = {}, options = {})
      req = build_request(:delete_email_identity_policy, params)
      req.send_request(options)
    end

    # Deletes an email template.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :template_name
    #   The name of the template to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_template({
    #     template_name: "EmailTemplateName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteEmailTemplate AWS API Documentation
    #
    # @overload delete_email_template(params = {})
    # @param [Hash] params ({})
    def delete_email_template(params = {}, options = {})
      req = build_request(:delete_email_template, params)
      req.send_request(options)
    end

    # Deletes a multi-region endpoint (global-endpoint).
    #
    # Only multi-region endpoints (global-endpoints) whose primary region is
    # the AWS-Region where operation is executed can be deleted.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the multi-region endpoint (global-endpoint) to be deleted.
    #
    # @return [Types::DeleteMultiRegionEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMultiRegionEndpointResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_multi_region_endpoint({
    #     endpoint_name: "EndpointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "READY", "FAILED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteMultiRegionEndpoint AWS API Documentation
    #
    # @overload delete_multi_region_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_multi_region_endpoint(params = {}, options = {})
      req = build_request(:delete_multi_region_endpoint, params)
      req.send_request(options)
    end

    # Removes an email address from the suppression list for your account.
    #
    # @option params [required, String] :email_address
    #   The suppressed email destination to remove from the account
    #   suppression list.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_suppressed_destination({
    #     email_address: "EmailAddress", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/DeleteSuppressedDestination AWS API Documentation
    #
    # @overload delete_suppressed_destination(params = {})
    # @param [Hash] params ({})
    def delete_suppressed_destination(params = {}, options = {})
      req = build_request(:delete_suppressed_destination, params)
      req.send_request(options)
    end

    # Obtain information about the email-sending status and capabilities of
    # your Amazon SES account in the current Amazon Web Services Region.
    #
    # @return [Types::GetAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountResponse#dedicated_ip_auto_warmup_enabled #dedicated_ip_auto_warmup_enabled} => Boolean
    #   * {Types::GetAccountResponse#enforcement_status #enforcement_status} => String
    #   * {Types::GetAccountResponse#production_access_enabled #production_access_enabled} => Boolean
    #   * {Types::GetAccountResponse#send_quota #send_quota} => Types::SendQuota
    #   * {Types::GetAccountResponse#sending_enabled #sending_enabled} => Boolean
    #   * {Types::GetAccountResponse#suppression_attributes #suppression_attributes} => Types::SuppressionAttributes
    #   * {Types::GetAccountResponse#details #details} => Types::AccountDetails
    #   * {Types::GetAccountResponse#vdm_attributes #vdm_attributes} => Types::VdmAttributes
    #
    # @example Response structure
    #
    #   resp.dedicated_ip_auto_warmup_enabled #=> Boolean
    #   resp.enforcement_status #=> String
    #   resp.production_access_enabled #=> Boolean
    #   resp.send_quota.max_24_hour_send #=> Float
    #   resp.send_quota.max_send_rate #=> Float
    #   resp.send_quota.sent_last_24_hours #=> Float
    #   resp.sending_enabled #=> Boolean
    #   resp.suppression_attributes.suppressed_reasons #=> Array
    #   resp.suppression_attributes.suppressed_reasons[0] #=> String, one of "BOUNCE", "COMPLAINT"
    #   resp.details.mail_type #=> String, one of "MARKETING", "TRANSACTIONAL"
    #   resp.details.website_url #=> String
    #   resp.details.contact_language #=> String, one of "EN", "JA"
    #   resp.details.use_case_description #=> String
    #   resp.details.additional_contact_email_addresses #=> Array
    #   resp.details.additional_contact_email_addresses[0] #=> String
    #   resp.details.review_details.status #=> String, one of "PENDING", "FAILED", "GRANTED", "DENIED"
    #   resp.details.review_details.case_id #=> String
    #   resp.vdm_attributes.vdm_enabled #=> String, one of "ENABLED", "DISABLED"
    #   resp.vdm_attributes.dashboard_attributes.engagement_metrics #=> String, one of "ENABLED", "DISABLED"
    #   resp.vdm_attributes.guardian_attributes.optimized_shared_delivery #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetAccount AWS API Documentation
    #
    # @overload get_account(params = {})
    # @param [Hash] params ({})
    def get_account(params = {}, options = {})
      req = build_request(:get_account, params)
      req.send_request(options)
    end

    # Retrieve a list of the blacklists that your dedicated IP addresses
    # appear on.
    #
    # @option params [required, Array<String>] :blacklist_item_names
    #   A list of IP addresses that you want to retrieve blacklist information
    #   about. You can only specify the dedicated IP addresses that you use to
    #   send email using Amazon SES or Amazon Pinpoint.
    #
    # @return [Types::GetBlacklistReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlacklistReportsResponse#blacklist_report #blacklist_report} => Hash&lt;String,Array&lt;Types::BlacklistEntry&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blacklist_reports({
    #     blacklist_item_names: ["BlacklistItemName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.blacklist_report #=> Hash
    #   resp.blacklist_report["BlacklistItemName"] #=> Array
    #   resp.blacklist_report["BlacklistItemName"][0].rbl_name #=> String
    #   resp.blacklist_report["BlacklistItemName"][0].listing_time #=> Time
    #   resp.blacklist_report["BlacklistItemName"][0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetBlacklistReports AWS API Documentation
    #
    # @overload get_blacklist_reports(params = {})
    # @param [Hash] params ({})
    def get_blacklist_reports(params = {}, options = {})
      req = build_request(:get_blacklist_reports, params)
      req.send_request(options)
    end

    # Get information about an existing configuration set, including the
    # dedicated IP pool that it's associated with, whether or not it's
    # enabled for sending email, and more.
    #
    # *Configuration sets* are groups of rules that you can apply to the
    # emails you send. You apply a configuration set to an email by
    # including a reference to the configuration set in the headers of the
    # email. When you apply a configuration set to an email, all of the
    # rules in that configuration set are applied to the email.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set.
    #
    # @return [Types::GetConfigurationSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationSetResponse#configuration_set_name #configuration_set_name} => String
    #   * {Types::GetConfigurationSetResponse#tracking_options #tracking_options} => Types::TrackingOptions
    #   * {Types::GetConfigurationSetResponse#delivery_options #delivery_options} => Types::DeliveryOptions
    #   * {Types::GetConfigurationSetResponse#reputation_options #reputation_options} => Types::ReputationOptions
    #   * {Types::GetConfigurationSetResponse#sending_options #sending_options} => Types::SendingOptions
    #   * {Types::GetConfigurationSetResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::GetConfigurationSetResponse#suppression_options #suppression_options} => Types::SuppressionOptions
    #   * {Types::GetConfigurationSetResponse#vdm_options #vdm_options} => Types::VdmOptions
    #   * {Types::GetConfigurationSetResponse#archiving_options #archiving_options} => Types::ArchivingOptions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_set({
    #     configuration_set_name: "ConfigurationSetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_name #=> String
    #   resp.tracking_options.custom_redirect_domain #=> String
    #   resp.tracking_options.https_policy #=> String, one of "REQUIRE", "REQUIRE_OPEN_ONLY", "OPTIONAL"
    #   resp.delivery_options.tls_policy #=> String, one of "REQUIRE", "OPTIONAL"
    #   resp.delivery_options.sending_pool_name #=> String
    #   resp.delivery_options.max_delivery_seconds #=> Integer
    #   resp.reputation_options.reputation_metrics_enabled #=> Boolean
    #   resp.reputation_options.last_fresh_start #=> Time
    #   resp.sending_options.sending_enabled #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.suppression_options.suppressed_reasons #=> Array
    #   resp.suppression_options.suppressed_reasons[0] #=> String, one of "BOUNCE", "COMPLAINT"
    #   resp.vdm_options.dashboard_options.engagement_metrics #=> String, one of "ENABLED", "DISABLED"
    #   resp.vdm_options.guardian_options.optimized_shared_delivery #=> String, one of "ENABLED", "DISABLED"
    #   resp.archiving_options.archive_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetConfigurationSet AWS API Documentation
    #
    # @overload get_configuration_set(params = {})
    # @param [Hash] params ({})
    def get_configuration_set(params = {}, options = {})
      req = build_request(:get_configuration_set, params)
      req.send_request(options)
    end

    # Retrieve a list of event destinations that are associated with a
    # configuration set.
    #
    # *Events* include message sends, deliveries, opens, clicks, bounces,
    # and complaints. *Event destinations* are places that you can send
    # information about these events to. For example, you can send event
    # data to Amazon EventBridge and associate a rule to send the event to
    # the specified target.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that contains the event destination.
    #
    # @return [Types::GetConfigurationSetEventDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationSetEventDestinationsResponse#event_destinations #event_destinations} => Array&lt;Types::EventDestination&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_set_event_destinations({
    #     configuration_set_name: "ConfigurationSetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_destinations #=> Array
    #   resp.event_destinations[0].name #=> String
    #   resp.event_destinations[0].enabled #=> Boolean
    #   resp.event_destinations[0].matching_event_types #=> Array
    #   resp.event_destinations[0].matching_event_types[0] #=> String, one of "SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE", "DELIVERY_DELAY", "SUBSCRIPTION"
    #   resp.event_destinations[0].kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.event_destinations[0].kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations #=> Array
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations[0].dimension_name #=> String
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations[0].dimension_value_source #=> String, one of "MESSAGE_TAG", "EMAIL_HEADER", "LINK_TAG"
    #   resp.event_destinations[0].cloud_watch_destination.dimension_configurations[0].default_dimension_value #=> String
    #   resp.event_destinations[0].sns_destination.topic_arn #=> String
    #   resp.event_destinations[0].event_bridge_destination.event_bus_arn #=> String
    #   resp.event_destinations[0].pinpoint_destination.application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetConfigurationSetEventDestinations AWS API Documentation
    #
    # @overload get_configuration_set_event_destinations(params = {})
    # @param [Hash] params ({})
    def get_configuration_set_event_destinations(params = {}, options = {})
      req = build_request(:get_configuration_set_event_destinations, params)
      req.send_request(options)
    end

    # Returns a contact from a contact list.
    #
    # @option params [required, String] :contact_list_name
    #   The name of the contact list to which the contact belongs.
    #
    # @option params [required, String] :email_address
    #   The contact's email address.
    #
    # @return [Types::GetContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactResponse#contact_list_name #contact_list_name} => String
    #   * {Types::GetContactResponse#email_address #email_address} => String
    #   * {Types::GetContactResponse#topic_preferences #topic_preferences} => Array&lt;Types::TopicPreference&gt;
    #   * {Types::GetContactResponse#topic_default_preferences #topic_default_preferences} => Array&lt;Types::TopicPreference&gt;
    #   * {Types::GetContactResponse#unsubscribe_all #unsubscribe_all} => Boolean
    #   * {Types::GetContactResponse#attributes_data #attributes_data} => String
    #   * {Types::GetContactResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetContactResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact({
    #     contact_list_name: "ContactListName", # required
    #     email_address: "EmailAddress", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_list_name #=> String
    #   resp.email_address #=> String
    #   resp.topic_preferences #=> Array
    #   resp.topic_preferences[0].topic_name #=> String
    #   resp.topic_preferences[0].subscription_status #=> String, one of "OPT_IN", "OPT_OUT"
    #   resp.topic_default_preferences #=> Array
    #   resp.topic_default_preferences[0].topic_name #=> String
    #   resp.topic_default_preferences[0].subscription_status #=> String, one of "OPT_IN", "OPT_OUT"
    #   resp.unsubscribe_all #=> Boolean
    #   resp.attributes_data #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetContact AWS API Documentation
    #
    # @overload get_contact(params = {})
    # @param [Hash] params ({})
    def get_contact(params = {}, options = {})
      req = build_request(:get_contact, params)
      req.send_request(options)
    end

    # Returns contact list metadata. It does not return any information
    # about the contacts present in the list.
    #
    # @option params [required, String] :contact_list_name
    #   The name of the contact list.
    #
    # @return [Types::GetContactListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactListResponse#contact_list_name #contact_list_name} => String
    #   * {Types::GetContactListResponse#topics #topics} => Array&lt;Types::Topic&gt;
    #   * {Types::GetContactListResponse#description #description} => String
    #   * {Types::GetContactListResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetContactListResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #   * {Types::GetContactListResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_list({
    #     contact_list_name: "ContactListName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_list_name #=> String
    #   resp.topics #=> Array
    #   resp.topics[0].topic_name #=> String
    #   resp.topics[0].display_name #=> String
    #   resp.topics[0].description #=> String
    #   resp.topics[0].default_subscription_status #=> String, one of "OPT_IN", "OPT_OUT"
    #   resp.description #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_updated_timestamp #=> Time
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetContactList AWS API Documentation
    #
    # @overload get_contact_list(params = {})
    # @param [Hash] params ({})
    def get_contact_list(params = {}, options = {})
      req = build_request(:get_contact_list, params)
      req.send_request(options)
    end

    # Returns the custom email verification template for the template name
    # you specify.
    #
    # For more information about custom verification email templates, see
    # [Using custom verification email templates][1] in the *Amazon SES
    # Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
    #
    # @option params [required, String] :template_name
    #   The name of the custom verification email template that you want to
    #   retrieve.
    #
    # @return [Types::GetCustomVerificationEmailTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomVerificationEmailTemplateResponse#template_name #template_name} => String
    #   * {Types::GetCustomVerificationEmailTemplateResponse#from_email_address #from_email_address} => String
    #   * {Types::GetCustomVerificationEmailTemplateResponse#template_subject #template_subject} => String
    #   * {Types::GetCustomVerificationEmailTemplateResponse#template_content #template_content} => String
    #   * {Types::GetCustomVerificationEmailTemplateResponse#success_redirection_url #success_redirection_url} => String
    #   * {Types::GetCustomVerificationEmailTemplateResponse#failure_redirection_url #failure_redirection_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_verification_email_template({
    #     template_name: "EmailTemplateName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_name #=> String
    #   resp.from_email_address #=> String
    #   resp.template_subject #=> String
    #   resp.template_content #=> String
    #   resp.success_redirection_url #=> String
    #   resp.failure_redirection_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetCustomVerificationEmailTemplate AWS API Documentation
    #
    # @overload get_custom_verification_email_template(params = {})
    # @param [Hash] params ({})
    def get_custom_verification_email_template(params = {}, options = {})
      req = build_request(:get_custom_verification_email_template, params)
      req.send_request(options)
    end

    # Get information about a dedicated IP address, including the name of
    # the dedicated IP pool that it's associated with, as well information
    # about the automatic warm-up process for the address.
    #
    # @option params [required, String] :ip
    #   The IP address that you want to obtain more information about. The
    #   value you specify has to be a dedicated IP address that's assocaited
    #   with your Amazon Web Services account.
    #
    # @return [Types::GetDedicatedIpResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDedicatedIpResponse#dedicated_ip #dedicated_ip} => Types::DedicatedIp
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dedicated_ip({
    #     ip: "Ip", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dedicated_ip.ip #=> String
    #   resp.dedicated_ip.warmup_status #=> String, one of "IN_PROGRESS", "DONE", "NOT_APPLICABLE"
    #   resp.dedicated_ip.warmup_percentage #=> Integer
    #   resp.dedicated_ip.pool_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDedicatedIp AWS API Documentation
    #
    # @overload get_dedicated_ip(params = {})
    # @param [Hash] params ({})
    def get_dedicated_ip(params = {}, options = {})
      req = build_request(:get_dedicated_ip, params)
      req.send_request(options)
    end

    # Retrieve information about the dedicated pool.
    #
    # @option params [required, String] :pool_name
    #   The name of the dedicated IP pool to retrieve.
    #
    # @return [Types::GetDedicatedIpPoolResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDedicatedIpPoolResponse#dedicated_ip_pool #dedicated_ip_pool} => Types::DedicatedIpPool
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dedicated_ip_pool({
    #     pool_name: "PoolName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dedicated_ip_pool.pool_name #=> String
    #   resp.dedicated_ip_pool.scaling_mode #=> String, one of "STANDARD", "MANAGED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDedicatedIpPool AWS API Documentation
    #
    # @overload get_dedicated_ip_pool(params = {})
    # @param [Hash] params ({})
    def get_dedicated_ip_pool(params = {}, options = {})
      req = build_request(:get_dedicated_ip_pool, params)
      req.send_request(options)
    end

    # List the dedicated IP addresses that are associated with your Amazon
    # Web Services account.
    #
    # @option params [String] :pool_name
    #   The name of the IP pool that the dedicated IP address is associated
    #   with.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `GetDedicatedIps` to indicate
    #   the position of the dedicated IP pool in the list of IP pools.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `GetDedicatedIpsRequest`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    # @return [Types::GetDedicatedIpsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDedicatedIpsResponse#dedicated_ips #dedicated_ips} => Array&lt;Types::DedicatedIp&gt;
    #   * {Types::GetDedicatedIpsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dedicated_ips({
    #     pool_name: "PoolName",
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dedicated_ips #=> Array
    #   resp.dedicated_ips[0].ip #=> String
    #   resp.dedicated_ips[0].warmup_status #=> String, one of "IN_PROGRESS", "DONE", "NOT_APPLICABLE"
    #   resp.dedicated_ips[0].warmup_percentage #=> Integer
    #   resp.dedicated_ips[0].pool_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDedicatedIps AWS API Documentation
    #
    # @overload get_dedicated_ips(params = {})
    # @param [Hash] params ({})
    def get_dedicated_ips(params = {}, options = {})
      req = build_request(:get_dedicated_ips, params)
      req.send_request(options)
    end

    # Retrieve information about the status of the Deliverability dashboard
    # for your account. When the Deliverability dashboard is enabled, you
    # gain access to reputation, deliverability, and other metrics for the
    # domains that you use to send email. You also gain the ability to
    # perform predictive inbox placement tests.
    #
    # When you use the Deliverability dashboard, you pay a monthly
    # subscription charge, in addition to any other fees that you accrue by
    # using Amazon SES and other Amazon Web Services services. For more
    # information about the features and cost of a Deliverability dashboard
    # subscription, see [Amazon SES Pricing][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/ses/pricing/
    #
    # @return [Types::GetDeliverabilityDashboardOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeliverabilityDashboardOptionsResponse#dashboard_enabled #dashboard_enabled} => Boolean
    #   * {Types::GetDeliverabilityDashboardOptionsResponse#subscription_expiry_date #subscription_expiry_date} => Time
    #   * {Types::GetDeliverabilityDashboardOptionsResponse#account_status #account_status} => String
    #   * {Types::GetDeliverabilityDashboardOptionsResponse#active_subscribed_domains #active_subscribed_domains} => Array&lt;Types::DomainDeliverabilityTrackingOption&gt;
    #   * {Types::GetDeliverabilityDashboardOptionsResponse#pending_expiration_subscribed_domains #pending_expiration_subscribed_domains} => Array&lt;Types::DomainDeliverabilityTrackingOption&gt;
    #
    # @example Response structure
    #
    #   resp.dashboard_enabled #=> Boolean
    #   resp.subscription_expiry_date #=> Time
    #   resp.account_status #=> String, one of "ACTIVE", "PENDING_EXPIRATION", "DISABLED"
    #   resp.active_subscribed_domains #=> Array
    #   resp.active_subscribed_domains[0].domain #=> String
    #   resp.active_subscribed_domains[0].subscription_start_date #=> Time
    #   resp.active_subscribed_domains[0].inbox_placement_tracking_option.global #=> Boolean
    #   resp.active_subscribed_domains[0].inbox_placement_tracking_option.tracked_isps #=> Array
    #   resp.active_subscribed_domains[0].inbox_placement_tracking_option.tracked_isps[0] #=> String
    #   resp.pending_expiration_subscribed_domains #=> Array
    #   resp.pending_expiration_subscribed_domains[0].domain #=> String
    #   resp.pending_expiration_subscribed_domains[0].subscription_start_date #=> Time
    #   resp.pending_expiration_subscribed_domains[0].inbox_placement_tracking_option.global #=> Boolean
    #   resp.pending_expiration_subscribed_domains[0].inbox_placement_tracking_option.tracked_isps #=> Array
    #   resp.pending_expiration_subscribed_domains[0].inbox_placement_tracking_option.tracked_isps[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDeliverabilityDashboardOptions AWS API Documentation
    #
    # @overload get_deliverability_dashboard_options(params = {})
    # @param [Hash] params ({})
    def get_deliverability_dashboard_options(params = {}, options = {})
      req = build_request(:get_deliverability_dashboard_options, params)
      req.send_request(options)
    end

    # Retrieve the results of a predictive inbox placement test.
    #
    # @option params [required, String] :report_id
    #   A unique string that identifies the predictive inbox placement test.
    #
    # @return [Types::GetDeliverabilityTestReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeliverabilityTestReportResponse#deliverability_test_report #deliverability_test_report} => Types::DeliverabilityTestReport
    #   * {Types::GetDeliverabilityTestReportResponse#overall_placement #overall_placement} => Types::PlacementStatistics
    #   * {Types::GetDeliverabilityTestReportResponse#isp_placements #isp_placements} => Array&lt;Types::IspPlacement&gt;
    #   * {Types::GetDeliverabilityTestReportResponse#message #message} => String
    #   * {Types::GetDeliverabilityTestReportResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deliverability_test_report({
    #     report_id: "ReportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deliverability_test_report.report_id #=> String
    #   resp.deliverability_test_report.report_name #=> String
    #   resp.deliverability_test_report.subject #=> String
    #   resp.deliverability_test_report.from_email_address #=> String
    #   resp.deliverability_test_report.create_date #=> Time
    #   resp.deliverability_test_report.deliverability_test_status #=> String, one of "IN_PROGRESS", "COMPLETED"
    #   resp.overall_placement.inbox_percentage #=> Float
    #   resp.overall_placement.spam_percentage #=> Float
    #   resp.overall_placement.missing_percentage #=> Float
    #   resp.overall_placement.spf_percentage #=> Float
    #   resp.overall_placement.dkim_percentage #=> Float
    #   resp.isp_placements #=> Array
    #   resp.isp_placements[0].isp_name #=> String
    #   resp.isp_placements[0].placement_statistics.inbox_percentage #=> Float
    #   resp.isp_placements[0].placement_statistics.spam_percentage #=> Float
    #   resp.isp_placements[0].placement_statistics.missing_percentage #=> Float
    #   resp.isp_placements[0].placement_statistics.spf_percentage #=> Float
    #   resp.isp_placements[0].placement_statistics.dkim_percentage #=> Float
    #   resp.message #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDeliverabilityTestReport AWS API Documentation
    #
    # @overload get_deliverability_test_report(params = {})
    # @param [Hash] params ({})
    def get_deliverability_test_report(params = {}, options = {})
      req = build_request(:get_deliverability_test_report, params)
      req.send_request(options)
    end

    # Retrieve all the deliverability data for a specific campaign. This
    # data is available for a campaign only if the campaign sent email by
    # using a domain that the Deliverability dashboard is enabled for.
    #
    # @option params [required, String] :campaign_id
    #   The unique identifier for the campaign. The Deliverability dashboard
    #   automatically generates and assigns this identifier to a campaign.
    #
    # @return [Types::GetDomainDeliverabilityCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainDeliverabilityCampaignResponse#domain_deliverability_campaign #domain_deliverability_campaign} => Types::DomainDeliverabilityCampaign
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_deliverability_campaign({
    #     campaign_id: "CampaignId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_deliverability_campaign.campaign_id #=> String
    #   resp.domain_deliverability_campaign.image_url #=> String
    #   resp.domain_deliverability_campaign.subject #=> String
    #   resp.domain_deliverability_campaign.from_address #=> String
    #   resp.domain_deliverability_campaign.sending_ips #=> Array
    #   resp.domain_deliverability_campaign.sending_ips[0] #=> String
    #   resp.domain_deliverability_campaign.first_seen_date_time #=> Time
    #   resp.domain_deliverability_campaign.last_seen_date_time #=> Time
    #   resp.domain_deliverability_campaign.inbox_count #=> Integer
    #   resp.domain_deliverability_campaign.spam_count #=> Integer
    #   resp.domain_deliverability_campaign.read_rate #=> Float
    #   resp.domain_deliverability_campaign.delete_rate #=> Float
    #   resp.domain_deliverability_campaign.read_delete_rate #=> Float
    #   resp.domain_deliverability_campaign.projected_volume #=> Integer
    #   resp.domain_deliverability_campaign.esps #=> Array
    #   resp.domain_deliverability_campaign.esps[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDomainDeliverabilityCampaign AWS API Documentation
    #
    # @overload get_domain_deliverability_campaign(params = {})
    # @param [Hash] params ({})
    def get_domain_deliverability_campaign(params = {}, options = {})
      req = build_request(:get_domain_deliverability_campaign, params)
      req.send_request(options)
    end

    # Retrieve inbox placement and engagement rates for the domains that you
    # use to send email.
    #
    # @option params [required, String] :domain
    #   The domain that you want to obtain deliverability metrics for.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_date
    #   The first day (in Unix time) that you want to obtain domain
    #   deliverability metrics for.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_date
    #   The last day (in Unix time) that you want to obtain domain
    #   deliverability metrics for. The `EndDate` that you specify has to be
    #   less than or equal to 30 days after the `StartDate`.
    #
    # @return [Types::GetDomainStatisticsReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainStatisticsReportResponse#overall_volume #overall_volume} => Types::OverallVolume
    #   * {Types::GetDomainStatisticsReportResponse#daily_volumes #daily_volumes} => Array&lt;Types::DailyVolume&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_statistics_report({
    #     domain: "Identity", # required
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.overall_volume.volume_statistics.inbox_raw_count #=> Integer
    #   resp.overall_volume.volume_statistics.spam_raw_count #=> Integer
    #   resp.overall_volume.volume_statistics.projected_inbox #=> Integer
    #   resp.overall_volume.volume_statistics.projected_spam #=> Integer
    #   resp.overall_volume.read_rate_percent #=> Float
    #   resp.overall_volume.domain_isp_placements #=> Array
    #   resp.overall_volume.domain_isp_placements[0].isp_name #=> String
    #   resp.overall_volume.domain_isp_placements[0].inbox_raw_count #=> Integer
    #   resp.overall_volume.domain_isp_placements[0].spam_raw_count #=> Integer
    #   resp.overall_volume.domain_isp_placements[0].inbox_percentage #=> Float
    #   resp.overall_volume.domain_isp_placements[0].spam_percentage #=> Float
    #   resp.daily_volumes #=> Array
    #   resp.daily_volumes[0].start_date #=> Time
    #   resp.daily_volumes[0].volume_statistics.inbox_raw_count #=> Integer
    #   resp.daily_volumes[0].volume_statistics.spam_raw_count #=> Integer
    #   resp.daily_volumes[0].volume_statistics.projected_inbox #=> Integer
    #   resp.daily_volumes[0].volume_statistics.projected_spam #=> Integer
    #   resp.daily_volumes[0].domain_isp_placements #=> Array
    #   resp.daily_volumes[0].domain_isp_placements[0].isp_name #=> String
    #   resp.daily_volumes[0].domain_isp_placements[0].inbox_raw_count #=> Integer
    #   resp.daily_volumes[0].domain_isp_placements[0].spam_raw_count #=> Integer
    #   resp.daily_volumes[0].domain_isp_placements[0].inbox_percentage #=> Float
    #   resp.daily_volumes[0].domain_isp_placements[0].spam_percentage #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetDomainStatisticsReport AWS API Documentation
    #
    # @overload get_domain_statistics_report(params = {})
    # @param [Hash] params ({})
    def get_domain_statistics_report(params = {}, options = {})
      req = build_request(:get_domain_statistics_report, params)
      req.send_request(options)
    end

    # Provides information about a specific identity, including the
    # identity's verification status, sending authorization policies, its
    # DKIM authentication status, and its custom Mail-From settings.
    #
    # @option params [required, String] :email_identity
    #   The email identity.
    #
    # @return [Types::GetEmailIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEmailIdentityResponse#identity_type #identity_type} => String
    #   * {Types::GetEmailIdentityResponse#feedback_forwarding_status #feedback_forwarding_status} => Boolean
    #   * {Types::GetEmailIdentityResponse#verified_for_sending_status #verified_for_sending_status} => Boolean
    #   * {Types::GetEmailIdentityResponse#dkim_attributes #dkim_attributes} => Types::DkimAttributes
    #   * {Types::GetEmailIdentityResponse#mail_from_attributes #mail_from_attributes} => Types::MailFromAttributes
    #   * {Types::GetEmailIdentityResponse#policies #policies} => Hash&lt;String,String&gt;
    #   * {Types::GetEmailIdentityResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::GetEmailIdentityResponse#configuration_set_name #configuration_set_name} => String
    #   * {Types::GetEmailIdentityResponse#verification_status #verification_status} => String
    #   * {Types::GetEmailIdentityResponse#verification_info #verification_info} => Types::VerificationInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_identity({
    #     email_identity: "Identity", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_type #=> String, one of "EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"
    #   resp.feedback_forwarding_status #=> Boolean
    #   resp.verified_for_sending_status #=> Boolean
    #   resp.dkim_attributes.signing_enabled #=> Boolean
    #   resp.dkim_attributes.status #=> String, one of "PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"
    #   resp.dkim_attributes.tokens #=> Array
    #   resp.dkim_attributes.tokens[0] #=> String
    #   resp.dkim_attributes.signing_attributes_origin #=> String, one of "AWS_SES", "EXTERNAL", "AWS_SES_AF_SOUTH_1", "AWS_SES_EU_NORTH_1", "AWS_SES_AP_SOUTH_1", "AWS_SES_EU_WEST_3", "AWS_SES_EU_WEST_2", "AWS_SES_EU_SOUTH_1", "AWS_SES_EU_WEST_1", "AWS_SES_AP_NORTHEAST_3", "AWS_SES_AP_NORTHEAST_2", "AWS_SES_ME_SOUTH_1", "AWS_SES_AP_NORTHEAST_1", "AWS_SES_IL_CENTRAL_1", "AWS_SES_SA_EAST_1", "AWS_SES_CA_CENTRAL_1", "AWS_SES_AP_SOUTHEAST_1", "AWS_SES_AP_SOUTHEAST_2", "AWS_SES_AP_SOUTHEAST_3", "AWS_SES_EU_CENTRAL_1", "AWS_SES_US_EAST_1", "AWS_SES_US_EAST_2", "AWS_SES_US_WEST_1", "AWS_SES_US_WEST_2", "AWS_SES_ME_CENTRAL_1", "AWS_SES_AP_SOUTH_2", "AWS_SES_EU_CENTRAL_2"
    #   resp.dkim_attributes.next_signing_key_length #=> String, one of "RSA_1024_BIT", "RSA_2048_BIT"
    #   resp.dkim_attributes.current_signing_key_length #=> String, one of "RSA_1024_BIT", "RSA_2048_BIT"
    #   resp.dkim_attributes.last_key_generation_timestamp #=> Time
    #   resp.mail_from_attributes.mail_from_domain #=> String
    #   resp.mail_from_attributes.mail_from_domain_status #=> String, one of "PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE"
    #   resp.mail_from_attributes.behavior_on_mx_failure #=> String, one of "USE_DEFAULT_VALUE", "REJECT_MESSAGE"
    #   resp.policies #=> Hash
    #   resp.policies["PolicyName"] #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.configuration_set_name #=> String
    #   resp.verification_status #=> String, one of "PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"
    #   resp.verification_info.last_checked_timestamp #=> Time
    #   resp.verification_info.last_success_timestamp #=> Time
    #   resp.verification_info.error_type #=> String, one of "SERVICE_ERROR", "DNS_SERVER_ERROR", "HOST_NOT_FOUND", "TYPE_NOT_FOUND", "INVALID_VALUE", "REPLICATION_ACCESS_DENIED", "REPLICATION_PRIMARY_NOT_FOUND", "REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED", "REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED", "REPLICATION_PRIMARY_INVALID_REGION"
    #   resp.verification_info.soa_record.primary_name_server #=> String
    #   resp.verification_info.soa_record.admin_email #=> String
    #   resp.verification_info.soa_record.serial_number #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetEmailIdentity AWS API Documentation
    #
    # @overload get_email_identity(params = {})
    # @param [Hash] params ({})
    def get_email_identity(params = {}, options = {})
      req = build_request(:get_email_identity, params)
      req.send_request(options)
    end

    # Returns the requested sending authorization policies for the given
    # identity (an email address or a domain). The policies are returned as
    # a map of policy names to policy contents. You can retrieve a maximum
    # of 20 policies at a time.
    #
    # <note markdown="1"> This API is for the identity owner only. If you have not verified the
    # identity, this API will return an error.
    #
    #  </note>
    #
    # Sending authorization is a feature that enables an identity owner to
    # authorize other senders to use its identities. For information about
    # using sending authorization, see the [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [required, String] :email_identity
    #   The email identity.
    #
    # @return [Types::GetEmailIdentityPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEmailIdentityPoliciesResponse#policies #policies} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_identity_policies({
    #     email_identity: "Identity", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Hash
    #   resp.policies["PolicyName"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetEmailIdentityPolicies AWS API Documentation
    #
    # @overload get_email_identity_policies(params = {})
    # @param [Hash] params ({})
    def get_email_identity_policies(params = {}, options = {})
      req = build_request(:get_email_identity_policies, params)
      req.send_request(options)
    end

    # Displays the template object (which includes the subject line, HTML
    # part and text part) for the template you specify.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :template_name
    #   The name of the template.
    #
    # @return [Types::GetEmailTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEmailTemplateResponse#template_name #template_name} => String
    #   * {Types::GetEmailTemplateResponse#template_content #template_content} => Types::EmailTemplateContent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_template({
    #     template_name: "EmailTemplateName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.template_name #=> String
    #   resp.template_content.subject #=> String
    #   resp.template_content.text #=> String
    #   resp.template_content.html #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetEmailTemplate AWS API Documentation
    #
    # @overload get_email_template(params = {})
    # @param [Hash] params ({})
    def get_email_template(params = {}, options = {})
      req = build_request(:get_email_template, params)
      req.send_request(options)
    end

    # Provides information about an export job.
    #
    # @option params [required, String] :job_id
    #   The export job ID.
    #
    # @return [Types::GetExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExportJobResponse#job_id #job_id} => String
    #   * {Types::GetExportJobResponse#export_source_type #export_source_type} => String
    #   * {Types::GetExportJobResponse#job_status #job_status} => String
    #   * {Types::GetExportJobResponse#export_destination #export_destination} => Types::ExportDestination
    #   * {Types::GetExportJobResponse#export_data_source #export_data_source} => Types::ExportDataSource
    #   * {Types::GetExportJobResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetExportJobResponse#completed_timestamp #completed_timestamp} => Time
    #   * {Types::GetExportJobResponse#failure_info #failure_info} => Types::FailureInfo
    #   * {Types::GetExportJobResponse#statistics #statistics} => Types::ExportStatistics
    #
    #
    # @example Example: Get export job
    #
    #   # Gets the export job with ID ef28cf62-9d8e-4b60-9283-b09816c99a99
    #
    #   resp = client.get_export_job({
    #     job_id: "ef28cf62-9d8e-4b60-9283-b09816c99a99", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_timestamp: Time.parse("1685700961057"), 
    #     export_data_source: {
    #       metrics_data_source: {
    #         dimensions: {
    #           "ISP" => [
    #             "*", 
    #           ], 
    #         }, 
    #         end_date: Time.parse("1675209600000"), 
    #         metrics: [
    #           {
    #             aggregation: "VOLUME", 
    #             name: "SEND", 
    #           }, 
    #           {
    #             aggregation: "VOLUME", 
    #             name: "COMPLAINT", 
    #           }, 
    #           {
    #             aggregation: "RATE", 
    #             name: "COMPLAINT", 
    #           }, 
    #         ], 
    #         namespace: "VDM", 
    #         start_date: Time.parse("1672531200000"), 
    #       }, 
    #     }, 
    #     export_destination: {
    #       data_format: "CSV", 
    #     }, 
    #     export_source_type: "METRICS_DATA", 
    #     job_id: "ef28cf62-9d8e-4b60-9283-b09816c99a99", 
    #     job_status: "PROCESSING", 
    #     statistics: {
    #       exported_records_count: 5, 
    #       processed_records_count: 5, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_export_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.export_source_type #=> String, one of "METRICS_DATA", "MESSAGE_INSIGHTS"
    #   resp.job_status #=> String, one of "CREATED", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.export_destination.data_format #=> String, one of "CSV", "JSON"
    #   resp.export_destination.s3_url #=> String
    #   resp.export_data_source.metrics_data_source.dimensions #=> Hash
    #   resp.export_data_source.metrics_data_source.dimensions["MetricDimensionName"] #=> Array
    #   resp.export_data_source.metrics_data_source.dimensions["MetricDimensionName"][0] #=> String
    #   resp.export_data_source.metrics_data_source.namespace #=> String, one of "VDM"
    #   resp.export_data_source.metrics_data_source.metrics #=> Array
    #   resp.export_data_source.metrics_data_source.metrics[0].name #=> String, one of "SEND", "COMPLAINT", "PERMANENT_BOUNCE", "TRANSIENT_BOUNCE", "OPEN", "CLICK", "DELIVERY", "DELIVERY_OPEN", "DELIVERY_CLICK", "DELIVERY_COMPLAINT"
    #   resp.export_data_source.metrics_data_source.metrics[0].aggregation #=> String, one of "RATE", "VOLUME"
    #   resp.export_data_source.metrics_data_source.start_date #=> Time
    #   resp.export_data_source.metrics_data_source.end_date #=> Time
    #   resp.export_data_source.message_insights_data_source.start_date #=> Time
    #   resp.export_data_source.message_insights_data_source.end_date #=> Time
    #   resp.export_data_source.message_insights_data_source.include.from_email_address #=> Array
    #   resp.export_data_source.message_insights_data_source.include.from_email_address[0] #=> String
    #   resp.export_data_source.message_insights_data_source.include.destination #=> Array
    #   resp.export_data_source.message_insights_data_source.include.destination[0] #=> String
    #   resp.export_data_source.message_insights_data_source.include.subject #=> Array
    #   resp.export_data_source.message_insights_data_source.include.subject[0] #=> String
    #   resp.export_data_source.message_insights_data_source.include.isp #=> Array
    #   resp.export_data_source.message_insights_data_source.include.isp[0] #=> String
    #   resp.export_data_source.message_insights_data_source.include.last_delivery_event #=> Array
    #   resp.export_data_source.message_insights_data_source.include.last_delivery_event[0] #=> String, one of "SEND", "DELIVERY", "TRANSIENT_BOUNCE", "PERMANENT_BOUNCE", "UNDETERMINED_BOUNCE", "COMPLAINT"
    #   resp.export_data_source.message_insights_data_source.include.last_engagement_event #=> Array
    #   resp.export_data_source.message_insights_data_source.include.last_engagement_event[0] #=> String, one of "OPEN", "CLICK"
    #   resp.export_data_source.message_insights_data_source.exclude.from_email_address #=> Array
    #   resp.export_data_source.message_insights_data_source.exclude.from_email_address[0] #=> String
    #   resp.export_data_source.message_insights_data_source.exclude.destination #=> Array
    #   resp.export_data_source.message_insights_data_source.exclude.destination[0] #=> String
    #   resp.export_data_source.message_insights_data_source.exclude.subject #=> Array
    #   resp.export_data_source.message_insights_data_source.exclude.subject[0] #=> String
    #   resp.export_data_source.message_insights_data_source.exclude.isp #=> Array
    #   resp.export_data_source.message_insights_data_source.exclude.isp[0] #=> String
    #   resp.export_data_source.message_insights_data_source.exclude.last_delivery_event #=> Array
    #   resp.export_data_source.message_insights_data_source.exclude.last_delivery_event[0] #=> String, one of "SEND", "DELIVERY", "TRANSIENT_BOUNCE", "PERMANENT_BOUNCE", "UNDETERMINED_BOUNCE", "COMPLAINT"
    #   resp.export_data_source.message_insights_data_source.exclude.last_engagement_event #=> Array
    #   resp.export_data_source.message_insights_data_source.exclude.last_engagement_event[0] #=> String, one of "OPEN", "CLICK"
    #   resp.export_data_source.message_insights_data_source.max_results #=> Integer
    #   resp.created_timestamp #=> Time
    #   resp.completed_timestamp #=> Time
    #   resp.failure_info.failed_records_s3_url #=> String
    #   resp.failure_info.error_message #=> String
    #   resp.statistics.processed_records_count #=> Integer
    #   resp.statistics.exported_records_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetExportJob AWS API Documentation
    #
    # @overload get_export_job(params = {})
    # @param [Hash] params ({})
    def get_export_job(params = {}, options = {})
      req = build_request(:get_export_job, params)
      req.send_request(options)
    end

    # Provides information about an import job.
    #
    # @option params [required, String] :job_id
    #   The ID of the import job.
    #
    # @return [Types::GetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportJobResponse#job_id #job_id} => String
    #   * {Types::GetImportJobResponse#import_destination #import_destination} => Types::ImportDestination
    #   * {Types::GetImportJobResponse#import_data_source #import_data_source} => Types::ImportDataSource
    #   * {Types::GetImportJobResponse#failure_info #failure_info} => Types::FailureInfo
    #   * {Types::GetImportJobResponse#job_status #job_status} => String
    #   * {Types::GetImportJobResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetImportJobResponse#completed_timestamp #completed_timestamp} => Time
    #   * {Types::GetImportJobResponse#processed_records_count #processed_records_count} => Integer
    #   * {Types::GetImportJobResponse#failed_records_count #failed_records_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.import_destination.suppression_list_destination.suppression_list_import_action #=> String, one of "DELETE", "PUT"
    #   resp.import_destination.contact_list_destination.contact_list_name #=> String
    #   resp.import_destination.contact_list_destination.contact_list_import_action #=> String, one of "DELETE", "PUT"
    #   resp.import_data_source.s3_url #=> String
    #   resp.import_data_source.data_format #=> String, one of "CSV", "JSON"
    #   resp.failure_info.failed_records_s3_url #=> String
    #   resp.failure_info.error_message #=> String
    #   resp.job_status #=> String, one of "CREATED", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.created_timestamp #=> Time
    #   resp.completed_timestamp #=> Time
    #   resp.processed_records_count #=> Integer
    #   resp.failed_records_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetImportJob AWS API Documentation
    #
    # @overload get_import_job(params = {})
    # @param [Hash] params ({})
    def get_import_job(params = {}, options = {})
      req = build_request(:get_import_job, params)
      req.send_request(options)
    end

    # Provides information about a specific message, including the from
    # address, the subject, the recipient address, email tags, as well as
    # events associated with the message.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :message_id
    #   A `MessageId` is a unique identifier for a message, and is returned
    #   when sending emails through Amazon SES.
    #
    # @return [Types::GetMessageInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMessageInsightsResponse#message_id #message_id} => String
    #   * {Types::GetMessageInsightsResponse#from_email_address #from_email_address} => String
    #   * {Types::GetMessageInsightsResponse#subject #subject} => String
    #   * {Types::GetMessageInsightsResponse#email_tags #email_tags} => Array&lt;Types::MessageTag&gt;
    #   * {Types::GetMessageInsightsResponse#insights #insights} => Array&lt;Types::EmailInsights&gt;
    #
    #
    # @example Example: Get Message Insights
    #
    #   # Provides information about a specific message.
    #
    #   resp = client.get_message_insights({
    #     message_id: "000000000000ab00-0a000aa0-1234-0a0a-1234-0a0aaa0aa00a-000000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     email_tags: [
    #       {
    #         name: "ses:operation", 
    #         value: "SendEmail", 
    #       }, 
    #       {
    #         name: "ses:recipient-isp", 
    #         value: "UNKNOWN_ISP", 
    #       }, 
    #       {
    #         name: "ses:source-ip", 
    #         value: "0.0.0.0", 
    #       }, 
    #       {
    #         name: "ses:from-domain", 
    #         value: "example.com", 
    #       }, 
    #       {
    #         name: "ses:sender-identity", 
    #         value: "hello@example.com", 
    #       }, 
    #       {
    #         name: "ses:caller-identity", 
    #         value: "Identity", 
    #       }, 
    #     ], 
    #     from_email_address: "hello@example.com", 
    #     insights: [
    #       {
    #         destination: "recipient@example.com", 
    #         events: [
    #           {
    #             timestamp: Time.parse("2023-01-01T00:00:00.000000+01:00"), 
    #             type: "SEND", 
    #           }, 
    #           {
    #             timestamp: Time.parse("2023-01-01T00:00:01.000000+01:00"), 
    #             type: "DELIVERY", 
    #           }, 
    #         ], 
    #         isp: "UNKNOWN_ISP", 
    #       }, 
    #     ], 
    #     message_id: "000000000000ab00-0a000aa0-1234-0a0a-1234-0a0aaa0aa00a-000000", 
    #     subject: "hello", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_message_insights({
    #     message_id: "OutboundMessageId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #   resp.from_email_address #=> String
    #   resp.subject #=> String
    #   resp.email_tags #=> Array
    #   resp.email_tags[0].name #=> String
    #   resp.email_tags[0].value #=> String
    #   resp.insights #=> Array
    #   resp.insights[0].destination #=> String
    #   resp.insights[0].isp #=> String
    #   resp.insights[0].events #=> Array
    #   resp.insights[0].events[0].timestamp #=> Time
    #   resp.insights[0].events[0].type #=> String, one of "SEND", "REJECT", "BOUNCE", "COMPLAINT", "DELIVERY", "OPEN", "CLICK", "RENDERING_FAILURE", "DELIVERY_DELAY", "SUBSCRIPTION"
    #   resp.insights[0].events[0].details.bounce.bounce_type #=> String, one of "UNDETERMINED", "TRANSIENT", "PERMANENT"
    #   resp.insights[0].events[0].details.bounce.bounce_sub_type #=> String
    #   resp.insights[0].events[0].details.bounce.diagnostic_code #=> String
    #   resp.insights[0].events[0].details.complaint.complaint_sub_type #=> String
    #   resp.insights[0].events[0].details.complaint.complaint_feedback_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetMessageInsights AWS API Documentation
    #
    # @overload get_message_insights(params = {})
    # @param [Hash] params ({})
    def get_message_insights(params = {}, options = {})
      req = build_request(:get_message_insights, params)
      req.send_request(options)
    end

    # Displays the multi-region endpoint (global-endpoint) configuration.
    #
    # Only multi-region endpoints (global-endpoints) whose primary region is
    # the AWS-Region where operation is executed can be displayed.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the multi-region endpoint (global-endpoint).
    #
    # @return [Types::GetMultiRegionEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMultiRegionEndpointResponse#endpoint_name #endpoint_name} => String
    #   * {Types::GetMultiRegionEndpointResponse#endpoint_id #endpoint_id} => String
    #   * {Types::GetMultiRegionEndpointResponse#routes #routes} => Array&lt;Types::Route&gt;
    #   * {Types::GetMultiRegionEndpointResponse#status #status} => String
    #   * {Types::GetMultiRegionEndpointResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetMultiRegionEndpointResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multi_region_endpoint({
    #     endpoint_name: "EndpointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_name #=> String
    #   resp.endpoint_id #=> String
    #   resp.routes #=> Array
    #   resp.routes[0].region #=> String
    #   resp.status #=> String, one of "CREATING", "READY", "FAILED", "DELETING"
    #   resp.created_timestamp #=> Time
    #   resp.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetMultiRegionEndpoint AWS API Documentation
    #
    # @overload get_multi_region_endpoint(params = {})
    # @param [Hash] params ({})
    def get_multi_region_endpoint(params = {}, options = {})
      req = build_request(:get_multi_region_endpoint, params)
      req.send_request(options)
    end

    # Retrieves information about a specific email address that's on the
    # suppression list for your account.
    #
    # @option params [required, String] :email_address
    #   The email address that's on the account suppression list.
    #
    # @return [Types::GetSuppressedDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSuppressedDestinationResponse#suppressed_destination #suppressed_destination} => Types::SuppressedDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_suppressed_destination({
    #     email_address: "EmailAddress", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.suppressed_destination.email_address #=> String
    #   resp.suppressed_destination.reason #=> String, one of "BOUNCE", "COMPLAINT"
    #   resp.suppressed_destination.last_update_time #=> Time
    #   resp.suppressed_destination.attributes.message_id #=> String
    #   resp.suppressed_destination.attributes.feedback_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/GetSuppressedDestination AWS API Documentation
    #
    # @overload get_suppressed_destination(params = {})
    # @param [Hash] params ({})
    def get_suppressed_destination(params = {}, options = {})
      req = build_request(:get_suppressed_destination, params)
      req.send_request(options)
    end

    # List all of the configuration sets associated with your account in the
    # current region.
    #
    # *Configuration sets* are groups of rules that you can apply to the
    # emails you send. You apply a configuration set to an email by
    # including a reference to the configuration set in the headers of the
    # email. When you apply a configuration set to an email, all of the
    # rules in that configuration set are applied to the email.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListConfigurationSets` to
    #   indicate the position in the list of configuration sets.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListConfigurationSets`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    # @return [Types::ListConfigurationSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationSetsResponse#configuration_sets #configuration_sets} => Array&lt;String&gt;
    #   * {Types::ListConfigurationSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_sets({
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_sets #=> Array
    #   resp.configuration_sets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListConfigurationSets AWS API Documentation
    #
    # @overload list_configuration_sets(params = {})
    # @param [Hash] params ({})
    def list_configuration_sets(params = {}, options = {})
      req = build_request(:list_configuration_sets, params)
      req.send_request(options)
    end

    # Lists all of the contact lists available.
    #
    # If your output includes a "NextToken" field with a string value,
    # this indicates there may be additional contacts on the filtered list -
    # regardless of the number of contacts returned.
    #
    # @option params [Integer] :page_size
    #   Maximum number of contact lists to return at once. Use this parameter
    #   to paginate results. If additional contact lists exist beyond the
    #   specified limit, the `NextToken` element is sent in the response. Use
    #   the `NextToken` value in subsequent requests to retrieve additional
    #   lists.
    #
    # @option params [String] :next_token
    #   A string token indicating that there might be additional contact lists
    #   available to be listed. Use the token provided in the Response to use
    #   in the subsequent call to ListContactLists with the same parameters to
    #   retrieve the next page of contact lists.
    #
    # @return [Types::ListContactListsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactListsResponse#contact_lists #contact_lists} => Array&lt;Types::ContactList&gt;
    #   * {Types::ListContactListsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_lists({
    #     page_size: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_lists #=> Array
    #   resp.contact_lists[0].contact_list_name #=> String
    #   resp.contact_lists[0].last_updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListContactLists AWS API Documentation
    #
    # @overload list_contact_lists(params = {})
    # @param [Hash] params ({})
    def list_contact_lists(params = {}, options = {})
      req = build_request(:list_contact_lists, params)
      req.send_request(options)
    end

    # Lists the contacts present in a specific contact list.
    #
    # @option params [required, String] :contact_list_name
    #   The name of the contact list.
    #
    # @option params [Types::ListContactsFilter] :filter
    #   A filter that can be applied to a list of contacts.
    #
    # @option params [Integer] :page_size
    #   The number of contacts that may be returned at once, which is
    #   dependent on if there are more or less contacts than the value of the
    #   PageSize. Use this parameter to paginate results. If additional
    #   contacts exist beyond the specified limit, the `NextToken` element is
    #   sent in the response. Use the `NextToken` value in subsequent requests
    #   to retrieve additional contacts.
    #
    # @option params [String] :next_token
    #   A string token indicating that there might be additional contacts
    #   available to be listed. Use the token provided in the Response to use
    #   in the subsequent call to ListContacts with the same parameters to
    #   retrieve the next page of contacts.
    #
    # @return [Types::ListContactsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactsResponse#contacts #contacts} => Array&lt;Types::Contact&gt;
    #   * {Types::ListContactsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contacts({
    #     contact_list_name: "ContactListName", # required
    #     filter: {
    #       filtered_status: "OPT_IN", # accepts OPT_IN, OPT_OUT
    #       topic_filter: {
    #         topic_name: "TopicName",
    #         use_default_if_preference_unavailable: false,
    #       },
    #     },
    #     page_size: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contacts #=> Array
    #   resp.contacts[0].email_address #=> String
    #   resp.contacts[0].topic_preferences #=> Array
    #   resp.contacts[0].topic_preferences[0].topic_name #=> String
    #   resp.contacts[0].topic_preferences[0].subscription_status #=> String, one of "OPT_IN", "OPT_OUT"
    #   resp.contacts[0].topic_default_preferences #=> Array
    #   resp.contacts[0].topic_default_preferences[0].topic_name #=> String
    #   resp.contacts[0].topic_default_preferences[0].subscription_status #=> String, one of "OPT_IN", "OPT_OUT"
    #   resp.contacts[0].unsubscribe_all #=> Boolean
    #   resp.contacts[0].last_updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListContacts AWS API Documentation
    #
    # @overload list_contacts(params = {})
    # @param [Hash] params ({})
    def list_contacts(params = {}, options = {})
      req = build_request(:list_contacts, params)
      req.send_request(options)
    end

    # Lists the existing custom verification email templates for your
    # account in the current Amazon Web Services Region.
    #
    # For more information about custom verification email templates, see
    # [Using custom verification email templates][1] in the *Amazon SES
    # Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to
    #   `ListCustomVerificationEmailTemplates` to indicate the position in the
    #   list of custom verification email templates.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListCustomVerificationEmailTemplates`. If the number of results is
    #   larger than the number you specified in this parameter, then the
    #   response includes a `NextToken` element, which you can use to obtain
    #   additional results.
    #
    #   The value you specify has to be at least 1, and can be no more than
    #   50.
    #
    # @return [Types::ListCustomVerificationEmailTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomVerificationEmailTemplatesResponse#custom_verification_email_templates #custom_verification_email_templates} => Array&lt;Types::CustomVerificationEmailTemplateMetadata&gt;
    #   * {Types::ListCustomVerificationEmailTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_verification_email_templates({
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_verification_email_templates #=> Array
    #   resp.custom_verification_email_templates[0].template_name #=> String
    #   resp.custom_verification_email_templates[0].from_email_address #=> String
    #   resp.custom_verification_email_templates[0].template_subject #=> String
    #   resp.custom_verification_email_templates[0].success_redirection_url #=> String
    #   resp.custom_verification_email_templates[0].failure_redirection_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListCustomVerificationEmailTemplates AWS API Documentation
    #
    # @overload list_custom_verification_email_templates(params = {})
    # @param [Hash] params ({})
    def list_custom_verification_email_templates(params = {}, options = {})
      req = build_request(:list_custom_verification_email_templates, params)
      req.send_request(options)
    end

    # List all of the dedicated IP pools that exist in your Amazon Web
    # Services account in the current Region.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListDedicatedIpPools` to
    #   indicate the position in the list of dedicated IP pools.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListDedicatedIpPools`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    # @return [Types::ListDedicatedIpPoolsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDedicatedIpPoolsResponse#dedicated_ip_pools #dedicated_ip_pools} => Array&lt;String&gt;
    #   * {Types::ListDedicatedIpPoolsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dedicated_ip_pools({
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dedicated_ip_pools #=> Array
    #   resp.dedicated_ip_pools[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListDedicatedIpPools AWS API Documentation
    #
    # @overload list_dedicated_ip_pools(params = {})
    # @param [Hash] params ({})
    def list_dedicated_ip_pools(params = {}, options = {})
      req = build_request(:list_dedicated_ip_pools, params)
      req.send_request(options)
    end

    # Show a list of the predictive inbox placement tests that you've
    # performed, regardless of their statuses. For predictive inbox
    # placement tests that are complete, you can use the
    # `GetDeliverabilityTestReport` operation to view the results.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to
    #   `ListDeliverabilityTestReports` to indicate the position in the list
    #   of predictive inbox placement tests.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListDeliverabilityTestReports`. If the number of results is larger
    #   than the number you specified in this parameter, then the response
    #   includes a `NextToken` element, which you can use to obtain additional
    #   results.
    #
    #   The value you specify has to be at least 0, and can be no more than
    #   1000.
    #
    # @return [Types::ListDeliverabilityTestReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeliverabilityTestReportsResponse#deliverability_test_reports #deliverability_test_reports} => Array&lt;Types::DeliverabilityTestReport&gt;
    #   * {Types::ListDeliverabilityTestReportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deliverability_test_reports({
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.deliverability_test_reports #=> Array
    #   resp.deliverability_test_reports[0].report_id #=> String
    #   resp.deliverability_test_reports[0].report_name #=> String
    #   resp.deliverability_test_reports[0].subject #=> String
    #   resp.deliverability_test_reports[0].from_email_address #=> String
    #   resp.deliverability_test_reports[0].create_date #=> Time
    #   resp.deliverability_test_reports[0].deliverability_test_status #=> String, one of "IN_PROGRESS", "COMPLETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListDeliverabilityTestReports AWS API Documentation
    #
    # @overload list_deliverability_test_reports(params = {})
    # @param [Hash] params ({})
    def list_deliverability_test_reports(params = {}, options = {})
      req = build_request(:list_deliverability_test_reports, params)
      req.send_request(options)
    end

    # Retrieve deliverability data for all the campaigns that used a
    # specific domain to send email during a specified time range. This data
    # is available for a domain only if you enabled the Deliverability
    # dashboard for the domain.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_date
    #   The first day that you want to obtain deliverability data for.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_date
    #   The last day that you want to obtain deliverability data for. This
    #   value has to be less than or equal to 30 days after the value of the
    #   `StartDate` parameter.
    #
    # @option params [required, String] :subscribed_domain
    #   The domain to obtain deliverability data for.
    #
    # @option params [String] :next_token
    #   A token that’s returned from a previous call to the
    #   `ListDomainDeliverabilityCampaigns` operation. This token indicates
    #   the position of a campaign in the list of campaigns.
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to include in response to a single call
    #   to the `ListDomainDeliverabilityCampaigns` operation. If the number of
    #   results is larger than the number that you specify in this parameter,
    #   the response includes a `NextToken` element, which you can use to
    #   obtain additional results.
    #
    # @return [Types::ListDomainDeliverabilityCampaignsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainDeliverabilityCampaignsResponse#domain_deliverability_campaigns #domain_deliverability_campaigns} => Array&lt;Types::DomainDeliverabilityCampaign&gt;
    #   * {Types::ListDomainDeliverabilityCampaignsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_deliverability_campaigns({
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #     subscribed_domain: "Domain", # required
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_deliverability_campaigns #=> Array
    #   resp.domain_deliverability_campaigns[0].campaign_id #=> String
    #   resp.domain_deliverability_campaigns[0].image_url #=> String
    #   resp.domain_deliverability_campaigns[0].subject #=> String
    #   resp.domain_deliverability_campaigns[0].from_address #=> String
    #   resp.domain_deliverability_campaigns[0].sending_ips #=> Array
    #   resp.domain_deliverability_campaigns[0].sending_ips[0] #=> String
    #   resp.domain_deliverability_campaigns[0].first_seen_date_time #=> Time
    #   resp.domain_deliverability_campaigns[0].last_seen_date_time #=> Time
    #   resp.domain_deliverability_campaigns[0].inbox_count #=> Integer
    #   resp.domain_deliverability_campaigns[0].spam_count #=> Integer
    #   resp.domain_deliverability_campaigns[0].read_rate #=> Float
    #   resp.domain_deliverability_campaigns[0].delete_rate #=> Float
    #   resp.domain_deliverability_campaigns[0].read_delete_rate #=> Float
    #   resp.domain_deliverability_campaigns[0].projected_volume #=> Integer
    #   resp.domain_deliverability_campaigns[0].esps #=> Array
    #   resp.domain_deliverability_campaigns[0].esps[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListDomainDeliverabilityCampaigns AWS API Documentation
    #
    # @overload list_domain_deliverability_campaigns(params = {})
    # @param [Hash] params ({})
    def list_domain_deliverability_campaigns(params = {}, options = {})
      req = build_request(:list_domain_deliverability_campaigns, params)
      req.send_request(options)
    end

    # Returns a list of all of the email identities that are associated with
    # your Amazon Web Services account. An identity can be either an email
    # address or a domain. This operation returns identities that are
    # verified as well as those that aren't. This operation returns
    # identities that are associated with Amazon SES and Amazon Pinpoint.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListEmailIdentities` to
    #   indicate the position in the list of identities.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListEmailIdentities`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    #   The value you specify has to be at least 0, and can be no more than
    #   1000.
    #
    # @return [Types::ListEmailIdentitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEmailIdentitiesResponse#email_identities #email_identities} => Array&lt;Types::IdentityInfo&gt;
    #   * {Types::ListEmailIdentitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_email_identities({
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.email_identities #=> Array
    #   resp.email_identities[0].identity_type #=> String, one of "EMAIL_ADDRESS", "DOMAIN", "MANAGED_DOMAIN"
    #   resp.email_identities[0].identity_name #=> String
    #   resp.email_identities[0].sending_enabled #=> Boolean
    #   resp.email_identities[0].verification_status #=> String, one of "PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListEmailIdentities AWS API Documentation
    #
    # @overload list_email_identities(params = {})
    # @param [Hash] params ({})
    def list_email_identities(params = {}, options = {})
      req = build_request(:list_email_identities, params)
      req.send_request(options)
    end

    # Lists the email templates present in your Amazon SES account in the
    # current Amazon Web Services Region.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListEmailTemplates` to
    #   indicate the position in the list of email templates.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListEmailTemplates`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    #   The value you specify has to be at least 1, and can be no more than
    #   100.
    #
    # @return [Types::ListEmailTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEmailTemplatesResponse#templates_metadata #templates_metadata} => Array&lt;Types::EmailTemplateMetadata&gt;
    #   * {Types::ListEmailTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_email_templates({
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.templates_metadata #=> Array
    #   resp.templates_metadata[0].template_name #=> String
    #   resp.templates_metadata[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListEmailTemplates AWS API Documentation
    #
    # @overload list_email_templates(params = {})
    # @param [Hash] params ({})
    def list_email_templates(params = {}, options = {})
      req = build_request(:list_email_templates, params)
      req.send_request(options)
    end

    # Lists all of the export jobs.
    #
    # @option params [String] :next_token
    #   The pagination token returned from a previous call to `ListExportJobs`
    #   to indicate the position in the list of export jobs.
    #
    # @option params [Integer] :page_size
    #   Maximum number of export jobs to return at once. Use this parameter to
    #   paginate results. If additional export jobs exist beyond the specified
    #   limit, the `NextToken` element is sent in the response. Use the
    #   `NextToken` value in subsequent calls to `ListExportJobs` to retrieve
    #   additional export jobs.
    #
    # @option params [String] :export_source_type
    #   A value used to list export jobs that have a certain
    #   `ExportSourceType`.
    #
    # @option params [String] :job_status
    #   A value used to list export jobs that have a certain `JobStatus`.
    #
    # @return [Types::ListExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExportJobsResponse#export_jobs #export_jobs} => Array&lt;Types::ExportJobSummary&gt;
    #   * {Types::ListExportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List export jobs
    #
    #   # Lists export jobs of type METRICS_DATA and status PROCESSING
    #
    #   resp = client.list_export_jobs({
    #     export_source_type: "METRICS_DATA", 
    #     job_status: "PROCESSING", 
    #     page_size: 25, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     export_jobs: [
    #       {
    #         created_timestamp: Time.parse("167697473543"), 
    #         export_source_type: "METRICS_DATA", 
    #         job_id: "72de83a0-6b49-47ca-9783-8b812576887a", 
    #         job_status: "PROCESSING", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_export_jobs({
    #     next_token: "NextToken",
    #     page_size: 1,
    #     export_source_type: "METRICS_DATA", # accepts METRICS_DATA, MESSAGE_INSIGHTS
    #     job_status: "CREATED", # accepts CREATED, PROCESSING, COMPLETED, FAILED, CANCELLED
    #   })
    #
    # @example Response structure
    #
    #   resp.export_jobs #=> Array
    #   resp.export_jobs[0].job_id #=> String
    #   resp.export_jobs[0].export_source_type #=> String, one of "METRICS_DATA", "MESSAGE_INSIGHTS"
    #   resp.export_jobs[0].job_status #=> String, one of "CREATED", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.export_jobs[0].created_timestamp #=> Time
    #   resp.export_jobs[0].completed_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListExportJobs AWS API Documentation
    #
    # @overload list_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_export_jobs(params = {}, options = {})
      req = build_request(:list_export_jobs, params)
      req.send_request(options)
    end

    # Lists all of the import jobs.
    #
    # @option params [String] :import_destination_type
    #   The destination of the import job, which can be used to list import
    #   jobs that have a certain `ImportDestinationType`.
    #
    # @option params [String] :next_token
    #   A string token indicating that there might be additional import jobs
    #   available to be listed. Copy this token to a subsequent call to
    #   `ListImportJobs` with the same parameters to retrieve the next page of
    #   import jobs.
    #
    # @option params [Integer] :page_size
    #   Maximum number of import jobs to return at once. Use this parameter to
    #   paginate results. If additional import jobs exist beyond the specified
    #   limit, the `NextToken` element is sent in the response. Use the
    #   `NextToken` value in subsequent requests to retrieve additional
    #   addresses.
    #
    # @return [Types::ListImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportJobsResponse#import_jobs #import_jobs} => Array&lt;Types::ImportJobSummary&gt;
    #   * {Types::ListImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_import_jobs({
    #     import_destination_type: "SUPPRESSION_LIST", # accepts SUPPRESSION_LIST, CONTACT_LIST
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.import_jobs #=> Array
    #   resp.import_jobs[0].job_id #=> String
    #   resp.import_jobs[0].import_destination.suppression_list_destination.suppression_list_import_action #=> String, one of "DELETE", "PUT"
    #   resp.import_jobs[0].import_destination.contact_list_destination.contact_list_name #=> String
    #   resp.import_jobs[0].import_destination.contact_list_destination.contact_list_import_action #=> String, one of "DELETE", "PUT"
    #   resp.import_jobs[0].job_status #=> String, one of "CREATED", "PROCESSING", "COMPLETED", "FAILED", "CANCELLED"
    #   resp.import_jobs[0].created_timestamp #=> Time
    #   resp.import_jobs[0].processed_records_count #=> Integer
    #   resp.import_jobs[0].failed_records_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListImportJobs AWS API Documentation
    #
    # @overload list_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_import_jobs(params = {}, options = {})
      req = build_request(:list_import_jobs, params)
      req.send_request(options)
    end

    # List the multi-region endpoints (global-endpoints).
    #
    # Only multi-region endpoints (global-endpoints) whose primary region is
    # the AWS-Region where operation is executed will be listed.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListMultiRegionEndpoints` to
    #   indicate the position in the list of multi-region endpoints
    #   (global-endpoints).
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListMultiRegionEndpoints`. If the number of results is larger than
    #   the number you specified in this parameter, the response includes a
    #   `NextToken` element that you can use to retrieve the next page of
    #   results.
    #
    # @return [Types::ListMultiRegionEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMultiRegionEndpointsResponse#multi_region_endpoints #multi_region_endpoints} => Array&lt;Types::MultiRegionEndpoint&gt;
    #   * {Types::ListMultiRegionEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multi_region_endpoints({
    #     next_token: "NextTokenV2",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.multi_region_endpoints #=> Array
    #   resp.multi_region_endpoints[0].endpoint_name #=> String
    #   resp.multi_region_endpoints[0].status #=> String, one of "CREATING", "READY", "FAILED", "DELETING"
    #   resp.multi_region_endpoints[0].endpoint_id #=> String
    #   resp.multi_region_endpoints[0].regions #=> Array
    #   resp.multi_region_endpoints[0].regions[0] #=> String
    #   resp.multi_region_endpoints[0].created_timestamp #=> Time
    #   resp.multi_region_endpoints[0].last_updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListMultiRegionEndpoints AWS API Documentation
    #
    # @overload list_multi_region_endpoints(params = {})
    # @param [Hash] params ({})
    def list_multi_region_endpoints(params = {}, options = {})
      req = build_request(:list_multi_region_endpoints, params)
      req.send_request(options)
    end

    # Lists the recommendations present in your Amazon SES account in the
    # current Amazon Web Services Region.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [Hash<String,String>] :filter
    #   Filters applied when retrieving recommendations. Can eiter be an
    #   individual filter, or combinations of `STATUS` and `IMPACT` or
    #   `STATUS` and `TYPE`
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListRecommendations` to
    #   indicate the position in the list of recommendations.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListRecommendations`. If the number of results is larger than the
    #   number you specified in this parameter, then the response includes a
    #   `NextToken` element, which you can use to obtain additional results.
    #
    #   The value you specify has to be at least 1, and can be no more than
    #   100.
    #
    # @return [Types::ListRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationsResponse#recommendations #recommendations} => Array&lt;Types::Recommendation&gt;
    #   * {Types::ListRecommendationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations({
    #     filter: {
    #       "TYPE" => "ListRecommendationFilterValue",
    #     },
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendations #=> Array
    #   resp.recommendations[0].resource_arn #=> String
    #   resp.recommendations[0].type #=> String, one of "DKIM", "DMARC", "SPF", "BIMI", "COMPLAINT"
    #   resp.recommendations[0].description #=> String
    #   resp.recommendations[0].status #=> String, one of "OPEN", "FIXED"
    #   resp.recommendations[0].created_timestamp #=> Time
    #   resp.recommendations[0].last_updated_timestamp #=> Time
    #   resp.recommendations[0].impact #=> String, one of "LOW", "HIGH"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListRecommendations AWS API Documentation
    #
    # @overload list_recommendations(params = {})
    # @param [Hash] params ({})
    def list_recommendations(params = {}, options = {})
      req = build_request(:list_recommendations, params)
      req.send_request(options)
    end

    # Retrieves a list of email addresses that are on the suppression list
    # for your account.
    #
    # @option params [Array<String>] :reasons
    #   The factors that caused the email address to be added to .
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_date
    #   Used to filter the list of suppressed email destinations so that it
    #   only includes addresses that were added to the list after a specific
    #   date.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_date
    #   Used to filter the list of suppressed email destinations so that it
    #   only includes addresses that were added to the list before a specific
    #   date.
    #
    # @option params [String] :next_token
    #   A token returned from a previous call to `ListSuppressedDestinations`
    #   to indicate the position in the list of suppressed email addresses.
    #
    # @option params [Integer] :page_size
    #   The number of results to show in a single call to
    #   `ListSuppressedDestinations`. If the number of results is larger than
    #   the number you specified in this parameter, then the response includes
    #   a `NextToken` element, which you can use to obtain additional results.
    #
    # @return [Types::ListSuppressedDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSuppressedDestinationsResponse#suppressed_destination_summaries #suppressed_destination_summaries} => Array&lt;Types::SuppressedDestinationSummary&gt;
    #   * {Types::ListSuppressedDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_suppressed_destinations({
    #     reasons: ["BOUNCE"], # accepts BOUNCE, COMPLAINT
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     next_token: "NextToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.suppressed_destination_summaries #=> Array
    #   resp.suppressed_destination_summaries[0].email_address #=> String
    #   resp.suppressed_destination_summaries[0].reason #=> String, one of "BOUNCE", "COMPLAINT"
    #   resp.suppressed_destination_summaries[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListSuppressedDestinations AWS API Documentation
    #
    # @overload list_suppressed_destinations(params = {})
    # @param [Hash] params ({})
    def list_suppressed_destinations(params = {}, options = {})
      req = build_request(:list_suppressed_destinations, params)
      req.send_request(options)
    end

    # Retrieve a list of the tags (keys and values) that are associated with
    # a specified resource. A *tag* is a label that you optionally define
    # and associate with a resource. Each tag consists of a required *tag
    # key* and an optional associated *tag value*. A tag key is a general
    # label that acts as a category for more specific tag values. A tag
    # value acts as a descriptor within a tag key.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   retrieve tag information for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Enable or disable the automatic warm-up feature for dedicated IP
    # addresses.
    #
    # @option params [Boolean] :auto_warmup_enabled
    #   Enables or disables the automatic warm-up feature for dedicated IP
    #   addresses that are associated with your Amazon SES account in the
    #   current Amazon Web Services Region. Set to `true` to enable the
    #   automatic warm-up feature, or set to `false` to disable it.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_dedicated_ip_warmup_attributes({
    #     auto_warmup_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountDedicatedIpWarmupAttributes AWS API Documentation
    #
    # @overload put_account_dedicated_ip_warmup_attributes(params = {})
    # @param [Hash] params ({})
    def put_account_dedicated_ip_warmup_attributes(params = {}, options = {})
      req = build_request(:put_account_dedicated_ip_warmup_attributes, params)
      req.send_request(options)
    end

    # Update your Amazon SES account details.
    #
    # @option params [required, String] :mail_type
    #   The type of email your account will send.
    #
    # @option params [required, String] :website_url
    #   The URL of your website. This information helps us better understand
    #   the type of content that you plan to send.
    #
    # @option params [String] :contact_language
    #   The language you would prefer to be contacted with.
    #
    # @option params [String] :use_case_description
    #   A description of the types of email that you plan to send.
    #
    # @option params [Array<String>] :additional_contact_email_addresses
    #   Additional email addresses that you would like to be notified
    #   regarding Amazon SES matters.
    #
    # @option params [Boolean] :production_access_enabled
    #   Indicates whether or not your account should have production access in
    #   the current Amazon Web Services Region.
    #
    #   If the value is `false`, then your account is in the *sandbox*. When
    #   your account is in the sandbox, you can only send email to verified
    #   identities.
    #
    #   If the value is `true`, then your account has production access. When
    #   your account has production access, you can send email to any address.
    #   The sending quota and maximum sending rate for your account vary based
    #   on your specific use case.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_details({
    #     mail_type: "MARKETING", # required, accepts MARKETING, TRANSACTIONAL
    #     website_url: "WebsiteURL", # required
    #     contact_language: "EN", # accepts EN, JA
    #     use_case_description: "UseCaseDescription",
    #     additional_contact_email_addresses: ["AdditionalContactEmailAddress"],
    #     production_access_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountDetails AWS API Documentation
    #
    # @overload put_account_details(params = {})
    # @param [Hash] params ({})
    def put_account_details(params = {}, options = {})
      req = build_request(:put_account_details, params)
      req.send_request(options)
    end

    # Enable or disable the ability of your account to send email.
    #
    # @option params [Boolean] :sending_enabled
    #   Enables or disables your account's ability to send email. Set to
    #   `true` to enable email sending, or set to `false` to disable email
    #   sending.
    #
    #   <note markdown="1"> If Amazon Web Services paused your account's ability to send email,
    #   you can't use this operation to resume your account's ability to
    #   send email.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_sending_attributes({
    #     sending_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountSendingAttributes AWS API Documentation
    #
    # @overload put_account_sending_attributes(params = {})
    # @param [Hash] params ({})
    def put_account_sending_attributes(params = {}, options = {})
      req = build_request(:put_account_sending_attributes, params)
      req.send_request(options)
    end

    # Change the settings for the account-level suppression list.
    #
    # @option params [Array<String>] :suppressed_reasons
    #   A list that contains the reasons that email addresses will be
    #   automatically added to the suppression list for your account. This
    #   list can contain any or all of the following:
    #
    #   * `COMPLAINT` – Amazon SES adds an email address to the suppression
    #     list for your account when a message sent to that address results in
    #     a complaint.
    #
    #   * `BOUNCE` – Amazon SES adds an email address to the suppression list
    #     for your account when a message sent to that address results in a
    #     hard bounce.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_suppression_attributes({
    #     suppressed_reasons: ["BOUNCE"], # accepts BOUNCE, COMPLAINT
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountSuppressionAttributes AWS API Documentation
    #
    # @overload put_account_suppression_attributes(params = {})
    # @param [Hash] params ({})
    def put_account_suppression_attributes(params = {}, options = {})
      req = build_request(:put_account_suppression_attributes, params)
      req.send_request(options)
    end

    # Update your Amazon SES account VDM attributes.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, Types::VdmAttributes] :vdm_attributes
    #   The VDM attributes that you wish to apply to your Amazon SES account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_vdm_attributes({
    #     vdm_attributes: { # required
    #       vdm_enabled: "ENABLED", # required, accepts ENABLED, DISABLED
    #       dashboard_attributes: {
    #         engagement_metrics: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       guardian_attributes: {
    #         optimized_shared_delivery: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutAccountVdmAttributes AWS API Documentation
    #
    # @overload put_account_vdm_attributes(params = {})
    # @param [Hash] params ({})
    def put_account_vdm_attributes(params = {}, options = {})
      req = build_request(:put_account_vdm_attributes, params)
      req.send_request(options)
    end

    # Associate the configuration set with a MailManager archive. When you
    # send email using the `SendEmail` or `SendBulkEmail` operations the
    # message as it will be given to the receiving SMTP server will be
    # archived, along with the recipient information.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set to associate with a MailManager
    #   archive.
    #
    # @option params [String] :archive_arn
    #   The Amazon Resource Name (ARN) of the MailManager archive that the
    #   Amazon SES API v2 sends email to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Used to associate an MailManager archive with a ConfigurationSet.
    #
    #   # This example associates an archive arn with a configuration set.
    #
    #   resp = client.put_configuration_set_archiving_options({
    #     archive_arn: "arn:aws:ses:us-west-2:123456789012:mailmanager-archive/a-abcdefghijklmnopqrstuvwxyz", 
    #     configuration_set_name: "sample-configuration-name", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_archiving_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     archive_arn: "ArchiveArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetArchivingOptions AWS API Documentation
    #
    # @overload put_configuration_set_archiving_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_archiving_options(params = {}, options = {})
      req = build_request(:put_configuration_set_archiving_options, params)
      req.send_request(options)
    end

    # Associate a configuration set with a dedicated IP pool. You can use
    # dedicated IP pools to create groups of dedicated IP addresses for
    # sending specific types of email.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set to associate with a dedicated IP
    #   pool.
    #
    # @option params [String] :tls_policy
    #   Specifies whether messages that use the configuration set are required
    #   to use Transport Layer Security (TLS). If the value is `Require`,
    #   messages are only delivered if a TLS connection can be established. If
    #   the value is `Optional`, messages can be delivered in plain text if a
    #   TLS connection can't be established.
    #
    # @option params [String] :sending_pool_name
    #   The name of the dedicated IP pool to associate with the configuration
    #   set.
    #
    # @option params [Integer] :max_delivery_seconds
    #   The maximum amount of time, in seconds, that Amazon SES API v2 will
    #   attempt delivery of email. If specified, the value must greater than
    #   or equal to 300 seconds (5 minutes) and less than or equal to 50400
    #   seconds (840 minutes).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_delivery_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tls_policy: "REQUIRE", # accepts REQUIRE, OPTIONAL
    #     sending_pool_name: "SendingPoolName",
    #     max_delivery_seconds: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetDeliveryOptions AWS API Documentation
    #
    # @overload put_configuration_set_delivery_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_delivery_options(params = {}, options = {})
      req = build_request(:put_configuration_set_delivery_options, params)
      req.send_request(options)
    end

    # Enable or disable collection of reputation metrics for emails that you
    # send using a particular configuration set in a specific Amazon Web
    # Services Region.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set.
    #
    # @option params [Boolean] :reputation_metrics_enabled
    #   If `true`, tracking of reputation metrics is enabled for the
    #   configuration set. If `false`, tracking of reputation metrics is
    #   disabled for the configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_reputation_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     reputation_metrics_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetReputationOptions AWS API Documentation
    #
    # @overload put_configuration_set_reputation_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_reputation_options(params = {}, options = {})
      req = build_request(:put_configuration_set_reputation_options, params)
      req.send_request(options)
    end

    # Enable or disable email sending for messages that use a particular
    # configuration set in a specific Amazon Web Services Region.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set to enable or disable email sending
    #   for.
    #
    # @option params [Boolean] :sending_enabled
    #   If `true`, email sending is enabled for the configuration set. If
    #   `false`, email sending is disabled for the configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_sending_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     sending_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetSendingOptions AWS API Documentation
    #
    # @overload put_configuration_set_sending_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_sending_options(params = {}, options = {})
      req = build_request(:put_configuration_set_sending_options, params)
      req.send_request(options)
    end

    # Specify the account suppression list preferences for a configuration
    # set.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set to change the suppression list
    #   preferences for.
    #
    # @option params [Array<String>] :suppressed_reasons
    #   A list that contains the reasons that email addresses are
    #   automatically added to the suppression list for your account. This
    #   list can contain any or all of the following:
    #
    #   * `COMPLAINT` – Amazon SES adds an email address to the suppression
    #     list for your account when a message sent to that address results in
    #     a complaint.
    #
    #   * `BOUNCE` – Amazon SES adds an email address to the suppression list
    #     for your account when a message sent to that address results in a
    #     hard bounce.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_suppression_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     suppressed_reasons: ["BOUNCE"], # accepts BOUNCE, COMPLAINT
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetSuppressionOptions AWS API Documentation
    #
    # @overload put_configuration_set_suppression_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_suppression_options(params = {}, options = {})
      req = build_request(:put_configuration_set_suppression_options, params)
      req.send_request(options)
    end

    # Specify a custom domain to use for open and click tracking elements in
    # email that you send.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set.
    #
    # @option params [String] :custom_redirect_domain
    #   The domain to use to track open and click events.
    #
    # @option params [String] :https_policy
    #   The https policy to use for tracking open and click events. If the
    #   value is OPTIONAL or HttpsPolicy is not specified, the open trackers
    #   use HTTP and click tracker use the original protocol of the link. If
    #   the value is REQUIRE, both open and click tracker uses HTTPS and if
    #   the value is REQUIRE\_OPEN\_ONLY open tracker uses HTTPS and link
    #   tracker is same as original protocol of the link.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_tracking_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     custom_redirect_domain: "CustomRedirectDomain",
    #     https_policy: "REQUIRE", # accepts REQUIRE, REQUIRE_OPEN_ONLY, OPTIONAL
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetTrackingOptions AWS API Documentation
    #
    # @overload put_configuration_set_tracking_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_tracking_options(params = {}, options = {})
      req = build_request(:put_configuration_set_tracking_options, params)
      req.send_request(options)
    end

    # Specify VDM preferences for email that you send using the
    # configuration set.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set.
    #
    # @option params [Types::VdmOptions] :vdm_options
    #   The VDM options to apply to the configuration set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_configuration_set_vdm_options({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     vdm_options: {
    #       dashboard_options: {
    #         engagement_metrics: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #       guardian_options: {
    #         optimized_shared_delivery: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutConfigurationSetVdmOptions AWS API Documentation
    #
    # @overload put_configuration_set_vdm_options(params = {})
    # @param [Hash] params ({})
    def put_configuration_set_vdm_options(params = {}, options = {})
      req = build_request(:put_configuration_set_vdm_options, params)
      req.send_request(options)
    end

    # Move a dedicated IP address to an existing dedicated IP pool.
    #
    # <note markdown="1"> The dedicated IP address that you specify must already exist, and must
    # be associated with your Amazon Web Services account.
    #
    #  The dedicated IP pool you specify must already exist. You can create a
    # new pool by using the `CreateDedicatedIpPool` operation.
    #
    #  </note>
    #
    # @option params [required, String] :ip
    #   The IP address that you want to move to the dedicated IP pool. The
    #   value you specify has to be a dedicated IP address that's associated
    #   with your Amazon Web Services account.
    #
    # @option params [required, String] :destination_pool_name
    #   The name of the IP pool that you want to add the dedicated IP address
    #   to. You have to specify an IP pool that already exists.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_dedicated_ip_in_pool({
    #     ip: "Ip", # required
    #     destination_pool_name: "PoolName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutDedicatedIpInPool AWS API Documentation
    #
    # @overload put_dedicated_ip_in_pool(params = {})
    # @param [Hash] params ({})
    def put_dedicated_ip_in_pool(params = {}, options = {})
      req = build_request(:put_dedicated_ip_in_pool, params)
      req.send_request(options)
    end

    # Used to convert a dedicated IP pool to a different scaling mode.
    #
    # <note markdown="1"> `MANAGED` pools cannot be converted to `STANDARD` scaling mode.
    #
    #  </note>
    #
    # @option params [required, String] :pool_name
    #   The name of the dedicated IP pool.
    #
    # @option params [required, String] :scaling_mode
    #   The scaling mode to apply to the dedicated IP pool.
    #
    #   <note markdown="1"> Changing the scaling mode from `MANAGED` to `STANDARD` is not
    #   supported.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Used to convert a dedicated IP pool to a different scaling mode.
    #
    #   # This example converts a dedicated IP pool from STANDARD to MANAGED.
    #
    #   resp = client.put_dedicated_ip_pool_scaling_attributes({
    #     pool_name: "sample-ses-pool", 
    #     scaling_mode: "MANAGED", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_dedicated_ip_pool_scaling_attributes({
    #     pool_name: "PoolName", # required
    #     scaling_mode: "STANDARD", # required, accepts STANDARD, MANAGED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutDedicatedIpPoolScalingAttributes AWS API Documentation
    #
    # @overload put_dedicated_ip_pool_scaling_attributes(params = {})
    # @param [Hash] params ({})
    def put_dedicated_ip_pool_scaling_attributes(params = {}, options = {})
      req = build_request(:put_dedicated_ip_pool_scaling_attributes, params)
      req.send_request(options)
    end

    # @option params [required, String] :ip
    #   The dedicated IP address that you want to update the warm-up
    #   attributes for.
    #
    # @option params [required, Integer] :warmup_percentage
    #   The warm-up percentage that you want to associate with the dedicated
    #   IP address.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_dedicated_ip_warmup_attributes({
    #     ip: "Ip", # required
    #     warmup_percentage: 1, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutDedicatedIpWarmupAttributes AWS API Documentation
    #
    # @overload put_dedicated_ip_warmup_attributes(params = {})
    # @param [Hash] params ({})
    def put_dedicated_ip_warmup_attributes(params = {}, options = {})
      req = build_request(:put_dedicated_ip_warmup_attributes, params)
      req.send_request(options)
    end

    # Enable or disable the Deliverability dashboard. When you enable the
    # Deliverability dashboard, you gain access to reputation,
    # deliverability, and other metrics for the domains that you use to send
    # email. You also gain the ability to perform predictive inbox placement
    # tests.
    #
    # When you use the Deliverability dashboard, you pay a monthly
    # subscription charge, in addition to any other fees that you accrue by
    # using Amazon SES and other Amazon Web Services services. For more
    # information about the features and cost of a Deliverability dashboard
    # subscription, see [Amazon SES Pricing][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/ses/pricing/
    #
    # @option params [required, Boolean] :dashboard_enabled
    #   Specifies whether to enable the Deliverability dashboard. To enable
    #   the dashboard, set this value to `true`.
    #
    # @option params [Array<Types::DomainDeliverabilityTrackingOption>] :subscribed_domains
    #   An array of objects, one for each verified domain that you use to send
    #   email and enabled the Deliverability dashboard for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_deliverability_dashboard_option({
    #     dashboard_enabled: false, # required
    #     subscribed_domains: [
    #       {
    #         domain: "Domain",
    #         subscription_start_date: Time.now,
    #         inbox_placement_tracking_option: {
    #           global: false,
    #           tracked_isps: ["IspName"],
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutDeliverabilityDashboardOption AWS API Documentation
    #
    # @overload put_deliverability_dashboard_option(params = {})
    # @param [Hash] params ({})
    def put_deliverability_dashboard_option(params = {}, options = {})
      req = build_request(:put_deliverability_dashboard_option, params)
      req.send_request(options)
    end

    # Used to associate a configuration set with an email identity.
    #
    # @option params [required, String] :email_identity
    #   The email address or domain to associate with a configuration set.
    #
    # @option params [String] :configuration_set_name
    #   The configuration set to associate with an email identity.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_configuration_set_attributes({
    #     email_identity: "Identity", # required
    #     configuration_set_name: "ConfigurationSetName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityConfigurationSetAttributes AWS API Documentation
    #
    # @overload put_email_identity_configuration_set_attributes(params = {})
    # @param [Hash] params ({})
    def put_email_identity_configuration_set_attributes(params = {}, options = {})
      req = build_request(:put_email_identity_configuration_set_attributes, params)
      req.send_request(options)
    end

    # Used to enable or disable DKIM authentication for an email identity.
    #
    # @option params [required, String] :email_identity
    #   The email identity.
    #
    # @option params [Boolean] :signing_enabled
    #   Sets the DKIM signing configuration for the identity.
    #
    #   When you set this value `true`, then the messages that are sent from
    #   the identity are signed using DKIM. If you set this value to `false`,
    #   your messages are sent without DKIM signing.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_dkim_attributes({
    #     email_identity: "Identity", # required
    #     signing_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityDkimAttributes AWS API Documentation
    #
    # @overload put_email_identity_dkim_attributes(params = {})
    # @param [Hash] params ({})
    def put_email_identity_dkim_attributes(params = {}, options = {})
      req = build_request(:put_email_identity_dkim_attributes, params)
      req.send_request(options)
    end

    # Used to configure or change the DKIM authentication settings for an
    # email domain identity. You can use this operation to do any of the
    # following:
    #
    # * Update the signing attributes for an identity that uses Bring Your
    #   Own DKIM (BYODKIM).
    #
    # * Update the key length that should be used for Easy DKIM.
    #
    # * Change from using no DKIM authentication to using Easy DKIM.
    #
    # * Change from using no DKIM authentication to using BYODKIM.
    #
    # * Change from using Easy DKIM to using BYODKIM.
    #
    # * Change from using BYODKIM to using Easy DKIM.
    #
    # @option params [required, String] :email_identity
    #   The email identity.
    #
    # @option params [required, String] :signing_attributes_origin
    #   The method to use to configure DKIM for the identity. There are the
    #   following possible values:
    #
    #   * `AWS_SES` – Configure DKIM for the identity by using [Easy DKIM][1].
    #
    #   * `EXTERNAL` – Configure DKIM for the identity by using Bring Your Own
    #     DKIM (BYODKIM).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #
    # @option params [Types::DkimSigningAttributes] :signing_attributes
    #   An object that contains information about the private key and selector
    #   that you want to use to configure DKIM for the identity for Bring Your
    #   Own DKIM (BYODKIM) for the identity, or, configures the key length to
    #   be used for [Easy DKIM][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html
    #
    # @return [Types::PutEmailIdentityDkimSigningAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEmailIdentityDkimSigningAttributesResponse#dkim_status #dkim_status} => String
    #   * {Types::PutEmailIdentityDkimSigningAttributesResponse#dkim_tokens #dkim_tokens} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_dkim_signing_attributes({
    #     email_identity: "Identity", # required
    #     signing_attributes_origin: "AWS_SES", # required, accepts AWS_SES, EXTERNAL, AWS_SES_AF_SOUTH_1, AWS_SES_EU_NORTH_1, AWS_SES_AP_SOUTH_1, AWS_SES_EU_WEST_3, AWS_SES_EU_WEST_2, AWS_SES_EU_SOUTH_1, AWS_SES_EU_WEST_1, AWS_SES_AP_NORTHEAST_3, AWS_SES_AP_NORTHEAST_2, AWS_SES_ME_SOUTH_1, AWS_SES_AP_NORTHEAST_1, AWS_SES_IL_CENTRAL_1, AWS_SES_SA_EAST_1, AWS_SES_CA_CENTRAL_1, AWS_SES_AP_SOUTHEAST_1, AWS_SES_AP_SOUTHEAST_2, AWS_SES_AP_SOUTHEAST_3, AWS_SES_EU_CENTRAL_1, AWS_SES_US_EAST_1, AWS_SES_US_EAST_2, AWS_SES_US_WEST_1, AWS_SES_US_WEST_2, AWS_SES_ME_CENTRAL_1, AWS_SES_AP_SOUTH_2, AWS_SES_EU_CENTRAL_2
    #     signing_attributes: {
    #       domain_signing_selector: "Selector",
    #       domain_signing_private_key: "PrivateKey",
    #       next_signing_key_length: "RSA_1024_BIT", # accepts RSA_1024_BIT, RSA_2048_BIT
    #       domain_signing_attributes_origin: "AWS_SES", # accepts AWS_SES, EXTERNAL, AWS_SES_AF_SOUTH_1, AWS_SES_EU_NORTH_1, AWS_SES_AP_SOUTH_1, AWS_SES_EU_WEST_3, AWS_SES_EU_WEST_2, AWS_SES_EU_SOUTH_1, AWS_SES_EU_WEST_1, AWS_SES_AP_NORTHEAST_3, AWS_SES_AP_NORTHEAST_2, AWS_SES_ME_SOUTH_1, AWS_SES_AP_NORTHEAST_1, AWS_SES_IL_CENTRAL_1, AWS_SES_SA_EAST_1, AWS_SES_CA_CENTRAL_1, AWS_SES_AP_SOUTHEAST_1, AWS_SES_AP_SOUTHEAST_2, AWS_SES_AP_SOUTHEAST_3, AWS_SES_EU_CENTRAL_1, AWS_SES_US_EAST_1, AWS_SES_US_EAST_2, AWS_SES_US_WEST_1, AWS_SES_US_WEST_2, AWS_SES_ME_CENTRAL_1, AWS_SES_AP_SOUTH_2, AWS_SES_EU_CENTRAL_2
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dkim_status #=> String, one of "PENDING", "SUCCESS", "FAILED", "TEMPORARY_FAILURE", "NOT_STARTED"
    #   resp.dkim_tokens #=> Array
    #   resp.dkim_tokens[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityDkimSigningAttributes AWS API Documentation
    #
    # @overload put_email_identity_dkim_signing_attributes(params = {})
    # @param [Hash] params ({})
    def put_email_identity_dkim_signing_attributes(params = {}, options = {})
      req = build_request(:put_email_identity_dkim_signing_attributes, params)
      req.send_request(options)
    end

    # Used to enable or disable feedback forwarding for an identity. This
    # setting determines what happens when an identity is used to send an
    # email that results in a bounce or complaint event.
    #
    # If the value is `true`, you receive email notifications when bounce or
    # complaint events occur. These notifications are sent to the address
    # that you specified in the `Return-Path` header of the original email.
    #
    # You're required to have a method of tracking bounces and complaints.
    # If you haven't set up another mechanism for receiving bounce or
    # complaint notifications (for example, by setting up an event
    # destination), you receive an email notification when these events
    # occur (even if this setting is disabled).
    #
    # @option params [required, String] :email_identity
    #   The email identity.
    #
    # @option params [Boolean] :email_forwarding_enabled
    #   Sets the feedback forwarding configuration for the identity.
    #
    #   If the value is `true`, you receive email notifications when bounce or
    #   complaint events occur. These notifications are sent to the address
    #   that you specified in the `Return-Path` header of the original email.
    #
    #   You're required to have a method of tracking bounces and complaints.
    #   If you haven't set up another mechanism for receiving bounce or
    #   complaint notifications (for example, by setting up an event
    #   destination), you receive an email notification when these events
    #   occur (even if this setting is disabled).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_feedback_attributes({
    #     email_identity: "Identity", # required
    #     email_forwarding_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityFeedbackAttributes AWS API Documentation
    #
    # @overload put_email_identity_feedback_attributes(params = {})
    # @param [Hash] params ({})
    def put_email_identity_feedback_attributes(params = {}, options = {})
      req = build_request(:put_email_identity_feedback_attributes, params)
      req.send_request(options)
    end

    # Used to enable or disable the custom Mail-From domain configuration
    # for an email identity.
    #
    # @option params [required, String] :email_identity
    #   The verified email identity.
    #
    # @option params [String] :mail_from_domain
    #   The custom MAIL FROM domain that you want the verified identity to
    #   use. The MAIL FROM domain must meet the following criteria:
    #
    #   * It has to be a subdomain of the verified identity.
    #
    #   * It can't be used to receive email.
    #
    #   * It can't be used in a "From" address if the MAIL FROM domain is a
    #     destination for feedback forwarding emails.
    #
    # @option params [String] :behavior_on_mx_failure
    #   The action to take if the required MX record isn't found when you
    #   send an email. When you set this value to `UseDefaultValue`, the mail
    #   is sent using *amazonses.com* as the MAIL FROM domain. When you set
    #   this value to `RejectMessage`, the Amazon SES API v2 returns a
    #   `MailFromDomainNotVerified` error, and doesn't attempt to deliver the
    #   email.
    #
    #   These behaviors are taken when the custom MAIL FROM domain
    #   configuration is in the `Pending`, `Failed`, and `TemporaryFailure`
    #   states.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_identity_mail_from_attributes({
    #     email_identity: "Identity", # required
    #     mail_from_domain: "MailFromDomainName",
    #     behavior_on_mx_failure: "USE_DEFAULT_VALUE", # accepts USE_DEFAULT_VALUE, REJECT_MESSAGE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutEmailIdentityMailFromAttributes AWS API Documentation
    #
    # @overload put_email_identity_mail_from_attributes(params = {})
    # @param [Hash] params ({})
    def put_email_identity_mail_from_attributes(params = {}, options = {})
      req = build_request(:put_email_identity_mail_from_attributes, params)
      req.send_request(options)
    end

    # Adds an email address to the suppression list for your account.
    #
    # @option params [required, String] :email_address
    #   The email address that should be added to the suppression list for
    #   your account.
    #
    # @option params [required, String] :reason
    #   The factors that should cause the email address to be added to the
    #   suppression list for your account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_suppressed_destination({
    #     email_address: "EmailAddress", # required
    #     reason: "BOUNCE", # required, accepts BOUNCE, COMPLAINT
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/PutSuppressedDestination AWS API Documentation
    #
    # @overload put_suppressed_destination(params = {})
    # @param [Hash] params ({})
    def put_suppressed_destination(params = {}, options = {})
      req = build_request(:put_suppressed_destination, params)
      req.send_request(options)
    end

    # Composes an email message to multiple destinations.
    #
    # @option params [String] :from_email_address
    #   The email address to use as the "From" address for the email. The
    #   address that you specify has to be verified.
    #
    # @option params [String] :from_email_address_identity_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `FromEmailAddress` parameter.
    #
    #   For example, if the owner of example.com (which has ARN
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
    #   policy to it that authorizes you to use sender@example.com, then you
    #   would specify the `FromEmailAddressIdentityArn` to be
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #   `FromEmailAddress` to be sender@example.com.
    #
    #   For more information about sending authorization, see the [Amazon SES
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [Array<String>] :reply_to_addresses
    #   The "Reply-to" email addresses for the message. When the recipient
    #   replies to the message, each Reply-to address receives the reply.
    #
    # @option params [String] :feedback_forwarding_email_address
    #   The address that you want bounce and complaint notifications to be
    #   sent to.
    #
    # @option params [String] :feedback_forwarding_email_address_identity_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `FeedbackForwardingEmailAddress` parameter.
    #
    #   For example, if the owner of example.com (which has ARN
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
    #   policy to it that authorizes you to use feedback@example.com, then you
    #   would specify the `FeedbackForwardingEmailAddressIdentityArn` to be
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #   `FeedbackForwardingEmailAddress` to be feedback@example.com.
    #
    #   For more information about sending authorization, see the [Amazon SES
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [Array<Types::MessageTag>] :default_email_tags
    #   A list of tags, in the form of name/value pairs, to apply to an email
    #   that you send using the `SendEmail` operation. Tags correspond to
    #   characteristics of the email that you define, so that you can publish
    #   email sending events.
    #
    # @option params [required, Types::BulkEmailContent] :default_content
    #   An object that contains the body of the message. You can specify a
    #   template message.
    #
    # @option params [required, Array<Types::BulkEmailEntry>] :bulk_email_entries
    #   The list of bulk email entry objects.
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set to use when sending the email.
    #
    # @option params [String] :endpoint_id
    #   The ID of the multi-region endpoint (global-endpoint).
    #
    # @return [Types::SendBulkEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendBulkEmailResponse#bulk_email_entry_results #bulk_email_entry_results} => Array&lt;Types::BulkEmailEntryResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_bulk_email({
    #     from_email_address: "EmailAddress",
    #     from_email_address_identity_arn: "AmazonResourceName",
    #     reply_to_addresses: ["EmailAddress"],
    #     feedback_forwarding_email_address: "EmailAddress",
    #     feedback_forwarding_email_address_identity_arn: "AmazonResourceName",
    #     default_email_tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       },
    #     ],
    #     default_content: { # required
    #       template: {
    #         template_name: "EmailTemplateName",
    #         template_arn: "AmazonResourceName",
    #         template_content: {
    #           subject: "EmailTemplateSubject",
    #           text: "EmailTemplateText",
    #           html: "EmailTemplateHtml",
    #         },
    #         template_data: "EmailTemplateData",
    #         headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           },
    #         ],
    #         attachments: [
    #           {
    #             raw_content: "data", # required
    #             content_disposition: "ATTACHMENT", # accepts ATTACHMENT, INLINE
    #             file_name: "AttachmentFileName", # required
    #             content_description: "AttachmentContentDescription",
    #             content_id: "AttachmentContentId",
    #             content_transfer_encoding: "BASE64", # accepts BASE64, QUOTED_PRINTABLE, SEVEN_BIT
    #             content_type: "AttachmentContentType",
    #           },
    #         ],
    #       },
    #     },
    #     bulk_email_entries: [ # required
    #       {
    #         destination: { # required
    #           to_addresses: ["EmailAddress"],
    #           cc_addresses: ["EmailAddress"],
    #           bcc_addresses: ["EmailAddress"],
    #         },
    #         replacement_tags: [
    #           {
    #             name: "MessageTagName", # required
    #             value: "MessageTagValue", # required
    #           },
    #         ],
    #         replacement_email_content: {
    #           replacement_template: {
    #             replacement_template_data: "EmailTemplateData",
    #           },
    #         },
    #         replacement_headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           },
    #         ],
    #       },
    #     ],
    #     configuration_set_name: "ConfigurationSetName",
    #     endpoint_id: "EndpointId",
    #   })
    #
    # @example Response structure
    #
    #   resp.bulk_email_entry_results #=> Array
    #   resp.bulk_email_entry_results[0].status #=> String, one of "SUCCESS", "MESSAGE_REJECTED", "MAIL_FROM_DOMAIN_NOT_VERIFIED", "CONFIGURATION_SET_NOT_FOUND", "TEMPLATE_NOT_FOUND", "ACCOUNT_SUSPENDED", "ACCOUNT_THROTTLED", "ACCOUNT_DAILY_QUOTA_EXCEEDED", "INVALID_SENDING_POOL_NAME", "ACCOUNT_SENDING_PAUSED", "CONFIGURATION_SET_SENDING_PAUSED", "INVALID_PARAMETER", "TRANSIENT_FAILURE", "FAILED"
    #   resp.bulk_email_entry_results[0].error #=> String
    #   resp.bulk_email_entry_results[0].message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendBulkEmail AWS API Documentation
    #
    # @overload send_bulk_email(params = {})
    # @param [Hash] params ({})
    def send_bulk_email(params = {}, options = {})
      req = build_request(:send_bulk_email, params)
      req.send_request(options)
    end

    # Adds an email address to the list of identities for your Amazon SES
    # account in the current Amazon Web Services Region and attempts to
    # verify it. As a result of executing this operation, a customized
    # verification email is sent to the specified address.
    #
    # To use this operation, you must first create a custom verification
    # email template. For more information about creating and using custom
    # verification email templates, see [Using custom verification email
    # templates][1] in the *Amazon SES Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
    #
    # @option params [required, String] :email_address
    #   The email address to verify.
    #
    # @option params [required, String] :template_name
    #   The name of the custom verification email template to use when sending
    #   the verification email.
    #
    # @option params [String] :configuration_set_name
    #   Name of a configuration set to use when sending the verification
    #   email.
    #
    # @return [Types::SendCustomVerificationEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendCustomVerificationEmailResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_custom_verification_email({
    #     email_address: "EmailAddress", # required
    #     template_name: "EmailTemplateName", # required
    #     configuration_set_name: "ConfigurationSetName",
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendCustomVerificationEmail AWS API Documentation
    #
    # @overload send_custom_verification_email(params = {})
    # @param [Hash] params ({})
    def send_custom_verification_email(params = {}, options = {})
      req = build_request(:send_custom_verification_email, params)
      req.send_request(options)
    end

    # Sends an email message. You can use the Amazon SES API v2 to send the
    # following types of messages:
    #
    # * **Simple** – A standard email message. When you create this type of
    #   message, you specify the sender, the recipient, and the message
    #   body, and Amazon SES assembles the message for you.
    #
    # * **Raw** – A raw, MIME-formatted email message. When you send this
    #   type of email, you have to specify all of the message headers, as
    #   well as the message body. You can use this message type to send
    #   messages that contain attachments. The message that you specify has
    #   to be a valid MIME message.
    #
    # * **Templated** – A message that contains personalization tags. When
    #   you send this type of email, Amazon SES API v2 automatically
    #   replaces the tags with values that you specify.
    #
    # @option params [String] :from_email_address
    #   The email address to use as the "From" address for the email. The
    #   address that you specify has to be verified.
    #
    # @option params [String] :from_email_address_identity_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `FromEmailAddress` parameter.
    #
    #   For example, if the owner of example.com (which has ARN
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
    #   policy to it that authorizes you to use sender@example.com, then you
    #   would specify the `FromEmailAddressIdentityArn` to be
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #   `FromEmailAddress` to be sender@example.com.
    #
    #   For more information about sending authorization, see the [Amazon SES
    #   Developer Guide][1].
    #
    #   For Raw emails, the `FromEmailAddressIdentityArn` value overrides the
    #   X-SES-SOURCE-ARN and X-SES-FROM-ARN headers specified in raw email
    #   message content.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [Types::Destination] :destination
    #   An object that contains the recipients of the email message.
    #
    # @option params [Array<String>] :reply_to_addresses
    #   The "Reply-to" email addresses for the message. When the recipient
    #   replies to the message, each Reply-to address receives the reply.
    #
    # @option params [String] :feedback_forwarding_email_address
    #   The address that you want bounce and complaint notifications to be
    #   sent to.
    #
    # @option params [String] :feedback_forwarding_email_address_identity_arn
    #   This parameter is used only for sending authorization. It is the ARN
    #   of the identity that is associated with the sending authorization
    #   policy that permits you to use the email address specified in the
    #   `FeedbackForwardingEmailAddress` parameter.
    #
    #   For example, if the owner of example.com (which has ARN
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
    #   policy to it that authorizes you to use feedback@example.com, then you
    #   would specify the `FeedbackForwardingEmailAddressIdentityArn` to be
    #   arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
    #   `FeedbackForwardingEmailAddress` to be feedback@example.com.
    #
    #   For more information about sending authorization, see the [Amazon SES
    #   Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [required, Types::EmailContent] :content
    #   An object that contains the body of the message. You can send either a
    #   Simple message, Raw message, or a Templated message.
    #
    # @option params [Array<Types::MessageTag>] :email_tags
    #   A list of tags, in the form of name/value pairs, to apply to an email
    #   that you send using the `SendEmail` operation. Tags correspond to
    #   characteristics of the email that you define, so that you can publish
    #   email sending events.
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set to use when sending the email.
    #
    # @option params [String] :endpoint_id
    #   The ID of the multi-region endpoint (global-endpoint).
    #
    # @option params [Types::ListManagementOptions] :list_management_options
    #   An object used to specify a list or topic to which an email belongs,
    #   which will be used when a contact chooses to unsubscribe.
    #
    # @return [Types::SendEmailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendEmailResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_email({
    #     from_email_address: "EmailAddress",
    #     from_email_address_identity_arn: "AmazonResourceName",
    #     destination: {
    #       to_addresses: ["EmailAddress"],
    #       cc_addresses: ["EmailAddress"],
    #       bcc_addresses: ["EmailAddress"],
    #     },
    #     reply_to_addresses: ["EmailAddress"],
    #     feedback_forwarding_email_address: "EmailAddress",
    #     feedback_forwarding_email_address_identity_arn: "AmazonResourceName",
    #     content: { # required
    #       simple: {
    #         subject: { # required
    #           data: "MessageData", # required
    #           charset: "Charset",
    #         },
    #         body: { # required
    #           text: {
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #           html: {
    #             data: "MessageData", # required
    #             charset: "Charset",
    #           },
    #         },
    #         headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           },
    #         ],
    #         attachments: [
    #           {
    #             raw_content: "data", # required
    #             content_disposition: "ATTACHMENT", # accepts ATTACHMENT, INLINE
    #             file_name: "AttachmentFileName", # required
    #             content_description: "AttachmentContentDescription",
    #             content_id: "AttachmentContentId",
    #             content_transfer_encoding: "BASE64", # accepts BASE64, QUOTED_PRINTABLE, SEVEN_BIT
    #             content_type: "AttachmentContentType",
    #           },
    #         ],
    #       },
    #       raw: {
    #         data: "data", # required
    #       },
    #       template: {
    #         template_name: "EmailTemplateName",
    #         template_arn: "AmazonResourceName",
    #         template_content: {
    #           subject: "EmailTemplateSubject",
    #           text: "EmailTemplateText",
    #           html: "EmailTemplateHtml",
    #         },
    #         template_data: "EmailTemplateData",
    #         headers: [
    #           {
    #             name: "MessageHeaderName", # required
    #             value: "MessageHeaderValue", # required
    #           },
    #         ],
    #         attachments: [
    #           {
    #             raw_content: "data", # required
    #             content_disposition: "ATTACHMENT", # accepts ATTACHMENT, INLINE
    #             file_name: "AttachmentFileName", # required
    #             content_description: "AttachmentContentDescription",
    #             content_id: "AttachmentContentId",
    #             content_transfer_encoding: "BASE64", # accepts BASE64, QUOTED_PRINTABLE, SEVEN_BIT
    #             content_type: "AttachmentContentType",
    #           },
    #         ],
    #       },
    #     },
    #     email_tags: [
    #       {
    #         name: "MessageTagName", # required
    #         value: "MessageTagValue", # required
    #       },
    #     ],
    #     configuration_set_name: "ConfigurationSetName",
    #     endpoint_id: "EndpointId",
    #     list_management_options: {
    #       contact_list_name: "ContactListName", # required
    #       topic_name: "TopicName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/SendEmail AWS API Documentation
    #
    # @overload send_email(params = {})
    # @param [Hash] params ({})
    def send_email(params = {}, options = {})
      req = build_request(:send_email, params)
      req.send_request(options)
    end

    # Add one or more tags (keys and values) to a specified resource. A
    # *tag* is a label that you optionally define and associate with a
    # resource. Tags can help you categorize and manage resources in
    # different ways, such as by purpose, owner, environment, or other
    # criteria. A resource can have as many as 50 tags.
    #
    # Each tag consists of a required *tag key* and an associated *tag
    # value*, both of which you define. A tag key is a general label that
    # acts as a category for more specific tag values. A tag value acts as a
    # descriptor within a tag key.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add
    #   one or more tags to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of the tags that you want to add to the resource. A tag
    #   consists of a required tag key (`Key`) and an associated tag value
    #   (`Value`). The maximum length of a tag key is 128 characters. The
    #   maximum length of a tag value is 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Creates a preview of the MIME content of an email when provided with a
    # template and a set of replacement data.
    #
    # You can execute this operation no more than once per second.
    #
    # @option params [required, String] :template_name
    #   The name of the template.
    #
    # @option params [required, String] :template_data
    #   A list of replacement values to apply to the template. This parameter
    #   is a JSON object, typically consisting of key-value pairs in which the
    #   keys correspond to replacement tags in the email template.
    #
    # @return [Types::TestRenderEmailTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestRenderEmailTemplateResponse#rendered_template #rendered_template} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_render_email_template({
    #     template_name: "EmailTemplateName", # required
    #     template_data: "EmailTemplateData", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rendered_template #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/TestRenderEmailTemplate AWS API Documentation
    #
    # @overload test_render_email_template(params = {})
    # @param [Hash] params ({})
    def test_render_email_template(params = {}, options = {})
      req = build_request(:test_render_email_template, params)
      req.send_request(options)
    end

    # Remove one or more tags (keys and values) from a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   one or more tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tags (tag keys) that you want to remove from the resource. When
    #   you specify a tag key, the action removes both that key and its
    #   associated tag value.
    #
    #   To remove more than one tag from the resource, append the `TagKeys`
    #   parameter and argument for each additional tag to remove, separated by
    #   an ampersand. For example:
    #   `/v2/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update the configuration of an event destination for a configuration
    # set.
    #
    # *Events* include message sends, deliveries, opens, clicks, bounces,
    # and complaints. *Event destinations* are places that you can send
    # information about these events to. For example, you can send event
    # data to Amazon EventBridge and associate a rule to send the event to
    # the specified target.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set that contains the event destination
    #   to modify.
    #
    # @option params [required, String] :event_destination_name
    #   The name of the event destination.
    #
    # @option params [required, Types::EventDestinationDefinition] :event_destination
    #   An object that defines the event destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_set_event_destination({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     event_destination_name: "EventDestinationName", # required
    #     event_destination: { # required
    #       enabled: false,
    #       matching_event_types: ["SEND"], # accepts SEND, REJECT, BOUNCE, COMPLAINT, DELIVERY, OPEN, CLICK, RENDERING_FAILURE, DELIVERY_DELAY, SUBSCRIPTION
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "AmazonResourceName", # required
    #         delivery_stream_arn: "AmazonResourceName", # required
    #       },
    #       cloud_watch_destination: {
    #         dimension_configurations: [ # required
    #           {
    #             dimension_name: "DimensionName", # required
    #             dimension_value_source: "MESSAGE_TAG", # required, accepts MESSAGE_TAG, EMAIL_HEADER, LINK_TAG
    #             default_dimension_value: "DefaultDimensionValue", # required
    #           },
    #         ],
    #       },
    #       sns_destination: {
    #         topic_arn: "AmazonResourceName", # required
    #       },
    #       event_bridge_destination: {
    #         event_bus_arn: "AmazonResourceName", # required
    #       },
    #       pinpoint_destination: {
    #         application_arn: "AmazonResourceName",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateConfigurationSetEventDestination AWS API Documentation
    #
    # @overload update_configuration_set_event_destination(params = {})
    # @param [Hash] params ({})
    def update_configuration_set_event_destination(params = {}, options = {})
      req = build_request(:update_configuration_set_event_destination, params)
      req.send_request(options)
    end

    # Updates a contact's preferences for a list.
    #
    # <note markdown="1"> You must specify all existing topic preferences in the
    # `TopicPreferences` object, not just the ones that need updating;
    # otherwise, all your existing preferences will be removed.
    #
    #  </note>
    #
    # @option params [required, String] :contact_list_name
    #   The name of the contact list.
    #
    # @option params [required, String] :email_address
    #   The contact's email address.
    #
    # @option params [Array<Types::TopicPreference>] :topic_preferences
    #   The contact's preference for being opted-in to or opted-out of a
    #   topic.
    #
    # @option params [Boolean] :unsubscribe_all
    #   A boolean value status noting if the contact is unsubscribed from all
    #   contact list topics.
    #
    # @option params [String] :attributes_data
    #   The attribute data attached to a contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact({
    #     contact_list_name: "ContactListName", # required
    #     email_address: "EmailAddress", # required
    #     topic_preferences: [
    #       {
    #         topic_name: "TopicName", # required
    #         subscription_status: "OPT_IN", # required, accepts OPT_IN, OPT_OUT
    #       },
    #     ],
    #     unsubscribe_all: false,
    #     attributes_data: "AttributesData",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateContact AWS API Documentation
    #
    # @overload update_contact(params = {})
    # @param [Hash] params ({})
    def update_contact(params = {}, options = {})
      req = build_request(:update_contact, params)
      req.send_request(options)
    end

    # Updates contact list metadata. This operation does a complete
    # replacement.
    #
    # @option params [required, String] :contact_list_name
    #   The name of the contact list.
    #
    # @option params [Array<Types::Topic>] :topics
    #   An interest group, theme, or label within a list. A contact list can
    #   have multiple topics.
    #
    # @option params [String] :description
    #   A description of what the contact list is about.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_list({
    #     contact_list_name: "ContactListName", # required
    #     topics: [
    #       {
    #         topic_name: "TopicName", # required
    #         display_name: "DisplayName", # required
    #         description: "Description",
    #         default_subscription_status: "OPT_IN", # required, accepts OPT_IN, OPT_OUT
    #       },
    #     ],
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateContactList AWS API Documentation
    #
    # @overload update_contact_list(params = {})
    # @param [Hash] params ({})
    def update_contact_list(params = {}, options = {})
      req = build_request(:update_contact_list, params)
      req.send_request(options)
    end

    # Updates an existing custom verification email template.
    #
    # For more information about custom verification email templates, see
    # [Using custom verification email templates][1] in the *Amazon SES
    # Developer Guide*.
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
    #
    # @option params [required, String] :template_name
    #   The name of the custom verification email template that you want to
    #   update.
    #
    # @option params [required, String] :from_email_address
    #   The email address that the custom verification email is sent from.
    #
    # @option params [required, String] :template_subject
    #   The subject line of the custom verification email.
    #
    # @option params [required, String] :template_content
    #   The content of the custom verification email. The total size of the
    #   email must be less than 10 MB. The message body may contain HTML, with
    #   some limitations. For more information, see [Custom verification email
    #   frequently asked questions][1] in the *Amazon SES Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom-faq
    #
    # @option params [required, String] :success_redirection_url
    #   The URL that the recipient of the verification email is sent to if his
    #   or her address is successfully verified.
    #
    # @option params [required, String] :failure_redirection_url
    #   The URL that the recipient of the verification email is sent to if his
    #   or her address is not successfully verified.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_verification_email_template({
    #     template_name: "EmailTemplateName", # required
    #     from_email_address: "EmailAddress", # required
    #     template_subject: "EmailTemplateSubject", # required
    #     template_content: "TemplateContent", # required
    #     success_redirection_url: "SuccessRedirectionURL", # required
    #     failure_redirection_url: "FailureRedirectionURL", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateCustomVerificationEmailTemplate AWS API Documentation
    #
    # @overload update_custom_verification_email_template(params = {})
    # @param [Hash] params ({})
    def update_custom_verification_email_template(params = {}, options = {})
      req = build_request(:update_custom_verification_email_template, params)
      req.send_request(options)
    end

    # Updates the specified sending authorization policy for the given
    # identity (an email address or a domain). This API returns successfully
    # even if a policy with the specified name does not exist.
    #
    # <note markdown="1"> This API is for the identity owner only. If you have not verified the
    # identity, this API will return an error.
    #
    #  </note>
    #
    # Sending authorization is a feature that enables an identity owner to
    # authorize other senders to use its identities. For information about
    # using sending authorization, see the [Amazon SES Developer Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html
    #
    # @option params [required, String] :email_identity
    #   The email identity.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    #   The policy name cannot exceed 64 characters and can only include
    #   alphanumeric characters, dashes, and underscores.
    #
    # @option params [required, String] :policy
    #   The text of the policy in JSON format. The policy cannot exceed 4 KB.
    #
    #   For information about the syntax of sending authorization policies,
    #   see the [Amazon SES Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_email_identity_policy({
    #     email_identity: "Identity", # required
    #     policy_name: "PolicyName", # required
    #     policy: "Policy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateEmailIdentityPolicy AWS API Documentation
    #
    # @overload update_email_identity_policy(params = {})
    # @param [Hash] params ({})
    def update_email_identity_policy(params = {}, options = {})
      req = build_request(:update_email_identity_policy, params)
      req.send_request(options)
    end

    # Updates an email template. Email templates enable you to send
    # personalized email to one or more destinations in a single API
    # operation. For more information, see the [Amazon SES Developer
    # Guide][1].
    #
    # You can execute this operation no more than once per second.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html
    #
    # @option params [required, String] :template_name
    #   The name of the template.
    #
    # @option params [required, Types::EmailTemplateContent] :template_content
    #   The content of the email template, composed of a subject line, an HTML
    #   part, and a text-only part.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_email_template({
    #     template_name: "EmailTemplateName", # required
    #     template_content: { # required
    #       subject: "EmailTemplateSubject",
    #       text: "EmailTemplateText",
    #       html: "EmailTemplateHtml",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sesv2-2019-09-27/UpdateEmailTemplate AWS API Documentation
    #
    # @overload update_email_template(params = {})
    # @param [Hash] params ({})
    def update_email_template(params = {}, options = {})
      req = build_request(:update_email_template, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SESV2')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-sesv2'
      context[:gem_version] = '1.80.0'
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
