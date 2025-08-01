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

module Aws::Health
  # An API client for Health.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Health::Client.new(
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

    @identifier = :health

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
    add_plugin(Aws::Health::Plugins::Endpoints)

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
    #   @option options [Aws::Health::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Health::EndpointParameters`.
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

    # Returns a list of accounts in the organization from Organizations that
    # are affected by the provided event. For more information about the
    # different types of Health events, see [Event][1].
    #
    # Before you can call this operation, you must first enable Health to
    # work with Organizations. To do this, call the
    # [EnableHealthServiceAccessForOrganization][2] operation from your
    # organization's management account.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the next request to return more results.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html
    #
    # @option params [required, String] :event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    # @return [Types::DescribeAffectedAccountsForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAffectedAccountsForOrganizationResponse#affected_accounts #affected_accounts} => Array&lt;String&gt;
    #   * {Types::DescribeAffectedAccountsForOrganizationResponse#event_scope_code #event_scope_code} => String
    #   * {Types::DescribeAffectedAccountsForOrganizationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_affected_accounts_for_organization({
    #     event_arn: "eventArn", # required
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.affected_accounts #=> Array
    #   resp.affected_accounts[0] #=> String
    #   resp.event_scope_code #=> String, one of "PUBLIC", "ACCOUNT_SPECIFIC", "NONE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedAccountsForOrganization AWS API Documentation
    #
    # @overload describe_affected_accounts_for_organization(params = {})
    # @param [Hash] params ({})
    def describe_affected_accounts_for_organization(params = {}, options = {})
      req = build_request(:describe_affected_accounts_for_organization, params)
      req.send_request(options)
    end

    # Returns a list of entities that have been affected by the specified
    # events, based on the specified filter criteria. Entities can refer to
    # individual customer resources, groups of customer resources, or any
    # other construct, depending on the Amazon Web Services service. Events
    # that have impact beyond that of the affected entities, or where the
    # extent of impact is unknown, include at least one entity indicating
    # this.
    #
    # At least one event ARN is required.
    #
    # <note markdown="1"> * This API operation uses pagination. Specify the `nextToken`
    #   parameter in the next request to return more results.
    #
    # * This operation supports resource-level permissions. You can use this
    #   operation to allow or deny access to specific Health events. For
    #   more information, see [Resource- and action-based conditions][1] in
    #   the *Health User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions
    #
    # @option params [required, Types::EntityFilter] :filter
    #   Values to narrow the results returned. At least one event ARN is
    #   required.
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    # @return [Types::DescribeAffectedEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAffectedEntitiesResponse#entities #entities} => Array&lt;Types::AffectedEntity&gt;
    #   * {Types::DescribeAffectedEntitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_affected_entities({
    #     filter: { # required
    #       event_arns: ["eventArn"], # required
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       last_updated_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       tags: [
    #         {
    #           "tagKey" => "tagValue",
    #         },
    #       ],
    #       status_codes: ["IMPAIRED"], # accepts IMPAIRED, UNIMPAIRED, UNKNOWN, PENDING, RESOLVED
    #     },
    #     locale: "locale",
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].entity_arn #=> String
    #   resp.entities[0].event_arn #=> String
    #   resp.entities[0].entity_value #=> String
    #   resp.entities[0].entity_url #=> String
    #   resp.entities[0].aws_account_id #=> String
    #   resp.entities[0].last_updated_time #=> Time
    #   resp.entities[0].status_code #=> String, one of "IMPAIRED", "UNIMPAIRED", "UNKNOWN", "PENDING", "RESOLVED"
    #   resp.entities[0].tags #=> Hash
    #   resp.entities[0].tags["tagKey"] #=> String
    #   resp.entities[0].entity_metadata #=> Hash
    #   resp.entities[0].entity_metadata["entityMetadataKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntities AWS API Documentation
    #
    # @overload describe_affected_entities(params = {})
    # @param [Hash] params ({})
    def describe_affected_entities(params = {}, options = {})
      req = build_request(:describe_affected_entities, params)
      req.send_request(options)
    end

    # Returns a list of entities that have been affected by one or more
    # events for one or more accounts in your organization in Organizations,
    # based on the filter criteria. Entities can refer to individual
    # customer resources, groups of customer resources, or any other
    # construct, depending on the Amazon Web Services service.
    #
    # At least one event Amazon Resource Name (ARN) and account ID are
    # required.
    #
    # Before you can call this operation, you must first enable Health to
    # work with Organizations. To do this, call the
    # [EnableHealthServiceAccessForOrganization][1] operation from your
    # organization's management account.
    #
    # <note markdown="1"> * This API operation uses pagination. Specify the `nextToken`
    #   parameter in the next request to return more results.
    #
    # * This operation doesn't support resource-level permissions. You
    #   can't use this operation to allow or deny access to specific Health
    #   events. For more information, see [Resource- and action-based
    #   conditions][2] in the *Health User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html
    # [2]: https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions
    #
    # @option params [Array<Types::EventAccountFilter>] :organization_entity_filters
    #   A JSON set of elements including the `awsAccountId` and the
    #   `eventArn`.
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    # @option params [Array<Types::EntityAccountFilter>] :organization_entity_account_filters
    #   A JSON set of elements including the `awsAccountId`, `eventArn` and a
    #   set of `statusCodes`.
    #
    # @return [Types::DescribeAffectedEntitiesForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAffectedEntitiesForOrganizationResponse#entities #entities} => Array&lt;Types::AffectedEntity&gt;
    #   * {Types::DescribeAffectedEntitiesForOrganizationResponse#failed_set #failed_set} => Array&lt;Types::OrganizationAffectedEntitiesErrorItem&gt;
    #   * {Types::DescribeAffectedEntitiesForOrganizationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_affected_entities_for_organization({
    #     organization_entity_filters: [
    #       {
    #         event_arn: "eventArn", # required
    #         aws_account_id: "accountId",
    #       },
    #     ],
    #     locale: "locale",
    #     next_token: "nextToken",
    #     max_results: 1,
    #     organization_entity_account_filters: [
    #       {
    #         event_arn: "eventArn", # required
    #         aws_account_id: "accountId",
    #         status_codes: ["IMPAIRED"], # accepts IMPAIRED, UNIMPAIRED, UNKNOWN, PENDING, RESOLVED
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].entity_arn #=> String
    #   resp.entities[0].event_arn #=> String
    #   resp.entities[0].entity_value #=> String
    #   resp.entities[0].entity_url #=> String
    #   resp.entities[0].aws_account_id #=> String
    #   resp.entities[0].last_updated_time #=> Time
    #   resp.entities[0].status_code #=> String, one of "IMPAIRED", "UNIMPAIRED", "UNKNOWN", "PENDING", "RESOLVED"
    #   resp.entities[0].tags #=> Hash
    #   resp.entities[0].tags["tagKey"] #=> String
    #   resp.entities[0].entity_metadata #=> Hash
    #   resp.entities[0].entity_metadata["entityMetadataKey"] #=> String
    #   resp.failed_set #=> Array
    #   resp.failed_set[0].aws_account_id #=> String
    #   resp.failed_set[0].event_arn #=> String
    #   resp.failed_set[0].error_name #=> String
    #   resp.failed_set[0].error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntitiesForOrganization AWS API Documentation
    #
    # @overload describe_affected_entities_for_organization(params = {})
    # @param [Hash] params ({})
    def describe_affected_entities_for_organization(params = {}, options = {})
      req = build_request(:describe_affected_entities_for_organization, params)
      req.send_request(options)
    end

    # Returns the number of entities that are affected by each of the
    # specified events.
    #
    # @option params [Array<String>] :event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #
    # @return [Types::DescribeEntityAggregatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntityAggregatesResponse#entity_aggregates #entity_aggregates} => Array&lt;Types::EntityAggregate&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entity_aggregates({
    #     event_arns: ["eventArn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_aggregates #=> Array
    #   resp.entity_aggregates[0].event_arn #=> String
    #   resp.entity_aggregates[0].count #=> Integer
    #   resp.entity_aggregates[0].statuses #=> Hash
    #   resp.entity_aggregates[0].statuses["entityStatusCode"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregates AWS API Documentation
    #
    # @overload describe_entity_aggregates(params = {})
    # @param [Hash] params ({})
    def describe_entity_aggregates(params = {}, options = {})
      req = build_request(:describe_entity_aggregates, params)
      req.send_request(options)
    end

    # Returns a list of entity aggregates for your Organizations that are
    # affected by each of the specified events.
    #
    # @option params [required, Array<String>] :event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #
    # @option params [Array<String>] :aws_account_ids
    #   A list of 12-digit Amazon Web Services account numbers that contains
    #   the affected entities.
    #
    # @return [Types::DescribeEntityAggregatesForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntityAggregatesForOrganizationResponse#organization_entity_aggregates #organization_entity_aggregates} => Array&lt;Types::OrganizationEntityAggregate&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entity_aggregates_for_organization({
    #     event_arns: ["eventArn"], # required
    #     aws_account_ids: ["accountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_entity_aggregates #=> Array
    #   resp.organization_entity_aggregates[0].event_arn #=> String
    #   resp.organization_entity_aggregates[0].count #=> Integer
    #   resp.organization_entity_aggregates[0].statuses #=> Hash
    #   resp.organization_entity_aggregates[0].statuses["entityStatusCode"] #=> Integer
    #   resp.organization_entity_aggregates[0].accounts #=> Array
    #   resp.organization_entity_aggregates[0].accounts[0].account_id #=> String
    #   resp.organization_entity_aggregates[0].accounts[0].count #=> Integer
    #   resp.organization_entity_aggregates[0].accounts[0].statuses #=> Hash
    #   resp.organization_entity_aggregates[0].accounts[0].statuses["entityStatusCode"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregatesForOrganization AWS API Documentation
    #
    # @overload describe_entity_aggregates_for_organization(params = {})
    # @param [Hash] params ({})
    def describe_entity_aggregates_for_organization(params = {}, options = {})
      req = build_request(:describe_entity_aggregates_for_organization, params)
      req.send_request(options)
    end

    # Returns the number of events of each event type (issue, scheduled
    # change, and account notification). If no filter is specified, the
    # counts of all events in each category are returned.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the next request to return more results.
    #
    #  </note>
    #
    # @option params [Types::EventFilter] :filter
    #   Values to narrow the results returned.
    #
    # @option params [required, String] :aggregate_field
    #   The only currently supported value is `eventTypeCategory`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @return [Types::DescribeEventAggregatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventAggregatesResponse#event_aggregates #event_aggregates} => Array&lt;Types::EventAggregate&gt;
    #   * {Types::DescribeEventAggregatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_aggregates({
    #     filter: {
    #       event_arns: ["eventArn"],
    #       event_type_codes: ["eventType"],
    #       services: ["service"],
    #       regions: ["region"],
    #       availability_zones: ["availabilityZone"],
    #       start_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       end_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       last_updated_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange, investigation
    #       tags: [
    #         {
    #           "tagKey" => "tagValue",
    #         },
    #       ],
    #       event_status_codes: ["open"], # accepts open, closed, upcoming
    #     },
    #     aggregate_field: "eventTypeCategory", # required, accepts eventTypeCategory
    #     max_results: 1,
    #     next_token: "nextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_aggregates #=> Array
    #   resp.event_aggregates[0].aggregate_value #=> String
    #   resp.event_aggregates[0].count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventAggregates AWS API Documentation
    #
    # @overload describe_event_aggregates(params = {})
    # @param [Hash] params ({})
    def describe_event_aggregates(params = {}, options = {})
      req = build_request(:describe_event_aggregates, params)
      req.send_request(options)
    end

    # Returns detailed information about one or more specified events.
    # Information includes standard event data (Amazon Web Services Region,
    # service, and so on, as returned by [DescribeEvents][1]), a detailed
    # event description, and possible additional metadata that depends upon
    # the nature of the event. Affected entities are not included. To
    # retrieve the entities, use the [DescribeAffectedEntities][2]
    # operation.
    #
    # If a specified event can't be retrieved, an error message is returned
    # for that event.
    #
    # <note markdown="1"> This operation supports resource-level permissions. You can use this
    # operation to allow or deny access to specific Health events. For more
    # information, see [Resource- and action-based conditions][3] in the
    # *Health User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html
    # [3]: https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions
    #
    # @option params [required, Array<String>] :event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @return [Types::DescribeEventDetailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventDetailsResponse#successful_set #successful_set} => Array&lt;Types::EventDetails&gt;
    #   * {Types::DescribeEventDetailsResponse#failed_set #failed_set} => Array&lt;Types::EventDetailsErrorItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_details({
    #     event_arns: ["eventArn"], # required
    #     locale: "locale",
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_set #=> Array
    #   resp.successful_set[0].event.arn #=> String
    #   resp.successful_set[0].event.service #=> String
    #   resp.successful_set[0].event.event_type_code #=> String
    #   resp.successful_set[0].event.event_type_category #=> String, one of "issue", "accountNotification", "scheduledChange", "investigation"
    #   resp.successful_set[0].event.region #=> String
    #   resp.successful_set[0].event.availability_zone #=> String
    #   resp.successful_set[0].event.start_time #=> Time
    #   resp.successful_set[0].event.end_time #=> Time
    #   resp.successful_set[0].event.last_updated_time #=> Time
    #   resp.successful_set[0].event.status_code #=> String, one of "open", "closed", "upcoming"
    #   resp.successful_set[0].event.event_scope_code #=> String, one of "PUBLIC", "ACCOUNT_SPECIFIC", "NONE"
    #   resp.successful_set[0].event_description.latest_description #=> String
    #   resp.successful_set[0].event_metadata #=> Hash
    #   resp.successful_set[0].event_metadata["metadataKey"] #=> String
    #   resp.failed_set #=> Array
    #   resp.failed_set[0].event_arn #=> String
    #   resp.failed_set[0].error_name #=> String
    #   resp.failed_set[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetails AWS API Documentation
    #
    # @overload describe_event_details(params = {})
    # @param [Hash] params ({})
    def describe_event_details(params = {}, options = {})
      req = build_request(:describe_event_details, params)
      req.send_request(options)
    end

    # Returns detailed information about one or more specified events for
    # one or more Amazon Web Services accounts in your organization. This
    # information includes standard event data (such as the Amazon Web
    # Services Region and service), an event description, and (depending on
    # the event) possible metadata. This operation doesn't return affected
    # entities, such as the resources related to the event. To return
    # affected entities, use the
    # [DescribeAffectedEntitiesForOrganization][1] operation.
    #
    # <note markdown="1"> Before you can call this operation, you must first enable Health to
    # work with Organizations. To do this, call the
    # [EnableHealthServiceAccessForOrganization][2] operation from your
    # organization's management account.
    #
    #  </note>
    #
    # When you call the `DescribeEventDetailsForOrganization` operation,
    # specify the `organizationEventDetailFilters` object in the request.
    # Depending on the Health event type, note the following differences:
    #
    # * To return event details for a public event, you must specify a null
    #   value for the `awsAccountId` parameter. If you specify an account ID
    #   for a public event, Health returns an error message because public
    #   events aren't specific to an account.
    #
    # * To return event details for an event that is specific to an account
    #   in your organization, you must specify the `awsAccountId` parameter
    #   in the request. If you don't specify an account ID, Health returns
    #   an error message because the event is specific to an account in your
    #   organization.
    #
    # For more information, see [Event][3].
    #
    # <note markdown="1"> This operation doesn't support resource-level permissions. You can't
    # use this operation to allow or deny access to specific Health events.
    # For more information, see [Resource- and action-based conditions][4]
    # in the *Health User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html
    # [3]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html
    # [4]: https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions
    #
    # @option params [required, Array<Types::EventAccountFilter>] :organization_event_detail_filters
    #   A set of JSON elements that includes the `awsAccountId` and the
    #   `eventArn`.
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @return [Types::DescribeEventDetailsForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventDetailsForOrganizationResponse#successful_set #successful_set} => Array&lt;Types::OrganizationEventDetails&gt;
    #   * {Types::DescribeEventDetailsForOrganizationResponse#failed_set #failed_set} => Array&lt;Types::OrganizationEventDetailsErrorItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_details_for_organization({
    #     organization_event_detail_filters: [ # required
    #       {
    #         event_arn: "eventArn", # required
    #         aws_account_id: "accountId",
    #       },
    #     ],
    #     locale: "locale",
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_set #=> Array
    #   resp.successful_set[0].aws_account_id #=> String
    #   resp.successful_set[0].event.arn #=> String
    #   resp.successful_set[0].event.service #=> String
    #   resp.successful_set[0].event.event_type_code #=> String
    #   resp.successful_set[0].event.event_type_category #=> String, one of "issue", "accountNotification", "scheduledChange", "investigation"
    #   resp.successful_set[0].event.region #=> String
    #   resp.successful_set[0].event.availability_zone #=> String
    #   resp.successful_set[0].event.start_time #=> Time
    #   resp.successful_set[0].event.end_time #=> Time
    #   resp.successful_set[0].event.last_updated_time #=> Time
    #   resp.successful_set[0].event.status_code #=> String, one of "open", "closed", "upcoming"
    #   resp.successful_set[0].event.event_scope_code #=> String, one of "PUBLIC", "ACCOUNT_SPECIFIC", "NONE"
    #   resp.successful_set[0].event_description.latest_description #=> String
    #   resp.successful_set[0].event_metadata #=> Hash
    #   resp.successful_set[0].event_metadata["metadataKey"] #=> String
    #   resp.failed_set #=> Array
    #   resp.failed_set[0].aws_account_id #=> String
    #   resp.failed_set[0].event_arn #=> String
    #   resp.failed_set[0].error_name #=> String
    #   resp.failed_set[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetailsForOrganization AWS API Documentation
    #
    # @overload describe_event_details_for_organization(params = {})
    # @param [Hash] params ({})
    def describe_event_details_for_organization(params = {}, options = {})
      req = build_request(:describe_event_details_for_organization, params)
      req.send_request(options)
    end

    # Returns the event types that meet the specified filter criteria. You
    # can use this API operation to find information about the Health event,
    # such as the category, Amazon Web Services service, and event code. The
    # metadata for each event appears in the [EventType][1] object.
    #
    # If you don't specify a filter criteria, the API operation returns all
    # event types, in no particular order.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the next request to return more results.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventType.html
    #
    # @option params [Types::EventTypeFilter] :filter
    #   Values to narrow the results returned.
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    #   <note markdown="1"> If you don't specify the `maxResults` parameter, this operation
    #   returns a maximum of 30 items by default.
    #
    #    </note>
    #
    # @return [Types::DescribeEventTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventTypesResponse#event_types #event_types} => Array&lt;Types::EventType&gt;
    #   * {Types::DescribeEventTypesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_types({
    #     filter: {
    #       event_type_codes: ["eventTypeCode"],
    #       services: ["service"],
    #       event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange, investigation
    #     },
    #     locale: "locale",
    #     next_token: "nextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_types #=> Array
    #   resp.event_types[0].service #=> String
    #   resp.event_types[0].code #=> String
    #   resp.event_types[0].category #=> String, one of "issue", "accountNotification", "scheduledChange", "investigation"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventTypes AWS API Documentation
    #
    # @overload describe_event_types(params = {})
    # @param [Hash] params ({})
    def describe_event_types(params = {}, options = {})
      req = build_request(:describe_event_types, params)
      req.send_request(options)
    end

    # Returns information about events that meet the specified filter
    # criteria. Events are returned in a summary form and do not include the
    # detailed description, any additional metadata that depends on the
    # event type, or any affected resources. To retrieve that information,
    # use the [DescribeEventDetails][1] and [DescribeAffectedEntities][2]
    # operations.
    #
    # If no filter criteria are specified, all events are returned. Results
    # are sorted by `lastModifiedTime`, starting with the most recent event.
    #
    # <note markdown="1"> * When you call the `DescribeEvents` operation and specify an entity
    #   for the `entityValues` parameter, Health might return public events
    #   that aren't specific to that resource. For example, if you call
    #   `DescribeEvents` and specify an ID for an Amazon Elastic Compute
    #   Cloud (Amazon EC2) instance, Health might return events that aren't
    #   specific to that resource or service. To get events that are
    #   specific to a service, use the `services` parameter in the `filter`
    #   object. For more information, see [Event][3].
    #
    # * This API operation uses pagination. Specify the `nextToken`
    #   parameter in the next request to return more results.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html
    # [3]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html
    #
    # @option params [Types::EventFilter] :filter
    #   Values to narrow the results returned.
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @return [Types::DescribeEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::DescribeEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     filter: {
    #       event_arns: ["eventArn"],
    #       event_type_codes: ["eventType"],
    #       services: ["service"],
    #       regions: ["region"],
    #       availability_zones: ["availabilityZone"],
    #       start_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       end_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       last_updated_times: [
    #         {
    #           from: Time.now,
    #           to: Time.now,
    #         },
    #       ],
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange, investigation
    #       tags: [
    #         {
    #           "tagKey" => "tagValue",
    #         },
    #       ],
    #       event_status_codes: ["open"], # accepts open, closed, upcoming
    #     },
    #     next_token: "nextToken",
    #     max_results: 1,
    #     locale: "locale",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].arn #=> String
    #   resp.events[0].service #=> String
    #   resp.events[0].event_type_code #=> String
    #   resp.events[0].event_type_category #=> String, one of "issue", "accountNotification", "scheduledChange", "investigation"
    #   resp.events[0].region #=> String
    #   resp.events[0].availability_zone #=> String
    #   resp.events[0].start_time #=> Time
    #   resp.events[0].end_time #=> Time
    #   resp.events[0].last_updated_time #=> Time
    #   resp.events[0].status_code #=> String, one of "open", "closed", "upcoming"
    #   resp.events[0].event_scope_code #=> String, one of "PUBLIC", "ACCOUNT_SPECIFIC", "NONE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns information about events across your organization in
    # Organizations. You can use the`filters` parameter to specify the
    # events that you want to return. Events are returned in a summary form
    # and don't include the affected accounts, detailed description, any
    # additional metadata that depends on the event type, or any affected
    # resources. To retrieve that information, use the following operations:
    #
    # * [DescribeAffectedAccountsForOrganization][1]
    #
    # * [DescribeEventDetailsForOrganization][2]
    #
    # * [DescribeAffectedEntitiesForOrganization][3]
    #
    # If you don't specify a `filter`, the `DescribeEventsForOrganizations`
    # returns all events across your organization. Results are sorted by
    # `lastModifiedTime`, starting with the most recent event.
    #
    # For more information about the different types of Health events, see
    # [Event][4].
    #
    # Before you can call this operation, you must first enable Health to
    # work with Organizations. To do this, call the
    # [EnableHealthServiceAccessForOrganization][5] operation from your
    # organization's management account.
    #
    # <note markdown="1"> This API operation uses pagination. Specify the `nextToken` parameter
    # in the next request to return more results.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedAccountsForOrganization.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html
    # [3]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html
    # [4]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html
    # [5]: https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html
    #
    # @option params [Types::OrganizationEventFilter] :filter
    #   Values to narrow the results returned.
    #
    # @option params [String] :next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    # @option params [String] :locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #
    # @return [Types::DescribeEventsForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventsForOrganizationResponse#events #events} => Array&lt;Types::OrganizationEvent&gt;
    #   * {Types::DescribeEventsForOrganizationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events_for_organization({
    #     filter: {
    #       event_type_codes: ["eventType"],
    #       aws_account_ids: ["accountId"],
    #       services: ["service"],
    #       regions: ["region"],
    #       start_time: {
    #         from: Time.now,
    #         to: Time.now,
    #       },
    #       end_time: {
    #         from: Time.now,
    #         to: Time.now,
    #       },
    #       last_updated_time: {
    #         from: Time.now,
    #         to: Time.now,
    #       },
    #       entity_arns: ["entityArn"],
    #       entity_values: ["entityValue"],
    #       event_type_categories: ["issue"], # accepts issue, accountNotification, scheduledChange, investigation
    #       event_status_codes: ["open"], # accepts open, closed, upcoming
    #     },
    #     next_token: "nextToken",
    #     max_results: 1,
    #     locale: "locale",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].arn #=> String
    #   resp.events[0].service #=> String
    #   resp.events[0].event_type_code #=> String
    #   resp.events[0].event_type_category #=> String, one of "issue", "accountNotification", "scheduledChange", "investigation"
    #   resp.events[0].event_scope_code #=> String, one of "PUBLIC", "ACCOUNT_SPECIFIC", "NONE"
    #   resp.events[0].region #=> String
    #   resp.events[0].start_time #=> Time
    #   resp.events[0].end_time #=> Time
    #   resp.events[0].last_updated_time #=> Time
    #   resp.events[0].status_code #=> String, one of "open", "closed", "upcoming"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventsForOrganization AWS API Documentation
    #
    # @overload describe_events_for_organization(params = {})
    # @param [Hash] params ({})
    def describe_events_for_organization(params = {}, options = {})
      req = build_request(:describe_events_for_organization, params)
      req.send_request(options)
    end

    # This operation provides status information on enabling or disabling
    # Health to work with your organization. To call this operation, you
    # must use the organization's management account.
    #
    # @return [Types::DescribeHealthServiceStatusForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHealthServiceStatusForOrganizationResponse#health_service_access_status_for_organization #health_service_access_status_for_organization} => String
    #
    # @example Response structure
    #
    #   resp.health_service_access_status_for_organization #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeHealthServiceStatusForOrganization AWS API Documentation
    #
    # @overload describe_health_service_status_for_organization(params = {})
    # @param [Hash] params ({})
    def describe_health_service_status_for_organization(params = {}, options = {})
      req = build_request(:describe_health_service_status_for_organization, params)
      req.send_request(options)
    end

    # Disables Health from working with Organizations. To call this
    # operation, you must sign in to the organization's management account.
    # For more information, see [Aggregating Health events][1] in the
    # *Health User Guide*.
    #
    # This operation doesn't remove the service-linked role from the
    # management account in your organization. You must use the IAM console,
    # API, or Command Line Interface (CLI) to remove the service-linked
    # role. For more information, see [Deleting a Service-Linked Role][2] in
    # the *IAM User Guide*.
    #
    # <note markdown="1"> You can also disable the organizational feature by using the
    # Organizations [DisableAWSServiceAccess][3] API operation. After you
    # call this operation, Health stops aggregating events for all other
    # Amazon Web Services accounts in your organization. If you call the
    # Health API operations for organizational view, Health returns an
    # error. Health continues to aggregate health events for your Amazon Web
    # Services account.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html#delete-service-linked-role
    # [3]: https://docs.aws.amazon.com/organizations/latest/APIReference/API_DisableAWSServiceAccess.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DisableHealthServiceAccessForOrganization AWS API Documentation
    #
    # @overload disable_health_service_access_for_organization(params = {})
    # @param [Hash] params ({})
    def disable_health_service_access_for_organization(params = {}, options = {})
      req = build_request(:disable_health_service_access_for_organization, params)
      req.send_request(options)
    end

    # Enables Health to work with Organizations. You can use the
    # organizational view feature to aggregate events from all Amazon Web
    # Services accounts in your organization in a centralized location.
    #
    # This operation also creates a service-linked role for the management
    # account in the organization.
    #
    # <note markdown="1"> To call this operation, you must meet the following requirements:
    #
    #  * You must have a Business, Enterprise On-Ramp, or Enterprise Support
    #   plan from [Amazon Web Services Support][1] to use the Health API. If
    #   you call the Health API from an Amazon Web Services account that
    #   doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    #   plan, you receive a `SubscriptionRequiredException` error.
    #
    # * You must have permission to call this operation from the
    #   organization's management account. For example IAM policies, see
    #   [Health identity-based policy examples][2].
    #
    #  </note>
    #
    # If you don't have the required support plan, you can instead use the
    # Health console to enable the organizational view feature. For more
    # information, see [Aggregating Health events][3] in the *Health User
    # Guide*.
    #
    #
    #
    # [1]: http://aws.amazon.com/premiumsupport/
    # [2]: https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html
    # [3]: https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EnableHealthServiceAccessForOrganization AWS API Documentation
    #
    # @overload enable_health_service_access_for_organization(params = {})
    # @param [Hash] params ({})
    def enable_health_service_access_for_organization(params = {}, options = {})
      req = build_request(:enable_health_service_access_for_organization, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Health')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-health'
      context[:gem_version] = '1.82.0'
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
