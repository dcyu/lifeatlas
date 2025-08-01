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

module Aws::ApplicationInsights
  # An API client for ApplicationInsights.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ApplicationInsights::Client.new(
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

    @identifier = :applicationinsights

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
    add_plugin(Aws::ApplicationInsights::Plugins::Endpoints)

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
    #   @option options [Aws::ApplicationInsights::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ApplicationInsights::EndpointParameters`.
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

    # Adds a workload to a component. Each component can have at most five
    # workloads.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [required, Types::WorkloadConfiguration] :workload_configuration
    #   The configuration settings of the workload. The value is the escaped
    #   JSON of the configuration.
    #
    # @return [Types::AddWorkloadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddWorkloadResponse#workload_id #workload_id} => String
    #   * {Types::AddWorkloadResponse#workload_configuration #workload_configuration} => Types::WorkloadConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_workload({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     workload_configuration: { # required
    #       workload_name: "WorkloadName",
    #       tier: "CUSTOM", # accepts CUSTOM, DEFAULT, DOT_NET_CORE, DOT_NET_WORKER, DOT_NET_WEB_TIER, DOT_NET_WEB, SQL_SERVER, SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP, MYSQL, POSTGRESQL, JAVA_JMX, ORACLE, SAP_HANA_MULTI_NODE, SAP_HANA_SINGLE_NODE, SAP_HANA_HIGH_AVAILABILITY, SAP_ASE_SINGLE_NODE, SAP_ASE_HIGH_AVAILABILITY, SQL_SERVER_FAILOVER_CLUSTER_INSTANCE, SHAREPOINT, ACTIVE_DIRECTORY, SAP_NETWEAVER_STANDARD, SAP_NETWEAVER_DISTRIBUTED, SAP_NETWEAVER_HIGH_AVAILABILITY
    #       configuration: "ComponentConfiguration",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.workload_configuration.workload_name #=> String
    #   resp.workload_configuration.tier #=> String, one of "CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"
    #   resp.workload_configuration.configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/AddWorkload AWS API Documentation
    #
    # @overload add_workload(params = {})
    # @param [Hash] params ({})
    def add_workload(params = {}, options = {})
      req = build_request(:add_workload, params)
      req.send_request(options)
    end

    # Adds an application that is created from a resource group.
    #
    # @option params [String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [Boolean] :ops_center_enabled
    #   When set to `true`, creates opsItems for any problems detected on an
    #   application.
    #
    # @option params [Boolean] :cwe_monitor_enabled
    #   Indicates whether Application Insights can listen to CloudWatch events
    #   for the application resources, such as `instance terminated`, `failed
    #   deployment`, and others.
    #
    # @option params [String] :ops_item_sns_topic_arn
    #   The SNS topic provided to Application Insights that is associated to
    #   the created opsItem. Allows you to receive notifications for updates
    #   to the opsItem.
    #
    # @option params [String] :sns_notification_arn
    #   The SNS notification topic ARN.
    #
    # @option params [Array<Types::Tag>] :tags
    #   List of tags to add to the application. tag key (`Key`) and an
    #   associated tag value (`Value`). The maximum length of a tag key is 128
    #   characters. The maximum length of a tag value is 256 characters.
    #
    # @option params [Boolean] :auto_config_enabled
    #   Indicates whether Application Insights automatically configures
    #   unmonitored resources in the resource group.
    #
    # @option params [Boolean] :auto_create
    #   Configures all of the resources in the resource group by applying the
    #   recommended configurations.
    #
    # @option params [String] :grouping_type
    #   Application Insights can create applications based on a resource group
    #   or on an account. To create an account-based application using all of
    #   the resources in the account, set this parameter to `ACCOUNT_BASED`.
    #
    # @option params [Boolean] :attach_missing_permission
    #   If set to true, the managed policies for SSM and CW will be attached
    #   to the instance roles if they are missing.
    #
    # @return [Types::CreateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationResponse#application_info #application_info} => Types::ApplicationInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     resource_group_name: "ResourceGroupName",
    #     ops_center_enabled: false,
    #     cwe_monitor_enabled: false,
    #     ops_item_sns_topic_arn: "OpsItemSNSTopicArn",
    #     sns_notification_arn: "SNSNotificationArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     auto_config_enabled: false,
    #     auto_create: false,
    #     grouping_type: "ACCOUNT_BASED", # accepts ACCOUNT_BASED
    #     attach_missing_permission: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_info.account_id #=> String
    #   resp.application_info.resource_group_name #=> String
    #   resp.application_info.life_cycle #=> String
    #   resp.application_info.ops_item_sns_topic_arn #=> String
    #   resp.application_info.sns_notification_arn #=> String
    #   resp.application_info.ops_center_enabled #=> Boolean
    #   resp.application_info.cwe_monitor_enabled #=> Boolean
    #   resp.application_info.remarks #=> String
    #   resp.application_info.auto_config_enabled #=> Boolean
    #   resp.application_info.discovery_type #=> String, one of "RESOURCE_GROUP_BASED", "ACCOUNT_BASED"
    #   resp.application_info.attach_missing_permission #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Creates a custom component by grouping similar standalone instances to
    # monitor.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [required, Array<String>] :resource_list
    #   The list of resource ARNs that belong to the component.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "CustomComponentName", # required
    #     resource_list: ["ResourceARN"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateComponent AWS API Documentation
    #
    # @overload create_component(params = {})
    # @param [Hash] params ({})
    def create_component(params = {}, options = {})
      req = build_request(:create_component, params)
      req.send_request(options)
    end

    # Adds an log pattern to a `LogPatternSet`.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :pattern_set_name
    #   The name of the log pattern set.
    #
    # @option params [required, String] :pattern_name
    #   The name of the log pattern.
    #
    # @option params [required, String] :pattern
    #   The log pattern. The pattern must be DFA compatible. Patterns that
    #   utilize forward lookahead or backreference constructions are not
    #   supported.
    #
    # @option params [required, Integer] :rank
    #   Rank of the log pattern. Must be a value between `1` and `1,000,000`.
    #   The patterns are sorted by rank, so we recommend that you set your
    #   highest priority patterns with the lowest rank. A pattern of rank `1`
    #   will be the first to get matched to a log line. A pattern of rank
    #   `1,000,000` will be last to get matched. When you configure custom log
    #   patterns from the console, a `Low` severity pattern translates to a
    #   `750,000` rank. A `Medium` severity pattern translates to a `500,000`
    #   rank. And a `High` severity pattern translates to a `250,000` rank.
    #   Rank values less than `1` or greater than `1,000,000` are reserved for
    #   Amazon Web Services provided patterns.
    #
    # @return [Types::CreateLogPatternResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLogPatternResponse#log_pattern #log_pattern} => Types::LogPattern
    #   * {Types::CreateLogPatternResponse#resource_group_name #resource_group_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_pattern({
    #     resource_group_name: "ResourceGroupName", # required
    #     pattern_set_name: "LogPatternSetName", # required
    #     pattern_name: "LogPatternName", # required
    #     pattern: "LogPatternRegex", # required
    #     rank: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_pattern.pattern_set_name #=> String
    #   resp.log_pattern.pattern_name #=> String
    #   resp.log_pattern.pattern #=> String
    #   resp.log_pattern.rank #=> Integer
    #   resp.resource_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/CreateLogPattern AWS API Documentation
    #
    # @overload create_log_pattern(params = {})
    # @param [Hash] params ({})
    def create_log_pattern(params = {}, options = {})
      req = build_request(:create_log_pattern, params)
      req.send_request(options)
    end

    # Removes the specified application from monitoring. Does not delete the
    # application.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     resource_group_name: "ResourceGroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Ungroups a custom component. When you ungroup custom components, all
    # applicable monitors that are set up for the component are removed and
    # the instances revert to their standalone status.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "CustomComponentName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteComponent AWS API Documentation
    #
    # @overload delete_component(params = {})
    # @param [Hash] params ({})
    def delete_component(params = {}, options = {})
      req = build_request(:delete_component, params)
      req.send_request(options)
    end

    # Removes the specified log pattern from a `LogPatternSet`.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :pattern_set_name
    #   The name of the log pattern set.
    #
    # @option params [required, String] :pattern_name
    #   The name of the log pattern.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_pattern({
    #     resource_group_name: "ResourceGroupName", # required
    #     pattern_set_name: "LogPatternSetName", # required
    #     pattern_name: "LogPatternName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DeleteLogPattern AWS API Documentation
    #
    # @overload delete_log_pattern(params = {})
    # @param [Hash] params ({})
    def delete_log_pattern(params = {}, options = {})
      req = build_request(:delete_log_pattern, params)
      req.send_request(options)
    end

    # Describes the application.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::DescribeApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationResponse#application_info #application_info} => Types::ApplicationInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application({
    #     resource_group_name: "ResourceGroupName", # required
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_info.account_id #=> String
    #   resp.application_info.resource_group_name #=> String
    #   resp.application_info.life_cycle #=> String
    #   resp.application_info.ops_item_sns_topic_arn #=> String
    #   resp.application_info.sns_notification_arn #=> String
    #   resp.application_info.ops_center_enabled #=> Boolean
    #   resp.application_info.cwe_monitor_enabled #=> Boolean
    #   resp.application_info.remarks #=> String
    #   resp.application_info.auto_config_enabled #=> Boolean
    #   resp.application_info.discovery_type #=> String, one of "RESOURCE_GROUP_BASED", "ACCOUNT_BASED"
    #   resp.application_info.attach_missing_permission #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeApplication AWS API Documentation
    #
    # @overload describe_application(params = {})
    # @param [Hash] params ({})
    def describe_application(params = {}, options = {})
      req = build_request(:describe_application, params)
      req.send_request(options)
    end

    # Describes a component and lists the resources that are grouped
    # together in a component.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::DescribeComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeComponentResponse#application_component #application_component} => Types::ApplicationComponent
    #   * {Types::DescribeComponentResponse#resource_list #resource_list} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_component({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_component.component_name #=> String
    #   resp.application_component.component_remarks #=> String
    #   resp.application_component.resource_type #=> String
    #   resp.application_component.os_type #=> String, one of "WINDOWS", "LINUX"
    #   resp.application_component.tier #=> String, one of "CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"
    #   resp.application_component.monitor #=> Boolean
    #   resp.application_component.detected_workload #=> Hash
    #   resp.application_component.detected_workload["Tier"] #=> Hash
    #   resp.application_component.detected_workload["Tier"]["MetaDataKey"] #=> String
    #   resp.resource_list #=> Array
    #   resp.resource_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponent AWS API Documentation
    #
    # @overload describe_component(params = {})
    # @param [Hash] params ({})
    def describe_component(params = {}, options = {})
      req = build_request(:describe_component, params)
      req.send_request(options)
    end

    # Describes the monitoring configuration of the component.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::DescribeComponentConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeComponentConfigurationResponse#monitor #monitor} => Boolean
    #   * {Types::DescribeComponentConfigurationResponse#tier #tier} => String
    #   * {Types::DescribeComponentConfigurationResponse#component_configuration #component_configuration} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_component_configuration({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.monitor #=> Boolean
    #   resp.tier #=> String, one of "CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"
    #   resp.component_configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentConfiguration AWS API Documentation
    #
    # @overload describe_component_configuration(params = {})
    # @param [Hash] params ({})
    def describe_component_configuration(params = {}, options = {})
      req = build_request(:describe_component_configuration, params)
      req.send_request(options)
    end

    # Describes the recommended monitoring configuration of the component.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [required, String] :tier
    #   The tier of the application component.
    #
    # @option params [String] :workload_name
    #   The name of the workload. The name of the workload is required when
    #   the tier of the application component is `SAP_ASE_SINGLE_NODE` or
    #   `SAP_ASE_HIGH_AVAILABILITY`.
    #
    # @option params [String] :recommendation_type
    #   The recommended configuration type.
    #
    # @return [Types::DescribeComponentConfigurationRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeComponentConfigurationRecommendationResponse#component_configuration #component_configuration} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_component_configuration_recommendation({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     tier: "CUSTOM", # required, accepts CUSTOM, DEFAULT, DOT_NET_CORE, DOT_NET_WORKER, DOT_NET_WEB_TIER, DOT_NET_WEB, SQL_SERVER, SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP, MYSQL, POSTGRESQL, JAVA_JMX, ORACLE, SAP_HANA_MULTI_NODE, SAP_HANA_SINGLE_NODE, SAP_HANA_HIGH_AVAILABILITY, SAP_ASE_SINGLE_NODE, SAP_ASE_HIGH_AVAILABILITY, SQL_SERVER_FAILOVER_CLUSTER_INSTANCE, SHAREPOINT, ACTIVE_DIRECTORY, SAP_NETWEAVER_STANDARD, SAP_NETWEAVER_DISTRIBUTED, SAP_NETWEAVER_HIGH_AVAILABILITY
    #     workload_name: "WorkloadName",
    #     recommendation_type: "INFRA_ONLY", # accepts INFRA_ONLY, WORKLOAD_ONLY, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.component_configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeComponentConfigurationRecommendation AWS API Documentation
    #
    # @overload describe_component_configuration_recommendation(params = {})
    # @param [Hash] params ({})
    def describe_component_configuration_recommendation(params = {}, options = {})
      req = build_request(:describe_component_configuration_recommendation, params)
      req.send_request(options)
    end

    # Describe a specific log pattern from a `LogPatternSet`.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :pattern_set_name
    #   The name of the log pattern set.
    #
    # @option params [required, String] :pattern_name
    #   The name of the log pattern.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::DescribeLogPatternResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLogPatternResponse#resource_group_name #resource_group_name} => String
    #   * {Types::DescribeLogPatternResponse#account_id #account_id} => String
    #   * {Types::DescribeLogPatternResponse#log_pattern #log_pattern} => Types::LogPattern
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_log_pattern({
    #     resource_group_name: "ResourceGroupName", # required
    #     pattern_set_name: "LogPatternSetName", # required
    #     pattern_name: "LogPatternName", # required
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_group_name #=> String
    #   resp.account_id #=> String
    #   resp.log_pattern.pattern_set_name #=> String
    #   resp.log_pattern.pattern_name #=> String
    #   resp.log_pattern.pattern #=> String
    #   resp.log_pattern.rank #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeLogPattern AWS API Documentation
    #
    # @overload describe_log_pattern(params = {})
    # @param [Hash] params ({})
    def describe_log_pattern(params = {}, options = {})
      req = build_request(:describe_log_pattern, params)
      req.send_request(options)
    end

    # Describes an anomaly or error with the application.
    #
    # @option params [required, String] :observation_id
    #   The ID of the observation.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::DescribeObservationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeObservationResponse#observation #observation} => Types::Observation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_observation({
    #     observation_id: "ObservationId", # required
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.observation.id #=> String
    #   resp.observation.start_time #=> Time
    #   resp.observation.end_time #=> Time
    #   resp.observation.source_type #=> String
    #   resp.observation.source_arn #=> String
    #   resp.observation.log_group #=> String
    #   resp.observation.line_time #=> Time
    #   resp.observation.log_text #=> String
    #   resp.observation.log_filter #=> String, one of "ERROR", "WARN", "INFO"
    #   resp.observation.metric_namespace #=> String
    #   resp.observation.metric_name #=> String
    #   resp.observation.unit #=> String
    #   resp.observation.value #=> Float
    #   resp.observation.cloud_watch_event_id #=> String
    #   resp.observation.cloud_watch_event_source #=> String, one of "EC2", "CODE_DEPLOY", "HEALTH", "RDS"
    #   resp.observation.cloud_watch_event_detail_type #=> String
    #   resp.observation.health_event_arn #=> String
    #   resp.observation.health_service #=> String
    #   resp.observation.health_event_type_code #=> String
    #   resp.observation.health_event_type_category #=> String
    #   resp.observation.health_event_description #=> String
    #   resp.observation.code_deploy_deployment_id #=> String
    #   resp.observation.code_deploy_deployment_group #=> String
    #   resp.observation.code_deploy_state #=> String
    #   resp.observation.code_deploy_application #=> String
    #   resp.observation.code_deploy_instance_group_id #=> String
    #   resp.observation.ec2_state #=> String
    #   resp.observation.rds_event_categories #=> String
    #   resp.observation.rds_event_message #=> String
    #   resp.observation.s3_event_name #=> String
    #   resp.observation.states_execution_arn #=> String
    #   resp.observation.states_arn #=> String
    #   resp.observation.states_status #=> String
    #   resp.observation.states_input #=> String
    #   resp.observation.ebs_event #=> String
    #   resp.observation.ebs_result #=> String
    #   resp.observation.ebs_cause #=> String
    #   resp.observation.ebs_request_id #=> String
    #   resp.observation.x_ray_fault_percent #=> Integer
    #   resp.observation.x_ray_throttle_percent #=> Integer
    #   resp.observation.x_ray_error_percent #=> Integer
    #   resp.observation.x_ray_request_count #=> Integer
    #   resp.observation.x_ray_request_average_latency #=> Integer
    #   resp.observation.x_ray_node_name #=> String
    #   resp.observation.x_ray_node_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeObservation AWS API Documentation
    #
    # @overload describe_observation(params = {})
    # @param [Hash] params ({})
    def describe_observation(params = {}, options = {})
      req = build_request(:describe_observation, params)
      req.send_request(options)
    end

    # Describes an application problem.
    #
    # @option params [required, String] :problem_id
    #   The ID of the problem.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the resource group
    #   affected by the problem.
    #
    # @return [Types::DescribeProblemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProblemResponse#problem #problem} => Types::Problem
    #   * {Types::DescribeProblemResponse#sns_notification_arn #sns_notification_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_problem({
    #     problem_id: "ProblemId", # required
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.problem.id #=> String
    #   resp.problem.title #=> String
    #   resp.problem.short_name #=> String
    #   resp.problem.insights #=> String
    #   resp.problem.status #=> String, one of "IGNORE", "RESOLVED", "PENDING", "RECURRING", "RECOVERING"
    #   resp.problem.affected_resource #=> String
    #   resp.problem.start_time #=> Time
    #   resp.problem.end_time #=> Time
    #   resp.problem.severity_level #=> String, one of "Informative", "Low", "Medium", "High"
    #   resp.problem.account_id #=> String
    #   resp.problem.resource_group_name #=> String
    #   resp.problem.feedback #=> Hash
    #   resp.problem.feedback["FeedbackKey"] #=> String, one of "NOT_SPECIFIED", "USEFUL", "NOT_USEFUL"
    #   resp.problem.recurring_count #=> Integer
    #   resp.problem.last_recurrence_time #=> Time
    #   resp.problem.visibility #=> String, one of "IGNORED", "VISIBLE"
    #   resp.problem.resolution_method #=> String, one of "MANUAL", "AUTOMATIC", "UNRESOLVED"
    #   resp.sns_notification_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeProblem AWS API Documentation
    #
    # @overload describe_problem(params = {})
    # @param [Hash] params ({})
    def describe_problem(params = {}, options = {})
      req = build_request(:describe_problem, params)
      req.send_request(options)
    end

    # Describes the anomalies or errors associated with the problem.
    #
    # @option params [required, String] :problem_id
    #   The ID of the problem.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::DescribeProblemObservationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProblemObservationsResponse#related_observations #related_observations} => Types::RelatedObservations
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_problem_observations({
    #     problem_id: "ProblemId", # required
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.related_observations.observation_list #=> Array
    #   resp.related_observations.observation_list[0].id #=> String
    #   resp.related_observations.observation_list[0].start_time #=> Time
    #   resp.related_observations.observation_list[0].end_time #=> Time
    #   resp.related_observations.observation_list[0].source_type #=> String
    #   resp.related_observations.observation_list[0].source_arn #=> String
    #   resp.related_observations.observation_list[0].log_group #=> String
    #   resp.related_observations.observation_list[0].line_time #=> Time
    #   resp.related_observations.observation_list[0].log_text #=> String
    #   resp.related_observations.observation_list[0].log_filter #=> String, one of "ERROR", "WARN", "INFO"
    #   resp.related_observations.observation_list[0].metric_namespace #=> String
    #   resp.related_observations.observation_list[0].metric_name #=> String
    #   resp.related_observations.observation_list[0].unit #=> String
    #   resp.related_observations.observation_list[0].value #=> Float
    #   resp.related_observations.observation_list[0].cloud_watch_event_id #=> String
    #   resp.related_observations.observation_list[0].cloud_watch_event_source #=> String, one of "EC2", "CODE_DEPLOY", "HEALTH", "RDS"
    #   resp.related_observations.observation_list[0].cloud_watch_event_detail_type #=> String
    #   resp.related_observations.observation_list[0].health_event_arn #=> String
    #   resp.related_observations.observation_list[0].health_service #=> String
    #   resp.related_observations.observation_list[0].health_event_type_code #=> String
    #   resp.related_observations.observation_list[0].health_event_type_category #=> String
    #   resp.related_observations.observation_list[0].health_event_description #=> String
    #   resp.related_observations.observation_list[0].code_deploy_deployment_id #=> String
    #   resp.related_observations.observation_list[0].code_deploy_deployment_group #=> String
    #   resp.related_observations.observation_list[0].code_deploy_state #=> String
    #   resp.related_observations.observation_list[0].code_deploy_application #=> String
    #   resp.related_observations.observation_list[0].code_deploy_instance_group_id #=> String
    #   resp.related_observations.observation_list[0].ec2_state #=> String
    #   resp.related_observations.observation_list[0].rds_event_categories #=> String
    #   resp.related_observations.observation_list[0].rds_event_message #=> String
    #   resp.related_observations.observation_list[0].s3_event_name #=> String
    #   resp.related_observations.observation_list[0].states_execution_arn #=> String
    #   resp.related_observations.observation_list[0].states_arn #=> String
    #   resp.related_observations.observation_list[0].states_status #=> String
    #   resp.related_observations.observation_list[0].states_input #=> String
    #   resp.related_observations.observation_list[0].ebs_event #=> String
    #   resp.related_observations.observation_list[0].ebs_result #=> String
    #   resp.related_observations.observation_list[0].ebs_cause #=> String
    #   resp.related_observations.observation_list[0].ebs_request_id #=> String
    #   resp.related_observations.observation_list[0].x_ray_fault_percent #=> Integer
    #   resp.related_observations.observation_list[0].x_ray_throttle_percent #=> Integer
    #   resp.related_observations.observation_list[0].x_ray_error_percent #=> Integer
    #   resp.related_observations.observation_list[0].x_ray_request_count #=> Integer
    #   resp.related_observations.observation_list[0].x_ray_request_average_latency #=> Integer
    #   resp.related_observations.observation_list[0].x_ray_node_name #=> String
    #   resp.related_observations.observation_list[0].x_ray_node_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeProblemObservations AWS API Documentation
    #
    # @overload describe_problem_observations(params = {})
    # @param [Hash] params ({})
    def describe_problem_observations(params = {}, options = {})
      req = build_request(:describe_problem_observations, params)
      req.send_request(options)
    end

    # Describes a workload and its configuration.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [required, String] :workload_id
    #   The ID of the workload.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the workload owner.
    #
    # @return [Types::DescribeWorkloadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkloadResponse#workload_id #workload_id} => String
    #   * {Types::DescribeWorkloadResponse#workload_remarks #workload_remarks} => String
    #   * {Types::DescribeWorkloadResponse#workload_configuration #workload_configuration} => Types::WorkloadConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workload({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     workload_id: "WorkloadId", # required
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.workload_remarks #=> String
    #   resp.workload_configuration.workload_name #=> String
    #   resp.workload_configuration.tier #=> String, one of "CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"
    #   resp.workload_configuration.configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/DescribeWorkload AWS API Documentation
    #
    # @overload describe_workload(params = {})
    # @param [Hash] params ({})
    def describe_workload(params = {}, options = {})
      req = build_request(:describe_workload, params)
      req.send_request(options)
    end

    # Lists the IDs of the applications that you are monitoring.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::ListApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsResponse#application_info_list #application_info_list} => Array&lt;Types::ApplicationInfo&gt;
    #   * {Types::ListApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_info_list #=> Array
    #   resp.application_info_list[0].account_id #=> String
    #   resp.application_info_list[0].resource_group_name #=> String
    #   resp.application_info_list[0].life_cycle #=> String
    #   resp.application_info_list[0].ops_item_sns_topic_arn #=> String
    #   resp.application_info_list[0].sns_notification_arn #=> String
    #   resp.application_info_list[0].ops_center_enabled #=> Boolean
    #   resp.application_info_list[0].cwe_monitor_enabled #=> Boolean
    #   resp.application_info_list[0].remarks #=> String
    #   resp.application_info_list[0].auto_config_enabled #=> Boolean
    #   resp.application_info_list[0].discovery_type #=> String, one of "RESOURCE_GROUP_BASED", "ACCOUNT_BASED"
    #   resp.application_info_list[0].attach_missing_permission #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Lists the auto-grouped, standalone, and custom components of the
    # application.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::ListComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentsResponse#application_component_list #application_component_list} => Array&lt;Types::ApplicationComponent&gt;
    #   * {Types::ListComponentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components({
    #     resource_group_name: "ResourceGroupName", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.application_component_list #=> Array
    #   resp.application_component_list[0].component_name #=> String
    #   resp.application_component_list[0].component_remarks #=> String
    #   resp.application_component_list[0].resource_type #=> String
    #   resp.application_component_list[0].os_type #=> String, one of "WINDOWS", "LINUX"
    #   resp.application_component_list[0].tier #=> String, one of "CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"
    #   resp.application_component_list[0].monitor #=> Boolean
    #   resp.application_component_list[0].detected_workload #=> Hash
    #   resp.application_component_list[0].detected_workload["Tier"] #=> Hash
    #   resp.application_component_list[0].detected_workload["Tier"]["MetaDataKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListComponents AWS API Documentation
    #
    # @overload list_components(params = {})
    # @param [Hash] params ({})
    def list_components(params = {}, options = {})
      req = build_request(:list_components, params)
      req.send_request(options)
    end

    # Lists the INFO, WARN, and ERROR events for periodic configuration
    # updates performed by Application Insights. Examples of events
    # represented are:
    #
    # * INFO: creating a new alarm or updating an alarm threshold.
    #
    # * WARN: alarm not created due to insufficient data points used to
    #   predict thresholds.
    #
    # * ERROR: alarm not created due to permission errors or exceeding
    #   quotas.
    #
    # @option params [String] :resource_group_name
    #   Resource group to which the application belongs.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The start time of the event.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end time of the event.
    #
    # @option params [String] :event_status
    #   The status of the configuration update event. Possible values include
    #   INFO, WARN, and ERROR.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by `ListConfigurationHistory`
    #   in paginated output. When this parameter is used,
    #   `ListConfigurationHistory` returns only `MaxResults` in a single page
    #   along with a `NextToken` response element. The remaining results of
    #   the initial request can be seen by sending another
    #   `ListConfigurationHistory` request with the returned `NextToken`
    #   value. If this parameter is not used, then `ListConfigurationHistory`
    #   returns all results.
    #
    # @option params [String] :next_token
    #   The `NextToken` value returned from a previous paginated
    #   `ListConfigurationHistory` request where `MaxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `NextToken`
    #   value. This value is `null` when there are no more results to return.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::ListConfigurationHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationHistoryResponse#event_list #event_list} => Array&lt;Types::ConfigurationEvent&gt;
    #   * {Types::ListConfigurationHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_history({
    #     resource_group_name: "ResourceGroupName",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     event_status: "INFO", # accepts INFO, WARN, ERROR
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_list #=> Array
    #   resp.event_list[0].resource_group_name #=> String
    #   resp.event_list[0].account_id #=> String
    #   resp.event_list[0].monitored_resource_arn #=> String
    #   resp.event_list[0].event_status #=> String, one of "INFO", "WARN", "ERROR"
    #   resp.event_list[0].event_resource_type #=> String, one of "CLOUDWATCH_ALARM", "CLOUDWATCH_LOG", "CLOUDFORMATION", "SSM_ASSOCIATION"
    #   resp.event_list[0].event_time #=> Time
    #   resp.event_list[0].event_detail #=> String
    #   resp.event_list[0].event_resource_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListConfigurationHistory AWS API Documentation
    #
    # @overload list_configuration_history(params = {})
    # @param [Hash] params ({})
    def list_configuration_history(params = {}, options = {})
      req = build_request(:list_configuration_history, params)
      req.send_request(options)
    end

    # Lists the log pattern sets in the specific application.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::ListLogPatternSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLogPatternSetsResponse#resource_group_name #resource_group_name} => String
    #   * {Types::ListLogPatternSetsResponse#account_id #account_id} => String
    #   * {Types::ListLogPatternSetsResponse#log_pattern_sets #log_pattern_sets} => Array&lt;String&gt;
    #   * {Types::ListLogPatternSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_pattern_sets({
    #     resource_group_name: "ResourceGroupName", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_group_name #=> String
    #   resp.account_id #=> String
    #   resp.log_pattern_sets #=> Array
    #   resp.log_pattern_sets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListLogPatternSets AWS API Documentation
    #
    # @overload list_log_pattern_sets(params = {})
    # @param [Hash] params ({})
    def list_log_pattern_sets(params = {}, options = {})
      req = build_request(:list_log_pattern_sets, params)
      req.send_request(options)
    end

    # Lists the log patterns in the specific log `LogPatternSet`.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [String] :pattern_set_name
    #   The name of the log pattern set.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @return [Types::ListLogPatternsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLogPatternsResponse#resource_group_name #resource_group_name} => String
    #   * {Types::ListLogPatternsResponse#account_id #account_id} => String
    #   * {Types::ListLogPatternsResponse#log_patterns #log_patterns} => Array&lt;Types::LogPattern&gt;
    #   * {Types::ListLogPatternsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_patterns({
    #     resource_group_name: "ResourceGroupName", # required
    #     pattern_set_name: "LogPatternSetName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_group_name #=> String
    #   resp.account_id #=> String
    #   resp.log_patterns #=> Array
    #   resp.log_patterns[0].pattern_set_name #=> String
    #   resp.log_patterns[0].pattern_name #=> String
    #   resp.log_patterns[0].pattern #=> String
    #   resp.log_patterns[0].rank #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListLogPatterns AWS API Documentation
    #
    # @overload list_log_patterns(params = {})
    # @param [Hash] params ({})
    def list_log_patterns(params = {}, options = {})
      req = build_request(:list_log_patterns, params)
      req.send_request(options)
    end

    # Lists the problems with your application.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the resource group owner.
    #
    # @option params [String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The time when the problem was detected, in epoch seconds. If you
    #   don't specify a time frame for the request, problems within the past
    #   seven days are returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The time when the problem ended, in epoch seconds. If not specified,
    #   problems within the past seven days are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [String] :component_name
    #   The name of the component.
    #
    # @option params [String] :visibility
    #   Specifies whether or not you can view the problem. If not specified,
    #   visible and ignored problems are returned.
    #
    # @return [Types::ListProblemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProblemsResponse#problem_list #problem_list} => Array&lt;Types::Problem&gt;
    #   * {Types::ListProblemsResponse#next_token #next_token} => String
    #   * {Types::ListProblemsResponse#resource_group_name #resource_group_name} => String
    #   * {Types::ListProblemsResponse#account_id #account_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_problems({
    #     account_id: "AccountId",
    #     resource_group_name: "ResourceGroupName",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     component_name: "ComponentName",
    #     visibility: "IGNORED", # accepts IGNORED, VISIBLE
    #   })
    #
    # @example Response structure
    #
    #   resp.problem_list #=> Array
    #   resp.problem_list[0].id #=> String
    #   resp.problem_list[0].title #=> String
    #   resp.problem_list[0].short_name #=> String
    #   resp.problem_list[0].insights #=> String
    #   resp.problem_list[0].status #=> String, one of "IGNORE", "RESOLVED", "PENDING", "RECURRING", "RECOVERING"
    #   resp.problem_list[0].affected_resource #=> String
    #   resp.problem_list[0].start_time #=> Time
    #   resp.problem_list[0].end_time #=> Time
    #   resp.problem_list[0].severity_level #=> String, one of "Informative", "Low", "Medium", "High"
    #   resp.problem_list[0].account_id #=> String
    #   resp.problem_list[0].resource_group_name #=> String
    #   resp.problem_list[0].feedback #=> Hash
    #   resp.problem_list[0].feedback["FeedbackKey"] #=> String, one of "NOT_SPECIFIED", "USEFUL", "NOT_USEFUL"
    #   resp.problem_list[0].recurring_count #=> Integer
    #   resp.problem_list[0].last_recurrence_time #=> Time
    #   resp.problem_list[0].visibility #=> String, one of "IGNORED", "VISIBLE"
    #   resp.problem_list[0].resolution_method #=> String, one of "MANUAL", "AUTOMATIC", "UNRESOLVED"
    #   resp.next_token #=> String
    #   resp.resource_group_name #=> String
    #   resp.account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListProblems AWS API Documentation
    #
    # @overload list_problems(params = {})
    # @param [Hash] params ({})
    def list_problems(params = {}, options = {})
      req = build_request(:list_problems, params)
      req.send_request(options)
    end

    # Retrieve a list of the tags (keys and values) that are associated with
    # a specified application. A *tag* is a label that you optionally define
    # and associate with an application. Each tag consists of a required
    # *tag key* and an optional associated *tag value*. A tag key is a
    # general label that acts as a category for more specific tag values. A
    # tag value acts as a descriptor within a tag key.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the application that you want to
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the workloads that are configured on a given component.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. To retrieve
    #   the remaining results, make another call with the returned `NextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the owner of the workload.
    #
    # @return [Types::ListWorkloadsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkloadsResponse#workload_list #workload_list} => Array&lt;Types::Workload&gt;
    #   * {Types::ListWorkloadsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workloads({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_list #=> Array
    #   resp.workload_list[0].workload_id #=> String
    #   resp.workload_list[0].component_name #=> String
    #   resp.workload_list[0].workload_name #=> String
    #   resp.workload_list[0].tier #=> String, one of "CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"
    #   resp.workload_list[0].workload_remarks #=> String
    #   resp.workload_list[0].missing_workload_config #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/ListWorkloads AWS API Documentation
    #
    # @overload list_workloads(params = {})
    # @param [Hash] params ({})
    def list_workloads(params = {}, options = {})
      req = build_request(:list_workloads, params)
      req.send_request(options)
    end

    # Remove workload from a component.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [required, String] :workload_id
    #   The ID of the workload.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_workload({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     workload_id: "WorkloadId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/RemoveWorkload AWS API Documentation
    #
    # @overload remove_workload(params = {})
    # @param [Hash] params ({})
    def remove_workload(params = {}, options = {})
      req = build_request(:remove_workload, params)
      req.send_request(options)
    end

    # Add one or more tags (keys and values) to a specified application. A
    # *tag* is a label that you optionally define and associate with an
    # application. Tags can help you categorize and manage application in
    # different ways, such as by purpose, owner, environment, or other
    # criteria.
    #
    # Each tag consists of a required *tag key* and an associated *tag
    # value*, both of which you define. A tag key is a general label that
    # acts as a category for more specific tag values. A tag value acts as a
    # descriptor within a tag key.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the application that you want to add
    #   one or more tags to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags that to add to the application. A tag consists of a
    #   required tag key (`Key`) and an associated tag value (`Value`). The
    #   maximum length of a tag key is 128 characters. The maximum length of a
    #   tag value is 256 characters.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove one or more tags (keys and values) from a specified
    # application.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the application that you want to
    #   remove one or more tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tags (tag keys) that you want to remove from the resource. When
    #   you specify a tag key, the action removes both that key and its
    #   associated tag value.
    #
    #   To remove more than one tag from the application, append the `TagKeys`
    #   parameter and argument for each additional tag to remove, separated by
    #   an ampersand.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the application.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [Boolean] :ops_center_enabled
    #   When set to `true`, creates opsItems for any problems detected on an
    #   application.
    #
    # @option params [Boolean] :cwe_monitor_enabled
    #   Indicates whether Application Insights can listen to CloudWatch events
    #   for the application resources, such as `instance terminated`, `failed
    #   deployment`, and others.
    #
    # @option params [String] :ops_item_sns_topic_arn
    #   The SNS topic provided to Application Insights that is associated to
    #   the created opsItem. Allows you to receive notifications for updates
    #   to the opsItem.
    #
    # @option params [String] :sns_notification_arn
    #   The SNS topic ARN. Allows you to receive SNS notifications for updates
    #   and issues with an application.
    #
    # @option params [Boolean] :remove_sns_topic
    #   Disassociates the SNS topic from the opsItem created for detected
    #   problems.
    #
    # @option params [Boolean] :auto_config_enabled
    #   Turns auto-configuration on or off.
    #
    # @option params [Boolean] :attach_missing_permission
    #   If set to true, the managed policies for SSM and CW will be attached
    #   to the instance roles if they are missing.
    #
    # @return [Types::UpdateApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationResponse#application_info #application_info} => Types::ApplicationInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     resource_group_name: "ResourceGroupName", # required
    #     ops_center_enabled: false,
    #     cwe_monitor_enabled: false,
    #     ops_item_sns_topic_arn: "OpsItemSNSTopicArn",
    #     sns_notification_arn: "SNSNotificationArn",
    #     remove_sns_topic: false,
    #     auto_config_enabled: false,
    #     attach_missing_permission: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_info.account_id #=> String
    #   resp.application_info.resource_group_name #=> String
    #   resp.application_info.life_cycle #=> String
    #   resp.application_info.ops_item_sns_topic_arn #=> String
    #   resp.application_info.sns_notification_arn #=> String
    #   resp.application_info.ops_center_enabled #=> Boolean
    #   resp.application_info.cwe_monitor_enabled #=> Boolean
    #   resp.application_info.remarks #=> String
    #   resp.application_info.auto_config_enabled #=> Boolean
    #   resp.application_info.discovery_type #=> String, one of "RESOURCE_GROUP_BASED", "ACCOUNT_BASED"
    #   resp.application_info.attach_missing_permission #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates the custom component name and/or the list of resources that
    # make up the component.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [String] :new_component_name
    #   The new name of the component.
    #
    # @option params [Array<String>] :resource_list
    #   The list of resource ARNs that belong to the component.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_component({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "CustomComponentName", # required
    #     new_component_name: "CustomComponentName",
    #     resource_list: ["ResourceARN"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateComponent AWS API Documentation
    #
    # @overload update_component(params = {})
    # @param [Hash] params ({})
    def update_component(params = {}, options = {})
      req = build_request(:update_component, params)
      req.send_request(options)
    end

    # Updates the monitoring configurations for the component. The
    # configuration input parameter is an escaped JSON of the configuration
    # and should match the schema of what is returned by
    # `DescribeComponentConfigurationRecommendation`.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [Boolean] :monitor
    #   Indicates whether the application component is monitored.
    #
    # @option params [String] :tier
    #   The tier of the application component.
    #
    # @option params [String] :component_configuration
    #   The configuration settings of the component. The value is the escaped
    #   JSON of the configuration. For more information about the JSON format,
    #   see [Working with JSON][1]. You can send a request to
    #   `DescribeComponentConfigurationRecommendation` to see the recommended
    #   configuration for a component. For the complete format of the
    #   component configuration file, see [Component Configuration][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html
    #
    # @option params [Boolean] :auto_config_enabled
    #   Automatically configures the component by applying the recommended
    #   configurations.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_component_configuration({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     monitor: false,
    #     tier: "CUSTOM", # accepts CUSTOM, DEFAULT, DOT_NET_CORE, DOT_NET_WORKER, DOT_NET_WEB_TIER, DOT_NET_WEB, SQL_SERVER, SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP, MYSQL, POSTGRESQL, JAVA_JMX, ORACLE, SAP_HANA_MULTI_NODE, SAP_HANA_SINGLE_NODE, SAP_HANA_HIGH_AVAILABILITY, SAP_ASE_SINGLE_NODE, SAP_ASE_HIGH_AVAILABILITY, SQL_SERVER_FAILOVER_CLUSTER_INSTANCE, SHAREPOINT, ACTIVE_DIRECTORY, SAP_NETWEAVER_STANDARD, SAP_NETWEAVER_DISTRIBUTED, SAP_NETWEAVER_HIGH_AVAILABILITY
    #     component_configuration: "ComponentConfiguration",
    #     auto_config_enabled: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateComponentConfiguration AWS API Documentation
    #
    # @overload update_component_configuration(params = {})
    # @param [Hash] params ({})
    def update_component_configuration(params = {}, options = {})
      req = build_request(:update_component_configuration, params)
      req.send_request(options)
    end

    # Adds a log pattern to a `LogPatternSet`.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :pattern_set_name
    #   The name of the log pattern set.
    #
    # @option params [required, String] :pattern_name
    #   The name of the log pattern.
    #
    # @option params [String] :pattern
    #   The log pattern. The pattern must be DFA compatible. Patterns that
    #   utilize forward lookahead or backreference constructions are not
    #   supported.
    #
    # @option params [Integer] :rank
    #   Rank of the log pattern. Must be a value between `1` and `1,000,000`.
    #   The patterns are sorted by rank, so we recommend that you set your
    #   highest priority patterns with the lowest rank. A pattern of rank `1`
    #   will be the first to get matched to a log line. A pattern of rank
    #   `1,000,000` will be last to get matched. When you configure custom log
    #   patterns from the console, a `Low` severity pattern translates to a
    #   `750,000` rank. A `Medium` severity pattern translates to a `500,000`
    #   rank. And a `High` severity pattern translates to a `250,000` rank.
    #   Rank values less than `1` or greater than `1,000,000` are reserved for
    #   Amazon Web Services provided patterns.
    #
    # @return [Types::UpdateLogPatternResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLogPatternResponse#resource_group_name #resource_group_name} => String
    #   * {Types::UpdateLogPatternResponse#log_pattern #log_pattern} => Types::LogPattern
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_log_pattern({
    #     resource_group_name: "ResourceGroupName", # required
    #     pattern_set_name: "LogPatternSetName", # required
    #     pattern_name: "LogPatternName", # required
    #     pattern: "LogPatternRegex",
    #     rank: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_group_name #=> String
    #   resp.log_pattern.pattern_set_name #=> String
    #   resp.log_pattern.pattern_name #=> String
    #   resp.log_pattern.pattern #=> String
    #   resp.log_pattern.rank #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateLogPattern AWS API Documentation
    #
    # @overload update_log_pattern(params = {})
    # @param [Hash] params ({})
    def update_log_pattern(params = {}, options = {})
      req = build_request(:update_log_pattern, params)
      req.send_request(options)
    end

    # Updates the visibility of the problem or specifies the problem as
    # `RESOLVED`.
    #
    # @option params [required, String] :problem_id
    #   The ID of the problem.
    #
    # @option params [String] :update_status
    #   The status of the problem. Arguments can be passed for only problems
    #   that show a status of `RECOVERING`.
    #
    # @option params [String] :visibility
    #   The visibility of a problem. When you pass a value of `IGNORED`, the
    #   problem is removed from the default view, and all notifications for
    #   the problem are suspended. When `VISIBLE` is passed, the `IGNORED`
    #   action is reversed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_problem({
    #     problem_id: "ProblemId", # required
    #     update_status: "RESOLVED", # accepts RESOLVED
    #     visibility: "IGNORED", # accepts IGNORED, VISIBLE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateProblem AWS API Documentation
    #
    # @overload update_problem(params = {})
    # @param [Hash] params ({})
    def update_problem(params = {}, options = {})
      req = build_request(:update_problem, params)
      req.send_request(options)
    end

    # Adds a workload to a component. Each component can have at most five
    # workloads.
    #
    # @option params [required, String] :resource_group_name
    #   The name of the resource group.
    #
    # @option params [required, String] :component_name
    #   The name of the component.
    #
    # @option params [String] :workload_id
    #   The ID of the workload.
    #
    # @option params [required, Types::WorkloadConfiguration] :workload_configuration
    #   The configuration settings of the workload. The value is the escaped
    #   JSON of the configuration.
    #
    # @return [Types::UpdateWorkloadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkloadResponse#workload_id #workload_id} => String
    #   * {Types::UpdateWorkloadResponse#workload_configuration #workload_configuration} => Types::WorkloadConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workload({
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     workload_id: "WorkloadId",
    #     workload_configuration: { # required
    #       workload_name: "WorkloadName",
    #       tier: "CUSTOM", # accepts CUSTOM, DEFAULT, DOT_NET_CORE, DOT_NET_WORKER, DOT_NET_WEB_TIER, DOT_NET_WEB, SQL_SERVER, SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP, MYSQL, POSTGRESQL, JAVA_JMX, ORACLE, SAP_HANA_MULTI_NODE, SAP_HANA_SINGLE_NODE, SAP_HANA_HIGH_AVAILABILITY, SAP_ASE_SINGLE_NODE, SAP_ASE_HIGH_AVAILABILITY, SQL_SERVER_FAILOVER_CLUSTER_INSTANCE, SHAREPOINT, ACTIVE_DIRECTORY, SAP_NETWEAVER_STANDARD, SAP_NETWEAVER_DISTRIBUTED, SAP_NETWEAVER_HIGH_AVAILABILITY
    #       configuration: "ComponentConfiguration",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_id #=> String
    #   resp.workload_configuration.workload_name #=> String
    #   resp.workload_configuration.tier #=> String, one of "CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"
    #   resp.workload_configuration.configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/application-insights-2018-11-25/UpdateWorkload AWS API Documentation
    #
    # @overload update_workload(params = {})
    # @param [Hash] params ({})
    def update_workload(params = {}, options = {})
      req = build_request(:update_workload, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ApplicationInsights')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-applicationinsights'
      context[:gem_version] = '1.66.0'
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
