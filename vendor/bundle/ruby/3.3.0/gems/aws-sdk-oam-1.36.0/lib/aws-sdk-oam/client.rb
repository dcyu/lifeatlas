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

module Aws::OAM
  # An API client for OAM.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::OAM::Client.new(
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

    @identifier = :oam

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
    add_plugin(Aws::OAM::Plugins::Endpoints)

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
    #   @option options [Aws::OAM::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::OAM::EndpointParameters`.
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

    # Creates a link between a source account and a sink that you have
    # created in a monitoring account. After the link is created, data is
    # sent from the source account to the monitoring account. When you
    # create a link, you can optionally specify filters that specify which
    # metric namespaces and which log groups are shared from the source
    # account to the monitoring account.
    #
    # Before you create a link, you must create a sink in the monitoring
    # account and create a sink policy in that account. The sink policy must
    # permit the source account to link to it. You can grant permission to
    # source accounts by granting permission to an entire organization or to
    # individual accounts.
    #
    # For more information, see [CreateSink][1] and [PutSinkPolicy][2].
    #
    # Each monitoring account can be linked to as many as 100,000 source
    # accounts.
    #
    # Each source account can be linked to as many as five monitoring
    # accounts.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html
    # [2]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html
    #
    # @option params [required, String] :label_template
    #   Specify a friendly human-readable name to use to identify this source
    #   account when you are viewing data from it in the monitoring account.
    #
    #   You can use a custom label or use the following variables:
    #
    #   * `$AccountName` is the name of the account
    #
    #   * `$AccountEmail` is the globally unique email address of the account
    #
    #   * `$AccountEmailNoDomain` is the email address of the account without
    #     the domain name
    #
    #   <note markdown="1"> In the Amazon Web Services GovCloud (US-East) and Amazon Web Services
    #   GovCloud (US-West) Regions, the only supported option is to use custom
    #   labels, and the `$AccountName`, `$AccountEmail`, and
    #   `$AccountEmailNoDomain` variables all resolve as *account-id* instead
    #   of the specified variable.
    #
    #    </note>
    #
    # @option params [Types::LinkConfiguration] :link_configuration
    #   Use this structure to optionally create filters that specify that only
    #   some metric namespaces or log groups are to be shared from the source
    #   account to the monitoring account.
    #
    # @option params [required, Array<String>] :resource_types
    #   An array of strings that define which types of data that the source
    #   account shares with the monitoring account.
    #
    # @option params [required, String] :sink_identifier
    #   The ARN of the sink to use to create this link. You can use
    #   [ListSinks][1] to find the ARNs of sinks.
    #
    #   For more information about sinks, see [CreateSink][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html
    #   [2]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html
    #
    # @option params [Hash<String,String>] :tags
    #   Assigns one or more tags (key-value pairs) to the link.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    #   For more information about using tags to control access, see
    #   [Controlling access to Amazon Web Services resources using tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    #
    # @return [Types::CreateLinkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLinkOutput#arn #arn} => String
    #   * {Types::CreateLinkOutput#id #id} => String
    #   * {Types::CreateLinkOutput#label #label} => String
    #   * {Types::CreateLinkOutput#label_template #label_template} => String
    #   * {Types::CreateLinkOutput#link_configuration #link_configuration} => Types::LinkConfiguration
    #   * {Types::CreateLinkOutput#resource_types #resource_types} => Array&lt;String&gt;
    #   * {Types::CreateLinkOutput#sink_arn #sink_arn} => String
    #   * {Types::CreateLinkOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_link({
    #     label_template: "LabelTemplate", # required
    #     link_configuration: {
    #       log_group_configuration: {
    #         filter: "LogsFilter", # required
    #       },
    #       metric_configuration: {
    #         filter: "MetricsFilter", # required
    #       },
    #     },
    #     resource_types: ["AWS::CloudWatch::Metric"], # required, accepts AWS::CloudWatch::Metric, AWS::Logs::LogGroup, AWS::XRay::Trace, AWS::ApplicationInsights::Application, AWS::InternetMonitor::Monitor, AWS::ApplicationSignals::Service, AWS::ApplicationSignals::ServiceLevelObjective
    #     sink_identifier: "ResourceIdentifier", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.label #=> String
    #   resp.label_template #=> String
    #   resp.link_configuration.log_group_configuration.filter #=> String
    #   resp.link_configuration.metric_configuration.filter #=> String
    #   resp.resource_types #=> Array
    #   resp.resource_types[0] #=> String
    #   resp.sink_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/CreateLink AWS API Documentation
    #
    # @overload create_link(params = {})
    # @param [Hash] params ({})
    def create_link(params = {}, options = {})
      req = build_request(:create_link, params)
      req.send_request(options)
    end

    # Use this to create a *sink* in the current account, so that it can be
    # used as a monitoring account in CloudWatch cross-account
    # observability. A sink is a resource that represents an attachment
    # point in a monitoring account. Source accounts can link to the sink to
    # send observability data.
    #
    # After you create a sink, you must create a sink policy that allows
    # source accounts to attach to it. For more information, see
    # [PutSinkPolicy][1].
    #
    # Each account can contain one sink per Region. If you delete a sink,
    # you can then create a new one in that Region.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html
    #
    # @option params [required, String] :name
    #   A name for the sink.
    #
    # @option params [Hash<String,String>] :tags
    #   Assigns one or more tags (key-value pairs) to the link.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    #   For more information about using tags to control access, see
    #   [Controlling access to Amazon Web Services resources using tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    #
    # @return [Types::CreateSinkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSinkOutput#arn #arn} => String
    #   * {Types::CreateSinkOutput#id #id} => String
    #   * {Types::CreateSinkOutput#name #name} => String
    #   * {Types::CreateSinkOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sink({
    #     name: "SinkName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/CreateSink AWS API Documentation
    #
    # @overload create_sink(params = {})
    # @param [Hash] params ({})
    def create_sink(params = {}, options = {})
      req = build_request(:create_sink, params)
      req.send_request(options)
    end

    # Deletes a link between a monitoring account sink and a source account.
    # You must run this operation in the source account.
    #
    # @option params [required, String] :identifier
    #   The ARN of the link to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_link({
    #     identifier: "ResourceIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/DeleteLink AWS API Documentation
    #
    # @overload delete_link(params = {})
    # @param [Hash] params ({})
    def delete_link(params = {}, options = {})
      req = build_request(:delete_link, params)
      req.send_request(options)
    end

    # Deletes a sink. You must delete all links to a sink before you can
    # delete that sink.
    #
    # @option params [required, String] :identifier
    #   The ARN of the sink to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sink({
    #     identifier: "ResourceIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/DeleteSink AWS API Documentation
    #
    # @overload delete_sink(params = {})
    # @param [Hash] params ({})
    def delete_sink(params = {}, options = {})
      req = build_request(:delete_sink, params)
      req.send_request(options)
    end

    # Returns complete information about one link.
    #
    # To use this operation, provide the link ARN. To retrieve a list of
    # link ARNs, use [ListLinks][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html
    #
    # @option params [required, String] :identifier
    #   The ARN of the link to retrieve information for.
    #
    # @option params [Boolean] :include_tags
    #   Specifies whether to include the tags associated with the link in the
    #   response. When `IncludeTags` is set to `true` and the caller has the
    #   required permission, `oam:ListTagsForResource`, the API will return
    #   the tags for the specified resource. If the caller doesn't have the
    #   required permission, `oam:ListTagsForResource`, the API will raise an
    #   exception.
    #
    #   The default value is `false`.
    #
    # @return [Types::GetLinkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLinkOutput#arn #arn} => String
    #   * {Types::GetLinkOutput#id #id} => String
    #   * {Types::GetLinkOutput#label #label} => String
    #   * {Types::GetLinkOutput#label_template #label_template} => String
    #   * {Types::GetLinkOutput#link_configuration #link_configuration} => Types::LinkConfiguration
    #   * {Types::GetLinkOutput#resource_types #resource_types} => Array&lt;String&gt;
    #   * {Types::GetLinkOutput#sink_arn #sink_arn} => String
    #   * {Types::GetLinkOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_link({
    #     identifier: "ResourceIdentifier", # required
    #     include_tags: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.label #=> String
    #   resp.label_template #=> String
    #   resp.link_configuration.log_group_configuration.filter #=> String
    #   resp.link_configuration.metric_configuration.filter #=> String
    #   resp.resource_types #=> Array
    #   resp.resource_types[0] #=> String
    #   resp.sink_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/GetLink AWS API Documentation
    #
    # @overload get_link(params = {})
    # @param [Hash] params ({})
    def get_link(params = {}, options = {})
      req = build_request(:get_link, params)
      req.send_request(options)
    end

    # Returns complete information about one monitoring account sink.
    #
    # To use this operation, provide the sink ARN. To retrieve a list of
    # sink ARNs, use [ListSinks][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html
    #
    # @option params [required, String] :identifier
    #   The ARN of the sink to retrieve information for.
    #
    # @option params [Boolean] :include_tags
    #   Specifies whether to include the tags associated with the sink in the
    #   response. When `IncludeTags` is set to `true` and the caller has the
    #   required permission, `oam:ListTagsForResource`, the API will return
    #   the tags for the specified resource. If the caller doesn't have the
    #   required permission, `oam:ListTagsForResource`, the API will raise an
    #   exception.
    #
    #   The default value is `false`.
    #
    # @return [Types::GetSinkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSinkOutput#arn #arn} => String
    #   * {Types::GetSinkOutput#id #id} => String
    #   * {Types::GetSinkOutput#name #name} => String
    #   * {Types::GetSinkOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sink({
    #     identifier: "ResourceIdentifier", # required
    #     include_tags: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/GetSink AWS API Documentation
    #
    # @overload get_sink(params = {})
    # @param [Hash] params ({})
    def get_sink(params = {}, options = {})
      req = build_request(:get_sink, params)
      req.send_request(options)
    end

    # Returns the current sink policy attached to this sink. The sink policy
    # specifies what accounts can attach to this sink as source accounts,
    # and what types of data they can share.
    #
    # @option params [required, String] :sink_identifier
    #   The ARN of the sink to retrieve the policy of.
    #
    # @return [Types::GetSinkPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSinkPolicyOutput#policy #policy} => String
    #   * {Types::GetSinkPolicyOutput#sink_arn #sink_arn} => String
    #   * {Types::GetSinkPolicyOutput#sink_id #sink_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sink_policy({
    #     sink_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.sink_arn #=> String
    #   resp.sink_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/GetSinkPolicy AWS API Documentation
    #
    # @overload get_sink_policy(params = {})
    # @param [Hash] params ({})
    def get_sink_policy(params = {}, options = {})
      req = build_request(:get_sink_policy, params)
      req.send_request(options)
    end

    # Returns a list of source account links that are linked to this
    # monitoring account sink.
    #
    # To use this operation, provide the sink ARN. To retrieve a list of
    # sink ARNs, use [ListSinks][1].
    #
    # To find a list of links for one source account, use [ListLinks][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html
    # [2]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html
    #
    # @option params [Integer] :max_results
    #   Limits the number of returned links to the specified number.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. You received this token
    #   from a previous call.
    #
    # @option params [required, String] :sink_identifier
    #   The ARN of the sink that you want to retrieve links for.
    #
    # @return [Types::ListAttachedLinksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttachedLinksOutput#items #items} => Array&lt;Types::ListAttachedLinksItem&gt;
    #   * {Types::ListAttachedLinksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_links({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sink_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].label #=> String
    #   resp.items[0].link_arn #=> String
    #   resp.items[0].resource_types #=> Array
    #   resp.items[0].resource_types[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListAttachedLinks AWS API Documentation
    #
    # @overload list_attached_links(params = {})
    # @param [Hash] params ({})
    def list_attached_links(params = {}, options = {})
      req = build_request(:list_attached_links, params)
      req.send_request(options)
    end

    # Use this operation in a source account to return a list of links to
    # monitoring account sinks that this source account has.
    #
    # To find a list of links for one monitoring account sink, use
    # [ListAttachedLinks][1] from within the monitoring account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListAttachedLinks.html
    #
    # @option params [Integer] :max_results
    #   Limits the number of returned links to the specified number.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. You received this token
    #   from a previous call.
    #
    # @return [Types::ListLinksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLinksOutput#items #items} => Array&lt;Types::ListLinksItem&gt;
    #   * {Types::ListLinksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_links({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].label #=> String
    #   resp.items[0].resource_types #=> Array
    #   resp.items[0].resource_types[0] #=> String
    #   resp.items[0].sink_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListLinks AWS API Documentation
    #
    # @overload list_links(params = {})
    # @param [Hash] params ({})
    def list_links(params = {}, options = {})
      req = build_request(:list_links, params)
      req.send_request(options)
    end

    # Use this operation in a monitoring account to return the list of sinks
    # created in that account.
    #
    # @option params [Integer] :max_results
    #   Limits the number of returned links to the specified number.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. You received this token
    #   from a previous call.
    #
    # @return [Types::ListSinksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSinksOutput#items #items} => Array&lt;Types::ListSinksItem&gt;
    #   * {Types::ListSinksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sinks({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListSinks AWS API Documentation
    #
    # @overload list_sinks(params = {})
    # @param [Hash] params ({})
    def list_sinks(params = {}, options = {})
      req = build_request(:list_sinks, params)
      req.send_request(options)
    end

    # Displays the tags associated with a resource. Both sinks and links
    # support tagging.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you want to view tags for.
    #
    #   The ARN format of a sink is
    #   `arn:aws:oam:Region:account-id:sink/sink-id `
    #
    #   The ARN format of a link is
    #   `arn:aws:oam:Region:account-id:link/link-id `
    #
    #   For more information about ARN format, see [CloudWatch Logs resources
    #   and operations][1].
    #
    #   Unlike tagging permissions in other Amazon Web Services services, to
    #   retrieve the list of tags for links or sinks you must have the
    #   `oam:RequestTag` permission. The `aws:ReguestTag` permission does not
    #   allow you to tag and untag links and sinks.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates the resource policy that grants permissions to
    # source accounts to link to the monitoring account sink. When you
    # create a sink policy, you can grant permissions to all accounts in an
    # organization or to individual accounts.
    #
    # You can also use a sink policy to limit the types of data that is
    # shared. The six types of services with their respective resource types
    # that you can allow or deny are:
    #
    # * **Metrics** - Specify with `AWS::CloudWatch::Metric`
    #
    # * **Log groups** - Specify with `AWS::Logs::LogGroup`
    #
    # * **Traces** - Specify with `AWS::XRay::Trace`
    #
    # * **Application Insights - Applications** - Specify with
    #   `AWS::ApplicationInsights::Application`
    #
    # * **Internet Monitor** - Specify with `AWS::InternetMonitor::Monitor`
    #
    # * **Application Signals** - Specify with
    #   `AWS::ApplicationSignals::Service` and
    #   `AWS::ApplicationSignals::ServiceLevelObjective`
    #
    # See the examples in this section to see how to specify permitted
    # source accounts and data types.
    #
    # @option params [required, String] :policy
    #   The JSON policy to use. If you are updating an existing policy, the
    #   entire existing policy is replaced by what you specify here.
    #
    #   The policy must be in JSON string format with quotation marks escaped
    #   and no newlines.
    #
    #   For examples of different types of policies, see the **Examples**
    #   section on this page.
    #
    # @option params [required, String] :sink_identifier
    #   The ARN of the sink to attach this policy to.
    #
    # @return [Types::PutSinkPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSinkPolicyOutput#policy #policy} => String
    #   * {Types::PutSinkPolicyOutput#sink_arn #sink_arn} => String
    #   * {Types::PutSinkPolicyOutput#sink_id #sink_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_sink_policy({
    #     policy: "SinkPolicy", # required
    #     sink_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.sink_arn #=> String
    #   resp.sink_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/PutSinkPolicy AWS API Documentation
    #
    # @overload put_sink_policy(params = {})
    # @param [Hash] params ({})
    def put_sink_policy(params = {}, options = {})
      req = build_request(:put_sink_policy, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified resource.
    # Both sinks and links can be tagged.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to Amazon Web Services and are
    # interpreted strictly as strings of characters.
    #
    # You can use the `TagResource` action with a resource that already has
    # tags. If you specify a new tag key for the alarm, this tag is appended
    # to the list of tags associated with the alarm. If you specify a tag
    # key that is already associated with the alarm, the new tag value that
    # you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a resource.
    #
    # Unlike tagging permissions in other Amazon Web Services services, to
    # tag or untag links and sinks you must have the `oam:ResourceTag`
    # permission. The `iam:ResourceTag` permission does not allow you to tag
    # and untag links and sinks.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you're adding tags to.
    #
    #   The ARN format of a sink is
    #   `arn:aws:oam:Region:account-id:sink/sink-id `
    #
    #   The ARN format of a link is
    #   `arn:aws:oam:Region:account-id:link/link-id `
    #
    #   For more information about ARN format, see [CloudWatch Logs resources
    #   and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # Unlike tagging permissions in other Amazon Web Services services, to
    # tag or untag links and sinks you must have the `oam:ResourceTag`
    # permission. The `iam:TagResource` permission does not allow you to tag
    # and untag links and sinks.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you're removing tags from.
    #
    #   The ARN format of a sink is
    #   `arn:aws:oam:Region:account-id:sink/sink-id `
    #
    #   The ARN format of a link is
    #   `arn:aws:oam:Region:account-id:link/link-id `
    #
    #   For more information about ARN format, see [CloudWatch Logs resources
    #   and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Use this operation to change what types of data are shared from a
    # source account to its linked monitoring account sink. You can't
    # change the sink or change the monitoring account with this operation.
    #
    # When you update a link, you can optionally specify filters that
    # specify which metric namespaces and which log groups are shared from
    # the source account to the monitoring account.
    #
    # To update the list of tags associated with the sink, use
    # [TagResource][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_TagResource.html
    #
    # @option params [required, String] :identifier
    #   The ARN of the link that you want to update.
    #
    # @option params [Boolean] :include_tags
    #   Specifies whether to include the tags associated with the link in the
    #   response after the update operation. When `IncludeTags` is set to
    #   `true` and the caller has the required permission,
    #   `oam:ListTagsForResource`, the API will return the tags for the
    #   specified resource. If the caller doesn't have the required
    #   permission, `oam:ListTagsForResource`, the API will raise an
    #   exception.
    #
    #   The default value is `false`.
    #
    # @option params [Types::LinkConfiguration] :link_configuration
    #   Use this structure to filter which metric namespaces and which log
    #   groups are to be shared from the source account to the monitoring
    #   account.
    #
    # @option params [required, Array<String>] :resource_types
    #   An array of strings that define which types of data that the source
    #   account will send to the monitoring account.
    #
    #   Your input here replaces the current set of data types that are
    #   shared.
    #
    # @return [Types::UpdateLinkOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLinkOutput#arn #arn} => String
    #   * {Types::UpdateLinkOutput#id #id} => String
    #   * {Types::UpdateLinkOutput#label #label} => String
    #   * {Types::UpdateLinkOutput#label_template #label_template} => String
    #   * {Types::UpdateLinkOutput#link_configuration #link_configuration} => Types::LinkConfiguration
    #   * {Types::UpdateLinkOutput#resource_types #resource_types} => Array&lt;String&gt;
    #   * {Types::UpdateLinkOutput#sink_arn #sink_arn} => String
    #   * {Types::UpdateLinkOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_link({
    #     identifier: "ResourceIdentifier", # required
    #     include_tags: false,
    #     link_configuration: {
    #       log_group_configuration: {
    #         filter: "LogsFilter", # required
    #       },
    #       metric_configuration: {
    #         filter: "MetricsFilter", # required
    #       },
    #     },
    #     resource_types: ["AWS::CloudWatch::Metric"], # required, accepts AWS::CloudWatch::Metric, AWS::Logs::LogGroup, AWS::XRay::Trace, AWS::ApplicationInsights::Application, AWS::InternetMonitor::Monitor, AWS::ApplicationSignals::Service, AWS::ApplicationSignals::ServiceLevelObjective
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.label #=> String
    #   resp.label_template #=> String
    #   resp.link_configuration.log_group_configuration.filter #=> String
    #   resp.link_configuration.metric_configuration.filter #=> String
    #   resp.resource_types #=> Array
    #   resp.resource_types[0] #=> String
    #   resp.sink_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/UpdateLink AWS API Documentation
    #
    # @overload update_link(params = {})
    # @param [Hash] params ({})
    def update_link(params = {}, options = {})
      req = build_request(:update_link, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::OAM')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-oam'
      context[:gem_version] = '1.36.0'
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
