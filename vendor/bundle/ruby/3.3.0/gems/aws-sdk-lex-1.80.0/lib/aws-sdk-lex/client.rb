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

module Aws::Lex
  # An API client for Lex.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Lex::Client.new(
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

    @identifier = :lex

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
    add_plugin(Aws::Lex::Plugins::Endpoints)

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
    #   @option options [Aws::Lex::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Lex::EndpointParameters`.
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

    # Removes session information for a specified bot, alias, and user ID.
    #
    # @option params [required, String] :bot_name
    #   The name of the bot that contains the session data.
    #
    # @option params [required, String] :bot_alias
    #   The alias in use for the bot that contains the session data.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user associated with the session data.
    #
    # @return [Types::DeleteSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSessionResponse#bot_name #bot_name} => String
    #   * {Types::DeleteSessionResponse#bot_alias #bot_alias} => String
    #   * {Types::DeleteSessionResponse#user_id #user_id} => String
    #   * {Types::DeleteSessionResponse#session_id #session_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_session({
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_name #=> String
    #   resp.bot_alias #=> String
    #   resp.user_id #=> String
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/DeleteSession AWS API Documentation
    #
    # @overload delete_session(params = {})
    # @param [Hash] params ({})
    def delete_session(params = {}, options = {})
      req = build_request(:delete_session, params)
      req.send_request(options)
    end

    # Returns session information for a specified bot, alias, and user ID.
    #
    # @option params [required, String] :bot_name
    #   The name of the bot that contains the session data.
    #
    # @option params [required, String] :bot_alias
    #   The alias in use for the bot that contains the session data.
    #
    # @option params [required, String] :user_id
    #   The ID of the client application user. Amazon Lex uses this to
    #   identify a user's conversation with your bot.
    #
    # @option params [String] :checkpoint_label_filter
    #   A string used to filter the intents returned in the
    #   `recentIntentSummaryView` structure.
    #
    #   When you specify a filter, only intents with their `checkpointLabel`
    #   field set to that string are returned.
    #
    # @return [Types::GetSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionResponse#recent_intent_summary_view #recent_intent_summary_view} => Array&lt;Types::IntentSummary&gt;
    #   * {Types::GetSessionResponse#session_attributes #session_attributes} => Hash&lt;String,String&gt;
    #   * {Types::GetSessionResponse#session_id #session_id} => String
    #   * {Types::GetSessionResponse#dialog_action #dialog_action} => Types::DialogAction
    #   * {Types::GetSessionResponse#active_contexts #active_contexts} => Array&lt;Types::ActiveContext&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session({
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #     checkpoint_label_filter: "IntentSummaryCheckpointLabel",
    #   })
    #
    # @example Response structure
    #
    #   resp.recent_intent_summary_view #=> Array
    #   resp.recent_intent_summary_view[0].intent_name #=> String
    #   resp.recent_intent_summary_view[0].checkpoint_label #=> String
    #   resp.recent_intent_summary_view[0].slots #=> Hash
    #   resp.recent_intent_summary_view[0].slots["String"] #=> String
    #   resp.recent_intent_summary_view[0].confirmation_status #=> String, one of "None", "Confirmed", "Denied"
    #   resp.recent_intent_summary_view[0].dialog_action_type #=> String, one of "ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"
    #   resp.recent_intent_summary_view[0].fulfillment_state #=> String, one of "Fulfilled", "Failed", "ReadyForFulfillment"
    #   resp.recent_intent_summary_view[0].slot_to_elicit #=> String
    #   resp.session_attributes #=> Hash
    #   resp.session_attributes["String"] #=> String
    #   resp.session_id #=> String
    #   resp.dialog_action.type #=> String, one of "ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"
    #   resp.dialog_action.intent_name #=> String
    #   resp.dialog_action.slots #=> Hash
    #   resp.dialog_action.slots["String"] #=> String
    #   resp.dialog_action.slot_to_elicit #=> String
    #   resp.dialog_action.fulfillment_state #=> String, one of "Fulfilled", "Failed", "ReadyForFulfillment"
    #   resp.dialog_action.message #=> String
    #   resp.dialog_action.message_format #=> String, one of "PlainText", "CustomPayload", "SSML", "Composite"
    #   resp.active_contexts #=> Array
    #   resp.active_contexts[0].name #=> String
    #   resp.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
    #   resp.active_contexts[0].time_to_live.turns_to_live #=> Integer
    #   resp.active_contexts[0].parameters #=> Hash
    #   resp.active_contexts[0].parameters["ParameterName"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/GetSession AWS API Documentation
    #
    # @overload get_session(params = {})
    # @param [Hash] params ({})
    def get_session(params = {}, options = {})
      req = build_request(:get_session, params)
      req.send_request(options)
    end

    # Sends user input (text or speech) to Amazon Lex. Clients use this API
    # to send text and audio requests to Amazon Lex at runtime. Amazon Lex
    # interprets the user input using the machine learning model that it
    # built for the bot.
    #
    # The `PostContent` operation supports audio input at 8kHz and 16kHz.
    # You can use 8kHz audio to achieve higher speech recognition accuracy
    # in telephone audio applications.
    #
    # In response, Amazon Lex returns the next message to convey to the
    # user. Consider the following example messages:
    #
    # * For a user input "I would like a pizza," Amazon Lex might return a
    #   response with a message eliciting slot data (for example,
    #   `PizzaSize`): "What size pizza would you like?".
    #
    # * After the user provides all of the pizza order information, Amazon
    #   Lex might return a response with a message to get user confirmation:
    #   "Order the pizza?".
    #
    # * After the user replies "Yes" to the confirmation prompt, Amazon
    #   Lex might return a conclusion statement: "Thank you, your cheese
    #   pizza has been ordered.".
    #
    # Not all Amazon Lex messages require a response from the user. For
    # example, conclusion statements do not require a response. Some
    # messages require only a yes or no response. In addition to the
    # `message`, Amazon Lex provides additional context about the message in
    # the response that you can use to enhance client behavior, such as
    # displaying the appropriate client user interface. Consider the
    # following examples:
    #
    # * If the message is to elicit slot data, Amazon Lex returns the
    #   following context information:
    #
    #   * `x-amz-lex-dialog-state` header set to `ElicitSlot`
    #
    #   * `x-amz-lex-intent-name` header set to the intent name in the
    #     current context
    #
    #   * `x-amz-lex-slot-to-elicit` header set to the slot name for which
    #     the `message` is eliciting information
    #
    #   * `x-amz-lex-slots` header set to a map of slots configured for the
    #     intent with their current values
    # * If the message is a confirmation prompt, the
    #   `x-amz-lex-dialog-state` header is set to `Confirmation` and the
    #   `x-amz-lex-slot-to-elicit` header is omitted.
    #
    # * If the message is a clarification prompt configured for the intent,
    #   indicating that the user intent is not understood, the
    #   `x-amz-dialog-state` header is set to `ElicitIntent` and the
    #   `x-amz-slot-to-elicit` header is omitted.
    #
    # In addition, Amazon Lex also returns your application-specific
    # `sessionAttributes`. For more information, see [Managing Conversation
    # Context][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html
    #
    # @option params [required, String] :bot_name
    #   Name of the Amazon Lex bot.
    #
    # @option params [required, String] :bot_alias
    #   Alias of the Amazon Lex bot.
    #
    # @option params [required, String] :user_id
    #   The ID of the client application user. Amazon Lex uses this to
    #   identify a user's conversation with your bot. At runtime, each
    #   request must contain the `userID` field.
    #
    #   To decide the user ID to use for your application, consider the
    #   following factors.
    #
    #   * The `userID` field must not contain any personally identifiable
    #     information of the user, for example, name, personal identification
    #     numbers, or other end user personal information.
    #
    #   * If you want a user to start a conversation on one device and
    #     continue on another device, use a user-specific identifier.
    #
    #   * If you want the same user to be able to have two independent
    #     conversations on two different devices, choose a device-specific
    #     identifier.
    #
    #   * A user can't have two independent conversations with two different
    #     versions of the same bot. For example, a user can't have a
    #     conversation with the PROD and BETA versions of the same bot. If you
    #     anticipate that a user will need to have conversation with two
    #     different versions, for example, while testing, include the bot
    #     alias in the user ID to separate the two conversations.
    #
    # @option params [String] :session_attributes
    #   You pass this value as the `x-amz-lex-session-attributes` HTTP header.
    #
    #   Application-specific information passed between Amazon Lex and a
    #   client application. The value must be a JSON serialized and base64
    #   encoded map with string keys and values. The total size of the
    #   `sessionAttributes` and `requestAttributes` headers is limited to 12
    #   KB.
    #
    #   For more information, see [Setting Session Attributes][1].
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs
    #
    # @option params [String] :request_attributes
    #   You pass this value as the `x-amz-lex-request-attributes` HTTP header.
    #
    #   Request-specific information passed between Amazon Lex and a client
    #   application. The value must be a JSON serialized and base64 encoded
    #   map with string keys and values. The total size of the
    #   `requestAttributes` and `sessionAttributes` headers is limited to 12
    #   KB.
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes. Don't
    #   create any request attributes with the prefix `x-amz-lex:`.
    #
    #   For more information, see [Setting Request Attributes][1].
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs
    #
    # @option params [required, String] :content_type
    #   You pass this value as the `Content-Type` HTTP header.
    #
    #   Indicates the audio format or text. The header value must start with
    #   one of the following prefixes:
    #
    #   * PCM format, audio data must be in little-endian byte order.
    #
    #     * audio/l16; rate=16000; channels=1
    #
    #     * audio/x-l16; sample-rate=16000; channel-count=1
    #
    #     * audio/lpcm; sample-rate=8000; sample-size-bits=16;
    #       channel-count=1; is-big-endian=false
    #   * Opus format
    #
    #     * audio/x-cbr-opus-with-preamble; preamble-size=0; bit-rate=256000;
    #       frame-size-milliseconds=4
    #
    #     ^
    #   * Text format
    #
    #     * text/plain; charset=utf-8
    #
    #     ^
    #
    # @option params [String] :accept
    #   You pass this value as the `Accept` HTTP header.
    #
    #   The message Amazon Lex returns in the response can be either text or
    #   speech based on the `Accept` HTTP header value in the request.
    #
    #   * If the value is `text/plain; charset=utf-8`, Amazon Lex returns text
    #     in the response.
    #
    #   * If the value begins with `audio/`, Amazon Lex returns speech in the
    #     response. Amazon Lex uses Amazon Polly to generate the speech (using
    #     the configuration you specified in the `Accept` header). For
    #     example, if you specify `audio/mpeg` as the value, Amazon Lex
    #     returns speech in the MPEG format.
    #
    #   * If the value is `audio/pcm`, the speech returned is `audio/pcm` in
    #     16-bit, little endian format.
    #
    #   * The following are the accepted values:
    #
    #     * audio/mpeg
    #
    #     * audio/ogg
    #
    #     * audio/pcm
    #
    #     * text/plain; charset=utf-8
    #
    #     * audio/* (defaults to mpeg)
    #
    # @option params [required, String, IO] :input_stream
    #   User input in PCM or Opus audio format or text format as described in
    #   the `Content-Type` HTTP header.
    #
    #   You can stream audio data to Amazon Lex or you can create a local
    #   buffer that captures all of the audio data before sending. In general,
    #   you get better performance if you stream audio data rather than
    #   buffering the data locally.
    #
    # @option params [String] :active_contexts
    #   A list of contexts active for the request. A context can be activated
    #   when a previous intent is fulfilled, or by including the context in
    #   the request,
    #
    #   If you don't specify a list of contexts, Amazon Lex will use the
    #   current list of contexts for the session. If you specify an empty
    #   list, all contexts for the session are cleared.
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    # @return [Types::PostContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PostContentResponse#content_type #content_type} => String
    #   * {Types::PostContentResponse#intent_name #intent_name} => String
    #   * {Types::PostContentResponse#nlu_intent_confidence #nlu_intent_confidence} => String
    #   * {Types::PostContentResponse#alternative_intents #alternative_intents} => String
    #   * {Types::PostContentResponse#slots #slots} => String
    #   * {Types::PostContentResponse#session_attributes #session_attributes} => String
    #   * {Types::PostContentResponse#sentiment_response #sentiment_response} => String
    #   * {Types::PostContentResponse#message #message} => String
    #   * {Types::PostContentResponse#encoded_message #encoded_message} => String
    #   * {Types::PostContentResponse#message_format #message_format} => String
    #   * {Types::PostContentResponse#dialog_state #dialog_state} => String
    #   * {Types::PostContentResponse#slot_to_elicit #slot_to_elicit} => String
    #   * {Types::PostContentResponse#input_transcript #input_transcript} => String
    #   * {Types::PostContentResponse#encoded_input_transcript #encoded_input_transcript} => String
    #   * {Types::PostContentResponse#audio_stream #audio_stream} => IO
    #   * {Types::PostContentResponse#bot_version #bot_version} => String
    #   * {Types::PostContentResponse#session_id #session_id} => String
    #   * {Types::PostContentResponse#active_contexts #active_contexts} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_content({
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #     session_attributes: "AttributesString",
    #     request_attributes: "AttributesString",
    #     content_type: "HttpContentType", # required
    #     accept: "Accept",
    #     input_stream: "data", # required
    #     active_contexts: "ActiveContextsString",
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.intent_name #=> String
    #   resp.nlu_intent_confidence #=> String
    #   resp.alternative_intents #=> String
    #   resp.slots #=> String
    #   resp.session_attributes #=> String
    #   resp.sentiment_response #=> String
    #   resp.message #=> String
    #   resp.encoded_message #=> String
    #   resp.message_format #=> String, one of "PlainText", "CustomPayload", "SSML", "Composite"
    #   resp.dialog_state #=> String, one of "ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"
    #   resp.slot_to_elicit #=> String
    #   resp.input_transcript #=> String
    #   resp.encoded_input_transcript #=> String
    #   resp.audio_stream #=> IO
    #   resp.bot_version #=> String
    #   resp.session_id #=> String
    #   resp.active_contexts #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostContent AWS API Documentation
    #
    # @overload post_content(params = {})
    # @param [Hash] params ({})
    def post_content(params = {}, options = {}, &block)
      req = build_request(:post_content, params)
      req.send_request(options, &block)
    end

    # Sends user input to Amazon Lex. Client applications can use this API
    # to send requests to Amazon Lex at runtime. Amazon Lex then interprets
    # the user input using the machine learning model it built for the bot.
    #
    # In response, Amazon Lex returns the next `message` to convey to the
    # user an optional `responseCard` to display. Consider the following
    # example messages:
    #
    # * For a user input "I would like a pizza", Amazon Lex might return a
    #   response with a message eliciting slot data (for example,
    #   PizzaSize): "What size pizza would you like?"
    #
    # * After the user provides all of the pizza order information, Amazon
    #   Lex might return a response with a message to obtain user
    #   confirmation "Proceed with the pizza order?".
    #
    # * After the user replies to a confirmation prompt with a "yes",
    #   Amazon Lex might return a conclusion statement: "Thank you, your
    #   cheese pizza has been ordered.".
    #
    # Not all Amazon Lex messages require a user response. For example, a
    # conclusion statement does not require a response. Some messages
    # require only a "yes" or "no" user response. In addition to the
    # `message`, Amazon Lex provides additional context about the message in
    # the response that you might use to enhance client behavior, for
    # example, to display the appropriate client user interface. These are
    # the `slotToElicit`, `dialogState`, `intentName`, and `slots` fields in
    # the response. Consider the following examples:
    #
    # * If the message is to elicit slot data, Amazon Lex returns the
    #   following context information:
    #
    #   * `dialogState` set to ElicitSlot
    #
    #   * `intentName` set to the intent name in the current context
    #
    #   * `slotToElicit` set to the slot name for which the `message` is
    #     eliciting information
    #
    #   * `slots` set to a map of slots, configured for the intent, with
    #     currently known values
    # * If the message is a confirmation prompt, the `dialogState` is set to
    #   ConfirmIntent and `SlotToElicit` is set to null.
    #
    # * If the message is a clarification prompt (configured for the intent)
    #   that indicates that user intent is not understood, the `dialogState`
    #   is set to ElicitIntent and `slotToElicit` is set to null.
    #
    # In addition, Amazon Lex also returns your application-specific
    # `sessionAttributes`. For more information, see [Managing Conversation
    # Context][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html
    #
    # @option params [required, String] :bot_name
    #   The name of the Amazon Lex bot.
    #
    # @option params [required, String] :bot_alias
    #   The alias of the Amazon Lex bot.
    #
    # @option params [required, String] :user_id
    #   The ID of the client application user. Amazon Lex uses this to
    #   identify a user's conversation with your bot. At runtime, each
    #   request must contain the `userID` field.
    #
    #   To decide the user ID to use for your application, consider the
    #   following factors.
    #
    #   * The `userID` field must not contain any personally identifiable
    #     information of the user, for example, name, personal identification
    #     numbers, or other end user personal information.
    #
    #   * If you want a user to start a conversation on one device and
    #     continue on another device, use a user-specific identifier.
    #
    #   * If you want the same user to be able to have two independent
    #     conversations on two different devices, choose a device-specific
    #     identifier.
    #
    #   * A user can't have two independent conversations with two different
    #     versions of the same bot. For example, a user can't have a
    #     conversation with the PROD and BETA versions of the same bot. If you
    #     anticipate that a user will need to have conversation with two
    #     different versions, for example, while testing, include the bot
    #     alias in the user ID to separate the two conversations.
    #
    # @option params [Hash<String,String>] :session_attributes
    #   Application-specific information passed between Amazon Lex and a
    #   client application.
    #
    #   For more information, see [Setting Session Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs
    #
    # @option params [Hash<String,String>] :request_attributes
    #   Request-specific information passed between Amazon Lex and a client
    #   application.
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes. Don't
    #   create any request attributes with the prefix `x-amz-lex:`.
    #
    #   For more information, see [Setting Request Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs
    #
    # @option params [required, String] :input_text
    #   The text that the user entered (Amazon Lex interprets this text).
    #
    # @option params [Array<Types::ActiveContext>] :active_contexts
    #   A list of contexts active for the request. A context can be activated
    #   when a previous intent is fulfilled, or by including the context in
    #   the request,
    #
    #   If you don't specify a list of contexts, Amazon Lex will use the
    #   current list of contexts for the session. If you specify an empty
    #   list, all contexts for the session are cleared.
    #
    # @return [Types::PostTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PostTextResponse#intent_name #intent_name} => String
    #   * {Types::PostTextResponse#nlu_intent_confidence #nlu_intent_confidence} => Types::IntentConfidence
    #   * {Types::PostTextResponse#alternative_intents #alternative_intents} => Array&lt;Types::PredictedIntent&gt;
    #   * {Types::PostTextResponse#slots #slots} => Hash&lt;String,String&gt;
    #   * {Types::PostTextResponse#session_attributes #session_attributes} => Hash&lt;String,String&gt;
    #   * {Types::PostTextResponse#message #message} => String
    #   * {Types::PostTextResponse#sentiment_response #sentiment_response} => Types::SentimentResponse
    #   * {Types::PostTextResponse#message_format #message_format} => String
    #   * {Types::PostTextResponse#dialog_state #dialog_state} => String
    #   * {Types::PostTextResponse#slot_to_elicit #slot_to_elicit} => String
    #   * {Types::PostTextResponse#response_card #response_card} => Types::ResponseCard
    #   * {Types::PostTextResponse#session_id #session_id} => String
    #   * {Types::PostTextResponse#bot_version #bot_version} => String
    #   * {Types::PostTextResponse#active_contexts #active_contexts} => Array&lt;Types::ActiveContext&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_text({
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #     session_attributes: {
    #       "String" => "String",
    #     },
    #     request_attributes: {
    #       "String" => "String",
    #     },
    #     input_text: "Text", # required
    #     active_contexts: [
    #       {
    #         name: "ActiveContextName", # required
    #         time_to_live: { # required
    #           time_to_live_in_seconds: 1,
    #           turns_to_live: 1,
    #         },
    #         parameters: { # required
    #           "ParameterName" => "Text",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.intent_name #=> String
    #   resp.nlu_intent_confidence.score #=> Float
    #   resp.alternative_intents #=> Array
    #   resp.alternative_intents[0].intent_name #=> String
    #   resp.alternative_intents[0].nlu_intent_confidence.score #=> Float
    #   resp.alternative_intents[0].slots #=> Hash
    #   resp.alternative_intents[0].slots["String"] #=> String
    #   resp.slots #=> Hash
    #   resp.slots["String"] #=> String
    #   resp.session_attributes #=> Hash
    #   resp.session_attributes["String"] #=> String
    #   resp.message #=> String
    #   resp.sentiment_response.sentiment_label #=> String
    #   resp.sentiment_response.sentiment_score #=> String
    #   resp.message_format #=> String, one of "PlainText", "CustomPayload", "SSML", "Composite"
    #   resp.dialog_state #=> String, one of "ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"
    #   resp.slot_to_elicit #=> String
    #   resp.response_card.version #=> String
    #   resp.response_card.content_type #=> String, one of "application/vnd.amazonaws.card.generic"
    #   resp.response_card.generic_attachments #=> Array
    #   resp.response_card.generic_attachments[0].title #=> String
    #   resp.response_card.generic_attachments[0].sub_title #=> String
    #   resp.response_card.generic_attachments[0].attachment_link_url #=> String
    #   resp.response_card.generic_attachments[0].image_url #=> String
    #   resp.response_card.generic_attachments[0].buttons #=> Array
    #   resp.response_card.generic_attachments[0].buttons[0].text #=> String
    #   resp.response_card.generic_attachments[0].buttons[0].value #=> String
    #   resp.session_id #=> String
    #   resp.bot_version #=> String
    #   resp.active_contexts #=> Array
    #   resp.active_contexts[0].name #=> String
    #   resp.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
    #   resp.active_contexts[0].time_to_live.turns_to_live #=> Integer
    #   resp.active_contexts[0].parameters #=> Hash
    #   resp.active_contexts[0].parameters["ParameterName"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostText AWS API Documentation
    #
    # @overload post_text(params = {})
    # @param [Hash] params ({})
    def post_text(params = {}, options = {})
      req = build_request(:post_text, params)
      req.send_request(options)
    end

    # Creates a new session or modifies an existing session with an Amazon
    # Lex bot. Use this operation to enable your application to set the
    # state of the bot.
    #
    # For more information, see [Managing Sessions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html
    #
    # @option params [required, String] :bot_name
    #   The name of the bot that contains the session data.
    #
    # @option params [required, String] :bot_alias
    #   The alias in use for the bot that contains the session data.
    #
    # @option params [required, String] :user_id
    #   The ID of the client application user. Amazon Lex uses this to
    #   identify a user's conversation with your bot.
    #
    # @option params [Hash<String,String>] :session_attributes
    #   Map of key/value pairs representing the session-specific context
    #   information. It contains application information passed between Amazon
    #   Lex and a client application.
    #
    # @option params [Types::DialogAction] :dialog_action
    #   Sets the next action that the bot should take to fulfill the
    #   conversation.
    #
    # @option params [Array<Types::IntentSummary>] :recent_intent_summary_view
    #   A summary of the recent intents for the bot. You can use the intent
    #   summary view to set a checkpoint label on an intent and modify
    #   attributes of intents. You can also use it to remove or add intent
    #   summary objects to the list.
    #
    #   An intent that you modify or add to the list must make sense for the
    #   bot. For example, the intent name must be valid for the bot. You must
    #   provide valid values for:
    #
    #   * `intentName`
    #
    #   * slot names
    #
    #   * `slotToElict`
    #
    #   If you send the `recentIntentSummaryView` parameter in a `PutSession`
    #   request, the contents of the new summary view replaces the old summary
    #   view. For example, if a `GetSession` request returns three intents in
    #   the summary view and you call `PutSession` with one intent in the
    #   summary view, the next call to `GetSession` will only return one
    #   intent.
    #
    # @option params [String] :accept
    #   The message that Amazon Lex returns in the response can be either text
    #   or speech based depending on the value of this field.
    #
    #   * If the value is `text/plain; charset=utf-8`, Amazon Lex returns text
    #     in the response.
    #
    #   * If the value begins with `audio/`, Amazon Lex returns speech in the
    #     response. Amazon Lex uses Amazon Polly to generate the speech in the
    #     configuration that you specify. For example, if you specify
    #     `audio/mpeg` as the value, Amazon Lex returns speech in the MPEG
    #     format.
    #
    #   * If the value is `audio/pcm`, the speech is returned as `audio/pcm`
    #     in 16-bit, little endian format.
    #
    #   * The following are the accepted values:
    #
    #     * `audio/mpeg`
    #
    #     * `audio/ogg`
    #
    #     * `audio/pcm`
    #
    #     * `audio/*` (defaults to mpeg)
    #
    #     * `text/plain; charset=utf-8`
    #
    # @option params [Array<Types::ActiveContext>] :active_contexts
    #   A list of contexts active for the request. A context can be activated
    #   when a previous intent is fulfilled, or by including the context in
    #   the request,
    #
    #   If you don't specify a list of contexts, Amazon Lex will use the
    #   current list of contexts for the session. If you specify an empty
    #   list, all contexts for the session are cleared.
    #
    # @return [Types::PutSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSessionResponse#content_type #content_type} => String
    #   * {Types::PutSessionResponse#intent_name #intent_name} => String
    #   * {Types::PutSessionResponse#slots #slots} => String
    #   * {Types::PutSessionResponse#session_attributes #session_attributes} => String
    #   * {Types::PutSessionResponse#message #message} => String
    #   * {Types::PutSessionResponse#encoded_message #encoded_message} => String
    #   * {Types::PutSessionResponse#message_format #message_format} => String
    #   * {Types::PutSessionResponse#dialog_state #dialog_state} => String
    #   * {Types::PutSessionResponse#slot_to_elicit #slot_to_elicit} => String
    #   * {Types::PutSessionResponse#audio_stream #audio_stream} => IO
    #   * {Types::PutSessionResponse#session_id #session_id} => String
    #   * {Types::PutSessionResponse#active_contexts #active_contexts} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_session({
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #     session_attributes: {
    #       "String" => "String",
    #     },
    #     dialog_action: {
    #       type: "ElicitIntent", # required, accepts ElicitIntent, ConfirmIntent, ElicitSlot, Close, Delegate
    #       intent_name: "IntentName",
    #       slots: {
    #         "String" => "String",
    #       },
    #       slot_to_elicit: "String",
    #       fulfillment_state: "Fulfilled", # accepts Fulfilled, Failed, ReadyForFulfillment
    #       message: "Text",
    #       message_format: "PlainText", # accepts PlainText, CustomPayload, SSML, Composite
    #     },
    #     recent_intent_summary_view: [
    #       {
    #         intent_name: "IntentName",
    #         checkpoint_label: "IntentSummaryCheckpointLabel",
    #         slots: {
    #           "String" => "String",
    #         },
    #         confirmation_status: "None", # accepts None, Confirmed, Denied
    #         dialog_action_type: "ElicitIntent", # required, accepts ElicitIntent, ConfirmIntent, ElicitSlot, Close, Delegate
    #         fulfillment_state: "Fulfilled", # accepts Fulfilled, Failed, ReadyForFulfillment
    #         slot_to_elicit: "String",
    #       },
    #     ],
    #     accept: "Accept",
    #     active_contexts: [
    #       {
    #         name: "ActiveContextName", # required
    #         time_to_live: { # required
    #           time_to_live_in_seconds: 1,
    #           turns_to_live: 1,
    #         },
    #         parameters: { # required
    #           "ParameterName" => "Text",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.intent_name #=> String
    #   resp.slots #=> String
    #   resp.session_attributes #=> String
    #   resp.message #=> String
    #   resp.encoded_message #=> String
    #   resp.message_format #=> String, one of "PlainText", "CustomPayload", "SSML", "Composite"
    #   resp.dialog_state #=> String, one of "ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"
    #   resp.slot_to_elicit #=> String
    #   resp.audio_stream #=> IO
    #   resp.session_id #=> String
    #   resp.active_contexts #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PutSession AWS API Documentation
    #
    # @overload put_session(params = {})
    # @param [Hash] params ({})
    def put_session(params = {}, options = {}, &block)
      req = build_request(:put_session, params)
      req.send_request(options, &block)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Lex')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-lex'
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
