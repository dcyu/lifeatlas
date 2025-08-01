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

module Aws::CodePipeline
  # An API client for CodePipeline.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodePipeline::Client.new(
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

    @identifier = :codepipeline

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
    add_plugin(Aws::CodePipeline::Plugins::Endpoints)

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
    #   @option options [Aws::CodePipeline::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CodePipeline::EndpointParameters`.
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

    # Returns information about a specified job and whether that job has
    # been received by the job worker. Used for custom actions only.
    #
    # @option params [required, String] :job_id
    #   The unique system-generated ID of the job for which you want to
    #   confirm receipt.
    #
    # @option params [required, String] :nonce
    #   A system-generated random number that CodePipeline uses to ensure that
    #   the job is being worked on by only one job worker. Get this number
    #   from the response of the PollForJobs request that returned this job.
    #
    # @return [Types::AcknowledgeJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcknowledgeJobOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.acknowledge_job({
    #     job_id: "JobId", # required
    #     nonce: "Nonce", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/AcknowledgeJob AWS API Documentation
    #
    # @overload acknowledge_job(params = {})
    # @param [Hash] params ({})
    def acknowledge_job(params = {}, options = {})
      req = build_request(:acknowledge_job, params)
      req.send_request(options)
    end

    # Confirms a job worker has received the specified job. Used for partner
    # actions only.
    #
    # @option params [required, String] :job_id
    #   The unique system-generated ID of the job.
    #
    # @option params [required, String] :nonce
    #   A system-generated random number that CodePipeline uses to ensure that
    #   the job is being worked on by only one job worker. Get this number
    #   from the response to a GetThirdPartyJobDetails request.
    #
    # @option params [required, String] :client_token
    #   The clientToken portion of the clientId and clientToken pair used to
    #   verify that the calling entity is allowed access to the job and its
    #   details.
    #
    # @return [Types::AcknowledgeThirdPartyJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcknowledgeThirdPartyJobOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.acknowledge_third_party_job({
    #     job_id: "ThirdPartyJobId", # required
    #     nonce: "Nonce", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/AcknowledgeThirdPartyJob AWS API Documentation
    #
    # @overload acknowledge_third_party_job(params = {})
    # @param [Hash] params ({})
    def acknowledge_third_party_job(params = {}, options = {})
      req = build_request(:acknowledge_third_party_job, params)
      req.send_request(options)
    end

    # Creates a new custom action that can be used in all pipelines
    # associated with the Amazon Web Services account. Only used for custom
    # actions.
    #
    # @option params [required, String] :category
    #   The category of the custom action, such as a build action or a test
    #   action.
    #
    # @option params [required, String] :provider
    #   The provider of the service used in the custom action, such as
    #   CodeDeploy.
    #
    # @option params [required, String] :version
    #   The version identifier of the custom action.
    #
    # @option params [Types::ActionTypeSettings] :settings
    #   URLs that provide users information about this custom action.
    #
    # @option params [Array<Types::ActionConfigurationProperty>] :configuration_properties
    #   The configuration properties for the custom action.
    #
    #   <note markdown="1"> You can refer to a name in the configuration properties of the custom
    #   action within the URL templates by following the format of
    #   \{Config:name}, as long as the configuration property is both required
    #   and not secret. For more information, see [Create a Custom Action for
    #   a Pipeline][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html
    #
    # @option params [required, Types::ArtifactDetails] :input_artifact_details
    #   The details of the input artifact for the action, such as its commit
    #   ID.
    #
    # @option params [required, Types::ArtifactDetails] :output_artifact_details
    #   The details of the output artifact of the action, such as its commit
    #   ID.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the custom action.
    #
    # @return [Types::CreateCustomActionTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomActionTypeOutput#action_type #action_type} => Types::ActionType
    #   * {Types::CreateCustomActionTypeOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_action_type({
    #     category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval, Compute
    #     provider: "ActionProvider", # required
    #     version: "Version", # required
    #     settings: {
    #       third_party_configuration_url: "Url",
    #       entity_url_template: "UrlTemplate",
    #       execution_url_template: "UrlTemplate",
    #       revision_url_template: "UrlTemplate",
    #     },
    #     configuration_properties: [
    #       {
    #         name: "ActionConfigurationKey", # required
    #         required: false, # required
    #         key: false, # required
    #         secret: false, # required
    #         queryable: false,
    #         description: "Description",
    #         type: "String", # accepts String, Number, Boolean
    #       },
    #     ],
    #     input_artifact_details: { # required
    #       minimum_count: 1, # required
    #       maximum_count: 1, # required
    #     },
    #     output_artifact_details: { # required
    #       minimum_count: 1, # required
    #       maximum_count: 1, # required
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
    #   resp.action_type.id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"
    #   resp.action_type.id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
    #   resp.action_type.id.provider #=> String
    #   resp.action_type.id.version #=> String
    #   resp.action_type.settings.third_party_configuration_url #=> String
    #   resp.action_type.settings.entity_url_template #=> String
    #   resp.action_type.settings.execution_url_template #=> String
    #   resp.action_type.settings.revision_url_template #=> String
    #   resp.action_type.action_configuration_properties #=> Array
    #   resp.action_type.action_configuration_properties[0].name #=> String
    #   resp.action_type.action_configuration_properties[0].required #=> Boolean
    #   resp.action_type.action_configuration_properties[0].key #=> Boolean
    #   resp.action_type.action_configuration_properties[0].secret #=> Boolean
    #   resp.action_type.action_configuration_properties[0].queryable #=> Boolean
    #   resp.action_type.action_configuration_properties[0].description #=> String
    #   resp.action_type.action_configuration_properties[0].type #=> String, one of "String", "Number", "Boolean"
    #   resp.action_type.input_artifact_details.minimum_count #=> Integer
    #   resp.action_type.input_artifact_details.maximum_count #=> Integer
    #   resp.action_type.output_artifact_details.minimum_count #=> Integer
    #   resp.action_type.output_artifact_details.maximum_count #=> Integer
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/CreateCustomActionType AWS API Documentation
    #
    # @overload create_custom_action_type(params = {})
    # @param [Hash] params ({})
    def create_custom_action_type(params = {}, options = {})
      req = build_request(:create_custom_action_type, params)
      req.send_request(options)
    end

    # Creates a pipeline.
    #
    # <note markdown="1"> In the pipeline structure, you must include either `artifactStore` or
    # `artifactStores` in your pipeline, but you cannot use both. If you
    # create a cross-region action in your pipeline, you must use
    # `artifactStores`.
    #
    #  </note>
    #
    # @option params [required, Types::PipelineDeclaration] :pipeline
    #   Represents the structure of actions and stages to be performed in the
    #   pipeline.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the pipeline.
    #
    # @return [Types::CreatePipelineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePipelineOutput#pipeline #pipeline} => Types::PipelineDeclaration
    #   * {Types::CreatePipelineOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pipeline({
    #     pipeline: { # required
    #       name: "PipelineName", # required
    #       role_arn: "RoleArn", # required
    #       artifact_store: {
    #         type: "S3", # required, accepts S3
    #         location: "ArtifactStoreLocation", # required
    #         encryption_key: {
    #           id: "EncryptionKeyId", # required
    #           type: "KMS", # required, accepts KMS
    #         },
    #       },
    #       artifact_stores: {
    #         "AWSRegionName" => {
    #           type: "S3", # required, accepts S3
    #           location: "ArtifactStoreLocation", # required
    #           encryption_key: {
    #             id: "EncryptionKeyId", # required
    #             type: "KMS", # required, accepts KMS
    #           },
    #         },
    #       },
    #       stages: [ # required
    #         {
    #           name: "StageName", # required
    #           blockers: [
    #             {
    #               name: "BlockerName", # required
    #               type: "Schedule", # required, accepts Schedule
    #             },
    #           ],
    #           actions: [ # required
    #             {
    #               name: "ActionName", # required
    #               action_type_id: { # required
    #                 category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval, Compute
    #                 owner: "AWS", # required, accepts AWS, ThirdParty, Custom
    #                 provider: "ActionProvider", # required
    #                 version: "Version", # required
    #               },
    #               run_order: 1,
    #               configuration: {
    #                 "ActionConfigurationKey" => "ActionConfigurationValue",
    #               },
    #               commands: ["Command"],
    #               output_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                   files: ["FilePath"],
    #                 },
    #               ],
    #               input_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                 },
    #               ],
    #               output_variables: ["OutputVariable"],
    #               role_arn: "RoleArn",
    #               region: "AWSRegionName",
    #               namespace: "ActionNamespace",
    #               timeout_in_minutes: 1,
    #               environment_variables: [
    #                 {
    #                   name: "EnvironmentVariableName", # required
    #                   value: "EnvironmentVariableValue", # required
    #                   type: "PLAINTEXT", # accepts PLAINTEXT, SECRETS_MANAGER
    #                 },
    #               ],
    #             },
    #           ],
    #           on_failure: {
    #             result: "ROLLBACK", # accepts ROLLBACK, FAIL, RETRY, SKIP
    #             retry_configuration: {
    #               retry_mode: "FAILED_ACTIONS", # accepts FAILED_ACTIONS, ALL_ACTIONS
    #             },
    #             conditions: [
    #               {
    #                 result: "ROLLBACK", # accepts ROLLBACK, FAIL, RETRY, SKIP
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule", # required, accepts Rule
    #                       owner: "AWS", # accepts AWS
    #                       provider: "RuleProvider", # required
    #                       version: "Version",
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue",
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       },
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1,
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           on_success: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK", # accepts ROLLBACK, FAIL, RETRY, SKIP
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule", # required, accepts Rule
    #                       owner: "AWS", # accepts AWS
    #                       provider: "RuleProvider", # required
    #                       version: "Version",
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue",
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       },
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1,
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           before_entry: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK", # accepts ROLLBACK, FAIL, RETRY, SKIP
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule", # required, accepts Rule
    #                       owner: "AWS", # accepts AWS
    #                       provider: "RuleProvider", # required
    #                       version: "Version",
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue",
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       },
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1,
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       version: 1,
    #       execution_mode: "QUEUED", # accepts QUEUED, SUPERSEDED, PARALLEL
    #       pipeline_type: "V1", # accepts V1, V2
    #       variables: [
    #         {
    #           name: "PipelineVariableName", # required
    #           default_value: "PipelineVariableValue",
    #           description: "PipelineVariableDescription",
    #         },
    #       ],
    #       triggers: [
    #         {
    #           provider_type: "CodeStarSourceConnection", # required, accepts CodeStarSourceConnection
    #           git_configuration: { # required
    #             source_action_name: "ActionName", # required
    #             push: [
    #               {
    #                 tags: {
    #                   includes: ["GitTagNamePattern"],
    #                   excludes: ["GitTagNamePattern"],
    #                 },
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"],
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"],
    #                 },
    #               },
    #             ],
    #             pull_request: [
    #               {
    #                 events: ["OPEN"], # accepts OPEN, UPDATED, CLOSED
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"],
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"],
    #                 },
    #               },
    #             ],
    #           },
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
    #   resp.pipeline.name #=> String
    #   resp.pipeline.role_arn #=> String
    #   resp.pipeline.artifact_store.type #=> String, one of "S3"
    #   resp.pipeline.artifact_store.location #=> String
    #   resp.pipeline.artifact_store.encryption_key.id #=> String
    #   resp.pipeline.artifact_store.encryption_key.type #=> String, one of "KMS"
    #   resp.pipeline.artifact_stores #=> Hash
    #   resp.pipeline.artifact_stores["AWSRegionName"].type #=> String, one of "S3"
    #   resp.pipeline.artifact_stores["AWSRegionName"].location #=> String
    #   resp.pipeline.artifact_stores["AWSRegionName"].encryption_key.id #=> String
    #   resp.pipeline.artifact_stores["AWSRegionName"].encryption_key.type #=> String, one of "KMS"
    #   resp.pipeline.stages #=> Array
    #   resp.pipeline.stages[0].name #=> String
    #   resp.pipeline.stages[0].blockers #=> Array
    #   resp.pipeline.stages[0].blockers[0].name #=> String
    #   resp.pipeline.stages[0].blockers[0].type #=> String, one of "Schedule"
    #   resp.pipeline.stages[0].actions #=> Array
    #   resp.pipeline.stages[0].actions[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"
    #   resp.pipeline.stages[0].actions[0].action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
    #   resp.pipeline.stages[0].actions[0].action_type_id.provider #=> String
    #   resp.pipeline.stages[0].actions[0].action_type_id.version #=> String
    #   resp.pipeline.stages[0].actions[0].run_order #=> Integer
    #   resp.pipeline.stages[0].actions[0].configuration #=> Hash
    #   resp.pipeline.stages[0].actions[0].configuration["ActionConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].actions[0].commands #=> Array
    #   resp.pipeline.stages[0].actions[0].commands[0] #=> String
    #   resp.pipeline.stages[0].actions[0].output_artifacts #=> Array
    #   resp.pipeline.stages[0].actions[0].output_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].output_artifacts[0].files #=> Array
    #   resp.pipeline.stages[0].actions[0].output_artifacts[0].files[0] #=> String
    #   resp.pipeline.stages[0].actions[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].actions[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].output_variables #=> Array
    #   resp.pipeline.stages[0].actions[0].output_variables[0] #=> String
    #   resp.pipeline.stages[0].actions[0].role_arn #=> String
    #   resp.pipeline.stages[0].actions[0].region #=> String
    #   resp.pipeline.stages[0].actions[0].namespace #=> String
    #   resp.pipeline.stages[0].actions[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.stages[0].actions[0].environment_variables #=> Array
    #   resp.pipeline.stages[0].actions[0].environment_variables[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].environment_variables[0].value #=> String
    #   resp.pipeline.stages[0].actions[0].environment_variables[0].type #=> String, one of "PLAINTEXT", "SECRETS_MANAGER"
    #   resp.pipeline.stages[0].on_failure.result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].on_failure.retry_configuration.retry_mode #=> String, one of "FAILED_ACTIONS", "ALL_ACTIONS"
    #   resp.pipeline.stages[0].on_failure.conditions #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].name #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.category #=> String, one of "Rule"
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.owner #=> String, one of "AWS"
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.provider #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.version #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].configuration #=> Hash
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].configuration["RuleConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].commands #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].commands[0] #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].role_arn #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].region #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.stages[0].on_success.conditions #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].on_success.conditions[0].rules #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].name #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.category #=> String, one of "Rule"
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.owner #=> String, one of "AWS"
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.provider #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.version #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].configuration #=> Hash
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].configuration["RuleConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].commands #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].commands[0] #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].role_arn #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].region #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.stages[0].before_entry.conditions #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].name #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.category #=> String, one of "Rule"
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.owner #=> String, one of "AWS"
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.provider #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.version #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].configuration #=> Hash
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].configuration["RuleConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].commands #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].commands[0] #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].role_arn #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].region #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.version #=> Integer
    #   resp.pipeline.execution_mode #=> String, one of "QUEUED", "SUPERSEDED", "PARALLEL"
    #   resp.pipeline.pipeline_type #=> String, one of "V1", "V2"
    #   resp.pipeline.variables #=> Array
    #   resp.pipeline.variables[0].name #=> String
    #   resp.pipeline.variables[0].default_value #=> String
    #   resp.pipeline.variables[0].description #=> String
    #   resp.pipeline.triggers #=> Array
    #   resp.pipeline.triggers[0].provider_type #=> String, one of "CodeStarSourceConnection"
    #   resp.pipeline.triggers[0].git_configuration.source_action_name #=> String
    #   resp.pipeline.triggers[0].git_configuration.push #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].events #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].events[0] #=> String, one of "OPEN", "UPDATED", "CLOSED"
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.excludes[0] #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/CreatePipeline AWS API Documentation
    #
    # @overload create_pipeline(params = {})
    # @param [Hash] params ({})
    def create_pipeline(params = {}, options = {})
      req = build_request(:create_pipeline, params)
      req.send_request(options)
    end

    # Marks a custom action as deleted. `PollForJobs` for the custom action
    # fails after the action is marked for deletion. Used for custom actions
    # only.
    #
    # To re-create a custom action after it has been deleted you must use a
    # string in the version field that has never been used before. This
    # string can be an incremented version number, for example. To restore a
    # deleted custom action, use a JSON file that is identical to the
    # deleted action, including the original string in the version field.
    #
    # @option params [required, String] :category
    #   The category of the custom action that you want to delete, such as
    #   source or deploy.
    #
    # @option params [required, String] :provider
    #   The provider of the service used in the custom action, such as
    #   CodeDeploy.
    #
    # @option params [required, String] :version
    #   The version of the custom action to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_action_type({
    #     category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval, Compute
    #     provider: "ActionProvider", # required
    #     version: "Version", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeleteCustomActionType AWS API Documentation
    #
    # @overload delete_custom_action_type(params = {})
    # @param [Hash] params ({})
    def delete_custom_action_type(params = {}, options = {})
      req = build_request(:delete_custom_action_type, params)
      req.send_request(options)
    end

    # Deletes the specified pipeline.
    #
    # @option params [required, String] :name
    #   The name of the pipeline to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pipeline({
    #     name: "PipelineName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeletePipeline AWS API Documentation
    #
    # @overload delete_pipeline(params = {})
    # @param [Hash] params ({})
    def delete_pipeline(params = {}, options = {})
      req = build_request(:delete_pipeline, params)
      req.send_request(options)
    end

    # Deletes a previously created webhook by name. Deleting the webhook
    # stops CodePipeline from starting a pipeline every time an external
    # event occurs. The API returns successfully when trying to delete a
    # webhook that is already deleted. If a deleted webhook is re-created by
    # calling PutWebhook with the same name, it will have a different URL.
    #
    # @option params [required, String] :name
    #   The name of the webhook you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_webhook({
    #     name: "WebhookName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeleteWebhook AWS API Documentation
    #
    # @overload delete_webhook(params = {})
    # @param [Hash] params ({})
    def delete_webhook(params = {}, options = {})
      req = build_request(:delete_webhook, params)
      req.send_request(options)
    end

    # Removes the connection between the webhook that was created by
    # CodePipeline and the external tool with events to be detected.
    # Currently supported only for webhooks that target an action type of
    # GitHub.
    #
    # @option params [String] :webhook_name
    #   The name of the webhook you want to deregister.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_webhook_with_third_party({
    #     webhook_name: "WebhookName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DeregisterWebhookWithThirdParty AWS API Documentation
    #
    # @overload deregister_webhook_with_third_party(params = {})
    # @param [Hash] params ({})
    def deregister_webhook_with_third_party(params = {}, options = {})
      req = build_request(:deregister_webhook_with_third_party, params)
      req.send_request(options)
    end

    # Prevents artifacts in a pipeline from transitioning to the next stage
    # in the pipeline.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline in which you want to disable the flow of
    #   artifacts from one stage to another.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage where you want to disable the inbound or
    #   outbound transition of artifacts.
    #
    # @option params [required, String] :transition_type
    #   Specifies whether artifacts are prevented from transitioning into the
    #   stage and being processed by the actions in that stage (inbound), or
    #   prevented from transitioning from the stage after they have been
    #   processed by the actions in that stage (outbound).
    #
    # @option params [required, String] :reason
    #   The reason given to the user that a stage is disabled, such as waiting
    #   for manual approval or manual tests. This message is displayed in the
    #   pipeline console UI.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_stage_transition({
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     transition_type: "Inbound", # required, accepts Inbound, Outbound
    #     reason: "DisabledReason", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/DisableStageTransition AWS API Documentation
    #
    # @overload disable_stage_transition(params = {})
    # @param [Hash] params ({})
    def disable_stage_transition(params = {}, options = {})
      req = build_request(:disable_stage_transition, params)
      req.send_request(options)
    end

    # Enables artifacts in a pipeline to transition to a stage in a
    # pipeline.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline in which you want to enable the flow of
    #   artifacts from one stage to another.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage where you want to enable the transition of
    #   artifacts, either into the stage (inbound) or from that stage to the
    #   next stage (outbound).
    #
    # @option params [required, String] :transition_type
    #   Specifies whether artifacts are allowed to enter the stage and be
    #   processed by the actions in that stage (inbound) or whether already
    #   processed artifacts are allowed to transition to the next stage
    #   (outbound).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_stage_transition({
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     transition_type: "Inbound", # required, accepts Inbound, Outbound
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/EnableStageTransition AWS API Documentation
    #
    # @overload enable_stage_transition(params = {})
    # @param [Hash] params ({})
    def enable_stage_transition(params = {}, options = {})
      req = build_request(:enable_stage_transition, params)
      req.send_request(options)
    end

    # Returns information about an action type created for an external
    # provider, where the action is to be used by customers of the external
    # provider. The action can be created with any supported integration
    # model.
    #
    # @option params [required, String] :category
    #   Defines what kind of action can be taken in the stage. The following
    #   are the valid values:
    #
    #   * `Source`
    #
    #   * `Build`
    #
    #   * `Test`
    #
    #   * `Deploy`
    #
    #   * `Approval`
    #
    #   * `Invoke`
    #
    #   * `Compute`
    #
    # @option params [required, String] :owner
    #   The creator of an action type that was created with any supported
    #   integration model. There are two valid values: `AWS` and `ThirdParty`.
    #
    # @option params [required, String] :provider
    #   The provider of the action type being called. The provider name is
    #   specified when the action type is created.
    #
    # @option params [required, String] :version
    #   A string that describes the action type version.
    #
    # @return [Types::GetActionTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetActionTypeOutput#action_type #action_type} => Types::ActionTypeDeclaration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_action_type({
    #     category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval, Compute
    #     owner: "ActionTypeOwner", # required
    #     provider: "ActionProvider", # required
    #     version: "Version", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action_type.description #=> String
    #   resp.action_type.executor.configuration.lambda_executor_configuration.lambda_function_arn #=> String
    #   resp.action_type.executor.configuration.job_worker_executor_configuration.polling_accounts #=> Array
    #   resp.action_type.executor.configuration.job_worker_executor_configuration.polling_accounts[0] #=> String
    #   resp.action_type.executor.configuration.job_worker_executor_configuration.polling_service_principals #=> Array
    #   resp.action_type.executor.configuration.job_worker_executor_configuration.polling_service_principals[0] #=> String
    #   resp.action_type.executor.type #=> String, one of "JobWorker", "Lambda"
    #   resp.action_type.executor.policy_statements_template #=> String
    #   resp.action_type.executor.job_timeout #=> Integer
    #   resp.action_type.id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"
    #   resp.action_type.id.owner #=> String
    #   resp.action_type.id.provider #=> String
    #   resp.action_type.id.version #=> String
    #   resp.action_type.input_artifact_details.minimum_count #=> Integer
    #   resp.action_type.input_artifact_details.maximum_count #=> Integer
    #   resp.action_type.output_artifact_details.minimum_count #=> Integer
    #   resp.action_type.output_artifact_details.maximum_count #=> Integer
    #   resp.action_type.permissions.allowed_accounts #=> Array
    #   resp.action_type.permissions.allowed_accounts[0] #=> String
    #   resp.action_type.properties #=> Array
    #   resp.action_type.properties[0].name #=> String
    #   resp.action_type.properties[0].optional #=> Boolean
    #   resp.action_type.properties[0].key #=> Boolean
    #   resp.action_type.properties[0].no_echo #=> Boolean
    #   resp.action_type.properties[0].queryable #=> Boolean
    #   resp.action_type.properties[0].description #=> String
    #   resp.action_type.urls.configuration_url #=> String
    #   resp.action_type.urls.entity_url_template #=> String
    #   resp.action_type.urls.execution_url_template #=> String
    #   resp.action_type.urls.revision_url_template #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetActionType AWS API Documentation
    #
    # @overload get_action_type(params = {})
    # @param [Hash] params ({})
    def get_action_type(params = {}, options = {})
      req = build_request(:get_action_type, params)
      req.send_request(options)
    end

    # Returns information about a job. Used for custom actions only.
    #
    # When this API is called, CodePipeline returns temporary credentials
    # for the S3 bucket used to store artifacts for the pipeline, if the
    # action requires access to that S3 bucket for input or output
    # artifacts. This API also returns any secret values defined for the
    # action.
    #
    # @option params [required, String] :job_id
    #   The unique system-generated ID for the job.
    #
    # @return [Types::GetJobDetailsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobDetailsOutput#job_details #job_details} => Types::JobDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_details({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_details.id #=> String
    #   resp.job_details.data.action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"
    #   resp.job_details.data.action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
    #   resp.job_details.data.action_type_id.provider #=> String
    #   resp.job_details.data.action_type_id.version #=> String
    #   resp.job_details.data.action_configuration.configuration #=> Hash
    #   resp.job_details.data.action_configuration.configuration["ActionConfigurationKey"] #=> String
    #   resp.job_details.data.pipeline_context.pipeline_name #=> String
    #   resp.job_details.data.pipeline_context.stage.name #=> String
    #   resp.job_details.data.pipeline_context.action.name #=> String
    #   resp.job_details.data.pipeline_context.action.action_execution_id #=> String
    #   resp.job_details.data.pipeline_context.pipeline_arn #=> String
    #   resp.job_details.data.pipeline_context.pipeline_execution_id #=> String
    #   resp.job_details.data.input_artifacts #=> Array
    #   resp.job_details.data.input_artifacts[0].name #=> String
    #   resp.job_details.data.input_artifacts[0].revision #=> String
    #   resp.job_details.data.input_artifacts[0].location.type #=> String, one of "S3"
    #   resp.job_details.data.input_artifacts[0].location.s3_location.bucket_name #=> String
    #   resp.job_details.data.input_artifacts[0].location.s3_location.object_key #=> String
    #   resp.job_details.data.output_artifacts #=> Array
    #   resp.job_details.data.output_artifacts[0].name #=> String
    #   resp.job_details.data.output_artifacts[0].revision #=> String
    #   resp.job_details.data.output_artifacts[0].location.type #=> String, one of "S3"
    #   resp.job_details.data.output_artifacts[0].location.s3_location.bucket_name #=> String
    #   resp.job_details.data.output_artifacts[0].location.s3_location.object_key #=> String
    #   resp.job_details.data.artifact_credentials.access_key_id #=> String
    #   resp.job_details.data.artifact_credentials.secret_access_key #=> String
    #   resp.job_details.data.artifact_credentials.session_token #=> String
    #   resp.job_details.data.continuation_token #=> String
    #   resp.job_details.data.encryption_key.id #=> String
    #   resp.job_details.data.encryption_key.type #=> String, one of "KMS"
    #   resp.job_details.account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetJobDetails AWS API Documentation
    #
    # @overload get_job_details(params = {})
    # @param [Hash] params ({})
    def get_job_details(params = {}, options = {})
      req = build_request(:get_job_details, params)
      req.send_request(options)
    end

    # Returns the metadata, structure, stages, and actions of a pipeline.
    # Can be used to return the entire structure of a pipeline in JSON
    # format, which can then be modified and used to update the pipeline
    # structure with UpdatePipeline.
    #
    # @option params [required, String] :name
    #   The name of the pipeline for which you want to get information.
    #   Pipeline names must be unique in an Amazon Web Services account.
    #
    # @option params [Integer] :version
    #   The version number of the pipeline. If you do not specify a version,
    #   defaults to the current version.
    #
    # @return [Types::GetPipelineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPipelineOutput#pipeline #pipeline} => Types::PipelineDeclaration
    #   * {Types::GetPipelineOutput#metadata #metadata} => Types::PipelineMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline({
    #     name: "PipelineName", # required
    #     version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.name #=> String
    #   resp.pipeline.role_arn #=> String
    #   resp.pipeline.artifact_store.type #=> String, one of "S3"
    #   resp.pipeline.artifact_store.location #=> String
    #   resp.pipeline.artifact_store.encryption_key.id #=> String
    #   resp.pipeline.artifact_store.encryption_key.type #=> String, one of "KMS"
    #   resp.pipeline.artifact_stores #=> Hash
    #   resp.pipeline.artifact_stores["AWSRegionName"].type #=> String, one of "S3"
    #   resp.pipeline.artifact_stores["AWSRegionName"].location #=> String
    #   resp.pipeline.artifact_stores["AWSRegionName"].encryption_key.id #=> String
    #   resp.pipeline.artifact_stores["AWSRegionName"].encryption_key.type #=> String, one of "KMS"
    #   resp.pipeline.stages #=> Array
    #   resp.pipeline.stages[0].name #=> String
    #   resp.pipeline.stages[0].blockers #=> Array
    #   resp.pipeline.stages[0].blockers[0].name #=> String
    #   resp.pipeline.stages[0].blockers[0].type #=> String, one of "Schedule"
    #   resp.pipeline.stages[0].actions #=> Array
    #   resp.pipeline.stages[0].actions[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"
    #   resp.pipeline.stages[0].actions[0].action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
    #   resp.pipeline.stages[0].actions[0].action_type_id.provider #=> String
    #   resp.pipeline.stages[0].actions[0].action_type_id.version #=> String
    #   resp.pipeline.stages[0].actions[0].run_order #=> Integer
    #   resp.pipeline.stages[0].actions[0].configuration #=> Hash
    #   resp.pipeline.stages[0].actions[0].configuration["ActionConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].actions[0].commands #=> Array
    #   resp.pipeline.stages[0].actions[0].commands[0] #=> String
    #   resp.pipeline.stages[0].actions[0].output_artifacts #=> Array
    #   resp.pipeline.stages[0].actions[0].output_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].output_artifacts[0].files #=> Array
    #   resp.pipeline.stages[0].actions[0].output_artifacts[0].files[0] #=> String
    #   resp.pipeline.stages[0].actions[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].actions[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].output_variables #=> Array
    #   resp.pipeline.stages[0].actions[0].output_variables[0] #=> String
    #   resp.pipeline.stages[0].actions[0].role_arn #=> String
    #   resp.pipeline.stages[0].actions[0].region #=> String
    #   resp.pipeline.stages[0].actions[0].namespace #=> String
    #   resp.pipeline.stages[0].actions[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.stages[0].actions[0].environment_variables #=> Array
    #   resp.pipeline.stages[0].actions[0].environment_variables[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].environment_variables[0].value #=> String
    #   resp.pipeline.stages[0].actions[0].environment_variables[0].type #=> String, one of "PLAINTEXT", "SECRETS_MANAGER"
    #   resp.pipeline.stages[0].on_failure.result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].on_failure.retry_configuration.retry_mode #=> String, one of "FAILED_ACTIONS", "ALL_ACTIONS"
    #   resp.pipeline.stages[0].on_failure.conditions #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].name #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.category #=> String, one of "Rule"
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.owner #=> String, one of "AWS"
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.provider #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.version #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].configuration #=> Hash
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].configuration["RuleConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].commands #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].commands[0] #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].role_arn #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].region #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.stages[0].on_success.conditions #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].on_success.conditions[0].rules #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].name #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.category #=> String, one of "Rule"
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.owner #=> String, one of "AWS"
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.provider #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.version #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].configuration #=> Hash
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].configuration["RuleConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].commands #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].commands[0] #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].role_arn #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].region #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.stages[0].before_entry.conditions #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].name #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.category #=> String, one of "Rule"
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.owner #=> String, one of "AWS"
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.provider #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.version #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].configuration #=> Hash
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].configuration["RuleConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].commands #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].commands[0] #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].role_arn #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].region #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.version #=> Integer
    #   resp.pipeline.execution_mode #=> String, one of "QUEUED", "SUPERSEDED", "PARALLEL"
    #   resp.pipeline.pipeline_type #=> String, one of "V1", "V2"
    #   resp.pipeline.variables #=> Array
    #   resp.pipeline.variables[0].name #=> String
    #   resp.pipeline.variables[0].default_value #=> String
    #   resp.pipeline.variables[0].description #=> String
    #   resp.pipeline.triggers #=> Array
    #   resp.pipeline.triggers[0].provider_type #=> String, one of "CodeStarSourceConnection"
    #   resp.pipeline.triggers[0].git_configuration.source_action_name #=> String
    #   resp.pipeline.triggers[0].git_configuration.push #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].events #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].events[0] #=> String, one of "OPEN", "UPDATED", "CLOSED"
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.excludes[0] #=> String
    #   resp.metadata.pipeline_arn #=> String
    #   resp.metadata.created #=> Time
    #   resp.metadata.updated #=> Time
    #   resp.metadata.polling_disabled_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipeline AWS API Documentation
    #
    # @overload get_pipeline(params = {})
    # @param [Hash] params ({})
    def get_pipeline(params = {}, options = {})
      req = build_request(:get_pipeline, params)
      req.send_request(options)
    end

    # Returns information about an execution of a pipeline, including
    # details about artifacts, the pipeline execution ID, and the name,
    # version, and status of the pipeline.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline about which you want to get execution
    #   details.
    #
    # @option params [required, String] :pipeline_execution_id
    #   The ID of the pipeline execution about which you want to get execution
    #   details.
    #
    # @return [Types::GetPipelineExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPipelineExecutionOutput#pipeline_execution #pipeline_execution} => Types::PipelineExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline_execution({
    #     pipeline_name: "PipelineName", # required
    #     pipeline_execution_id: "PipelineExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_execution.pipeline_name #=> String
    #   resp.pipeline_execution.pipeline_version #=> Integer
    #   resp.pipeline_execution.pipeline_execution_id #=> String
    #   resp.pipeline_execution.status #=> String, one of "Cancelled", "InProgress", "Stopped", "Stopping", "Succeeded", "Superseded", "Failed"
    #   resp.pipeline_execution.status_summary #=> String
    #   resp.pipeline_execution.artifact_revisions #=> Array
    #   resp.pipeline_execution.artifact_revisions[0].name #=> String
    #   resp.pipeline_execution.artifact_revisions[0].revision_id #=> String
    #   resp.pipeline_execution.artifact_revisions[0].revision_change_identifier #=> String
    #   resp.pipeline_execution.artifact_revisions[0].revision_summary #=> String
    #   resp.pipeline_execution.artifact_revisions[0].created #=> Time
    #   resp.pipeline_execution.artifact_revisions[0].revision_url #=> String
    #   resp.pipeline_execution.variables #=> Array
    #   resp.pipeline_execution.variables[0].name #=> String
    #   resp.pipeline_execution.variables[0].resolved_value #=> String
    #   resp.pipeline_execution.trigger.trigger_type #=> String, one of "CreatePipeline", "StartPipelineExecution", "PollForSourceChanges", "Webhook", "CloudWatchEvent", "PutActionRevision", "WebhookV2", "ManualRollback", "AutomatedRollback"
    #   resp.pipeline_execution.trigger.trigger_detail #=> String
    #   resp.pipeline_execution.execution_mode #=> String, one of "QUEUED", "SUPERSEDED", "PARALLEL"
    #   resp.pipeline_execution.execution_type #=> String, one of "STANDARD", "ROLLBACK"
    #   resp.pipeline_execution.rollback_metadata.rollback_target_pipeline_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipelineExecution AWS API Documentation
    #
    # @overload get_pipeline_execution(params = {})
    # @param [Hash] params ({})
    def get_pipeline_execution(params = {}, options = {})
      req = build_request(:get_pipeline_execution, params)
      req.send_request(options)
    end

    # Returns information about the state of a pipeline, including the
    # stages and actions.
    #
    # <note markdown="1"> Values returned in the `revisionId` and `revisionUrl` fields indicate
    # the source revision information, such as the commit ID, for the
    # current state.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the pipeline about which you want to get information.
    #
    # @return [Types::GetPipelineStateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPipelineStateOutput#pipeline_name #pipeline_name} => String
    #   * {Types::GetPipelineStateOutput#pipeline_version #pipeline_version} => Integer
    #   * {Types::GetPipelineStateOutput#stage_states #stage_states} => Array&lt;Types::StageState&gt;
    #   * {Types::GetPipelineStateOutput#created #created} => Time
    #   * {Types::GetPipelineStateOutput#updated #updated} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pipeline_state({
    #     name: "PipelineName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_name #=> String
    #   resp.pipeline_version #=> Integer
    #   resp.stage_states #=> Array
    #   resp.stage_states[0].stage_name #=> String
    #   resp.stage_states[0].inbound_execution.pipeline_execution_id #=> String
    #   resp.stage_states[0].inbound_execution.status #=> String, one of "Cancelled", "InProgress", "Failed", "Stopped", "Stopping", "Succeeded", "Skipped"
    #   resp.stage_states[0].inbound_execution.type #=> String, one of "STANDARD", "ROLLBACK"
    #   resp.stage_states[0].inbound_executions #=> Array
    #   resp.stage_states[0].inbound_executions[0].pipeline_execution_id #=> String
    #   resp.stage_states[0].inbound_executions[0].status #=> String, one of "Cancelled", "InProgress", "Failed", "Stopped", "Stopping", "Succeeded", "Skipped"
    #   resp.stage_states[0].inbound_executions[0].type #=> String, one of "STANDARD", "ROLLBACK"
    #   resp.stage_states[0].inbound_transition_state.enabled #=> Boolean
    #   resp.stage_states[0].inbound_transition_state.last_changed_by #=> String
    #   resp.stage_states[0].inbound_transition_state.last_changed_at #=> Time
    #   resp.stage_states[0].inbound_transition_state.disabled_reason #=> String
    #   resp.stage_states[0].action_states #=> Array
    #   resp.stage_states[0].action_states[0].action_name #=> String
    #   resp.stage_states[0].action_states[0].current_revision.revision_id #=> String
    #   resp.stage_states[0].action_states[0].current_revision.revision_change_id #=> String
    #   resp.stage_states[0].action_states[0].current_revision.created #=> Time
    #   resp.stage_states[0].action_states[0].latest_execution.action_execution_id #=> String
    #   resp.stage_states[0].action_states[0].latest_execution.status #=> String, one of "InProgress", "Abandoned", "Succeeded", "Failed"
    #   resp.stage_states[0].action_states[0].latest_execution.summary #=> String
    #   resp.stage_states[0].action_states[0].latest_execution.last_status_change #=> Time
    #   resp.stage_states[0].action_states[0].latest_execution.token #=> String
    #   resp.stage_states[0].action_states[0].latest_execution.last_updated_by #=> String
    #   resp.stage_states[0].action_states[0].latest_execution.external_execution_id #=> String
    #   resp.stage_states[0].action_states[0].latest_execution.external_execution_url #=> String
    #   resp.stage_states[0].action_states[0].latest_execution.percent_complete #=> Integer
    #   resp.stage_states[0].action_states[0].latest_execution.error_details.code #=> String
    #   resp.stage_states[0].action_states[0].latest_execution.error_details.message #=> String
    #   resp.stage_states[0].action_states[0].latest_execution.log_stream_arn #=> String
    #   resp.stage_states[0].action_states[0].entity_url #=> String
    #   resp.stage_states[0].action_states[0].revision_url #=> String
    #   resp.stage_states[0].latest_execution.pipeline_execution_id #=> String
    #   resp.stage_states[0].latest_execution.status #=> String, one of "Cancelled", "InProgress", "Failed", "Stopped", "Stopping", "Succeeded", "Skipped"
    #   resp.stage_states[0].latest_execution.type #=> String, one of "STANDARD", "ROLLBACK"
    #   resp.stage_states[0].before_entry_condition_state.latest_execution.status #=> String, one of "InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"
    #   resp.stage_states[0].before_entry_condition_state.latest_execution.summary #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states #=> Array
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].latest_execution.status #=> String, one of "InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].latest_execution.summary #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].latest_execution.last_status_change #=> Time
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states #=> Array
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].rule_name #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].current_revision.revision_id #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].current_revision.revision_change_id #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].current_revision.created #=> Time
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].latest_execution.rule_execution_id #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].latest_execution.status #=> String, one of "InProgress", "Abandoned", "Succeeded", "Failed"
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].latest_execution.summary #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].latest_execution.last_status_change #=> Time
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].latest_execution.token #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].latest_execution.last_updated_by #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].latest_execution.external_execution_id #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].latest_execution.external_execution_url #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].latest_execution.error_details.code #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].latest_execution.error_details.message #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].entity_url #=> String
    #   resp.stage_states[0].before_entry_condition_state.condition_states[0].rule_states[0].revision_url #=> String
    #   resp.stage_states[0].on_success_condition_state.latest_execution.status #=> String, one of "InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"
    #   resp.stage_states[0].on_success_condition_state.latest_execution.summary #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states #=> Array
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].latest_execution.status #=> String, one of "InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].latest_execution.summary #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].latest_execution.last_status_change #=> Time
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states #=> Array
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].rule_name #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].current_revision.revision_id #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].current_revision.revision_change_id #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].current_revision.created #=> Time
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].latest_execution.rule_execution_id #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].latest_execution.status #=> String, one of "InProgress", "Abandoned", "Succeeded", "Failed"
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].latest_execution.summary #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].latest_execution.last_status_change #=> Time
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].latest_execution.token #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].latest_execution.last_updated_by #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].latest_execution.external_execution_id #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].latest_execution.external_execution_url #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].latest_execution.error_details.code #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].latest_execution.error_details.message #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].entity_url #=> String
    #   resp.stage_states[0].on_success_condition_state.condition_states[0].rule_states[0].revision_url #=> String
    #   resp.stage_states[0].on_failure_condition_state.latest_execution.status #=> String, one of "InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"
    #   resp.stage_states[0].on_failure_condition_state.latest_execution.summary #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states #=> Array
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].latest_execution.status #=> String, one of "InProgress", "Failed", "Errored", "Succeeded", "Cancelled", "Abandoned", "Overridden"
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].latest_execution.summary #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].latest_execution.last_status_change #=> Time
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states #=> Array
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].rule_name #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].current_revision.revision_id #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].current_revision.revision_change_id #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].current_revision.created #=> Time
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].latest_execution.rule_execution_id #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].latest_execution.status #=> String, one of "InProgress", "Abandoned", "Succeeded", "Failed"
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].latest_execution.summary #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].latest_execution.last_status_change #=> Time
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].latest_execution.token #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].latest_execution.last_updated_by #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].latest_execution.external_execution_id #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].latest_execution.external_execution_url #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].latest_execution.error_details.code #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].latest_execution.error_details.message #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].entity_url #=> String
    #   resp.stage_states[0].on_failure_condition_state.condition_states[0].rule_states[0].revision_url #=> String
    #   resp.stage_states[0].retry_stage_metadata.auto_stage_retry_attempt #=> Integer
    #   resp.stage_states[0].retry_stage_metadata.manual_stage_retry_attempt #=> Integer
    #   resp.stage_states[0].retry_stage_metadata.latest_retry_trigger #=> String, one of "AutomatedStageRetry", "ManualStageRetry"
    #   resp.created #=> Time
    #   resp.updated #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetPipelineState AWS API Documentation
    #
    # @overload get_pipeline_state(params = {})
    # @param [Hash] params ({})
    def get_pipeline_state(params = {}, options = {})
      req = build_request(:get_pipeline_state, params)
      req.send_request(options)
    end

    # Requests the details of a job for a third party action. Used for
    # partner actions only.
    #
    # When this API is called, CodePipeline returns temporary credentials
    # for the S3 bucket used to store artifacts for the pipeline, if the
    # action requires access to that S3 bucket for input or output
    # artifacts. This API also returns any secret values defined for the
    # action.
    #
    # @option params [required, String] :job_id
    #   The unique system-generated ID used for identifying the job.
    #
    # @option params [required, String] :client_token
    #   The clientToken portion of the clientId and clientToken pair used to
    #   verify that the calling entity is allowed access to the job and its
    #   details.
    #
    # @return [Types::GetThirdPartyJobDetailsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetThirdPartyJobDetailsOutput#job_details #job_details} => Types::ThirdPartyJobDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_third_party_job_details({
    #     job_id: "ThirdPartyJobId", # required
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_details.id #=> String
    #   resp.job_details.data.action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"
    #   resp.job_details.data.action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
    #   resp.job_details.data.action_type_id.provider #=> String
    #   resp.job_details.data.action_type_id.version #=> String
    #   resp.job_details.data.action_configuration.configuration #=> Hash
    #   resp.job_details.data.action_configuration.configuration["ActionConfigurationKey"] #=> String
    #   resp.job_details.data.pipeline_context.pipeline_name #=> String
    #   resp.job_details.data.pipeline_context.stage.name #=> String
    #   resp.job_details.data.pipeline_context.action.name #=> String
    #   resp.job_details.data.pipeline_context.action.action_execution_id #=> String
    #   resp.job_details.data.pipeline_context.pipeline_arn #=> String
    #   resp.job_details.data.pipeline_context.pipeline_execution_id #=> String
    #   resp.job_details.data.input_artifacts #=> Array
    #   resp.job_details.data.input_artifacts[0].name #=> String
    #   resp.job_details.data.input_artifacts[0].revision #=> String
    #   resp.job_details.data.input_artifacts[0].location.type #=> String, one of "S3"
    #   resp.job_details.data.input_artifacts[0].location.s3_location.bucket_name #=> String
    #   resp.job_details.data.input_artifacts[0].location.s3_location.object_key #=> String
    #   resp.job_details.data.output_artifacts #=> Array
    #   resp.job_details.data.output_artifacts[0].name #=> String
    #   resp.job_details.data.output_artifacts[0].revision #=> String
    #   resp.job_details.data.output_artifacts[0].location.type #=> String, one of "S3"
    #   resp.job_details.data.output_artifacts[0].location.s3_location.bucket_name #=> String
    #   resp.job_details.data.output_artifacts[0].location.s3_location.object_key #=> String
    #   resp.job_details.data.artifact_credentials.access_key_id #=> String
    #   resp.job_details.data.artifact_credentials.secret_access_key #=> String
    #   resp.job_details.data.artifact_credentials.session_token #=> String
    #   resp.job_details.data.continuation_token #=> String
    #   resp.job_details.data.encryption_key.id #=> String
    #   resp.job_details.data.encryption_key.type #=> String, one of "KMS"
    #   resp.job_details.nonce #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/GetThirdPartyJobDetails AWS API Documentation
    #
    # @overload get_third_party_job_details(params = {})
    # @param [Hash] params ({})
    def get_third_party_job_details(params = {}, options = {})
      req = build_request(:get_third_party_job_details, params)
      req.send_request(options)
    end

    # Lists the action executions that have occurred in a pipeline.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline for which you want to list action execution
    #   history.
    #
    # @option params [Types::ActionExecutionFilter] :filter
    #   Input information used to filter action execution history.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned nextToken
    #   value. Action execution history is retained for up to 12 months, based
    #   on action execution start times. Default value is 100.
    #
    # @option params [String] :next_token
    #   The token that was returned from the previous `ListActionExecutions`
    #   call, which can be used to return the next set of action executions in
    #   the list.
    #
    # @return [Types::ListActionExecutionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListActionExecutionsOutput#action_execution_details #action_execution_details} => Array&lt;Types::ActionExecutionDetail&gt;
    #   * {Types::ListActionExecutionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_action_executions({
    #     pipeline_name: "PipelineName", # required
    #     filter: {
    #       pipeline_execution_id: "PipelineExecutionId",
    #       latest_in_pipeline_execution: {
    #         pipeline_execution_id: "PipelineExecutionId", # required
    #         start_time_range: "Latest", # required, accepts Latest, All
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.action_execution_details #=> Array
    #   resp.action_execution_details[0].pipeline_execution_id #=> String
    #   resp.action_execution_details[0].action_execution_id #=> String
    #   resp.action_execution_details[0].pipeline_version #=> Integer
    #   resp.action_execution_details[0].stage_name #=> String
    #   resp.action_execution_details[0].action_name #=> String
    #   resp.action_execution_details[0].start_time #=> Time
    #   resp.action_execution_details[0].last_update_time #=> Time
    #   resp.action_execution_details[0].updated_by #=> String
    #   resp.action_execution_details[0].status #=> String, one of "InProgress", "Abandoned", "Succeeded", "Failed"
    #   resp.action_execution_details[0].input.action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"
    #   resp.action_execution_details[0].input.action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
    #   resp.action_execution_details[0].input.action_type_id.provider #=> String
    #   resp.action_execution_details[0].input.action_type_id.version #=> String
    #   resp.action_execution_details[0].input.configuration #=> Hash
    #   resp.action_execution_details[0].input.configuration["ActionConfigurationKey"] #=> String
    #   resp.action_execution_details[0].input.resolved_configuration #=> Hash
    #   resp.action_execution_details[0].input.resolved_configuration["String"] #=> String
    #   resp.action_execution_details[0].input.role_arn #=> String
    #   resp.action_execution_details[0].input.region #=> String
    #   resp.action_execution_details[0].input.input_artifacts #=> Array
    #   resp.action_execution_details[0].input.input_artifacts[0].name #=> String
    #   resp.action_execution_details[0].input.input_artifacts[0].s3location.bucket #=> String
    #   resp.action_execution_details[0].input.input_artifacts[0].s3location.key #=> String
    #   resp.action_execution_details[0].input.namespace #=> String
    #   resp.action_execution_details[0].output.output_artifacts #=> Array
    #   resp.action_execution_details[0].output.output_artifacts[0].name #=> String
    #   resp.action_execution_details[0].output.output_artifacts[0].s3location.bucket #=> String
    #   resp.action_execution_details[0].output.output_artifacts[0].s3location.key #=> String
    #   resp.action_execution_details[0].output.execution_result.external_execution_id #=> String
    #   resp.action_execution_details[0].output.execution_result.external_execution_summary #=> String
    #   resp.action_execution_details[0].output.execution_result.external_execution_url #=> String
    #   resp.action_execution_details[0].output.execution_result.error_details.code #=> String
    #   resp.action_execution_details[0].output.execution_result.error_details.message #=> String
    #   resp.action_execution_details[0].output.execution_result.log_stream_arn #=> String
    #   resp.action_execution_details[0].output.output_variables #=> Hash
    #   resp.action_execution_details[0].output.output_variables["OutputVariablesKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListActionExecutions AWS API Documentation
    #
    # @overload list_action_executions(params = {})
    # @param [Hash] params ({})
    def list_action_executions(params = {}, options = {})
      req = build_request(:list_action_executions, params)
      req.send_request(options)
    end

    # Gets a summary of all CodePipeline action types associated with your
    # account.
    #
    # @option params [String] :action_owner_filter
    #   Filters the list of action types to those created by a specified
    #   entity.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous list action types
    #   call, which can be used to return the next set of action types in the
    #   list.
    #
    # @option params [String] :region_filter
    #   The Region to filter on for the list of action types.
    #
    # @return [Types::ListActionTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListActionTypesOutput#action_types #action_types} => Array&lt;Types::ActionType&gt;
    #   * {Types::ListActionTypesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_action_types({
    #     action_owner_filter: "AWS", # accepts AWS, ThirdParty, Custom
    #     next_token: "NextToken",
    #     region_filter: "AWSRegionName",
    #   })
    #
    # @example Response structure
    #
    #   resp.action_types #=> Array
    #   resp.action_types[0].id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"
    #   resp.action_types[0].id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
    #   resp.action_types[0].id.provider #=> String
    #   resp.action_types[0].id.version #=> String
    #   resp.action_types[0].settings.third_party_configuration_url #=> String
    #   resp.action_types[0].settings.entity_url_template #=> String
    #   resp.action_types[0].settings.execution_url_template #=> String
    #   resp.action_types[0].settings.revision_url_template #=> String
    #   resp.action_types[0].action_configuration_properties #=> Array
    #   resp.action_types[0].action_configuration_properties[0].name #=> String
    #   resp.action_types[0].action_configuration_properties[0].required #=> Boolean
    #   resp.action_types[0].action_configuration_properties[0].key #=> Boolean
    #   resp.action_types[0].action_configuration_properties[0].secret #=> Boolean
    #   resp.action_types[0].action_configuration_properties[0].queryable #=> Boolean
    #   resp.action_types[0].action_configuration_properties[0].description #=> String
    #   resp.action_types[0].action_configuration_properties[0].type #=> String, one of "String", "Number", "Boolean"
    #   resp.action_types[0].input_artifact_details.minimum_count #=> Integer
    #   resp.action_types[0].input_artifact_details.maximum_count #=> Integer
    #   resp.action_types[0].output_artifact_details.minimum_count #=> Integer
    #   resp.action_types[0].output_artifact_details.maximum_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListActionTypes AWS API Documentation
    #
    # @overload list_action_types(params = {})
    # @param [Hash] params ({})
    def list_action_types(params = {}, options = {})
      req = build_request(:list_action_types, params)
      req.send_request(options)
    end

    # Lists the targets for the deploy action.
    #
    # @option params [String] :pipeline_name
    #   The name of the pipeline with the deploy action.
    #
    # @option params [required, String] :action_execution_id
    #   The execution ID for the deploy action.
    #
    # @option params [Array<Types::TargetFilter>] :filters
    #   Filters the targets for a specified deploy action.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned nextToken
    #   value.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous list action types
    #   call, which can be used to return the next set of action types in the
    #   list.
    #
    # @return [Types::ListDeployActionExecutionTargetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeployActionExecutionTargetsOutput#targets #targets} => Array&lt;Types::DeployActionExecutionTarget&gt;
    #   * {Types::ListDeployActionExecutionTargetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deploy_action_execution_targets({
    #     pipeline_name: "PipelineName",
    #     action_execution_id: "ActionExecutionId", # required
    #     filters: [
    #       {
    #         name: "TARGET_STATUS", # accepts TARGET_STATUS
    #         values: ["TargetFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.targets #=> Array
    #   resp.targets[0].target_id #=> String
    #   resp.targets[0].target_type #=> String
    #   resp.targets[0].status #=> String
    #   resp.targets[0].start_time #=> Time
    #   resp.targets[0].end_time #=> Time
    #   resp.targets[0].events #=> Array
    #   resp.targets[0].events[0].name #=> String
    #   resp.targets[0].events[0].status #=> String
    #   resp.targets[0].events[0].start_time #=> Time
    #   resp.targets[0].events[0].end_time #=> Time
    #   resp.targets[0].events[0].context.ssm_command_id #=> String
    #   resp.targets[0].events[0].context.message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListDeployActionExecutionTargets AWS API Documentation
    #
    # @overload list_deploy_action_execution_targets(params = {})
    # @param [Hash] params ({})
    def list_deploy_action_execution_targets(params = {}, options = {})
      req = build_request(:list_deploy_action_execution_targets, params)
      req.send_request(options)
    end

    # Gets a summary of the most recent executions for a pipeline.
    #
    # <note markdown="1"> When applying the filter for pipeline executions that have succeeded
    # in the stage, the operation returns all executions in the current
    # pipeline version beginning on February 1, 2024.
    #
    #  </note>
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline for which you want to get execution summary
    #   information.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned nextToken
    #   value. Pipeline history is limited to the most recent 12 months, based
    #   on pipeline execution start times. Default value is 100.
    #
    # @option params [Types::PipelineExecutionFilter] :filter
    #   The pipeline execution to filter on.
    #
    # @option params [String] :next_token
    #   The token that was returned from the previous `ListPipelineExecutions`
    #   call, which can be used to return the next set of pipeline executions
    #   in the list.
    #
    # @return [Types::ListPipelineExecutionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPipelineExecutionsOutput#pipeline_execution_summaries #pipeline_execution_summaries} => Array&lt;Types::PipelineExecutionSummary&gt;
    #   * {Types::ListPipelineExecutionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipeline_executions({
    #     pipeline_name: "PipelineName", # required
    #     max_results: 1,
    #     filter: {
    #       succeeded_in_stage: {
    #         stage_name: "StageName",
    #       },
    #     },
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_execution_summaries #=> Array
    #   resp.pipeline_execution_summaries[0].pipeline_execution_id #=> String
    #   resp.pipeline_execution_summaries[0].status #=> String, one of "Cancelled", "InProgress", "Stopped", "Stopping", "Succeeded", "Superseded", "Failed"
    #   resp.pipeline_execution_summaries[0].status_summary #=> String
    #   resp.pipeline_execution_summaries[0].start_time #=> Time
    #   resp.pipeline_execution_summaries[0].last_update_time #=> Time
    #   resp.pipeline_execution_summaries[0].source_revisions #=> Array
    #   resp.pipeline_execution_summaries[0].source_revisions[0].action_name #=> String
    #   resp.pipeline_execution_summaries[0].source_revisions[0].revision_id #=> String
    #   resp.pipeline_execution_summaries[0].source_revisions[0].revision_summary #=> String
    #   resp.pipeline_execution_summaries[0].source_revisions[0].revision_url #=> String
    #   resp.pipeline_execution_summaries[0].trigger.trigger_type #=> String, one of "CreatePipeline", "StartPipelineExecution", "PollForSourceChanges", "Webhook", "CloudWatchEvent", "PutActionRevision", "WebhookV2", "ManualRollback", "AutomatedRollback"
    #   resp.pipeline_execution_summaries[0].trigger.trigger_detail #=> String
    #   resp.pipeline_execution_summaries[0].stop_trigger.reason #=> String
    #   resp.pipeline_execution_summaries[0].execution_mode #=> String, one of "QUEUED", "SUPERSEDED", "PARALLEL"
    #   resp.pipeline_execution_summaries[0].execution_type #=> String, one of "STANDARD", "ROLLBACK"
    #   resp.pipeline_execution_summaries[0].rollback_metadata.rollback_target_pipeline_execution_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListPipelineExecutions AWS API Documentation
    #
    # @overload list_pipeline_executions(params = {})
    # @param [Hash] params ({})
    def list_pipeline_executions(params = {}, options = {})
      req = build_request(:list_pipeline_executions, params)
      req.send_request(options)
    end

    # Gets a summary of all of the pipelines associated with your account.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous list pipelines call.
    #   It can be used to return the next set of pipelines in the list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of pipelines to return in a single call. To
    #   retrieve the remaining pipelines, make another call with the returned
    #   nextToken value. The minimum value you can specify is 1. The maximum
    #   accepted value is 1000.
    #
    # @return [Types::ListPipelinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPipelinesOutput#pipelines #pipelines} => Array&lt;Types::PipelineSummary&gt;
    #   * {Types::ListPipelinesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipelines({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pipelines #=> Array
    #   resp.pipelines[0].name #=> String
    #   resp.pipelines[0].version #=> Integer
    #   resp.pipelines[0].pipeline_type #=> String, one of "V1", "V2"
    #   resp.pipelines[0].execution_mode #=> String, one of "QUEUED", "SUPERSEDED", "PARALLEL"
    #   resp.pipelines[0].created #=> Time
    #   resp.pipelines[0].updated #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListPipelines AWS API Documentation
    #
    # @overload list_pipelines(params = {})
    # @param [Hash] params ({})
    def list_pipelines(params = {}, options = {})
      req = build_request(:list_pipelines, params)
      req.send_request(options)
    end

    # Lists the rule executions that have occurred in a pipeline configured
    # for conditions with rules.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline for which you want to get execution summary
    #   information.
    #
    # @option params [Types::RuleExecutionFilter] :filter
    #   Input information used to filter rule execution history.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned nextToken
    #   value. Pipeline history is limited to the most recent 12 months, based
    #   on pipeline execution start times. Default value is 100.
    #
    # @option params [String] :next_token
    #   The token that was returned from the previous `ListRuleExecutions`
    #   call, which can be used to return the next set of rule executions in
    #   the list.
    #
    # @return [Types::ListRuleExecutionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleExecutionsOutput#rule_execution_details #rule_execution_details} => Array&lt;Types::RuleExecutionDetail&gt;
    #   * {Types::ListRuleExecutionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_executions({
    #     pipeline_name: "PipelineName", # required
    #     filter: {
    #       pipeline_execution_id: "PipelineExecutionId",
    #       latest_in_pipeline_execution: {
    #         pipeline_execution_id: "PipelineExecutionId", # required
    #         start_time_range: "Latest", # required, accepts Latest, All
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_execution_details #=> Array
    #   resp.rule_execution_details[0].pipeline_execution_id #=> String
    #   resp.rule_execution_details[0].rule_execution_id #=> String
    #   resp.rule_execution_details[0].pipeline_version #=> Integer
    #   resp.rule_execution_details[0].stage_name #=> String
    #   resp.rule_execution_details[0].rule_name #=> String
    #   resp.rule_execution_details[0].start_time #=> Time
    #   resp.rule_execution_details[0].last_update_time #=> Time
    #   resp.rule_execution_details[0].updated_by #=> String
    #   resp.rule_execution_details[0].status #=> String, one of "InProgress", "Abandoned", "Succeeded", "Failed"
    #   resp.rule_execution_details[0].input.rule_type_id.category #=> String, one of "Rule"
    #   resp.rule_execution_details[0].input.rule_type_id.owner #=> String, one of "AWS"
    #   resp.rule_execution_details[0].input.rule_type_id.provider #=> String
    #   resp.rule_execution_details[0].input.rule_type_id.version #=> String
    #   resp.rule_execution_details[0].input.configuration #=> Hash
    #   resp.rule_execution_details[0].input.configuration["RuleConfigurationKey"] #=> String
    #   resp.rule_execution_details[0].input.resolved_configuration #=> Hash
    #   resp.rule_execution_details[0].input.resolved_configuration["String"] #=> String
    #   resp.rule_execution_details[0].input.role_arn #=> String
    #   resp.rule_execution_details[0].input.region #=> String
    #   resp.rule_execution_details[0].input.input_artifacts #=> Array
    #   resp.rule_execution_details[0].input.input_artifacts[0].name #=> String
    #   resp.rule_execution_details[0].input.input_artifacts[0].s3location.bucket #=> String
    #   resp.rule_execution_details[0].input.input_artifacts[0].s3location.key #=> String
    #   resp.rule_execution_details[0].output.execution_result.external_execution_id #=> String
    #   resp.rule_execution_details[0].output.execution_result.external_execution_summary #=> String
    #   resp.rule_execution_details[0].output.execution_result.external_execution_url #=> String
    #   resp.rule_execution_details[0].output.execution_result.error_details.code #=> String
    #   resp.rule_execution_details[0].output.execution_result.error_details.message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListRuleExecutions AWS API Documentation
    #
    # @overload list_rule_executions(params = {})
    # @param [Hash] params ({})
    def list_rule_executions(params = {}, options = {})
      req = build_request(:list_rule_executions, params)
      req.send_request(options)
    end

    # Lists the rules for the condition. For more information about
    # conditions, see [Stage conditions][1] and [How do stage conditions
    # work?][2].For more information about rules, see the [CodePipeline rule
    # reference][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html
    # [2]: https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html
    # [3]: https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html
    #
    # @option params [String] :rule_owner_filter
    #   The rule owner to filter on.
    #
    # @option params [String] :region_filter
    #   The rule Region to filter on.
    #
    # @return [Types::ListRuleTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleTypesOutput#rule_types #rule_types} => Array&lt;Types::RuleType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_types({
    #     rule_owner_filter: "AWS", # accepts AWS
    #     region_filter: "AWSRegionName",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_types #=> Array
    #   resp.rule_types[0].id.category #=> String, one of "Rule"
    #   resp.rule_types[0].id.owner #=> String, one of "AWS"
    #   resp.rule_types[0].id.provider #=> String
    #   resp.rule_types[0].id.version #=> String
    #   resp.rule_types[0].settings.third_party_configuration_url #=> String
    #   resp.rule_types[0].settings.entity_url_template #=> String
    #   resp.rule_types[0].settings.execution_url_template #=> String
    #   resp.rule_types[0].settings.revision_url_template #=> String
    #   resp.rule_types[0].rule_configuration_properties #=> Array
    #   resp.rule_types[0].rule_configuration_properties[0].name #=> String
    #   resp.rule_types[0].rule_configuration_properties[0].required #=> Boolean
    #   resp.rule_types[0].rule_configuration_properties[0].key #=> Boolean
    #   resp.rule_types[0].rule_configuration_properties[0].secret #=> Boolean
    #   resp.rule_types[0].rule_configuration_properties[0].queryable #=> Boolean
    #   resp.rule_types[0].rule_configuration_properties[0].description #=> String
    #   resp.rule_types[0].rule_configuration_properties[0].type #=> String, one of "String", "Number", "Boolean"
    #   resp.rule_types[0].input_artifact_details.minimum_count #=> Integer
    #   resp.rule_types[0].input_artifact_details.maximum_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListRuleTypes AWS API Documentation
    #
    # @overload list_rule_types(params = {})
    # @param [Hash] params ({})
    def list_rule_types(params = {}, options = {})
      req = build_request(:list_rule_types, params)
      req.send_request(options)
    end

    # Gets the set of key-value pairs (metadata) that are used to manage the
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to get tags for.
    #
    # @option params [String] :next_token
    #   The token that was returned from the previous API call, which would be
    #   used to return the next page of the list. The ListTagsforResource call
    #   lists all available tags in one call and does not use pagination.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Gets a listing of all the webhooks in this Amazon Web Services Region
    # for this account. The output lists all webhooks and includes the
    # webhook URL and ARN and the configuration for each webhook.
    #
    # <note markdown="1"> If a secret token was provided, it will be redacted in the response.
    #
    #  </note>
    #
    # @option params [String] :next_token
    #   The token that was returned from the previous ListWebhooks call, which
    #   can be used to return the next set of webhooks in the list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned nextToken
    #   value.
    #
    # @return [Types::ListWebhooksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebhooksOutput#webhooks #webhooks} => Array&lt;Types::ListWebhookItem&gt;
    #   * {Types::ListWebhooksOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_webhooks({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.webhooks #=> Array
    #   resp.webhooks[0].definition.name #=> String
    #   resp.webhooks[0].definition.target_pipeline #=> String
    #   resp.webhooks[0].definition.target_action #=> String
    #   resp.webhooks[0].definition.filters #=> Array
    #   resp.webhooks[0].definition.filters[0].json_path #=> String
    #   resp.webhooks[0].definition.filters[0].match_equals #=> String
    #   resp.webhooks[0].definition.authentication #=> String, one of "GITHUB_HMAC", "IP", "UNAUTHENTICATED"
    #   resp.webhooks[0].definition.authentication_configuration.allowed_ip_range #=> String
    #   resp.webhooks[0].definition.authentication_configuration.secret_token #=> String
    #   resp.webhooks[0].url #=> String
    #   resp.webhooks[0].error_message #=> String
    #   resp.webhooks[0].error_code #=> String
    #   resp.webhooks[0].last_triggered #=> Time
    #   resp.webhooks[0].arn #=> String
    #   resp.webhooks[0].tags #=> Array
    #   resp.webhooks[0].tags[0].key #=> String
    #   resp.webhooks[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/ListWebhooks AWS API Documentation
    #
    # @overload list_webhooks(params = {})
    # @param [Hash] params ({})
    def list_webhooks(params = {}, options = {})
      req = build_request(:list_webhooks, params)
      req.send_request(options)
    end

    # Used to override a stage condition. For more information about
    # conditions, see [Stage conditions][1] and [How do stage conditions
    # work?][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html
    # [2]: https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline with the stage that will override the
    #   condition.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage for the override.
    #
    # @option params [required, String] :pipeline_execution_id
    #   The ID of the pipeline execution for the override.
    #
    # @option params [required, String] :condition_type
    #   The type of condition to override for the stage, such as entry
    #   conditions, failure conditions, or success conditions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.override_stage_condition({
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     pipeline_execution_id: "PipelineExecutionId", # required
    #     condition_type: "BEFORE_ENTRY", # required, accepts BEFORE_ENTRY, ON_SUCCESS
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/OverrideStageCondition AWS API Documentation
    #
    # @overload override_stage_condition(params = {})
    # @param [Hash] params ({})
    def override_stage_condition(params = {}, options = {})
      req = build_request(:override_stage_condition, params)
      req.send_request(options)
    end

    # Returns information about any jobs for CodePipeline to act on.
    # `PollForJobs` is valid only for action types with "Custom" in the
    # owner field. If the action type contains `AWS` or `ThirdParty` in the
    # owner field, the `PollForJobs` action returns an error.
    #
    # When this API is called, CodePipeline returns temporary credentials
    # for the S3 bucket used to store artifacts for the pipeline, if the
    # action requires access to that S3 bucket for input or output
    # artifacts. This API also returns any secret values defined for the
    # action.
    #
    # @option params [required, Types::ActionTypeId] :action_type_id
    #   Represents information about an action type.
    #
    # @option params [Integer] :max_batch_size
    #   The maximum number of jobs to return in a poll for jobs call.
    #
    # @option params [Hash<String,String>] :query_param
    #   A map of property names and values. For an action type with no
    #   queryable properties, this value must be null or an empty map. For an
    #   action type with a queryable property, you must supply that property
    #   as a key in the map. Only jobs whose action configuration matches the
    #   mapped value are returned.
    #
    # @return [Types::PollForJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PollForJobsOutput#jobs #jobs} => Array&lt;Types::Job&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.poll_for_jobs({
    #     action_type_id: { # required
    #       category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval, Compute
    #       owner: "AWS", # required, accepts AWS, ThirdParty, Custom
    #       provider: "ActionProvider", # required
    #       version: "Version", # required
    #     },
    #     max_batch_size: 1,
    #     query_param: {
    #       "ActionConfigurationKey" => "ActionConfigurationQueryableValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].id #=> String
    #   resp.jobs[0].data.action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"
    #   resp.jobs[0].data.action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
    #   resp.jobs[0].data.action_type_id.provider #=> String
    #   resp.jobs[0].data.action_type_id.version #=> String
    #   resp.jobs[0].data.action_configuration.configuration #=> Hash
    #   resp.jobs[0].data.action_configuration.configuration["ActionConfigurationKey"] #=> String
    #   resp.jobs[0].data.pipeline_context.pipeline_name #=> String
    #   resp.jobs[0].data.pipeline_context.stage.name #=> String
    #   resp.jobs[0].data.pipeline_context.action.name #=> String
    #   resp.jobs[0].data.pipeline_context.action.action_execution_id #=> String
    #   resp.jobs[0].data.pipeline_context.pipeline_arn #=> String
    #   resp.jobs[0].data.pipeline_context.pipeline_execution_id #=> String
    #   resp.jobs[0].data.input_artifacts #=> Array
    #   resp.jobs[0].data.input_artifacts[0].name #=> String
    #   resp.jobs[0].data.input_artifacts[0].revision #=> String
    #   resp.jobs[0].data.input_artifacts[0].location.type #=> String, one of "S3"
    #   resp.jobs[0].data.input_artifacts[0].location.s3_location.bucket_name #=> String
    #   resp.jobs[0].data.input_artifacts[0].location.s3_location.object_key #=> String
    #   resp.jobs[0].data.output_artifacts #=> Array
    #   resp.jobs[0].data.output_artifacts[0].name #=> String
    #   resp.jobs[0].data.output_artifacts[0].revision #=> String
    #   resp.jobs[0].data.output_artifacts[0].location.type #=> String, one of "S3"
    #   resp.jobs[0].data.output_artifacts[0].location.s3_location.bucket_name #=> String
    #   resp.jobs[0].data.output_artifacts[0].location.s3_location.object_key #=> String
    #   resp.jobs[0].data.artifact_credentials.access_key_id #=> String
    #   resp.jobs[0].data.artifact_credentials.secret_access_key #=> String
    #   resp.jobs[0].data.artifact_credentials.session_token #=> String
    #   resp.jobs[0].data.continuation_token #=> String
    #   resp.jobs[0].data.encryption_key.id #=> String
    #   resp.jobs[0].data.encryption_key.type #=> String, one of "KMS"
    #   resp.jobs[0].nonce #=> String
    #   resp.jobs[0].account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PollForJobs AWS API Documentation
    #
    # @overload poll_for_jobs(params = {})
    # @param [Hash] params ({})
    def poll_for_jobs(params = {}, options = {})
      req = build_request(:poll_for_jobs, params)
      req.send_request(options)
    end

    # Determines whether there are any third party jobs for a job worker to
    # act on. Used for partner actions only.
    #
    # When this API is called, CodePipeline returns temporary credentials
    # for the S3 bucket used to store artifacts for the pipeline, if the
    # action requires access to that S3 bucket for input or output
    # artifacts.
    #
    # @option params [required, Types::ActionTypeId] :action_type_id
    #   Represents information about an action type.
    #
    # @option params [Integer] :max_batch_size
    #   The maximum number of jobs to return in a poll for jobs call.
    #
    # @return [Types::PollForThirdPartyJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PollForThirdPartyJobsOutput#jobs #jobs} => Array&lt;Types::ThirdPartyJob&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.poll_for_third_party_jobs({
    #     action_type_id: { # required
    #       category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval, Compute
    #       owner: "AWS", # required, accepts AWS, ThirdParty, Custom
    #       provider: "ActionProvider", # required
    #       version: "Version", # required
    #     },
    #     max_batch_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].client_id #=> String
    #   resp.jobs[0].job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PollForThirdPartyJobs AWS API Documentation
    #
    # @overload poll_for_third_party_jobs(params = {})
    # @param [Hash] params ({})
    def poll_for_third_party_jobs(params = {}, options = {})
      req = build_request(:poll_for_third_party_jobs, params)
      req.send_request(options)
    end

    # Provides information to CodePipeline about new revisions to a source.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline that starts processing the revision to the
    #   source.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage that contains the action that acts on the
    #   revision.
    #
    # @option params [required, String] :action_name
    #   The name of the action that processes the revision.
    #
    # @option params [required, Types::ActionRevision] :action_revision
    #   Represents information about the version (or revision) of an action.
    #
    # @return [Types::PutActionRevisionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutActionRevisionOutput#new_revision #new_revision} => Boolean
    #   * {Types::PutActionRevisionOutput#pipeline_execution_id #pipeline_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_action_revision({
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     action_name: "ActionName", # required
    #     action_revision: { # required
    #       revision_id: "Revision", # required
    #       revision_change_id: "RevisionChangeIdentifier", # required
    #       created: Time.now, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.new_revision #=> Boolean
    #   resp.pipeline_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutActionRevision AWS API Documentation
    #
    # @overload put_action_revision(params = {})
    # @param [Hash] params ({})
    def put_action_revision(params = {}, options = {})
      req = build_request(:put_action_revision, params)
      req.send_request(options)
    end

    # Provides the response to a manual approval request to CodePipeline.
    # Valid responses include Approved and Rejected.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline that contains the action.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage that contains the action.
    #
    # @option params [required, String] :action_name
    #   The name of the action for which approval is requested.
    #
    # @option params [required, Types::ApprovalResult] :result
    #   Represents information about the result of the approval request.
    #
    # @option params [required, String] :token
    #   The system-generated token used to identify a unique approval request.
    #   The token for each open approval request can be obtained using the
    #   GetPipelineState action. It is used to validate that the approval
    #   request corresponding to this token is still valid.
    #
    #   For a pipeline where the execution mode is set to PARALLEL, the token
    #   required to approve/reject an approval request as detailed above is
    #   not available. Instead, use the `externalExecutionId` in the response
    #   output from the ListActionExecutions action as the token in the
    #   approval request.
    #
    # @return [Types::PutApprovalResultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutApprovalResultOutput#approved_at #approved_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_approval_result({
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     action_name: "ActionName", # required
    #     result: { # required
    #       summary: "ApprovalSummary", # required
    #       status: "Approved", # required, accepts Approved, Rejected
    #     },
    #     token: "ApprovalToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.approved_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutApprovalResult AWS API Documentation
    #
    # @overload put_approval_result(params = {})
    # @param [Hash] params ({})
    def put_approval_result(params = {}, options = {})
      req = build_request(:put_approval_result, params)
      req.send_request(options)
    end

    # Represents the failure of a job as returned to the pipeline by a job
    # worker. Used for custom actions only.
    #
    # @option params [required, String] :job_id
    #   The unique system-generated ID of the job that failed. This is the
    #   same ID returned from `PollForJobs`.
    #
    # @option params [required, Types::FailureDetails] :failure_details
    #   The details about the failure of a job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_job_failure_result({
    #     job_id: "JobId", # required
    #     failure_details: { # required
    #       type: "JobFailed", # required, accepts JobFailed, ConfigurationError, PermissionError, RevisionOutOfSync, RevisionUnavailable, SystemUnavailable
    #       message: "Message", # required
    #       external_execution_id: "ExecutionId",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutJobFailureResult AWS API Documentation
    #
    # @overload put_job_failure_result(params = {})
    # @param [Hash] params ({})
    def put_job_failure_result(params = {}, options = {})
      req = build_request(:put_job_failure_result, params)
      req.send_request(options)
    end

    # Represents the success of a job as returned to the pipeline by a job
    # worker. Used for custom actions only.
    #
    # @option params [required, String] :job_id
    #   The unique system-generated ID of the job that succeeded. This is the
    #   same ID returned from `PollForJobs`.
    #
    # @option params [Types::CurrentRevision] :current_revision
    #   The ID of the current revision of the artifact successfully worked on
    #   by the job.
    #
    # @option params [String] :continuation_token
    #   A token generated by a job worker, such as a CodeDeploy deployment ID,
    #   that a successful job provides to identify a custom action in
    #   progress. Future jobs use this token to identify the running instance
    #   of the action. It can be reused to return more information about the
    #   progress of the custom action. When the action is complete, no
    #   continuation token should be supplied.
    #
    # @option params [Types::ExecutionDetails] :execution_details
    #   The execution details of the successful job, such as the actions taken
    #   by the job worker.
    #
    # @option params [Hash<String,String>] :output_variables
    #   Key-value pairs produced as output by a job worker that can be made
    #   available to a downstream action configuration. `outputVariables` can
    #   be included only when there is no continuation token on the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_job_success_result({
    #     job_id: "JobId", # required
    #     current_revision: {
    #       revision: "Revision", # required
    #       change_identifier: "RevisionChangeIdentifier", # required
    #       created: Time.now,
    #       revision_summary: "RevisionSummary",
    #     },
    #     continuation_token: "ContinuationToken",
    #     execution_details: {
    #       summary: "ExecutionSummary",
    #       external_execution_id: "ExecutionId",
    #       percent_complete: 1,
    #     },
    #     output_variables: {
    #       "OutputVariablesKey" => "OutputVariablesValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutJobSuccessResult AWS API Documentation
    #
    # @overload put_job_success_result(params = {})
    # @param [Hash] params ({})
    def put_job_success_result(params = {}, options = {})
      req = build_request(:put_job_success_result, params)
      req.send_request(options)
    end

    # Represents the failure of a third party job as returned to the
    # pipeline by a job worker. Used for partner actions only.
    #
    # @option params [required, String] :job_id
    #   The ID of the job that failed. This is the same ID returned from
    #   `PollForThirdPartyJobs`.
    #
    # @option params [required, String] :client_token
    #   The clientToken portion of the clientId and clientToken pair used to
    #   verify that the calling entity is allowed access to the job and its
    #   details.
    #
    # @option params [required, Types::FailureDetails] :failure_details
    #   Represents information about failure details.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_third_party_job_failure_result({
    #     job_id: "ThirdPartyJobId", # required
    #     client_token: "ClientToken", # required
    #     failure_details: { # required
    #       type: "JobFailed", # required, accepts JobFailed, ConfigurationError, PermissionError, RevisionOutOfSync, RevisionUnavailable, SystemUnavailable
    #       message: "Message", # required
    #       external_execution_id: "ExecutionId",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutThirdPartyJobFailureResult AWS API Documentation
    #
    # @overload put_third_party_job_failure_result(params = {})
    # @param [Hash] params ({})
    def put_third_party_job_failure_result(params = {}, options = {})
      req = build_request(:put_third_party_job_failure_result, params)
      req.send_request(options)
    end

    # Represents the success of a third party job as returned to the
    # pipeline by a job worker. Used for partner actions only.
    #
    # @option params [required, String] :job_id
    #   The ID of the job that successfully completed. This is the same ID
    #   returned from `PollForThirdPartyJobs`.
    #
    # @option params [required, String] :client_token
    #   The clientToken portion of the clientId and clientToken pair used to
    #   verify that the calling entity is allowed access to the job and its
    #   details.
    #
    # @option params [Types::CurrentRevision] :current_revision
    #   Represents information about a current revision.
    #
    # @option params [String] :continuation_token
    #   A token generated by a job worker, such as a CodeDeploy deployment ID,
    #   that a successful job provides to identify a partner action in
    #   progress. Future jobs use this token to identify the running instance
    #   of the action. It can be reused to return more information about the
    #   progress of the partner action. When the action is complete, no
    #   continuation token should be supplied.
    #
    # @option params [Types::ExecutionDetails] :execution_details
    #   The details of the actions taken and results produced on an artifact
    #   as it passes through stages in the pipeline.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_third_party_job_success_result({
    #     job_id: "ThirdPartyJobId", # required
    #     client_token: "ClientToken", # required
    #     current_revision: {
    #       revision: "Revision", # required
    #       change_identifier: "RevisionChangeIdentifier", # required
    #       created: Time.now,
    #       revision_summary: "RevisionSummary",
    #     },
    #     continuation_token: "ContinuationToken",
    #     execution_details: {
    #       summary: "ExecutionSummary",
    #       external_execution_id: "ExecutionId",
    #       percent_complete: 1,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutThirdPartyJobSuccessResult AWS API Documentation
    #
    # @overload put_third_party_job_success_result(params = {})
    # @param [Hash] params ({})
    def put_third_party_job_success_result(params = {}, options = {})
      req = build_request(:put_third_party_job_success_result, params)
      req.send_request(options)
    end

    # Defines a webhook and returns a unique webhook URL generated by
    # CodePipeline. This URL can be supplied to third party source hosting
    # providers to call every time there's a code change. When CodePipeline
    # receives a POST request on this URL, the pipeline defined in the
    # webhook is started as long as the POST request satisfied the
    # authentication and filtering requirements supplied when defining the
    # webhook. RegisterWebhookWithThirdParty and
    # DeregisterWebhookWithThirdParty APIs can be used to automatically
    # configure supported third parties to call the generated webhook URL.
    #
    # When creating CodePipeline webhooks, do not use your own credentials
    # or reuse the same secret token across multiple webhooks. For optimal
    # security, generate a unique secret token for each webhook you create.
    # The secret token is an arbitrary string that you provide, which GitHub
    # uses to compute and sign the webhook payloads sent to CodePipeline,
    # for protecting the integrity and authenticity of the webhook payloads.
    # Using your own credentials or reusing the same token across multiple
    # webhooks can lead to security vulnerabilities.
    #
    # <note markdown="1"> If a secret token was provided, it will be redacted in the response.
    #
    #  </note>
    #
    # @option params [required, Types::WebhookDefinition] :webhook
    #   The detail provided in an input file to create the webhook, such as
    #   the webhook name, the pipeline name, and the action name. Give the
    #   webhook a unique name that helps you identify it. You might name the
    #   webhook after the pipeline and action it targets so that you can
    #   easily recognize what it's used for later.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the webhook.
    #
    # @return [Types::PutWebhookOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutWebhookOutput#webhook #webhook} => Types::ListWebhookItem
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_webhook({
    #     webhook: { # required
    #       name: "WebhookName", # required
    #       target_pipeline: "PipelineName", # required
    #       target_action: "ActionName", # required
    #       filters: [ # required
    #         {
    #           json_path: "JsonPath", # required
    #           match_equals: "MatchEquals",
    #         },
    #       ],
    #       authentication: "GITHUB_HMAC", # required, accepts GITHUB_HMAC, IP, UNAUTHENTICATED
    #       authentication_configuration: { # required
    #         allowed_ip_range: "WebhookAuthConfigurationAllowedIPRange",
    #         secret_token: "WebhookAuthConfigurationSecretToken",
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
    #   resp.webhook.definition.name #=> String
    #   resp.webhook.definition.target_pipeline #=> String
    #   resp.webhook.definition.target_action #=> String
    #   resp.webhook.definition.filters #=> Array
    #   resp.webhook.definition.filters[0].json_path #=> String
    #   resp.webhook.definition.filters[0].match_equals #=> String
    #   resp.webhook.definition.authentication #=> String, one of "GITHUB_HMAC", "IP", "UNAUTHENTICATED"
    #   resp.webhook.definition.authentication_configuration.allowed_ip_range #=> String
    #   resp.webhook.definition.authentication_configuration.secret_token #=> String
    #   resp.webhook.url #=> String
    #   resp.webhook.error_message #=> String
    #   resp.webhook.error_code #=> String
    #   resp.webhook.last_triggered #=> Time
    #   resp.webhook.arn #=> String
    #   resp.webhook.tags #=> Array
    #   resp.webhook.tags[0].key #=> String
    #   resp.webhook.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/PutWebhook AWS API Documentation
    #
    # @overload put_webhook(params = {})
    # @param [Hash] params ({})
    def put_webhook(params = {}, options = {})
      req = build_request(:put_webhook, params)
      req.send_request(options)
    end

    # Configures a connection between the webhook that was created and the
    # external tool with events to be detected.
    #
    # @option params [String] :webhook_name
    #   The name of an existing webhook created with PutWebhook to register
    #   with a supported third party.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_webhook_with_third_party({
    #     webhook_name: "WebhookName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/RegisterWebhookWithThirdParty AWS API Documentation
    #
    # @overload register_webhook_with_third_party(params = {})
    # @param [Hash] params ({})
    def register_webhook_with_third_party(params = {}, options = {})
      req = build_request(:register_webhook_with_third_party, params)
      req.send_request(options)
    end

    # You can retry a stage that has failed without having to run a pipeline
    # again from the beginning. You do this by either retrying the failed
    # actions in a stage or by retrying all actions in the stage starting
    # from the first action in the stage. When you retry the failed actions
    # in a stage, all actions that are still in progress continue working,
    # and failed actions are triggered again. When you retry a failed stage
    # from the first action in the stage, the stage cannot have any actions
    # in progress. Before a stage can be retried, it must either have all
    # actions failed or some actions failed and some succeeded.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline that contains the failed stage.
    #
    # @option params [required, String] :stage_name
    #   The name of the failed stage to be retried.
    #
    # @option params [required, String] :pipeline_execution_id
    #   The ID of the pipeline execution in the failed stage to be retried.
    #   Use the GetPipelineState action to retrieve the current
    #   pipelineExecutionId of the failed stage
    #
    # @option params [required, String] :retry_mode
    #   The scope of the retry attempt.
    #
    # @return [Types::RetryStageExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetryStageExecutionOutput#pipeline_execution_id #pipeline_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_stage_execution({
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     pipeline_execution_id: "PipelineExecutionId", # required
    #     retry_mode: "FAILED_ACTIONS", # required, accepts FAILED_ACTIONS, ALL_ACTIONS
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/RetryStageExecution AWS API Documentation
    #
    # @overload retry_stage_execution(params = {})
    # @param [Hash] params ({})
    def retry_stage_execution(params = {}, options = {})
      req = build_request(:retry_stage_execution, params)
      req.send_request(options)
    end

    # Rolls back a stage execution.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline for which the stage will be rolled back.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage in the pipeline to be rolled back.
    #
    # @option params [required, String] :target_pipeline_execution_id
    #   The pipeline execution ID for the stage to be rolled back to.
    #
    # @return [Types::RollbackStageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RollbackStageOutput#pipeline_execution_id #pipeline_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rollback_stage({
    #     pipeline_name: "PipelineName", # required
    #     stage_name: "StageName", # required
    #     target_pipeline_execution_id: "PipelineExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/RollbackStage AWS API Documentation
    #
    # @overload rollback_stage(params = {})
    # @param [Hash] params ({})
    def rollback_stage(params = {}, options = {})
      req = build_request(:rollback_stage, params)
      req.send_request(options)
    end

    # Starts the specified pipeline. Specifically, it begins processing the
    # latest commit to the source location specified as part of the
    # pipeline.
    #
    # @option params [required, String] :name
    #   The name of the pipeline to start.
    #
    # @option params [Array<Types::PipelineVariable>] :variables
    #   A list that overrides pipeline variables for a pipeline execution
    #   that's being started. Variable names must match `[A-Za-z0-9@\-_]+`,
    #   and the values can be anything except an empty string.
    #
    # @option params [String] :client_request_token
    #   The system-generated unique ID used to identify a unique execution
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::SourceRevisionOverride>] :source_revisions
    #   A list that allows you to specify, or override, the source revision
    #   for a pipeline execution that's being started. A source revision is
    #   the version with all the changes to your application code, or source
    #   artifact, for the pipeline execution.
    #
    # @return [Types::StartPipelineExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPipelineExecutionOutput#pipeline_execution_id #pipeline_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_pipeline_execution({
    #     name: "PipelineName", # required
    #     variables: [
    #       {
    #         name: "PipelineVariableName", # required
    #         value: "PipelineVariableValue", # required
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     source_revisions: [
    #       {
    #         action_name: "ActionName", # required
    #         revision_type: "COMMIT_ID", # required, accepts COMMIT_ID, IMAGE_DIGEST, S3_OBJECT_VERSION_ID, S3_OBJECT_KEY
    #         revision_value: "Revision", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StartPipelineExecution AWS API Documentation
    #
    # @overload start_pipeline_execution(params = {})
    # @param [Hash] params ({})
    def start_pipeline_execution(params = {}, options = {})
      req = build_request(:start_pipeline_execution, params)
      req.send_request(options)
    end

    # Stops the specified pipeline execution. You choose to either stop the
    # pipeline execution by completing in-progress actions without starting
    # subsequent actions, or by abandoning in-progress actions. While
    # completing or abandoning in-progress actions, the pipeline execution
    # is in a `Stopping` state. After all in-progress actions are completed
    # or abandoned, the pipeline execution is in a `Stopped` state.
    #
    # @option params [required, String] :pipeline_name
    #   The name of the pipeline to stop.
    #
    # @option params [required, String] :pipeline_execution_id
    #   The ID of the pipeline execution to be stopped in the current stage.
    #   Use the `GetPipelineState` action to retrieve the current
    #   pipelineExecutionId.
    #
    # @option params [Boolean] :abandon
    #   Use this option to stop the pipeline execution by abandoning, rather
    #   than finishing, in-progress actions.
    #
    #   <note markdown="1"> This option can lead to failed or out-of-sequence tasks.
    #
    #    </note>
    #
    # @option params [String] :reason
    #   Use this option to enter comments, such as the reason the pipeline was
    #   stopped.
    #
    # @return [Types::StopPipelineExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopPipelineExecutionOutput#pipeline_execution_id #pipeline_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_pipeline_execution({
    #     pipeline_name: "PipelineName", # required
    #     pipeline_execution_id: "PipelineExecutionId", # required
    #     abandon: false,
    #     reason: "StopPipelineExecutionReason",
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/StopPipelineExecution AWS API Documentation
    #
    # @overload stop_pipeline_execution(params = {})
    # @param [Hash] params ({})
    def stop_pipeline_execution(params = {}, options = {})
      req = build_request(:stop_pipeline_execution, params)
      req.send_request(options)
    end

    # Adds to or modifies the tags of the given resource. Tags are metadata
    # that can be used to manage a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to add tags
    #   to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags you want to modify or add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an Amazon Web Services resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of keys for the tags to be removed from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an action type that was created with any supported integration
    # model, where the action type is to be used by customers of the action
    # type provider. Use a JSON file with the action definition and
    # `UpdateActionType` to provide the full structure.
    #
    # @option params [required, Types::ActionTypeDeclaration] :action_type
    #   The action type definition for the action type to be updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_action_type({
    #     action_type: { # required
    #       description: "ActionTypeDescription",
    #       executor: { # required
    #         configuration: { # required
    #           lambda_executor_configuration: {
    #             lambda_function_arn: "LambdaFunctionArn", # required
    #           },
    #           job_worker_executor_configuration: {
    #             polling_accounts: ["AccountId"],
    #             polling_service_principals: ["ServicePrincipal"],
    #           },
    #         },
    #         type: "JobWorker", # required, accepts JobWorker, Lambda
    #         policy_statements_template: "PolicyStatementsTemplate",
    #         job_timeout: 1,
    #       },
    #       id: { # required
    #         category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval, Compute
    #         owner: "ActionTypeOwner", # required
    #         provider: "ActionProvider", # required
    #         version: "Version", # required
    #       },
    #       input_artifact_details: { # required
    #         minimum_count: 1, # required
    #         maximum_count: 1, # required
    #       },
    #       output_artifact_details: { # required
    #         minimum_count: 1, # required
    #         maximum_count: 1, # required
    #       },
    #       permissions: {
    #         allowed_accounts: ["AllowedAccount"], # required
    #       },
    #       properties: [
    #         {
    #           name: "ActionConfigurationKey", # required
    #           optional: false, # required
    #           key: false, # required
    #           no_echo: false, # required
    #           queryable: false,
    #           description: "PropertyDescription",
    #         },
    #       ],
    #       urls: {
    #         configuration_url: "Url",
    #         entity_url_template: "UrlTemplate",
    #         execution_url_template: "UrlTemplate",
    #         revision_url_template: "UrlTemplate",
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/UpdateActionType AWS API Documentation
    #
    # @overload update_action_type(params = {})
    # @param [Hash] params ({})
    def update_action_type(params = {}, options = {})
      req = build_request(:update_action_type, params)
      req.send_request(options)
    end

    # Updates a specified pipeline with edits or changes to its structure.
    # Use a JSON file with the pipeline structure and `UpdatePipeline` to
    # provide the full structure of the pipeline. Updating the pipeline
    # increases the version number of the pipeline by 1.
    #
    # @option params [required, Types::PipelineDeclaration] :pipeline
    #   The name of the pipeline to be updated.
    #
    # @return [Types::UpdatePipelineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePipelineOutput#pipeline #pipeline} => Types::PipelineDeclaration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline({
    #     pipeline: { # required
    #       name: "PipelineName", # required
    #       role_arn: "RoleArn", # required
    #       artifact_store: {
    #         type: "S3", # required, accepts S3
    #         location: "ArtifactStoreLocation", # required
    #         encryption_key: {
    #           id: "EncryptionKeyId", # required
    #           type: "KMS", # required, accepts KMS
    #         },
    #       },
    #       artifact_stores: {
    #         "AWSRegionName" => {
    #           type: "S3", # required, accepts S3
    #           location: "ArtifactStoreLocation", # required
    #           encryption_key: {
    #             id: "EncryptionKeyId", # required
    #             type: "KMS", # required, accepts KMS
    #           },
    #         },
    #       },
    #       stages: [ # required
    #         {
    #           name: "StageName", # required
    #           blockers: [
    #             {
    #               name: "BlockerName", # required
    #               type: "Schedule", # required, accepts Schedule
    #             },
    #           ],
    #           actions: [ # required
    #             {
    #               name: "ActionName", # required
    #               action_type_id: { # required
    #                 category: "Source", # required, accepts Source, Build, Deploy, Test, Invoke, Approval, Compute
    #                 owner: "AWS", # required, accepts AWS, ThirdParty, Custom
    #                 provider: "ActionProvider", # required
    #                 version: "Version", # required
    #               },
    #               run_order: 1,
    #               configuration: {
    #                 "ActionConfigurationKey" => "ActionConfigurationValue",
    #               },
    #               commands: ["Command"],
    #               output_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                   files: ["FilePath"],
    #                 },
    #               ],
    #               input_artifacts: [
    #                 {
    #                   name: "ArtifactName", # required
    #                 },
    #               ],
    #               output_variables: ["OutputVariable"],
    #               role_arn: "RoleArn",
    #               region: "AWSRegionName",
    #               namespace: "ActionNamespace",
    #               timeout_in_minutes: 1,
    #               environment_variables: [
    #                 {
    #                   name: "EnvironmentVariableName", # required
    #                   value: "EnvironmentVariableValue", # required
    #                   type: "PLAINTEXT", # accepts PLAINTEXT, SECRETS_MANAGER
    #                 },
    #               ],
    #             },
    #           ],
    #           on_failure: {
    #             result: "ROLLBACK", # accepts ROLLBACK, FAIL, RETRY, SKIP
    #             retry_configuration: {
    #               retry_mode: "FAILED_ACTIONS", # accepts FAILED_ACTIONS, ALL_ACTIONS
    #             },
    #             conditions: [
    #               {
    #                 result: "ROLLBACK", # accepts ROLLBACK, FAIL, RETRY, SKIP
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule", # required, accepts Rule
    #                       owner: "AWS", # accepts AWS
    #                       provider: "RuleProvider", # required
    #                       version: "Version",
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue",
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       },
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1,
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           on_success: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK", # accepts ROLLBACK, FAIL, RETRY, SKIP
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule", # required, accepts Rule
    #                       owner: "AWS", # accepts AWS
    #                       provider: "RuleProvider", # required
    #                       version: "Version",
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue",
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       },
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1,
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           before_entry: {
    #             conditions: [ # required
    #               {
    #                 result: "ROLLBACK", # accepts ROLLBACK, FAIL, RETRY, SKIP
    #                 rules: [
    #                   {
    #                     name: "RuleName", # required
    #                     rule_type_id: { # required
    #                       category: "Rule", # required, accepts Rule
    #                       owner: "AWS", # accepts AWS
    #                       provider: "RuleProvider", # required
    #                       version: "Version",
    #                     },
    #                     configuration: {
    #                       "RuleConfigurationKey" => "RuleConfigurationValue",
    #                     },
    #                     commands: ["Command"],
    #                     input_artifacts: [
    #                       {
    #                         name: "ArtifactName", # required
    #                       },
    #                     ],
    #                     role_arn: "RoleArn",
    #                     region: "AWSRegionName",
    #                     timeout_in_minutes: 1,
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       version: 1,
    #       execution_mode: "QUEUED", # accepts QUEUED, SUPERSEDED, PARALLEL
    #       pipeline_type: "V1", # accepts V1, V2
    #       variables: [
    #         {
    #           name: "PipelineVariableName", # required
    #           default_value: "PipelineVariableValue",
    #           description: "PipelineVariableDescription",
    #         },
    #       ],
    #       triggers: [
    #         {
    #           provider_type: "CodeStarSourceConnection", # required, accepts CodeStarSourceConnection
    #           git_configuration: { # required
    #             source_action_name: "ActionName", # required
    #             push: [
    #               {
    #                 tags: {
    #                   includes: ["GitTagNamePattern"],
    #                   excludes: ["GitTagNamePattern"],
    #                 },
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"],
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"],
    #                 },
    #               },
    #             ],
    #             pull_request: [
    #               {
    #                 events: ["OPEN"], # accepts OPEN, UPDATED, CLOSED
    #                 branches: {
    #                   includes: ["GitBranchNamePattern"],
    #                   excludes: ["GitBranchNamePattern"],
    #                 },
    #                 file_paths: {
    #                   includes: ["GitFilePathPattern"],
    #                   excludes: ["GitFilePathPattern"],
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.name #=> String
    #   resp.pipeline.role_arn #=> String
    #   resp.pipeline.artifact_store.type #=> String, one of "S3"
    #   resp.pipeline.artifact_store.location #=> String
    #   resp.pipeline.artifact_store.encryption_key.id #=> String
    #   resp.pipeline.artifact_store.encryption_key.type #=> String, one of "KMS"
    #   resp.pipeline.artifact_stores #=> Hash
    #   resp.pipeline.artifact_stores["AWSRegionName"].type #=> String, one of "S3"
    #   resp.pipeline.artifact_stores["AWSRegionName"].location #=> String
    #   resp.pipeline.artifact_stores["AWSRegionName"].encryption_key.id #=> String
    #   resp.pipeline.artifact_stores["AWSRegionName"].encryption_key.type #=> String, one of "KMS"
    #   resp.pipeline.stages #=> Array
    #   resp.pipeline.stages[0].name #=> String
    #   resp.pipeline.stages[0].blockers #=> Array
    #   resp.pipeline.stages[0].blockers[0].name #=> String
    #   resp.pipeline.stages[0].blockers[0].type #=> String, one of "Schedule"
    #   resp.pipeline.stages[0].actions #=> Array
    #   resp.pipeline.stages[0].actions[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].action_type_id.category #=> String, one of "Source", "Build", "Deploy", "Test", "Invoke", "Approval", "Compute"
    #   resp.pipeline.stages[0].actions[0].action_type_id.owner #=> String, one of "AWS", "ThirdParty", "Custom"
    #   resp.pipeline.stages[0].actions[0].action_type_id.provider #=> String
    #   resp.pipeline.stages[0].actions[0].action_type_id.version #=> String
    #   resp.pipeline.stages[0].actions[0].run_order #=> Integer
    #   resp.pipeline.stages[0].actions[0].configuration #=> Hash
    #   resp.pipeline.stages[0].actions[0].configuration["ActionConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].actions[0].commands #=> Array
    #   resp.pipeline.stages[0].actions[0].commands[0] #=> String
    #   resp.pipeline.stages[0].actions[0].output_artifacts #=> Array
    #   resp.pipeline.stages[0].actions[0].output_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].output_artifacts[0].files #=> Array
    #   resp.pipeline.stages[0].actions[0].output_artifacts[0].files[0] #=> String
    #   resp.pipeline.stages[0].actions[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].actions[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].output_variables #=> Array
    #   resp.pipeline.stages[0].actions[0].output_variables[0] #=> String
    #   resp.pipeline.stages[0].actions[0].role_arn #=> String
    #   resp.pipeline.stages[0].actions[0].region #=> String
    #   resp.pipeline.stages[0].actions[0].namespace #=> String
    #   resp.pipeline.stages[0].actions[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.stages[0].actions[0].environment_variables #=> Array
    #   resp.pipeline.stages[0].actions[0].environment_variables[0].name #=> String
    #   resp.pipeline.stages[0].actions[0].environment_variables[0].value #=> String
    #   resp.pipeline.stages[0].actions[0].environment_variables[0].type #=> String, one of "PLAINTEXT", "SECRETS_MANAGER"
    #   resp.pipeline.stages[0].on_failure.result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].on_failure.retry_configuration.retry_mode #=> String, one of "FAILED_ACTIONS", "ALL_ACTIONS"
    #   resp.pipeline.stages[0].on_failure.conditions #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].name #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.category #=> String, one of "Rule"
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.owner #=> String, one of "AWS"
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.provider #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].rule_type_id.version #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].configuration #=> Hash
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].configuration["RuleConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].commands #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].commands[0] #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].role_arn #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].region #=> String
    #   resp.pipeline.stages[0].on_failure.conditions[0].rules[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.stages[0].on_success.conditions #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].on_success.conditions[0].rules #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].name #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.category #=> String, one of "Rule"
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.owner #=> String, one of "AWS"
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.provider #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].rule_type_id.version #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].configuration #=> Hash
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].configuration["RuleConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].commands #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].commands[0] #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].role_arn #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].region #=> String
    #   resp.pipeline.stages[0].on_success.conditions[0].rules[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.stages[0].before_entry.conditions #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].result #=> String, one of "ROLLBACK", "FAIL", "RETRY", "SKIP"
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].name #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.category #=> String, one of "Rule"
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.owner #=> String, one of "AWS"
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.provider #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].rule_type_id.version #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].configuration #=> Hash
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].configuration["RuleConfigurationKey"] #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].commands #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].commands[0] #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].input_artifacts #=> Array
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].input_artifacts[0].name #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].role_arn #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].region #=> String
    #   resp.pipeline.stages[0].before_entry.conditions[0].rules[0].timeout_in_minutes #=> Integer
    #   resp.pipeline.version #=> Integer
    #   resp.pipeline.execution_mode #=> String, one of "QUEUED", "SUPERSEDED", "PARALLEL"
    #   resp.pipeline.pipeline_type #=> String, one of "V1", "V2"
    #   resp.pipeline.variables #=> Array
    #   resp.pipeline.variables[0].name #=> String
    #   resp.pipeline.variables[0].default_value #=> String
    #   resp.pipeline.variables[0].description #=> String
    #   resp.pipeline.triggers #=> Array
    #   resp.pipeline.triggers[0].provider_type #=> String, one of "CodeStarSourceConnection"
    #   resp.pipeline.triggers[0].git_configuration.source_action_name #=> String
    #   resp.pipeline.triggers[0].git_configuration.push #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].tags.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].branches.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.push[0].file_paths.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].events #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].events[0] #=> String, one of "OPEN", "UPDATED", "CLOSED"
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].branches.excludes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.includes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.includes[0] #=> String
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.excludes #=> Array
    #   resp.pipeline.triggers[0].git_configuration.pull_request[0].file_paths.excludes[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09/UpdatePipeline AWS API Documentation
    #
    # @overload update_pipeline(params = {})
    # @param [Hash] params ({})
    def update_pipeline(params = {}, options = {})
      req = build_request(:update_pipeline, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CodePipeline')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-codepipeline'
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
