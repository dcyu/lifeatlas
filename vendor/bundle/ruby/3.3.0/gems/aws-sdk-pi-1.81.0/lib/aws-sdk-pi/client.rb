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

module Aws::PI
  # An API client for PI.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PI::Client.new(
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

    @identifier = :pi

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
    add_plugin(Aws::PI::Plugins::Endpoints)

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
    #   @option options [Aws::PI::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PI::EndpointParameters`.
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

    # Creates a new performance analysis report for a specific time period
    # for the DB instance.
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights will
    #   return metrics. Valid value is `RDS`.
    #
    # @option params [required, String] :identifier
    #   An immutable, Amazon Web Services Region-unique identifier for a data
    #   source. Performance Insights gathers metrics from this data source.
    #
    #   To use an Amazon RDS instance as a data source, you specify its
    #   `DbiResourceId` value. For example, specify
    #   `db-ADECBTYHKTSAUMUZQYPDS2GW4A`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start time defined for the analysis report.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end time defined for the analysis report.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata assigned to the analysis report consisting of a key-value
    #   pair.
    #
    # @return [Types::CreatePerformanceAnalysisReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePerformanceAnalysisReportResponse#analysis_report_id #analysis_report_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_performance_analysis_report({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     identifier: "IdentifierString", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
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
    #   resp.analysis_report_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/CreatePerformanceAnalysisReport AWS API Documentation
    #
    # @overload create_performance_analysis_report(params = {})
    # @param [Hash] params ({})
    def create_performance_analysis_report(params = {}, options = {})
      req = build_request(:create_performance_analysis_report, params)
      req.send_request(options)
    end

    # Deletes a performance analysis report.
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights will
    #   return metrics. Valid value is `RDS`.
    #
    # @option params [required, String] :identifier
    #   An immutable identifier for a data source that is unique for an Amazon
    #   Web Services Region. Performance Insights gathers metrics from this
    #   data source. In the console, the identifier is shown as *ResourceID*.
    #   When you call `DescribeDBInstances`, the identifier is returned as
    #   `DbiResourceId`.
    #
    #   To use a DB instance as a data source, specify its `DbiResourceId`
    #   value. For example, specify `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
    #
    # @option params [required, String] :analysis_report_id
    #   The unique identifier of the analysis report for deletion.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_performance_analysis_report({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     identifier: "IdentifierString", # required
    #     analysis_report_id: "AnalysisReportId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DeletePerformanceAnalysisReport AWS API Documentation
    #
    # @overload delete_performance_analysis_report(params = {})
    # @param [Hash] params ({})
    def delete_performance_analysis_report(params = {}, options = {})
      req = build_request(:delete_performance_analysis_report, params)
      req.send_request(options)
    end

    # For a specific time period, retrieve the top `N` dimension keys for a
    # metric.
    #
    # <note markdown="1"> Each response element returns a maximum of 500 bytes. For larger
    # elements, such as SQL statements, only the first 500 bytes are
    # returned.
    #
    #  </note>
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights will
    #   return metrics. Valid values are as follows:
    #
    #   * `RDS`
    #
    #   * `DOCDB`
    #
    # @option params [required, String] :identifier
    #   An immutable, Amazon Web Services Region-unique identifier for a data
    #   source. Performance Insights gathers metrics from this data source.
    #
    #   To use an Amazon RDS instance as a data source, you specify its
    #   `DbiResourceId` value. For example, specify
    #   `db-FAIHNTYBKTGAUSUZQYPDS2GW4A`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The date and time specifying the beginning of the requested time
    #   series data. You must specify a `StartTime` within the past 7 days.
    #   The value specified is *inclusive*, which means that data points equal
    #   to or greater than `StartTime` are returned.
    #
    #   The value for `StartTime` must be earlier than the value for
    #   `EndTime`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The date and time specifying the end of the requested time series
    #   data. The value specified is *exclusive*, which means that data points
    #   less than (but not equal to) `EndTime` are returned.
    #
    #   The value for `EndTime` must be later than the value for `StartTime`.
    #
    # @option params [required, String] :metric
    #   The name of a Performance Insights metric to be measured.
    #
    #   Valid values for `Metric` are:
    #
    #   * `db.load.avg` - A scaled representation of the number of active
    #     sessions for the database engine.
    #
    #   * `db.sampledload.avg` - The raw number of active sessions for the
    #     database engine.
    #
    #   If the number of active sessions is less than an internal Performance
    #   Insights threshold, `db.load.avg` and `db.sampledload.avg` are the
    #   same value. If the number of active sessions is greater than the
    #   internal threshold, Performance Insights samples the active sessions,
    #   with `db.load.avg` showing the scaled values, `db.sampledload.avg`
    #   showing the raw values, and `db.sampledload.avg` less than
    #   `db.load.avg`. For most use cases, you can query `db.load.avg` only.
    #
    # @option params [Integer] :period_in_seconds
    #   The granularity, in seconds, of the data points returned from
    #   Performance Insights. A period can be as short as one second, or as
    #   long as one day (86400 seconds). Valid values are:
    #
    #   * `1` (one second)
    #
    #   * `60` (one minute)
    #
    #   * `300` (five minutes)
    #
    #   * `3600` (one hour)
    #
    #   * `86400` (twenty-four hours)
    #
    #   If you don't specify `PeriodInSeconds`, then Performance Insights
    #   chooses a value for you, with a goal of returning roughly 100-200 data
    #   points in the response.
    #
    # @option params [required, Types::DimensionGroup] :group_by
    #   A specification for how to aggregate the data points from a query
    #   result. You must specify a valid dimension group. Performance Insights
    #   returns all dimensions within this group, unless you provide the names
    #   of specific dimensions within this group. You can also request that
    #   Performance Insights return a limited number of values for a
    #   dimension.
    #
    # @option params [Array<String>] :additional_metrics
    #   Additional metrics for the top `N` dimension keys. If the specified
    #   dimension group in the `GroupBy` parameter is `db.sql_tokenized`, you
    #   can specify per-SQL metrics to get the values for the top `N` SQL
    #   digests. The response syntax is as follows: `"AdditionalMetrics" : {
    #   "string" : "string" }`.
    #
    #   The only supported statistic function is `.avg`.
    #
    # @option params [Types::DimensionGroup] :partition_by
    #   For each dimension specified in `GroupBy`, specify a secondary
    #   dimension to further subdivide the partition keys in the response.
    #
    # @option params [Hash<String,String>] :filter
    #   One or more filters to apply in the request. Restrictions:
    #
    #   * Any number of filters by the same dimension, as specified in the
    #     `GroupBy` or `Partition` parameters.
    #
    #   * A single filter for any other dimension in this dimension group.
    #
    #   <note markdown="1"> The `db.sql.db_id` filter isn't available for RDS for SQL Server DB
    #   instances.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more items
    #   exist than the specified `MaxRecords` value, a pagination token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   token, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeDimensionKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDimensionKeysResponse#aligned_start_time #aligned_start_time} => Time
    #   * {Types::DescribeDimensionKeysResponse#aligned_end_time #aligned_end_time} => Time
    #   * {Types::DescribeDimensionKeysResponse#partition_keys #partition_keys} => Array&lt;Types::ResponsePartitionKey&gt;
    #   * {Types::DescribeDimensionKeysResponse#keys #keys} => Array&lt;Types::DimensionKeyDescription&gt;
    #   * {Types::DescribeDimensionKeysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dimension_keys({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     identifier: "IdentifierString", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     metric: "RequestString", # required
    #     period_in_seconds: 1,
    #     group_by: { # required
    #       group: "SanitizedString", # required
    #       dimensions: ["SanitizedString"],
    #       limit: 1,
    #     },
    #     additional_metrics: ["SanitizedString"],
    #     partition_by: {
    #       group: "SanitizedString", # required
    #       dimensions: ["SanitizedString"],
    #       limit: 1,
    #     },
    #     filter: {
    #       "SanitizedString" => "RequestString",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.aligned_start_time #=> Time
    #   resp.aligned_end_time #=> Time
    #   resp.partition_keys #=> Array
    #   resp.partition_keys[0].dimensions #=> Hash
    #   resp.partition_keys[0].dimensions["RequestString"] #=> String
    #   resp.keys #=> Array
    #   resp.keys[0].dimensions #=> Hash
    #   resp.keys[0].dimensions["RequestString"] #=> String
    #   resp.keys[0].total #=> Float
    #   resp.keys[0].additional_metrics #=> Hash
    #   resp.keys[0].additional_metrics["RequestString"] #=> Float
    #   resp.keys[0].partitions #=> Array
    #   resp.keys[0].partitions[0] #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/DescribeDimensionKeys AWS API Documentation
    #
    # @overload describe_dimension_keys(params = {})
    # @param [Hash] params ({})
    def describe_dimension_keys(params = {}, options = {})
      req = build_request(:describe_dimension_keys, params)
      req.send_request(options)
    end

    # Get the attributes of the specified dimension group for a DB instance
    # or data source. For example, if you specify a SQL ID,
    # `GetDimensionKeyDetails` retrieves the full text of the dimension
    # `db.sql.statement` associated with this ID. This operation is useful
    # because `GetResourceMetrics` and `DescribeDimensionKeys` don't
    # support retrieval of large SQL statement text, lock snapshots, and
    # execution plans.
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights returns
    #   data. The only valid value is `RDS`.
    #
    # @option params [required, String] :identifier
    #   The ID for a data source from which to gather dimension data. This ID
    #   must be immutable and unique within an Amazon Web Services Region.
    #   When a DB instance is the data source, specify its `DbiResourceId`
    #   value. For example, specify `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
    #
    # @option params [required, String] :group
    #   The name of the dimension group. Performance Insights searches the
    #   specified group for the dimension group ID. The following group name
    #   values are valid:
    #
    #   * `db.execution_plan` (Amazon RDS and Aurora only)
    #
    #   * `db.lock_snapshot` (Aurora only)
    #
    #   * `db.query` (Amazon DocumentDB only)
    #
    #   * `db.sql` (Amazon RDS and Aurora only)
    #
    # @option params [required, String] :group_identifier
    #   The ID of the dimension group from which to retrieve dimension
    #   details. For dimension group `db.sql`, the group ID is `db.sql.id`.
    #   The following group ID values are valid:
    #
    #   * `db.execution_plan.id` for dimension group `db.execution_plan`
    #     (Aurora and RDS only)
    #
    #   * `db.sql.id` for dimension group `db.sql` (Aurora and RDS only)
    #
    #   * `db.query.id` for dimension group `db.query` (DocumentDB only)
    #
    #   * For the dimension group `db.lock_snapshot`, the `GroupIdentifier` is
    #     the epoch timestamp when Performance Insights captured the snapshot,
    #     in seconds. You can retrieve this value with the
    #     `GetResourceMetrics` operation for a 1 second period.
    #
    # @option params [Array<String>] :requested_dimensions
    #   A list of dimensions to retrieve the detail data for within the given
    #   dimension group. If you don't specify this parameter, Performance
    #   Insights returns all dimension data within the specified dimension
    #   group. Specify dimension names for the following dimension groups:
    #
    #   * `db.execution_plan` - Specify the dimension name
    #     `db.execution_plan.raw_plan` or the short dimension name `raw_plan`
    #     (Amazon RDS and Aurora only)
    #
    #   * `db.lock_snapshot` - Specify the dimension name
    #     `db.lock_snapshot.lock_trees` or the short dimension name
    #     `lock_trees`. (Aurora only)
    #
    #   * `db.sql` - Specify either the full dimension name `db.sql.statement`
    #     or the short dimension name `statement` (Aurora and RDS only).
    #
    #   * `db.query` - Specify either the full dimension name
    #     `db.query.statement` or the short dimension name `statement`
    #     (DocumentDB only).
    #
    # @return [Types::GetDimensionKeyDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDimensionKeyDetailsResponse#dimensions #dimensions} => Array&lt;Types::DimensionKeyDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dimension_key_details({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     identifier: "IdentifierString", # required
    #     group: "RequestString", # required
    #     group_identifier: "RequestString", # required
    #     requested_dimensions: ["SanitizedString"],
    #   })
    #
    # @example Response structure
    #
    #   resp.dimensions #=> Array
    #   resp.dimensions[0].value #=> String
    #   resp.dimensions[0].dimension #=> String
    #   resp.dimensions[0].status #=> String, one of "AVAILABLE", "PROCESSING", "UNAVAILABLE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetDimensionKeyDetails AWS API Documentation
    #
    # @overload get_dimension_key_details(params = {})
    # @param [Hash] params ({})
    def get_dimension_key_details(params = {}, options = {})
      req = build_request(:get_dimension_key_details, params)
      req.send_request(options)
    end

    # Retrieves the report including the report ID, status, time details,
    # and the insights with recommendations. The report status can be
    # `RUNNING`, `SUCCEEDED`, or `FAILED`. The insights include the
    # `description` and `recommendation` fields.
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights will
    #   return metrics. Valid value is `RDS`.
    #
    # @option params [required, String] :identifier
    #   An immutable identifier for a data source that is unique for an Amazon
    #   Web Services Region. Performance Insights gathers metrics from this
    #   data source. In the console, the identifier is shown as *ResourceID*.
    #   When you call `DescribeDBInstances`, the identifier is returned as
    #   `DbiResourceId`.
    #
    #   To use a DB instance as a data source, specify its `DbiResourceId`
    #   value. For example, specify `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
    #
    # @option params [required, String] :analysis_report_id
    #   A unique identifier of the created analysis report. For example,
    #   `report-12345678901234567`
    #
    # @option params [String] :text_format
    #   Indicates the text format in the report. The options are `PLAIN_TEXT`
    #   or `MARKDOWN`. The default value is `plain text`.
    #
    # @option params [String] :accept_language
    #   The text language in the report. The default language is `EN_US`
    #   (English).
    #
    # @return [Types::GetPerformanceAnalysisReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPerformanceAnalysisReportResponse#analysis_report #analysis_report} => Types::AnalysisReport
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_performance_analysis_report({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     identifier: "IdentifierString", # required
    #     analysis_report_id: "AnalysisReportId", # required
    #     text_format: "PLAIN_TEXT", # accepts PLAIN_TEXT, MARKDOWN
    #     accept_language: "EN_US", # accepts EN_US
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_report.analysis_report_id #=> String
    #   resp.analysis_report.identifier #=> String
    #   resp.analysis_report.service_type #=> String, one of "RDS", "DOCDB"
    #   resp.analysis_report.create_time #=> Time
    #   resp.analysis_report.start_time #=> Time
    #   resp.analysis_report.end_time #=> Time
    #   resp.analysis_report.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED"
    #   resp.analysis_report.insights #=> Array
    #   resp.analysis_report.insights[0].insight_id #=> String
    #   resp.analysis_report.insights[0].insight_type #=> String
    #   resp.analysis_report.insights[0].context #=> String, one of "CAUSAL", "CONTEXTUAL"
    #   resp.analysis_report.insights[0].start_time #=> Time
    #   resp.analysis_report.insights[0].end_time #=> Time
    #   resp.analysis_report.insights[0].severity #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.analysis_report.insights[0].supporting_insights #=> Types::InsightList
    #   resp.analysis_report.insights[0].description #=> String
    #   resp.analysis_report.insights[0].recommendations #=> Array
    #   resp.analysis_report.insights[0].recommendations[0].recommendation_id #=> String
    #   resp.analysis_report.insights[0].recommendations[0].recommendation_description #=> String
    #   resp.analysis_report.insights[0].insight_data #=> Array
    #   resp.analysis_report.insights[0].insight_data[0].performance_insights_metric.metric #=> String
    #   resp.analysis_report.insights[0].insight_data[0].performance_insights_metric.display_name #=> String
    #   resp.analysis_report.insights[0].insight_data[0].performance_insights_metric.dimensions #=> Hash
    #   resp.analysis_report.insights[0].insight_data[0].performance_insights_metric.dimensions["DescriptiveString"] #=> String
    #   resp.analysis_report.insights[0].insight_data[0].performance_insights_metric.filter #=> Hash
    #   resp.analysis_report.insights[0].insight_data[0].performance_insights_metric.filter["DescriptiveString"] #=> String
    #   resp.analysis_report.insights[0].insight_data[0].performance_insights_metric.value #=> Float
    #   resp.analysis_report.insights[0].baseline_data #=> Array
    #   resp.analysis_report.insights[0].baseline_data[0].performance_insights_metric.metric #=> String
    #   resp.analysis_report.insights[0].baseline_data[0].performance_insights_metric.display_name #=> String
    #   resp.analysis_report.insights[0].baseline_data[0].performance_insights_metric.dimensions #=> Hash
    #   resp.analysis_report.insights[0].baseline_data[0].performance_insights_metric.dimensions["DescriptiveString"] #=> String
    #   resp.analysis_report.insights[0].baseline_data[0].performance_insights_metric.filter #=> Hash
    #   resp.analysis_report.insights[0].baseline_data[0].performance_insights_metric.filter["DescriptiveString"] #=> String
    #   resp.analysis_report.insights[0].baseline_data[0].performance_insights_metric.value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetPerformanceAnalysisReport AWS API Documentation
    #
    # @overload get_performance_analysis_report(params = {})
    # @param [Hash] params ({})
    def get_performance_analysis_report(params = {}, options = {})
      req = build_request(:get_performance_analysis_report, params)
      req.send_request(options)
    end

    # Retrieve the metadata for different features. For example, the
    # metadata might indicate that a feature is turned on or off on a
    # specific DB instance.
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights returns
    #   metrics.
    #
    # @option params [required, String] :identifier
    #   An immutable identifier for a data source that is unique for an Amazon
    #   Web Services Region. Performance Insights gathers metrics from this
    #   data source. To use a DB instance as a data source, specify its
    #   `DbiResourceId` value. For example, specify
    #   `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
    #
    # @return [Types::GetResourceMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceMetadataResponse#identifier #identifier} => String
    #   * {Types::GetResourceMetadataResponse#features #features} => Hash&lt;String,Types::FeatureMetadata&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_metadata({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     identifier: "IdentifierString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.features #=> Hash
    #   resp.features["String"].status #=> String, one of "ENABLED", "DISABLED", "UNSUPPORTED", "ENABLED_PENDING_REBOOT", "DISABLED_PENDING_REBOOT", "UNKNOWN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetResourceMetadata AWS API Documentation
    #
    # @overload get_resource_metadata(params = {})
    # @param [Hash] params ({})
    def get_resource_metadata(params = {}, options = {})
      req = build_request(:get_resource_metadata, params)
      req.send_request(options)
    end

    # Retrieve Performance Insights metrics for a set of data sources over a
    # time period. You can provide specific dimension groups and dimensions,
    # and provide filtering criteria for each group. You must specify an
    # aggregate function for each metric.
    #
    # <note markdown="1"> Each response element returns a maximum of 500 bytes. For larger
    # elements, such as SQL statements, only the first 500 bytes are
    # returned.
    #
    #  </note>
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights returns
    #   metrics. Valid values are as follows:
    #
    #   * `RDS`
    #
    #   * `DOCDB`
    #
    # @option params [required, String] :identifier
    #   An immutable identifier for a data source that is unique for an Amazon
    #   Web Services Region. Performance Insights gathers metrics from this
    #   data source. In the console, the identifier is shown as *ResourceID*.
    #   When you call `DescribeDBInstances`, the identifier is returned as
    #   `DbiResourceId`.
    #
    #   To use a DB instance as a data source, specify its `DbiResourceId`
    #   value. For example, specify `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
    #
    # @option params [required, Array<Types::MetricQuery>] :metric_queries
    #   An array of one or more queries to perform. Each query must specify a
    #   Performance Insights metric and specify an aggregate function, and you
    #   can provide filtering criteria. You must append the aggregate function
    #   to the metric. For example, to find the average for the metric
    #   `db.load` you must use `db.load.avg`. Valid values for aggregate
    #   functions include `.avg`, `.min`, `.max`, and `.sum`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The date and time specifying the beginning of the requested time
    #   series query range. You can't specify a `StartTime` that is earlier
    #   than 7 days ago. By default, Performance Insights has 7 days of
    #   retention, but you can extend this range up to 2 years. The value
    #   specified is *inclusive*. Thus, the command returns data points equal
    #   to or greater than `StartTime`.
    #
    #   The value for `StartTime` must be earlier than the value for
    #   `EndTime`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The date and time specifying the end of the requested time series
    #   query range. The value specified is *exclusive*. Thus, the command
    #   returns data points less than (but not equal to) `EndTime`.
    #
    #   The value for `EndTime` must be later than the value for `StartTime`.
    #
    # @option params [Integer] :period_in_seconds
    #   The granularity, in seconds, of the data points returned from
    #   Performance Insights. A period can be as short as one second, or as
    #   long as one day (86400 seconds). Valid values are:
    #
    #   * `1` (one second)
    #
    #   * `60` (one minute)
    #
    #   * `300` (five minutes)
    #
    #   * `3600` (one hour)
    #
    #   * `86400` (twenty-four hours)
    #
    #   If you don't specify `PeriodInSeconds`, then Performance Insights
    #   will choose a value for you, with a goal of returning roughly 100-200
    #   data points in the response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @option params [String] :next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   token, up to the value specified by `MaxRecords`.
    #
    # @option params [String] :period_alignment
    #   The returned timestamp which is the start or end time of the time
    #   periods. The default value is `END_TIME`.
    #
    # @return [Types::GetResourceMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceMetricsResponse#aligned_start_time #aligned_start_time} => Time
    #   * {Types::GetResourceMetricsResponse#aligned_end_time #aligned_end_time} => Time
    #   * {Types::GetResourceMetricsResponse#identifier #identifier} => String
    #   * {Types::GetResourceMetricsResponse#metric_list #metric_list} => Array&lt;Types::MetricKeyDataPoints&gt;
    #   * {Types::GetResourceMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_metrics({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     identifier: "IdentifierString", # required
    #     metric_queries: [ # required
    #       {
    #         metric: "SanitizedString", # required
    #         group_by: {
    #           group: "SanitizedString", # required
    #           dimensions: ["SanitizedString"],
    #           limit: 1,
    #         },
    #         filter: {
    #           "SanitizedString" => "RequestString",
    #         },
    #       },
    #     ],
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period_in_seconds: 1,
    #     max_results: 1,
    #     next_token: "NextToken",
    #     period_alignment: "END_TIME", # accepts END_TIME, START_TIME
    #   })
    #
    # @example Response structure
    #
    #   resp.aligned_start_time #=> Time
    #   resp.aligned_end_time #=> Time
    #   resp.identifier #=> String
    #   resp.metric_list #=> Array
    #   resp.metric_list[0].key.metric #=> String
    #   resp.metric_list[0].key.dimensions #=> Hash
    #   resp.metric_list[0].key.dimensions["RequestString"] #=> String
    #   resp.metric_list[0].data_points #=> Array
    #   resp.metric_list[0].data_points[0].timestamp #=> Time
    #   resp.metric_list[0].data_points[0].value #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/GetResourceMetrics AWS API Documentation
    #
    # @overload get_resource_metrics(params = {})
    # @param [Hash] params ({})
    def get_resource_metrics(params = {}, options = {})
      req = build_request(:get_resource_metrics, params)
      req.send_request(options)
    end

    # Retrieve the dimensions that can be queried for each specified metric
    # type on a specified DB instance.
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights returns
    #   metrics.
    #
    # @option params [required, String] :identifier
    #   An immutable identifier for a data source that is unique within an
    #   Amazon Web Services Region. Performance Insights gathers metrics from
    #   this data source. To use an Amazon RDS DB instance as a data source,
    #   specify its `DbiResourceId` value. For example, specify
    #   `db-ABCDEFGHIJKLMNOPQRSTU1VWZ`.
    #
    # @option params [required, Array<String>] :metrics
    #   The types of metrics for which to retrieve dimensions. Valid values
    #   include `db.load`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more items
    #   exist than the specified `MaxRecords` value, a pagination token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   token, up to the value specified by `MaxRecords`.
    #
    # @option params [Array<String>] :authorized_actions
    #   The actions to discover the dimensions you are authorized to access.
    #   If you specify multiple actions, then the response will contain the
    #   dimensions common for all the actions.
    #
    #   When you don't specify this request parameter or provide an empty
    #   list, the response contains all the available dimensions for the
    #   target database engine whether or not you are authorized to access
    #   them.
    #
    # @return [Types::ListAvailableResourceDimensionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAvailableResourceDimensionsResponse#metric_dimensions #metric_dimensions} => Array&lt;Types::MetricDimensionGroups&gt;
    #   * {Types::ListAvailableResourceDimensionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_resource_dimensions({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     identifier: "IdentifierString", # required
    #     metrics: ["SanitizedString"], # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     authorized_actions: ["DescribeDimensionKeys"], # accepts DescribeDimensionKeys, GetDimensionKeyDetails, GetResourceMetrics
    #   })
    #
    # @example Response structure
    #
    #   resp.metric_dimensions #=> Array
    #   resp.metric_dimensions[0].metric #=> String
    #   resp.metric_dimensions[0].groups #=> Array
    #   resp.metric_dimensions[0].groups[0].group #=> String
    #   resp.metric_dimensions[0].groups[0].dimensions #=> Array
    #   resp.metric_dimensions[0].groups[0].dimensions[0].identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ListAvailableResourceDimensions AWS API Documentation
    #
    # @overload list_available_resource_dimensions(params = {})
    # @param [Hash] params ({})
    def list_available_resource_dimensions(params = {}, options = {})
      req = build_request(:list_available_resource_dimensions, params)
      req.send_request(options)
    end

    # Retrieve metrics of the specified types that can be queried for a
    # specified DB instance.
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights returns
    #   metrics.
    #
    # @option params [required, String] :identifier
    #   An immutable identifier for a data source that is unique within an
    #   Amazon Web Services Region. Performance Insights gathers metrics from
    #   this data source. To use an Amazon RDS DB instance as a data source,
    #   specify its `DbiResourceId` value. For example, specify
    #   `db-ABCDEFGHIJKLMNOPQRSTU1VWZ`.
    #
    # @option params [required, Array<String>] :metric_types
    #   The types of metrics to return in the response. Valid values in the
    #   array include the following:
    #
    #   * `os` (OS counter metrics) - All engines
    #
    #   * `db` (DB load metrics) - All engines except for Amazon DocumentDB
    #
    #   * `db.sql.stats` (per-SQL metrics) - All engines except for Amazon
    #     DocumentDB
    #
    #   * `db.sql_tokenized.stats` (per-SQL digest metrics) - All engines
    #     except for Amazon DocumentDB
    #
    # @option params [String] :next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   token, up to the value specified by `MaxRecords`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return. If the `MaxRecords` value is
    #   less than the number of existing items, the response includes a
    #   pagination token.
    #
    # @return [Types::ListAvailableResourceMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAvailableResourceMetricsResponse#metrics #metrics} => Array&lt;Types::ResponseResourceMetric&gt;
    #   * {Types::ListAvailableResourceMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_resource_metrics({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     identifier: "IdentifierString", # required
    #     metric_types: ["SanitizedString"], # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.metrics #=> Array
    #   resp.metrics[0].metric #=> String
    #   resp.metrics[0].description #=> String
    #   resp.metrics[0].unit #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ListAvailableResourceMetrics AWS API Documentation
    #
    # @overload list_available_resource_metrics(params = {})
    # @param [Hash] params ({})
    def list_available_resource_metrics(params = {}, options = {})
      req = build_request(:list_available_resource_metrics, params)
      req.send_request(options)
    end

    # Lists all the analysis reports created for the DB instance. The
    # reports are sorted based on the start time of each report.
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights returns
    #   metrics. Valid value is `RDS`.
    #
    # @option params [required, String] :identifier
    #   An immutable identifier for a data source that is unique for an Amazon
    #   Web Services Region. Performance Insights gathers metrics from this
    #   data source. In the console, the identifier is shown as *ResourceID*.
    #   When you call `DescribeDBInstances`, the identifier is returned as
    #   `DbiResourceId`.
    #
    #   To use a DB instance as a data source, specify its `DbiResourceId`
    #   value. For example, specify `db-ABCDEFGHIJKLMNOPQRSTU1VW2X`.
    #
    # @option params [String] :next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   token, up to the value specified by `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more items
    #   exist than the specified `MaxResults` value, a pagination token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [Boolean] :list_tags
    #   Specifies whether or not to include the list of tags in the response.
    #
    # @return [Types::ListPerformanceAnalysisReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPerformanceAnalysisReportsResponse#analysis_reports #analysis_reports} => Array&lt;Types::AnalysisReportSummary&gt;
    #   * {Types::ListPerformanceAnalysisReportsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_performance_analysis_reports({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     identifier: "IdentifierString", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     list_tags: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_reports #=> Array
    #   resp.analysis_reports[0].analysis_report_id #=> String
    #   resp.analysis_reports[0].create_time #=> Time
    #   resp.analysis_reports[0].start_time #=> Time
    #   resp.analysis_reports[0].end_time #=> Time
    #   resp.analysis_reports[0].status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED"
    #   resp.analysis_reports[0].tags #=> Array
    #   resp.analysis_reports[0].tags[0].key #=> String
    #   resp.analysis_reports[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ListPerformanceAnalysisReports AWS API Documentation
    #
    # @overload list_performance_analysis_reports(params = {})
    # @param [Hash] params ({})
    def list_performance_analysis_reports(params = {}, options = {})
      req = build_request(:list_performance_analysis_reports, params)
      req.send_request(options)
    end

    # Retrieves all the metadata tags associated with Amazon RDS Performance
    # Insights resource.
    #
    # @option params [required, String] :service_type
    #   List the tags for the Amazon Web Services service for which
    #   Performance Insights returns metrics. Valid value is `RDS`.
    #
    # @option params [required, String] :resource_arn
    #   Lists all the tags for the Amazon RDS Performance Insights resource.
    #   This value is an Amazon Resource Name (ARN). For information about
    #   creating an ARN, see [ Constructing an RDS Amazon Resource Name
    #   (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds metadata tags to the Amazon RDS Performance Insights resource.
    #
    # @option params [required, String] :service_type
    #   The Amazon Web Services service for which Performance Insights returns
    #   metrics. Valid value is `RDS`.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon RDS Performance Insights resource that the tags are added
    #   to. This value is an Amazon Resource Name (ARN). For information about
    #   creating an ARN, see [ Constructing an RDS Amazon Resource Name
    #   (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The metadata assigned to an Amazon RDS resource consisting of a
    #   key-value pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes the metadata tags from the Amazon RDS Performance Insights
    # resource.
    #
    # @option params [required, String] :service_type
    #   List the tags for the Amazon Web Services service for which
    #   Performance Insights returns metrics. Valid value is `RDS`.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon RDS Performance Insights resource that the tags are added
    #   to. This value is an Amazon Resource Name (ARN). For information about
    #   creating an ARN, see [ Constructing an RDS Amazon Resource Name
    #   (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing
    #
    # @option params [required, Array<String>] :tag_keys
    #   The metadata assigned to an Amazon RDS Performance Insights resource
    #   consisting of a key-value pair.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     service_type: "RDS", # required, accepts RDS, DOCDB
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pi-2018-02-27/UntagResource AWS API Documentation
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
        Aws::Telemetry.module_to_tracer_name('Aws::PI')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-pi'
      context[:gem_version] = '1.81.0'
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
