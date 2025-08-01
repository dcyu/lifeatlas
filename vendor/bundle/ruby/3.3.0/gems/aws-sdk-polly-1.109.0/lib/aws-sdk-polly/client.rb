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

module Aws::Polly
  # An API client for Polly.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Polly::Client.new(
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

    @identifier = :polly

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
    add_plugin(Aws::Polly::Plugins::Endpoints)

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
    #   @option options [Aws::Polly::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Polly::EndpointParameters`.
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

    # Deletes the specified pronunciation lexicon stored in an Amazon Web
    # Services Region. A lexicon which has been deleted is not available for
    # speech synthesis, nor is it possible to retrieve it using either the
    # `GetLexicon` or `ListLexicon` APIs.
    #
    # For more information, see [Managing Lexicons][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html
    #
    # @option params [required, String] :name
    #   The name of the lexicon to delete. Must be an existing lexicon in the
    #   region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a lexicon
    #
    #   # Deletes a specified pronunciation lexicon stored in an AWS Region.
    #
    #   resp = client.delete_lexicon({
    #     name: "example", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lexicon({
    #     name: "LexiconName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/DeleteLexicon AWS API Documentation
    #
    # @overload delete_lexicon(params = {})
    # @param [Hash] params ({})
    def delete_lexicon(params = {}, options = {})
      req = build_request(:delete_lexicon, params)
      req.send_request(options)
    end

    # Returns the list of voices that are available for use when requesting
    # speech synthesis. Each voice speaks a specified language, is either
    # male or female, and is identified by an ID, which is the ASCII version
    # of the voice name.
    #
    # When synthesizing speech ( `SynthesizeSpeech` ), you provide the voice
    # ID for the voice you want from the list of voices returned by
    # `DescribeVoices`.
    #
    # For example, you want your news reader application to read news in a
    # specific language, but giving a user the option to choose the voice.
    # Using the `DescribeVoices` operation you can provide the user with a
    # list of available voices to select from.
    #
    # You can optionally specify a language code to filter the available
    # voices. For example, if you specify `en-US`, the operation returns a
    # list of all available US English voices.
    #
    # This operation requires permissions to perform the
    # `polly:DescribeVoices` action.
    #
    # @option params [String] :engine
    #   Specifies the engine (`standard`, `neural`, `long-form` or
    #   `generative`) used by Amazon Polly when processing input text for
    #   speech synthesis.
    #
    # @option params [String] :language_code
    #   The language identification tag (ISO 639 code for the language
    #   name-ISO 3166 country code) for filtering the list of voices returned.
    #   If you don't specify this optional parameter, all available voices
    #   are returned.
    #
    # @option params [Boolean] :include_additional_language_codes
    #   Boolean value indicating whether to return any bilingual voices that
    #   use the specified language as an additional language. For instance, if
    #   you request all languages that use US English (es-US), and there is an
    #   Italian voice that speaks both Italian (it-IT) and US English, that
    #   voice will be included if you specify `yes` but not if you specify
    #   `no`.
    #
    # @option params [String] :next_token
    #   An opaque pagination token returned from the previous `DescribeVoices`
    #   operation. If present, this indicates where to continue the listing.
    #
    # @return [Types::DescribeVoicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVoicesOutput#voices #voices} => Array&lt;Types::Voice&gt;
    #   * {Types::DescribeVoicesOutput#next_token #next_token} => String
    #
    #
    # @example Example: To describe available voices
    #
    #   # Returns the list of voices that are available for use when requesting speech synthesis. Displayed languages are those
    #   # within the specified language code. If no language code is specified, voices for all available languages are displayed.
    #
    #   resp = client.describe_voices({
    #     language_code: "en-GB", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     voices: [
    #       {
    #         gender: "Female", 
    #         id: "Emma", 
    #         language_code: "en-GB", 
    #         language_name: "British English", 
    #         name: "Emma", 
    #       }, 
    #       {
    #         gender: "Male", 
    #         id: "Brian", 
    #         language_code: "en-GB", 
    #         language_name: "British English", 
    #         name: "Brian", 
    #       }, 
    #       {
    #         gender: "Female", 
    #         id: "Amy", 
    #         language_code: "en-GB", 
    #         language_name: "British English", 
    #         name: "Amy", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_voices({
    #     engine: "standard", # accepts standard, neural, long-form, generative
    #     language_code: "arb", # accepts arb, cmn-CN, cy-GB, da-DK, de-DE, en-AU, en-GB, en-GB-WLS, en-IN, en-US, es-ES, es-MX, es-US, fr-CA, fr-FR, is-IS, it-IT, ja-JP, hi-IN, ko-KR, nb-NO, nl-NL, pl-PL, pt-BR, pt-PT, ro-RO, ru-RU, sv-SE, tr-TR, en-NZ, en-ZA, ca-ES, de-AT, yue-CN, ar-AE, fi-FI, en-IE, nl-BE, fr-BE, cs-CZ, de-CH, en-SG
    #     include_additional_language_codes: false,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.voices #=> Array
    #   resp.voices[0].gender #=> String, one of "Female", "Male"
    #   resp.voices[0].id #=> String, one of "Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah", "Arthur", "Daniel", "Liam", "Pedro", "Kajal", "Hiujin", "Laura", "Elin", "Ida", "Suvi", "Ola", "Hala", "Andres", "Sergio", "Remi", "Adriano", "Thiago", "Ruth", "Stephen", "Kazuha", "Tomoko", "Niamh", "Sofie", "Lisa", "Isabelle", "Zayd", "Danielle", "Gregory", "Burcu", "Jitka", "Sabrina", "Jasmine", "Jihye"
    #   resp.voices[0].language_code #=> String, one of "arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"
    #   resp.voices[0].language_name #=> String
    #   resp.voices[0].name #=> String
    #   resp.voices[0].additional_language_codes #=> Array
    #   resp.voices[0].additional_language_codes[0] #=> String, one of "arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"
    #   resp.voices[0].supported_engines #=> Array
    #   resp.voices[0].supported_engines[0] #=> String, one of "standard", "neural", "long-form", "generative"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/DescribeVoices AWS API Documentation
    #
    # @overload describe_voices(params = {})
    # @param [Hash] params ({})
    def describe_voices(params = {}, options = {})
      req = build_request(:describe_voices, params)
      req.send_request(options)
    end

    # Returns the content of the specified pronunciation lexicon stored in
    # an Amazon Web Services Region. For more information, see [Managing
    # Lexicons][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html
    #
    # @option params [required, String] :name
    #   Name of the lexicon.
    #
    # @return [Types::GetLexiconOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLexiconOutput#lexicon #lexicon} => Types::Lexicon
    #   * {Types::GetLexiconOutput#lexicon_attributes #lexicon_attributes} => Types::LexiconAttributes
    #
    #
    # @example Example: To retrieve a lexicon
    #
    #   # Returns the content of the specified pronunciation lexicon stored in an AWS Region.
    #
    #   resp = client.get_lexicon({
    #     name: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lexicon: {
    #       content: "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<lexicon version=\"1.0\" \r\n      xmlns=\"http://www.w3.org/2005/01/pronunciation-lexicon\"\r\n      xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \r\n      xsi:schemaLocation=\"http://www.w3.org/2005/01/pronunciation-lexicon \r\n        http://www.w3.org/TR/2007/CR-pronunciation-lexicon-20071212/pls.xsd\"\r\n      alphabet=\"ipa\" \r\n      xml:lang=\"en-US\">\r\n  <lexeme>\r\n    <grapheme>W3C</grapheme>\r\n    <alias>World Wide Web Consortium</alias>\r\n  </lexeme>\r\n</lexicon>", 
    #       name: "example", 
    #     }, 
    #     lexicon_attributes: {
    #       alphabet: "ipa", 
    #       language_code: "en-US", 
    #       last_modified: Time.parse(1478542980.117), 
    #       lexemes_count: 1, 
    #       lexicon_arn: "arn:aws:polly:us-east-1:123456789012:lexicon/example", 
    #       size: 503, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lexicon({
    #     name: "LexiconName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.lexicon.content #=> String
    #   resp.lexicon.name #=> String
    #   resp.lexicon_attributes.alphabet #=> String
    #   resp.lexicon_attributes.language_code #=> String, one of "arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"
    #   resp.lexicon_attributes.last_modified #=> Time
    #   resp.lexicon_attributes.lexicon_arn #=> String
    #   resp.lexicon_attributes.lexemes_count #=> Integer
    #   resp.lexicon_attributes.size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/GetLexicon AWS API Documentation
    #
    # @overload get_lexicon(params = {})
    # @param [Hash] params ({})
    def get_lexicon(params = {}, options = {})
      req = build_request(:get_lexicon, params)
      req.send_request(options)
    end

    # Retrieves a specific SpeechSynthesisTask object based on its TaskID.
    # This object contains information about the given speech synthesis
    # task, including the status of the task, and a link to the S3 bucket
    # containing the output of the task.
    #
    # @option params [required, String] :task_id
    #   The Amazon Polly generated identifier for a speech synthesis task.
    #
    # @return [Types::GetSpeechSynthesisTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSpeechSynthesisTaskOutput#synthesis_task #synthesis_task} => Types::SynthesisTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_speech_synthesis_task({
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.synthesis_task.engine #=> String, one of "standard", "neural", "long-form", "generative"
    #   resp.synthesis_task.task_id #=> String
    #   resp.synthesis_task.task_status #=> String, one of "scheduled", "inProgress", "completed", "failed"
    #   resp.synthesis_task.task_status_reason #=> String
    #   resp.synthesis_task.output_uri #=> String
    #   resp.synthesis_task.creation_time #=> Time
    #   resp.synthesis_task.request_characters #=> Integer
    #   resp.synthesis_task.sns_topic_arn #=> String
    #   resp.synthesis_task.lexicon_names #=> Array
    #   resp.synthesis_task.lexicon_names[0] #=> String
    #   resp.synthesis_task.output_format #=> String, one of "json", "mp3", "ogg_vorbis", "pcm"
    #   resp.synthesis_task.sample_rate #=> String
    #   resp.synthesis_task.speech_mark_types #=> Array
    #   resp.synthesis_task.speech_mark_types[0] #=> String, one of "sentence", "ssml", "viseme", "word"
    #   resp.synthesis_task.text_type #=> String, one of "ssml", "text"
    #   resp.synthesis_task.voice_id #=> String, one of "Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah", "Arthur", "Daniel", "Liam", "Pedro", "Kajal", "Hiujin", "Laura", "Elin", "Ida", "Suvi", "Ola", "Hala", "Andres", "Sergio", "Remi", "Adriano", "Thiago", "Ruth", "Stephen", "Kazuha", "Tomoko", "Niamh", "Sofie", "Lisa", "Isabelle", "Zayd", "Danielle", "Gregory", "Burcu", "Jitka", "Sabrina", "Jasmine", "Jihye"
    #   resp.synthesis_task.language_code #=> String, one of "arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/GetSpeechSynthesisTask AWS API Documentation
    #
    # @overload get_speech_synthesis_task(params = {})
    # @param [Hash] params ({})
    def get_speech_synthesis_task(params = {}, options = {})
      req = build_request(:get_speech_synthesis_task, params)
      req.send_request(options)
    end

    # Returns a list of pronunciation lexicons stored in an Amazon Web
    # Services Region. For more information, see [Managing Lexicons][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html
    #
    # @option params [String] :next_token
    #   An opaque pagination token returned from previous `ListLexicons`
    #   operation. If present, indicates where to continue the list of
    #   lexicons.
    #
    # @return [Types::ListLexiconsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLexiconsOutput#lexicons #lexicons} => Array&lt;Types::LexiconDescription&gt;
    #   * {Types::ListLexiconsOutput#next_token #next_token} => String
    #
    #
    # @example Example: To list all lexicons in a region
    #
    #   # Returns a list of pronunciation lexicons stored in an AWS Region.
    #
    #   resp = client.list_lexicons({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lexicons: [
    #       {
    #         attributes: {
    #           alphabet: "ipa", 
    #           language_code: "en-US", 
    #           last_modified: Time.parse(1478542980.117), 
    #           lexemes_count: 1, 
    #           lexicon_arn: "arn:aws:polly:us-east-1:123456789012:lexicon/example", 
    #           size: 503, 
    #         }, 
    #         name: "example", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lexicons({
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.lexicons #=> Array
    #   resp.lexicons[0].name #=> String
    #   resp.lexicons[0].attributes.alphabet #=> String
    #   resp.lexicons[0].attributes.language_code #=> String, one of "arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"
    #   resp.lexicons[0].attributes.last_modified #=> Time
    #   resp.lexicons[0].attributes.lexicon_arn #=> String
    #   resp.lexicons[0].attributes.lexemes_count #=> Integer
    #   resp.lexicons[0].attributes.size #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/ListLexicons AWS API Documentation
    #
    # @overload list_lexicons(params = {})
    # @param [Hash] params ({})
    def list_lexicons(params = {}, options = {})
      req = build_request(:list_lexicons, params)
      req.send_request(options)
    end

    # Returns a list of SpeechSynthesisTask objects ordered by their
    # creation date. This operation can filter the tasks by their status,
    # for example, allowing users to list only tasks that are completed.
    #
    # @option params [Integer] :max_results
    #   Maximum number of speech synthesis tasks returned in a List operation.
    #
    # @option params [String] :next_token
    #   The pagination token to use in the next request to continue the
    #   listing of speech synthesis tasks.
    #
    # @option params [String] :status
    #   Status of the speech synthesis tasks returned in a List operation
    #
    # @return [Types::ListSpeechSynthesisTasksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSpeechSynthesisTasksOutput#next_token #next_token} => String
    #   * {Types::ListSpeechSynthesisTasksOutput#synthesis_tasks #synthesis_tasks} => Array&lt;Types::SynthesisTask&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_speech_synthesis_tasks({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "scheduled", # accepts scheduled, inProgress, completed, failed
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.synthesis_tasks #=> Array
    #   resp.synthesis_tasks[0].engine #=> String, one of "standard", "neural", "long-form", "generative"
    #   resp.synthesis_tasks[0].task_id #=> String
    #   resp.synthesis_tasks[0].task_status #=> String, one of "scheduled", "inProgress", "completed", "failed"
    #   resp.synthesis_tasks[0].task_status_reason #=> String
    #   resp.synthesis_tasks[0].output_uri #=> String
    #   resp.synthesis_tasks[0].creation_time #=> Time
    #   resp.synthesis_tasks[0].request_characters #=> Integer
    #   resp.synthesis_tasks[0].sns_topic_arn #=> String
    #   resp.synthesis_tasks[0].lexicon_names #=> Array
    #   resp.synthesis_tasks[0].lexicon_names[0] #=> String
    #   resp.synthesis_tasks[0].output_format #=> String, one of "json", "mp3", "ogg_vorbis", "pcm"
    #   resp.synthesis_tasks[0].sample_rate #=> String
    #   resp.synthesis_tasks[0].speech_mark_types #=> Array
    #   resp.synthesis_tasks[0].speech_mark_types[0] #=> String, one of "sentence", "ssml", "viseme", "word"
    #   resp.synthesis_tasks[0].text_type #=> String, one of "ssml", "text"
    #   resp.synthesis_tasks[0].voice_id #=> String, one of "Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah", "Arthur", "Daniel", "Liam", "Pedro", "Kajal", "Hiujin", "Laura", "Elin", "Ida", "Suvi", "Ola", "Hala", "Andres", "Sergio", "Remi", "Adriano", "Thiago", "Ruth", "Stephen", "Kazuha", "Tomoko", "Niamh", "Sofie", "Lisa", "Isabelle", "Zayd", "Danielle", "Gregory", "Burcu", "Jitka", "Sabrina", "Jasmine", "Jihye"
    #   resp.synthesis_tasks[0].language_code #=> String, one of "arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/ListSpeechSynthesisTasks AWS API Documentation
    #
    # @overload list_speech_synthesis_tasks(params = {})
    # @param [Hash] params ({})
    def list_speech_synthesis_tasks(params = {}, options = {})
      req = build_request(:list_speech_synthesis_tasks, params)
      req.send_request(options)
    end

    # Stores a pronunciation lexicon in an Amazon Web Services Region. If a
    # lexicon with the same name already exists in the region, it is
    # overwritten by the new lexicon. Lexicon operations have eventual
    # consistency, therefore, it might take some time before the lexicon is
    # available to the SynthesizeSpeech operation.
    #
    # For more information, see [Managing Lexicons][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html
    #
    # @option params [required, String] :name
    #   Name of the lexicon. The name must follow the regular express format
    #   \[0-9A-Za-z\]\{1,20}. That is, the name is a case-sensitive
    #   alphanumeric string up to 20 characters long.
    #
    # @option params [required, String] :content
    #   Content of the PLS lexicon as string data.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To save a lexicon
    #
    #   # Stores a pronunciation lexicon in an AWS Region.
    #
    #   resp = client.put_lexicon({
    #     content: "<Lexicon Content>", 
    #     name: "W3C", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lexicon({
    #     name: "LexiconName", # required
    #     content: "LexiconContent", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/PutLexicon AWS API Documentation
    #
    # @overload put_lexicon(params = {})
    # @param [Hash] params ({})
    def put_lexicon(params = {}, options = {})
      req = build_request(:put_lexicon, params)
      req.send_request(options)
    end

    # Allows the creation of an asynchronous synthesis task, by starting a
    # new `SpeechSynthesisTask`. This operation requires all the standard
    # information needed for speech synthesis, plus the name of an Amazon S3
    # bucket for the service to store the output of the synthesis task and
    # two optional parameters (`OutputS3KeyPrefix` and `SnsTopicArn`). Once
    # the synthesis task is created, this operation will return a
    # `SpeechSynthesisTask` object, which will include an identifier of this
    # task as well as the current status. The `SpeechSynthesisTask` object
    # is available for 72 hours after starting the asynchronous synthesis
    # task.
    #
    # @option params [String] :engine
    #   Specifies the engine (`standard`, `neural`, `long-form` or
    #   `generative`) for Amazon Polly to use when processing input text for
    #   speech synthesis. Using a voice that is not supported for the engine
    #   selected will result in an error.
    #
    # @option params [String] :language_code
    #   Optional language code for the Speech Synthesis request. This is only
    #   necessary if using a bilingual voice, such as Aditi, which can be used
    #   for either Indian English (en-IN) or Hindi (hi-IN).
    #
    #   If a bilingual voice is used and no language code is specified, Amazon
    #   Polly uses the default language of the bilingual voice. The default
    #   language for any voice is the one returned by the [DescribeVoices][1]
    #   operation for the `LanguageCode` parameter. For example, if no
    #   language code is specified, Aditi will use Indian English rather than
    #   Hindi.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html
    #
    # @option params [Array<String>] :lexicon_names
    #   List of one or more pronunciation lexicon names you want the service
    #   to apply during synthesis. Lexicons are applied only if the language
    #   of the lexicon is the same as the language of the voice.
    #
    # @option params [required, String] :output_format
    #   The format in which the returned output will be encoded. For audio
    #   stream, this will be mp3, ogg\_vorbis, or pcm. For speech marks, this
    #   will be json.
    #
    # @option params [required, String] :output_s3_bucket_name
    #   Amazon S3 bucket name to which the output file will be saved.
    #
    # @option params [String] :output_s3_key_prefix
    #   The Amazon S3 key prefix for the output speech file.
    #
    # @option params [String] :sample_rate
    #   The audio frequency specified in Hz.
    #
    #   The valid values for mp3 and ogg\_vorbis are "8000", "16000",
    #   "22050", and "24000". The default value for standard voices is
    #   "22050". The default value for neural voices is "24000". The
    #   default value for long-form voices is "24000". The default value for
    #   generative voices is "24000".
    #
    #   Valid values for pcm are "8000" and "16000" The default value is
    #   "16000".
    #
    # @option params [String] :sns_topic_arn
    #   ARN for the SNS topic optionally used for providing status
    #   notification for a speech synthesis task.
    #
    # @option params [Array<String>] :speech_mark_types
    #   The type of speech marks returned for the input text.
    #
    # @option params [required, String] :text
    #   The input text to synthesize. If you specify ssml as the TextType,
    #   follow the SSML format for the input text.
    #
    # @option params [String] :text_type
    #   Specifies whether the input text is plain text or SSML. The default
    #   value is plain text.
    #
    # @option params [required, String] :voice_id
    #   Voice ID to use for the synthesis.
    #
    # @return [Types::StartSpeechSynthesisTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSpeechSynthesisTaskOutput#synthesis_task #synthesis_task} => Types::SynthesisTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_speech_synthesis_task({
    #     engine: "standard", # accepts standard, neural, long-form, generative
    #     language_code: "arb", # accepts arb, cmn-CN, cy-GB, da-DK, de-DE, en-AU, en-GB, en-GB-WLS, en-IN, en-US, es-ES, es-MX, es-US, fr-CA, fr-FR, is-IS, it-IT, ja-JP, hi-IN, ko-KR, nb-NO, nl-NL, pl-PL, pt-BR, pt-PT, ro-RO, ru-RU, sv-SE, tr-TR, en-NZ, en-ZA, ca-ES, de-AT, yue-CN, ar-AE, fi-FI, en-IE, nl-BE, fr-BE, cs-CZ, de-CH, en-SG
    #     lexicon_names: ["LexiconName"],
    #     output_format: "json", # required, accepts json, mp3, ogg_vorbis, pcm
    #     output_s3_bucket_name: "OutputS3BucketName", # required
    #     output_s3_key_prefix: "OutputS3KeyPrefix",
    #     sample_rate: "SampleRate",
    #     sns_topic_arn: "SnsTopicArn",
    #     speech_mark_types: ["sentence"], # accepts sentence, ssml, viseme, word
    #     text: "Text", # required
    #     text_type: "ssml", # accepts ssml, text
    #     voice_id: "Aditi", # required, accepts Aditi, Amy, Astrid, Bianca, Brian, Camila, Carla, Carmen, Celine, Chantal, Conchita, Cristiano, Dora, Emma, Enrique, Ewa, Filiz, Gabrielle, Geraint, Giorgio, Gwyneth, Hans, Ines, Ivy, Jacek, Jan, Joanna, Joey, Justin, Karl, Kendra, Kevin, Kimberly, Lea, Liv, Lotte, Lucia, Lupe, Mads, Maja, Marlene, Mathieu, Matthew, Maxim, Mia, Miguel, Mizuki, Naja, Nicole, Olivia, Penelope, Raveena, Ricardo, Ruben, Russell, Salli, Seoyeon, Takumi, Tatyana, Vicki, Vitoria, Zeina, Zhiyu, Aria, Ayanda, Arlet, Hannah, Arthur, Daniel, Liam, Pedro, Kajal, Hiujin, Laura, Elin, Ida, Suvi, Ola, Hala, Andres, Sergio, Remi, Adriano, Thiago, Ruth, Stephen, Kazuha, Tomoko, Niamh, Sofie, Lisa, Isabelle, Zayd, Danielle, Gregory, Burcu, Jitka, Sabrina, Jasmine, Jihye
    #   })
    #
    # @example Response structure
    #
    #   resp.synthesis_task.engine #=> String, one of "standard", "neural", "long-form", "generative"
    #   resp.synthesis_task.task_id #=> String
    #   resp.synthesis_task.task_status #=> String, one of "scheduled", "inProgress", "completed", "failed"
    #   resp.synthesis_task.task_status_reason #=> String
    #   resp.synthesis_task.output_uri #=> String
    #   resp.synthesis_task.creation_time #=> Time
    #   resp.synthesis_task.request_characters #=> Integer
    #   resp.synthesis_task.sns_topic_arn #=> String
    #   resp.synthesis_task.lexicon_names #=> Array
    #   resp.synthesis_task.lexicon_names[0] #=> String
    #   resp.synthesis_task.output_format #=> String, one of "json", "mp3", "ogg_vorbis", "pcm"
    #   resp.synthesis_task.sample_rate #=> String
    #   resp.synthesis_task.speech_mark_types #=> Array
    #   resp.synthesis_task.speech_mark_types[0] #=> String, one of "sentence", "ssml", "viseme", "word"
    #   resp.synthesis_task.text_type #=> String, one of "ssml", "text"
    #   resp.synthesis_task.voice_id #=> String, one of "Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah", "Arthur", "Daniel", "Liam", "Pedro", "Kajal", "Hiujin", "Laura", "Elin", "Ida", "Suvi", "Ola", "Hala", "Andres", "Sergio", "Remi", "Adriano", "Thiago", "Ruth", "Stephen", "Kazuha", "Tomoko", "Niamh", "Sofie", "Lisa", "Isabelle", "Zayd", "Danielle", "Gregory", "Burcu", "Jitka", "Sabrina", "Jasmine", "Jihye"
    #   resp.synthesis_task.language_code #=> String, one of "arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/StartSpeechSynthesisTask AWS API Documentation
    #
    # @overload start_speech_synthesis_task(params = {})
    # @param [Hash] params ({})
    def start_speech_synthesis_task(params = {}, options = {})
      req = build_request(:start_speech_synthesis_task, params)
      req.send_request(options)
    end

    # Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes.
    # SSML input must be valid, well-formed SSML. Some alphabets might not
    # be available with all the voices (for example, Cyrillic might not be
    # read at all by English voices) unless phoneme mapping is used. For
    # more information, see [How it Works][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html
    #
    # @option params [String] :engine
    #   Specifies the engine (`standard`, `neural`, `long-form`, or
    #   `generative`) for Amazon Polly to use when processing input text for
    #   speech synthesis. Provide an engine that is supported by the voice you
    #   select. If you don't provide an engine, the standard engine is
    #   selected by default. If a chosen voice isn't supported by the
    #   standard engine, this will result in an error. For information on
    #   Amazon Polly voices and which voices are available for each engine,
    #   see [Available Voices][1].
    #
    #   Type: String
    #
    #   Valid Values: `standard` \| `neural` \| `long-form` \| `generative`
    #
    #   Required: Yes
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/voicelist.html
    #
    # @option params [String] :language_code
    #   Optional language code for the Synthesize Speech request. This is only
    #   necessary if using a bilingual voice, such as Aditi, which can be used
    #   for either Indian English (en-IN) or Hindi (hi-IN).
    #
    #   If a bilingual voice is used and no language code is specified, Amazon
    #   Polly uses the default language of the bilingual voice. The default
    #   language for any voice is the one returned by the [DescribeVoices][1]
    #   operation for the `LanguageCode` parameter. For example, if no
    #   language code is specified, Aditi will use Indian English rather than
    #   Hindi.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html
    #
    # @option params [Array<String>] :lexicon_names
    #   List of one or more pronunciation lexicon names you want the service
    #   to apply during synthesis. Lexicons are applied only if the language
    #   of the lexicon is the same as the language of the voice. For
    #   information about storing lexicons, see [PutLexicon][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html
    #
    # @option params [required, String] :output_format
    #   The format in which the returned output will be encoded. For audio
    #   stream, this will be mp3, ogg\_vorbis, or pcm. For speech marks, this
    #   will be json.
    #
    #   When pcm is used, the content returned is audio/pcm in a signed
    #   16-bit, 1 channel (mono), little-endian format.
    #
    # @option params [String] :sample_rate
    #   The audio frequency specified in Hz.
    #
    #   The valid values for mp3 and ogg\_vorbis are "8000", "16000",
    #   "22050", and "24000". The default value for standard voices is
    #   "22050". The default value for neural voices is "24000". The
    #   default value for long-form voices is "24000". The default value for
    #   generative voices is "24000".
    #
    #   Valid values for pcm are "8000" and "16000" The default value is
    #   "16000".
    #
    # @option params [Array<String>] :speech_mark_types
    #   The type of speech marks returned for the input text.
    #
    # @option params [required, String] :text
    #   Input text to synthesize. If you specify `ssml` as the `TextType`,
    #   follow the SSML format for the input text.
    #
    # @option params [String] :text_type
    #   Specifies whether the input text is plain text or SSML. The default
    #   value is plain text. For more information, see [Using SSML][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/ssml.html
    #
    # @option params [required, String] :voice_id
    #   Voice ID to use for the synthesis. You can get a list of available
    #   voice IDs by calling the [DescribeVoices][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html
    #
    # @return [Types::SynthesizeSpeechOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SynthesizeSpeechOutput#audio_stream #audio_stream} => IO
    #   * {Types::SynthesizeSpeechOutput#content_type #content_type} => String
    #   * {Types::SynthesizeSpeechOutput#request_characters #request_characters} => Integer
    #
    #
    # @example Example: To synthesize speech
    #
    #   # Synthesizes plain text or SSML into a file of human-like speech.
    #
    #   resp = client.synthesize_speech({
    #     lexicon_names: [
    #       "example", 
    #     ], 
    #     output_format: "mp3", 
    #     sample_rate: "8000", 
    #     text: "All Gaul is divided into three parts", 
    #     text_type: "text", 
    #     voice_id: "Joanna", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     audio_stream: "TEXT", 
    #     content_type: "audio/mpeg", 
    #     request_characters: 37, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.synthesize_speech({
    #     engine: "standard", # accepts standard, neural, long-form, generative
    #     language_code: "arb", # accepts arb, cmn-CN, cy-GB, da-DK, de-DE, en-AU, en-GB, en-GB-WLS, en-IN, en-US, es-ES, es-MX, es-US, fr-CA, fr-FR, is-IS, it-IT, ja-JP, hi-IN, ko-KR, nb-NO, nl-NL, pl-PL, pt-BR, pt-PT, ro-RO, ru-RU, sv-SE, tr-TR, en-NZ, en-ZA, ca-ES, de-AT, yue-CN, ar-AE, fi-FI, en-IE, nl-BE, fr-BE, cs-CZ, de-CH, en-SG
    #     lexicon_names: ["LexiconName"],
    #     output_format: "json", # required, accepts json, mp3, ogg_vorbis, pcm
    #     sample_rate: "SampleRate",
    #     speech_mark_types: ["sentence"], # accepts sentence, ssml, viseme, word
    #     text: "Text", # required
    #     text_type: "ssml", # accepts ssml, text
    #     voice_id: "Aditi", # required, accepts Aditi, Amy, Astrid, Bianca, Brian, Camila, Carla, Carmen, Celine, Chantal, Conchita, Cristiano, Dora, Emma, Enrique, Ewa, Filiz, Gabrielle, Geraint, Giorgio, Gwyneth, Hans, Ines, Ivy, Jacek, Jan, Joanna, Joey, Justin, Karl, Kendra, Kevin, Kimberly, Lea, Liv, Lotte, Lucia, Lupe, Mads, Maja, Marlene, Mathieu, Matthew, Maxim, Mia, Miguel, Mizuki, Naja, Nicole, Olivia, Penelope, Raveena, Ricardo, Ruben, Russell, Salli, Seoyeon, Takumi, Tatyana, Vicki, Vitoria, Zeina, Zhiyu, Aria, Ayanda, Arlet, Hannah, Arthur, Daniel, Liam, Pedro, Kajal, Hiujin, Laura, Elin, Ida, Suvi, Ola, Hala, Andres, Sergio, Remi, Adriano, Thiago, Ruth, Stephen, Kazuha, Tomoko, Niamh, Sofie, Lisa, Isabelle, Zayd, Danielle, Gregory, Burcu, Jitka, Sabrina, Jasmine, Jihye
    #   })
    #
    # @example Response structure
    #
    #   resp.audio_stream #=> IO
    #   resp.content_type #=> String
    #   resp.request_characters #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10/SynthesizeSpeech AWS API Documentation
    #
    # @overload synthesize_speech(params = {})
    # @param [Hash] params ({})
    def synthesize_speech(params = {}, options = {}, &block)
      req = build_request(:synthesize_speech, params)
      req.send_request(options, &block)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Polly')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-polly'
      context[:gem_version] = '1.109.0'
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
