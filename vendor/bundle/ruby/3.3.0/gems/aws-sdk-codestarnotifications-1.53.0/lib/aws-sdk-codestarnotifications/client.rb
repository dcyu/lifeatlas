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

module Aws::CodeStarNotifications
  # An API client for CodeStarNotifications.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeStarNotifications::Client.new(
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

    @identifier = :codestarnotifications

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
    add_plugin(Aws::CodeStarNotifications::Plugins::Endpoints)

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
    #   @option options [Aws::CodeStarNotifications::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CodeStarNotifications::EndpointParameters`.
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

    # Creates a notification rule for a resource. The rule specifies the
    # events you want notifications about and the targets (such as Chatbot
    # topics or Chatbot clients configured for Slack) where you want to
    # receive them.
    #
    # @option params [required, String] :name
    #   The name for the notification rule. Notification rule names must be
    #   unique in your Amazon Web Services account.
    #
    # @option params [required, Array<String>] :event_type_ids
    #   A list of event types associated with this notification rule. For a
    #   list of allowed events, see EventTypeSummary.
    #
    # @option params [required, String] :resource
    #   The Amazon Resource Name (ARN) of the resource to associate with the
    #   notification rule. Supported resources include pipelines in
    #   CodePipeline, repositories in CodeCommit, and build projects in
    #   CodeBuild.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   A list of Amazon Resource Names (ARNs) of Amazon Simple Notification
    #   Service topics and Chatbot clients to associate with the notification
    #   rule.
    #
    # @option params [required, String] :detail_type
    #   The level of detail to include in the notifications for this resource.
    #   `BASIC` will include only the contents of the event as it would appear
    #   in Amazon CloudWatch. `FULL` will include any supplemental information
    #   provided by AWS CodeStar Notifications and/or the service for the
    #   resource for which the notification is created.
    #
    # @option params [String] :client_request_token
    #   A unique, client-generated idempotency token that, when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request with the same parameters is received and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
    #
    #   <note markdown="1"> The Amazon Web Services SDKs prepopulate client request tokens. If you
    #   are using an Amazon Web Services SDK, an idempotency token is created
    #   for you.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags to apply to this notification rule. Key names cannot
    #   start with "`aws`".
    #
    # @option params [String] :status
    #   The status of the notification rule. The default value is `ENABLED`.
    #   If the status is set to `DISABLED`, notifications aren't sent for the
    #   notification rule.
    #
    # @return [Types::CreateNotificationRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNotificationRuleResult#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notification_rule({
    #     name: "NotificationRuleName", # required
    #     event_type_ids: ["EventTypeId"], # required
    #     resource: "NotificationRuleResource", # required
    #     targets: [ # required
    #       {
    #         target_type: "TargetType",
    #         target_address: "TargetAddress",
    #       },
    #     ],
    #     detail_type: "BASIC", # required, accepts BASIC, FULL
    #     client_request_token: "ClientRequestToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/CreateNotificationRule AWS API Documentation
    #
    # @overload create_notification_rule(params = {})
    # @param [Hash] params ({})
    def create_notification_rule(params = {}, options = {})
      req = build_request(:create_notification_rule, params)
      req.send_request(options)
    end

    # Deletes a notification rule for a resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the notification rule you want to
    #   delete.
    #
    # @return [Types::DeleteNotificationRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNotificationRuleResult#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification_rule({
    #     arn: "NotificationRuleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/DeleteNotificationRule AWS API Documentation
    #
    # @overload delete_notification_rule(params = {})
    # @param [Hash] params ({})
    def delete_notification_rule(params = {}, options = {})
      req = build_request(:delete_notification_rule, params)
      req.send_request(options)
    end

    # Deletes a specified target for notifications.
    #
    # @option params [required, String] :target_address
    #   The Amazon Resource Name (ARN) of the Chatbot topic or Chatbot client
    #   to delete.
    #
    # @option params [Boolean] :force_unsubscribe_all
    #   A Boolean value that can be used to delete all associations with this
    #   Chatbot topic. The default value is FALSE. If set to TRUE, all
    #   associations between that target and every notification rule in your
    #   Amazon Web Services account are deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_target({
    #     target_address: "TargetAddress", # required
    #     force_unsubscribe_all: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/DeleteTarget AWS API Documentation
    #
    # @overload delete_target(params = {})
    # @param [Hash] params ({})
    def delete_target(params = {}, options = {})
      req = build_request(:delete_target, params)
      req.send_request(options)
    end

    # Returns information about a specified notification rule.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the notification rule.
    #
    # @return [Types::DescribeNotificationRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotificationRuleResult#arn #arn} => String
    #   * {Types::DescribeNotificationRuleResult#name #name} => String
    #   * {Types::DescribeNotificationRuleResult#event_types #event_types} => Array&lt;Types::EventTypeSummary&gt;
    #   * {Types::DescribeNotificationRuleResult#resource #resource} => String
    #   * {Types::DescribeNotificationRuleResult#targets #targets} => Array&lt;Types::TargetSummary&gt;
    #   * {Types::DescribeNotificationRuleResult#detail_type #detail_type} => String
    #   * {Types::DescribeNotificationRuleResult#created_by #created_by} => String
    #   * {Types::DescribeNotificationRuleResult#status #status} => String
    #   * {Types::DescribeNotificationRuleResult#created_timestamp #created_timestamp} => Time
    #   * {Types::DescribeNotificationRuleResult#last_modified_timestamp #last_modified_timestamp} => Time
    #   * {Types::DescribeNotificationRuleResult#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notification_rule({
    #     arn: "NotificationRuleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.event_types #=> Array
    #   resp.event_types[0].event_type_id #=> String
    #   resp.event_types[0].service_name #=> String
    #   resp.event_types[0].event_type_name #=> String
    #   resp.event_types[0].resource_type #=> String
    #   resp.resource #=> String
    #   resp.targets #=> Array
    #   resp.targets[0].target_address #=> String
    #   resp.targets[0].target_type #=> String
    #   resp.targets[0].target_status #=> String, one of "PENDING", "ACTIVE", "UNREACHABLE", "INACTIVE", "DEACTIVATED"
    #   resp.detail_type #=> String, one of "BASIC", "FULL"
    #   resp.created_by #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.created_timestamp #=> Time
    #   resp.last_modified_timestamp #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/DescribeNotificationRule AWS API Documentation
    #
    # @overload describe_notification_rule(params = {})
    # @param [Hash] params ({})
    def describe_notification_rule(params = {}, options = {})
      req = build_request(:describe_notification_rule, params)
      req.send_request(options)
    end

    # Returns information about the event types available for configuring
    # notifications.
    #
    # @option params [Array<Types::ListEventTypesFilter>] :filters
    #   The filters to use to return information by service or resource type.
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The default number is 50. The maximum number of results that can be
    #   returned is 100.
    #
    # @return [Types::ListEventTypesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventTypesResult#event_types #event_types} => Array&lt;Types::EventTypeSummary&gt;
    #   * {Types::ListEventTypesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_types({
    #     filters: [
    #       {
    #         name: "RESOURCE_TYPE", # required, accepts RESOURCE_TYPE, SERVICE_NAME
    #         value: "ListEventTypesFilterValue", # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_types #=> Array
    #   resp.event_types[0].event_type_id #=> String
    #   resp.event_types[0].service_name #=> String
    #   resp.event_types[0].event_type_name #=> String
    #   resp.event_types[0].resource_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListEventTypes AWS API Documentation
    #
    # @overload list_event_types(params = {})
    # @param [Hash] params ({})
    def list_event_types(params = {}, options = {})
      req = build_request(:list_event_types, params)
      req.send_request(options)
    end

    # Returns a list of the notification rules for an Amazon Web Services
    # account.
    #
    # @option params [Array<Types::ListNotificationRulesFilter>] :filters
    #   The filters to use to return information by service or resource type.
    #   For valid values, see ListNotificationRulesFilter.
    #
    #   <note markdown="1"> A filter with the same name can appear more than once when used with
    #   OR statements. Filters with different names should be applied with AND
    #   statements.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The maximum number of results that can be returned is 100.
    #
    # @return [Types::ListNotificationRulesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotificationRulesResult#next_token #next_token} => String
    #   * {Types::ListNotificationRulesResult#notification_rules #notification_rules} => Array&lt;Types::NotificationRuleSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notification_rules({
    #     filters: [
    #       {
    #         name: "EVENT_TYPE_ID", # required, accepts EVENT_TYPE_ID, CREATED_BY, RESOURCE, TARGET_ADDRESS
    #         value: "ListNotificationRulesFilterValue", # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.notification_rules #=> Array
    #   resp.notification_rules[0].id #=> String
    #   resp.notification_rules[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListNotificationRules AWS API Documentation
    #
    # @overload list_notification_rules(params = {})
    # @param [Hash] params ({})
    def list_notification_rules(params = {}, options = {})
      req = build_request(:list_notification_rules, params)
      req.send_request(options)
    end

    # Returns a list of the tags associated with a notification rule.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) for the notification rule.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     arn: "NotificationRuleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of the notification rule targets for an Amazon Web
    # Services account.
    #
    # @option params [Array<Types::ListTargetsFilter>] :filters
    #   The filters to use to return information by service or resource type.
    #   Valid filters include target type, target address, and target status.
    #
    #   <note markdown="1"> A filter with the same name can appear more than once when used with
    #   OR statements. Filters with different names should be applied with AND
    #   statements.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @option params [Integer] :max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The maximum number of results that can be returned is 100.
    #
    # @return [Types::ListTargetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetsResult#targets #targets} => Array&lt;Types::TargetSummary&gt;
    #   * {Types::ListTargetsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets({
    #     filters: [
    #       {
    #         name: "TARGET_TYPE", # required, accepts TARGET_TYPE, TARGET_ADDRESS, TARGET_STATUS
    #         value: "ListTargetsFilterValue", # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.targets #=> Array
    #   resp.targets[0].target_address #=> String
    #   resp.targets[0].target_type #=> String
    #   resp.targets[0].target_status #=> String, one of "PENDING", "ACTIVE", "UNREACHABLE", "INACTIVE", "DEACTIVATED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListTargets AWS API Documentation
    #
    # @overload list_targets(params = {})
    # @param [Hash] params ({})
    def list_targets(params = {}, options = {})
      req = build_request(:list_targets, params)
      req.send_request(options)
    end

    # Creates an association between a notification rule and an Chatbot
    # topic or Chatbot client so that the associated target can receive
    # notifications when the events described in the rule are triggered.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the notification rule for which you
    #   want to create the association.
    #
    # @option params [required, Types::Target] :target
    #   Information about the Chatbot topics or Chatbot clients associated
    #   with a notification rule.
    #
    # @option params [String] :client_request_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #
    # @return [Types::SubscribeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubscribeResult#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.subscribe({
    #     arn: "NotificationRuleArn", # required
    #     target: { # required
    #       target_type: "TargetType",
    #       target_address: "TargetAddress",
    #     },
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/Subscribe AWS API Documentation
    #
    # @overload subscribe(params = {})
    # @param [Hash] params ({})
    def subscribe(params = {}, options = {})
      req = build_request(:subscribe, params)
      req.send_request(options)
    end

    # Associates a set of provided tags with a notification rule.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the notification rule to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of tags to associate with the resource. Tag key names cannot
    #   start with "`aws`".
    #
    # @return [Types::TagResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagResourceResult#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "NotificationRuleArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes an association between a notification rule and an Chatbot
    # topic so that subscribers to that topic stop receiving notifications
    # when the events described in the rule are triggered.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the notification rule.
    #
    # @option params [required, String] :target_address
    #   The ARN of the Chatbot topic to unsubscribe from the notification
    #   rule.
    #
    # @return [Types::UnsubscribeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UnsubscribeResult#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unsubscribe({
    #     arn: "NotificationRuleArn", # required
    #     target_address: "TargetAddress", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/Unsubscribe AWS API Documentation
    #
    # @overload unsubscribe(params = {})
    # @param [Hash] params ({})
    def unsubscribe(params = {}, options = {})
      req = build_request(:unsubscribe, params)
      req.send_request(options)
    end

    # Removes the association between one or more provided tags and a
    # notification rule.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the notification rule from which to
    #   remove the tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key names of the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "NotificationRuleArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a notification rule for a resource. You can change the events
    # that trigger the notification rule, the status of the rule, and the
    # targets that receive the notifications.
    #
    # <note markdown="1"> To add or remove tags for a notification rule, you must use
    # TagResource and UntagResource.
    #
    #  </note>
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the notification rule.
    #
    # @option params [String] :name
    #   The name of the notification rule.
    #
    # @option params [String] :status
    #   The status of the notification rule. Valid statuses include enabled
    #   (sending notifications) or disabled (not sending notifications).
    #
    # @option params [Array<String>] :event_type_ids
    #   A list of event types associated with this notification rule. For a
    #   complete list of event types and IDs, see [Notification concepts][1]
    #   in the *Developer Tools Console User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codestar-notifications/latest/userguide/concepts.html#concepts-api
    #
    # @option params [Array<Types::Target>] :targets
    #   The address and type of the targets to receive notifications from this
    #   notification rule.
    #
    # @option params [String] :detail_type
    #   The level of detail to include in the notifications for this resource.
    #   BASIC will include only the contents of the event as it would appear
    #   in Amazon CloudWatch. FULL will include any supplemental information
    #   provided by AWS CodeStar Notifications and/or the service for the
    #   resource for which the notification is created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notification_rule({
    #     arn: "NotificationRuleArn", # required
    #     name: "NotificationRuleName",
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #     event_type_ids: ["EventTypeId"],
    #     targets: [
    #       {
    #         target_type: "TargetType",
    #         target_address: "TargetAddress",
    #       },
    #     ],
    #     detail_type: "BASIC", # accepts BASIC, FULL
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/UpdateNotificationRule AWS API Documentation
    #
    # @overload update_notification_rule(params = {})
    # @param [Hash] params ({})
    def update_notification_rule(params = {}, options = {})
      req = build_request(:update_notification_rule, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CodeStarNotifications')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-codestarnotifications'
      context[:gem_version] = '1.53.0'
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
