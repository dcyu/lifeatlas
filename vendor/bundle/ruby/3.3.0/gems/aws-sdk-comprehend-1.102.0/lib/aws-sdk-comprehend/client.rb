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

module Aws::Comprehend
  # An API client for Comprehend.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Comprehend::Client.new(
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

    @identifier = :comprehend

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
    add_plugin(Aws::Comprehend::Plugins::Endpoints)

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
    #   @option options [Aws::Comprehend::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Comprehend::EndpointParameters`.
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

    # Determines the dominant language of the input text for a batch of
    # documents. For a list of languages that Amazon Comprehend can detect,
    # see [Amazon Comprehend Supported Languages][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. Each document should
    #   contain at least 20 characters. The maximum size of each document is 5
    #   KB.
    #
    # @return [Types::BatchDetectDominantLanguageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectDominantLanguageResponse#result_list #result_list} => Array&lt;Types::BatchDetectDominantLanguageItemResult&gt;
    #   * {Types::BatchDetectDominantLanguageResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_dominant_language({
    #     text_list: ["CustomerInputString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].languages #=> Array
    #   resp.result_list[0].languages[0].language_code #=> String
    #   resp.result_list[0].languages[0].score #=> Float
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectDominantLanguage AWS API Documentation
    #
    # @overload batch_detect_dominant_language(params = {})
    # @param [Hash] params ({})
    def batch_detect_dominant_language(params = {}, options = {})
      req = build_request(:batch_detect_dominant_language, params)
      req.send_request(options)
    end

    # Inspects the text of a batch of documents for named entities and
    # returns information about them. For more information about named
    # entities, see [Entities][1] in the Comprehend Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. The maximum size of each
    #   document is 5 KB.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #
    # @return [Types::BatchDetectEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectEntitiesResponse#result_list #result_list} => Array&lt;Types::BatchDetectEntitiesItemResult&gt;
    #   * {Types::BatchDetectEntitiesResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_entities({
    #     text_list: ["CustomerInputString"], # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].entities #=> Array
    #   resp.result_list[0].entities[0].score #=> Float
    #   resp.result_list[0].entities[0].type #=> String, one of "PERSON", "LOCATION", "ORGANIZATION", "COMMERCIAL_ITEM", "EVENT", "DATE", "QUANTITY", "TITLE", "OTHER"
    #   resp.result_list[0].entities[0].text #=> String
    #   resp.result_list[0].entities[0].begin_offset #=> Integer
    #   resp.result_list[0].entities[0].end_offset #=> Integer
    #   resp.result_list[0].entities[0].block_references #=> Array
    #   resp.result_list[0].entities[0].block_references[0].block_id #=> String
    #   resp.result_list[0].entities[0].block_references[0].begin_offset #=> Integer
    #   resp.result_list[0].entities[0].block_references[0].end_offset #=> Integer
    #   resp.result_list[0].entities[0].block_references[0].child_blocks #=> Array
    #   resp.result_list[0].entities[0].block_references[0].child_blocks[0].child_block_id #=> String
    #   resp.result_list[0].entities[0].block_references[0].child_blocks[0].begin_offset #=> Integer
    #   resp.result_list[0].entities[0].block_references[0].child_blocks[0].end_offset #=> Integer
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectEntities AWS API Documentation
    #
    # @overload batch_detect_entities(params = {})
    # @param [Hash] params ({})
    def batch_detect_entities(params = {}, options = {})
      req = build_request(:batch_detect_entities, params)
      req.send_request(options)
    end

    # Detects the key noun phrases found in a batch of documents.
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. The maximum size of each
    #   document is 5 KB.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #
    # @return [Types::BatchDetectKeyPhrasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectKeyPhrasesResponse#result_list #result_list} => Array&lt;Types::BatchDetectKeyPhrasesItemResult&gt;
    #   * {Types::BatchDetectKeyPhrasesResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_key_phrases({
    #     text_list: ["CustomerInputString"], # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].key_phrases #=> Array
    #   resp.result_list[0].key_phrases[0].score #=> Float
    #   resp.result_list[0].key_phrases[0].text #=> String
    #   resp.result_list[0].key_phrases[0].begin_offset #=> Integer
    #   resp.result_list[0].key_phrases[0].end_offset #=> Integer
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectKeyPhrases AWS API Documentation
    #
    # @overload batch_detect_key_phrases(params = {})
    # @param [Hash] params ({})
    def batch_detect_key_phrases(params = {}, options = {})
      req = build_request(:batch_detect_key_phrases, params)
      req.send_request(options)
    end

    # Inspects a batch of documents and returns an inference of the
    # prevailing sentiment, `POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`,
    # in each one.
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. The maximum size of each
    #   document is 5 KB.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #
    # @return [Types::BatchDetectSentimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectSentimentResponse#result_list #result_list} => Array&lt;Types::BatchDetectSentimentItemResult&gt;
    #   * {Types::BatchDetectSentimentResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_sentiment({
    #     text_list: ["CustomerInputString"], # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].sentiment #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"
    #   resp.result_list[0].sentiment_score.positive #=> Float
    #   resp.result_list[0].sentiment_score.negative #=> Float
    #   resp.result_list[0].sentiment_score.neutral #=> Float
    #   resp.result_list[0].sentiment_score.mixed #=> Float
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSentiment AWS API Documentation
    #
    # @overload batch_detect_sentiment(params = {})
    # @param [Hash] params ({})
    def batch_detect_sentiment(params = {}, options = {})
      req = build_request(:batch_detect_sentiment, params)
      req.send_request(options)
    end

    # Inspects the text of a batch of documents for the syntax and part of
    # speech of the words in the document and returns information about
    # them. For more information, see [Syntax][1] in the Comprehend
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. The maximum size for each
    #   document is 5 KB.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify any of the
    #   following languages supported by Amazon Comprehend: German ("de"),
    #   English ("en"), Spanish ("es"), French ("fr"), Italian ("it"),
    #   or Portuguese ("pt"). All documents must be in the same language.
    #
    # @return [Types::BatchDetectSyntaxResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectSyntaxResponse#result_list #result_list} => Array&lt;Types::BatchDetectSyntaxItemResult&gt;
    #   * {Types::BatchDetectSyntaxResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_syntax({
    #     text_list: ["CustomerInputString"], # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].syntax_tokens #=> Array
    #   resp.result_list[0].syntax_tokens[0].token_id #=> Integer
    #   resp.result_list[0].syntax_tokens[0].text #=> String
    #   resp.result_list[0].syntax_tokens[0].begin_offset #=> Integer
    #   resp.result_list[0].syntax_tokens[0].end_offset #=> Integer
    #   resp.result_list[0].syntax_tokens[0].part_of_speech.tag #=> String, one of "ADJ", "ADP", "ADV", "AUX", "CONJ", "CCONJ", "DET", "INTJ", "NOUN", "NUM", "O", "PART", "PRON", "PROPN", "PUNCT", "SCONJ", "SYM", "VERB"
    #   resp.result_list[0].syntax_tokens[0].part_of_speech.score #=> Float
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSyntax AWS API Documentation
    #
    # @overload batch_detect_syntax(params = {})
    # @param [Hash] params ({})
    def batch_detect_syntax(params = {}, options = {})
      req = build_request(:batch_detect_syntax, params)
      req.send_request(options)
    end

    # Inspects a batch of documents and returns a sentiment analysis for
    # each entity identified in the documents.
    #
    # For more information about targeted sentiment, see [Targeted
    # sentiment][1] in the *Amazon Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. The maximum size of each
    #   document is 5 KB.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. Currently, English is the only
    #   supported language.
    #
    # @return [Types::BatchDetectTargetedSentimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectTargetedSentimentResponse#result_list #result_list} => Array&lt;Types::BatchDetectTargetedSentimentItemResult&gt;
    #   * {Types::BatchDetectTargetedSentimentResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_targeted_sentiment({
    #     text_list: ["CustomerInputString"], # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].entities #=> Array
    #   resp.result_list[0].entities[0].descriptive_mention_index #=> Array
    #   resp.result_list[0].entities[0].descriptive_mention_index[0] #=> Integer
    #   resp.result_list[0].entities[0].mentions #=> Array
    #   resp.result_list[0].entities[0].mentions[0].score #=> Float
    #   resp.result_list[0].entities[0].mentions[0].group_score #=> Float
    #   resp.result_list[0].entities[0].mentions[0].text #=> String
    #   resp.result_list[0].entities[0].mentions[0].type #=> String, one of "PERSON", "LOCATION", "ORGANIZATION", "FACILITY", "BRAND", "COMMERCIAL_ITEM", "MOVIE", "MUSIC", "BOOK", "SOFTWARE", "GAME", "PERSONAL_TITLE", "EVENT", "DATE", "QUANTITY", "ATTRIBUTE", "OTHER"
    #   resp.result_list[0].entities[0].mentions[0].mention_sentiment.sentiment #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"
    #   resp.result_list[0].entities[0].mentions[0].mention_sentiment.sentiment_score.positive #=> Float
    #   resp.result_list[0].entities[0].mentions[0].mention_sentiment.sentiment_score.negative #=> Float
    #   resp.result_list[0].entities[0].mentions[0].mention_sentiment.sentiment_score.neutral #=> Float
    #   resp.result_list[0].entities[0].mentions[0].mention_sentiment.sentiment_score.mixed #=> Float
    #   resp.result_list[0].entities[0].mentions[0].begin_offset #=> Integer
    #   resp.result_list[0].entities[0].mentions[0].end_offset #=> Integer
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectTargetedSentiment AWS API Documentation
    #
    # @overload batch_detect_targeted_sentiment(params = {})
    # @param [Hash] params ({})
    def batch_detect_targeted_sentiment(params = {}, options = {})
      req = build_request(:batch_detect_targeted_sentiment, params)
      req.send_request(options)
    end

    # Creates a classification request to analyze a single document in
    # real-time. `ClassifyDocument` supports the following model types:
    #
    # * Custom classifier - a custom model that you have created and
    #   trained. For input, you can provide plain text, a single-page
    #   document (PDF, Word, or image), or Amazon Textract API output. For
    #   more information, see [Custom classification][1] in the *Amazon
    #   Comprehend Developer Guide*.
    #
    # * Prompt safety classifier - Amazon Comprehend provides a pre-trained
    #   model for classifying input prompts for generative AI applications.
    #   For input, you provide English plain text input. For prompt safety
    #   classification, the response includes only the `Classes` field. For
    #   more information about prompt safety classifiers, see [Prompt safety
    #   classification][2] in the *Amazon Comprehend Developer Guide*.
    #
    # If the system detects errors while processing a page in the input
    # document, the API response includes an `Errors` field that describes
    # the errors.
    #
    # If the system detects a document-level error in your input document,
    # the API returns an `InvalidRequestException` error response. For
    # details about this exception, see [ Errors in semi-structured
    # documents][3] in the Comprehend Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-document-classification.html
    # [2]: https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification
    # [3]: https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html
    #
    # @option params [String] :text
    #   The document text to be analyzed. If you enter text using this
    #   parameter, do not use the `Bytes` parameter.
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint.
    #
    #   For prompt safety classification, Amazon Comprehend provides the
    #   endpoint ARN. For more information about prompt safety classifiers,
    #   see [Prompt safety classification][1] in the *Amazon Comprehend
    #   Developer Guide*
    #
    #   For custom classification, you create an endpoint for your custom
    #   model. For more information, see [Using Amazon Comprehend
    #   endpoints][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification
    #   [2]: https://docs.aws.amazon.com/comprehend/latest/dg/using-endpoints.html
    #
    # @option params [String, StringIO, File] :bytes
    #   Use the `Bytes` parameter to input a text, PDF, Word or image file.
    #
    #   When you classify a document using a custom model, you can also use
    #   the `Bytes` parameter to input an Amazon Textract `DetectDocumentText`
    #   or `AnalyzeDocument` output file.
    #
    #   To classify a document using the prompt safety classifier, use the
    #   `Text` parameter for input.
    #
    #   Provide the input document as a sequence of base64-encoded bytes. If
    #   your code uses an Amazon Web Services SDK to classify documents, the
    #   SDK may encode the document file bytes for you.
    #
    #   The maximum length of this field depends on the input document type.
    #   For details, see [ Inputs for real-time custom analysis][1] in the
    #   Comprehend Developer Guide.
    #
    #   If you use the `Bytes` parameter, do not use the `Text` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html
    #
    # @option params [Types::DocumentReaderConfig] :document_reader_config
    #   Provides configuration parameters to override the default actions for
    #   extracting text from PDF documents and image files.
    #
    # @return [Types::ClassifyDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClassifyDocumentResponse#classes #classes} => Array&lt;Types::DocumentClass&gt;
    #   * {Types::ClassifyDocumentResponse#labels #labels} => Array&lt;Types::DocumentLabel&gt;
    #   * {Types::ClassifyDocumentResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::ClassifyDocumentResponse#document_type #document_type} => Array&lt;Types::DocumentTypeListItem&gt;
    #   * {Types::ClassifyDocumentResponse#errors #errors} => Array&lt;Types::ErrorsListItem&gt;
    #   * {Types::ClassifyDocumentResponse#warnings #warnings} => Array&lt;Types::WarningsListItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.classify_document({
    #     text: "CustomerInputString",
    #     endpoint_arn: "DocumentClassifierEndpointArn", # required
    #     bytes: "data",
    #     document_reader_config: {
    #       document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #       document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #       feature_types: ["TABLES"], # accepts TABLES, FORMS
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.classes #=> Array
    #   resp.classes[0].name #=> String
    #   resp.classes[0].score #=> Float
    #   resp.classes[0].page #=> Integer
    #   resp.labels #=> Array
    #   resp.labels[0].name #=> String
    #   resp.labels[0].score #=> Float
    #   resp.labels[0].page #=> Integer
    #   resp.document_metadata.pages #=> Integer
    #   resp.document_metadata.extracted_characters #=> Array
    #   resp.document_metadata.extracted_characters[0].page #=> Integer
    #   resp.document_metadata.extracted_characters[0].count #=> Integer
    #   resp.document_type #=> Array
    #   resp.document_type[0].page #=> Integer
    #   resp.document_type[0].type #=> String, one of "NATIVE_PDF", "SCANNED_PDF", "MS_WORD", "IMAGE", "PLAIN_TEXT", "TEXTRACT_DETECT_DOCUMENT_TEXT_JSON", "TEXTRACT_ANALYZE_DOCUMENT_JSON"
    #   resp.errors #=> Array
    #   resp.errors[0].page #=> Integer
    #   resp.errors[0].error_code #=> String, one of "TEXTRACT_BAD_PAGE", "TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED", "PAGE_CHARACTERS_EXCEEDED", "PAGE_SIZE_EXCEEDED", "INTERNAL_SERVER_ERROR"
    #   resp.errors[0].error_message #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].page #=> Integer
    #   resp.warnings[0].warn_code #=> String, one of "INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL", "INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL"
    #   resp.warnings[0].warn_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ClassifyDocument AWS API Documentation
    #
    # @overload classify_document(params = {})
    # @param [Hash] params ({})
    def classify_document(params = {}, options = {})
      req = build_request(:classify_document, params)
      req.send_request(options)
    end

    # Analyzes input text for the presence of personally identifiable
    # information (PII) and returns the labels of identified PII entity
    # types such as name, address, bank account number, or phone number.
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. The maximum string size is 100 KB.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents.
    #
    # @return [Types::ContainsPiiEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ContainsPiiEntitiesResponse#labels #labels} => Array&lt;Types::EntityLabel&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.contains_pii_entities({
    #     text: "String", # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #   })
    #
    # @example Response structure
    #
    #   resp.labels #=> Array
    #   resp.labels[0].name #=> String, one of "BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"
    #   resp.labels[0].score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ContainsPiiEntities AWS API Documentation
    #
    # @overload contains_pii_entities(params = {})
    # @param [Hash] params ({})
    def contains_pii_entities(params = {}, options = {})
      req = build_request(:contains_pii_entities, params)
      req.send_request(options)
    end

    # Creates a dataset to upload training or test data for a model
    # associated with a flywheel. For more information about datasets, see [
    # Flywheel overview][1] in the *Amazon Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html
    #
    # @option params [required, String] :flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel of the flywheel to
    #   receive the data.
    #
    # @option params [required, String] :dataset_name
    #   Name of the dataset.
    #
    # @option params [String] :dataset_type
    #   The dataset type. You can specify that the data in a dataset is for
    #   training the model or for testing the model.
    #
    # @option params [String] :description
    #   Description of the dataset.
    #
    # @option params [required, Types::DatasetInputDataConfig] :input_data_config
    #   Information about the input data configuration. The type of input data
    #   varies based on the format of the input and whether the data is for a
    #   classifier model or an entity recognition model.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags for the dataset.
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#dataset_arn #dataset_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #     dataset_name: "ComprehendArnName", # required
    #     dataset_type: "TRAIN", # accepts TRAIN, TEST
    #     description: "Description",
    #     input_data_config: { # required
    #       augmented_manifests: [
    #         {
    #           attribute_names: ["AttributeNamesListItem"], # required
    #           s3_uri: "S3Uri", # required
    #           annotation_data_s3_uri: "S3Uri",
    #           source_documents_s3_uri: "S3Uri",
    #           document_type: "PLAIN_TEXT_DOCUMENT", # accepts PLAIN_TEXT_DOCUMENT, SEMI_STRUCTURED_DOCUMENT
    #         },
    #       ],
    #       data_format: "COMPREHEND_CSV", # accepts COMPREHEND_CSV, AUGMENTED_MANIFEST
    #       document_classifier_input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         label_delimiter: "LabelDelimiter",
    #       },
    #       entity_recognizer_input_data_config: {
    #         annotations: {
    #           s3_uri: "S3Uri", # required
    #         },
    #         documents: { # required
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #         },
    #         entity_list: {
    #           s3_uri: "S3Uri", # required
    #         },
    #       },
    #     },
    #     client_request_token: "ClientRequestTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateDataset AWS API Documentation
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # Creates a new document classifier that you can use to categorize
    # documents. To create a classifier, you provide a set of training
    # documents that are labeled with the categories that you want to use.
    # For more information, see [Training classifier models][1] in the
    # Comprehend Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/training-classifier-model.html
    #
    # @option params [required, String] :document_classifier_name
    #   The name of the document classifier.
    #
    # @option params [String] :version_name
    #   The version name given to the newly created classifier. Version names
    #   can have a maximum of 256 characters. Alphanumeric characters, hyphens
    #   (-) and underscores (\_) are allowed. The version name must be unique
    #   among all models with the same classifier name in the Amazon Web
    #   Services account/Amazon Web Services Region.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the document classifier. A tag is a key-value
    #   pair that adds as a metadata to a resource used by Amazon Comprehend.
    #   For example, a tag with "Sales" as the key might be added to a
    #   resource to indicate its use by the sales department.
    #
    # @option params [required, Types::DocumentClassifierInputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [Types::DocumentClassifierOutputDataConfig] :output_data_config
    #   Specifies the location for the output files from a custom classifier
    #   job. This parameter is required for a request that creates a native
    #   document model.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify any of the
    #   languages supported by Amazon Comprehend. All documents must be in the
    #   same language.
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume attached
    #   to the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your custom
    #   classifier. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @option params [String] :mode
    #   Indicates the mode in which the classifier will be trained. The
    #   classifier can be trained in multi-class (single-label) mode or
    #   multi-label mode. Multi-class mode identifies a single class label for
    #   each document and multi-label mode identifies one or more class labels
    #   for each document. Multiple labels for an individual document are
    #   separated by a delimiter. The default delimiter between labels is a
    #   pipe (\|).
    #
    # @option params [String] :model_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt trained
    #   custom models. The ModelKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [String] :model_policy
    #   The resource-based policy to attach to your custom document classifier
    #   model. You can use this policy to allow another Amazon Web Services
    #   account to import your custom model.
    #
    #   Provide your policy as a JSON body that you enter as a UTF-8 encoded
    #   string without line breaks. To provide valid JSON, enclose the
    #   attribute names and values in double quotes. If the JSON body is also
    #   enclosed in double quotes, then you must escape the double quotes that
    #   are inside the policy:
    #
    #   `"{"attribute": "value", "attribute": ["value"]}"`
    #
    #   To avoid escaping quotes, you can use single quotes to enclose the
    #   policy and double quotes to enclose the JSON names and values:
    #
    #   `'{"attribute": "value", "attribute": ["value"]}'`
    #
    # @return [Types::CreateDocumentClassifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDocumentClassifierResponse#document_classifier_arn #document_classifier_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_document_classifier({
    #     document_classifier_name: "ComprehendArnName", # required
    #     version_name: "VersionName",
    #     data_access_role_arn: "IamRoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     input_data_config: { # required
    #       data_format: "COMPREHEND_CSV", # accepts COMPREHEND_CSV, AUGMENTED_MANIFEST
    #       s3_uri: "S3Uri",
    #       test_s3_uri: "S3Uri",
    #       label_delimiter: "LabelDelimiter",
    #       augmented_manifests: [
    #         {
    #           s3_uri: "S3Uri", # required
    #           split: "TRAIN", # accepts TRAIN, TEST
    #           attribute_names: ["AttributeNamesListItem"], # required
    #           annotation_data_s3_uri: "S3Uri",
    #           source_documents_s3_uri: "S3Uri",
    #           document_type: "PLAIN_TEXT_DOCUMENT", # accepts PLAIN_TEXT_DOCUMENT, SEMI_STRUCTURED_DOCUMENT
    #         },
    #       ],
    #       document_type: "PLAIN_TEXT_DOCUMENT", # accepts PLAIN_TEXT_DOCUMENT, SEMI_STRUCTURED_DOCUMENT
    #       documents: {
    #         s3_uri: "S3Uri", # required
    #         test_s3_uri: "S3Uri",
    #       },
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #         document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #         feature_types: ["TABLES"], # accepts TABLES, FORMS
    #       },
    #     },
    #     output_data_config: {
    #       s3_uri: "S3Uri",
    #       kms_key_id: "KmsKeyId",
    #       flywheel_stats_s3_prefix: "S3Uri",
    #     },
    #     client_request_token: "ClientRequestTokenString",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     mode: "MULTI_CLASS", # accepts MULTI_CLASS, MULTI_LABEL
    #     model_kms_key_id: "KmsKeyId",
    #     model_policy: "Policy",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classifier_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateDocumentClassifier AWS API Documentation
    #
    # @overload create_document_classifier(params = {})
    # @param [Hash] params ({})
    def create_document_classifier(params = {}, options = {})
      req = build_request(:create_document_classifier, params)
      req.send_request(options)
    end

    # Creates a model-specific endpoint for synchronous inference for a
    # previously trained custom model For information about endpoints, see
    # [Managing endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html
    #
    # @option params [required, String] :endpoint_name
    #   This is the descriptive suffix that becomes part of the `EndpointArn`
    #   used for all subsequent requests to this resource.
    #
    # @option params [String] :model_arn
    #   The Amazon Resource Number (ARN) of the model to which the endpoint
    #   will be attached.
    #
    # @option params [required, Integer] :desired_inference_units
    #   The desired number of inference units to be used by the model using
    #   this endpoint. Each inference unit represents of a throughput of 100
    #   characters per second.
    #
    # @option params [String] :client_request_token
    #   An idempotency token provided by the customer. If this token matches a
    #   previous endpoint creation request, Amazon Comprehend will not return
    #   a `ResourceInUseException`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the endpoint. A tag is a key-value pair that
    #   adds metadata to the endpoint. For example, a tag with "Sales" as
    #   the key might be added to an endpoint to indicate its use by the sales
    #   department.
    #
    # @option params [String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to trained custom models encrypted with a
    #   customer managed key (ModelKmsKeyId).
    #
    # @option params [String] :flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel to which the endpoint
    #   will be attached.
    #
    # @return [Types::CreateEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointResponse#endpoint_arn #endpoint_arn} => String
    #   * {Types::CreateEndpointResponse#model_arn #model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint({
    #     endpoint_name: "ComprehendEndpointName", # required
    #     model_arn: "ComprehendModelArn",
    #     desired_inference_units: 1, # required
    #     client_request_token: "ClientRequestTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     data_access_role_arn: "IamRoleArn",
    #     flywheel_arn: "ComprehendFlywheelArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_arn #=> String
    #   resp.model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateEndpoint AWS API Documentation
    #
    # @overload create_endpoint(params = {})
    # @param [Hash] params ({})
    def create_endpoint(params = {}, options = {})
      req = build_request(:create_endpoint, params)
      req.send_request(options)
    end

    # Creates an entity recognizer using submitted files. After your
    # `CreateEntityRecognizer` request is submitted, you can check job
    # status using the `DescribeEntityRecognizer` API.
    #
    # @option params [required, String] :recognizer_name
    #   The name given to the newly created recognizer. Recognizer names can
    #   be a maximum of 256 characters. Alphanumeric characters, hyphens (-)
    #   and underscores (\_) are allowed. The name must be unique in the
    #   account/Region.
    #
    # @option params [String] :version_name
    #   The version name given to the newly created recognizer. Version names
    #   can be a maximum of 256 characters. Alphanumeric characters, hyphens
    #   (-) and underscores (\_) are allowed. The version name must be unique
    #   among all models with the same recognizer name in the account/Region.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the entity recognizer. A tag is a key-value
    #   pair that adds as a metadata to a resource used by Amazon Comprehend.
    #   For example, a tag with "Sales" as the key might be added to a
    #   resource to indicate its use by the sales department.
    #
    # @option params [required, Types::EntityRecognizerInputDataConfig] :input_data_config
    #   Specifies the format and location of the input data. The S3 bucket
    #   containing the input data must be located in the same Region as the
    #   entity recognizer being created.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :language_code
    #   You can specify any of the following languages: English ("en"),
    #   Spanish ("es"), French ("fr"), Italian ("it"), German ("de"),
    #   or Portuguese ("pt"). If you plan to use this entity recognizer with
    #   PDF, Word, or image input files, you must specify English as the
    #   language. All training documents must be in the same language.
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume attached
    #   to the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your custom entity
    #   recognizer. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @option params [String] :model_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt trained
    #   custom models. The ModelKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [String] :model_policy
    #   The JSON resource-based policy to attach to your custom entity
    #   recognizer model. You can use this policy to allow another Amazon Web
    #   Services account to import your custom model.
    #
    #   Provide your JSON as a UTF-8 encoded string without line breaks. To
    #   provide valid JSON for your policy, enclose the attribute names and
    #   values in double quotes. If the JSON body is also enclosed in double
    #   quotes, then you must escape the double quotes that are inside the
    #   policy:
    #
    #   `"{"attribute": "value", "attribute": ["value"]}"`
    #
    #   To avoid escaping quotes, you can use single quotes to enclose the
    #   policy and double quotes to enclose the JSON names and values:
    #
    #   `'{"attribute": "value", "attribute": ["value"]}'`
    #
    # @return [Types::CreateEntityRecognizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEntityRecognizerResponse#entity_recognizer_arn #entity_recognizer_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_entity_recognizer({
    #     recognizer_name: "ComprehendArnName", # required
    #     version_name: "VersionName",
    #     data_access_role_arn: "IamRoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     input_data_config: { # required
    #       data_format: "COMPREHEND_CSV", # accepts COMPREHEND_CSV, AUGMENTED_MANIFEST
    #       entity_types: [ # required
    #         {
    #           type: "EntityTypeName", # required
    #         },
    #       ],
    #       documents: {
    #         s3_uri: "S3Uri", # required
    #         test_s3_uri: "S3Uri",
    #         input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       },
    #       annotations: {
    #         s3_uri: "S3Uri", # required
    #         test_s3_uri: "S3Uri",
    #       },
    #       entity_list: {
    #         s3_uri: "S3Uri", # required
    #       },
    #       augmented_manifests: [
    #         {
    #           s3_uri: "S3Uri", # required
    #           split: "TRAIN", # accepts TRAIN, TEST
    #           attribute_names: ["AttributeNamesListItem"], # required
    #           annotation_data_s3_uri: "S3Uri",
    #           source_documents_s3_uri: "S3Uri",
    #           document_type: "PLAIN_TEXT_DOCUMENT", # accepts PLAIN_TEXT_DOCUMENT, SEMI_STRUCTURED_DOCUMENT
    #         },
    #       ],
    #     },
    #     client_request_token: "ClientRequestTokenString",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     model_kms_key_id: "KmsKeyId",
    #     model_policy: "Policy",
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_recognizer_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateEntityRecognizer AWS API Documentation
    #
    # @overload create_entity_recognizer(params = {})
    # @param [Hash] params ({})
    def create_entity_recognizer(params = {}, options = {})
      req = build_request(:create_entity_recognizer, params)
      req.send_request(options)
    end

    # A flywheel is an Amazon Web Services resource that orchestrates the
    # ongoing training of a model for custom classification or custom entity
    # recognition. You can create a flywheel to start with an existing
    # trained model, or Comprehend can create and train a new model.
    #
    # When you create the flywheel, Comprehend creates a data lake in your
    # account. The data lake holds the training data and test data for all
    # versions of the model.
    #
    # To use a flywheel with an existing trained model, you specify the
    # active model version. Comprehend copies the model's training data and
    # test data into the flywheel's data lake.
    #
    # To use the flywheel with a new model, you need to provide a dataset
    # for training data (and optional test data) when you create the
    # flywheel.
    #
    # For more information about flywheels, see [ Flywheel overview][1] in
    # the *Amazon Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html
    #
    # @option params [required, String] :flywheel_name
    #   Name for the flywheel.
    #
    # @option params [String] :active_model_arn
    #   To associate an existing model with the flywheel, specify the Amazon
    #   Resource Number (ARN) of the model version. Do not set `TaskConfig` or
    #   `ModelType` if you specify an `ActiveModelArn`.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend the permissions required to access the flywheel data in the
    #   data lake.
    #
    # @option params [Types::TaskConfig] :task_config
    #   Configuration about the model associated with the flywheel. You need
    #   to set `TaskConfig` if you are creating a flywheel for a new model.
    #
    # @option params [String] :model_type
    #   The model type. You need to set `ModelType` if you are creating a
    #   flywheel for a new model.
    #
    # @option params [required, String] :data_lake_s3_uri
    #   Enter the S3 location for the data lake. You can specify a new S3
    #   bucket or a new folder of an existing S3 bucket. The flywheel creates
    #   the data lake at this location.
    #
    # @option params [Types::DataSecurityConfig] :data_security_config
    #   Data security configurations.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to associate with this flywheel.
    #
    # @return [Types::CreateFlywheelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFlywheelResponse#flywheel_arn #flywheel_arn} => String
    #   * {Types::CreateFlywheelResponse#active_model_arn #active_model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_flywheel({
    #     flywheel_name: "ComprehendArnName", # required
    #     active_model_arn: "ComprehendModelArn",
    #     data_access_role_arn: "IamRoleArn", # required
    #     task_config: {
    #       language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #       document_classification_config: {
    #         mode: "MULTI_CLASS", # required, accepts MULTI_CLASS, MULTI_LABEL
    #         labels: ["LabelListItem"],
    #       },
    #       entity_recognition_config: {
    #         entity_types: [ # required
    #           {
    #             type: "EntityTypeName", # required
    #           },
    #         ],
    #       },
    #     },
    #     model_type: "DOCUMENT_CLASSIFIER", # accepts DOCUMENT_CLASSIFIER, ENTITY_RECOGNIZER
    #     data_lake_s3_uri: "FlywheelS3Uri", # required
    #     data_security_config: {
    #       model_kms_key_id: "KmsKeyId",
    #       volume_kms_key_id: "KmsKeyId",
    #       data_lake_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       },
    #     },
    #     client_request_token: "ClientRequestTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.flywheel_arn #=> String
    #   resp.active_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateFlywheel AWS API Documentation
    #
    # @overload create_flywheel(params = {})
    # @param [Hash] params ({})
    def create_flywheel(params = {}, options = {})
      req = build_request(:create_flywheel, params)
      req.send_request(options)
    end

    # Deletes a previously created document classifier
    #
    # Only those classifiers that are in terminated states (IN\_ERROR,
    # TRAINED) will be deleted. If an active inference job is using the
    # model, a `ResourceInUseException` will be returned.
    #
    # This is an asynchronous action that puts the classifier into a
    # DELETING state, and it is then removed by a background job. Once
    # removed, the classifier disappears from your account and is no longer
    # available for use.
    #
    # @option params [required, String] :document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_document_classifier({
    #     document_classifier_arn: "DocumentClassifierArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteDocumentClassifier AWS API Documentation
    #
    # @overload delete_document_classifier(params = {})
    # @param [Hash] params ({})
    def delete_document_classifier(params = {}, options = {})
      req = build_request(:delete_document_classifier, params)
      req.send_request(options)
    end

    # Deletes a model-specific endpoint for a previously-trained custom
    # model. All endpoints must be deleted in order for the model to be
    # deleted. For information about endpoints, see [Managing endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint({
    #     endpoint_arn: "ComprehendEndpointArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteEndpoint AWS API Documentation
    #
    # @overload delete_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_endpoint(params = {}, options = {})
      req = build_request(:delete_endpoint, params)
      req.send_request(options)
    end

    # Deletes an entity recognizer.
    #
    # Only those recognizers that are in terminated states (IN\_ERROR,
    # TRAINED) will be deleted. If an active inference job is using the
    # model, a `ResourceInUseException` will be returned.
    #
    # This is an asynchronous action that puts the recognizer into a
    # DELETING state, and it is then removed by a background job. Once
    # removed, the recognizer disappears from your account and is no longer
    # available for use.
    #
    # @option params [required, String] :entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity recognizer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_entity_recognizer({
    #     entity_recognizer_arn: "EntityRecognizerArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteEntityRecognizer AWS API Documentation
    #
    # @overload delete_entity_recognizer(params = {})
    # @param [Hash] params ({})
    def delete_entity_recognizer(params = {}, options = {})
      req = build_request(:delete_entity_recognizer, params)
      req.send_request(options)
    end

    # Deletes a flywheel. When you delete the flywheel, Amazon Comprehend
    # does not delete the data lake or the model associated with the
    # flywheel.
    #
    # For more information about flywheels, see [ Flywheel overview][1] in
    # the *Amazon Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html
    #
    # @option params [required, String] :flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_flywheel({
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteFlywheel AWS API Documentation
    #
    # @overload delete_flywheel(params = {})
    # @param [Hash] params ({})
    def delete_flywheel(params = {}, options = {})
      req = build_request(:delete_flywheel, params)
      req.send_request(options)
    end

    # Deletes a resource-based policy that is attached to a custom model.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the custom model version that has
    #   the policy to delete.
    #
    # @option params [String] :policy_revision_id
    #   The revision ID of the policy to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "ComprehendModelArn", # required
    #     policy_revision_id: "PolicyRevisionId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Returns information about the dataset that you specify. For more
    # information about datasets, see [ Flywheel overview][1] in the *Amazon
    # Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html
    #
    # @option params [required, String] :dataset_arn
    #   The ARN of the dataset.
    #
    # @return [Types::DescribeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetResponse#dataset_properties #dataset_properties} => Types::DatasetProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset({
    #     dataset_arn: "ComprehendDatasetArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_properties.dataset_arn #=> String
    #   resp.dataset_properties.dataset_name #=> String
    #   resp.dataset_properties.dataset_type #=> String, one of "TRAIN", "TEST"
    #   resp.dataset_properties.dataset_s3_uri #=> String
    #   resp.dataset_properties.description #=> String
    #   resp.dataset_properties.status #=> String, one of "CREATING", "COMPLETED", "FAILED"
    #   resp.dataset_properties.message #=> String
    #   resp.dataset_properties.number_of_documents #=> Integer
    #   resp.dataset_properties.creation_time #=> Time
    #   resp.dataset_properties.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDataset AWS API Documentation
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # Gets the properties associated with a document classification job. Use
    # this operation to get the status of a classification job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   `StartDocumentClassificationJob` operation returns this identifier in
    #   its response.
    #
    # @return [Types::DescribeDocumentClassificationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDocumentClassificationJobResponse#document_classification_job_properties #document_classification_job_properties} => Types::DocumentClassificationJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_classification_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classification_job_properties.job_id #=> String
    #   resp.document_classification_job_properties.job_arn #=> String
    #   resp.document_classification_job_properties.job_name #=> String
    #   resp.document_classification_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.document_classification_job_properties.message #=> String
    #   resp.document_classification_job_properties.submit_time #=> Time
    #   resp.document_classification_job_properties.end_time #=> Time
    #   resp.document_classification_job_properties.document_classifier_arn #=> String
    #   resp.document_classification_job_properties.input_data_config.s3_uri #=> String
    #   resp.document_classification_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.document_classification_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.document_classification_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.document_classification_job_properties.input_data_config.document_reader_config.feature_types #=> Array
    #   resp.document_classification_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.document_classification_job_properties.output_data_config.s3_uri #=> String
    #   resp.document_classification_job_properties.output_data_config.kms_key_id #=> String
    #   resp.document_classification_job_properties.data_access_role_arn #=> String
    #   resp.document_classification_job_properties.volume_kms_key_id #=> String
    #   resp.document_classification_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.document_classification_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.document_classification_job_properties.vpc_config.subnets #=> Array
    #   resp.document_classification_job_properties.vpc_config.subnets[0] #=> String
    #   resp.document_classification_job_properties.flywheel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDocumentClassificationJob AWS API Documentation
    #
    # @overload describe_document_classification_job(params = {})
    # @param [Hash] params ({})
    def describe_document_classification_job(params = {}, options = {})
      req = build_request(:describe_document_classification_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with a document classifier.
    #
    # @option params [required, String] :document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier. The `CreateDocumentClassifier` operation returns this
    #   identifier in its response.
    #
    # @return [Types::DescribeDocumentClassifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDocumentClassifierResponse#document_classifier_properties #document_classifier_properties} => Types::DocumentClassifierProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_classifier({
    #     document_classifier_arn: "DocumentClassifierArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classifier_properties.document_classifier_arn #=> String
    #   resp.document_classifier_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.document_classifier_properties.status #=> String, one of "SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"
    #   resp.document_classifier_properties.message #=> String
    #   resp.document_classifier_properties.submit_time #=> Time
    #   resp.document_classifier_properties.end_time #=> Time
    #   resp.document_classifier_properties.training_start_time #=> Time
    #   resp.document_classifier_properties.training_end_time #=> Time
    #   resp.document_classifier_properties.input_data_config.data_format #=> String, one of "COMPREHEND_CSV", "AUGMENTED_MANIFEST"
    #   resp.document_classifier_properties.input_data_config.s3_uri #=> String
    #   resp.document_classifier_properties.input_data_config.test_s3_uri #=> String
    #   resp.document_classifier_properties.input_data_config.label_delimiter #=> String
    #   resp.document_classifier_properties.input_data_config.augmented_manifests #=> Array
    #   resp.document_classifier_properties.input_data_config.augmented_manifests[0].s3_uri #=> String
    #   resp.document_classifier_properties.input_data_config.augmented_manifests[0].split #=> String, one of "TRAIN", "TEST"
    #   resp.document_classifier_properties.input_data_config.augmented_manifests[0].attribute_names #=> Array
    #   resp.document_classifier_properties.input_data_config.augmented_manifests[0].attribute_names[0] #=> String
    #   resp.document_classifier_properties.input_data_config.augmented_manifests[0].annotation_data_s3_uri #=> String
    #   resp.document_classifier_properties.input_data_config.augmented_manifests[0].source_documents_s3_uri #=> String
    #   resp.document_classifier_properties.input_data_config.augmented_manifests[0].document_type #=> String, one of "PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"
    #   resp.document_classifier_properties.input_data_config.document_type #=> String, one of "PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"
    #   resp.document_classifier_properties.input_data_config.documents.s3_uri #=> String
    #   resp.document_classifier_properties.input_data_config.documents.test_s3_uri #=> String
    #   resp.document_classifier_properties.input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.document_classifier_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.document_classifier_properties.input_data_config.document_reader_config.feature_types #=> Array
    #   resp.document_classifier_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.document_classifier_properties.output_data_config.s3_uri #=> String
    #   resp.document_classifier_properties.output_data_config.kms_key_id #=> String
    #   resp.document_classifier_properties.output_data_config.flywheel_stats_s3_prefix #=> String
    #   resp.document_classifier_properties.classifier_metadata.number_of_labels #=> Integer
    #   resp.document_classifier_properties.classifier_metadata.number_of_trained_documents #=> Integer
    #   resp.document_classifier_properties.classifier_metadata.number_of_test_documents #=> Integer
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.accuracy #=> Float
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.precision #=> Float
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.recall #=> Float
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.micro_precision #=> Float
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.micro_recall #=> Float
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.micro_f1_score #=> Float
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.hamming_loss #=> Float
    #   resp.document_classifier_properties.data_access_role_arn #=> String
    #   resp.document_classifier_properties.volume_kms_key_id #=> String
    #   resp.document_classifier_properties.vpc_config.security_group_ids #=> Array
    #   resp.document_classifier_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.document_classifier_properties.vpc_config.subnets #=> Array
    #   resp.document_classifier_properties.vpc_config.subnets[0] #=> String
    #   resp.document_classifier_properties.mode #=> String, one of "MULTI_CLASS", "MULTI_LABEL"
    #   resp.document_classifier_properties.model_kms_key_id #=> String
    #   resp.document_classifier_properties.version_name #=> String
    #   resp.document_classifier_properties.source_model_arn #=> String
    #   resp.document_classifier_properties.flywheel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDocumentClassifier AWS API Documentation
    #
    # @overload describe_document_classifier(params = {})
    # @param [Hash] params ({})
    def describe_document_classifier(params = {}, options = {})
      req = build_request(:describe_document_classifier, params)
      req.send_request(options)
    end

    # Gets the properties associated with a dominant language detection job.
    # Use this operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   `StartDominantLanguageDetectionJob` operation returns this identifier
    #   in its response.
    #
    # @return [Types::DescribeDominantLanguageDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDominantLanguageDetectionJobResponse#dominant_language_detection_job_properties #dominant_language_detection_job_properties} => Types::DominantLanguageDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dominant_language_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dominant_language_detection_job_properties.job_id #=> String
    #   resp.dominant_language_detection_job_properties.job_arn #=> String
    #   resp.dominant_language_detection_job_properties.job_name #=> String
    #   resp.dominant_language_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.dominant_language_detection_job_properties.message #=> String
    #   resp.dominant_language_detection_job_properties.submit_time #=> Time
    #   resp.dominant_language_detection_job_properties.end_time #=> Time
    #   resp.dominant_language_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.dominant_language_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.dominant_language_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.dominant_language_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.dominant_language_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array
    #   resp.dominant_language_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.dominant_language_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.dominant_language_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.dominant_language_detection_job_properties.data_access_role_arn #=> String
    #   resp.dominant_language_detection_job_properties.volume_kms_key_id #=> String
    #   resp.dominant_language_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.dominant_language_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.dominant_language_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.dominant_language_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDominantLanguageDetectionJob AWS API Documentation
    #
    # @overload describe_dominant_language_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_dominant_language_detection_job(params = {}, options = {})
      req = build_request(:describe_dominant_language_detection_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with a specific endpoint. Use this
    # operation to get the status of an endpoint. For information about
    # endpoints, see [Managing endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint being described.
    #
    # @return [Types::DescribeEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointResponse#endpoint_properties #endpoint_properties} => Types::EndpointProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint({
    #     endpoint_arn: "ComprehendEndpointArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_properties.endpoint_arn #=> String
    #   resp.endpoint_properties.status #=> String, one of "CREATING", "DELETING", "FAILED", "IN_SERVICE", "UPDATING"
    #   resp.endpoint_properties.message #=> String
    #   resp.endpoint_properties.model_arn #=> String
    #   resp.endpoint_properties.desired_model_arn #=> String
    #   resp.endpoint_properties.desired_inference_units #=> Integer
    #   resp.endpoint_properties.current_inference_units #=> Integer
    #   resp.endpoint_properties.creation_time #=> Time
    #   resp.endpoint_properties.last_modified_time #=> Time
    #   resp.endpoint_properties.data_access_role_arn #=> String
    #   resp.endpoint_properties.desired_data_access_role_arn #=> String
    #   resp.endpoint_properties.flywheel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEndpoint AWS API Documentation
    #
    # @overload describe_endpoint(params = {})
    # @param [Hash] params ({})
    def describe_endpoint(params = {}, options = {})
      req = build_request(:describe_endpoint, params)
      req.send_request(options)
    end

    # Gets the properties associated with an entities detection job. Use
    # this operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   `StartEntitiesDetectionJob` operation returns this identifier in its
    #   response.
    #
    # @return [Types::DescribeEntitiesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntitiesDetectionJobResponse#entities_detection_job_properties #entities_detection_job_properties} => Types::EntitiesDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entities_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entities_detection_job_properties.job_id #=> String
    #   resp.entities_detection_job_properties.job_arn #=> String
    #   resp.entities_detection_job_properties.job_name #=> String
    #   resp.entities_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.entities_detection_job_properties.message #=> String
    #   resp.entities_detection_job_properties.submit_time #=> Time
    #   resp.entities_detection_job_properties.end_time #=> Time
    #   resp.entities_detection_job_properties.entity_recognizer_arn #=> String
    #   resp.entities_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.entities_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.entities_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.entities_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.entities_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array
    #   resp.entities_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.entities_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.entities_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.entities_detection_job_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.entities_detection_job_properties.data_access_role_arn #=> String
    #   resp.entities_detection_job_properties.volume_kms_key_id #=> String
    #   resp.entities_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.entities_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.entities_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.entities_detection_job_properties.vpc_config.subnets[0] #=> String
    #   resp.entities_detection_job_properties.flywheel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEntitiesDetectionJob AWS API Documentation
    #
    # @overload describe_entities_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_entities_detection_job(params = {}, options = {})
      req = build_request(:describe_entities_detection_job, params)
      req.send_request(options)
    end

    # Provides details about an entity recognizer including status, S3
    # buckets containing training data, recognizer metadata, metrics, and so
    # on.
    #
    # @option params [required, String] :entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity recognizer.
    #
    # @return [Types::DescribeEntityRecognizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntityRecognizerResponse#entity_recognizer_properties #entity_recognizer_properties} => Types::EntityRecognizerProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entity_recognizer({
    #     entity_recognizer_arn: "EntityRecognizerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_recognizer_properties.entity_recognizer_arn #=> String
    #   resp.entity_recognizer_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.entity_recognizer_properties.status #=> String, one of "SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"
    #   resp.entity_recognizer_properties.message #=> String
    #   resp.entity_recognizer_properties.submit_time #=> Time
    #   resp.entity_recognizer_properties.end_time #=> Time
    #   resp.entity_recognizer_properties.training_start_time #=> Time
    #   resp.entity_recognizer_properties.training_end_time #=> Time
    #   resp.entity_recognizer_properties.input_data_config.data_format #=> String, one of "COMPREHEND_CSV", "AUGMENTED_MANIFEST"
    #   resp.entity_recognizer_properties.input_data_config.entity_types #=> Array
    #   resp.entity_recognizer_properties.input_data_config.entity_types[0].type #=> String
    #   resp.entity_recognizer_properties.input_data_config.documents.s3_uri #=> String
    #   resp.entity_recognizer_properties.input_data_config.documents.test_s3_uri #=> String
    #   resp.entity_recognizer_properties.input_data_config.documents.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.entity_recognizer_properties.input_data_config.annotations.s3_uri #=> String
    #   resp.entity_recognizer_properties.input_data_config.annotations.test_s3_uri #=> String
    #   resp.entity_recognizer_properties.input_data_config.entity_list.s3_uri #=> String
    #   resp.entity_recognizer_properties.input_data_config.augmented_manifests #=> Array
    #   resp.entity_recognizer_properties.input_data_config.augmented_manifests[0].s3_uri #=> String
    #   resp.entity_recognizer_properties.input_data_config.augmented_manifests[0].split #=> String, one of "TRAIN", "TEST"
    #   resp.entity_recognizer_properties.input_data_config.augmented_manifests[0].attribute_names #=> Array
    #   resp.entity_recognizer_properties.input_data_config.augmented_manifests[0].attribute_names[0] #=> String
    #   resp.entity_recognizer_properties.input_data_config.augmented_manifests[0].annotation_data_s3_uri #=> String
    #   resp.entity_recognizer_properties.input_data_config.augmented_manifests[0].source_documents_s3_uri #=> String
    #   resp.entity_recognizer_properties.input_data_config.augmented_manifests[0].document_type #=> String, one of "PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"
    #   resp.entity_recognizer_properties.recognizer_metadata.number_of_trained_documents #=> Integer
    #   resp.entity_recognizer_properties.recognizer_metadata.number_of_test_documents #=> Integer
    #   resp.entity_recognizer_properties.recognizer_metadata.evaluation_metrics.precision #=> Float
    #   resp.entity_recognizer_properties.recognizer_metadata.evaluation_metrics.recall #=> Float
    #   resp.entity_recognizer_properties.recognizer_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.entity_recognizer_properties.recognizer_metadata.entity_types #=> Array
    #   resp.entity_recognizer_properties.recognizer_metadata.entity_types[0].type #=> String
    #   resp.entity_recognizer_properties.recognizer_metadata.entity_types[0].evaluation_metrics.precision #=> Float
    #   resp.entity_recognizer_properties.recognizer_metadata.entity_types[0].evaluation_metrics.recall #=> Float
    #   resp.entity_recognizer_properties.recognizer_metadata.entity_types[0].evaluation_metrics.f1_score #=> Float
    #   resp.entity_recognizer_properties.recognizer_metadata.entity_types[0].number_of_train_mentions #=> Integer
    #   resp.entity_recognizer_properties.data_access_role_arn #=> String
    #   resp.entity_recognizer_properties.volume_kms_key_id #=> String
    #   resp.entity_recognizer_properties.vpc_config.security_group_ids #=> Array
    #   resp.entity_recognizer_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.entity_recognizer_properties.vpc_config.subnets #=> Array
    #   resp.entity_recognizer_properties.vpc_config.subnets[0] #=> String
    #   resp.entity_recognizer_properties.model_kms_key_id #=> String
    #   resp.entity_recognizer_properties.version_name #=> String
    #   resp.entity_recognizer_properties.source_model_arn #=> String
    #   resp.entity_recognizer_properties.flywheel_arn #=> String
    #   resp.entity_recognizer_properties.output_data_config.flywheel_stats_s3_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEntityRecognizer AWS API Documentation
    #
    # @overload describe_entity_recognizer(params = {})
    # @param [Hash] params ({})
    def describe_entity_recognizer(params = {}, options = {})
      req = build_request(:describe_entity_recognizer, params)
      req.send_request(options)
    end

    # Gets the status and details of an events detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier of the events detection job.
    #
    # @return [Types::DescribeEventsDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventsDetectionJobResponse#events_detection_job_properties #events_detection_job_properties} => Types::EventsDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.events_detection_job_properties.job_id #=> String
    #   resp.events_detection_job_properties.job_arn #=> String
    #   resp.events_detection_job_properties.job_name #=> String
    #   resp.events_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.events_detection_job_properties.message #=> String
    #   resp.events_detection_job_properties.submit_time #=> Time
    #   resp.events_detection_job_properties.end_time #=> Time
    #   resp.events_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.events_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.events_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.events_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.events_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array
    #   resp.events_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.events_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.events_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.events_detection_job_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.events_detection_job_properties.data_access_role_arn #=> String
    #   resp.events_detection_job_properties.target_event_types #=> Array
    #   resp.events_detection_job_properties.target_event_types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEventsDetectionJob AWS API Documentation
    #
    # @overload describe_events_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_events_detection_job(params = {}, options = {})
      req = build_request(:describe_events_detection_job, params)
      req.send_request(options)
    end

    # Provides configuration information about the flywheel. For more
    # information about flywheels, see [ Flywheel overview][1] in the
    # *Amazon Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html
    #
    # @option params [required, String] :flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel.
    #
    # @return [Types::DescribeFlywheelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFlywheelResponse#flywheel_properties #flywheel_properties} => Types::FlywheelProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flywheel({
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flywheel_properties.flywheel_arn #=> String
    #   resp.flywheel_properties.active_model_arn #=> String
    #   resp.flywheel_properties.data_access_role_arn #=> String
    #   resp.flywheel_properties.task_config.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.flywheel_properties.task_config.document_classification_config.mode #=> String, one of "MULTI_CLASS", "MULTI_LABEL"
    #   resp.flywheel_properties.task_config.document_classification_config.labels #=> Array
    #   resp.flywheel_properties.task_config.document_classification_config.labels[0] #=> String
    #   resp.flywheel_properties.task_config.entity_recognition_config.entity_types #=> Array
    #   resp.flywheel_properties.task_config.entity_recognition_config.entity_types[0].type #=> String
    #   resp.flywheel_properties.data_lake_s3_uri #=> String
    #   resp.flywheel_properties.data_security_config.model_kms_key_id #=> String
    #   resp.flywheel_properties.data_security_config.volume_kms_key_id #=> String
    #   resp.flywheel_properties.data_security_config.data_lake_kms_key_id #=> String
    #   resp.flywheel_properties.data_security_config.vpc_config.security_group_ids #=> Array
    #   resp.flywheel_properties.data_security_config.vpc_config.security_group_ids[0] #=> String
    #   resp.flywheel_properties.data_security_config.vpc_config.subnets #=> Array
    #   resp.flywheel_properties.data_security_config.vpc_config.subnets[0] #=> String
    #   resp.flywheel_properties.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.flywheel_properties.model_type #=> String, one of "DOCUMENT_CLASSIFIER", "ENTITY_RECOGNIZER"
    #   resp.flywheel_properties.message #=> String
    #   resp.flywheel_properties.creation_time #=> Time
    #   resp.flywheel_properties.last_modified_time #=> Time
    #   resp.flywheel_properties.latest_flywheel_iteration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeFlywheel AWS API Documentation
    #
    # @overload describe_flywheel(params = {})
    # @param [Hash] params ({})
    def describe_flywheel(params = {}, options = {})
      req = build_request(:describe_flywheel, params)
      req.send_request(options)
    end

    # Retrieve the configuration properties of a flywheel iteration. For
    # more information about flywheels, see [ Flywheel overview][1] in the
    # *Amazon Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html
    #
    # @option params [required, String] :flywheel_arn
    #
    # @option params [required, String] :flywheel_iteration_id
    #
    # @return [Types::DescribeFlywheelIterationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFlywheelIterationResponse#flywheel_iteration_properties #flywheel_iteration_properties} => Types::FlywheelIterationProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_flywheel_iteration({
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #     flywheel_iteration_id: "FlywheelIterationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.flywheel_iteration_properties.flywheel_arn #=> String
    #   resp.flywheel_iteration_properties.flywheel_iteration_id #=> String
    #   resp.flywheel_iteration_properties.creation_time #=> Time
    #   resp.flywheel_iteration_properties.end_time #=> Time
    #   resp.flywheel_iteration_properties.status #=> String, one of "TRAINING", "EVALUATING", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.flywheel_iteration_properties.message #=> String
    #   resp.flywheel_iteration_properties.evaluated_model_arn #=> String
    #   resp.flywheel_iteration_properties.evaluated_model_metrics.average_f1_score #=> Float
    #   resp.flywheel_iteration_properties.evaluated_model_metrics.average_precision #=> Float
    #   resp.flywheel_iteration_properties.evaluated_model_metrics.average_recall #=> Float
    #   resp.flywheel_iteration_properties.evaluated_model_metrics.average_accuracy #=> Float
    #   resp.flywheel_iteration_properties.trained_model_arn #=> String
    #   resp.flywheel_iteration_properties.trained_model_metrics.average_f1_score #=> Float
    #   resp.flywheel_iteration_properties.trained_model_metrics.average_precision #=> Float
    #   resp.flywheel_iteration_properties.trained_model_metrics.average_recall #=> Float
    #   resp.flywheel_iteration_properties.trained_model_metrics.average_accuracy #=> Float
    #   resp.flywheel_iteration_properties.evaluation_manifest_s3_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeFlywheelIteration AWS API Documentation
    #
    # @overload describe_flywheel_iteration(params = {})
    # @param [Hash] params ({})
    def describe_flywheel_iteration(params = {}, options = {})
      req = build_request(:describe_flywheel_iteration, params)
      req.send_request(options)
    end

    # Gets the properties associated with a key phrases detection job. Use
    # this operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   `StartKeyPhrasesDetectionJob` operation returns this identifier in its
    #   response.
    #
    # @return [Types::DescribeKeyPhrasesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKeyPhrasesDetectionJobResponse#key_phrases_detection_job_properties #key_phrases_detection_job_properties} => Types::KeyPhrasesDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_key_phrases_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_phrases_detection_job_properties.job_id #=> String
    #   resp.key_phrases_detection_job_properties.job_arn #=> String
    #   resp.key_phrases_detection_job_properties.job_name #=> String
    #   resp.key_phrases_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.key_phrases_detection_job_properties.message #=> String
    #   resp.key_phrases_detection_job_properties.submit_time #=> Time
    #   resp.key_phrases_detection_job_properties.end_time #=> Time
    #   resp.key_phrases_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.key_phrases_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.key_phrases_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.key_phrases_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.key_phrases_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array
    #   resp.key_phrases_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.key_phrases_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.key_phrases_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.key_phrases_detection_job_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.key_phrases_detection_job_properties.data_access_role_arn #=> String
    #   resp.key_phrases_detection_job_properties.volume_kms_key_id #=> String
    #   resp.key_phrases_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.key_phrases_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.key_phrases_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.key_phrases_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeKeyPhrasesDetectionJob AWS API Documentation
    #
    # @overload describe_key_phrases_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_key_phrases_detection_job(params = {}, options = {})
      req = build_request(:describe_key_phrases_detection_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with a PII entities detection job. For
    # example, you can use this operation to get the job status.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #
    # @return [Types::DescribePiiEntitiesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePiiEntitiesDetectionJobResponse#pii_entities_detection_job_properties #pii_entities_detection_job_properties} => Types::PiiEntitiesDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pii_entities_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pii_entities_detection_job_properties.job_id #=> String
    #   resp.pii_entities_detection_job_properties.job_arn #=> String
    #   resp.pii_entities_detection_job_properties.job_name #=> String
    #   resp.pii_entities_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.pii_entities_detection_job_properties.message #=> String
    #   resp.pii_entities_detection_job_properties.submit_time #=> Time
    #   resp.pii_entities_detection_job_properties.end_time #=> Time
    #   resp.pii_entities_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.pii_entities_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.pii_entities_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.pii_entities_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.pii_entities_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array
    #   resp.pii_entities_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.pii_entities_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.pii_entities_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.pii_entities_detection_job_properties.redaction_config.pii_entity_types #=> Array
    #   resp.pii_entities_detection_job_properties.redaction_config.pii_entity_types[0] #=> String, one of "BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"
    #   resp.pii_entities_detection_job_properties.redaction_config.mask_mode #=> String, one of "MASK", "REPLACE_WITH_PII_ENTITY_TYPE"
    #   resp.pii_entities_detection_job_properties.redaction_config.mask_character #=> String
    #   resp.pii_entities_detection_job_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.pii_entities_detection_job_properties.data_access_role_arn #=> String
    #   resp.pii_entities_detection_job_properties.mode #=> String, one of "ONLY_REDACTION", "ONLY_OFFSETS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribePiiEntitiesDetectionJob AWS API Documentation
    #
    # @overload describe_pii_entities_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_pii_entities_detection_job(params = {}, options = {})
      req = build_request(:describe_pii_entities_detection_job, params)
      req.send_request(options)
    end

    # Gets the details of a resource-based policy that is attached to a
    # custom model, including the JSON body of the policy.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the custom model version that has
    #   the resource policy.
    #
    # @return [Types::DescribeResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourcePolicyResponse#resource_policy #resource_policy} => String
    #   * {Types::DescribeResourcePolicyResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeResourcePolicyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeResourcePolicyResponse#policy_revision_id #policy_revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_policy({
    #     resource_arn: "ComprehendModelArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_policy #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.policy_revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeResourcePolicy AWS API Documentation
    #
    # @overload describe_resource_policy(params = {})
    # @param [Hash] params ({})
    def describe_resource_policy(params = {}, options = {})
      req = build_request(:describe_resource_policy, params)
      req.send_request(options)
    end

    # Gets the properties associated with a sentiment detection job. Use
    # this operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #
    # @return [Types::DescribeSentimentDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSentimentDetectionJobResponse#sentiment_detection_job_properties #sentiment_detection_job_properties} => Types::SentimentDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sentiment_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sentiment_detection_job_properties.job_id #=> String
    #   resp.sentiment_detection_job_properties.job_arn #=> String
    #   resp.sentiment_detection_job_properties.job_name #=> String
    #   resp.sentiment_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.sentiment_detection_job_properties.message #=> String
    #   resp.sentiment_detection_job_properties.submit_time #=> Time
    #   resp.sentiment_detection_job_properties.end_time #=> Time
    #   resp.sentiment_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.sentiment_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.sentiment_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.sentiment_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.sentiment_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array
    #   resp.sentiment_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.sentiment_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.sentiment_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.sentiment_detection_job_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.sentiment_detection_job_properties.data_access_role_arn #=> String
    #   resp.sentiment_detection_job_properties.volume_kms_key_id #=> String
    #   resp.sentiment_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.sentiment_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.sentiment_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.sentiment_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeSentimentDetectionJob AWS API Documentation
    #
    # @overload describe_sentiment_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_sentiment_detection_job(params = {}, options = {})
      req = build_request(:describe_sentiment_detection_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with a targeted sentiment detection
    # job. Use this operation to get the status of the job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   `StartTargetedSentimentDetectionJob` operation returns this identifier
    #   in its response.
    #
    # @return [Types::DescribeTargetedSentimentDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTargetedSentimentDetectionJobResponse#targeted_sentiment_detection_job_properties #targeted_sentiment_detection_job_properties} => Types::TargetedSentimentDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_targeted_sentiment_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.targeted_sentiment_detection_job_properties.job_id #=> String
    #   resp.targeted_sentiment_detection_job_properties.job_arn #=> String
    #   resp.targeted_sentiment_detection_job_properties.job_name #=> String
    #   resp.targeted_sentiment_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.targeted_sentiment_detection_job_properties.message #=> String
    #   resp.targeted_sentiment_detection_job_properties.submit_time #=> Time
    #   resp.targeted_sentiment_detection_job_properties.end_time #=> Time
    #   resp.targeted_sentiment_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.targeted_sentiment_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.targeted_sentiment_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.targeted_sentiment_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.targeted_sentiment_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array
    #   resp.targeted_sentiment_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.targeted_sentiment_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.targeted_sentiment_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.targeted_sentiment_detection_job_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.targeted_sentiment_detection_job_properties.data_access_role_arn #=> String
    #   resp.targeted_sentiment_detection_job_properties.volume_kms_key_id #=> String
    #   resp.targeted_sentiment_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.targeted_sentiment_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.targeted_sentiment_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.targeted_sentiment_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeTargetedSentimentDetectionJob AWS API Documentation
    #
    # @overload describe_targeted_sentiment_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_targeted_sentiment_detection_job(params = {}, options = {})
      req = build_request(:describe_targeted_sentiment_detection_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with a topic detection job. Use this
    # operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier assigned by the user to the detection job.
    #
    # @return [Types::DescribeTopicsDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTopicsDetectionJobResponse#topics_detection_job_properties #topics_detection_job_properties} => Types::TopicsDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topics_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topics_detection_job_properties.job_id #=> String
    #   resp.topics_detection_job_properties.job_arn #=> String
    #   resp.topics_detection_job_properties.job_name #=> String
    #   resp.topics_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.topics_detection_job_properties.message #=> String
    #   resp.topics_detection_job_properties.submit_time #=> Time
    #   resp.topics_detection_job_properties.end_time #=> Time
    #   resp.topics_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.topics_detection_job_properties.input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.topics_detection_job_properties.input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.topics_detection_job_properties.input_data_config.document_reader_config.feature_types #=> Array
    #   resp.topics_detection_job_properties.input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.topics_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.topics_detection_job_properties.number_of_topics #=> Integer
    #   resp.topics_detection_job_properties.data_access_role_arn #=> String
    #   resp.topics_detection_job_properties.volume_kms_key_id #=> String
    #   resp.topics_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.topics_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.topics_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.topics_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeTopicsDetectionJob AWS API Documentation
    #
    # @overload describe_topics_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_topics_detection_job(params = {}, options = {})
      req = build_request(:describe_topics_detection_job, params)
      req.send_request(options)
    end

    # Determines the dominant language of the input text. For a list of
    # languages that Amazon Comprehend can detect, see [Amazon Comprehend
    # Supported Languages][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. The string must contain at least 20 characters.
    #   The maximum string size is 100 KB.
    #
    # @return [Types::DetectDominantLanguageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectDominantLanguageResponse#languages #languages} => Array&lt;Types::DominantLanguage&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_dominant_language({
    #     text: "CustomerInputString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.languages #=> Array
    #   resp.languages[0].language_code #=> String
    #   resp.languages[0].score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectDominantLanguage AWS API Documentation
    #
    # @overload detect_dominant_language(params = {})
    # @param [Hash] params ({})
    def detect_dominant_language(params = {}, options = {})
      req = build_request(:detect_dominant_language, params)
      req.send_request(options)
    end

    # Detects named entities in input text when you use the pre-trained
    # model. Detects custom entities if you have a custom entity recognition
    # model.
    #
    # When detecting named entities using the pre-trained model, use plain
    # text as the input. For more information about named entities, see
    # [Entities][1] in the Comprehend Developer Guide.
    #
    # When you use a custom entity recognition model, you can input plain
    # text or you can upload a single-page input document (text, PDF, Word,
    # or image).
    #
    # If the system detects errors while processing a page in the input
    # document, the API response includes an entry in `Errors` for each
    # error.
    #
    # If the system detects a document-level error in your input document,
    # the API returns an `InvalidRequestException` error response. For
    # details about this exception, see [ Errors in semi-structured
    # documents][2] in the Comprehend Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html
    # [2]: https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html
    #
    # @option params [String] :text
    #   A UTF-8 text string. The maximum string size is 100 KB. If you enter
    #   text using this parameter, do not use the `Bytes` parameter.
    #
    # @option params [String] :language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. If your request
    #   includes the endpoint for a custom entity recognition model, Amazon
    #   Comprehend uses the language of your custom model, and it ignores any
    #   language code that you specify here.
    #
    #   All input documents must be in the same language.
    #
    # @option params [String] :endpoint_arn
    #   The Amazon Resource Name of an endpoint that is associated with a
    #   custom entity recognition model. Provide an endpoint if you want to
    #   detect entities by using your own custom model instead of the default
    #   model that is used by Amazon Comprehend.
    #
    #   If you specify an endpoint, Amazon Comprehend uses the language of
    #   your custom model, and it ignores any language code that you provide
    #   in your request.
    #
    #   For information about endpoints, see [Managing endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html
    #
    # @option params [String, StringIO, File] :bytes
    #   This field applies only when you use a custom entity recognition model
    #   that was trained with PDF annotations. For other cases, enter your
    #   text input in the `Text` field.
    #
    #   Use the `Bytes` parameter to input a text, PDF, Word or image file.
    #   Using a plain-text file in the `Bytes` parameter is equivelent to
    #   using the `Text` parameter (the `Entities` field in the response is
    #   identical).
    #
    #   You can also use the `Bytes` parameter to input an Amazon Textract
    #   `DetectDocumentText` or `AnalyzeDocument` output file.
    #
    #   Provide the input document as a sequence of base64-encoded bytes. If
    #   your code uses an Amazon Web Services SDK to detect entities, the SDK
    #   may encode the document file bytes for you.
    #
    #   The maximum length of this field depends on the input document type.
    #   For details, see [ Inputs for real-time custom analysis][1] in the
    #   Comprehend Developer Guide.
    #
    #   If you use the `Bytes` parameter, do not use the `Text` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html
    #
    # @option params [Types::DocumentReaderConfig] :document_reader_config
    #   Provides configuration parameters to override the default actions for
    #   extracting text from PDF documents and image files.
    #
    # @return [Types::DetectEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectEntitiesResponse#entities #entities} => Array&lt;Types::Entity&gt;
    #   * {Types::DetectEntitiesResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::DetectEntitiesResponse#document_type #document_type} => Array&lt;Types::DocumentTypeListItem&gt;
    #   * {Types::DetectEntitiesResponse#blocks #blocks} => Array&lt;Types::Block&gt;
    #   * {Types::DetectEntitiesResponse#errors #errors} => Array&lt;Types::ErrorsListItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_entities({
    #     text: "CustomerInputString",
    #     language_code: "en", # accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #     endpoint_arn: "EntityRecognizerEndpointArn",
    #     bytes: "data",
    #     document_reader_config: {
    #       document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #       document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #       feature_types: ["TABLES"], # accepts TABLES, FORMS
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].score #=> Float
    #   resp.entities[0].type #=> String, one of "PERSON", "LOCATION", "ORGANIZATION", "COMMERCIAL_ITEM", "EVENT", "DATE", "QUANTITY", "TITLE", "OTHER"
    #   resp.entities[0].text #=> String
    #   resp.entities[0].begin_offset #=> Integer
    #   resp.entities[0].end_offset #=> Integer
    #   resp.entities[0].block_references #=> Array
    #   resp.entities[0].block_references[0].block_id #=> String
    #   resp.entities[0].block_references[0].begin_offset #=> Integer
    #   resp.entities[0].block_references[0].end_offset #=> Integer
    #   resp.entities[0].block_references[0].child_blocks #=> Array
    #   resp.entities[0].block_references[0].child_blocks[0].child_block_id #=> String
    #   resp.entities[0].block_references[0].child_blocks[0].begin_offset #=> Integer
    #   resp.entities[0].block_references[0].child_blocks[0].end_offset #=> Integer
    #   resp.document_metadata.pages #=> Integer
    #   resp.document_metadata.extracted_characters #=> Array
    #   resp.document_metadata.extracted_characters[0].page #=> Integer
    #   resp.document_metadata.extracted_characters[0].count #=> Integer
    #   resp.document_type #=> Array
    #   resp.document_type[0].page #=> Integer
    #   resp.document_type[0].type #=> String, one of "NATIVE_PDF", "SCANNED_PDF", "MS_WORD", "IMAGE", "PLAIN_TEXT", "TEXTRACT_DETECT_DOCUMENT_TEXT_JSON", "TEXTRACT_ANALYZE_DOCUMENT_JSON"
    #   resp.blocks #=> Array
    #   resp.blocks[0].id #=> String
    #   resp.blocks[0].block_type #=> String, one of "LINE", "WORD"
    #   resp.blocks[0].text #=> String
    #   resp.blocks[0].page #=> Integer
    #   resp.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.blocks[0].geometry.polygon #=> Array
    #   resp.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.blocks[0].relationships #=> Array
    #   resp.blocks[0].relationships[0].ids #=> Array
    #   resp.blocks[0].relationships[0].ids[0] #=> String
    #   resp.blocks[0].relationships[0].type #=> String, one of "CHILD"
    #   resp.errors #=> Array
    #   resp.errors[0].page #=> Integer
    #   resp.errors[0].error_code #=> String, one of "TEXTRACT_BAD_PAGE", "TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED", "PAGE_CHARACTERS_EXCEEDED", "PAGE_SIZE_EXCEEDED", "INTERNAL_SERVER_ERROR"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectEntities AWS API Documentation
    #
    # @overload detect_entities(params = {})
    # @param [Hash] params ({})
    def detect_entities(params = {}, options = {})
      req = build_request(:detect_entities, params)
      req.send_request(options)
    end

    # Detects the key noun phrases found in the text.
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. The string must contain less than 100 KB of UTF-8
    #   encoded characters.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #
    # @return [Types::DetectKeyPhrasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectKeyPhrasesResponse#key_phrases #key_phrases} => Array&lt;Types::KeyPhrase&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_key_phrases({
    #     text: "CustomerInputString", # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #   })
    #
    # @example Response structure
    #
    #   resp.key_phrases #=> Array
    #   resp.key_phrases[0].score #=> Float
    #   resp.key_phrases[0].text #=> String
    #   resp.key_phrases[0].begin_offset #=> Integer
    #   resp.key_phrases[0].end_offset #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectKeyPhrases AWS API Documentation
    #
    # @overload detect_key_phrases(params = {})
    # @param [Hash] params ({})
    def detect_key_phrases(params = {}, options = {})
      req = build_request(:detect_key_phrases, params)
      req.send_request(options)
    end

    # Inspects the input text for entities that contain personally
    # identifiable information (PII) and returns information about them.
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. The maximum string size is 100 KB.
    #
    # @option params [required, String] :language_code
    #   The language of the input text. Enter the language code for English
    #   (en) or Spanish (es).
    #
    # @return [Types::DetectPiiEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectPiiEntitiesResponse#entities #entities} => Array&lt;Types::PiiEntity&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_pii_entities({
    #     text: "String", # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].score #=> Float
    #   resp.entities[0].type #=> String, one of "BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"
    #   resp.entities[0].begin_offset #=> Integer
    #   resp.entities[0].end_offset #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectPiiEntities AWS API Documentation
    #
    # @overload detect_pii_entities(params = {})
    # @param [Hash] params ({})
    def detect_pii_entities(params = {}, options = {})
      req = build_request(:detect_pii_entities, params)
      req.send_request(options)
    end

    # Inspects text and returns an inference of the prevailing sentiment
    # (`POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`).
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. The maximum string size is 5 KB.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #
    # @return [Types::DetectSentimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectSentimentResponse#sentiment #sentiment} => String
    #   * {Types::DetectSentimentResponse#sentiment_score #sentiment_score} => Types::SentimentScore
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_sentiment({
    #     text: "CustomerInputString", # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #   })
    #
    # @example Response structure
    #
    #   resp.sentiment #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"
    #   resp.sentiment_score.positive #=> Float
    #   resp.sentiment_score.negative #=> Float
    #   resp.sentiment_score.neutral #=> Float
    #   resp.sentiment_score.mixed #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSentiment AWS API Documentation
    #
    # @overload detect_sentiment(params = {})
    # @param [Hash] params ({})
    def detect_sentiment(params = {}, options = {})
      req = build_request(:detect_sentiment, params)
      req.send_request(options)
    end

    # Inspects text for syntax and the part of speech of words in the
    # document. For more information, see [Syntax][1] in the Comprehend
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html
    #
    # @option params [required, String] :text
    #   A UTF-8 string. The maximum string size is 5 KB.
    #
    # @option params [required, String] :language_code
    #   The language code of the input documents. You can specify any of the
    #   following languages supported by Amazon Comprehend: German ("de"),
    #   English ("en"), Spanish ("es"), French ("fr"), Italian ("it"),
    #   or Portuguese ("pt").
    #
    # @return [Types::DetectSyntaxResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectSyntaxResponse#syntax_tokens #syntax_tokens} => Array&lt;Types::SyntaxToken&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_syntax({
    #     text: "CustomerInputString", # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
    #   })
    #
    # @example Response structure
    #
    #   resp.syntax_tokens #=> Array
    #   resp.syntax_tokens[0].token_id #=> Integer
    #   resp.syntax_tokens[0].text #=> String
    #   resp.syntax_tokens[0].begin_offset #=> Integer
    #   resp.syntax_tokens[0].end_offset #=> Integer
    #   resp.syntax_tokens[0].part_of_speech.tag #=> String, one of "ADJ", "ADP", "ADV", "AUX", "CONJ", "CCONJ", "DET", "INTJ", "NOUN", "NUM", "O", "PART", "PRON", "PROPN", "PUNCT", "SCONJ", "SYM", "VERB"
    #   resp.syntax_tokens[0].part_of_speech.score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSyntax AWS API Documentation
    #
    # @overload detect_syntax(params = {})
    # @param [Hash] params ({})
    def detect_syntax(params = {}, options = {})
      req = build_request(:detect_syntax, params)
      req.send_request(options)
    end

    # Inspects the input text and returns a sentiment analysis for each
    # entity identified in the text.
    #
    # For more information about targeted sentiment, see [Targeted
    # sentiment][1] in the *Amazon Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. The maximum string length is 5 KB.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. Currently, English is the only
    #   supported language.
    #
    # @return [Types::DetectTargetedSentimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectTargetedSentimentResponse#entities #entities} => Array&lt;Types::TargetedSentimentEntity&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_targeted_sentiment({
    #     text: "CustomerInputString", # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].descriptive_mention_index #=> Array
    #   resp.entities[0].descriptive_mention_index[0] #=> Integer
    #   resp.entities[0].mentions #=> Array
    #   resp.entities[0].mentions[0].score #=> Float
    #   resp.entities[0].mentions[0].group_score #=> Float
    #   resp.entities[0].mentions[0].text #=> String
    #   resp.entities[0].mentions[0].type #=> String, one of "PERSON", "LOCATION", "ORGANIZATION", "FACILITY", "BRAND", "COMMERCIAL_ITEM", "MOVIE", "MUSIC", "BOOK", "SOFTWARE", "GAME", "PERSONAL_TITLE", "EVENT", "DATE", "QUANTITY", "ATTRIBUTE", "OTHER"
    #   resp.entities[0].mentions[0].mention_sentiment.sentiment #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"
    #   resp.entities[0].mentions[0].mention_sentiment.sentiment_score.positive #=> Float
    #   resp.entities[0].mentions[0].mention_sentiment.sentiment_score.negative #=> Float
    #   resp.entities[0].mentions[0].mention_sentiment.sentiment_score.neutral #=> Float
    #   resp.entities[0].mentions[0].mention_sentiment.sentiment_score.mixed #=> Float
    #   resp.entities[0].mentions[0].begin_offset #=> Integer
    #   resp.entities[0].mentions[0].end_offset #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectTargetedSentiment AWS API Documentation
    #
    # @overload detect_targeted_sentiment(params = {})
    # @param [Hash] params ({})
    def detect_targeted_sentiment(params = {}, options = {})
      req = build_request(:detect_targeted_sentiment, params)
      req.send_request(options)
    end

    # Performs toxicity analysis on the list of text strings that you
    # provide as input. The API response contains a results list that
    # matches the size of the input list. For more information about
    # toxicity detection, see [Toxicity detection][1] in the *Amazon
    # Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/toxicity-detection.html
    #
    # @option params [required, Array<Types::TextSegment>] :text_segments
    #   A list of up to 10 text strings. Each string has a maximum size of 1
    #   KB, and the maximum size of the list is 10 KB.
    #
    # @option params [required, String] :language_code
    #   The language of the input text. Currently, English is the only
    #   supported language.
    #
    # @return [Types::DetectToxicContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectToxicContentResponse#result_list #result_list} => Array&lt;Types::ToxicLabels&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_toxic_content({
    #     text_segments: [ # required
    #       {
    #         text: "CustomerInputString", # required
    #       },
    #     ],
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].labels #=> Array
    #   resp.result_list[0].labels[0].name #=> String, one of "GRAPHIC", "HARASSMENT_OR_ABUSE", "HATE_SPEECH", "INSULT", "PROFANITY", "SEXUAL", "VIOLENCE_OR_THREAT"
    #   resp.result_list[0].labels[0].score #=> Float
    #   resp.result_list[0].toxicity #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectToxicContent AWS API Documentation
    #
    # @overload detect_toxic_content(params = {})
    # @param [Hash] params ({})
    def detect_toxic_content(params = {}, options = {})
      req = build_request(:detect_toxic_content, params)
      req.send_request(options)
    end

    # Creates a new custom model that replicates a source custom model that
    # you import. The source model can be in your Amazon Web Services
    # account or another one.
    #
    # If the source model is in another Amazon Web Services account, then it
    # must have a resource-based policy that authorizes you to import it.
    #
    # The source model must be in the same Amazon Web Services Region that
    # you're using when you import. You can't import a model that's in a
    # different Region.
    #
    # @option params [required, String] :source_model_arn
    #   The Amazon Resource Name (ARN) of the custom model to import.
    #
    # @option params [String] :model_name
    #   The name to assign to the custom model that is created in Amazon
    #   Comprehend by this import.
    #
    # @option params [String] :version_name
    #   The version name given to the custom model that is created by this
    #   import. Version names can have a maximum of 256 characters.
    #   Alphanumeric characters, hyphens (-) and underscores (\_) are allowed.
    #   The version name must be unique among all models with the same
    #   classifier name in the account/Region.
    #
    # @option params [String] :model_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt trained
    #   custom models. The ModelKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend permission to use Amazon Key Management Service (KMS) to
    #   encrypt or decrypt the custom model.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the custom model that is created by this
    #   import. A tag is a key-value pair that adds as a metadata to a
    #   resource used by Amazon Comprehend. For example, a tag with "Sales"
    #   as the key might be added to a resource to indicate its use by the
    #   sales department.
    #
    # @return [Types::ImportModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportModelResponse#model_arn #model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_model({
    #     source_model_arn: "ComprehendModelArn", # required
    #     model_name: "ComprehendArnName",
    #     version_name: "VersionName",
    #     model_kms_key_id: "KmsKeyId",
    #     data_access_role_arn: "IamRoleArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ImportModel AWS API Documentation
    #
    # @overload import_model(params = {})
    # @param [Hash] params ({})
    def import_model(params = {}, options = {})
      req = build_request(:import_model, params)
      req.send_request(options)
    end

    # List the datasets that you have configured in this Region. For more
    # information about datasets, see [ Flywheel overview][1] in the *Amazon
    # Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html
    #
    # @option params [String] :flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel.
    #
    # @option params [Types::DatasetFilter] :filter
    #   Filters the datasets to be returned in the response.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a response. The default is 100.
    #
    # @return [Types::ListDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetsResponse#dataset_properties_list #dataset_properties_list} => Array&lt;Types::DatasetProperties&gt;
    #   * {Types::ListDatasetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets({
    #     flywheel_arn: "ComprehendFlywheelArn",
    #     filter: {
    #       status: "CREATING", # accepts CREATING, COMPLETED, FAILED
    #       dataset_type: "TRAIN", # accepts TRAIN, TEST
    #       creation_time_after: Time.now,
    #       creation_time_before: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_properties_list #=> Array
    #   resp.dataset_properties_list[0].dataset_arn #=> String
    #   resp.dataset_properties_list[0].dataset_name #=> String
    #   resp.dataset_properties_list[0].dataset_type #=> String, one of "TRAIN", "TEST"
    #   resp.dataset_properties_list[0].dataset_s3_uri #=> String
    #   resp.dataset_properties_list[0].description #=> String
    #   resp.dataset_properties_list[0].status #=> String, one of "CREATING", "COMPLETED", "FAILED"
    #   resp.dataset_properties_list[0].message #=> String
    #   resp.dataset_properties_list[0].number_of_documents #=> Integer
    #   resp.dataset_properties_list[0].creation_time #=> Time
    #   resp.dataset_properties_list[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDatasets AWS API Documentation
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # Gets a list of the documentation classification jobs that you have
    # submitted.
    #
    # @option params [Types::DocumentClassificationJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their
    #   names, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListDocumentClassificationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentClassificationJobsResponse#document_classification_job_properties_list #document_classification_job_properties_list} => Array&lt;Types::DocumentClassificationJobProperties&gt;
    #   * {Types::ListDocumentClassificationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_classification_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classification_job_properties_list #=> Array
    #   resp.document_classification_job_properties_list[0].job_id #=> String
    #   resp.document_classification_job_properties_list[0].job_arn #=> String
    #   resp.document_classification_job_properties_list[0].job_name #=> String
    #   resp.document_classification_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.document_classification_job_properties_list[0].message #=> String
    #   resp.document_classification_job_properties_list[0].submit_time #=> Time
    #   resp.document_classification_job_properties_list[0].end_time #=> Time
    #   resp.document_classification_job_properties_list[0].document_classifier_arn #=> String
    #   resp.document_classification_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.document_classification_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.document_classification_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.document_classification_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.document_classification_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array
    #   resp.document_classification_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.document_classification_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.document_classification_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.document_classification_job_properties_list[0].data_access_role_arn #=> String
    #   resp.document_classification_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.document_classification_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.document_classification_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.document_classification_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.document_classification_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.document_classification_job_properties_list[0].flywheel_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassificationJobs AWS API Documentation
    #
    # @overload list_document_classification_jobs(params = {})
    # @param [Hash] params ({})
    def list_document_classification_jobs(params = {}, options = {})
      req = build_request(:list_document_classification_jobs, params)
      req.send_request(options)
    end

    # Gets a list of summaries of the document classifiers that you have
    # created
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return on each page. The default is
    #   100.
    #
    # @return [Types::ListDocumentClassifierSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentClassifierSummariesResponse#document_classifier_summaries_list #document_classifier_summaries_list} => Array&lt;Types::DocumentClassifierSummary&gt;
    #   * {Types::ListDocumentClassifierSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_classifier_summaries({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classifier_summaries_list #=> Array
    #   resp.document_classifier_summaries_list[0].document_classifier_name #=> String
    #   resp.document_classifier_summaries_list[0].number_of_versions #=> Integer
    #   resp.document_classifier_summaries_list[0].latest_version_created_at #=> Time
    #   resp.document_classifier_summaries_list[0].latest_version_name #=> String
    #   resp.document_classifier_summaries_list[0].latest_version_status #=> String, one of "SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassifierSummaries AWS API Documentation
    #
    # @overload list_document_classifier_summaries(params = {})
    # @param [Hash] params ({})
    def list_document_classifier_summaries(params = {}, options = {})
      req = build_request(:list_document_classifier_summaries, params)
      req.send_request(options)
    end

    # Gets a list of the document classifiers that you have created.
    #
    # @option params [Types::DocumentClassifierFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListDocumentClassifiersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentClassifiersResponse#document_classifier_properties_list #document_classifier_properties_list} => Array&lt;Types::DocumentClassifierProperties&gt;
    #   * {Types::ListDocumentClassifiersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_classifiers({
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, TRAINING, DELETING, STOP_REQUESTED, STOPPED, IN_ERROR, TRAINED, TRAINED_WITH_WARNING
    #       document_classifier_name: "ComprehendArnName",
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classifier_properties_list #=> Array
    #   resp.document_classifier_properties_list[0].document_classifier_arn #=> String
    #   resp.document_classifier_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.document_classifier_properties_list[0].status #=> String, one of "SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"
    #   resp.document_classifier_properties_list[0].message #=> String
    #   resp.document_classifier_properties_list[0].submit_time #=> Time
    #   resp.document_classifier_properties_list[0].end_time #=> Time
    #   resp.document_classifier_properties_list[0].training_start_time #=> Time
    #   resp.document_classifier_properties_list[0].training_end_time #=> Time
    #   resp.document_classifier_properties_list[0].input_data_config.data_format #=> String, one of "COMPREHEND_CSV", "AUGMENTED_MANIFEST"
    #   resp.document_classifier_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.document_classifier_properties_list[0].input_data_config.test_s3_uri #=> String
    #   resp.document_classifier_properties_list[0].input_data_config.label_delimiter #=> String
    #   resp.document_classifier_properties_list[0].input_data_config.augmented_manifests #=> Array
    #   resp.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].s3_uri #=> String
    #   resp.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].split #=> String, one of "TRAIN", "TEST"
    #   resp.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].attribute_names #=> Array
    #   resp.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].attribute_names[0] #=> String
    #   resp.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].annotation_data_s3_uri #=> String
    #   resp.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].source_documents_s3_uri #=> String
    #   resp.document_classifier_properties_list[0].input_data_config.augmented_manifests[0].document_type #=> String, one of "PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"
    #   resp.document_classifier_properties_list[0].input_data_config.document_type #=> String, one of "PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"
    #   resp.document_classifier_properties_list[0].input_data_config.documents.s3_uri #=> String
    #   resp.document_classifier_properties_list[0].input_data_config.documents.test_s3_uri #=> String
    #   resp.document_classifier_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.document_classifier_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.document_classifier_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array
    #   resp.document_classifier_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.document_classifier_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.document_classifier_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.document_classifier_properties_list[0].output_data_config.flywheel_stats_s3_prefix #=> String
    #   resp.document_classifier_properties_list[0].classifier_metadata.number_of_labels #=> Integer
    #   resp.document_classifier_properties_list[0].classifier_metadata.number_of_trained_documents #=> Integer
    #   resp.document_classifier_properties_list[0].classifier_metadata.number_of_test_documents #=> Integer
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.accuracy #=> Float
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.precision #=> Float
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.recall #=> Float
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.micro_precision #=> Float
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.micro_recall #=> Float
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.micro_f1_score #=> Float
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.hamming_loss #=> Float
    #   resp.document_classifier_properties_list[0].data_access_role_arn #=> String
    #   resp.document_classifier_properties_list[0].volume_kms_key_id #=> String
    #   resp.document_classifier_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.document_classifier_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.document_classifier_properties_list[0].vpc_config.subnets #=> Array
    #   resp.document_classifier_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.document_classifier_properties_list[0].mode #=> String, one of "MULTI_CLASS", "MULTI_LABEL"
    #   resp.document_classifier_properties_list[0].model_kms_key_id #=> String
    #   resp.document_classifier_properties_list[0].version_name #=> String
    #   resp.document_classifier_properties_list[0].source_model_arn #=> String
    #   resp.document_classifier_properties_list[0].flywheel_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassifiers AWS API Documentation
    #
    # @overload list_document_classifiers(params = {})
    # @param [Hash] params ({})
    def list_document_classifiers(params = {}, options = {})
      req = build_request(:list_document_classifiers, params)
      req.send_request(options)
    end

    # Gets a list of the dominant language detection jobs that you have
    # submitted.
    #
    # @option params [Types::DominantLanguageDetectionJobFilter] :filter
    #   Filters that jobs that are returned. You can filter jobs on their
    #   name, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListDominantLanguageDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDominantLanguageDetectionJobsResponse#dominant_language_detection_job_properties_list #dominant_language_detection_job_properties_list} => Array&lt;Types::DominantLanguageDetectionJobProperties&gt;
    #   * {Types::ListDominantLanguageDetectionJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dominant_language_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dominant_language_detection_job_properties_list #=> Array
    #   resp.dominant_language_detection_job_properties_list[0].job_id #=> String
    #   resp.dominant_language_detection_job_properties_list[0].job_arn #=> String
    #   resp.dominant_language_detection_job_properties_list[0].job_name #=> String
    #   resp.dominant_language_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.dominant_language_detection_job_properties_list[0].message #=> String
    #   resp.dominant_language_detection_job_properties_list[0].submit_time #=> Time
    #   resp.dominant_language_detection_job_properties_list[0].end_time #=> Time
    #   resp.dominant_language_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.dominant_language_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.dominant_language_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.dominant_language_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.dominant_language_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array
    #   resp.dominant_language_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.dominant_language_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.dominant_language_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.dominant_language_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.dominant_language_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.dominant_language_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.dominant_language_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.dominant_language_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.dominant_language_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDominantLanguageDetectionJobs AWS API Documentation
    #
    # @overload list_dominant_language_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_dominant_language_detection_jobs(params = {}, options = {})
      req = build_request(:list_dominant_language_detection_jobs, params)
      req.send_request(options)
    end

    # Gets a list of all existing endpoints that you've created. For
    # information about endpoints, see [Managing endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html
    #
    # @option params [Types::EndpointFilter] :filter
    #   Filters the endpoints that are returned. You can filter endpoints on
    #   their name, model, status, or the date and time that they were
    #   created. You can only set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEndpointsResponse#endpoint_properties_list #endpoint_properties_list} => Array&lt;Types::EndpointProperties&gt;
    #   * {Types::ListEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoints({
    #     filter: {
    #       model_arn: "ComprehendModelArn",
    #       status: "CREATING", # accepts CREATING, DELETING, FAILED, IN_SERVICE, UPDATING
    #       creation_time_before: Time.now,
    #       creation_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_properties_list #=> Array
    #   resp.endpoint_properties_list[0].endpoint_arn #=> String
    #   resp.endpoint_properties_list[0].status #=> String, one of "CREATING", "DELETING", "FAILED", "IN_SERVICE", "UPDATING"
    #   resp.endpoint_properties_list[0].message #=> String
    #   resp.endpoint_properties_list[0].model_arn #=> String
    #   resp.endpoint_properties_list[0].desired_model_arn #=> String
    #   resp.endpoint_properties_list[0].desired_inference_units #=> Integer
    #   resp.endpoint_properties_list[0].current_inference_units #=> Integer
    #   resp.endpoint_properties_list[0].creation_time #=> Time
    #   resp.endpoint_properties_list[0].last_modified_time #=> Time
    #   resp.endpoint_properties_list[0].data_access_role_arn #=> String
    #   resp.endpoint_properties_list[0].desired_data_access_role_arn #=> String
    #   resp.endpoint_properties_list[0].flywheel_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEndpoints AWS API Documentation
    #
    # @overload list_endpoints(params = {})
    # @param [Hash] params ({})
    def list_endpoints(params = {}, options = {})
      req = build_request(:list_endpoints, params)
      req.send_request(options)
    end

    # Gets a list of the entity detection jobs that you have submitted.
    #
    # @option params [Types::EntitiesDetectionJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListEntitiesDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntitiesDetectionJobsResponse#entities_detection_job_properties_list #entities_detection_job_properties_list} => Array&lt;Types::EntitiesDetectionJobProperties&gt;
    #   * {Types::ListEntitiesDetectionJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entities_detection_job_properties_list #=> Array
    #   resp.entities_detection_job_properties_list[0].job_id #=> String
    #   resp.entities_detection_job_properties_list[0].job_arn #=> String
    #   resp.entities_detection_job_properties_list[0].job_name #=> String
    #   resp.entities_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.entities_detection_job_properties_list[0].message #=> String
    #   resp.entities_detection_job_properties_list[0].submit_time #=> Time
    #   resp.entities_detection_job_properties_list[0].end_time #=> Time
    #   resp.entities_detection_job_properties_list[0].entity_recognizer_arn #=> String
    #   resp.entities_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.entities_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.entities_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.entities_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.entities_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array
    #   resp.entities_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.entities_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.entities_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.entities_detection_job_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.entities_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.entities_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.entities_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.entities_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.entities_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.entities_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.entities_detection_job_properties_list[0].flywheel_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntitiesDetectionJobs AWS API Documentation
    #
    # @overload list_entities_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_entities_detection_jobs(params = {}, options = {})
      req = build_request(:list_entities_detection_jobs, params)
      req.send_request(options)
    end

    # Gets a list of summaries for the entity recognizers that you have
    # created.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return on each page. The default is
    #   100.
    #
    # @return [Types::ListEntityRecognizerSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntityRecognizerSummariesResponse#entity_recognizer_summaries_list #entity_recognizer_summaries_list} => Array&lt;Types::EntityRecognizerSummary&gt;
    #   * {Types::ListEntityRecognizerSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entity_recognizer_summaries({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_recognizer_summaries_list #=> Array
    #   resp.entity_recognizer_summaries_list[0].recognizer_name #=> String
    #   resp.entity_recognizer_summaries_list[0].number_of_versions #=> Integer
    #   resp.entity_recognizer_summaries_list[0].latest_version_created_at #=> Time
    #   resp.entity_recognizer_summaries_list[0].latest_version_name #=> String
    #   resp.entity_recognizer_summaries_list[0].latest_version_status #=> String, one of "SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntityRecognizerSummaries AWS API Documentation
    #
    # @overload list_entity_recognizer_summaries(params = {})
    # @param [Hash] params ({})
    def list_entity_recognizer_summaries(params = {}, options = {})
      req = build_request(:list_entity_recognizer_summaries, params)
      req.send_request(options)
    end

    # Gets a list of the properties of all entity recognizers that you
    # created, including recognizers currently in training. Allows you to
    # filter the list of recognizers based on criteria such as status and
    # submission time. This call returns up to 500 entity recognizers in the
    # list, with a default number of 100 recognizers in the list.
    #
    # The results of this list are not in any particular order. Please get
    # the list and sort locally if needed.
    #
    # @option params [Types::EntityRecognizerFilter] :filter
    #   Filters the list of entities returned. You can filter on `Status`,
    #   `SubmitTimeBefore`, or `SubmitTimeAfter`. You can only set one filter
    #   at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return on each page. The default is
    #   100.
    #
    # @return [Types::ListEntityRecognizersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntityRecognizersResponse#entity_recognizer_properties_list #entity_recognizer_properties_list} => Array&lt;Types::EntityRecognizerProperties&gt;
    #   * {Types::ListEntityRecognizersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entity_recognizers({
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, TRAINING, DELETING, STOP_REQUESTED, STOPPED, IN_ERROR, TRAINED, TRAINED_WITH_WARNING
    #       recognizer_name: "ComprehendArnName",
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_recognizer_properties_list #=> Array
    #   resp.entity_recognizer_properties_list[0].entity_recognizer_arn #=> String
    #   resp.entity_recognizer_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.entity_recognizer_properties_list[0].status #=> String, one of "SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"
    #   resp.entity_recognizer_properties_list[0].message #=> String
    #   resp.entity_recognizer_properties_list[0].submit_time #=> Time
    #   resp.entity_recognizer_properties_list[0].end_time #=> Time
    #   resp.entity_recognizer_properties_list[0].training_start_time #=> Time
    #   resp.entity_recognizer_properties_list[0].training_end_time #=> Time
    #   resp.entity_recognizer_properties_list[0].input_data_config.data_format #=> String, one of "COMPREHEND_CSV", "AUGMENTED_MANIFEST"
    #   resp.entity_recognizer_properties_list[0].input_data_config.entity_types #=> Array
    #   resp.entity_recognizer_properties_list[0].input_data_config.entity_types[0].type #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.documents.s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.documents.test_s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.documents.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.entity_recognizer_properties_list[0].input_data_config.annotations.s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.annotations.test_s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.entity_list.s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.augmented_manifests #=> Array
    #   resp.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].split #=> String, one of "TRAIN", "TEST"
    #   resp.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].attribute_names #=> Array
    #   resp.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].attribute_names[0] #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].annotation_data_s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].source_documents_s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.augmented_manifests[0].document_type #=> String, one of "PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.number_of_trained_documents #=> Integer
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.number_of_test_documents #=> Integer
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.evaluation_metrics.precision #=> Float
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.evaluation_metrics.recall #=> Float
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.entity_types #=> Array
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].type #=> String
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].evaluation_metrics.precision #=> Float
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].evaluation_metrics.recall #=> Float
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].evaluation_metrics.f1_score #=> Float
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].number_of_train_mentions #=> Integer
    #   resp.entity_recognizer_properties_list[0].data_access_role_arn #=> String
    #   resp.entity_recognizer_properties_list[0].volume_kms_key_id #=> String
    #   resp.entity_recognizer_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.entity_recognizer_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.entity_recognizer_properties_list[0].vpc_config.subnets #=> Array
    #   resp.entity_recognizer_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.entity_recognizer_properties_list[0].model_kms_key_id #=> String
    #   resp.entity_recognizer_properties_list[0].version_name #=> String
    #   resp.entity_recognizer_properties_list[0].source_model_arn #=> String
    #   resp.entity_recognizer_properties_list[0].flywheel_arn #=> String
    #   resp.entity_recognizer_properties_list[0].output_data_config.flywheel_stats_s3_prefix #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntityRecognizers AWS API Documentation
    #
    # @overload list_entity_recognizers(params = {})
    # @param [Hash] params ({})
    def list_entity_recognizers(params = {}, options = {})
      req = build_request(:list_entity_recognizers, params)
      req.send_request(options)
    end

    # Gets a list of the events detection jobs that you have submitted.
    #
    # @option params [Types::EventsDetectionJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page.
    #
    # @return [Types::ListEventsDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventsDetectionJobsResponse#events_detection_job_properties_list #events_detection_job_properties_list} => Array&lt;Types::EventsDetectionJobProperties&gt;
    #   * {Types::ListEventsDetectionJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_events_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.events_detection_job_properties_list #=> Array
    #   resp.events_detection_job_properties_list[0].job_id #=> String
    #   resp.events_detection_job_properties_list[0].job_arn #=> String
    #   resp.events_detection_job_properties_list[0].job_name #=> String
    #   resp.events_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.events_detection_job_properties_list[0].message #=> String
    #   resp.events_detection_job_properties_list[0].submit_time #=> Time
    #   resp.events_detection_job_properties_list[0].end_time #=> Time
    #   resp.events_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.events_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.events_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.events_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.events_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array
    #   resp.events_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.events_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.events_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.events_detection_job_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.events_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.events_detection_job_properties_list[0].target_event_types #=> Array
    #   resp.events_detection_job_properties_list[0].target_event_types[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEventsDetectionJobs AWS API Documentation
    #
    # @overload list_events_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_events_detection_jobs(params = {}, options = {})
      req = build_request(:list_events_detection_jobs, params)
      req.send_request(options)
    end

    # Information about the history of a flywheel iteration. For more
    # information about flywheels, see [ Flywheel overview][1] in the
    # *Amazon Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html
    #
    # @option params [required, String] :flywheel_arn
    #   The ARN of the flywheel.
    #
    # @option params [Types::FlywheelIterationFilter] :filter
    #   Filter the flywheel iteration history based on creation time.
    #
    # @option params [String] :next_token
    #   Next token
    #
    # @option params [Integer] :max_results
    #   Maximum number of iteration history results to return
    #
    # @return [Types::ListFlywheelIterationHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlywheelIterationHistoryResponse#flywheel_iteration_properties_list #flywheel_iteration_properties_list} => Array&lt;Types::FlywheelIterationProperties&gt;
    #   * {Types::ListFlywheelIterationHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flywheel_iteration_history({
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #     filter: {
    #       creation_time_after: Time.now,
    #       creation_time_before: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.flywheel_iteration_properties_list #=> Array
    #   resp.flywheel_iteration_properties_list[0].flywheel_arn #=> String
    #   resp.flywheel_iteration_properties_list[0].flywheel_iteration_id #=> String
    #   resp.flywheel_iteration_properties_list[0].creation_time #=> Time
    #   resp.flywheel_iteration_properties_list[0].end_time #=> Time
    #   resp.flywheel_iteration_properties_list[0].status #=> String, one of "TRAINING", "EVALUATING", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.flywheel_iteration_properties_list[0].message #=> String
    #   resp.flywheel_iteration_properties_list[0].evaluated_model_arn #=> String
    #   resp.flywheel_iteration_properties_list[0].evaluated_model_metrics.average_f1_score #=> Float
    #   resp.flywheel_iteration_properties_list[0].evaluated_model_metrics.average_precision #=> Float
    #   resp.flywheel_iteration_properties_list[0].evaluated_model_metrics.average_recall #=> Float
    #   resp.flywheel_iteration_properties_list[0].evaluated_model_metrics.average_accuracy #=> Float
    #   resp.flywheel_iteration_properties_list[0].trained_model_arn #=> String
    #   resp.flywheel_iteration_properties_list[0].trained_model_metrics.average_f1_score #=> Float
    #   resp.flywheel_iteration_properties_list[0].trained_model_metrics.average_precision #=> Float
    #   resp.flywheel_iteration_properties_list[0].trained_model_metrics.average_recall #=> Float
    #   resp.flywheel_iteration_properties_list[0].trained_model_metrics.average_accuracy #=> Float
    #   resp.flywheel_iteration_properties_list[0].evaluation_manifest_s3_prefix #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListFlywheelIterationHistory AWS API Documentation
    #
    # @overload list_flywheel_iteration_history(params = {})
    # @param [Hash] params ({})
    def list_flywheel_iteration_history(params = {}, options = {})
      req = build_request(:list_flywheel_iteration_history, params)
      req.send_request(options)
    end

    # Gets a list of the flywheels that you have created.
    #
    # @option params [Types::FlywheelFilter] :filter
    #   Filters the flywheels that are returned. You can filter flywheels on
    #   their status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a response. The default is 100.
    #
    # @return [Types::ListFlywheelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFlywheelsResponse#flywheel_summary_list #flywheel_summary_list} => Array&lt;Types::FlywheelSummary&gt;
    #   * {Types::ListFlywheelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_flywheels({
    #     filter: {
    #       status: "CREATING", # accepts CREATING, ACTIVE, UPDATING, DELETING, FAILED
    #       creation_time_after: Time.now,
    #       creation_time_before: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.flywheel_summary_list #=> Array
    #   resp.flywheel_summary_list[0].flywheel_arn #=> String
    #   resp.flywheel_summary_list[0].active_model_arn #=> String
    #   resp.flywheel_summary_list[0].data_lake_s3_uri #=> String
    #   resp.flywheel_summary_list[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.flywheel_summary_list[0].model_type #=> String, one of "DOCUMENT_CLASSIFIER", "ENTITY_RECOGNIZER"
    #   resp.flywheel_summary_list[0].message #=> String
    #   resp.flywheel_summary_list[0].creation_time #=> Time
    #   resp.flywheel_summary_list[0].last_modified_time #=> Time
    #   resp.flywheel_summary_list[0].latest_flywheel_iteration #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListFlywheels AWS API Documentation
    #
    # @overload list_flywheels(params = {})
    # @param [Hash] params ({})
    def list_flywheels(params = {}, options = {})
      req = build_request(:list_flywheels, params)
      req.send_request(options)
    end

    # Get a list of key phrase detection jobs that you have submitted.
    #
    # @option params [Types::KeyPhrasesDetectionJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListKeyPhrasesDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeyPhrasesDetectionJobsResponse#key_phrases_detection_job_properties_list #key_phrases_detection_job_properties_list} => Array&lt;Types::KeyPhrasesDetectionJobProperties&gt;
    #   * {Types::ListKeyPhrasesDetectionJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_key_phrases_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.key_phrases_detection_job_properties_list #=> Array
    #   resp.key_phrases_detection_job_properties_list[0].job_id #=> String
    #   resp.key_phrases_detection_job_properties_list[0].job_arn #=> String
    #   resp.key_phrases_detection_job_properties_list[0].job_name #=> String
    #   resp.key_phrases_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.key_phrases_detection_job_properties_list[0].message #=> String
    #   resp.key_phrases_detection_job_properties_list[0].submit_time #=> Time
    #   resp.key_phrases_detection_job_properties_list[0].end_time #=> Time
    #   resp.key_phrases_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.key_phrases_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.key_phrases_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.key_phrases_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.key_phrases_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array
    #   resp.key_phrases_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.key_phrases_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.key_phrases_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.key_phrases_detection_job_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.key_phrases_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.key_phrases_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.key_phrases_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.key_phrases_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.key_phrases_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.key_phrases_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListKeyPhrasesDetectionJobs AWS API Documentation
    #
    # @overload list_key_phrases_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_key_phrases_detection_jobs(params = {}, options = {})
      req = build_request(:list_key_phrases_detection_jobs, params)
      req.send_request(options)
    end

    # Gets a list of the PII entity detection jobs that you have submitted.
    #
    # @option params [Types::PiiEntitiesDetectionJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page.
    #
    # @return [Types::ListPiiEntitiesDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPiiEntitiesDetectionJobsResponse#pii_entities_detection_job_properties_list #pii_entities_detection_job_properties_list} => Array&lt;Types::PiiEntitiesDetectionJobProperties&gt;
    #   * {Types::ListPiiEntitiesDetectionJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pii_entities_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pii_entities_detection_job_properties_list #=> Array
    #   resp.pii_entities_detection_job_properties_list[0].job_id #=> String
    #   resp.pii_entities_detection_job_properties_list[0].job_arn #=> String
    #   resp.pii_entities_detection_job_properties_list[0].job_name #=> String
    #   resp.pii_entities_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.pii_entities_detection_job_properties_list[0].message #=> String
    #   resp.pii_entities_detection_job_properties_list[0].submit_time #=> Time
    #   resp.pii_entities_detection_job_properties_list[0].end_time #=> Time
    #   resp.pii_entities_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.pii_entities_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.pii_entities_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.pii_entities_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.pii_entities_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array
    #   resp.pii_entities_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.pii_entities_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.pii_entities_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.pii_entities_detection_job_properties_list[0].redaction_config.pii_entity_types #=> Array
    #   resp.pii_entities_detection_job_properties_list[0].redaction_config.pii_entity_types[0] #=> String, one of "BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"
    #   resp.pii_entities_detection_job_properties_list[0].redaction_config.mask_mode #=> String, one of "MASK", "REPLACE_WITH_PII_ENTITY_TYPE"
    #   resp.pii_entities_detection_job_properties_list[0].redaction_config.mask_character #=> String
    #   resp.pii_entities_detection_job_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.pii_entities_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.pii_entities_detection_job_properties_list[0].mode #=> String, one of "ONLY_REDACTION", "ONLY_OFFSETS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListPiiEntitiesDetectionJobs AWS API Documentation
    #
    # @overload list_pii_entities_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_pii_entities_detection_jobs(params = {}, options = {})
      req = build_request(:list_pii_entities_detection_jobs, params)
      req.send_request(options)
    end

    # Gets a list of sentiment detection jobs that you have submitted.
    #
    # @option params [Types::SentimentDetectionJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListSentimentDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSentimentDetectionJobsResponse#sentiment_detection_job_properties_list #sentiment_detection_job_properties_list} => Array&lt;Types::SentimentDetectionJobProperties&gt;
    #   * {Types::ListSentimentDetectionJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sentiment_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.sentiment_detection_job_properties_list #=> Array
    #   resp.sentiment_detection_job_properties_list[0].job_id #=> String
    #   resp.sentiment_detection_job_properties_list[0].job_arn #=> String
    #   resp.sentiment_detection_job_properties_list[0].job_name #=> String
    #   resp.sentiment_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.sentiment_detection_job_properties_list[0].message #=> String
    #   resp.sentiment_detection_job_properties_list[0].submit_time #=> Time
    #   resp.sentiment_detection_job_properties_list[0].end_time #=> Time
    #   resp.sentiment_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.sentiment_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array
    #   resp.sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.sentiment_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.sentiment_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.sentiment_detection_job_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.sentiment_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.sentiment_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.sentiment_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.sentiment_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.sentiment_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.sentiment_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListSentimentDetectionJobs AWS API Documentation
    #
    # @overload list_sentiment_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_sentiment_detection_jobs(params = {}, options = {})
      req = build_request(:list_sentiment_detection_jobs, params)
      req.send_request(options)
    end

    # Lists all tags associated with a given Amazon Comprehend resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Comprehend resource
    #   you are querying.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ComprehendArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Gets a list of targeted sentiment detection jobs that you have
    # submitted.
    #
    # @option params [Types::TargetedSentimentDetectionJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListTargetedSentimentDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetedSentimentDetectionJobsResponse#targeted_sentiment_detection_job_properties_list #targeted_sentiment_detection_job_properties_list} => Array&lt;Types::TargetedSentimentDetectionJobProperties&gt;
    #   * {Types::ListTargetedSentimentDetectionJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targeted_sentiment_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.targeted_sentiment_detection_job_properties_list #=> Array
    #   resp.targeted_sentiment_detection_job_properties_list[0].job_id #=> String
    #   resp.targeted_sentiment_detection_job_properties_list[0].job_arn #=> String
    #   resp.targeted_sentiment_detection_job_properties_list[0].job_name #=> String
    #   resp.targeted_sentiment_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.targeted_sentiment_detection_job_properties_list[0].message #=> String
    #   resp.targeted_sentiment_detection_job_properties_list[0].submit_time #=> Time
    #   resp.targeted_sentiment_detection_job_properties_list[0].end_time #=> Time
    #   resp.targeted_sentiment_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.targeted_sentiment_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.targeted_sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.targeted_sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.targeted_sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array
    #   resp.targeted_sentiment_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.targeted_sentiment_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.targeted_sentiment_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.targeted_sentiment_detection_job_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.targeted_sentiment_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.targeted_sentiment_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.targeted_sentiment_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.targeted_sentiment_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.targeted_sentiment_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.targeted_sentiment_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTargetedSentimentDetectionJobs AWS API Documentation
    #
    # @overload list_targeted_sentiment_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_targeted_sentiment_detection_jobs(params = {}, options = {})
      req = build_request(:list_targeted_sentiment_detection_jobs, params)
      req.send_request(options)
    end

    # Gets a list of the topic detection jobs that you have submitted.
    #
    # @option params [Types::TopicsDetectionJobFilter] :filter
    #   Filters the jobs that are returned. Jobs can be filtered on their
    #   name, status, or the date and time that they were submitted. You can
    #   set only one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListTopicsDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTopicsDetectionJobsResponse#topics_detection_job_properties_list #topics_detection_job_properties_list} => Array&lt;Types::TopicsDetectionJobProperties&gt;
    #   * {Types::ListTopicsDetectionJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topics_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.topics_detection_job_properties_list #=> Array
    #   resp.topics_detection_job_properties_list[0].job_id #=> String
    #   resp.topics_detection_job_properties_list[0].job_arn #=> String
    #   resp.topics_detection_job_properties_list[0].job_name #=> String
    #   resp.topics_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.topics_detection_job_properties_list[0].message #=> String
    #   resp.topics_detection_job_properties_list[0].submit_time #=> Time
    #   resp.topics_detection_job_properties_list[0].end_time #=> Time
    #   resp.topics_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.topics_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_action #=> String, one of "TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"
    #   resp.topics_detection_job_properties_list[0].input_data_config.document_reader_config.document_read_mode #=> String, one of "SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"
    #   resp.topics_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types #=> Array
    #   resp.topics_detection_job_properties_list[0].input_data_config.document_reader_config.feature_types[0] #=> String, one of "TABLES", "FORMS"
    #   resp.topics_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.topics_detection_job_properties_list[0].number_of_topics #=> Integer
    #   resp.topics_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.topics_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.topics_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.topics_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.topics_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.topics_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTopicsDetectionJobs AWS API Documentation
    #
    # @overload list_topics_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_topics_detection_jobs(params = {}, options = {})
      req = build_request(:list_topics_detection_jobs, params)
      req.send_request(options)
    end

    # Attaches a resource-based policy to a custom model. You can use this
    # policy to authorize an entity in another Amazon Web Services account
    # to import the custom model, which replicates it in Amazon Comprehend
    # in their account.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the custom model to attach the
    #   policy to.
    #
    # @option params [required, String] :resource_policy
    #   The JSON resource-based policy to attach to your custom model. Provide
    #   your JSON as a UTF-8 encoded string without line breaks. To provide
    #   valid JSON for your policy, enclose the attribute names and values in
    #   double quotes. If the JSON body is also enclosed in double quotes,
    #   then you must escape the double quotes that are inside the policy:
    #
    #   `"{"attribute": "value", "attribute": ["value"]}"`
    #
    #   To avoid escaping quotes, you can use single quotes to enclose the
    #   policy and double quotes to enclose the JSON names and values:
    #
    #   `'{"attribute": "value", "attribute": ["value"]}'`
    #
    # @option params [String] :policy_revision_id
    #   The revision ID that Amazon Comprehend assigned to the policy that you
    #   are updating. If you are creating a new policy that has no prior
    #   version, don't use this parameter. Amazon Comprehend creates the
    #   revision ID for you.
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#policy_revision_id #policy_revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "ComprehendModelArn", # required
    #     resource_policy: "Policy", # required
    #     policy_revision_id: "PolicyRevisionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Starts an asynchronous document classification job using a custom
    # classification model. Use the `DescribeDocumentClassificationJob`
    # operation to track the progress of the job.
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [String] :document_classifier_arn
    #   The Amazon Resource Name (ARN) of the document classifier to use to
    #   process the job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume attached
    #   to the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your document
    #   classification job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the document classification job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #
    # @option params [String] :flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel associated with the
    #   model to use.
    #
    # @return [Types::StartDocumentClassificationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDocumentClassificationJobResponse#job_id #job_id} => String
    #   * {Types::StartDocumentClassificationJobResponse#job_arn #job_arn} => String
    #   * {Types::StartDocumentClassificationJobResponse#job_status #job_status} => String
    #   * {Types::StartDocumentClassificationJobResponse#document_classifier_arn #document_classifier_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_document_classification_job({
    #     job_name: "JobName",
    #     document_classifier_arn: "DocumentClassifierArn",
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #         document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #         feature_types: ["TABLES"], # accepts TABLES, FORMS
    #       },
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     flywheel_arn: "ComprehendFlywheelArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_arn #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.document_classifier_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDocumentClassificationJob AWS API Documentation
    #
    # @overload start_document_classification_job(params = {})
    # @param [Hash] params ({})
    def start_document_classification_job(params = {}, options = {})
      req = build_request(:start_document_classification_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous dominant language detection job for a
    # collection of documents. Use the operation to track the status of a
    # job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
    #
    # @option params [String] :job_name
    #   An identifier for the job.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume attached
    #   to the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your dominant
    #   language detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the dominant language detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #
    # @return [Types::StartDominantLanguageDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDominantLanguageDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartDominantLanguageDetectionJobResponse#job_arn #job_arn} => String
    #   * {Types::StartDominantLanguageDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_dominant_language_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #         document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #         feature_types: ["TABLES"], # accepts TABLES, FORMS
    #       },
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_arn #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDominantLanguageDetectionJob AWS API Documentation
    #
    # @overload start_dominant_language_detection_job(params = {})
    # @param [Hash] params ({})
    def start_dominant_language_detection_job(params = {}, options = {})
      req = build_request(:start_dominant_language_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous entity detection job for a collection of
    # documents. Use the operation to track the status of a job.
    #
    # This API can be used for either standard entity detection or custom
    # entity recognition. In order to be used for custom entity recognition,
    # the optional `EntityRecognizerArn` must be used in order to provide
    # access to the recognizer being used to detect the custom entity.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [String] :entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the specific entity
    #   recognizer to be used by the `StartEntitiesDetectionJob`. This ARN is
    #   optional and is only used for a custom entity recognition job.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. All documents must be in the same
    #   language. You can specify any of the languages supported by Amazon
    #   Comprehend. If custom entities recognition is used, this parameter is
    #   ignored and the language used for training the model is used instead.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume attached
    #   to the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your entity detection
    #   job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the entities detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #
    # @option params [String] :flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel associated with the
    #   model to use.
    #
    # @return [Types::StartEntitiesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartEntitiesDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartEntitiesDetectionJobResponse#job_arn #job_arn} => String
    #   * {Types::StartEntitiesDetectionJobResponse#job_status #job_status} => String
    #   * {Types::StartEntitiesDetectionJobResponse#entity_recognizer_arn #entity_recognizer_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_entities_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #         document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #         feature_types: ["TABLES"], # accepts TABLES, FORMS
    #       },
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     entity_recognizer_arn: "EntityRecognizerArn",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     flywheel_arn: "ComprehendFlywheelArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_arn #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.entity_recognizer_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEntitiesDetectionJob AWS API Documentation
    #
    # @overload start_entities_detection_job(params = {})
    # @param [Hash] params ({})
    def start_entities_detection_job(params = {}, options = {})
      req = build_request(:start_entities_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous event detection job for a collection of
    # documents.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #
    # @option params [String] :job_name
    #   The identifier of the events detection job.
    #
    # @option params [required, String] :language_code
    #   The language code of the input documents.
    #
    # @option params [String] :client_request_token
    #   An unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<String>] :target_event_types
    #   The types of events to detect in the input documents.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the events detection job. A tag is a key-value
    #   pair that adds metadata to a resource used by Amazon Comprehend. For
    #   example, a tag with "Sales" as the key might be added to a resource
    #   to indicate its use by the sales department.
    #
    # @return [Types::StartEventsDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartEventsDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartEventsDetectionJobResponse#job_arn #job_arn} => String
    #   * {Types::StartEventsDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_events_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #         document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #         feature_types: ["TABLES"], # accepts TABLES, FORMS
    #       },
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #     client_request_token: "ClientRequestTokenString",
    #     target_event_types: ["EventTypeString"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_arn #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEventsDetectionJob AWS API Documentation
    #
    # @overload start_events_detection_job(params = {})
    # @param [Hash] params ({})
    def start_events_detection_job(params = {}, options = {})
      req = build_request(:start_events_detection_job, params)
      req.send_request(options)
    end

    # Start the flywheel iteration.This operation uses any new datasets to
    # train a new model version. For more information about flywheels, see [
    # Flywheel overview][1] in the *Amazon Comprehend Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html
    #
    # @option params [required, String] :flywheel_arn
    #   The ARN of the flywheel.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    # @return [Types::StartFlywheelIterationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFlywheelIterationResponse#flywheel_arn #flywheel_arn} => String
    #   * {Types::StartFlywheelIterationResponse#flywheel_iteration_id #flywheel_iteration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_flywheel_iteration({
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #     client_request_token: "ClientRequestTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.flywheel_arn #=> String
    #   resp.flywheel_iteration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartFlywheelIteration AWS API Documentation
    #
    # @overload start_flywheel_iteration(params = {})
    # @param [Hash] params ({})
    def start_flywheel_iteration(params = {}, options = {})
      req = build_request(:start_flywheel_iteration, params)
      req.send_request(options)
    end

    # Starts an asynchronous key phrase detection job for a collection of
    # documents. Use the operation to track the status of a job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume attached
    #   to the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your key phrases
    #   detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the key phrases detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #
    # @return [Types::StartKeyPhrasesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartKeyPhrasesDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartKeyPhrasesDetectionJobResponse#job_arn #job_arn} => String
    #   * {Types::StartKeyPhrasesDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_key_phrases_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #         document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #         feature_types: ["TABLES"], # accepts TABLES, FORMS
    #       },
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_arn #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartKeyPhrasesDetectionJob AWS API Documentation
    #
    # @overload start_key_phrases_detection_job(params = {})
    # @param [Hash] params ({})
    def start_key_phrases_detection_job(params = {}, options = {})
      req = build_request(:start_key_phrases_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous PII entity detection job for a collection of
    # documents.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   The input properties for a PII entities detection job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Provides conﬁguration parameters for the output of PII entity
    #   detection jobs.
    #
    # @option params [required, String] :mode
    #   Specifies whether the output provides the locations (offsets) of PII
    #   entities or a file in which PII entities are redacted.
    #
    # @option params [Types::RedactionConfig] :redaction_config
    #   Provides configuration parameters for PII entity redaction.
    #
    #   This parameter is required if you set the `Mode` parameter to
    #   `ONLY_REDACTION`. In that case, you must provide a `RedactionConfig`
    #   definition that includes the `PiiEntityTypes` parameter.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. Enter the language code for
    #   English (en) or Spanish (es).
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the PII entities detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #
    # @return [Types::StartPiiEntitiesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPiiEntitiesDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartPiiEntitiesDetectionJobResponse#job_arn #job_arn} => String
    #   * {Types::StartPiiEntitiesDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_pii_entities_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #         document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #         feature_types: ["TABLES"], # accepts TABLES, FORMS
    #       },
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     mode: "ONLY_REDACTION", # required, accepts ONLY_REDACTION, ONLY_OFFSETS
    #     redaction_config: {
    #       pii_entity_types: ["BANK_ACCOUNT_NUMBER"], # accepts BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, DATE_TIME, PASSPORT_NUMBER, DRIVER_ID, URL, AGE, USERNAME, PASSWORD, AWS_ACCESS_KEY, AWS_SECRET_KEY, IP_ADDRESS, MAC_ADDRESS, ALL, LICENSE_PLATE, VEHICLE_IDENTIFICATION_NUMBER, UK_NATIONAL_INSURANCE_NUMBER, CA_SOCIAL_INSURANCE_NUMBER, US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER, UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER, IN_PERMANENT_ACCOUNT_NUMBER, IN_NREGA, INTERNATIONAL_BANK_ACCOUNT_NUMBER, SWIFT_CODE, UK_NATIONAL_HEALTH_SERVICE_NUMBER, CA_HEALTH_NUMBER, IN_AADHAAR, IN_VOTER_NUMBER
    #       mask_mode: "MASK", # accepts MASK, REPLACE_WITH_PII_ENTITY_TYPE
    #       mask_character: "MaskCharacter",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #     client_request_token: "ClientRequestTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_arn #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartPiiEntitiesDetectionJob AWS API Documentation
    #
    # @overload start_pii_entities_detection_job(params = {})
    # @param [Hash] params ({})
    def start_pii_entities_detection_job(params = {}, options = {})
      req = build_request(:start_pii_entities_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous sentiment detection job for a collection of
    # documents. Use the operation to track the status of a job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume attached
    #   to the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your sentiment
    #   detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the sentiment detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #
    # @return [Types::StartSentimentDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSentimentDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartSentimentDetectionJobResponse#job_arn #job_arn} => String
    #   * {Types::StartSentimentDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_sentiment_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #         document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #         feature_types: ["TABLES"], # accepts TABLES, FORMS
    #       },
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_arn #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartSentimentDetectionJob AWS API Documentation
    #
    # @overload start_sentiment_detection_job(params = {})
    # @param [Hash] params ({})
    def start_sentiment_detection_job(params = {}, options = {})
      req = build_request(:start_sentiment_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous targeted sentiment detection job for a
    # collection of documents. Use the
    # `DescribeTargetedSentimentDetectionJob` operation to track the status
    # of a job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   The input properties for an inference job. The document reader config
    #   field applies only to non-text inputs for custom analysis.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. Currently, English is the only
    #   supported language.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt data on the
    #   storage volume attached to the ML compute instance(s) that process the
    #   analysis job. The VolumeKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for the job. For more
    #   information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the targeted sentiment detection job. A tag is
    #   a key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #
    # @return [Types::StartTargetedSentimentDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTargetedSentimentDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartTargetedSentimentDetectionJobResponse#job_arn #job_arn} => String
    #   * {Types::StartTargetedSentimentDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_targeted_sentiment_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #         document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #         feature_types: ["TABLES"], # accepts TABLES, FORMS
    #       },
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_arn #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartTargetedSentimentDetectionJob AWS API Documentation
    #
    # @overload start_targeted_sentiment_detection_job(params = {})
    # @param [Hash] params ({})
    def start_targeted_sentiment_detection_job(params = {}, options = {})
      req = build_request(:start_targeted_sentiment_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous topic detection job. Use the
    # `DescribeTopicDetectionJob` operation to track the status of a job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files. The output is a compressed
    #   archive with two files, `topic-terms.csv` that lists the terms
    #   associated with each topic, and `doc-topics.csv` that lists the
    #   documents associated with each topic
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [Integer] :number_of_topics
    #   The number of topics to detect.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume attached
    #   to the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your topic detection
    #   job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the topics detection job. A tag is a key-value
    #   pair that adds metadata to a resource used by Amazon Comprehend. For
    #   example, a tag with "Sales" as the key might be added to a resource
    #   to indicate its use by the sales department.
    #
    # @return [Types::StartTopicsDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTopicsDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartTopicsDetectionJobResponse#job_arn #job_arn} => String
    #   * {Types::StartTopicsDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_topics_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT", # required, accepts TEXTRACT_DETECT_DOCUMENT_TEXT, TEXTRACT_ANALYZE_DOCUMENT
    #         document_read_mode: "SERVICE_DEFAULT", # accepts SERVICE_DEFAULT, FORCE_DOCUMENT_READ_ACTION
    #         feature_types: ["TABLES"], # accepts TABLES, FORMS
    #       },
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     number_of_topics: 1,
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_arn #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartTopicsDetectionJob AWS API Documentation
    #
    # @overload start_topics_detection_job(params = {})
    # @param [Hash] params ({})
    def start_topics_detection_job(params = {}, options = {})
      req = build_request(:start_topics_detection_job, params)
      req.send_request(options)
    end

    # Stops a dominant language detection job in progress.
    #
    # If the job state is `IN_PROGRESS` the job is marked for termination
    # and put into the `STOP_REQUESTED` state. If the job completes before
    # it can be stopped, it is put into the `COMPLETED` state; otherwise the
    # job is stopped and put into the `STOPPED` state.
    #
    # If the job is in the `COMPLETED` or `FAILED` state when you call the
    # `StopDominantLanguageDetectionJob` operation, the operation returns a
    # 400 Internal Request Exception.
    #
    # When a job is stopped, any documents already processed are written to
    # the output location.
    #
    # @option params [required, String] :job_id
    #   The identifier of the dominant language detection job to stop.
    #
    # @return [Types::StopDominantLanguageDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDominantLanguageDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopDominantLanguageDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_dominant_language_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopDominantLanguageDetectionJob AWS API Documentation
    #
    # @overload stop_dominant_language_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_dominant_language_detection_job(params = {}, options = {})
      req = build_request(:stop_dominant_language_detection_job, params)
      req.send_request(options)
    end

    # Stops an entities detection job in progress.
    #
    # If the job state is `IN_PROGRESS` the job is marked for termination
    # and put into the `STOP_REQUESTED` state. If the job completes before
    # it can be stopped, it is put into the `COMPLETED` state; otherwise the
    # job is stopped and put into the `STOPPED` state.
    #
    # If the job is in the `COMPLETED` or `FAILED` state when you call the
    # `StopDominantLanguageDetectionJob` operation, the operation returns a
    # 400 Internal Request Exception.
    #
    # When a job is stopped, any documents already processed are written to
    # the output location.
    #
    # @option params [required, String] :job_id
    #   The identifier of the entities detection job to stop.
    #
    # @return [Types::StopEntitiesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopEntitiesDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopEntitiesDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_entities_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopEntitiesDetectionJob AWS API Documentation
    #
    # @overload stop_entities_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_entities_detection_job(params = {}, options = {})
      req = build_request(:stop_entities_detection_job, params)
      req.send_request(options)
    end

    # Stops an events detection job in progress.
    #
    # @option params [required, String] :job_id
    #   The identifier of the events detection job to stop.
    #
    # @return [Types::StopEventsDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopEventsDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopEventsDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_events_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopEventsDetectionJob AWS API Documentation
    #
    # @overload stop_events_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_events_detection_job(params = {}, options = {})
      req = build_request(:stop_events_detection_job, params)
      req.send_request(options)
    end

    # Stops a key phrases detection job in progress.
    #
    # If the job state is `IN_PROGRESS` the job is marked for termination
    # and put into the `STOP_REQUESTED` state. If the job completes before
    # it can be stopped, it is put into the `COMPLETED` state; otherwise the
    # job is stopped and put into the `STOPPED` state.
    #
    # If the job is in the `COMPLETED` or `FAILED` state when you call the
    # `StopDominantLanguageDetectionJob` operation, the operation returns a
    # 400 Internal Request Exception.
    #
    # When a job is stopped, any documents already processed are written to
    # the output location.
    #
    # @option params [required, String] :job_id
    #   The identifier of the key phrases detection job to stop.
    #
    # @return [Types::StopKeyPhrasesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopKeyPhrasesDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopKeyPhrasesDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_key_phrases_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopKeyPhrasesDetectionJob AWS API Documentation
    #
    # @overload stop_key_phrases_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_key_phrases_detection_job(params = {}, options = {})
      req = build_request(:stop_key_phrases_detection_job, params)
      req.send_request(options)
    end

    # Stops a PII entities detection job in progress.
    #
    # @option params [required, String] :job_id
    #   The identifier of the PII entities detection job to stop.
    #
    # @return [Types::StopPiiEntitiesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopPiiEntitiesDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopPiiEntitiesDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_pii_entities_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopPiiEntitiesDetectionJob AWS API Documentation
    #
    # @overload stop_pii_entities_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_pii_entities_detection_job(params = {}, options = {})
      req = build_request(:stop_pii_entities_detection_job, params)
      req.send_request(options)
    end

    # Stops a sentiment detection job in progress.
    #
    # If the job state is `IN_PROGRESS`, the job is marked for termination
    # and put into the `STOP_REQUESTED` state. If the job completes before
    # it can be stopped, it is put into the `COMPLETED` state; otherwise the
    # job is be stopped and put into the `STOPPED` state.
    #
    # If the job is in the `COMPLETED` or `FAILED` state when you call the
    # `StopDominantLanguageDetectionJob` operation, the operation returns a
    # 400 Internal Request Exception.
    #
    # When a job is stopped, any documents already processed are written to
    # the output location.
    #
    # @option params [required, String] :job_id
    #   The identifier of the sentiment detection job to stop.
    #
    # @return [Types::StopSentimentDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopSentimentDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopSentimentDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_sentiment_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopSentimentDetectionJob AWS API Documentation
    #
    # @overload stop_sentiment_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_sentiment_detection_job(params = {}, options = {})
      req = build_request(:stop_sentiment_detection_job, params)
      req.send_request(options)
    end

    # Stops a targeted sentiment detection job in progress.
    #
    # If the job state is `IN_PROGRESS`, the job is marked for termination
    # and put into the `STOP_REQUESTED` state. If the job completes before
    # it can be stopped, it is put into the `COMPLETED` state; otherwise the
    # job is be stopped and put into the `STOPPED` state.
    #
    # If the job is in the `COMPLETED` or `FAILED` state when you call the
    # `StopDominantLanguageDetectionJob` operation, the operation returns a
    # 400 Internal Request Exception.
    #
    # When a job is stopped, any documents already processed are written to
    # the output location.
    #
    # @option params [required, String] :job_id
    #   The identifier of the targeted sentiment detection job to stop.
    #
    # @return [Types::StopTargetedSentimentDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopTargetedSentimentDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopTargetedSentimentDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_targeted_sentiment_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTargetedSentimentDetectionJob AWS API Documentation
    #
    # @overload stop_targeted_sentiment_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_targeted_sentiment_detection_job(params = {}, options = {})
      req = build_request(:stop_targeted_sentiment_detection_job, params)
      req.send_request(options)
    end

    # Stops a document classifier training job while in progress.
    #
    # If the training job state is `TRAINING`, the job is marked for
    # termination and put into the `STOP_REQUESTED` state. If the training
    # job completes before it can be stopped, it is put into the `TRAINED`;
    # otherwise the training job is stopped and put into the `STOPPED` state
    # and the service sends back an HTTP 200 response with an empty HTTP
    # body.
    #
    # @option params [required, String] :document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document classifier
    #   currently being trained.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_training_document_classifier({
    #     document_classifier_arn: "DocumentClassifierArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTrainingDocumentClassifier AWS API Documentation
    #
    # @overload stop_training_document_classifier(params = {})
    # @param [Hash] params ({})
    def stop_training_document_classifier(params = {}, options = {})
      req = build_request(:stop_training_document_classifier, params)
      req.send_request(options)
    end

    # Stops an entity recognizer training job while in progress.
    #
    # If the training job state is `TRAINING`, the job is marked for
    # termination and put into the `STOP_REQUESTED` state. If the training
    # job completes before it can be stopped, it is put into the `TRAINED`;
    # otherwise the training job is stopped and putted into the `STOPPED`
    # state and the service sends back an HTTP 200 response with an empty
    # HTTP body.
    #
    # @option params [required, String] :entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity recognizer
    #   currently being trained.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_training_entity_recognizer({
    #     entity_recognizer_arn: "EntityRecognizerArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTrainingEntityRecognizer AWS API Documentation
    #
    # @overload stop_training_entity_recognizer(params = {})
    # @param [Hash] params ({})
    def stop_training_entity_recognizer(params = {}, options = {})
      req = build_request(:stop_training_entity_recognizer, params)
      req.send_request(options)
    end

    # Associates a specific tag with an Amazon Comprehend resource. A tag is
    # a key-value pair that adds as a metadata to a resource used by Amazon
    # Comprehend. For example, a tag with "Sales" as the key might be
    # added to a resource to indicate its use by the sales department.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Comprehend resource
    #   to which you want to associate the tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Tags being associated with a specific Amazon Comprehend resource.
    #   There can be a maximum of 50 tags (both existing and pending)
    #   associated with a specific resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ComprehendArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a specific tag associated with an Amazon Comprehend resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Comprehend resource
    #   from which you want to remove the tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The initial part of a key-value pair that forms a tag being removed
    #   from a given resource. For example, a tag with "Sales" as the key
    #   might be added to a resource to indicate its use by the sales
    #   department. Keys must be unique and cannot be duplicated for a
    #   particular resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ComprehendArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates information about the specified endpoint. For information
    # about endpoints, see [Managing endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html
    #
    # @option params [required, String] :endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint being updated.
    #
    # @option params [String] :desired_model_arn
    #   The ARN of the new model to use when updating an existing endpoint.
    #
    # @option params [Integer] :desired_inference_units
    #   The desired number of inference units to be used by the model using
    #   this endpoint. Each inference unit represents of a throughput of 100
    #   characters per second.
    #
    # @option params [String] :desired_data_access_role_arn
    #   Data access role ARN to use in case the new model is encrypted with a
    #   customer CMK.
    #
    # @option params [String] :flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel
    #
    # @return [Types::UpdateEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointResponse#desired_model_arn #desired_model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint({
    #     endpoint_arn: "ComprehendEndpointArn", # required
    #     desired_model_arn: "ComprehendModelArn",
    #     desired_inference_units: 1,
    #     desired_data_access_role_arn: "IamRoleArn",
    #     flywheel_arn: "ComprehendFlywheelArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.desired_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UpdateEndpoint AWS API Documentation
    #
    # @overload update_endpoint(params = {})
    # @param [Hash] params ({})
    def update_endpoint(params = {}, options = {})
      req = build_request(:update_endpoint, params)
      req.send_request(options)
    end

    # Update the configuration information for an existing flywheel.
    #
    # @option params [required, String] :flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel to update.
    #
    # @option params [String] :active_model_arn
    #   The Amazon Resource Number (ARN) of the active model version.
    #
    # @option params [String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend permission to access the flywheel data.
    #
    # @option params [Types::UpdateDataSecurityConfig] :data_security_config
    #   Flywheel data security configuration.
    #
    # @return [Types::UpdateFlywheelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFlywheelResponse#flywheel_properties #flywheel_properties} => Types::FlywheelProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_flywheel({
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #     active_model_arn: "ComprehendModelArn",
    #     data_access_role_arn: "IamRoleArn",
    #     data_security_config: {
    #       model_kms_key_id: "KmsKeyId",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.flywheel_properties.flywheel_arn #=> String
    #   resp.flywheel_properties.active_model_arn #=> String
    #   resp.flywheel_properties.data_access_role_arn #=> String
    #   resp.flywheel_properties.task_config.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"
    #   resp.flywheel_properties.task_config.document_classification_config.mode #=> String, one of "MULTI_CLASS", "MULTI_LABEL"
    #   resp.flywheel_properties.task_config.document_classification_config.labels #=> Array
    #   resp.flywheel_properties.task_config.document_classification_config.labels[0] #=> String
    #   resp.flywheel_properties.task_config.entity_recognition_config.entity_types #=> Array
    #   resp.flywheel_properties.task_config.entity_recognition_config.entity_types[0].type #=> String
    #   resp.flywheel_properties.data_lake_s3_uri #=> String
    #   resp.flywheel_properties.data_security_config.model_kms_key_id #=> String
    #   resp.flywheel_properties.data_security_config.volume_kms_key_id #=> String
    #   resp.flywheel_properties.data_security_config.data_lake_kms_key_id #=> String
    #   resp.flywheel_properties.data_security_config.vpc_config.security_group_ids #=> Array
    #   resp.flywheel_properties.data_security_config.vpc_config.security_group_ids[0] #=> String
    #   resp.flywheel_properties.data_security_config.vpc_config.subnets #=> Array
    #   resp.flywheel_properties.data_security_config.vpc_config.subnets[0] #=> String
    #   resp.flywheel_properties.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.flywheel_properties.model_type #=> String, one of "DOCUMENT_CLASSIFIER", "ENTITY_RECOGNIZER"
    #   resp.flywheel_properties.message #=> String
    #   resp.flywheel_properties.creation_time #=> Time
    #   resp.flywheel_properties.last_modified_time #=> Time
    #   resp.flywheel_properties.latest_flywheel_iteration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UpdateFlywheel AWS API Documentation
    #
    # @overload update_flywheel(params = {})
    # @param [Hash] params ({})
    def update_flywheel(params = {}, options = {})
      req = build_request(:update_flywheel, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Comprehend')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-comprehend'
      context[:gem_version] = '1.102.0'
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
